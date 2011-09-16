#pragma once
#include "lua.hpp"
/*����������� �������� C++ � ��������� Lua*/
template <typename T> class Lunar {

  /*��������� ���������������� ������� C++ � ������ Lua*/
  struct user_t
  {
	  T *pT; 
  };
public:
  typedef int (T::*mfp)(lua_State *L);

  /* �������� ��� ���������� ������� ������� Lua � �������� ������� C++*/
  struct Register_t
  { 
	  const char *name; 
	  mfp mfunc; 
  };

  static void Register(lua_State *L) {
    
    /* [1] - ������� ������� ������� */
    lua_newtable(L);
    int methods = lua_gettop(L);

	/* [2] - ����������� ������� �������*/
    luaL_newmetatable(L, T::className);
    int metatable = lua_gettop(L);

    // ���������� ������� ������� � ���������� ����������
	// ��� ����, ����� ��� lua ��� ��������� ������.
    lua_pushvalue(L, methods);
    set(L, LUA_GLOBALSINDEX, T::className);

    // ������ ����������� �� getmetattable() 
    lua_pushvalue(L, methods);
    set(L, metatable, "__metatable");

	// ������ �������� ���� __index ���� �������
	// ������� ������� �������, ��� ���� ����� 
	// ����� ���� ������������ ������� obj:method()
    lua_pushvalue(L, methods);
    set(L, metatable, "__index");

	// ������ �������� ���� __tostring ���� �������,
	// ��� ����, ����� ����� ���� �������� ������ � ��������� ����.
    lua_pushcfunction(L, tostring_T);
    set(L, metatable, "__tostring");

	// ������ �������� ���� __gc  ���� �������
	// ��� ����, ����� ������� ������ ��� ������� ������ �������
    lua_pushcfunction(L, gc_T);
    set(L, metatable, "__gc");

	// ��������� ����� ������� ��� ����, �����
	// ������� � ����������� ������� �������.
    lua_newtable(L);                // mt 
	// ���������� ������� ��������� �������
    lua_pushcfunction(L, new_T);
    lua_pushvalue(L, -1);           // ����������� ������ ������� ��� ���� �������.
	// ������ ����� new � �������, ��� ���������� ������������
	// Class:new()
    set(L, methods, "new");         // 
	// ������ ����� __call � ���� ������� ��� ����, �����
	// ����� ���� ������������ ����� Class(). 
    set(L, -3, "__call");           // mt.__call = new_T
    lua_setmetatable(L, methods);

    // ���������� ������� lua, �������� �� ������.
    for (Register_t *l = T::methods; l->name; ++l) {
	  // ���������� ����� ������ 
      lua_pushstring(L, l->name);
	  // ���������� ������������ ���������.
      lua_pushlightuserdata(L, (void*)l);
	   // ���������� ������������ �����������.
      lua_pushcclosure(L, thunk, 1);

      lua_settable(L, methods);
    }

    lua_pop(L, 2);  
  }

  // ����� ������ �� user_t
  static int call(lua_State *L, const char *method,
                  int nargs=0, int nresults=LUA_MULTRET, int errfunc=0)
  {
	// ����� � ����� ��� user_t
    int base = lua_gettop(L) - nargs;  
	// �������� ���� user_t
    if (!luaL_checkudata(L, base, T::className)) {
      lua_settop(L, base-1);           // �������� ���� ������
      lua_pushfstring(L, "not a valid %s userdata", T::className);
      return -1;
    }

    lua_pushstring(L, method);         // ��� ������
    lua_gettable(L, base);             // �������� method �� userdata
    if (lua_isnil(L, -1)) {            // ����� ������?
      lua_settop(L, base-1);           // �������� ���� ������
      lua_pushfstring(L, "%s missing method '%s'", T::className, method);
      return -1;
    }
    lua_insert(L, base);               // put method under userdata, args

    int status = lua_pcall(L, 1+nargs, nresults, errfunc);  // ����� ������
    if (status) {
      const char *msg = lua_tostring(L, -1);
      if (msg == NULL) msg = "(error with no message)";
      lua_pushfstring(L, "%s:%s status = %d\n%s",
                      T::className, method, status, msg);
      lua_remove(L, base);             // remove old message
      return -1;
    }
    return lua_gettop(L) - base + 1;   // ���-�� ������������ �����������
  }

  // ���������� � ���� ����������������� ���� ������, ����������� ��������� ��
  // T *obj
  static int push(lua_State *L, T *obj, bool gc=false) {
    if (!obj) 
	{ 
		lua_pushnil(L); 
		return 0; 
	}
    luaL_getmetatable(L, T::className);  // ����� ����-������� � �������.
    if (lua_isnil(L, -1)) luaL_error(L, "%s missing metatable", T::className);
    int mt = lua_gettop(L);
    subtable(L, mt, "userdata", "v");
    
	user_t *ud =
      static_cast<user_t*>(pushuserdata(L, obj, sizeof(user_t)));
    if (ud) {
      ud->pT = obj;  // ���������� ��������� � user_t
      lua_pushvalue(L, mt);
      lua_setmetatable(L, -2);
      if (gc == false) {
        lua_checkstack(L, 3);
        subtable(L, mt, "do not trash", "k");
        lua_pushvalue(L, -2);
        lua_pushboolean(L, 1);
        lua_settable(L, -3);
        lua_pop(L, 1);
      }
    }
    lua_replace(L, mt);
    lua_settop(L, mt);
    return mt;  // index  userdata �������� ��������� �� T *obj
  }

  // ������� T* �� �����
  static T *check(lua_State *L, int narg) {
    user_t *ud =
      static_cast<user_t*>(luaL_checkudata(L, narg, T::className));
    if(!ud) {
        luaL_typerror(L, narg, T::className);
        return NULL;
    }
    return ud->pT;  // pointer to T object
  }

private:
  Lunar();  // ������ ����������� �� ���������.

  // ����������� ������� �����.
  static int thunk(lua_State *L) {
    // ���� �������� user_t, ��������� ����� �� �����������.
    T *obj = check(L, 1);  
    lua_remove(L, 1);  
    // �������� ��������� � ������������� �������� registration
    Register_t *l = static_cast<Register_t*>(lua_touserdata(L, lua_upvalueindex(1)));
    return (obj->*(l->mfunc))(L);  // ����� ������ �������.
  }

  // �������� ������ ������� � ���������� ��� �� ������� �����
  static int new_T(lua_State *L) {
    lua_remove(L, 1);   // �������� 'self'
    T *obj = new T(L);  // ����� ������������
    push(L, obj, true); // gc_T ������ ���� ������ ����� ����
    return 1;           
  }

  // ������� ������
  static int gc_T(lua_State *L) {
    if (luaL_getmetafield(L, 1, "do not trash")) {
      lua_pushvalue(L, 1);  // dup userdata
      lua_gettable(L, -2);
      if (!lua_isnil(L, -1)) return 0;  // do not delete object
    }
    user_t *ud = static_cast<user_t*>(lua_touserdata(L, 1));
    T *obj = ud->pT;
    if (obj) delete obj;  
    return 0;
  }

  static int tostring_T (lua_State *L) {
    char buff[32];
    user_t *ud = static_cast<user_t*>(lua_touserdata(L, 1));
    T *obj = ud->pT;
    sprintf(buff, "%p", (void*)obj);
    lua_pushfstring(L, "%s (%s)", T::className, buff);
    return 1;
  }

  static void set(lua_State *L, int table_index, const char *key) {
    lua_pushstring(L, key);
    lua_insert(L, -2);  // swap value and key
    lua_settable(L, table_index);
  }

  static void weaktable(lua_State *L, const char *mode) {
    lua_newtable(L);
    lua_pushvalue(L, -1);  // table is its own metatable
    lua_setmetatable(L, -2);
    lua_pushliteral(L, "__mode");
    lua_pushstring(L, mode);
    lua_settable(L, -3);   // metatable.__mode = mode
  }

  static void subtable(lua_State *L, int tindex, const char *name, const char *mode) {
    lua_pushstring(L, name);
    lua_gettable(L, tindex);
    if (lua_isnil(L, -1)) {
      lua_pop(L, 1);
      lua_checkstack(L, 3);
      weaktable(L, mode);
      lua_pushstring(L, name);
      lua_pushvalue(L, -2);
      lua_settable(L, tindex);
    }
  }

  static void *pushuserdata(lua_State *L, void *key, size_t sz) {
    void *ud = 0;
    lua_pushlightuserdata(L, key);
    lua_gettable(L, -2);     // lookup[key]
    if (lua_isnil(L, -1)) {
      lua_pop(L, 1);         // drop nil
      lua_checkstack(L, 3);
      ud = lua_newuserdata(L, sz);  // create new userdata
      lua_pushlightuserdata(L, key);
      lua_pushvalue(L, -2);  // dup userdata
      lua_settable(L, -4);   // lookup[key] = userdata
    }
    return ud;
  }
};

#define LUNAR_DECLARE_METHOD(Class, Name) {#Name, &Class::Name}
