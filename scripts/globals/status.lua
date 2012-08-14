-----------------------------------
--	
-- 	STATUSES AND MODS
-- 	
-----------------------------------

-----------------------------------
-- These codes represent the actual status effects.  
-- They are simply for convenience.
-----------------------------------

EFFECT_KO						= 0
EFFECT_WEAKNESS					= 1
EFFECT_SLEEP_I					= 2
EFFECT_POISON					= 3
EFFECT_PARALYSIS				= 4
EFFECT_BLINDNESS				= 5
EFFECT_SILENCE					= 6
EFFECT_PETRIFICATION			= 7
EFFECT_DISEASE					= 8
EFFECT_CURSE_I					= 9
EFFECT_STUN						= 10
EFFECT_BIND						= 11
EFFECT_WEIGHT					= 12
EFFECT_SLOW						= 13
EFFECT_CHARM_I					= 14
EFFECT_DOOM						= 15
EFFECT_AMNESIA					= 16
EFFECT_CHARM_II					= 17
EFFECT_GRADUAL_PETRIFICATION	= 18
EFFECT_SLEEP_II					= 19
EFFECT_CURSE_II					= 20
EFFECT_ADDLE					= 21
EFFECT_TERROR					= 28
EFFECT_MUTE						= 29
EFFECT_BANE						= 30
EFFECT_PLAGUE					= 31
EFFECT_FLEE						= 32
EFFECT_HASTE					= 33
EFFECT_BLAZE_SPIKES				= 34
EFFECT_ICE_SPIKES				= 35
EFFECT_BLINK					= 36
EFFECT_STONESKIN				= 37
EFFECT_SHOCK_SPIKES				= 38
EFFECT_AQUAVEIL					= 39
EFFECT_PROTECT					= 40
EFFECT_SHELL					= 41
EFFECT_REGEN					= 42
EFFECT_REFRESH					= 43
EFFECT_MIGHTY_STRIKES			= 44
EFFECT_BOOST					= 45
EFFECT_HUNDRED_FISTS			= 46
EFFECT_MANAFONT					= 47
EFFECT_CHAINSPELL				= 48
EFFECT_PERFECT_DODGE			= 49
EFFECT_INVINCIBLE				= 50
EFFECT_BLOOD_WEAPON				= 51
EFFECT_SOUL_VOICE				= 52
EFFECT_EAGLE_EYE_SHOT			= 53
EFFECT_MEIKYO_SHISUI			= 54
EFFECT_ASTRAL_FLOW				= 55
EFFECT_BERSERK					= 56
EFFECT_DEFENDER					= 57
EFFECT_AGGRESSOR				= 58
EFFECT_FOCUS					= 59
EFFECT_DODGE					= 60
EFFECT_COUNTERSTANCE			= 61
EFFECT_SENTINEL					= 62
EFFECT_SOULEATER				= 63
EFFECT_LAST_RESORT				= 64
EFFECT_SNEAK_ATTACK				= 65
EFFECT_COPY_IMAGE				= 66
EFFECT_THIRD_EYE				= 67
EFFECT_WARCRY					= 68
EFFECT_INVISIBLE				= 69
EFFECT_DEODORIZE				= 70
EFFECT_SNEAK					= 71
EFFECT_SHARPSHOT				= 72
EFFECT_BARRAGE					= 73
EFFECT_HOLY_CIRCLE				= 74
EFFECT_ARCANE_CIRCLE			= 75
EFFECT_HIDE						= 76
EFFECT_CAMOUFLAGE				= 77
EFFECT_DIVINE_SEAL				= 78
EFFECT_ELEMENTAL_SEAL			= 79
EFFECT_STR_BOOST				= 80
EFFECT_DEX_BOOST				= 81
EFFECT_VIT_BOOST				= 82
EFFECT_AGI_BOOST				= 83
EFFECT_INT_BOOST				= 84
EFFECT_MND_BOOST				= 85
EFFECT_CHR_BOOST				= 86
EFFECT_TRICK_ATTACK				= 87
EFFECT_MAX_HP_BOOST				= 88
EFFECT_MAX_MP_BOOST				= 89
EFFECT_ACCURACY_BOOST			= 90
EFFECT_ATTACK_BOOST				= 91
EFFECT_EVASION_BOOST			= 92
EFFECT_DEFENSE_BOOST			= 93
EFFECT_ENFIRE					= 94
EFFECT_ENBLIZZARD				= 95
EFFECT_ENAERO					= 96
EFFECT_ENSTONE					= 97
EFFECT_ENTHUNDER				= 98
EFFECT_ENWATER					= 99
EFFECT_BARFIRE					= 100
EFFECT_BARBLIZZARD				= 101
EFFECT_BARAERO					= 102
EFFECT_BARSTONE					= 103
EFFECT_BARTHUNDER				= 104
EFFECT_BARWATER					= 105
EFFECT_BARSLEEP					= 106
EFFECT_BARPOISON				= 107
EFFECT_BARPARALYZE				= 108
EFFECT_BARBLIND					= 109
EFFECT_BARSILENCE				= 110
EFFECT_BARPETRIFY				= 111
EFFECT_BARVIRUS					= 112
EFFECT_RERAISE					= 113
EFFECT_COVER					= 114
EFFECT_UNLIMITED_SHOT			= 115
EFFECT_PHALANX					= 116
EFFECT_WARDING_CIRCLE			= 117
EFFECT_ANCIENT_CIRCLE			= 118
EFFECT_STR_BOOST_II				= 119
EFFECT_DEX_BOOST_II				= 120
EFFECT_VIT_BOOST_II				= 121
EFFECT_AGI_BOOST_II				= 122
EFFECT_INT_BOOST_II				= 123
EFFECT_MND_BOOST_II				= 124
EFFECT_CHR_BOOST_II				= 125
EFFECT_SPIRIT_SURGE				= 126
EFFECT_COSTUME					= 127
EFFECT_BURN						= 128
EFFECT_FROST					= 129
EFFECT_CHOKE					= 130
EFFECT_RASP						= 131
EFFECT_SHOCK					= 132
EFFECT_DROWN					= 133
EFFECT_DIA						= 134
EFFECT_BIO						= 135
EFFECT_STR_DOWN					= 136
EFFECT_DEX_DOWN					= 137
EFFECT_VIT_DOWN					= 138
EFFECT_AGI_DOWN					= 139
EFFECT_INT_DOWN					= 140
EFFECT_MND_DOWN					= 141
EFFECT_CHR_DOWN					= 142
EFFECT_LEVEL_RESTRICTION		= 143
EFFECT_MAX_HP_DOWN				= 144
EFFECT_MAX_MP_DOWN				= 145
EFFECT_ACCURACY_DOWN			= 146
EFFECT_ATTACK_DOWN				= 147
EFFECT_EVASION_DOWN				= 148
EFFECT_DEFENSE_DOWN				= 149
EFFECT_PHYSICAL_SHIELD			= 150
EFFECT_ARROW_SHIELD				= 151
EFFECT_MAGIC_SHIELD				= 152
EFFECT_DAMAGE_SPIKES			= 153
EFFECT_SHINING_RUBY				= 154
EFFECT_MEDICINE					= 155
EFFECT_FLASH					= 156
EFFECT_SJ_RESTRICTION			= 157
EFFECT_PROVOKE					= 158
EFFECT_PENALTY					= 159
EFFECT_PREPARATIONS				= 160
EFFECT_SPRINT					= 161
EFFECT_ENCHANTMENT				= 162
EFFECT_AZURE_LORE				= 163
EFFECT_CHAIN_AFFINITY			= 164
EFFECT_BURST_AFFINITY			= 165
EFFECT_OVERDRIVE				= 166
EFFECT_MAGIC_DEF_DOWN			= 167
EFFECT_INHIBIT_TP				= 168
EFFECT_POTENCY					= 169
EFFECT_REGAIN					= 170
EFFECT_PAX						= 171
EFFECT_INTENSION				= 172
EFFECT_DREAD_SPIKES				= 173
EFFECT_MAGIC_ACC_DOWN			= 174
EFFECT_MAGIC_ATK_DOWN			= 175
EFFECT_QUICKENING				= 176
EFFECT_ENCUMBRANCE_II			= 177
EFFECT_FIRESTORM				= 178
EFFECT_HAILSTORM				= 179
EFFECT_WINDSTORM				= 180
EFFECT_SANDSTORM				= 181
EFFECT_THUNDERSTORM				= 182
EFFECT_RAINSTORM				= 183
EFFECT_AURORASTORM				= 184
EFFECT_VOIDSTORM				= 185
EFFECT_HELIX					= 186
EFFECT_SUBLIMATION_ACTIVATED	= 187
EFFECT_SUBLIMATION_COMPLETE		= 188
EFFECT_MAX_TP_DOWN				= 189
EFFECT_MAGIC_ATK_BOOST			= 190
EFFECT_MAGIC_DEF_BOOST			= 191
EFFECT_REQUIEM					= 192
EFFECT_LULLABY					= 193
EFFECT_ELEGY					= 194
EFFECT_PAEON					= 195
EFFECT_BALLAD					= 196
EFFECT_MINNE					= 197
EFFECT_MINUET					= 198
EFFECT_MADRIGAL					= 199
EFFECT_PRELUDE					= 200
EFFECT_MAMBO					= 201
EFFECT_AUBADE					= 202
EFFECT_PASTORAL					= 203
EFFECT_HUM						= 204
EFFECT_FANTASIA					= 205
EFFECT_OPERETTA					= 206
EFFECT_CAPRICCIO				= 207
EFFECT_SERENADE					= 208
EFFECT_ROUND					= 209
EFFECT_GAVOTTE					= 210
EFFECT_FUGUE					= 211
EFFECT_RHAPSODY					= 212
EFFECT_ARIA						= 213
EFFECT_MARCH					= 214
EFFECT_ETUDE					= 215
EFFECT_CAROL					= 216
EFFECT_THRENODY					= 217
EFFECT_HYMNUS					= 218
EFFECT_MAZURKA					= 219
EFFECT_SIRVENTE					= 220
EFFECT_DIRGE					= 221
EFFECT_SCHERZO					= 222
EFFECT_BARD_SONG_32				= 223
EFFECT_NA						= 232
EFFECT_AUTO_REGEN				= 233
EFFECT_AUTO_REFRESH				= 234
EFFECT_FISHING_IMAGERY			= 235
EFFECT_WOODWORKING_IMAGERY		= 236
EFFECT_SMITHING_IMAGERY			= 237
EFFECT_GOLDSMITHING_IMAGERY		= 238
EFFECT_CLOTHCRAFT_IMAGERY		= 239
EFFECT_LEATHERCRAFT_IMAGERY		= 240
EFFECT_BONECRAFT_IMAGERY		= 241
EFFECT_ALCHEMY_IMAGERY			= 242
EFFECT_COOKING_IMAGERY			= 243
EFFECT_IMAGERY_1				= 244
EFFECT_IMAGERY_2				= 245
EFFECT_IMAGERY_3				= 246
EFFECT_IMAGERY_4				= 247
EFFECT_IMAGERY_5				= 248
EFFECT_DEDICATION				= 249
EFFECT_EF_BADGE					= 250
EFFECT_FOOD						= 251
EFFECT_CHOCOBO					= 252
EFFECT_SIGNET					= 253
EFFECT_BATTLEFIELD				= 254
EFFECT_NONE						= 255
EFFECT_SANCTION					= 256
EFFECT_BESIEGED					= 257
EFFECT_ILLUSION					= 258
EFFECT_ENCUMBRANCE_I			= 259
EFFECT_OBLIVISCENCE				= 260
EFFECT_IMPAIRMENT				= 261
EFFECT_OMERTA					= 262
EFFECT_DEBILITATION				= 263
EFFECT_PATHOS					= 264
EFFECT_FLURRY					= 265
EFFECT_CONCENTRATION			= 266
EFFECT_ALLIED_TAGS				= 267
EFFECT_SIGIL					= 268
EFFECT_LEVEL_SYNC				= 269
EFFECT_AFTERMATH_LV1			= 270
EFFECT_AFTERMATH_LV2			= 271
EFFECT_AFTERMATH_LV3			= 272
EFFECT_AFTERMATH				= 273
EFFECT_ENLIGHT					= 274
EFFECT_AUSPICE					= 275
EFFECT_CONFRONTATION			= 276
EFFECT_ENFIRE_II				= 277
EFFECT_ENBLIZZARD_II			= 278
EFFECT_ENAERO_II				= 279
EFFECT_ENSTONE_II				= 280
EFFECT_ENTHUNDER_II				= 281
EFFECT_ENWATER_II				= 282
EFFECT_PERFECT_DEFENSE			= 283
EFFECT_EGG						= 284
EFFECT_VISITANT					= 285
EFFECT_BARAMNESIA				= 286
EFFECT_ATMA						= 287
EFFECT_ENDARK					= 288
EFFECT_ENMITY_BOOST				= 289
EFFECT_SUBTLE_BLOW_PLUS			= 290
EFFECT_ENMITY_DOWN				= 291
EFFECT_PENNANT					= 292
EFFECT_NEGATE_PETRIFY			= 293
EFFECT_NEGATE_TERROR			= 294
EFFECT_NEGATE_AMNESIA			= 295
EFFECT_NEGATE_DOOM				= 296
EFFECT_NEGATE_POISON			= 297
EFFECT_CRIT_HIT_EVASION_DOWN	= 298
EFFECT_OVERLOAD					= 299
EFFECT_FIRE_MANEUVER			= 300
EFFECT_ICE_MANEUVER				= 301
EFFECT_WIND_MANEUVER			= 302
EFFECT_EARTH_MANEUVER			= 303
EFFECT_THUNDER_MANEUVER			= 304
EFFECT_WATER_MANEUVER			= 305
EFFECT_LIGHT_MANEUVER			= 306
EFFECT_DARK_MANEUVER			= 307
EFFECT_DOUBLE_UP_CHANCE			= 308
EFFECT_BUST						= 309
EFFECT_FIGHTER_S_ROLL			= 310
EFFECT_MONK_S_ROLL				= 311
EFFECT_HEALER_S_ROLL			= 312
EFFECT_WIZARD_S_ROLL			= 313
EFFECT_WARLOCK_S_ROLL			= 314
EFFECT_ROGUE_S_ROLL				= 315
EFFECT_GALLANT_S_ROLL			= 316
EFFECT_CHAOS_ROLL				= 317
EFFECT_BEAST_ROLL				= 318
EFFECT_CHORAL_ROLL				= 319
EFFECT_HUNTER_S_ROLL			= 320
EFFECT_SAMURAI_ROLL				= 321
EFFECT_NINJA_ROLL				= 322
EFFECT_DRACHEN_ROLL				= 323
EFFECT_EVOKER_S_ROLL			= 324
EFFECT_MAGUS_S_ROLL				= 325
EFFECT_CORSAIR_S_ROLL			= 326
EFFECT_PUPPET_ROLL				= 327
EFFECT_DANCER_S_ROLL			= 328
EFFECT_SCHOLAR_S_ROLL			= 329
EFFECT_BOLTER_S_ROLL			= 330
EFFECT_CASTER_S_ROLL			= 331
EFFECT_COURSER_S_ROLL			= 332
EFFECT_BLITZER_S_ROLL			= 333
EFFECT_TACTICIAN_S_ROLL			= 334
EFFECT_ALLIES_ROLL				= 335
EFFECT_NONE_I					= 336
EFFECT_NONE_II					= 337
EFFECT_NONE_III					= 338
EFFECT_NONE_IV					= 339
EFFECT_WARRIOR_S_CHARGE			= 340
EFFECT_FORMLESS_STRIKES			= 341
EFFECT_ASSASSIN_S_CHARGE		= 342
EFFECT_FEINT					= 343
EFFECT_FEALTY					= 344
EFFECT_DARK_SEAL				= 345
EFFECT_DIABOLIC_EYE				= 346
EFFECT_NIGHTINGALE				= 347
EFFECT_TROUBADOUR				= 348
EFFECT_KILLER_INSTINCT			= 349
EFFECT_STEALTH_SHOT				= 350
EFFECT_FLASHY_SHOT				= 351
EFFECT_SANGE					= 352
EFFECT_HASSO					= 353
EFFECT_SEIGAN					= 354
EFFECT_CONVERGENCE				= 355
EFFECT_DIFFUSION				= 356
EFFECT_SNAKE_EYE				= 357
EFFECT_LIGHT_ARTS				= 358
EFFECT_DARK_ARTS				= 359
EFFECT_PENURY					= 360
EFFECT_PARSIMONY				= 361
EFFECT_CELERITY					= 362
EFFECT_ALACRITY					= 363
EFFECT_RAPTURE					= 364
EFFECT_EBULLIENCE				= 365
EFFECT_ACCESSION				= 366
EFFECT_MANIFESTATION			= 367
EFFECT_DRAIN_SAMBA				= 368
EFFECT_ASPIR_SAMBA				= 369
EFFECT_HASTE_SAMBA				= 370
EFFECT_VELOCITY_SHOT			= 371
EFFECT_BUILDING_FLOURISH		= 375
EFFECT_TRANCE					= 376
EFFECT_TABULA_RASA				= 377
EFFECT_DRAIN_DAZE				= 378
EFFECT_ASPIR_DAZE				= 379
EFFECT_HASTE_DAZE				= 380
EFFECT_FINISHING_MOVE_1			= 381
EFFECT_FINISHING_MOVE_2			= 382
EFFECT_FINISHING_MOVE_3			= 383
EFFECT_FINISHING_MOVE_4			= 384
EFFECT_FINISHING_MOVE_5			= 385
EFFECT_LETHARGIC_DAZE_1			= 386
EFFECT_LETHARGIC_DAZE_2			= 387
EFFECT_LETHARGIC_DAZE_3			= 388
EFFECT_LETHARGIC_DAZE_4			= 389
EFFECT_LETHARGIC_DAZE_5			= 390
EFFECT_SLUGGISH_DAZE_1			= 391
EFFECT_SLUGGISH_DAZE_2			= 392
EFFECT_SLUGGISH_DAZE_3			= 393
EFFECT_SLUGGISH_DAZE_4			= 394
EFFECT_SLUGGISH_DAZE_5			= 395
EFFECT_WEAKENED_DAZE_1			= 396
EFFECT_WEAKENED_DAZE_2			= 397
EFFECT_WEAKENED_DAZE_3			= 398
EFFECT_WEAKENED_DAZE_4			= 399
EFFECT_WEAKENED_DAZE_5			= 400
EFFECT_ADDENDUM_WHITE			= 401
EFFECT_ADDENDUM_BLACK			= 402
EFFECT_REPRISAL					= 403
EFFECT_MAGIC_EVASION_DOWN		= 404
EFFECT_RETALIATION				= 405
EFFECT_FOOTWORK					= 406
EFFECT_KLIMAFORM				= 407
EFFECT_SEKKANOKI				= 408
EFFECT_PIANISSIMO				= 409
EFFECT_SABER_DANCE				= 410
EFFECT_FAN_DANCE				= 411
EFFECT_ALTRUISM					= 412
EFFECT_FOCALIZATION				= 413
EFFECT_TRANQUILITY				= 414
EFFECT_EQUANIMITY				= 415
EFFECT_ENLIGHTENMENT			= 416
EFFECT_AFFLATUS_SOLACE			= 417
EFFECT_AFFLATUS_MISERY			= 418
EFFECT_COMPOSURE				= 419
EFFECT_YONIN					= 420
EFFECT_INNIN					= 421
EFFECT_CARBUNCLE_S_FAVOR		= 422
EFFECT_IFRIT_S_FAVOR			= 423
EFFECT_SHIVA_S_FAVOR			= 424
EFFECT_GARUDA_S_FAVOR			= 425
EFFECT_TITAN_S_FAVOR			= 426
EFFECT_RAMUH_S_FAVOR			= 427
EFFECT_LEVIATHAN_S_FAVOR		= 428
EFFECT_FENRIR_S_FAVOR			= 429
EFFECT_DIABOLOS_S_FAVOR			= 430
EFFECT_AVATAR_S_FAVOR			= 431
EFFECT_MULTI_STRIKES			= 432
EFFECT_DOUBLE_SHOT				= 433
EFFECT_TRANSCENDENCY			= 434
EFFECT_RESTRAINT				= 435
EFFECT_PERFECT_COUNTER			= 436
EFFECT_MANA_WALL				= 437
EFFECT_DIVINE_EMBLEM			= 438
EFFECT_NETHER_VOID				= 439
EFFECT_SENGIKORI				= 440
EFFECT_FUTAE					= 441
EFFECT_PRESTO					= 442
EFFECT_CLIMACTIC_FLOURISH		= 443
EFFECT_COPY_IMAGE_2				= 444
EFFECT_COPY_IMAGE_3				= 445
EFFECT_COPY_IMAGE_4				= 446
EFFECT_MULTI_SHOTS				= 447
EFFECT_BEWILDERED_DAZE_1		= 448
EFFECT_BEWILDERED_DAZE_2		= 449
EFFECT_BEWILDERED_DAZE_3		= 450
EFFECT_BEWILDERED_DAZE_4		= 451
EFFECT_BEWILDERED_DAZE_5		= 452
EFFECT_DIVINE_CARESS_I			= 453
EFFECT_SABOTEUR					= 454
EFFECT_TENUTO					= 455
EFFECT_SPUR						= 456
EFFECT_EFFLUX					= 457
EFFECT_EARTHEN_ARMOR			= 458
EFFECT_DIVINE_CARESS_II			= 459
EFFECT_BLOOD_RAGE				= 460
EFFECT_IMPETUS					= 461
EFFECT_CONSPIRATOR				= 462
EFFECT_SEPULCHER				= 463
EFFECT_ARCANE_CREST				= 464
EFFECT_HAMANOHA					= 465
EFFECT_DRAGON_BREAKER			= 466
EFFECT_TRIPLE_SHOT				= 467
EFFECT_STRIKING_FLOURISH		= 468
EFFECT_PERPETUANCE				= 469
EFFECT_IMMANENCE				= 470
EFFECT_MIGAWARI					= 471
EFFECT_AVATAR					= 491
EFFECT_NINJUTSU_ELE_DEBUFF      = 490

EFFECT_HEALING					= 512
EFFECT_LEAVEGAME				= 513
EFFECT_SKILLCHAIN               = 514

EFFECT_SKILLCHAIN0              = 0x200
EFFECT_SKILLCHAIN1              = 0x400
EFFECT_SKILLCHAIN2              = 0x800
EFFECT_SKILLCHAIN3              = 0x1000
EFFECT_SKILLCHAIN4              = 0x2000
EFFECT_SKILLCHAIN5              = 0x4000
EFFECT_SKILLCHAINMASK           = 0x7C00

-----------------------------------
-- These codes are the gateway to directly interacting with the pXI core program with status effects.
-- These are NOT the actual status effects such as weakness or silence, 
-- but rather arbitrary codes chosen to represent different modifiers to the effected characters and mobs.
--
-- Even if the particular mod is not completely (or at all) implemented yet, you can still script the effects using these codes.  
--
-- Example: target:getMod(MOD_STR) will get the sum of STR bonuses/penalties from gear, food, STR Etude, Absorb-STR, and any other STR-related buff/debuff.
-----------------------------------

MOD_NONE				= 0x00
MOD_DEF					= 0x01
MOD_HP					= 0x02
MOD_HPP					= 0x03
MOD_CONVMPTOHP			= 0x04
MOD_MP					= 0x05
MOD_MPP					= 0x06
MOD_CONVHPTOMP			= 0x07
MOD_STR					= 0x08
MOD_DEX					= 0x09
MOD_VIT					= 0x0A
MOD_AGI					= 0x0B
MOD_INT					= 0x0C
MOD_MND					= 0x0D
MOD_CHR					= 0x0E
MOD_FIREDEF				= 0x0F
MOD_ICEDEF				= 0x10
MOD_WINDDEF				= 0x11
MOD_EARTHDEF			= 0x12
MOD_THUNDERDEF			= 0x13
MOD_WATERDEF			= 0x14
MOD_LIGHTDEF			= 0x15
MOD_DARKDEF				= 0x16
MOD_ATT					= 0x17
MOD_RATT				= 0x18
MOD_ACC					= 0x19
MOD_RACC				= 0x1A
MOD_ENMITY				= 0x1B
MOD_MATT				= 0x1C
MOD_MDEF				= 0x1D
MOD_MACC				= 0x1E
MOD_MEVA				= 0x1F
MOD_FIREATT				= 0x20
MOD_ICEATT				= 0x21
MOD_WINDATT				= 0x22
MOD_EARTHATT			= 0x23
MOD_THUNDERATT			= 0x24
MOD_WATERATT			= 0x25
MOD_LIGHTATT			= 0x26
MOD_DARKATT				= 0x27
MOD_FIREACC				= 0x28
MOD_ICEACC				= 0x29
MOD_WINDACC				= 0x2A
MOD_EARTHACC			= 0x2B
MOD_THUNDERACC			= 0x2C
MOD_WATERACC			= 0x2D
MOD_LIGHTACC			= 0x2E
MOD_DARKACC				= 0x2F
MOD_WSACC				= 0x30
MOD_SLASHRES			= 0x31
MOD_PIERCERES			= 0x32
MOD_IMPACTRES			= 0x33
MOD_HTHRES				= 0x34
MOD_FIRERES				= 0x36
MOD_ICERES				= 0x37
MOD_WINDRES				= 0x38
MOD_EARTHRES			= 0x39
MOD_THUNDERRES			= 0x3A
MOD_WATERRES			= 0x3B
MOD_LIGHTRES			= 0x3C
MOD_DARKRES				= 0x3D
MOD_ATTP				= 0x3E
MOD_DEFP				= 0x3F
MOD_ACCP				= 0x40
MOD_EVAP				= 0x41
MOD_RATTP				= 0x42
MOD_RACCP				= 0x43
MOD_EVA					= 0x44
MOD_RDEF				= 0x45
MOD_REVA				= 0x46
MOD_MPHEAL				= 0x47
MOD_HPHEAL				= 0x48
MOD_STORETP				= 0x49
MOD_HTH					= 0x50
MOD_DAGGER				= 0x51
MOD_SWORD				= 0x52
MOD_GSWORD				= 0x53
MOD_AXE					= 0x54
MOD_GAXE				= 0x55
MOD_SCYTHE				= 0x56
MOD_POLEARM				= 0x57
MOD_KATANA				= 0x58
MOD_GKATANA				= 0x59
MOD_CLUB				= 0x5A
MOD_STAFF				= 0x5B
MOD_ARCHERY				= 0x68
MOD_MARKSMAN			= 0x69
MOD_THROW				= 0x6A
MOD_GUARD				= 0x6B
MOD_EVASION				= 0x6C
MOD_SHIELD				= 0x6D
MOD_PARRY				= 0x6E
MOD_DIVINE				= 0x6F
MOD_HEALING				= 0x70
MOD_ENHANCE				= 0x71
MOD_ENFEEBLE			= 0x72
MOD_ELEM				= 0x73
MOD_DARK				= 0x74
MOD_SUMMONING			= 0x75
MOD_NINJUTSU			= 0x76
MOD_SINGING				= 0x77
MOD_STRING				= 0x78
MOD_WIND				= 0x79
MOD_BLUE				= 0x7A
MOD_FISH				= 0x7F
MOD_WOOD				= 0x80
MOD_SMITH				= 0x81
MOD_GOLDSMITH			= 0x82
MOD_CLOTH				= 0x83
MOD_LEATHER				= 0x84
MOD_BONE				= 0x85
MOD_ALCHEMY				= 0x86
MOD_COOK				= 0x87
MOD_SYNERGY				= 0x88
MOD_RIDING				= 0x89
MOD_ANTIHQ_WOOD			= 0x90
MOD_ANTIHQ_SMITH		= 0x91
MOD_ANTIHQ_GOLDSMITH	= 0x92
MOD_ANTIHQ_CLOTH		= 0x93
MOD_ANTIHQ_LEATHER		= 0x94
MOD_ANTIHQ_BONE			= 0x95
MOD_ANTIHQ_ALCHEMY		= 0x96
MOD_ANTIHQ_COOK			= 0x97
MOD_DMG					= 0xA0
MOD_DMGPHYS				= 0xA1
MOD_DMGBREATH			= 0xA2
MOD_DMGMAGIC			= 0xA3
MOD_DMGRANGE			= 0xA4
MOD_CRITHITRATE			= 0xA5
MOD_ENEMYCRITRATE		= 0xA6
MOD_HASTE				= 0xA7
MOD_SPELLINT			= 0xA8
MOD_MOVE				= 0xA9
MOD_FASTCAST			= 0xAA
MOD_DELAY				= 0xAB
MOD_RANGED_DELAY		= 0xAC
MOD_MARTIAL_ARTS		= 0xAD
MOD_SKILLCHAINBONUS     = 0xAE
MOD_SKILLCHAINDMG       = 0xAF

MOD_FOOD_HPP			= 0xB0
MOD_FOOD_HP_CAP			= 0xB1
MOD_FOOD_MPP			= 0xB2
MOD_FOOD_MP_CAP			= 0xB3
MOD_FOOD_ATTP			= 0xB4
MOD_FOOD_ATT_CAP		= 0xB5
MOD_FOOD_DEFP			= 0xB6
MOD_FOOD_DEF_CAP		= 0xB7
MOD_FOOD_ACCP			= 0xB8
MOD_FOOD_ACC_CAP		= 0xB9
MOD_FOOD_RATTP			= 0xBA
MOD_FOOD_RATT_CAP		= 0xBB
MOD_FOOD_RACCP			= 0xBC
MOD_FOOD_RACC_CAP		= 0xBD
MOD_VERMIN_KILLER		= 0xE0
MOD_BIRD_KILLER			= 0xE1
MOD_AMORPH_KILLER		= 0xE2
MOD_LIZARD_KILLER		= 0xE3
MOD_AQUAN_KILLER		= 0xE4
MOD_PLANTOID_KILLER		= 0xE5
MOD_BEAST_KILLER		= 0xE6
MOD_UNDEAD_KILLER		= 0xE7
MOD_ARCANA_KILLER		= 0xE8
MOD_DRAGON_KILLER		= 0xE9
MOD_DEMON_KILLER		= 0xEA
MOD_EMPTY_KILLER		= 0xEB
MOD_HUMANOID_KILLER		= 0xEC
MOD_LUMORIAN_KILLER     = 0xED
MOD_LUMINION_KILLER     = 0xEE
MOD_SLEEPRES			= 0xF0
MOD_POISONRES			= 0xF1
MOD_PARALYZERES			= 0xF2
MOD_BLINDRES			= 0xF3
MOD_SILENCERES			= 0xF4
MOD_VIRUSRES			= 0xF5
MOD_PETRIFYRES			= 0xF6
MOD_BINDRES				= 0xF7
MOD_CURSERES			= 0xF8
MOD_GRAVITYRES			= 0xF9
MOD_SLOWRES				= 0xFA
MOD_STUNRES				= 0xFB
MOD_CHARMRES			= 0xFC
MOD_UNKNOWN				= 0xFF
MOD_PARALYZE			= 0x101
MOD_MIJIN_GAKURE		= 0x102
MOD_DUAL_WIELD			= 0x103
MOD_DOUBLE_ATTACK		= 0x120
MOD_SUBTLE_BLOW			= 0x121
MOD_COUNTER				= 0x123
MOD_KICK_ATTACK			= 0x124
MOD_AFFLATUS_SOLACE		= 0x125
MOD_AFFLATUS_MISERY		= 0x126
MOD_CLEAR_MIND			= 0x127
MOD_CONSERVE_MP			= 0x128
MOD_BLINK				= 0x12B
MOD_STONESKIN			= 0x12C
MOD_PHALANX				= 0x12D
MOD_TRIPLE_ATTACK		= 0x12E
MOD_TREASURE_HUNTER     = 0x12F
MOD_TAME				= 0x130
MOD_RECYCLE				= 0x131
MOD_ZANSHIN				= 0x132
MOD_UTSUSEMI			= 0x133
MOD_NINJA_TOOL			= 0x134
MOD_BLUE_POINTS			= 0x135
MOD_DEDICATION			= 0x136
MOD_DEDICATION_CAP		= 0x137
MOD_ROLL_FIGHTERS		= 0x138
MOD_ROLL_MONKS			= 0x139
MOD_ROLL_HEALERS		= 0x13A
MOD_ROLL_WIZARDS		= 0x13B
MOD_ROLL_WARLOCKS		= 0x13C
MOD_ROLL_ROGUES			= 0x13D
MOD_ROLL_GALLANTS		= 0x13E
MOD_ROLL_CHAOS			= 0x13F
MOD_ROLL_BEAST			= 0x140
MOD_ROLL_CHORAL			= 0x141
MOD_ROLL_HUNTERS		= 0x142
MOD_ROLL_SAMURAI		= 0x143
MOD_ROLL_NINJA			= 0x144
MOD_ROLL_DRACHEN		= 0x145
MOD_ROLL_EVOKERS		= 0x146
MOD_ROLL_MAGUS			= 0x147
MOD_ROLL_CORSAIRS		= 0x148
MOD_ROLL_PUPPET			= 0x149
MOD_ROLL_DANCERS		= 0x14A
MOD_ROLL_SCHOLARS		= 0x14B
MOD_BUST				= 0x14C
MOD_FINISHING_MOVES		= 0x14D
MOD_SUBLIMATION			= 0x14E
MOD_STORMSURGE			= 0x14F
MOD_LIGHT_ARTS_MPCOST	= 0x150
MOD_LIGHT_ARTS_FASTCAST	= 0x151
MOD_DARK_ARTS_MPCOST	= 0x152
MOD_DARK_ARTS_FASTCAST	= 0x153
MOD_WIDESCAN            = 0x154
MOD_ENSPELL             = 0x155
MOD_SPIKES              = 0x156
MOD_ENSPELL_DMG         = 0x157
MOD_SPIKES_DMG          = 0x158
MOD_AVATAR_PERPETUATION = 0x15A
MOD_FIRE_AFFINITY		= 0x15B
MOD_EARTH_AFFINITY		= 0x15C
MOD_WATER_AFFINITY		= 0x15D
MOD_ICE_AFFINITY		= 0x15E
MOD_THUNDER_AFFINITY	= 0x15F
MOD_WIND_AFFINITY		= 0x160
MOD_LIGHT_AFFINITY		= 0x161
MOD_DARK_AFFINITY		= 0x162