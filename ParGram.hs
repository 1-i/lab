{-# OPTIONS_GHC -w #-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module ParGram where
import AbsGram
import LexGram
import ErrM
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn 
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn31 (Ident)
	| HappyAbsSyn32 (String)
	| HappyAbsSyn33 (Integer)
	| HappyAbsSyn34 (Char)
	| HappyAbsSyn35 (Double)
	| HappyAbsSyn36 (Program)
	| HappyAbsSyn37 (Function)
	| HappyAbsSyn38 (Decl)
	| HappyAbsSyn39 (PDecl)
	| HappyAbsSyn40 ([Function])
	| HappyAbsSyn41 ([Stm])
	| HappyAbsSyn42 ([Decl])
	| HappyAbsSyn43 ([PDecl])
	| HappyAbsSyn44 ([Exp])
	| HappyAbsSyn45 (Stm)
	| HappyAbsSyn46 (Ass)
	| HappyAbsSyn47 (Exp)
	| HappyAbsSyn62 (Type)
	| HappyAbsSyn63 (PMet)

{- to allow type-synonyms as our monads (likely
 - with explicitly-specified bind and return)
 - in Haskell98, it seems that with
 - /type M a = .../, then /(HappyReduction M)/
 - is not allowed.  But Happy is a
 - code-generator that can just substitute it.
type HappyReduction m = 
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> m HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> m HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> m HappyAbsSyn
-}

action_0,
 action_1,
 action_2,
 action_3,
 action_4,
 action_5,
 action_6,
 action_7,
 action_8,
 action_9,
 action_10,
 action_11,
 action_12,
 action_13,
 action_14,
 action_15,
 action_16,
 action_17,
 action_18,
 action_19,
 action_20,
 action_21,
 action_22,
 action_23,
 action_24,
 action_25,
 action_26,
 action_27,
 action_28,
 action_29,
 action_30,
 action_31,
 action_32,
 action_33,
 action_34,
 action_35,
 action_36,
 action_37,
 action_38,
 action_39,
 action_40,
 action_41,
 action_42,
 action_43,
 action_44,
 action_45,
 action_46,
 action_47,
 action_48,
 action_49,
 action_50,
 action_51,
 action_52,
 action_53,
 action_54,
 action_55,
 action_56,
 action_57,
 action_58,
 action_59,
 action_60,
 action_61,
 action_62,
 action_63,
 action_64,
 action_65,
 action_66,
 action_67,
 action_68,
 action_69,
 action_70,
 action_71,
 action_72,
 action_73,
 action_74,
 action_75,
 action_76,
 action_77,
 action_78,
 action_79,
 action_80,
 action_81,
 action_82,
 action_83,
 action_84,
 action_85,
 action_86,
 action_87,
 action_88,
 action_89,
 action_90,
 action_91,
 action_92,
 action_93,
 action_94,
 action_95,
 action_96,
 action_97,
 action_98,
 action_99,
 action_100,
 action_101,
 action_102,
 action_103,
 action_104,
 action_105,
 action_106,
 action_107,
 action_108,
 action_109,
 action_110,
 action_111,
 action_112,
 action_113,
 action_114,
 action_115,
 action_116,
 action_117,
 action_118,
 action_119,
 action_120,
 action_121,
 action_122,
 action_123,
 action_124,
 action_125,
 action_126,
 action_127,
 action_128,
 action_129,
 action_130,
 action_131,
 action_132,
 action_133,
 action_134,
 action_135,
 action_136,
 action_137,
 action_138,
 action_139,
 action_140,
 action_141,
 action_142,
 action_143,
 action_144,
 action_145,
 action_146,
 action_147,
 action_148,
 action_149,
 action_150,
 action_151,
 action_152,
 action_153,
 action_154,
 action_155,
 action_156,
 action_157,
 action_158,
 action_159,
 action_160,
 action_161,
 action_162,
 action_163,
 action_164,
 action_165,
 action_166,
 action_167,
 action_168,
 action_169,
 action_170,
 action_171,
 action_172,
 action_173,
 action_174,
 action_175,
 action_176,
 action_177,
 action_178,
 action_179,
 action_180,
 action_181,
 action_182,
 action_183,
 action_184,
 action_185,
 action_186,
 action_187,
 action_188,
 action_189,
 action_190,
 action_191,
 action_192,
 action_193,
 action_194,
 action_195,
 action_196,
 action_197,
 action_198,
 action_199,
 action_200,
 action_201,
 action_202,
 action_203,
 action_204,
 action_205,
 action_206,
 action_207,
 action_208,
 action_209,
 action_210,
 action_211,
 action_212,
 action_213,
 action_214,
 action_215,
 action_216,
 action_217,
 action_218,
 action_219,
 action_220,
 action_221,
 action_222,
 action_223,
 action_224,
 action_225,
 action_226 :: () => Int -> ({-HappyReduction (Err) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Err) HappyAbsSyn)

happyReduce_28,
 happyReduce_29,
 happyReduce_30,
 happyReduce_31,
 happyReduce_32,
 happyReduce_33,
 happyReduce_34,
 happyReduce_35,
 happyReduce_36,
 happyReduce_37,
 happyReduce_38,
 happyReduce_39,
 happyReduce_40,
 happyReduce_41,
 happyReduce_42,
 happyReduce_43,
 happyReduce_44,
 happyReduce_45,
 happyReduce_46,
 happyReduce_47,
 happyReduce_48,
 happyReduce_49,
 happyReduce_50,
 happyReduce_51,
 happyReduce_52,
 happyReduce_53,
 happyReduce_54,
 happyReduce_55,
 happyReduce_56,
 happyReduce_57,
 happyReduce_58,
 happyReduce_59,
 happyReduce_60,
 happyReduce_61,
 happyReduce_62,
 happyReduce_63,
 happyReduce_64,
 happyReduce_65,
 happyReduce_66,
 happyReduce_67,
 happyReduce_68,
 happyReduce_69,
 happyReduce_70,
 happyReduce_71,
 happyReduce_72,
 happyReduce_73,
 happyReduce_74,
 happyReduce_75,
 happyReduce_76,
 happyReduce_77,
 happyReduce_78,
 happyReduce_79,
 happyReduce_80,
 happyReduce_81,
 happyReduce_82,
 happyReduce_83,
 happyReduce_84,
 happyReduce_85,
 happyReduce_86,
 happyReduce_87,
 happyReduce_88,
 happyReduce_89,
 happyReduce_90,
 happyReduce_91,
 happyReduce_92,
 happyReduce_93,
 happyReduce_94,
 happyReduce_95,
 happyReduce_96,
 happyReduce_97,
 happyReduce_98,
 happyReduce_99,
 happyReduce_100,
 happyReduce_101,
 happyReduce_102,
 happyReduce_103,
 happyReduce_104,
 happyReduce_105,
 happyReduce_106,
 happyReduce_107,
 happyReduce_108,
 happyReduce_109,
 happyReduce_110,
 happyReduce_111,
 happyReduce_112,
 happyReduce_113,
 happyReduce_114,
 happyReduce_115 :: () => ({-HappyReduction (Err) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Err) HappyAbsSyn)

action_0 (36) = happyGoto action_123
action_0 (41) = happyGoto action_124
action_0 _ = happyReduce_39

action_1 (65) = happyShift action_100
action_1 (37) = happyGoto action_122
action_1 _ = happyFail

action_2 (111) = happyShift action_29
action_2 (31) = happyGoto action_115
action_2 (38) = happyGoto action_121
action_2 _ = happyFail

action_3 (95) = happyShift action_32
action_3 (100) = happyShift action_33
action_3 (106) = happyShift action_34
action_3 (107) = happyShift action_35
action_3 (111) = happyShift action_29
action_3 (31) = happyGoto action_30
action_3 (39) = happyGoto action_120
action_3 (63) = happyGoto action_114
action_3 _ = happyFail

action_4 (40) = happyGoto action_119
action_4 _ = happyReduce_37

action_5 (41) = happyGoto action_118
action_5 _ = happyReduce_39

action_6 (111) = happyShift action_29
action_6 (31) = happyGoto action_115
action_6 (38) = happyGoto action_116
action_6 (42) = happyGoto action_117
action_6 _ = happyReduce_41

action_7 (95) = happyShift action_32
action_7 (100) = happyShift action_33
action_7 (106) = happyShift action_34
action_7 (107) = happyShift action_35
action_7 (111) = happyShift action_29
action_7 (31) = happyGoto action_30
action_7 (39) = happyGoto action_112
action_7 (43) = happyGoto action_113
action_7 (63) = happyGoto action_114
action_7 _ = happyReduce_44

action_8 (64) = happyShift action_58
action_8 (66) = happyShift action_59
action_8 (67) = happyShift action_45
action_8 (69) = happyShift action_60
action_8 (90) = happyShift action_61
action_8 (97) = happyShift action_62
action_8 (98) = happyShift action_63
action_8 (99) = happyShift action_64
action_8 (104) = happyShift action_65
action_8 (111) = happyShift action_29
action_8 (112) = happyShift action_66
action_8 (113) = happyShift action_67
action_8 (114) = happyShift action_68
action_8 (115) = happyShift action_69
action_8 (31) = happyGoto action_46
action_8 (32) = happyGoto action_47
action_8 (33) = happyGoto action_48
action_8 (34) = happyGoto action_49
action_8 (35) = happyGoto action_50
action_8 (44) = happyGoto action_110
action_8 (47) = happyGoto action_70
action_8 (48) = happyGoto action_71
action_8 (49) = happyGoto action_72
action_8 (50) = happyGoto action_73
action_8 (51) = happyGoto action_74
action_8 (52) = happyGoto action_75
action_8 (53) = happyGoto action_51
action_8 (54) = happyGoto action_52
action_8 (55) = happyGoto action_53
action_8 (56) = happyGoto action_54
action_8 (57) = happyGoto action_55
action_8 (58) = happyGoto action_111
action_8 (59) = happyGoto action_79
action_8 (60) = happyGoto action_77
action_8 (61) = happyGoto action_57
action_8 _ = happyReduce_47

action_9 (64) = happyShift action_58
action_9 (65) = happyShift action_100
action_9 (66) = happyShift action_59
action_9 (67) = happyShift action_45
action_9 (69) = happyShift action_60
action_9 (76) = happyShift action_101
action_9 (86) = happyShift action_102
action_9 (90) = happyShift action_61
action_9 (91) = happyShift action_103
action_9 (92) = happyShift action_104
action_9 (97) = happyShift action_62
action_9 (98) = happyShift action_63
action_9 (99) = happyShift action_64
action_9 (101) = happyShift action_105
action_9 (104) = happyShift action_65
action_9 (105) = happyShift action_106
action_9 (108) = happyShift action_107
action_9 (109) = happyShift action_108
action_9 (110) = happyShift action_109
action_9 (111) = happyShift action_29
action_9 (112) = happyShift action_66
action_9 (113) = happyShift action_67
action_9 (114) = happyShift action_68
action_9 (115) = happyShift action_69
action_9 (31) = happyGoto action_93
action_9 (32) = happyGoto action_47
action_9 (33) = happyGoto action_48
action_9 (34) = happyGoto action_49
action_9 (35) = happyGoto action_50
action_9 (37) = happyGoto action_94
action_9 (38) = happyGoto action_95
action_9 (45) = happyGoto action_96
action_9 (46) = happyGoto action_97
action_9 (47) = happyGoto action_70
action_9 (48) = happyGoto action_71
action_9 (49) = happyGoto action_72
action_9 (50) = happyGoto action_73
action_9 (51) = happyGoto action_74
action_9 (52) = happyGoto action_75
action_9 (53) = happyGoto action_51
action_9 (54) = happyGoto action_52
action_9 (55) = happyGoto action_53
action_9 (56) = happyGoto action_98
action_9 (57) = happyGoto action_55
action_9 (58) = happyGoto action_99
action_9 (59) = happyGoto action_79
action_9 (60) = happyGoto action_77
action_9 (61) = happyGoto action_57
action_9 _ = happyFail

action_10 (67) = happyShift action_45
action_10 (90) = happyShift action_61
action_10 (104) = happyShift action_65
action_10 (111) = happyShift action_29
action_10 (112) = happyShift action_66
action_10 (113) = happyShift action_67
action_10 (114) = happyShift action_68
action_10 (115) = happyShift action_69
action_10 (31) = happyGoto action_46
action_10 (32) = happyGoto action_47
action_10 (33) = happyGoto action_48
action_10 (34) = happyGoto action_49
action_10 (35) = happyGoto action_50
action_10 (46) = happyGoto action_91
action_10 (56) = happyGoto action_92
action_10 (57) = happyGoto action_55
action_10 (61) = happyGoto action_57
action_10 _ = happyFail

action_11 (64) = happyShift action_58
action_11 (66) = happyShift action_59
action_11 (67) = happyShift action_45
action_11 (69) = happyShift action_60
action_11 (90) = happyShift action_61
action_11 (97) = happyShift action_62
action_11 (98) = happyShift action_63
action_11 (99) = happyShift action_64
action_11 (104) = happyShift action_65
action_11 (111) = happyShift action_29
action_11 (112) = happyShift action_66
action_11 (113) = happyShift action_67
action_11 (114) = happyShift action_68
action_11 (115) = happyShift action_69
action_11 (31) = happyGoto action_46
action_11 (32) = happyGoto action_47
action_11 (33) = happyGoto action_48
action_11 (34) = happyGoto action_49
action_11 (35) = happyGoto action_50
action_11 (47) = happyGoto action_90
action_11 (48) = happyGoto action_71
action_11 (49) = happyGoto action_72
action_11 (50) = happyGoto action_73
action_11 (51) = happyGoto action_74
action_11 (52) = happyGoto action_75
action_11 (53) = happyGoto action_51
action_11 (54) = happyGoto action_52
action_11 (55) = happyGoto action_53
action_11 (56) = happyGoto action_54
action_11 (57) = happyGoto action_55
action_11 (60) = happyGoto action_77
action_11 (61) = happyGoto action_57
action_11 _ = happyFail

action_12 (64) = happyShift action_58
action_12 (66) = happyShift action_59
action_12 (67) = happyShift action_45
action_12 (69) = happyShift action_60
action_12 (90) = happyShift action_61
action_12 (97) = happyShift action_62
action_12 (98) = happyShift action_63
action_12 (99) = happyShift action_64
action_12 (104) = happyShift action_65
action_12 (111) = happyShift action_29
action_12 (112) = happyShift action_66
action_12 (113) = happyShift action_67
action_12 (114) = happyShift action_68
action_12 (115) = happyShift action_69
action_12 (31) = happyGoto action_46
action_12 (32) = happyGoto action_47
action_12 (33) = happyGoto action_48
action_12 (34) = happyGoto action_49
action_12 (35) = happyGoto action_50
action_12 (48) = happyGoto action_89
action_12 (49) = happyGoto action_72
action_12 (50) = happyGoto action_73
action_12 (51) = happyGoto action_74
action_12 (52) = happyGoto action_75
action_12 (53) = happyGoto action_51
action_12 (54) = happyGoto action_52
action_12 (55) = happyGoto action_53
action_12 (56) = happyGoto action_54
action_12 (57) = happyGoto action_55
action_12 (60) = happyGoto action_77
action_12 (61) = happyGoto action_57
action_12 _ = happyFail

action_13 (64) = happyShift action_58
action_13 (66) = happyShift action_59
action_13 (67) = happyShift action_45
action_13 (69) = happyShift action_60
action_13 (90) = happyShift action_61
action_13 (97) = happyShift action_62
action_13 (98) = happyShift action_63
action_13 (99) = happyShift action_64
action_13 (104) = happyShift action_65
action_13 (111) = happyShift action_29
action_13 (112) = happyShift action_66
action_13 (113) = happyShift action_67
action_13 (114) = happyShift action_68
action_13 (115) = happyShift action_69
action_13 (31) = happyGoto action_46
action_13 (32) = happyGoto action_47
action_13 (33) = happyGoto action_48
action_13 (34) = happyGoto action_49
action_13 (35) = happyGoto action_50
action_13 (49) = happyGoto action_88
action_13 (50) = happyGoto action_73
action_13 (51) = happyGoto action_74
action_13 (52) = happyGoto action_75
action_13 (53) = happyGoto action_51
action_13 (54) = happyGoto action_52
action_13 (55) = happyGoto action_53
action_13 (56) = happyGoto action_54
action_13 (57) = happyGoto action_55
action_13 (60) = happyGoto action_77
action_13 (61) = happyGoto action_57
action_13 _ = happyFail

action_14 (64) = happyShift action_58
action_14 (66) = happyShift action_59
action_14 (67) = happyShift action_45
action_14 (69) = happyShift action_60
action_14 (90) = happyShift action_61
action_14 (97) = happyShift action_62
action_14 (98) = happyShift action_63
action_14 (99) = happyShift action_64
action_14 (104) = happyShift action_65
action_14 (111) = happyShift action_29
action_14 (112) = happyShift action_66
action_14 (113) = happyShift action_67
action_14 (114) = happyShift action_68
action_14 (115) = happyShift action_69
action_14 (31) = happyGoto action_46
action_14 (32) = happyGoto action_47
action_14 (33) = happyGoto action_48
action_14 (34) = happyGoto action_49
action_14 (35) = happyGoto action_50
action_14 (50) = happyGoto action_87
action_14 (51) = happyGoto action_74
action_14 (52) = happyGoto action_75
action_14 (53) = happyGoto action_51
action_14 (54) = happyGoto action_52
action_14 (55) = happyGoto action_53
action_14 (56) = happyGoto action_54
action_14 (57) = happyGoto action_55
action_14 (60) = happyGoto action_77
action_14 (61) = happyGoto action_57
action_14 _ = happyFail

action_15 (64) = happyShift action_58
action_15 (66) = happyShift action_59
action_15 (67) = happyShift action_45
action_15 (69) = happyShift action_60
action_15 (90) = happyShift action_61
action_15 (97) = happyShift action_62
action_15 (98) = happyShift action_63
action_15 (99) = happyShift action_64
action_15 (104) = happyShift action_65
action_15 (111) = happyShift action_29
action_15 (112) = happyShift action_66
action_15 (113) = happyShift action_67
action_15 (114) = happyShift action_68
action_15 (115) = happyShift action_69
action_15 (31) = happyGoto action_46
action_15 (32) = happyGoto action_47
action_15 (33) = happyGoto action_48
action_15 (34) = happyGoto action_49
action_15 (35) = happyGoto action_50
action_15 (51) = happyGoto action_86
action_15 (52) = happyGoto action_75
action_15 (53) = happyGoto action_51
action_15 (54) = happyGoto action_52
action_15 (55) = happyGoto action_53
action_15 (56) = happyGoto action_54
action_15 (57) = happyGoto action_55
action_15 (60) = happyGoto action_77
action_15 (61) = happyGoto action_57
action_15 _ = happyFail

action_16 (64) = happyShift action_58
action_16 (66) = happyShift action_59
action_16 (67) = happyShift action_45
action_16 (69) = happyShift action_60
action_16 (90) = happyShift action_61
action_16 (97) = happyShift action_62
action_16 (98) = happyShift action_63
action_16 (99) = happyShift action_64
action_16 (104) = happyShift action_65
action_16 (111) = happyShift action_29
action_16 (112) = happyShift action_66
action_16 (113) = happyShift action_67
action_16 (114) = happyShift action_68
action_16 (115) = happyShift action_69
action_16 (31) = happyGoto action_46
action_16 (32) = happyGoto action_47
action_16 (33) = happyGoto action_48
action_16 (34) = happyGoto action_49
action_16 (35) = happyGoto action_50
action_16 (52) = happyGoto action_85
action_16 (53) = happyGoto action_51
action_16 (54) = happyGoto action_52
action_16 (55) = happyGoto action_53
action_16 (56) = happyGoto action_54
action_16 (57) = happyGoto action_55
action_16 (60) = happyGoto action_77
action_16 (61) = happyGoto action_57
action_16 _ = happyFail

action_17 (64) = happyShift action_58
action_17 (66) = happyShift action_59
action_17 (67) = happyShift action_45
action_17 (69) = happyShift action_60
action_17 (90) = happyShift action_61
action_17 (97) = happyShift action_62
action_17 (98) = happyShift action_63
action_17 (99) = happyShift action_64
action_17 (104) = happyShift action_65
action_17 (111) = happyShift action_29
action_17 (112) = happyShift action_66
action_17 (113) = happyShift action_67
action_17 (114) = happyShift action_68
action_17 (115) = happyShift action_69
action_17 (31) = happyGoto action_46
action_17 (32) = happyGoto action_47
action_17 (33) = happyGoto action_48
action_17 (34) = happyGoto action_49
action_17 (35) = happyGoto action_50
action_17 (53) = happyGoto action_84
action_17 (54) = happyGoto action_52
action_17 (55) = happyGoto action_53
action_17 (56) = happyGoto action_54
action_17 (57) = happyGoto action_55
action_17 (61) = happyGoto action_57
action_17 _ = happyFail

action_18 (66) = happyShift action_59
action_18 (67) = happyShift action_45
action_18 (69) = happyShift action_60
action_18 (90) = happyShift action_61
action_18 (97) = happyShift action_62
action_18 (98) = happyShift action_63
action_18 (99) = happyShift action_64
action_18 (104) = happyShift action_65
action_18 (111) = happyShift action_29
action_18 (112) = happyShift action_66
action_18 (113) = happyShift action_67
action_18 (114) = happyShift action_68
action_18 (115) = happyShift action_69
action_18 (31) = happyGoto action_46
action_18 (32) = happyGoto action_47
action_18 (33) = happyGoto action_48
action_18 (34) = happyGoto action_49
action_18 (35) = happyGoto action_50
action_18 (54) = happyGoto action_83
action_18 (55) = happyGoto action_53
action_18 (56) = happyGoto action_54
action_18 (57) = happyGoto action_55
action_18 (61) = happyGoto action_57
action_18 _ = happyFail

action_19 (67) = happyShift action_45
action_19 (90) = happyShift action_61
action_19 (97) = happyShift action_62
action_19 (98) = happyShift action_63
action_19 (99) = happyShift action_64
action_19 (104) = happyShift action_65
action_19 (111) = happyShift action_29
action_19 (112) = happyShift action_66
action_19 (113) = happyShift action_67
action_19 (114) = happyShift action_68
action_19 (115) = happyShift action_69
action_19 (31) = happyGoto action_46
action_19 (32) = happyGoto action_47
action_19 (33) = happyGoto action_48
action_19 (34) = happyGoto action_49
action_19 (35) = happyGoto action_50
action_19 (55) = happyGoto action_82
action_19 (56) = happyGoto action_54
action_19 (57) = happyGoto action_55
action_19 (61) = happyGoto action_57
action_19 _ = happyFail

action_20 (67) = happyShift action_45
action_20 (90) = happyShift action_61
action_20 (104) = happyShift action_65
action_20 (111) = happyShift action_29
action_20 (112) = happyShift action_66
action_20 (113) = happyShift action_67
action_20 (114) = happyShift action_68
action_20 (115) = happyShift action_69
action_20 (31) = happyGoto action_46
action_20 (32) = happyGoto action_47
action_20 (33) = happyGoto action_48
action_20 (34) = happyGoto action_49
action_20 (35) = happyGoto action_50
action_20 (56) = happyGoto action_81
action_20 (57) = happyGoto action_55
action_20 (61) = happyGoto action_57
action_20 _ = happyFail

action_21 (67) = happyShift action_45
action_21 (90) = happyShift action_61
action_21 (104) = happyShift action_65
action_21 (111) = happyShift action_29
action_21 (112) = happyShift action_66
action_21 (113) = happyShift action_67
action_21 (114) = happyShift action_68
action_21 (115) = happyShift action_69
action_21 (31) = happyGoto action_46
action_21 (32) = happyGoto action_47
action_21 (33) = happyGoto action_48
action_21 (34) = happyGoto action_49
action_21 (35) = happyGoto action_50
action_21 (57) = happyGoto action_80
action_21 (61) = happyGoto action_57
action_21 _ = happyFail

action_22 (64) = happyShift action_58
action_22 (66) = happyShift action_59
action_22 (67) = happyShift action_45
action_22 (69) = happyShift action_60
action_22 (90) = happyShift action_61
action_22 (97) = happyShift action_62
action_22 (98) = happyShift action_63
action_22 (99) = happyShift action_64
action_22 (104) = happyShift action_65
action_22 (111) = happyShift action_29
action_22 (112) = happyShift action_66
action_22 (113) = happyShift action_67
action_22 (114) = happyShift action_68
action_22 (115) = happyShift action_69
action_22 (31) = happyGoto action_46
action_22 (32) = happyGoto action_47
action_22 (33) = happyGoto action_48
action_22 (34) = happyGoto action_49
action_22 (35) = happyGoto action_50
action_22 (47) = happyGoto action_70
action_22 (48) = happyGoto action_71
action_22 (49) = happyGoto action_72
action_22 (50) = happyGoto action_73
action_22 (51) = happyGoto action_74
action_22 (52) = happyGoto action_75
action_22 (53) = happyGoto action_51
action_22 (54) = happyGoto action_52
action_22 (55) = happyGoto action_53
action_22 (56) = happyGoto action_54
action_22 (57) = happyGoto action_55
action_22 (58) = happyGoto action_78
action_22 (59) = happyGoto action_79
action_22 (60) = happyGoto action_77
action_22 (61) = happyGoto action_57
action_22 _ = happyFail

action_23 (64) = happyShift action_58
action_23 (66) = happyShift action_59
action_23 (67) = happyShift action_45
action_23 (69) = happyShift action_60
action_23 (90) = happyShift action_61
action_23 (97) = happyShift action_62
action_23 (98) = happyShift action_63
action_23 (99) = happyShift action_64
action_23 (104) = happyShift action_65
action_23 (111) = happyShift action_29
action_23 (112) = happyShift action_66
action_23 (113) = happyShift action_67
action_23 (114) = happyShift action_68
action_23 (115) = happyShift action_69
action_23 (31) = happyGoto action_46
action_23 (32) = happyGoto action_47
action_23 (33) = happyGoto action_48
action_23 (34) = happyGoto action_49
action_23 (35) = happyGoto action_50
action_23 (47) = happyGoto action_70
action_23 (48) = happyGoto action_71
action_23 (49) = happyGoto action_72
action_23 (50) = happyGoto action_73
action_23 (51) = happyGoto action_74
action_23 (52) = happyGoto action_75
action_23 (53) = happyGoto action_51
action_23 (54) = happyGoto action_52
action_23 (55) = happyGoto action_53
action_23 (56) = happyGoto action_54
action_23 (57) = happyGoto action_55
action_23 (59) = happyGoto action_76
action_23 (60) = happyGoto action_77
action_23 (61) = happyGoto action_57
action_23 _ = happyFail

action_24 (64) = happyShift action_58
action_24 (66) = happyShift action_59
action_24 (67) = happyShift action_45
action_24 (69) = happyShift action_60
action_24 (90) = happyShift action_61
action_24 (97) = happyShift action_62
action_24 (98) = happyShift action_63
action_24 (99) = happyShift action_64
action_24 (104) = happyShift action_65
action_24 (111) = happyShift action_29
action_24 (112) = happyShift action_66
action_24 (113) = happyShift action_67
action_24 (114) = happyShift action_68
action_24 (115) = happyShift action_69
action_24 (31) = happyGoto action_46
action_24 (32) = happyGoto action_47
action_24 (33) = happyGoto action_48
action_24 (34) = happyGoto action_49
action_24 (35) = happyGoto action_50
action_24 (53) = happyGoto action_51
action_24 (54) = happyGoto action_52
action_24 (55) = happyGoto action_53
action_24 (56) = happyGoto action_54
action_24 (57) = happyGoto action_55
action_24 (60) = happyGoto action_56
action_24 (61) = happyGoto action_57
action_24 _ = happyFail

action_25 (67) = happyShift action_45
action_25 (61) = happyGoto action_44
action_25 _ = happyFail

action_26 (69) = happyShift action_37
action_26 (83) = happyShift action_38
action_26 (84) = happyShift action_39
action_26 (85) = happyShift action_40
action_26 (87) = happyShift action_41
action_26 (93) = happyShift action_42
action_26 (102) = happyShift action_43
action_26 (62) = happyGoto action_36
action_26 _ = happyFail

action_27 (95) = happyShift action_32
action_27 (100) = happyShift action_33
action_27 (106) = happyShift action_34
action_27 (107) = happyShift action_35
action_27 (111) = happyShift action_29
action_27 (31) = happyGoto action_30
action_27 (63) = happyGoto action_31
action_27 _ = happyFail

action_28 (111) = happyShift action_29
action_28 _ = happyFail

action_29 _ = happyReduce_28

action_30 _ = happyReduce_115

action_31 (116) = happyAccept
action_31 _ = happyFail

action_32 (111) = happyShift action_29
action_32 (31) = happyGoto action_167
action_32 _ = happyFail

action_33 (111) = happyShift action_29
action_33 (31) = happyGoto action_166
action_33 _ = happyFail

action_34 (111) = happyShift action_29
action_34 (31) = happyGoto action_165
action_34 _ = happyFail

action_35 (111) = happyShift action_29
action_35 (31) = happyGoto action_164
action_35 _ = happyFail

action_36 (116) = happyAccept
action_36 _ = happyFail

action_37 (69) = happyShift action_37
action_37 (83) = happyShift action_38
action_37 (84) = happyShift action_39
action_37 (85) = happyShift action_40
action_37 (87) = happyShift action_41
action_37 (93) = happyShift action_42
action_37 (102) = happyShift action_43
action_37 (62) = happyGoto action_163
action_37 _ = happyFail

action_38 (80) = happyShift action_162
action_38 _ = happyFail

action_39 _ = happyReduce_106

action_40 _ = happyReduce_108

action_41 _ = happyReduce_105

action_42 _ = happyReduce_104

action_43 _ = happyReduce_107

action_44 (116) = happyAccept
action_44 _ = happyFail

action_45 (64) = happyShift action_58
action_45 (66) = happyShift action_59
action_45 (67) = happyShift action_45
action_45 (69) = happyShift action_60
action_45 (90) = happyShift action_61
action_45 (97) = happyShift action_62
action_45 (98) = happyShift action_63
action_45 (99) = happyShift action_64
action_45 (104) = happyShift action_65
action_45 (111) = happyShift action_29
action_45 (112) = happyShift action_66
action_45 (113) = happyShift action_67
action_45 (114) = happyShift action_68
action_45 (115) = happyShift action_69
action_45 (31) = happyGoto action_46
action_45 (32) = happyGoto action_47
action_45 (33) = happyGoto action_48
action_45 (34) = happyGoto action_49
action_45 (35) = happyGoto action_50
action_45 (47) = happyGoto action_70
action_45 (48) = happyGoto action_71
action_45 (49) = happyGoto action_72
action_45 (50) = happyGoto action_73
action_45 (51) = happyGoto action_74
action_45 (52) = happyGoto action_75
action_45 (53) = happyGoto action_51
action_45 (54) = happyGoto action_52
action_45 (55) = happyGoto action_53
action_45 (56) = happyGoto action_54
action_45 (57) = happyGoto action_55
action_45 (58) = happyGoto action_161
action_45 (59) = happyGoto action_79
action_45 (60) = happyGoto action_77
action_45 (61) = happyGoto action_57
action_45 _ = happyFail

action_46 (67) = happyShift action_145
action_46 _ = happyReduce_92

action_47 _ = happyReduce_93

action_48 _ = happyReduce_94

action_49 _ = happyReduce_95

action_50 _ = happyReduce_96

action_51 _ = happyReduce_102

action_52 _ = happyReduce_81

action_53 _ = happyReduce_84

action_54 (80) = happyShift action_143
action_54 _ = happyReduce_88

action_55 _ = happyReduce_90

action_56 (116) = happyAccept
action_56 _ = happyFail

action_57 _ = happyReduce_99

action_58 (64) = happyShift action_58
action_58 (66) = happyShift action_59
action_58 (67) = happyShift action_45
action_58 (69) = happyShift action_60
action_58 (90) = happyShift action_61
action_58 (97) = happyShift action_62
action_58 (98) = happyShift action_63
action_58 (99) = happyShift action_64
action_58 (104) = happyShift action_65
action_58 (111) = happyShift action_29
action_58 (112) = happyShift action_66
action_58 (113) = happyShift action_67
action_58 (114) = happyShift action_68
action_58 (115) = happyShift action_69
action_58 (31) = happyGoto action_46
action_58 (32) = happyGoto action_47
action_58 (33) = happyGoto action_48
action_58 (34) = happyGoto action_49
action_58 (35) = happyGoto action_50
action_58 (53) = happyGoto action_51
action_58 (54) = happyGoto action_52
action_58 (55) = happyGoto action_53
action_58 (56) = happyGoto action_54
action_58 (57) = happyGoto action_55
action_58 (60) = happyGoto action_160
action_58 (61) = happyGoto action_57
action_58 _ = happyFail

action_59 (66) = happyShift action_59
action_59 (67) = happyShift action_45
action_59 (69) = happyShift action_60
action_59 (90) = happyShift action_61
action_59 (97) = happyShift action_62
action_59 (98) = happyShift action_63
action_59 (99) = happyShift action_64
action_59 (104) = happyShift action_65
action_59 (111) = happyShift action_29
action_59 (112) = happyShift action_66
action_59 (113) = happyShift action_67
action_59 (114) = happyShift action_68
action_59 (115) = happyShift action_69
action_59 (31) = happyGoto action_46
action_59 (32) = happyGoto action_47
action_59 (33) = happyGoto action_48
action_59 (34) = happyGoto action_49
action_59 (35) = happyGoto action_50
action_59 (54) = happyGoto action_159
action_59 (55) = happyGoto action_53
action_59 (56) = happyGoto action_54
action_59 (57) = happyGoto action_55
action_59 (61) = happyGoto action_57
action_59 _ = happyFail

action_60 (66) = happyShift action_59
action_60 (67) = happyShift action_45
action_60 (69) = happyShift action_60
action_60 (90) = happyShift action_61
action_60 (97) = happyShift action_62
action_60 (98) = happyShift action_63
action_60 (99) = happyShift action_64
action_60 (104) = happyShift action_65
action_60 (111) = happyShift action_29
action_60 (112) = happyShift action_66
action_60 (113) = happyShift action_67
action_60 (114) = happyShift action_68
action_60 (115) = happyShift action_69
action_60 (31) = happyGoto action_46
action_60 (32) = happyGoto action_47
action_60 (33) = happyGoto action_48
action_60 (34) = happyGoto action_49
action_60 (35) = happyGoto action_50
action_60 (54) = happyGoto action_158
action_60 (55) = happyGoto action_53
action_60 (56) = happyGoto action_54
action_60 (57) = happyGoto action_55
action_60 (61) = happyGoto action_57
action_60 _ = happyFail

action_61 _ = happyReduce_98

action_62 (67) = happyShift action_157
action_62 _ = happyFail

action_63 (67) = happyShift action_156
action_63 _ = happyFail

action_64 (67) = happyShift action_155
action_64 _ = happyFail

action_65 _ = happyReduce_97

action_66 _ = happyReduce_29

action_67 _ = happyReduce_30

action_68 _ = happyReduce_31

action_69 _ = happyReduce_32

action_70 (96) = happyShift action_146
action_70 _ = happyReduce_101

action_71 (82) = happyShift action_147
action_71 _ = happyReduce_66

action_72 (78) = happyShift action_148
action_72 _ = happyReduce_68

action_73 (77) = happyShift action_149
action_73 (79) = happyShift action_150
action_73 _ = happyReduce_70

action_74 (70) = happyShift action_151
action_74 (72) = happyShift action_152
action_74 _ = happyReduce_73

action_75 (69) = happyShift action_153
action_75 (73) = happyShift action_154
action_75 _ = happyReduce_76

action_76 (116) = happyAccept
action_76 _ = happyFail

action_77 _ = happyReduce_79

action_78 (116) = happyAccept
action_78 _ = happyFail

action_79 _ = happyReduce_100

action_80 (116) = happyAccept
action_80 _ = happyFail

action_81 (80) = happyShift action_143
action_81 (116) = happyAccept
action_81 _ = happyFail

action_82 (116) = happyAccept
action_82 _ = happyFail

action_83 (116) = happyAccept
action_83 _ = happyFail

action_84 (116) = happyAccept
action_84 _ = happyFail

action_85 (69) = happyShift action_153
action_85 (73) = happyShift action_154
action_85 (116) = happyAccept
action_85 _ = happyFail

action_86 (70) = happyShift action_151
action_86 (72) = happyShift action_152
action_86 (116) = happyAccept
action_86 _ = happyFail

action_87 (77) = happyShift action_149
action_87 (79) = happyShift action_150
action_87 (116) = happyAccept
action_87 _ = happyFail

action_88 (78) = happyShift action_148
action_88 (116) = happyAccept
action_88 _ = happyFail

action_89 (82) = happyShift action_147
action_89 (116) = happyAccept
action_89 _ = happyFail

action_90 (96) = happyShift action_146
action_90 (116) = happyAccept
action_90 _ = happyFail

action_91 (116) = happyAccept
action_91 _ = happyFail

action_92 (75) = happyShift action_142
action_92 (80) = happyShift action_143
action_92 _ = happyFail

action_93 (67) = happyShift action_145
action_93 (74) = happyShift action_128
action_93 _ = happyReduce_92

action_94 _ = happyReduce_57

action_95 (76) = happyShift action_144
action_95 _ = happyFail

action_96 (116) = happyAccept
action_96 _ = happyFail

action_97 _ = happyReduce_58

action_98 (75) = happyShift action_142
action_98 (80) = happyShift action_143
action_98 _ = happyReduce_88

action_99 (76) = happyShift action_141
action_99 _ = happyFail

action_100 (111) = happyShift action_29
action_100 (31) = happyGoto action_140
action_100 _ = happyFail

action_101 _ = happyReduce_50

action_102 (41) = happyGoto action_139
action_102 _ = happyReduce_39

action_103 (67) = happyShift action_45
action_103 (90) = happyShift action_61
action_103 (104) = happyShift action_65
action_103 (111) = happyShift action_29
action_103 (112) = happyShift action_66
action_103 (113) = happyShift action_67
action_103 (114) = happyShift action_68
action_103 (115) = happyShift action_69
action_103 (31) = happyGoto action_46
action_103 (32) = happyGoto action_47
action_103 (33) = happyGoto action_48
action_103 (34) = happyGoto action_49
action_103 (35) = happyGoto action_50
action_103 (46) = happyGoto action_138
action_103 (56) = happyGoto action_92
action_103 (57) = happyGoto action_55
action_103 (61) = happyGoto action_57
action_103 _ = happyFail

action_104 (64) = happyShift action_58
action_104 (66) = happyShift action_59
action_104 (67) = happyShift action_45
action_104 (69) = happyShift action_60
action_104 (90) = happyShift action_61
action_104 (97) = happyShift action_62
action_104 (98) = happyShift action_63
action_104 (99) = happyShift action_64
action_104 (104) = happyShift action_65
action_104 (111) = happyShift action_29
action_104 (112) = happyShift action_66
action_104 (113) = happyShift action_67
action_104 (114) = happyShift action_68
action_104 (115) = happyShift action_69
action_104 (31) = happyGoto action_46
action_104 (32) = happyGoto action_47
action_104 (33) = happyGoto action_48
action_104 (34) = happyGoto action_49
action_104 (35) = happyGoto action_50
action_104 (47) = happyGoto action_70
action_104 (48) = happyGoto action_71
action_104 (49) = happyGoto action_72
action_104 (50) = happyGoto action_73
action_104 (51) = happyGoto action_74
action_104 (52) = happyGoto action_75
action_104 (53) = happyGoto action_51
action_104 (54) = happyGoto action_52
action_104 (55) = happyGoto action_53
action_104 (56) = happyGoto action_54
action_104 (57) = happyGoto action_55
action_104 (58) = happyGoto action_137
action_104 (59) = happyGoto action_79
action_104 (60) = happyGoto action_77
action_104 (61) = happyGoto action_57
action_104 _ = happyFail

action_105 (64) = happyShift action_58
action_105 (66) = happyShift action_59
action_105 (67) = happyShift action_45
action_105 (69) = happyShift action_60
action_105 (90) = happyShift action_61
action_105 (97) = happyShift action_62
action_105 (98) = happyShift action_63
action_105 (99) = happyShift action_64
action_105 (104) = happyShift action_65
action_105 (111) = happyShift action_29
action_105 (112) = happyShift action_66
action_105 (113) = happyShift action_67
action_105 (114) = happyShift action_68
action_105 (115) = happyShift action_69
action_105 (31) = happyGoto action_46
action_105 (32) = happyGoto action_47
action_105 (33) = happyGoto action_48
action_105 (34) = happyGoto action_49
action_105 (35) = happyGoto action_50
action_105 (47) = happyGoto action_70
action_105 (48) = happyGoto action_71
action_105 (49) = happyGoto action_72
action_105 (50) = happyGoto action_73
action_105 (51) = happyGoto action_74
action_105 (52) = happyGoto action_75
action_105 (53) = happyGoto action_51
action_105 (54) = happyGoto action_52
action_105 (55) = happyGoto action_53
action_105 (56) = happyGoto action_54
action_105 (57) = happyGoto action_55
action_105 (58) = happyGoto action_136
action_105 (59) = happyGoto action_79
action_105 (60) = happyGoto action_77
action_105 (61) = happyGoto action_57
action_105 _ = happyFail

action_106 (64) = happyShift action_58
action_106 (66) = happyShift action_59
action_106 (67) = happyShift action_45
action_106 (69) = happyShift action_60
action_106 (90) = happyShift action_61
action_106 (97) = happyShift action_62
action_106 (98) = happyShift action_63
action_106 (99) = happyShift action_64
action_106 (104) = happyShift action_65
action_106 (111) = happyShift action_29
action_106 (112) = happyShift action_66
action_106 (113) = happyShift action_67
action_106 (114) = happyShift action_68
action_106 (115) = happyShift action_69
action_106 (31) = happyGoto action_46
action_106 (32) = happyGoto action_47
action_106 (33) = happyGoto action_48
action_106 (34) = happyGoto action_49
action_106 (35) = happyGoto action_50
action_106 (47) = happyGoto action_70
action_106 (48) = happyGoto action_71
action_106 (49) = happyGoto action_72
action_106 (50) = happyGoto action_73
action_106 (51) = happyGoto action_74
action_106 (52) = happyGoto action_75
action_106 (53) = happyGoto action_51
action_106 (54) = happyGoto action_52
action_106 (55) = happyGoto action_53
action_106 (56) = happyGoto action_54
action_106 (57) = happyGoto action_55
action_106 (58) = happyGoto action_135
action_106 (59) = happyGoto action_79
action_106 (60) = happyGoto action_77
action_106 (61) = happyGoto action_57
action_106 _ = happyFail

action_107 (67) = happyShift action_134
action_107 _ = happyFail

action_108 (67) = happyShift action_133
action_108 _ = happyFail

action_109 (67) = happyShift action_132
action_109 _ = happyFail

action_110 (116) = happyAccept
action_110 _ = happyFail

action_111 (71) = happyShift action_131
action_111 _ = happyReduce_48

action_112 (76) = happyShift action_130
action_112 _ = happyReduce_45

action_113 (116) = happyAccept
action_113 _ = happyFail

action_114 (74) = happyShift action_129
action_114 _ = happyFail

action_115 (74) = happyShift action_128
action_115 _ = happyFail

action_116 (76) = happyShift action_127
action_116 _ = happyReduce_42

action_117 (116) = happyAccept
action_117 _ = happyFail

action_118 (64) = happyShift action_58
action_118 (65) = happyShift action_100
action_118 (66) = happyShift action_59
action_118 (67) = happyShift action_45
action_118 (69) = happyShift action_60
action_118 (76) = happyShift action_101
action_118 (86) = happyShift action_102
action_118 (90) = happyShift action_61
action_118 (91) = happyShift action_103
action_118 (92) = happyShift action_104
action_118 (97) = happyShift action_62
action_118 (98) = happyShift action_63
action_118 (99) = happyShift action_64
action_118 (101) = happyShift action_105
action_118 (104) = happyShift action_65
action_118 (105) = happyShift action_106
action_118 (108) = happyShift action_107
action_118 (109) = happyShift action_108
action_118 (110) = happyShift action_109
action_118 (111) = happyShift action_29
action_118 (112) = happyShift action_66
action_118 (113) = happyShift action_67
action_118 (114) = happyShift action_68
action_118 (115) = happyShift action_69
action_118 (116) = happyAccept
action_118 (31) = happyGoto action_93
action_118 (32) = happyGoto action_47
action_118 (33) = happyGoto action_48
action_118 (34) = happyGoto action_49
action_118 (35) = happyGoto action_50
action_118 (37) = happyGoto action_94
action_118 (38) = happyGoto action_95
action_118 (45) = happyGoto action_125
action_118 (46) = happyGoto action_97
action_118 (47) = happyGoto action_70
action_118 (48) = happyGoto action_71
action_118 (49) = happyGoto action_72
action_118 (50) = happyGoto action_73
action_118 (51) = happyGoto action_74
action_118 (52) = happyGoto action_75
action_118 (53) = happyGoto action_51
action_118 (54) = happyGoto action_52
action_118 (55) = happyGoto action_53
action_118 (56) = happyGoto action_98
action_118 (57) = happyGoto action_55
action_118 (58) = happyGoto action_99
action_118 (59) = happyGoto action_79
action_118 (60) = happyGoto action_77
action_118 (61) = happyGoto action_57
action_118 _ = happyFail

action_119 (65) = happyShift action_100
action_119 (116) = happyAccept
action_119 (37) = happyGoto action_126
action_119 _ = happyFail

action_120 (116) = happyAccept
action_120 _ = happyFail

action_121 (116) = happyAccept
action_121 _ = happyFail

action_122 (116) = happyAccept
action_122 _ = happyFail

action_123 (116) = happyAccept
action_123 _ = happyFail

action_124 (64) = happyShift action_58
action_124 (65) = happyShift action_100
action_124 (66) = happyShift action_59
action_124 (67) = happyShift action_45
action_124 (69) = happyShift action_60
action_124 (76) = happyShift action_101
action_124 (86) = happyShift action_102
action_124 (90) = happyShift action_61
action_124 (91) = happyShift action_103
action_124 (92) = happyShift action_104
action_124 (97) = happyShift action_62
action_124 (98) = happyShift action_63
action_124 (99) = happyShift action_64
action_124 (101) = happyShift action_105
action_124 (104) = happyShift action_65
action_124 (105) = happyShift action_106
action_124 (108) = happyShift action_107
action_124 (109) = happyShift action_108
action_124 (110) = happyShift action_109
action_124 (111) = happyShift action_29
action_124 (112) = happyShift action_66
action_124 (113) = happyShift action_67
action_124 (114) = happyShift action_68
action_124 (115) = happyShift action_69
action_124 (31) = happyGoto action_93
action_124 (32) = happyGoto action_47
action_124 (33) = happyGoto action_48
action_124 (34) = happyGoto action_49
action_124 (35) = happyGoto action_50
action_124 (37) = happyGoto action_94
action_124 (38) = happyGoto action_95
action_124 (45) = happyGoto action_125
action_124 (46) = happyGoto action_97
action_124 (47) = happyGoto action_70
action_124 (48) = happyGoto action_71
action_124 (49) = happyGoto action_72
action_124 (50) = happyGoto action_73
action_124 (51) = happyGoto action_74
action_124 (52) = happyGoto action_75
action_124 (53) = happyGoto action_51
action_124 (54) = happyGoto action_52
action_124 (55) = happyGoto action_53
action_124 (56) = happyGoto action_98
action_124 (57) = happyGoto action_55
action_124 (58) = happyGoto action_99
action_124 (59) = happyGoto action_79
action_124 (60) = happyGoto action_77
action_124 (61) = happyGoto action_57
action_124 _ = happyReduce_33

action_125 _ = happyReduce_40

action_126 _ = happyReduce_38

action_127 (111) = happyShift action_29
action_127 (31) = happyGoto action_115
action_127 (38) = happyGoto action_116
action_127 (42) = happyGoto action_198
action_127 _ = happyReduce_41

action_128 (69) = happyShift action_37
action_128 (83) = happyShift action_38
action_128 (84) = happyShift action_39
action_128 (85) = happyShift action_40
action_128 (87) = happyShift action_41
action_128 (93) = happyShift action_42
action_128 (102) = happyShift action_43
action_128 (62) = happyGoto action_197
action_128 _ = happyFail

action_129 (69) = happyShift action_37
action_129 (83) = happyShift action_38
action_129 (84) = happyShift action_39
action_129 (85) = happyShift action_40
action_129 (87) = happyShift action_41
action_129 (93) = happyShift action_42
action_129 (102) = happyShift action_43
action_129 (62) = happyGoto action_196
action_129 _ = happyFail

action_130 (95) = happyShift action_32
action_130 (100) = happyShift action_33
action_130 (106) = happyShift action_34
action_130 (107) = happyShift action_35
action_130 (111) = happyShift action_29
action_130 (31) = happyGoto action_30
action_130 (39) = happyGoto action_112
action_130 (43) = happyGoto action_195
action_130 (63) = happyGoto action_114
action_130 _ = happyReduce_44

action_131 (64) = happyShift action_58
action_131 (66) = happyShift action_59
action_131 (67) = happyShift action_45
action_131 (69) = happyShift action_60
action_131 (90) = happyShift action_61
action_131 (97) = happyShift action_62
action_131 (98) = happyShift action_63
action_131 (99) = happyShift action_64
action_131 (104) = happyShift action_65
action_131 (111) = happyShift action_29
action_131 (112) = happyShift action_66
action_131 (113) = happyShift action_67
action_131 (114) = happyShift action_68
action_131 (115) = happyShift action_69
action_131 (31) = happyGoto action_46
action_131 (32) = happyGoto action_47
action_131 (33) = happyGoto action_48
action_131 (34) = happyGoto action_49
action_131 (35) = happyGoto action_50
action_131 (44) = happyGoto action_194
action_131 (47) = happyGoto action_70
action_131 (48) = happyGoto action_71
action_131 (49) = happyGoto action_72
action_131 (50) = happyGoto action_73
action_131 (51) = happyGoto action_74
action_131 (52) = happyGoto action_75
action_131 (53) = happyGoto action_51
action_131 (54) = happyGoto action_52
action_131 (55) = happyGoto action_53
action_131 (56) = happyGoto action_54
action_131 (57) = happyGoto action_55
action_131 (58) = happyGoto action_111
action_131 (59) = happyGoto action_79
action_131 (60) = happyGoto action_77
action_131 (61) = happyGoto action_57
action_131 _ = happyReduce_47

action_132 (64) = happyShift action_58
action_132 (66) = happyShift action_59
action_132 (67) = happyShift action_45
action_132 (69) = happyShift action_60
action_132 (90) = happyShift action_61
action_132 (97) = happyShift action_62
action_132 (98) = happyShift action_63
action_132 (99) = happyShift action_64
action_132 (104) = happyShift action_65
action_132 (111) = happyShift action_29
action_132 (112) = happyShift action_66
action_132 (113) = happyShift action_67
action_132 (114) = happyShift action_68
action_132 (115) = happyShift action_69
action_132 (31) = happyGoto action_46
action_132 (32) = happyGoto action_47
action_132 (33) = happyGoto action_48
action_132 (34) = happyGoto action_49
action_132 (35) = happyGoto action_50
action_132 (47) = happyGoto action_70
action_132 (48) = happyGoto action_71
action_132 (49) = happyGoto action_72
action_132 (50) = happyGoto action_73
action_132 (51) = happyGoto action_74
action_132 (52) = happyGoto action_75
action_132 (53) = happyGoto action_51
action_132 (54) = happyGoto action_52
action_132 (55) = happyGoto action_53
action_132 (56) = happyGoto action_54
action_132 (57) = happyGoto action_55
action_132 (58) = happyGoto action_193
action_132 (59) = happyGoto action_79
action_132 (60) = happyGoto action_77
action_132 (61) = happyGoto action_57
action_132 _ = happyFail

action_133 (64) = happyShift action_58
action_133 (66) = happyShift action_59
action_133 (67) = happyShift action_45
action_133 (69) = happyShift action_60
action_133 (90) = happyShift action_61
action_133 (97) = happyShift action_62
action_133 (98) = happyShift action_63
action_133 (99) = happyShift action_64
action_133 (104) = happyShift action_65
action_133 (111) = happyShift action_29
action_133 (112) = happyShift action_66
action_133 (113) = happyShift action_67
action_133 (114) = happyShift action_68
action_133 (115) = happyShift action_69
action_133 (31) = happyGoto action_46
action_133 (32) = happyGoto action_47
action_133 (33) = happyGoto action_48
action_133 (34) = happyGoto action_49
action_133 (35) = happyGoto action_50
action_133 (47) = happyGoto action_70
action_133 (48) = happyGoto action_71
action_133 (49) = happyGoto action_72
action_133 (50) = happyGoto action_73
action_133 (51) = happyGoto action_74
action_133 (52) = happyGoto action_75
action_133 (53) = happyGoto action_51
action_133 (54) = happyGoto action_52
action_133 (55) = happyGoto action_53
action_133 (56) = happyGoto action_54
action_133 (57) = happyGoto action_55
action_133 (58) = happyGoto action_192
action_133 (59) = happyGoto action_79
action_133 (60) = happyGoto action_77
action_133 (61) = happyGoto action_57
action_133 _ = happyFail

action_134 (64) = happyShift action_58
action_134 (66) = happyShift action_59
action_134 (67) = happyShift action_45
action_134 (69) = happyShift action_60
action_134 (90) = happyShift action_61
action_134 (97) = happyShift action_62
action_134 (98) = happyShift action_63
action_134 (99) = happyShift action_64
action_134 (104) = happyShift action_65
action_134 (111) = happyShift action_29
action_134 (112) = happyShift action_66
action_134 (113) = happyShift action_67
action_134 (114) = happyShift action_68
action_134 (115) = happyShift action_69
action_134 (31) = happyGoto action_46
action_134 (32) = happyGoto action_47
action_134 (33) = happyGoto action_48
action_134 (34) = happyGoto action_49
action_134 (35) = happyGoto action_50
action_134 (47) = happyGoto action_70
action_134 (48) = happyGoto action_71
action_134 (49) = happyGoto action_72
action_134 (50) = happyGoto action_73
action_134 (51) = happyGoto action_74
action_134 (52) = happyGoto action_75
action_134 (53) = happyGoto action_51
action_134 (54) = happyGoto action_52
action_134 (55) = happyGoto action_53
action_134 (56) = happyGoto action_54
action_134 (57) = happyGoto action_55
action_134 (58) = happyGoto action_191
action_134 (59) = happyGoto action_79
action_134 (60) = happyGoto action_77
action_134 (61) = happyGoto action_57
action_134 _ = happyFail

action_135 (94) = happyShift action_190
action_135 _ = happyFail

action_136 (76) = happyShift action_189
action_136 _ = happyFail

action_137 (103) = happyShift action_188
action_137 _ = happyFail

action_138 (105) = happyShift action_187
action_138 _ = happyFail

action_139 (64) = happyShift action_58
action_139 (65) = happyShift action_100
action_139 (66) = happyShift action_59
action_139 (67) = happyShift action_45
action_139 (69) = happyShift action_60
action_139 (76) = happyShift action_101
action_139 (86) = happyShift action_102
action_139 (89) = happyShift action_186
action_139 (90) = happyShift action_61
action_139 (91) = happyShift action_103
action_139 (92) = happyShift action_104
action_139 (97) = happyShift action_62
action_139 (98) = happyShift action_63
action_139 (99) = happyShift action_64
action_139 (101) = happyShift action_105
action_139 (104) = happyShift action_65
action_139 (105) = happyShift action_106
action_139 (108) = happyShift action_107
action_139 (109) = happyShift action_108
action_139 (110) = happyShift action_109
action_139 (111) = happyShift action_29
action_139 (112) = happyShift action_66
action_139 (113) = happyShift action_67
action_139 (114) = happyShift action_68
action_139 (115) = happyShift action_69
action_139 (31) = happyGoto action_93
action_139 (32) = happyGoto action_47
action_139 (33) = happyGoto action_48
action_139 (34) = happyGoto action_49
action_139 (35) = happyGoto action_50
action_139 (37) = happyGoto action_94
action_139 (38) = happyGoto action_95
action_139 (45) = happyGoto action_125
action_139 (46) = happyGoto action_97
action_139 (47) = happyGoto action_70
action_139 (48) = happyGoto action_71
action_139 (49) = happyGoto action_72
action_139 (50) = happyGoto action_73
action_139 (51) = happyGoto action_74
action_139 (52) = happyGoto action_75
action_139 (53) = happyGoto action_51
action_139 (54) = happyGoto action_52
action_139 (55) = happyGoto action_53
action_139 (56) = happyGoto action_98
action_139 (57) = happyGoto action_55
action_139 (58) = happyGoto action_99
action_139 (59) = happyGoto action_79
action_139 (60) = happyGoto action_77
action_139 (61) = happyGoto action_57
action_139 _ = happyFail

action_140 (67) = happyShift action_185
action_140 _ = happyFail

action_141 _ = happyReduce_52

action_142 (64) = happyShift action_58
action_142 (66) = happyShift action_59
action_142 (67) = happyShift action_45
action_142 (69) = happyShift action_60
action_142 (90) = happyShift action_61
action_142 (97) = happyShift action_62
action_142 (98) = happyShift action_63
action_142 (99) = happyShift action_64
action_142 (104) = happyShift action_65
action_142 (111) = happyShift action_29
action_142 (112) = happyShift action_66
action_142 (113) = happyShift action_67
action_142 (114) = happyShift action_68
action_142 (115) = happyShift action_69
action_142 (31) = happyGoto action_46
action_142 (32) = happyGoto action_47
action_142 (33) = happyGoto action_48
action_142 (34) = happyGoto action_49
action_142 (35) = happyGoto action_50
action_142 (47) = happyGoto action_70
action_142 (48) = happyGoto action_71
action_142 (49) = happyGoto action_72
action_142 (50) = happyGoto action_73
action_142 (51) = happyGoto action_74
action_142 (52) = happyGoto action_75
action_142 (53) = happyGoto action_51
action_142 (54) = happyGoto action_52
action_142 (55) = happyGoto action_53
action_142 (56) = happyGoto action_54
action_142 (57) = happyGoto action_55
action_142 (58) = happyGoto action_184
action_142 (59) = happyGoto action_79
action_142 (60) = happyGoto action_77
action_142 (61) = happyGoto action_57
action_142 _ = happyFail

action_143 (64) = happyShift action_58
action_143 (66) = happyShift action_59
action_143 (67) = happyShift action_45
action_143 (69) = happyShift action_60
action_143 (90) = happyShift action_61
action_143 (97) = happyShift action_62
action_143 (98) = happyShift action_63
action_143 (99) = happyShift action_64
action_143 (104) = happyShift action_65
action_143 (111) = happyShift action_29
action_143 (112) = happyShift action_66
action_143 (113) = happyShift action_67
action_143 (114) = happyShift action_68
action_143 (115) = happyShift action_69
action_143 (31) = happyGoto action_46
action_143 (32) = happyGoto action_47
action_143 (33) = happyGoto action_48
action_143 (34) = happyGoto action_49
action_143 (35) = happyGoto action_50
action_143 (47) = happyGoto action_70
action_143 (48) = happyGoto action_71
action_143 (49) = happyGoto action_72
action_143 (50) = happyGoto action_73
action_143 (51) = happyGoto action_74
action_143 (52) = happyGoto action_75
action_143 (53) = happyGoto action_51
action_143 (54) = happyGoto action_52
action_143 (55) = happyGoto action_53
action_143 (56) = happyGoto action_54
action_143 (57) = happyGoto action_55
action_143 (58) = happyGoto action_183
action_143 (59) = happyGoto action_79
action_143 (60) = happyGoto action_77
action_143 (61) = happyGoto action_57
action_143 _ = happyFail

action_144 _ = happyReduce_51

action_145 (64) = happyShift action_58
action_145 (66) = happyShift action_59
action_145 (67) = happyShift action_45
action_145 (69) = happyShift action_60
action_145 (90) = happyShift action_61
action_145 (97) = happyShift action_62
action_145 (98) = happyShift action_63
action_145 (99) = happyShift action_64
action_145 (104) = happyShift action_65
action_145 (111) = happyShift action_29
action_145 (112) = happyShift action_66
action_145 (113) = happyShift action_67
action_145 (114) = happyShift action_68
action_145 (115) = happyShift action_69
action_145 (31) = happyGoto action_46
action_145 (32) = happyGoto action_47
action_145 (33) = happyGoto action_48
action_145 (34) = happyGoto action_49
action_145 (35) = happyGoto action_50
action_145 (44) = happyGoto action_182
action_145 (47) = happyGoto action_70
action_145 (48) = happyGoto action_71
action_145 (49) = happyGoto action_72
action_145 (50) = happyGoto action_73
action_145 (51) = happyGoto action_74
action_145 (52) = happyGoto action_75
action_145 (53) = happyGoto action_51
action_145 (54) = happyGoto action_52
action_145 (55) = happyGoto action_53
action_145 (56) = happyGoto action_54
action_145 (57) = happyGoto action_55
action_145 (58) = happyGoto action_111
action_145 (59) = happyGoto action_79
action_145 (60) = happyGoto action_77
action_145 (61) = happyGoto action_57
action_145 _ = happyReduce_47

action_146 (64) = happyShift action_58
action_146 (66) = happyShift action_59
action_146 (67) = happyShift action_45
action_146 (69) = happyShift action_60
action_146 (90) = happyShift action_61
action_146 (97) = happyShift action_62
action_146 (98) = happyShift action_63
action_146 (99) = happyShift action_64
action_146 (104) = happyShift action_65
action_146 (111) = happyShift action_29
action_146 (112) = happyShift action_66
action_146 (113) = happyShift action_67
action_146 (114) = happyShift action_68
action_146 (115) = happyShift action_69
action_146 (31) = happyGoto action_46
action_146 (32) = happyGoto action_47
action_146 (33) = happyGoto action_48
action_146 (34) = happyGoto action_49
action_146 (35) = happyGoto action_50
action_146 (48) = happyGoto action_181
action_146 (49) = happyGoto action_72
action_146 (50) = happyGoto action_73
action_146 (51) = happyGoto action_74
action_146 (52) = happyGoto action_75
action_146 (53) = happyGoto action_51
action_146 (54) = happyGoto action_52
action_146 (55) = happyGoto action_53
action_146 (56) = happyGoto action_54
action_146 (57) = happyGoto action_55
action_146 (60) = happyGoto action_77
action_146 (61) = happyGoto action_57
action_146 _ = happyFail

action_147 (64) = happyShift action_58
action_147 (66) = happyShift action_59
action_147 (67) = happyShift action_45
action_147 (69) = happyShift action_60
action_147 (90) = happyShift action_61
action_147 (97) = happyShift action_62
action_147 (98) = happyShift action_63
action_147 (99) = happyShift action_64
action_147 (104) = happyShift action_65
action_147 (111) = happyShift action_29
action_147 (112) = happyShift action_66
action_147 (113) = happyShift action_67
action_147 (114) = happyShift action_68
action_147 (115) = happyShift action_69
action_147 (31) = happyGoto action_46
action_147 (32) = happyGoto action_47
action_147 (33) = happyGoto action_48
action_147 (34) = happyGoto action_49
action_147 (35) = happyGoto action_50
action_147 (49) = happyGoto action_180
action_147 (50) = happyGoto action_73
action_147 (51) = happyGoto action_74
action_147 (52) = happyGoto action_75
action_147 (53) = happyGoto action_51
action_147 (54) = happyGoto action_52
action_147 (55) = happyGoto action_53
action_147 (56) = happyGoto action_54
action_147 (57) = happyGoto action_55
action_147 (60) = happyGoto action_77
action_147 (61) = happyGoto action_57
action_147 _ = happyFail

action_148 (64) = happyShift action_58
action_148 (66) = happyShift action_59
action_148 (67) = happyShift action_45
action_148 (69) = happyShift action_60
action_148 (90) = happyShift action_61
action_148 (97) = happyShift action_62
action_148 (98) = happyShift action_63
action_148 (99) = happyShift action_64
action_148 (104) = happyShift action_65
action_148 (111) = happyShift action_29
action_148 (112) = happyShift action_66
action_148 (113) = happyShift action_67
action_148 (114) = happyShift action_68
action_148 (115) = happyShift action_69
action_148 (31) = happyGoto action_46
action_148 (32) = happyGoto action_47
action_148 (33) = happyGoto action_48
action_148 (34) = happyGoto action_49
action_148 (35) = happyGoto action_50
action_148 (50) = happyGoto action_179
action_148 (51) = happyGoto action_74
action_148 (52) = happyGoto action_75
action_148 (53) = happyGoto action_51
action_148 (54) = happyGoto action_52
action_148 (55) = happyGoto action_53
action_148 (56) = happyGoto action_54
action_148 (57) = happyGoto action_55
action_148 (60) = happyGoto action_77
action_148 (61) = happyGoto action_57
action_148 _ = happyFail

action_149 (64) = happyShift action_58
action_149 (66) = happyShift action_59
action_149 (67) = happyShift action_45
action_149 (69) = happyShift action_60
action_149 (90) = happyShift action_61
action_149 (97) = happyShift action_62
action_149 (98) = happyShift action_63
action_149 (99) = happyShift action_64
action_149 (104) = happyShift action_65
action_149 (111) = happyShift action_29
action_149 (112) = happyShift action_66
action_149 (113) = happyShift action_67
action_149 (114) = happyShift action_68
action_149 (115) = happyShift action_69
action_149 (31) = happyGoto action_46
action_149 (32) = happyGoto action_47
action_149 (33) = happyGoto action_48
action_149 (34) = happyGoto action_49
action_149 (35) = happyGoto action_50
action_149 (51) = happyGoto action_178
action_149 (52) = happyGoto action_75
action_149 (53) = happyGoto action_51
action_149 (54) = happyGoto action_52
action_149 (55) = happyGoto action_53
action_149 (56) = happyGoto action_54
action_149 (57) = happyGoto action_55
action_149 (60) = happyGoto action_77
action_149 (61) = happyGoto action_57
action_149 _ = happyFail

action_150 (64) = happyShift action_58
action_150 (66) = happyShift action_59
action_150 (67) = happyShift action_45
action_150 (69) = happyShift action_60
action_150 (90) = happyShift action_61
action_150 (97) = happyShift action_62
action_150 (98) = happyShift action_63
action_150 (99) = happyShift action_64
action_150 (104) = happyShift action_65
action_150 (111) = happyShift action_29
action_150 (112) = happyShift action_66
action_150 (113) = happyShift action_67
action_150 (114) = happyShift action_68
action_150 (115) = happyShift action_69
action_150 (31) = happyGoto action_46
action_150 (32) = happyGoto action_47
action_150 (33) = happyGoto action_48
action_150 (34) = happyGoto action_49
action_150 (35) = happyGoto action_50
action_150 (51) = happyGoto action_177
action_150 (52) = happyGoto action_75
action_150 (53) = happyGoto action_51
action_150 (54) = happyGoto action_52
action_150 (55) = happyGoto action_53
action_150 (56) = happyGoto action_54
action_150 (57) = happyGoto action_55
action_150 (60) = happyGoto action_77
action_150 (61) = happyGoto action_57
action_150 _ = happyFail

action_151 (64) = happyShift action_58
action_151 (66) = happyShift action_59
action_151 (67) = happyShift action_45
action_151 (69) = happyShift action_60
action_151 (90) = happyShift action_61
action_151 (97) = happyShift action_62
action_151 (98) = happyShift action_63
action_151 (99) = happyShift action_64
action_151 (104) = happyShift action_65
action_151 (111) = happyShift action_29
action_151 (112) = happyShift action_66
action_151 (113) = happyShift action_67
action_151 (114) = happyShift action_68
action_151 (115) = happyShift action_69
action_151 (31) = happyGoto action_46
action_151 (32) = happyGoto action_47
action_151 (33) = happyGoto action_48
action_151 (34) = happyGoto action_49
action_151 (35) = happyGoto action_50
action_151 (52) = happyGoto action_176
action_151 (53) = happyGoto action_51
action_151 (54) = happyGoto action_52
action_151 (55) = happyGoto action_53
action_151 (56) = happyGoto action_54
action_151 (57) = happyGoto action_55
action_151 (60) = happyGoto action_77
action_151 (61) = happyGoto action_57
action_151 _ = happyFail

action_152 (64) = happyShift action_58
action_152 (66) = happyShift action_59
action_152 (67) = happyShift action_45
action_152 (69) = happyShift action_60
action_152 (90) = happyShift action_61
action_152 (97) = happyShift action_62
action_152 (98) = happyShift action_63
action_152 (99) = happyShift action_64
action_152 (104) = happyShift action_65
action_152 (111) = happyShift action_29
action_152 (112) = happyShift action_66
action_152 (113) = happyShift action_67
action_152 (114) = happyShift action_68
action_152 (115) = happyShift action_69
action_152 (31) = happyGoto action_46
action_152 (32) = happyGoto action_47
action_152 (33) = happyGoto action_48
action_152 (34) = happyGoto action_49
action_152 (35) = happyGoto action_50
action_152 (52) = happyGoto action_175
action_152 (53) = happyGoto action_51
action_152 (54) = happyGoto action_52
action_152 (55) = happyGoto action_53
action_152 (56) = happyGoto action_54
action_152 (57) = happyGoto action_55
action_152 (60) = happyGoto action_77
action_152 (61) = happyGoto action_57
action_152 _ = happyFail

action_153 (64) = happyShift action_58
action_153 (66) = happyShift action_59
action_153 (67) = happyShift action_45
action_153 (69) = happyShift action_60
action_153 (90) = happyShift action_61
action_153 (97) = happyShift action_62
action_153 (98) = happyShift action_63
action_153 (99) = happyShift action_64
action_153 (104) = happyShift action_65
action_153 (111) = happyShift action_29
action_153 (112) = happyShift action_66
action_153 (113) = happyShift action_67
action_153 (114) = happyShift action_68
action_153 (115) = happyShift action_69
action_153 (31) = happyGoto action_46
action_153 (32) = happyGoto action_47
action_153 (33) = happyGoto action_48
action_153 (34) = happyGoto action_49
action_153 (35) = happyGoto action_50
action_153 (53) = happyGoto action_51
action_153 (54) = happyGoto action_52
action_153 (55) = happyGoto action_53
action_153 (56) = happyGoto action_54
action_153 (57) = happyGoto action_55
action_153 (60) = happyGoto action_174
action_153 (61) = happyGoto action_57
action_153 _ = happyFail

action_154 (64) = happyShift action_58
action_154 (66) = happyShift action_59
action_154 (67) = happyShift action_45
action_154 (69) = happyShift action_60
action_154 (90) = happyShift action_61
action_154 (97) = happyShift action_62
action_154 (98) = happyShift action_63
action_154 (99) = happyShift action_64
action_154 (104) = happyShift action_65
action_154 (111) = happyShift action_29
action_154 (112) = happyShift action_66
action_154 (113) = happyShift action_67
action_154 (114) = happyShift action_68
action_154 (115) = happyShift action_69
action_154 (31) = happyGoto action_46
action_154 (32) = happyGoto action_47
action_154 (33) = happyGoto action_48
action_154 (34) = happyGoto action_49
action_154 (35) = happyGoto action_50
action_154 (53) = happyGoto action_51
action_154 (54) = happyGoto action_52
action_154 (55) = happyGoto action_53
action_154 (56) = happyGoto action_54
action_154 (57) = happyGoto action_55
action_154 (60) = happyGoto action_173
action_154 (61) = happyGoto action_57
action_154 _ = happyFail

action_155 (68) = happyShift action_172
action_155 _ = happyFail

action_156 (68) = happyShift action_171
action_156 _ = happyFail

action_157 (68) = happyShift action_170
action_157 _ = happyFail

action_158 _ = happyReduce_82

action_159 _ = happyReduce_83

action_160 _ = happyReduce_80

action_161 (68) = happyShift action_169
action_161 _ = happyFail

action_162 (69) = happyShift action_37
action_162 (83) = happyShift action_38
action_162 (84) = happyShift action_39
action_162 (85) = happyShift action_40
action_162 (87) = happyShift action_41
action_162 (93) = happyShift action_42
action_162 (102) = happyShift action_43
action_162 (62) = happyGoto action_168
action_162 _ = happyFail

action_163 _ = happyReduce_109

action_164 _ = happyReduce_111

action_165 _ = happyReduce_112

action_166 _ = happyReduce_114

action_167 _ = happyReduce_113

action_168 (81) = happyShift action_209
action_168 _ = happyFail

action_169 _ = happyReduce_103

action_170 _ = happyReduce_86

action_171 _ = happyReduce_85

action_172 _ = happyReduce_87

action_173 _ = happyReduce_78

action_174 _ = happyReduce_77

action_175 (69) = happyShift action_153
action_175 (73) = happyShift action_154
action_175 _ = happyReduce_75

action_176 (69) = happyShift action_153
action_176 (73) = happyShift action_154
action_176 _ = happyReduce_74

action_177 (70) = happyShift action_151
action_177 (72) = happyShift action_152
action_177 _ = happyReduce_72

action_178 (70) = happyShift action_151
action_178 (72) = happyShift action_152
action_178 _ = happyReduce_71

action_179 (77) = happyShift action_149
action_179 (79) = happyShift action_150
action_179 _ = happyReduce_69

action_180 (78) = happyShift action_148
action_180 _ = happyReduce_67

action_181 (82) = happyShift action_147
action_181 _ = happyReduce_65

action_182 (68) = happyShift action_208
action_182 _ = happyFail

action_183 (81) = happyShift action_207
action_183 _ = happyFail

action_184 (76) = happyShift action_206
action_184 _ = happyFail

action_185 (95) = happyShift action_32
action_185 (100) = happyShift action_33
action_185 (106) = happyShift action_34
action_185 (107) = happyShift action_35
action_185 (111) = happyShift action_29
action_185 (31) = happyGoto action_30
action_185 (39) = happyGoto action_112
action_185 (43) = happyGoto action_205
action_185 (63) = happyGoto action_114
action_185 _ = happyReduce_44

action_186 _ = happyReduce_53

action_187 (64) = happyShift action_58
action_187 (66) = happyShift action_59
action_187 (67) = happyShift action_45
action_187 (69) = happyShift action_60
action_187 (90) = happyShift action_61
action_187 (97) = happyShift action_62
action_187 (98) = happyShift action_63
action_187 (99) = happyShift action_64
action_187 (104) = happyShift action_65
action_187 (111) = happyShift action_29
action_187 (112) = happyShift action_66
action_187 (113) = happyShift action_67
action_187 (114) = happyShift action_68
action_187 (115) = happyShift action_69
action_187 (31) = happyGoto action_46
action_187 (32) = happyGoto action_47
action_187 (33) = happyGoto action_48
action_187 (34) = happyGoto action_49
action_187 (35) = happyGoto action_50
action_187 (47) = happyGoto action_70
action_187 (48) = happyGoto action_71
action_187 (49) = happyGoto action_72
action_187 (50) = happyGoto action_73
action_187 (51) = happyGoto action_74
action_187 (52) = happyGoto action_75
action_187 (53) = happyGoto action_51
action_187 (54) = happyGoto action_52
action_187 (55) = happyGoto action_53
action_187 (56) = happyGoto action_54
action_187 (57) = happyGoto action_55
action_187 (58) = happyGoto action_204
action_187 (59) = happyGoto action_79
action_187 (60) = happyGoto action_77
action_187 (61) = happyGoto action_57
action_187 _ = happyFail

action_188 (41) = happyGoto action_203
action_188 _ = happyReduce_39

action_189 _ = happyReduce_56

action_190 (41) = happyGoto action_202
action_190 _ = happyReduce_39

action_191 (68) = happyShift action_201
action_191 _ = happyFail

action_192 (68) = happyShift action_200
action_192 _ = happyFail

action_193 (68) = happyShift action_199
action_193 _ = happyFail

action_194 _ = happyReduce_49

action_195 _ = happyReduce_46

action_196 _ = happyReduce_36

action_197 _ = happyReduce_35

action_198 _ = happyReduce_43

action_199 (76) = happyShift action_217
action_199 _ = happyFail

action_200 (76) = happyShift action_216
action_200 _ = happyFail

action_201 (76) = happyShift action_215
action_201 _ = happyFail

action_202 (64) = happyShift action_58
action_202 (65) = happyShift action_100
action_202 (66) = happyShift action_59
action_202 (67) = happyShift action_45
action_202 (69) = happyShift action_60
action_202 (76) = happyShift action_101
action_202 (86) = happyShift action_102
action_202 (89) = happyShift action_214
action_202 (90) = happyShift action_61
action_202 (91) = happyShift action_103
action_202 (92) = happyShift action_104
action_202 (97) = happyShift action_62
action_202 (98) = happyShift action_63
action_202 (99) = happyShift action_64
action_202 (101) = happyShift action_105
action_202 (104) = happyShift action_65
action_202 (105) = happyShift action_106
action_202 (108) = happyShift action_107
action_202 (109) = happyShift action_108
action_202 (110) = happyShift action_109
action_202 (111) = happyShift action_29
action_202 (112) = happyShift action_66
action_202 (113) = happyShift action_67
action_202 (114) = happyShift action_68
action_202 (115) = happyShift action_69
action_202 (31) = happyGoto action_93
action_202 (32) = happyGoto action_47
action_202 (33) = happyGoto action_48
action_202 (34) = happyGoto action_49
action_202 (35) = happyGoto action_50
action_202 (37) = happyGoto action_94
action_202 (38) = happyGoto action_95
action_202 (45) = happyGoto action_125
action_202 (46) = happyGoto action_97
action_202 (47) = happyGoto action_70
action_202 (48) = happyGoto action_71
action_202 (49) = happyGoto action_72
action_202 (50) = happyGoto action_73
action_202 (51) = happyGoto action_74
action_202 (52) = happyGoto action_75
action_202 (53) = happyGoto action_51
action_202 (54) = happyGoto action_52
action_202 (55) = happyGoto action_53
action_202 (56) = happyGoto action_98
action_202 (57) = happyGoto action_55
action_202 (58) = happyGoto action_99
action_202 (59) = happyGoto action_79
action_202 (60) = happyGoto action_77
action_202 (61) = happyGoto action_57
action_202 _ = happyFail

action_203 (64) = happyShift action_58
action_203 (65) = happyShift action_100
action_203 (66) = happyShift action_59
action_203 (67) = happyShift action_45
action_203 (69) = happyShift action_60
action_203 (76) = happyShift action_101
action_203 (86) = happyShift action_102
action_203 (88) = happyShift action_212
action_203 (89) = happyShift action_213
action_203 (90) = happyShift action_61
action_203 (91) = happyShift action_103
action_203 (92) = happyShift action_104
action_203 (97) = happyShift action_62
action_203 (98) = happyShift action_63
action_203 (99) = happyShift action_64
action_203 (101) = happyShift action_105
action_203 (104) = happyShift action_65
action_203 (105) = happyShift action_106
action_203 (108) = happyShift action_107
action_203 (109) = happyShift action_108
action_203 (110) = happyShift action_109
action_203 (111) = happyShift action_29
action_203 (112) = happyShift action_66
action_203 (113) = happyShift action_67
action_203 (114) = happyShift action_68
action_203 (115) = happyShift action_69
action_203 (31) = happyGoto action_93
action_203 (32) = happyGoto action_47
action_203 (33) = happyGoto action_48
action_203 (34) = happyGoto action_49
action_203 (35) = happyGoto action_50
action_203 (37) = happyGoto action_94
action_203 (38) = happyGoto action_95
action_203 (45) = happyGoto action_125
action_203 (46) = happyGoto action_97
action_203 (47) = happyGoto action_70
action_203 (48) = happyGoto action_71
action_203 (49) = happyGoto action_72
action_203 (50) = happyGoto action_73
action_203 (51) = happyGoto action_74
action_203 (52) = happyGoto action_75
action_203 (53) = happyGoto action_51
action_203 (54) = happyGoto action_52
action_203 (55) = happyGoto action_53
action_203 (56) = happyGoto action_98
action_203 (57) = happyGoto action_55
action_203 (58) = happyGoto action_99
action_203 (59) = happyGoto action_79
action_203 (60) = happyGoto action_77
action_203 (61) = happyGoto action_57
action_203 _ = happyFail

action_204 (94) = happyShift action_211
action_204 _ = happyFail

action_205 (68) = happyShift action_210
action_205 _ = happyFail

action_206 _ = happyReduce_64

action_207 _ = happyReduce_89

action_208 _ = happyReduce_91

action_209 _ = happyReduce_110

action_210 (74) = happyShift action_220
action_210 _ = happyFail

action_211 (41) = happyGoto action_219
action_211 _ = happyReduce_39

action_212 (41) = happyGoto action_218
action_212 _ = happyReduce_39

action_213 _ = happyReduce_59

action_214 _ = happyReduce_54

action_215 _ = happyReduce_62

action_216 _ = happyReduce_61

action_217 _ = happyReduce_63

action_218 (64) = happyShift action_58
action_218 (65) = happyShift action_100
action_218 (66) = happyShift action_59
action_218 (67) = happyShift action_45
action_218 (69) = happyShift action_60
action_218 (76) = happyShift action_101
action_218 (86) = happyShift action_102
action_218 (89) = happyShift action_223
action_218 (90) = happyShift action_61
action_218 (91) = happyShift action_103
action_218 (92) = happyShift action_104
action_218 (97) = happyShift action_62
action_218 (98) = happyShift action_63
action_218 (99) = happyShift action_64
action_218 (101) = happyShift action_105
action_218 (104) = happyShift action_65
action_218 (105) = happyShift action_106
action_218 (108) = happyShift action_107
action_218 (109) = happyShift action_108
action_218 (110) = happyShift action_109
action_218 (111) = happyShift action_29
action_218 (112) = happyShift action_66
action_218 (113) = happyShift action_67
action_218 (114) = happyShift action_68
action_218 (115) = happyShift action_69
action_218 (31) = happyGoto action_93
action_218 (32) = happyGoto action_47
action_218 (33) = happyGoto action_48
action_218 (34) = happyGoto action_49
action_218 (35) = happyGoto action_50
action_218 (37) = happyGoto action_94
action_218 (38) = happyGoto action_95
action_218 (45) = happyGoto action_125
action_218 (46) = happyGoto action_97
action_218 (47) = happyGoto action_70
action_218 (48) = happyGoto action_71
action_218 (49) = happyGoto action_72
action_218 (50) = happyGoto action_73
action_218 (51) = happyGoto action_74
action_218 (52) = happyGoto action_75
action_218 (53) = happyGoto action_51
action_218 (54) = happyGoto action_52
action_218 (55) = happyGoto action_53
action_218 (56) = happyGoto action_98
action_218 (57) = happyGoto action_55
action_218 (58) = happyGoto action_99
action_218 (59) = happyGoto action_79
action_218 (60) = happyGoto action_77
action_218 (61) = happyGoto action_57
action_218 _ = happyFail

action_219 (64) = happyShift action_58
action_219 (65) = happyShift action_100
action_219 (66) = happyShift action_59
action_219 (67) = happyShift action_45
action_219 (69) = happyShift action_60
action_219 (76) = happyShift action_101
action_219 (86) = happyShift action_102
action_219 (89) = happyShift action_222
action_219 (90) = happyShift action_61
action_219 (91) = happyShift action_103
action_219 (92) = happyShift action_104
action_219 (97) = happyShift action_62
action_219 (98) = happyShift action_63
action_219 (99) = happyShift action_64
action_219 (101) = happyShift action_105
action_219 (104) = happyShift action_65
action_219 (105) = happyShift action_106
action_219 (108) = happyShift action_107
action_219 (109) = happyShift action_108
action_219 (110) = happyShift action_109
action_219 (111) = happyShift action_29
action_219 (112) = happyShift action_66
action_219 (113) = happyShift action_67
action_219 (114) = happyShift action_68
action_219 (115) = happyShift action_69
action_219 (31) = happyGoto action_93
action_219 (32) = happyGoto action_47
action_219 (33) = happyGoto action_48
action_219 (34) = happyGoto action_49
action_219 (35) = happyGoto action_50
action_219 (37) = happyGoto action_94
action_219 (38) = happyGoto action_95
action_219 (45) = happyGoto action_125
action_219 (46) = happyGoto action_97
action_219 (47) = happyGoto action_70
action_219 (48) = happyGoto action_71
action_219 (49) = happyGoto action_72
action_219 (50) = happyGoto action_73
action_219 (51) = happyGoto action_74
action_219 (52) = happyGoto action_75
action_219 (53) = happyGoto action_51
action_219 (54) = happyGoto action_52
action_219 (55) = happyGoto action_53
action_219 (56) = happyGoto action_98
action_219 (57) = happyGoto action_55
action_219 (58) = happyGoto action_99
action_219 (59) = happyGoto action_79
action_219 (60) = happyGoto action_77
action_219 (61) = happyGoto action_57
action_219 _ = happyFail

action_220 (69) = happyShift action_37
action_220 (83) = happyShift action_38
action_220 (84) = happyShift action_39
action_220 (85) = happyShift action_40
action_220 (87) = happyShift action_41
action_220 (93) = happyShift action_42
action_220 (102) = happyShift action_43
action_220 (62) = happyGoto action_221
action_220 _ = happyFail

action_221 (86) = happyShift action_224
action_221 _ = happyFail

action_222 _ = happyReduce_55

action_223 _ = happyReduce_60

action_224 (41) = happyGoto action_225
action_224 _ = happyReduce_39

action_225 (64) = happyShift action_58
action_225 (65) = happyShift action_100
action_225 (66) = happyShift action_59
action_225 (67) = happyShift action_45
action_225 (69) = happyShift action_60
action_225 (76) = happyShift action_101
action_225 (86) = happyShift action_102
action_225 (89) = happyShift action_226
action_225 (90) = happyShift action_61
action_225 (91) = happyShift action_103
action_225 (92) = happyShift action_104
action_225 (97) = happyShift action_62
action_225 (98) = happyShift action_63
action_225 (99) = happyShift action_64
action_225 (101) = happyShift action_105
action_225 (104) = happyShift action_65
action_225 (105) = happyShift action_106
action_225 (108) = happyShift action_107
action_225 (109) = happyShift action_108
action_225 (110) = happyShift action_109
action_225 (111) = happyShift action_29
action_225 (112) = happyShift action_66
action_225 (113) = happyShift action_67
action_225 (114) = happyShift action_68
action_225 (115) = happyShift action_69
action_225 (31) = happyGoto action_93
action_225 (32) = happyGoto action_47
action_225 (33) = happyGoto action_48
action_225 (34) = happyGoto action_49
action_225 (35) = happyGoto action_50
action_225 (37) = happyGoto action_94
action_225 (38) = happyGoto action_95
action_225 (45) = happyGoto action_125
action_225 (46) = happyGoto action_97
action_225 (47) = happyGoto action_70
action_225 (48) = happyGoto action_71
action_225 (49) = happyGoto action_72
action_225 (50) = happyGoto action_73
action_225 (51) = happyGoto action_74
action_225 (52) = happyGoto action_75
action_225 (53) = happyGoto action_51
action_225 (54) = happyGoto action_52
action_225 (55) = happyGoto action_53
action_225 (56) = happyGoto action_98
action_225 (57) = happyGoto action_55
action_225 (58) = happyGoto action_99
action_225 (59) = happyGoto action_79
action_225 (60) = happyGoto action_77
action_225 (61) = happyGoto action_57
action_225 _ = happyFail

action_226 _ = happyReduce_34

happyReduce_28 = happySpecReduce_1  31 happyReduction_28
happyReduction_28 (HappyTerminal (PT _ (TV happy_var_1)))
	 =  HappyAbsSyn31
		 (Ident happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  32 happyReduction_29
happyReduction_29 (HappyTerminal (PT _ (TL happy_var_1)))
	 =  HappyAbsSyn32
		 (happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  33 happyReduction_30
happyReduction_30 (HappyTerminal (PT _ (TI happy_var_1)))
	 =  HappyAbsSyn33
		 ((read ( happy_var_1)) :: Integer
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  34 happyReduction_31
happyReduction_31 (HappyTerminal (PT _ (TC happy_var_1)))
	 =  HappyAbsSyn34
		 ((read ( happy_var_1)) :: Char
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  35 happyReduction_32
happyReduction_32 (HappyTerminal (PT _ (TD happy_var_1)))
	 =  HappyAbsSyn35
		 ((read ( happy_var_1)) :: Double
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  36 happyReduction_33
happyReduction_33 (HappyAbsSyn41  happy_var_1)
	 =  HappyAbsSyn36
		 (AbsGram.Prog (reverse happy_var_1)
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happyReduce 10 37 happyReduction_34
happyReduction_34 (_ `HappyStk`
	(HappyAbsSyn41  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn62  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn43  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn31  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn37
		 (AbsGram.Fun happy_var_2 happy_var_4 happy_var_7 (reverse happy_var_9)
	) `HappyStk` happyRest

happyReduce_35 = happySpecReduce_3  38 happyReduction_35
happyReduction_35 (HappyAbsSyn62  happy_var_3)
	_
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn38
		 (AbsGram.Dec happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  39 happyReduction_36
happyReduction_36 (HappyAbsSyn62  happy_var_3)
	_
	(HappyAbsSyn63  happy_var_1)
	 =  HappyAbsSyn39
		 (AbsGram.PDec happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_0  40 happyReduction_37
happyReduction_37  =  HappyAbsSyn40
		 ([]
	)

happyReduce_38 = happySpecReduce_2  40 happyReduction_38
happyReduction_38 (HappyAbsSyn37  happy_var_2)
	(HappyAbsSyn40  happy_var_1)
	 =  HappyAbsSyn40
		 (flip (:) happy_var_1 happy_var_2
	)
happyReduction_38 _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_0  41 happyReduction_39
happyReduction_39  =  HappyAbsSyn41
		 ([]
	)

happyReduce_40 = happySpecReduce_2  41 happyReduction_40
happyReduction_40 (HappyAbsSyn45  happy_var_2)
	(HappyAbsSyn41  happy_var_1)
	 =  HappyAbsSyn41
		 (flip (:) happy_var_1 happy_var_2
	)
happyReduction_40 _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_0  42 happyReduction_41
happyReduction_41  =  HappyAbsSyn42
		 ([]
	)

happyReduce_42 = happySpecReduce_1  42 happyReduction_42
happyReduction_42 (HappyAbsSyn38  happy_var_1)
	 =  HappyAbsSyn42
		 ((:[]) happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  42 happyReduction_43
happyReduction_43 (HappyAbsSyn42  happy_var_3)
	_
	(HappyAbsSyn38  happy_var_1)
	 =  HappyAbsSyn42
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_0  43 happyReduction_44
happyReduction_44  =  HappyAbsSyn43
		 ([]
	)

happyReduce_45 = happySpecReduce_1  43 happyReduction_45
happyReduction_45 (HappyAbsSyn39  happy_var_1)
	 =  HappyAbsSyn43
		 ((:[]) happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  43 happyReduction_46
happyReduction_46 (HappyAbsSyn43  happy_var_3)
	_
	(HappyAbsSyn39  happy_var_1)
	 =  HappyAbsSyn43
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_0  44 happyReduction_47
happyReduction_47  =  HappyAbsSyn44
		 ([]
	)

happyReduce_48 = happySpecReduce_1  44 happyReduction_48
happyReduction_48 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn44
		 ((:[]) happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  44 happyReduction_49
happyReduction_49 (HappyAbsSyn44  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn44
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  45 happyReduction_50
happyReduction_50 _
	 =  HappyAbsSyn45
		 (AbsGram.SNop
	)

happyReduce_51 = happySpecReduce_2  45 happyReduction_51
happyReduction_51 _
	(HappyAbsSyn38  happy_var_1)
	 =  HappyAbsSyn45
		 (AbsGram.SDecl happy_var_1
	)
happyReduction_51 _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_2  45 happyReduction_52
happyReduction_52 _
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn45
		 (AbsGram.SExp happy_var_1
	)
happyReduction_52 _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_3  45 happyReduction_53
happyReduction_53 _
	(HappyAbsSyn41  happy_var_2)
	_
	 =  HappyAbsSyn45
		 (AbsGram.SBlock (reverse happy_var_2)
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happyReduce 5 45 happyReduction_54
happyReduction_54 (_ `HappyStk`
	(HappyAbsSyn41  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn47  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn45
		 (AbsGram.SWhile happy_var_2 (reverse happy_var_4)
	) `HappyStk` happyRest

happyReduce_55 = happyReduce 7 45 happyReduction_55
happyReduction_55 (_ `HappyStk`
	(HappyAbsSyn41  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn47  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn46  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn45
		 (AbsGram.SWhileA happy_var_2 happy_var_4 (reverse happy_var_6)
	) `HappyStk` happyRest

happyReduce_56 = happySpecReduce_3  45 happyReduction_56
happyReduction_56 _
	(HappyAbsSyn47  happy_var_2)
	_
	 =  HappyAbsSyn45
		 (AbsGram.SReturn happy_var_2
	)
happyReduction_56 _ _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_1  45 happyReduction_57
happyReduction_57 (HappyAbsSyn37  happy_var_1)
	 =  HappyAbsSyn45
		 (AbsGram.SFunc happy_var_1
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  45 happyReduction_58
happyReduction_58 (HappyAbsSyn46  happy_var_1)
	 =  HappyAbsSyn45
		 (AbsGram.SAss happy_var_1
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happyReduce 5 45 happyReduction_59
happyReduction_59 (_ `HappyStk`
	(HappyAbsSyn41  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn47  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn45
		 (AbsGram.SCond happy_var_2 (reverse happy_var_4)
	) `HappyStk` happyRest

happyReduce_60 = happyReduce 7 45 happyReduction_60
happyReduction_60 (_ `HappyStk`
	(HappyAbsSyn41  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn41  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn47  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn45
		 (AbsGram.SCondEl happy_var_2 (reverse happy_var_4) (reverse happy_var_6)
	) `HappyStk` happyRest

happyReduce_61 = happyReduce 5 45 happyReduction_61
happyReduction_61 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn47  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn45
		 (AbsGram.SWInt happy_var_3
	) `HappyStk` happyRest

happyReduce_62 = happyReduce 5 45 happyReduction_62
happyReduction_62 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn47  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn45
		 (AbsGram.SWDou happy_var_3
	) `HappyStk` happyRest

happyReduce_63 = happyReduce 5 45 happyReduction_63
happyReduction_63 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn47  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn45
		 (AbsGram.SWStr happy_var_3
	) `HappyStk` happyRest

happyReduce_64 = happyReduce 4 46 happyReduction_64
happyReduction_64 (_ `HappyStk`
	(HappyAbsSyn47  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn47  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn46
		 (AbsGram.DAss happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_65 = happySpecReduce_3  47 happyReduction_65
happyReduction_65 (HappyAbsSyn47  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EOr happy_var_1 happy_var_3
	)
happyReduction_65 _ _ _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_1  47 happyReduction_66
happyReduction_66 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_66 _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_3  48 happyReduction_67
happyReduction_67 (HappyAbsSyn47  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EAnd happy_var_1 happy_var_3
	)
happyReduction_67 _ _ _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_1  48 happyReduction_68
happyReduction_68 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_68 _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_3  49 happyReduction_69
happyReduction_69 (HappyAbsSyn47  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EEql happy_var_1 happy_var_3
	)
happyReduction_69 _ _ _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_1  49 happyReduction_70
happyReduction_70 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_70 _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_3  50 happyReduction_71
happyReduction_71 (HappyAbsSyn47  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.ELt happy_var_1 happy_var_3
	)
happyReduction_71 _ _ _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_3  50 happyReduction_72
happyReduction_72 (HappyAbsSyn47  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EGt happy_var_1 happy_var_3
	)
happyReduction_72 _ _ _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_1  50 happyReduction_73
happyReduction_73 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_73 _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_3  51 happyReduction_74
happyReduction_74 (HappyAbsSyn47  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EAdd happy_var_1 happy_var_3
	)
happyReduction_74 _ _ _  = notHappyAtAll 

happyReduce_75 = happySpecReduce_3  51 happyReduction_75
happyReduction_75 (HappyAbsSyn47  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.ESub happy_var_1 happy_var_3
	)
happyReduction_75 _ _ _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_1  51 happyReduction_76
happyReduction_76 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_76 _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_3  52 happyReduction_77
happyReduction_77 (HappyAbsSyn47  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EMul happy_var_1 happy_var_3
	)
happyReduction_77 _ _ _  = notHappyAtAll 

happyReduce_78 = happySpecReduce_3  52 happyReduction_78
happyReduction_78 (HappyAbsSyn47  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EDiv happy_var_1 happy_var_3
	)
happyReduction_78 _ _ _  = notHappyAtAll 

happyReduce_79 = happySpecReduce_1  52 happyReduction_79
happyReduction_79 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_79 _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_2  53 happyReduction_80
happyReduction_80 (HappyAbsSyn47  happy_var_2)
	_
	 =  HappyAbsSyn47
		 (AbsGram.ENot happy_var_2
	)
happyReduction_80 _ _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_1  53 happyReduction_81
happyReduction_81 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_81 _  = notHappyAtAll 

happyReduce_82 = happySpecReduce_2  54 happyReduction_82
happyReduction_82 (HappyAbsSyn47  happy_var_2)
	_
	 =  HappyAbsSyn47
		 (AbsGram.EDeref happy_var_2
	)
happyReduction_82 _ _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_2  54 happyReduction_83
happyReduction_83 (HappyAbsSyn47  happy_var_2)
	_
	 =  HappyAbsSyn47
		 (AbsGram.ERefer happy_var_2
	)
happyReduction_83 _ _  = notHappyAtAll 

happyReduce_84 = happySpecReduce_1  54 happyReduction_84
happyReduction_84 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_84 _  = notHappyAtAll 

happyReduce_85 = happySpecReduce_3  55 happyReduction_85
happyReduction_85 _
	_
	_
	 =  HappyAbsSyn47
		 (AbsGram.ERInt
	)

happyReduce_86 = happySpecReduce_3  55 happyReduction_86
happyReduction_86 _
	_
	_
	 =  HappyAbsSyn47
		 (AbsGram.ERDou
	)

happyReduce_87 = happySpecReduce_3  55 happyReduction_87
happyReduction_87 _
	_
	_
	 =  HappyAbsSyn47
		 (AbsGram.ERStr
	)

happyReduce_88 = happySpecReduce_1  55 happyReduction_88
happyReduction_88 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_88 _  = notHappyAtAll 

happyReduce_89 = happyReduce 4 56 happyReduction_89
happyReduction_89 (_ `HappyStk`
	(HappyAbsSyn47  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn47  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn47
		 (AbsGram.EArr happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_90 = happySpecReduce_1  56 happyReduction_90
happyReduction_90 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_90 _  = notHappyAtAll 

happyReduce_91 = happyReduce 4 57 happyReduction_91
happyReduction_91 (_ `HappyStk`
	(HappyAbsSyn44  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn31  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn47
		 (AbsGram.ECall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_92 = happySpecReduce_1  57 happyReduction_92
happyReduction_92 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EVar happy_var_1
	)
happyReduction_92 _  = notHappyAtAll 

happyReduce_93 = happySpecReduce_1  57 happyReduction_93
happyReduction_93 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EStr happy_var_1
	)
happyReduction_93 _  = notHappyAtAll 

happyReduce_94 = happySpecReduce_1  57 happyReduction_94
happyReduction_94 (HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EInt happy_var_1
	)
happyReduction_94 _  = notHappyAtAll 

happyReduce_95 = happySpecReduce_1  57 happyReduction_95
happyReduction_95 (HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EChar happy_var_1
	)
happyReduction_95 _  = notHappyAtAll 

happyReduce_96 = happySpecReduce_1  57 happyReduction_96
happyReduction_96 (HappyAbsSyn35  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EDouble happy_var_1
	)
happyReduction_96 _  = notHappyAtAll 

happyReduce_97 = happySpecReduce_1  57 happyReduction_97
happyReduction_97 _
	 =  HappyAbsSyn47
		 (AbsGram.ETrue
	)

happyReduce_98 = happySpecReduce_1  57 happyReduction_98
happyReduction_98 _
	 =  HappyAbsSyn47
		 (AbsGram.EFalse
	)

happyReduce_99 = happySpecReduce_1  57 happyReduction_99
happyReduction_99 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_99 _  = notHappyAtAll 

happyReduce_100 = happySpecReduce_1  58 happyReduction_100
happyReduction_100 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_100 _  = notHappyAtAll 

happyReduce_101 = happySpecReduce_1  59 happyReduction_101
happyReduction_101 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_101 _  = notHappyAtAll 

happyReduce_102 = happySpecReduce_1  60 happyReduction_102
happyReduction_102 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_102 _  = notHappyAtAll 

happyReduce_103 = happySpecReduce_3  61 happyReduction_103
happyReduction_103 _
	(HappyAbsSyn47  happy_var_2)
	_
	 =  HappyAbsSyn47
		 (happy_var_2
	)
happyReduction_103 _ _ _  = notHappyAtAll 

happyReduce_104 = happySpecReduce_1  62 happyReduction_104
happyReduction_104 _
	 =  HappyAbsSyn62
		 (AbsGram.TInt
	)

happyReduce_105 = happySpecReduce_1  62 happyReduction_105
happyReduction_105 _
	 =  HappyAbsSyn62
		 (AbsGram.TDouble
	)

happyReduce_106 = happySpecReduce_1  62 happyReduction_106
happyReduction_106 _
	 =  HappyAbsSyn62
		 (AbsGram.TBool
	)

happyReduce_107 = happySpecReduce_1  62 happyReduction_107
happyReduction_107 _
	 =  HappyAbsSyn62
		 (AbsGram.TStr
	)

happyReduce_108 = happySpecReduce_1  62 happyReduction_108
happyReduction_108 _
	 =  HappyAbsSyn62
		 (AbsGram.TChar
	)

happyReduce_109 = happySpecReduce_2  62 happyReduction_109
happyReduction_109 (HappyAbsSyn62  happy_var_2)
	_
	 =  HappyAbsSyn62
		 (AbsGram.TPtr happy_var_2
	)
happyReduction_109 _ _  = notHappyAtAll 

happyReduce_110 = happyReduce 4 62 happyReduction_110
happyReduction_110 (_ `HappyStk`
	(HappyAbsSyn62  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn62
		 (AbsGram.TArray happy_var_3
	) `HappyStk` happyRest

happyReduce_111 = happySpecReduce_2  63 happyReduction_111
happyReduction_111 (HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn63
		 (AbsGram.PVal happy_var_2
	)
happyReduction_111 _ _  = notHappyAtAll 

happyReduce_112 = happySpecReduce_2  63 happyReduction_112
happyReduction_112 (HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn63
		 (AbsGram.PValres happy_var_2
	)
happyReduction_112 _ _  = notHappyAtAll 

happyReduce_113 = happySpecReduce_2  63 happyReduction_113
happyReduction_113 (HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn63
		 (AbsGram.PName happy_var_2
	)
happyReduction_113 _ _  = notHappyAtAll 

happyReduce_114 = happySpecReduce_2  63 happyReduction_114
happyReduction_114 (HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn63
		 (AbsGram.PRef happy_var_2
	)
happyReduction_114 _ _  = notHappyAtAll 

happyReduce_115 = happySpecReduce_1  63 happyReduction_115
happyReduction_115 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn63
		 (AbsGram.PImpl happy_var_1
	)
happyReduction_115 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 116 116 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 64;
	PT _ (TS _ 2) -> cont 65;
	PT _ (TS _ 3) -> cont 66;
	PT _ (TS _ 4) -> cont 67;
	PT _ (TS _ 5) -> cont 68;
	PT _ (TS _ 6) -> cont 69;
	PT _ (TS _ 7) -> cont 70;
	PT _ (TS _ 8) -> cont 71;
	PT _ (TS _ 9) -> cont 72;
	PT _ (TS _ 10) -> cont 73;
	PT _ (TS _ 11) -> cont 74;
	PT _ (TS _ 12) -> cont 75;
	PT _ (TS _ 13) -> cont 76;
	PT _ (TS _ 14) -> cont 77;
	PT _ (TS _ 15) -> cont 78;
	PT _ (TS _ 16) -> cont 79;
	PT _ (TS _ 17) -> cont 80;
	PT _ (TS _ 18) -> cont 81;
	PT _ (TS _ 19) -> cont 82;
	PT _ (TS _ 20) -> cont 83;
	PT _ (TS _ 21) -> cont 84;
	PT _ (TS _ 22) -> cont 85;
	PT _ (TS _ 23) -> cont 86;
	PT _ (TS _ 24) -> cont 87;
	PT _ (TS _ 25) -> cont 88;
	PT _ (TS _ 26) -> cont 89;
	PT _ (TS _ 27) -> cont 90;
	PT _ (TS _ 28) -> cont 91;
	PT _ (TS _ 29) -> cont 92;
	PT _ (TS _ 30) -> cont 93;
	PT _ (TS _ 31) -> cont 94;
	PT _ (TS _ 32) -> cont 95;
	PT _ (TS _ 33) -> cont 96;
	PT _ (TS _ 34) -> cont 97;
	PT _ (TS _ 35) -> cont 98;
	PT _ (TS _ 36) -> cont 99;
	PT _ (TS _ 37) -> cont 100;
	PT _ (TS _ 38) -> cont 101;
	PT _ (TS _ 39) -> cont 102;
	PT _ (TS _ 40) -> cont 103;
	PT _ (TS _ 41) -> cont 104;
	PT _ (TS _ 42) -> cont 105;
	PT _ (TS _ 43) -> cont 106;
	PT _ (TS _ 44) -> cont 107;
	PT _ (TS _ 45) -> cont 108;
	PT _ (TS _ 46) -> cont 109;
	PT _ (TS _ 47) -> cont 110;
	PT _ (TV happy_dollar_dollar) -> cont 111;
	PT _ (TL happy_dollar_dollar) -> cont 112;
	PT _ (TI happy_dollar_dollar) -> cont 113;
	PT _ (TC happy_dollar_dollar) -> cont 114;
	PT _ (TD happy_dollar_dollar) -> cont 115;
	_ -> happyError' (tk:tks)
	}

happyError_ 116 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = (thenM)
happyReturn :: () => a -> Err a
happyReturn = (returnM)
happyThen1 m k tks = (thenM) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (returnM) a
happyError' :: () => [(Token)] -> Err a
happyError' = happyError

pProgram tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn36 z -> happyReturn z; _other -> notHappyAtAll })

pFunction tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_1 tks) (\x -> case x of {HappyAbsSyn37 z -> happyReturn z; _other -> notHappyAtAll })

pDecl tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_2 tks) (\x -> case x of {HappyAbsSyn38 z -> happyReturn z; _other -> notHappyAtAll })

pPDecl tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_3 tks) (\x -> case x of {HappyAbsSyn39 z -> happyReturn z; _other -> notHappyAtAll })

pListFunction tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_4 tks) (\x -> case x of {HappyAbsSyn40 z -> happyReturn z; _other -> notHappyAtAll })

pListStm tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_5 tks) (\x -> case x of {HappyAbsSyn41 z -> happyReturn z; _other -> notHappyAtAll })

pListDecl tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_6 tks) (\x -> case x of {HappyAbsSyn42 z -> happyReturn z; _other -> notHappyAtAll })

pListPDecl tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_7 tks) (\x -> case x of {HappyAbsSyn43 z -> happyReturn z; _other -> notHappyAtAll })

pListExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_8 tks) (\x -> case x of {HappyAbsSyn44 z -> happyReturn z; _other -> notHappyAtAll })

pStm tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_9 tks) (\x -> case x of {HappyAbsSyn45 z -> happyReturn z; _other -> notHappyAtAll })

pAss tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_10 tks) (\x -> case x of {HappyAbsSyn46 z -> happyReturn z; _other -> notHappyAtAll })

pExp2 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_11 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp3 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_12 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp4 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_13 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp5 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_14 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp6 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_15 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp7 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_16 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp9 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_17 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp10 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_18 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp11 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_19 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp12 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_20 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp13 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_21 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_22 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp1 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_23 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp8 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_24 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp14 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_25 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pType tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_26 tks) (\x -> case x of {HappyAbsSyn62 z -> happyReturn z; _other -> notHappyAtAll })

pPMet tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_27 tks) (\x -> case x of {HappyAbsSyn63 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad $ "syntax error at " ++ tokenPos ts ++ 
  case ts of
    [] -> []
    [Err _] -> " due to lexer error"
    _ -> " before " ++ unwords (map (id . prToken) (take 4 ts))

myLexer = tokens
{-# LINE 1 "templates/GenericTemplate.hs" #-}


















-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

























infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

