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
 action_223 :: () => Int -> ({-HappyReduction (Err) = -}
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
 happyReduce_115,
 happyReduce_116 :: () => ({-HappyReduction (Err) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Err) HappyAbsSyn)

action_0 (36) = happyGoto action_123
action_0 (41) = happyGoto action_124
action_0 _ = happyReduce_39

action_1 (65) = happyShift action_97
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

action_8 (64) = happyShift action_66
action_8 (66) = happyShift action_54
action_8 (67) = happyShift action_55
action_8 (69) = happyShift action_56
action_8 (90) = happyShift action_57
action_8 (104) = happyShift action_58
action_8 (111) = happyShift action_29
action_8 (112) = happyShift action_59
action_8 (113) = happyShift action_60
action_8 (114) = happyShift action_61
action_8 (115) = happyShift action_62
action_8 (31) = happyGoto action_44
action_8 (32) = happyGoto action_45
action_8 (33) = happyGoto action_46
action_8 (34) = happyGoto action_47
action_8 (35) = happyGoto action_48
action_8 (44) = happyGoto action_110
action_8 (47) = happyGoto action_67
action_8 (48) = happyGoto action_68
action_8 (49) = happyGoto action_69
action_8 (50) = happyGoto action_70
action_8 (51) = happyGoto action_71
action_8 (52) = happyGoto action_72
action_8 (53) = happyGoto action_63
action_8 (54) = happyGoto action_49
action_8 (55) = happyGoto action_50
action_8 (56) = happyGoto action_51
action_8 (57) = happyGoto action_52
action_8 (58) = happyGoto action_111
action_8 (59) = happyGoto action_76
action_8 (60) = happyGoto action_74
action_8 (61) = happyGoto action_65
action_8 _ = happyReduce_47

action_9 (64) = happyShift action_66
action_9 (65) = happyShift action_97
action_9 (66) = happyShift action_54
action_9 (67) = happyShift action_55
action_9 (69) = happyShift action_56
action_9 (76) = happyShift action_98
action_9 (86) = happyShift action_99
action_9 (90) = happyShift action_57
action_9 (91) = happyShift action_100
action_9 (92) = happyShift action_101
action_9 (97) = happyShift action_102
action_9 (98) = happyShift action_103
action_9 (99) = happyShift action_104
action_9 (101) = happyShift action_105
action_9 (104) = happyShift action_58
action_9 (105) = happyShift action_106
action_9 (108) = happyShift action_107
action_9 (109) = happyShift action_108
action_9 (110) = happyShift action_109
action_9 (111) = happyShift action_29
action_9 (112) = happyShift action_59
action_9 (113) = happyShift action_60
action_9 (114) = happyShift action_61
action_9 (115) = happyShift action_62
action_9 (31) = happyGoto action_90
action_9 (32) = happyGoto action_45
action_9 (33) = happyGoto action_46
action_9 (34) = happyGoto action_47
action_9 (35) = happyGoto action_48
action_9 (37) = happyGoto action_91
action_9 (38) = happyGoto action_92
action_9 (45) = happyGoto action_93
action_9 (46) = happyGoto action_94
action_9 (47) = happyGoto action_67
action_9 (48) = happyGoto action_68
action_9 (49) = happyGoto action_69
action_9 (50) = happyGoto action_70
action_9 (51) = happyGoto action_71
action_9 (52) = happyGoto action_72
action_9 (53) = happyGoto action_63
action_9 (54) = happyGoto action_95
action_9 (55) = happyGoto action_50
action_9 (56) = happyGoto action_51
action_9 (57) = happyGoto action_52
action_9 (58) = happyGoto action_96
action_9 (59) = happyGoto action_76
action_9 (60) = happyGoto action_74
action_9 (61) = happyGoto action_65
action_9 _ = happyFail

action_10 (66) = happyShift action_54
action_10 (67) = happyShift action_55
action_10 (69) = happyShift action_56
action_10 (90) = happyShift action_57
action_10 (104) = happyShift action_58
action_10 (111) = happyShift action_29
action_10 (112) = happyShift action_59
action_10 (113) = happyShift action_60
action_10 (114) = happyShift action_61
action_10 (115) = happyShift action_62
action_10 (31) = happyGoto action_44
action_10 (32) = happyGoto action_45
action_10 (33) = happyGoto action_46
action_10 (34) = happyGoto action_47
action_10 (35) = happyGoto action_48
action_10 (46) = happyGoto action_88
action_10 (54) = happyGoto action_89
action_10 (55) = happyGoto action_50
action_10 (56) = happyGoto action_51
action_10 (57) = happyGoto action_52
action_10 _ = happyFail

action_11 (64) = happyShift action_66
action_11 (66) = happyShift action_54
action_11 (67) = happyShift action_55
action_11 (69) = happyShift action_56
action_11 (90) = happyShift action_57
action_11 (104) = happyShift action_58
action_11 (111) = happyShift action_29
action_11 (112) = happyShift action_59
action_11 (113) = happyShift action_60
action_11 (114) = happyShift action_61
action_11 (115) = happyShift action_62
action_11 (31) = happyGoto action_44
action_11 (32) = happyGoto action_45
action_11 (33) = happyGoto action_46
action_11 (34) = happyGoto action_47
action_11 (35) = happyGoto action_48
action_11 (47) = happyGoto action_87
action_11 (48) = happyGoto action_68
action_11 (49) = happyGoto action_69
action_11 (50) = happyGoto action_70
action_11 (51) = happyGoto action_71
action_11 (52) = happyGoto action_72
action_11 (53) = happyGoto action_63
action_11 (54) = happyGoto action_49
action_11 (55) = happyGoto action_50
action_11 (56) = happyGoto action_51
action_11 (57) = happyGoto action_52
action_11 (60) = happyGoto action_74
action_11 (61) = happyGoto action_65
action_11 _ = happyFail

action_12 (64) = happyShift action_66
action_12 (66) = happyShift action_54
action_12 (67) = happyShift action_55
action_12 (69) = happyShift action_56
action_12 (90) = happyShift action_57
action_12 (104) = happyShift action_58
action_12 (111) = happyShift action_29
action_12 (112) = happyShift action_59
action_12 (113) = happyShift action_60
action_12 (114) = happyShift action_61
action_12 (115) = happyShift action_62
action_12 (31) = happyGoto action_44
action_12 (32) = happyGoto action_45
action_12 (33) = happyGoto action_46
action_12 (34) = happyGoto action_47
action_12 (35) = happyGoto action_48
action_12 (48) = happyGoto action_86
action_12 (49) = happyGoto action_69
action_12 (50) = happyGoto action_70
action_12 (51) = happyGoto action_71
action_12 (52) = happyGoto action_72
action_12 (53) = happyGoto action_63
action_12 (54) = happyGoto action_49
action_12 (55) = happyGoto action_50
action_12 (56) = happyGoto action_51
action_12 (57) = happyGoto action_52
action_12 (60) = happyGoto action_74
action_12 (61) = happyGoto action_65
action_12 _ = happyFail

action_13 (64) = happyShift action_66
action_13 (66) = happyShift action_54
action_13 (67) = happyShift action_55
action_13 (69) = happyShift action_56
action_13 (90) = happyShift action_57
action_13 (104) = happyShift action_58
action_13 (111) = happyShift action_29
action_13 (112) = happyShift action_59
action_13 (113) = happyShift action_60
action_13 (114) = happyShift action_61
action_13 (115) = happyShift action_62
action_13 (31) = happyGoto action_44
action_13 (32) = happyGoto action_45
action_13 (33) = happyGoto action_46
action_13 (34) = happyGoto action_47
action_13 (35) = happyGoto action_48
action_13 (49) = happyGoto action_85
action_13 (50) = happyGoto action_70
action_13 (51) = happyGoto action_71
action_13 (52) = happyGoto action_72
action_13 (53) = happyGoto action_63
action_13 (54) = happyGoto action_49
action_13 (55) = happyGoto action_50
action_13 (56) = happyGoto action_51
action_13 (57) = happyGoto action_52
action_13 (60) = happyGoto action_74
action_13 (61) = happyGoto action_65
action_13 _ = happyFail

action_14 (64) = happyShift action_66
action_14 (66) = happyShift action_54
action_14 (67) = happyShift action_55
action_14 (69) = happyShift action_56
action_14 (90) = happyShift action_57
action_14 (104) = happyShift action_58
action_14 (111) = happyShift action_29
action_14 (112) = happyShift action_59
action_14 (113) = happyShift action_60
action_14 (114) = happyShift action_61
action_14 (115) = happyShift action_62
action_14 (31) = happyGoto action_44
action_14 (32) = happyGoto action_45
action_14 (33) = happyGoto action_46
action_14 (34) = happyGoto action_47
action_14 (35) = happyGoto action_48
action_14 (50) = happyGoto action_84
action_14 (51) = happyGoto action_71
action_14 (52) = happyGoto action_72
action_14 (53) = happyGoto action_63
action_14 (54) = happyGoto action_49
action_14 (55) = happyGoto action_50
action_14 (56) = happyGoto action_51
action_14 (57) = happyGoto action_52
action_14 (60) = happyGoto action_74
action_14 (61) = happyGoto action_65
action_14 _ = happyFail

action_15 (64) = happyShift action_66
action_15 (66) = happyShift action_54
action_15 (67) = happyShift action_55
action_15 (69) = happyShift action_56
action_15 (90) = happyShift action_57
action_15 (104) = happyShift action_58
action_15 (111) = happyShift action_29
action_15 (112) = happyShift action_59
action_15 (113) = happyShift action_60
action_15 (114) = happyShift action_61
action_15 (115) = happyShift action_62
action_15 (31) = happyGoto action_44
action_15 (32) = happyGoto action_45
action_15 (33) = happyGoto action_46
action_15 (34) = happyGoto action_47
action_15 (35) = happyGoto action_48
action_15 (51) = happyGoto action_83
action_15 (52) = happyGoto action_72
action_15 (53) = happyGoto action_63
action_15 (54) = happyGoto action_49
action_15 (55) = happyGoto action_50
action_15 (56) = happyGoto action_51
action_15 (57) = happyGoto action_52
action_15 (60) = happyGoto action_74
action_15 (61) = happyGoto action_65
action_15 _ = happyFail

action_16 (64) = happyShift action_66
action_16 (66) = happyShift action_54
action_16 (67) = happyShift action_55
action_16 (69) = happyShift action_56
action_16 (90) = happyShift action_57
action_16 (104) = happyShift action_58
action_16 (111) = happyShift action_29
action_16 (112) = happyShift action_59
action_16 (113) = happyShift action_60
action_16 (114) = happyShift action_61
action_16 (115) = happyShift action_62
action_16 (31) = happyGoto action_44
action_16 (32) = happyGoto action_45
action_16 (33) = happyGoto action_46
action_16 (34) = happyGoto action_47
action_16 (35) = happyGoto action_48
action_16 (52) = happyGoto action_82
action_16 (53) = happyGoto action_63
action_16 (54) = happyGoto action_49
action_16 (55) = happyGoto action_50
action_16 (56) = happyGoto action_51
action_16 (57) = happyGoto action_52
action_16 (60) = happyGoto action_74
action_16 (61) = happyGoto action_65
action_16 _ = happyFail

action_17 (64) = happyShift action_66
action_17 (66) = happyShift action_54
action_17 (67) = happyShift action_55
action_17 (69) = happyShift action_56
action_17 (90) = happyShift action_57
action_17 (104) = happyShift action_58
action_17 (111) = happyShift action_29
action_17 (112) = happyShift action_59
action_17 (113) = happyShift action_60
action_17 (114) = happyShift action_61
action_17 (115) = happyShift action_62
action_17 (31) = happyGoto action_44
action_17 (32) = happyGoto action_45
action_17 (33) = happyGoto action_46
action_17 (34) = happyGoto action_47
action_17 (35) = happyGoto action_48
action_17 (53) = happyGoto action_81
action_17 (54) = happyGoto action_49
action_17 (55) = happyGoto action_50
action_17 (56) = happyGoto action_51
action_17 (57) = happyGoto action_52
action_17 (61) = happyGoto action_65
action_17 _ = happyFail

action_18 (66) = happyShift action_54
action_18 (67) = happyShift action_55
action_18 (69) = happyShift action_56
action_18 (90) = happyShift action_57
action_18 (104) = happyShift action_58
action_18 (111) = happyShift action_29
action_18 (112) = happyShift action_59
action_18 (113) = happyShift action_60
action_18 (114) = happyShift action_61
action_18 (115) = happyShift action_62
action_18 (31) = happyGoto action_44
action_18 (32) = happyGoto action_45
action_18 (33) = happyGoto action_46
action_18 (34) = happyGoto action_47
action_18 (35) = happyGoto action_48
action_18 (54) = happyGoto action_80
action_18 (55) = happyGoto action_50
action_18 (56) = happyGoto action_51
action_18 (57) = happyGoto action_52
action_18 _ = happyFail

action_19 (67) = happyShift action_55
action_19 (90) = happyShift action_57
action_19 (104) = happyShift action_58
action_19 (111) = happyShift action_29
action_19 (112) = happyShift action_59
action_19 (113) = happyShift action_60
action_19 (114) = happyShift action_61
action_19 (115) = happyShift action_62
action_19 (31) = happyGoto action_44
action_19 (32) = happyGoto action_45
action_19 (33) = happyGoto action_46
action_19 (34) = happyGoto action_47
action_19 (35) = happyGoto action_48
action_19 (55) = happyGoto action_79
action_19 (56) = happyGoto action_51
action_19 (57) = happyGoto action_52
action_19 _ = happyFail

action_20 (67) = happyShift action_55
action_20 (90) = happyShift action_57
action_20 (104) = happyShift action_58
action_20 (111) = happyShift action_29
action_20 (112) = happyShift action_59
action_20 (113) = happyShift action_60
action_20 (114) = happyShift action_61
action_20 (115) = happyShift action_62
action_20 (31) = happyGoto action_44
action_20 (32) = happyGoto action_45
action_20 (33) = happyGoto action_46
action_20 (34) = happyGoto action_47
action_20 (35) = happyGoto action_48
action_20 (56) = happyGoto action_78
action_20 (57) = happyGoto action_52
action_20 _ = happyFail

action_21 (67) = happyShift action_55
action_21 (57) = happyGoto action_77
action_21 _ = happyFail

action_22 (64) = happyShift action_66
action_22 (66) = happyShift action_54
action_22 (67) = happyShift action_55
action_22 (69) = happyShift action_56
action_22 (90) = happyShift action_57
action_22 (104) = happyShift action_58
action_22 (111) = happyShift action_29
action_22 (112) = happyShift action_59
action_22 (113) = happyShift action_60
action_22 (114) = happyShift action_61
action_22 (115) = happyShift action_62
action_22 (31) = happyGoto action_44
action_22 (32) = happyGoto action_45
action_22 (33) = happyGoto action_46
action_22 (34) = happyGoto action_47
action_22 (35) = happyGoto action_48
action_22 (47) = happyGoto action_67
action_22 (48) = happyGoto action_68
action_22 (49) = happyGoto action_69
action_22 (50) = happyGoto action_70
action_22 (51) = happyGoto action_71
action_22 (52) = happyGoto action_72
action_22 (53) = happyGoto action_63
action_22 (54) = happyGoto action_49
action_22 (55) = happyGoto action_50
action_22 (56) = happyGoto action_51
action_22 (57) = happyGoto action_52
action_22 (58) = happyGoto action_75
action_22 (59) = happyGoto action_76
action_22 (60) = happyGoto action_74
action_22 (61) = happyGoto action_65
action_22 _ = happyFail

action_23 (64) = happyShift action_66
action_23 (66) = happyShift action_54
action_23 (67) = happyShift action_55
action_23 (69) = happyShift action_56
action_23 (90) = happyShift action_57
action_23 (104) = happyShift action_58
action_23 (111) = happyShift action_29
action_23 (112) = happyShift action_59
action_23 (113) = happyShift action_60
action_23 (114) = happyShift action_61
action_23 (115) = happyShift action_62
action_23 (31) = happyGoto action_44
action_23 (32) = happyGoto action_45
action_23 (33) = happyGoto action_46
action_23 (34) = happyGoto action_47
action_23 (35) = happyGoto action_48
action_23 (47) = happyGoto action_67
action_23 (48) = happyGoto action_68
action_23 (49) = happyGoto action_69
action_23 (50) = happyGoto action_70
action_23 (51) = happyGoto action_71
action_23 (52) = happyGoto action_72
action_23 (53) = happyGoto action_63
action_23 (54) = happyGoto action_49
action_23 (55) = happyGoto action_50
action_23 (56) = happyGoto action_51
action_23 (57) = happyGoto action_52
action_23 (59) = happyGoto action_73
action_23 (60) = happyGoto action_74
action_23 (61) = happyGoto action_65
action_23 _ = happyFail

action_24 (64) = happyShift action_66
action_24 (66) = happyShift action_54
action_24 (67) = happyShift action_55
action_24 (69) = happyShift action_56
action_24 (90) = happyShift action_57
action_24 (104) = happyShift action_58
action_24 (111) = happyShift action_29
action_24 (112) = happyShift action_59
action_24 (113) = happyShift action_60
action_24 (114) = happyShift action_61
action_24 (115) = happyShift action_62
action_24 (31) = happyGoto action_44
action_24 (32) = happyGoto action_45
action_24 (33) = happyGoto action_46
action_24 (34) = happyGoto action_47
action_24 (35) = happyGoto action_48
action_24 (53) = happyGoto action_63
action_24 (54) = happyGoto action_49
action_24 (55) = happyGoto action_50
action_24 (56) = happyGoto action_51
action_24 (57) = happyGoto action_52
action_24 (60) = happyGoto action_64
action_24 (61) = happyGoto action_65
action_24 _ = happyFail

action_25 (66) = happyShift action_54
action_25 (67) = happyShift action_55
action_25 (69) = happyShift action_56
action_25 (90) = happyShift action_57
action_25 (104) = happyShift action_58
action_25 (111) = happyShift action_29
action_25 (112) = happyShift action_59
action_25 (113) = happyShift action_60
action_25 (114) = happyShift action_61
action_25 (115) = happyShift action_62
action_25 (31) = happyGoto action_44
action_25 (32) = happyGoto action_45
action_25 (33) = happyGoto action_46
action_25 (34) = happyGoto action_47
action_25 (35) = happyGoto action_48
action_25 (54) = happyGoto action_49
action_25 (55) = happyGoto action_50
action_25 (56) = happyGoto action_51
action_25 (57) = happyGoto action_52
action_25 (61) = happyGoto action_53
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

action_30 _ = happyReduce_116

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

action_39 _ = happyReduce_107

action_40 _ = happyReduce_109

action_41 _ = happyReduce_106

action_42 _ = happyReduce_105

action_43 _ = happyReduce_108

action_44 (67) = happyShift action_147
action_44 _ = happyReduce_91

action_45 _ = happyReduce_92

action_46 _ = happyReduce_93

action_47 _ = happyReduce_94

action_48 _ = happyReduce_95

action_49 _ = happyReduce_104

action_50 (80) = happyShift action_157
action_50 _ = happyReduce_87

action_51 _ = happyReduce_89

action_52 _ = happyReduce_98

action_53 (116) = happyAccept
action_53 _ = happyFail

action_54 (66) = happyShift action_54
action_54 (67) = happyShift action_55
action_54 (69) = happyShift action_56
action_54 (90) = happyShift action_57
action_54 (104) = happyShift action_58
action_54 (111) = happyShift action_29
action_54 (112) = happyShift action_59
action_54 (113) = happyShift action_60
action_54 (114) = happyShift action_61
action_54 (115) = happyShift action_62
action_54 (31) = happyGoto action_44
action_54 (32) = happyGoto action_45
action_54 (33) = happyGoto action_46
action_54 (34) = happyGoto action_47
action_54 (35) = happyGoto action_48
action_54 (54) = happyGoto action_161
action_54 (55) = happyGoto action_50
action_54 (56) = happyGoto action_51
action_54 (57) = happyGoto action_52
action_54 _ = happyFail

action_55 (64) = happyShift action_66
action_55 (66) = happyShift action_54
action_55 (67) = happyShift action_55
action_55 (69) = happyShift action_56
action_55 (90) = happyShift action_57
action_55 (104) = happyShift action_58
action_55 (111) = happyShift action_29
action_55 (112) = happyShift action_59
action_55 (113) = happyShift action_60
action_55 (114) = happyShift action_61
action_55 (115) = happyShift action_62
action_55 (31) = happyGoto action_44
action_55 (32) = happyGoto action_45
action_55 (33) = happyGoto action_46
action_55 (34) = happyGoto action_47
action_55 (35) = happyGoto action_48
action_55 (47) = happyGoto action_67
action_55 (48) = happyGoto action_68
action_55 (49) = happyGoto action_69
action_55 (50) = happyGoto action_70
action_55 (51) = happyGoto action_71
action_55 (52) = happyGoto action_72
action_55 (53) = happyGoto action_63
action_55 (54) = happyGoto action_49
action_55 (55) = happyGoto action_50
action_55 (56) = happyGoto action_51
action_55 (57) = happyGoto action_52
action_55 (58) = happyGoto action_160
action_55 (59) = happyGoto action_76
action_55 (60) = happyGoto action_74
action_55 (61) = happyGoto action_65
action_55 _ = happyFail

action_56 (66) = happyShift action_54
action_56 (67) = happyShift action_55
action_56 (69) = happyShift action_56
action_56 (90) = happyShift action_57
action_56 (104) = happyShift action_58
action_56 (111) = happyShift action_29
action_56 (112) = happyShift action_59
action_56 (113) = happyShift action_60
action_56 (114) = happyShift action_61
action_56 (115) = happyShift action_62
action_56 (31) = happyGoto action_44
action_56 (32) = happyGoto action_45
action_56 (33) = happyGoto action_46
action_56 (34) = happyGoto action_47
action_56 (35) = happyGoto action_48
action_56 (54) = happyGoto action_159
action_56 (55) = happyGoto action_50
action_56 (56) = happyGoto action_51
action_56 (57) = happyGoto action_52
action_56 _ = happyFail

action_57 _ = happyReduce_97

action_58 _ = happyReduce_96

action_59 _ = happyReduce_29

action_60 _ = happyReduce_30

action_61 _ = happyReduce_31

action_62 _ = happyReduce_32

action_63 _ = happyReduce_103

action_64 (116) = happyAccept
action_64 _ = happyFail

action_65 _ = happyReduce_84

action_66 (64) = happyShift action_66
action_66 (66) = happyShift action_54
action_66 (67) = happyShift action_55
action_66 (69) = happyShift action_56
action_66 (90) = happyShift action_57
action_66 (104) = happyShift action_58
action_66 (111) = happyShift action_29
action_66 (112) = happyShift action_59
action_66 (113) = happyShift action_60
action_66 (114) = happyShift action_61
action_66 (115) = happyShift action_62
action_66 (31) = happyGoto action_44
action_66 (32) = happyGoto action_45
action_66 (33) = happyGoto action_46
action_66 (34) = happyGoto action_47
action_66 (35) = happyGoto action_48
action_66 (53) = happyGoto action_63
action_66 (54) = happyGoto action_49
action_66 (55) = happyGoto action_50
action_66 (56) = happyGoto action_51
action_66 (57) = happyGoto action_52
action_66 (60) = happyGoto action_158
action_66 (61) = happyGoto action_65
action_66 _ = happyFail

action_67 (96) = happyShift action_148
action_67 _ = happyReduce_102

action_68 (82) = happyShift action_149
action_68 _ = happyReduce_69

action_69 (78) = happyShift action_150
action_69 _ = happyReduce_71

action_70 (77) = happyShift action_151
action_70 (79) = happyShift action_152
action_70 _ = happyReduce_73

action_71 (70) = happyShift action_153
action_71 (72) = happyShift action_154
action_71 _ = happyReduce_76

action_72 (69) = happyShift action_155
action_72 (73) = happyShift action_156
action_72 _ = happyReduce_79

action_73 (116) = happyAccept
action_73 _ = happyFail

action_74 _ = happyReduce_82

action_75 (116) = happyAccept
action_75 _ = happyFail

action_76 _ = happyReduce_101

action_77 (116) = happyAccept
action_77 _ = happyFail

action_78 (116) = happyAccept
action_78 _ = happyFail

action_79 (80) = happyShift action_157
action_79 (116) = happyAccept
action_79 _ = happyFail

action_80 (116) = happyAccept
action_80 _ = happyFail

action_81 (116) = happyAccept
action_81 _ = happyFail

action_82 (69) = happyShift action_155
action_82 (73) = happyShift action_156
action_82 (116) = happyAccept
action_82 _ = happyFail

action_83 (70) = happyShift action_153
action_83 (72) = happyShift action_154
action_83 (116) = happyAccept
action_83 _ = happyFail

action_84 (77) = happyShift action_151
action_84 (79) = happyShift action_152
action_84 (116) = happyAccept
action_84 _ = happyFail

action_85 (78) = happyShift action_150
action_85 (116) = happyAccept
action_85 _ = happyFail

action_86 (82) = happyShift action_149
action_86 (116) = happyAccept
action_86 _ = happyFail

action_87 (96) = happyShift action_148
action_87 (116) = happyAccept
action_87 _ = happyFail

action_88 (116) = happyAccept
action_88 _ = happyFail

action_89 (75) = happyShift action_145
action_89 _ = happyFail

action_90 (67) = happyShift action_147
action_90 (74) = happyShift action_128
action_90 _ = happyReduce_91

action_91 _ = happyReduce_57

action_92 (76) = happyShift action_146
action_92 _ = happyFail

action_93 (116) = happyAccept
action_93 _ = happyFail

action_94 _ = happyReduce_58

action_95 (75) = happyShift action_145
action_95 _ = happyReduce_104

action_96 (76) = happyShift action_144
action_96 _ = happyFail

action_97 (111) = happyShift action_29
action_97 (31) = happyGoto action_143
action_97 _ = happyFail

action_98 _ = happyReduce_50

action_99 (41) = happyGoto action_142
action_99 _ = happyReduce_39

action_100 (66) = happyShift action_54
action_100 (67) = happyShift action_55
action_100 (69) = happyShift action_56
action_100 (90) = happyShift action_57
action_100 (104) = happyShift action_58
action_100 (111) = happyShift action_29
action_100 (112) = happyShift action_59
action_100 (113) = happyShift action_60
action_100 (114) = happyShift action_61
action_100 (115) = happyShift action_62
action_100 (31) = happyGoto action_44
action_100 (32) = happyGoto action_45
action_100 (33) = happyGoto action_46
action_100 (34) = happyGoto action_47
action_100 (35) = happyGoto action_48
action_100 (46) = happyGoto action_141
action_100 (54) = happyGoto action_89
action_100 (55) = happyGoto action_50
action_100 (56) = happyGoto action_51
action_100 (57) = happyGoto action_52
action_100 _ = happyFail

action_101 (64) = happyShift action_66
action_101 (66) = happyShift action_54
action_101 (67) = happyShift action_55
action_101 (69) = happyShift action_56
action_101 (90) = happyShift action_57
action_101 (104) = happyShift action_58
action_101 (111) = happyShift action_29
action_101 (112) = happyShift action_59
action_101 (113) = happyShift action_60
action_101 (114) = happyShift action_61
action_101 (115) = happyShift action_62
action_101 (31) = happyGoto action_44
action_101 (32) = happyGoto action_45
action_101 (33) = happyGoto action_46
action_101 (34) = happyGoto action_47
action_101 (35) = happyGoto action_48
action_101 (47) = happyGoto action_67
action_101 (48) = happyGoto action_68
action_101 (49) = happyGoto action_69
action_101 (50) = happyGoto action_70
action_101 (51) = happyGoto action_71
action_101 (52) = happyGoto action_72
action_101 (53) = happyGoto action_63
action_101 (54) = happyGoto action_49
action_101 (55) = happyGoto action_50
action_101 (56) = happyGoto action_51
action_101 (57) = happyGoto action_52
action_101 (58) = happyGoto action_140
action_101 (59) = happyGoto action_76
action_101 (60) = happyGoto action_74
action_101 (61) = happyGoto action_65
action_101 _ = happyFail

action_102 (76) = happyShift action_139
action_102 _ = happyFail

action_103 (76) = happyShift action_138
action_103 _ = happyFail

action_104 (76) = happyShift action_137
action_104 _ = happyFail

action_105 (64) = happyShift action_66
action_105 (66) = happyShift action_54
action_105 (67) = happyShift action_55
action_105 (69) = happyShift action_56
action_105 (90) = happyShift action_57
action_105 (104) = happyShift action_58
action_105 (111) = happyShift action_29
action_105 (112) = happyShift action_59
action_105 (113) = happyShift action_60
action_105 (114) = happyShift action_61
action_105 (115) = happyShift action_62
action_105 (31) = happyGoto action_44
action_105 (32) = happyGoto action_45
action_105 (33) = happyGoto action_46
action_105 (34) = happyGoto action_47
action_105 (35) = happyGoto action_48
action_105 (47) = happyGoto action_67
action_105 (48) = happyGoto action_68
action_105 (49) = happyGoto action_69
action_105 (50) = happyGoto action_70
action_105 (51) = happyGoto action_71
action_105 (52) = happyGoto action_72
action_105 (53) = happyGoto action_63
action_105 (54) = happyGoto action_49
action_105 (55) = happyGoto action_50
action_105 (56) = happyGoto action_51
action_105 (57) = happyGoto action_52
action_105 (58) = happyGoto action_136
action_105 (59) = happyGoto action_76
action_105 (60) = happyGoto action_74
action_105 (61) = happyGoto action_65
action_105 _ = happyFail

action_106 (64) = happyShift action_66
action_106 (66) = happyShift action_54
action_106 (67) = happyShift action_55
action_106 (69) = happyShift action_56
action_106 (90) = happyShift action_57
action_106 (104) = happyShift action_58
action_106 (111) = happyShift action_29
action_106 (112) = happyShift action_59
action_106 (113) = happyShift action_60
action_106 (114) = happyShift action_61
action_106 (115) = happyShift action_62
action_106 (31) = happyGoto action_44
action_106 (32) = happyGoto action_45
action_106 (33) = happyGoto action_46
action_106 (34) = happyGoto action_47
action_106 (35) = happyGoto action_48
action_106 (47) = happyGoto action_67
action_106 (48) = happyGoto action_68
action_106 (49) = happyGoto action_69
action_106 (50) = happyGoto action_70
action_106 (51) = happyGoto action_71
action_106 (52) = happyGoto action_72
action_106 (53) = happyGoto action_63
action_106 (54) = happyGoto action_49
action_106 (55) = happyGoto action_50
action_106 (56) = happyGoto action_51
action_106 (57) = happyGoto action_52
action_106 (58) = happyGoto action_135
action_106 (59) = happyGoto action_76
action_106 (60) = happyGoto action_74
action_106 (61) = happyGoto action_65
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

action_118 (64) = happyShift action_66
action_118 (65) = happyShift action_97
action_118 (66) = happyShift action_54
action_118 (67) = happyShift action_55
action_118 (69) = happyShift action_56
action_118 (76) = happyShift action_98
action_118 (86) = happyShift action_99
action_118 (90) = happyShift action_57
action_118 (91) = happyShift action_100
action_118 (92) = happyShift action_101
action_118 (97) = happyShift action_102
action_118 (98) = happyShift action_103
action_118 (99) = happyShift action_104
action_118 (101) = happyShift action_105
action_118 (104) = happyShift action_58
action_118 (105) = happyShift action_106
action_118 (108) = happyShift action_107
action_118 (109) = happyShift action_108
action_118 (110) = happyShift action_109
action_118 (111) = happyShift action_29
action_118 (112) = happyShift action_59
action_118 (113) = happyShift action_60
action_118 (114) = happyShift action_61
action_118 (115) = happyShift action_62
action_118 (116) = happyAccept
action_118 (31) = happyGoto action_90
action_118 (32) = happyGoto action_45
action_118 (33) = happyGoto action_46
action_118 (34) = happyGoto action_47
action_118 (35) = happyGoto action_48
action_118 (37) = happyGoto action_91
action_118 (38) = happyGoto action_92
action_118 (45) = happyGoto action_125
action_118 (46) = happyGoto action_94
action_118 (47) = happyGoto action_67
action_118 (48) = happyGoto action_68
action_118 (49) = happyGoto action_69
action_118 (50) = happyGoto action_70
action_118 (51) = happyGoto action_71
action_118 (52) = happyGoto action_72
action_118 (53) = happyGoto action_63
action_118 (54) = happyGoto action_95
action_118 (55) = happyGoto action_50
action_118 (56) = happyGoto action_51
action_118 (57) = happyGoto action_52
action_118 (58) = happyGoto action_96
action_118 (59) = happyGoto action_76
action_118 (60) = happyGoto action_74
action_118 (61) = happyGoto action_65
action_118 _ = happyFail

action_119 (65) = happyShift action_97
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

action_124 (64) = happyShift action_66
action_124 (65) = happyShift action_97
action_124 (66) = happyShift action_54
action_124 (67) = happyShift action_55
action_124 (69) = happyShift action_56
action_124 (76) = happyShift action_98
action_124 (86) = happyShift action_99
action_124 (90) = happyShift action_57
action_124 (91) = happyShift action_100
action_124 (92) = happyShift action_101
action_124 (97) = happyShift action_102
action_124 (98) = happyShift action_103
action_124 (99) = happyShift action_104
action_124 (101) = happyShift action_105
action_124 (104) = happyShift action_58
action_124 (105) = happyShift action_106
action_124 (108) = happyShift action_107
action_124 (109) = happyShift action_108
action_124 (110) = happyShift action_109
action_124 (111) = happyShift action_29
action_124 (112) = happyShift action_59
action_124 (113) = happyShift action_60
action_124 (114) = happyShift action_61
action_124 (115) = happyShift action_62
action_124 (31) = happyGoto action_90
action_124 (32) = happyGoto action_45
action_124 (33) = happyGoto action_46
action_124 (34) = happyGoto action_47
action_124 (35) = happyGoto action_48
action_124 (37) = happyGoto action_91
action_124 (38) = happyGoto action_92
action_124 (45) = happyGoto action_125
action_124 (46) = happyGoto action_94
action_124 (47) = happyGoto action_67
action_124 (48) = happyGoto action_68
action_124 (49) = happyGoto action_69
action_124 (50) = happyGoto action_70
action_124 (51) = happyGoto action_71
action_124 (52) = happyGoto action_72
action_124 (53) = happyGoto action_63
action_124 (54) = happyGoto action_95
action_124 (55) = happyGoto action_50
action_124 (56) = happyGoto action_51
action_124 (57) = happyGoto action_52
action_124 (58) = happyGoto action_96
action_124 (59) = happyGoto action_76
action_124 (60) = happyGoto action_74
action_124 (61) = happyGoto action_65
action_124 _ = happyReduce_33

action_125 _ = happyReduce_40

action_126 _ = happyReduce_38

action_127 (111) = happyShift action_29
action_127 (31) = happyGoto action_115
action_127 (38) = happyGoto action_116
action_127 (42) = happyGoto action_195
action_127 _ = happyReduce_41

action_128 (69) = happyShift action_37
action_128 (83) = happyShift action_38
action_128 (84) = happyShift action_39
action_128 (85) = happyShift action_40
action_128 (87) = happyShift action_41
action_128 (93) = happyShift action_42
action_128 (102) = happyShift action_43
action_128 (62) = happyGoto action_194
action_128 _ = happyFail

action_129 (69) = happyShift action_37
action_129 (83) = happyShift action_38
action_129 (84) = happyShift action_39
action_129 (85) = happyShift action_40
action_129 (87) = happyShift action_41
action_129 (93) = happyShift action_42
action_129 (102) = happyShift action_43
action_129 (62) = happyGoto action_193
action_129 _ = happyFail

action_130 (95) = happyShift action_32
action_130 (100) = happyShift action_33
action_130 (106) = happyShift action_34
action_130 (107) = happyShift action_35
action_130 (111) = happyShift action_29
action_130 (31) = happyGoto action_30
action_130 (39) = happyGoto action_112
action_130 (43) = happyGoto action_192
action_130 (63) = happyGoto action_114
action_130 _ = happyReduce_44

action_131 (64) = happyShift action_66
action_131 (66) = happyShift action_54
action_131 (67) = happyShift action_55
action_131 (69) = happyShift action_56
action_131 (90) = happyShift action_57
action_131 (104) = happyShift action_58
action_131 (111) = happyShift action_29
action_131 (112) = happyShift action_59
action_131 (113) = happyShift action_60
action_131 (114) = happyShift action_61
action_131 (115) = happyShift action_62
action_131 (31) = happyGoto action_44
action_131 (32) = happyGoto action_45
action_131 (33) = happyGoto action_46
action_131 (34) = happyGoto action_47
action_131 (35) = happyGoto action_48
action_131 (44) = happyGoto action_191
action_131 (47) = happyGoto action_67
action_131 (48) = happyGoto action_68
action_131 (49) = happyGoto action_69
action_131 (50) = happyGoto action_70
action_131 (51) = happyGoto action_71
action_131 (52) = happyGoto action_72
action_131 (53) = happyGoto action_63
action_131 (54) = happyGoto action_49
action_131 (55) = happyGoto action_50
action_131 (56) = happyGoto action_51
action_131 (57) = happyGoto action_52
action_131 (58) = happyGoto action_111
action_131 (59) = happyGoto action_76
action_131 (60) = happyGoto action_74
action_131 (61) = happyGoto action_65
action_131 _ = happyReduce_47

action_132 (64) = happyShift action_66
action_132 (66) = happyShift action_54
action_132 (67) = happyShift action_55
action_132 (69) = happyShift action_56
action_132 (90) = happyShift action_57
action_132 (104) = happyShift action_58
action_132 (111) = happyShift action_29
action_132 (112) = happyShift action_59
action_132 (113) = happyShift action_60
action_132 (114) = happyShift action_61
action_132 (115) = happyShift action_62
action_132 (31) = happyGoto action_44
action_132 (32) = happyGoto action_45
action_132 (33) = happyGoto action_46
action_132 (34) = happyGoto action_47
action_132 (35) = happyGoto action_48
action_132 (47) = happyGoto action_67
action_132 (48) = happyGoto action_68
action_132 (49) = happyGoto action_69
action_132 (50) = happyGoto action_70
action_132 (51) = happyGoto action_71
action_132 (52) = happyGoto action_72
action_132 (53) = happyGoto action_63
action_132 (54) = happyGoto action_49
action_132 (55) = happyGoto action_50
action_132 (56) = happyGoto action_51
action_132 (57) = happyGoto action_52
action_132 (58) = happyGoto action_190
action_132 (59) = happyGoto action_76
action_132 (60) = happyGoto action_74
action_132 (61) = happyGoto action_65
action_132 _ = happyFail

action_133 (64) = happyShift action_66
action_133 (66) = happyShift action_54
action_133 (67) = happyShift action_55
action_133 (69) = happyShift action_56
action_133 (90) = happyShift action_57
action_133 (104) = happyShift action_58
action_133 (111) = happyShift action_29
action_133 (112) = happyShift action_59
action_133 (113) = happyShift action_60
action_133 (114) = happyShift action_61
action_133 (115) = happyShift action_62
action_133 (31) = happyGoto action_44
action_133 (32) = happyGoto action_45
action_133 (33) = happyGoto action_46
action_133 (34) = happyGoto action_47
action_133 (35) = happyGoto action_48
action_133 (47) = happyGoto action_67
action_133 (48) = happyGoto action_68
action_133 (49) = happyGoto action_69
action_133 (50) = happyGoto action_70
action_133 (51) = happyGoto action_71
action_133 (52) = happyGoto action_72
action_133 (53) = happyGoto action_63
action_133 (54) = happyGoto action_49
action_133 (55) = happyGoto action_50
action_133 (56) = happyGoto action_51
action_133 (57) = happyGoto action_52
action_133 (58) = happyGoto action_189
action_133 (59) = happyGoto action_76
action_133 (60) = happyGoto action_74
action_133 (61) = happyGoto action_65
action_133 _ = happyFail

action_134 (64) = happyShift action_66
action_134 (66) = happyShift action_54
action_134 (67) = happyShift action_55
action_134 (69) = happyShift action_56
action_134 (90) = happyShift action_57
action_134 (104) = happyShift action_58
action_134 (111) = happyShift action_29
action_134 (112) = happyShift action_59
action_134 (113) = happyShift action_60
action_134 (114) = happyShift action_61
action_134 (115) = happyShift action_62
action_134 (31) = happyGoto action_44
action_134 (32) = happyGoto action_45
action_134 (33) = happyGoto action_46
action_134 (34) = happyGoto action_47
action_134 (35) = happyGoto action_48
action_134 (47) = happyGoto action_67
action_134 (48) = happyGoto action_68
action_134 (49) = happyGoto action_69
action_134 (50) = happyGoto action_70
action_134 (51) = happyGoto action_71
action_134 (52) = happyGoto action_72
action_134 (53) = happyGoto action_63
action_134 (54) = happyGoto action_49
action_134 (55) = happyGoto action_50
action_134 (56) = happyGoto action_51
action_134 (57) = happyGoto action_52
action_134 (58) = happyGoto action_188
action_134 (59) = happyGoto action_76
action_134 (60) = happyGoto action_74
action_134 (61) = happyGoto action_65
action_134 _ = happyFail

action_135 (94) = happyShift action_187
action_135 _ = happyFail

action_136 (76) = happyShift action_186
action_136 _ = happyFail

action_137 _ = happyReduce_66

action_138 _ = happyReduce_62

action_139 _ = happyReduce_64

action_140 (103) = happyShift action_185
action_140 _ = happyFail

action_141 (105) = happyShift action_184
action_141 _ = happyFail

action_142 (64) = happyShift action_66
action_142 (65) = happyShift action_97
action_142 (66) = happyShift action_54
action_142 (67) = happyShift action_55
action_142 (69) = happyShift action_56
action_142 (76) = happyShift action_98
action_142 (86) = happyShift action_99
action_142 (89) = happyShift action_183
action_142 (90) = happyShift action_57
action_142 (91) = happyShift action_100
action_142 (92) = happyShift action_101
action_142 (97) = happyShift action_102
action_142 (98) = happyShift action_103
action_142 (99) = happyShift action_104
action_142 (101) = happyShift action_105
action_142 (104) = happyShift action_58
action_142 (105) = happyShift action_106
action_142 (108) = happyShift action_107
action_142 (109) = happyShift action_108
action_142 (110) = happyShift action_109
action_142 (111) = happyShift action_29
action_142 (112) = happyShift action_59
action_142 (113) = happyShift action_60
action_142 (114) = happyShift action_61
action_142 (115) = happyShift action_62
action_142 (31) = happyGoto action_90
action_142 (32) = happyGoto action_45
action_142 (33) = happyGoto action_46
action_142 (34) = happyGoto action_47
action_142 (35) = happyGoto action_48
action_142 (37) = happyGoto action_91
action_142 (38) = happyGoto action_92
action_142 (45) = happyGoto action_125
action_142 (46) = happyGoto action_94
action_142 (47) = happyGoto action_67
action_142 (48) = happyGoto action_68
action_142 (49) = happyGoto action_69
action_142 (50) = happyGoto action_70
action_142 (51) = happyGoto action_71
action_142 (52) = happyGoto action_72
action_142 (53) = happyGoto action_63
action_142 (54) = happyGoto action_95
action_142 (55) = happyGoto action_50
action_142 (56) = happyGoto action_51
action_142 (57) = happyGoto action_52
action_142 (58) = happyGoto action_96
action_142 (59) = happyGoto action_76
action_142 (60) = happyGoto action_74
action_142 (61) = happyGoto action_65
action_142 _ = happyFail

action_143 (67) = happyShift action_182
action_143 _ = happyFail

action_144 _ = happyReduce_52

action_145 (64) = happyShift action_66
action_145 (66) = happyShift action_54
action_145 (67) = happyShift action_55
action_145 (69) = happyShift action_56
action_145 (90) = happyShift action_57
action_145 (104) = happyShift action_58
action_145 (111) = happyShift action_29
action_145 (112) = happyShift action_59
action_145 (113) = happyShift action_60
action_145 (114) = happyShift action_61
action_145 (115) = happyShift action_62
action_145 (31) = happyGoto action_44
action_145 (32) = happyGoto action_45
action_145 (33) = happyGoto action_46
action_145 (34) = happyGoto action_47
action_145 (35) = happyGoto action_48
action_145 (47) = happyGoto action_67
action_145 (48) = happyGoto action_68
action_145 (49) = happyGoto action_69
action_145 (50) = happyGoto action_70
action_145 (51) = happyGoto action_71
action_145 (52) = happyGoto action_72
action_145 (53) = happyGoto action_63
action_145 (54) = happyGoto action_49
action_145 (55) = happyGoto action_50
action_145 (56) = happyGoto action_51
action_145 (57) = happyGoto action_52
action_145 (58) = happyGoto action_181
action_145 (59) = happyGoto action_76
action_145 (60) = happyGoto action_74
action_145 (61) = happyGoto action_65
action_145 _ = happyFail

action_146 _ = happyReduce_51

action_147 (64) = happyShift action_66
action_147 (66) = happyShift action_54
action_147 (67) = happyShift action_55
action_147 (69) = happyShift action_56
action_147 (90) = happyShift action_57
action_147 (104) = happyShift action_58
action_147 (111) = happyShift action_29
action_147 (112) = happyShift action_59
action_147 (113) = happyShift action_60
action_147 (114) = happyShift action_61
action_147 (115) = happyShift action_62
action_147 (31) = happyGoto action_44
action_147 (32) = happyGoto action_45
action_147 (33) = happyGoto action_46
action_147 (34) = happyGoto action_47
action_147 (35) = happyGoto action_48
action_147 (44) = happyGoto action_180
action_147 (47) = happyGoto action_67
action_147 (48) = happyGoto action_68
action_147 (49) = happyGoto action_69
action_147 (50) = happyGoto action_70
action_147 (51) = happyGoto action_71
action_147 (52) = happyGoto action_72
action_147 (53) = happyGoto action_63
action_147 (54) = happyGoto action_49
action_147 (55) = happyGoto action_50
action_147 (56) = happyGoto action_51
action_147 (57) = happyGoto action_52
action_147 (58) = happyGoto action_111
action_147 (59) = happyGoto action_76
action_147 (60) = happyGoto action_74
action_147 (61) = happyGoto action_65
action_147 _ = happyReduce_47

action_148 (64) = happyShift action_66
action_148 (66) = happyShift action_54
action_148 (67) = happyShift action_55
action_148 (69) = happyShift action_56
action_148 (90) = happyShift action_57
action_148 (104) = happyShift action_58
action_148 (111) = happyShift action_29
action_148 (112) = happyShift action_59
action_148 (113) = happyShift action_60
action_148 (114) = happyShift action_61
action_148 (115) = happyShift action_62
action_148 (31) = happyGoto action_44
action_148 (32) = happyGoto action_45
action_148 (33) = happyGoto action_46
action_148 (34) = happyGoto action_47
action_148 (35) = happyGoto action_48
action_148 (48) = happyGoto action_179
action_148 (49) = happyGoto action_69
action_148 (50) = happyGoto action_70
action_148 (51) = happyGoto action_71
action_148 (52) = happyGoto action_72
action_148 (53) = happyGoto action_63
action_148 (54) = happyGoto action_49
action_148 (55) = happyGoto action_50
action_148 (56) = happyGoto action_51
action_148 (57) = happyGoto action_52
action_148 (60) = happyGoto action_74
action_148 (61) = happyGoto action_65
action_148 _ = happyFail

action_149 (64) = happyShift action_66
action_149 (66) = happyShift action_54
action_149 (67) = happyShift action_55
action_149 (69) = happyShift action_56
action_149 (90) = happyShift action_57
action_149 (104) = happyShift action_58
action_149 (111) = happyShift action_29
action_149 (112) = happyShift action_59
action_149 (113) = happyShift action_60
action_149 (114) = happyShift action_61
action_149 (115) = happyShift action_62
action_149 (31) = happyGoto action_44
action_149 (32) = happyGoto action_45
action_149 (33) = happyGoto action_46
action_149 (34) = happyGoto action_47
action_149 (35) = happyGoto action_48
action_149 (49) = happyGoto action_178
action_149 (50) = happyGoto action_70
action_149 (51) = happyGoto action_71
action_149 (52) = happyGoto action_72
action_149 (53) = happyGoto action_63
action_149 (54) = happyGoto action_49
action_149 (55) = happyGoto action_50
action_149 (56) = happyGoto action_51
action_149 (57) = happyGoto action_52
action_149 (60) = happyGoto action_74
action_149 (61) = happyGoto action_65
action_149 _ = happyFail

action_150 (64) = happyShift action_66
action_150 (66) = happyShift action_54
action_150 (67) = happyShift action_55
action_150 (69) = happyShift action_56
action_150 (90) = happyShift action_57
action_150 (104) = happyShift action_58
action_150 (111) = happyShift action_29
action_150 (112) = happyShift action_59
action_150 (113) = happyShift action_60
action_150 (114) = happyShift action_61
action_150 (115) = happyShift action_62
action_150 (31) = happyGoto action_44
action_150 (32) = happyGoto action_45
action_150 (33) = happyGoto action_46
action_150 (34) = happyGoto action_47
action_150 (35) = happyGoto action_48
action_150 (50) = happyGoto action_177
action_150 (51) = happyGoto action_71
action_150 (52) = happyGoto action_72
action_150 (53) = happyGoto action_63
action_150 (54) = happyGoto action_49
action_150 (55) = happyGoto action_50
action_150 (56) = happyGoto action_51
action_150 (57) = happyGoto action_52
action_150 (60) = happyGoto action_74
action_150 (61) = happyGoto action_65
action_150 _ = happyFail

action_151 (64) = happyShift action_66
action_151 (66) = happyShift action_54
action_151 (67) = happyShift action_55
action_151 (69) = happyShift action_56
action_151 (90) = happyShift action_57
action_151 (104) = happyShift action_58
action_151 (111) = happyShift action_29
action_151 (112) = happyShift action_59
action_151 (113) = happyShift action_60
action_151 (114) = happyShift action_61
action_151 (115) = happyShift action_62
action_151 (31) = happyGoto action_44
action_151 (32) = happyGoto action_45
action_151 (33) = happyGoto action_46
action_151 (34) = happyGoto action_47
action_151 (35) = happyGoto action_48
action_151 (51) = happyGoto action_176
action_151 (52) = happyGoto action_72
action_151 (53) = happyGoto action_63
action_151 (54) = happyGoto action_49
action_151 (55) = happyGoto action_50
action_151 (56) = happyGoto action_51
action_151 (57) = happyGoto action_52
action_151 (60) = happyGoto action_74
action_151 (61) = happyGoto action_65
action_151 _ = happyFail

action_152 (64) = happyShift action_66
action_152 (66) = happyShift action_54
action_152 (67) = happyShift action_55
action_152 (69) = happyShift action_56
action_152 (90) = happyShift action_57
action_152 (104) = happyShift action_58
action_152 (111) = happyShift action_29
action_152 (112) = happyShift action_59
action_152 (113) = happyShift action_60
action_152 (114) = happyShift action_61
action_152 (115) = happyShift action_62
action_152 (31) = happyGoto action_44
action_152 (32) = happyGoto action_45
action_152 (33) = happyGoto action_46
action_152 (34) = happyGoto action_47
action_152 (35) = happyGoto action_48
action_152 (51) = happyGoto action_175
action_152 (52) = happyGoto action_72
action_152 (53) = happyGoto action_63
action_152 (54) = happyGoto action_49
action_152 (55) = happyGoto action_50
action_152 (56) = happyGoto action_51
action_152 (57) = happyGoto action_52
action_152 (60) = happyGoto action_74
action_152 (61) = happyGoto action_65
action_152 _ = happyFail

action_153 (64) = happyShift action_66
action_153 (66) = happyShift action_54
action_153 (67) = happyShift action_55
action_153 (69) = happyShift action_56
action_153 (90) = happyShift action_57
action_153 (104) = happyShift action_58
action_153 (111) = happyShift action_29
action_153 (112) = happyShift action_59
action_153 (113) = happyShift action_60
action_153 (114) = happyShift action_61
action_153 (115) = happyShift action_62
action_153 (31) = happyGoto action_44
action_153 (32) = happyGoto action_45
action_153 (33) = happyGoto action_46
action_153 (34) = happyGoto action_47
action_153 (35) = happyGoto action_48
action_153 (52) = happyGoto action_174
action_153 (53) = happyGoto action_63
action_153 (54) = happyGoto action_49
action_153 (55) = happyGoto action_50
action_153 (56) = happyGoto action_51
action_153 (57) = happyGoto action_52
action_153 (60) = happyGoto action_74
action_153 (61) = happyGoto action_65
action_153 _ = happyFail

action_154 (64) = happyShift action_66
action_154 (66) = happyShift action_54
action_154 (67) = happyShift action_55
action_154 (69) = happyShift action_56
action_154 (90) = happyShift action_57
action_154 (104) = happyShift action_58
action_154 (111) = happyShift action_29
action_154 (112) = happyShift action_59
action_154 (113) = happyShift action_60
action_154 (114) = happyShift action_61
action_154 (115) = happyShift action_62
action_154 (31) = happyGoto action_44
action_154 (32) = happyGoto action_45
action_154 (33) = happyGoto action_46
action_154 (34) = happyGoto action_47
action_154 (35) = happyGoto action_48
action_154 (52) = happyGoto action_173
action_154 (53) = happyGoto action_63
action_154 (54) = happyGoto action_49
action_154 (55) = happyGoto action_50
action_154 (56) = happyGoto action_51
action_154 (57) = happyGoto action_52
action_154 (60) = happyGoto action_74
action_154 (61) = happyGoto action_65
action_154 _ = happyFail

action_155 (64) = happyShift action_66
action_155 (66) = happyShift action_54
action_155 (67) = happyShift action_55
action_155 (69) = happyShift action_56
action_155 (90) = happyShift action_57
action_155 (104) = happyShift action_58
action_155 (111) = happyShift action_29
action_155 (112) = happyShift action_59
action_155 (113) = happyShift action_60
action_155 (114) = happyShift action_61
action_155 (115) = happyShift action_62
action_155 (31) = happyGoto action_44
action_155 (32) = happyGoto action_45
action_155 (33) = happyGoto action_46
action_155 (34) = happyGoto action_47
action_155 (35) = happyGoto action_48
action_155 (53) = happyGoto action_63
action_155 (54) = happyGoto action_49
action_155 (55) = happyGoto action_50
action_155 (56) = happyGoto action_51
action_155 (57) = happyGoto action_52
action_155 (60) = happyGoto action_172
action_155 (61) = happyGoto action_65
action_155 _ = happyFail

action_156 (64) = happyShift action_66
action_156 (66) = happyShift action_54
action_156 (67) = happyShift action_55
action_156 (69) = happyShift action_56
action_156 (90) = happyShift action_57
action_156 (104) = happyShift action_58
action_156 (111) = happyShift action_29
action_156 (112) = happyShift action_59
action_156 (113) = happyShift action_60
action_156 (114) = happyShift action_61
action_156 (115) = happyShift action_62
action_156 (31) = happyGoto action_44
action_156 (32) = happyGoto action_45
action_156 (33) = happyGoto action_46
action_156 (34) = happyGoto action_47
action_156 (35) = happyGoto action_48
action_156 (53) = happyGoto action_63
action_156 (54) = happyGoto action_49
action_156 (55) = happyGoto action_50
action_156 (56) = happyGoto action_51
action_156 (57) = happyGoto action_52
action_156 (60) = happyGoto action_171
action_156 (61) = happyGoto action_65
action_156 _ = happyFail

action_157 (64) = happyShift action_66
action_157 (66) = happyShift action_54
action_157 (67) = happyShift action_55
action_157 (69) = happyShift action_56
action_157 (90) = happyShift action_57
action_157 (104) = happyShift action_58
action_157 (111) = happyShift action_29
action_157 (112) = happyShift action_59
action_157 (113) = happyShift action_60
action_157 (114) = happyShift action_61
action_157 (115) = happyShift action_62
action_157 (31) = happyGoto action_44
action_157 (32) = happyGoto action_45
action_157 (33) = happyGoto action_46
action_157 (34) = happyGoto action_47
action_157 (35) = happyGoto action_48
action_157 (47) = happyGoto action_67
action_157 (48) = happyGoto action_68
action_157 (49) = happyGoto action_69
action_157 (50) = happyGoto action_70
action_157 (51) = happyGoto action_71
action_157 (52) = happyGoto action_72
action_157 (53) = happyGoto action_63
action_157 (54) = happyGoto action_49
action_157 (55) = happyGoto action_50
action_157 (56) = happyGoto action_51
action_157 (57) = happyGoto action_52
action_157 (58) = happyGoto action_170
action_157 (59) = happyGoto action_76
action_157 (60) = happyGoto action_74
action_157 (61) = happyGoto action_65
action_157 _ = happyFail

action_158 _ = happyReduce_83

action_159 _ = happyReduce_85

action_160 (68) = happyShift action_169
action_160 _ = happyFail

action_161 _ = happyReduce_86

action_162 (69) = happyShift action_37
action_162 (83) = happyShift action_38
action_162 (84) = happyShift action_39
action_162 (85) = happyShift action_40
action_162 (87) = happyShift action_41
action_162 (93) = happyShift action_42
action_162 (102) = happyShift action_43
action_162 (62) = happyGoto action_168
action_162 _ = happyFail

action_163 _ = happyReduce_110

action_164 _ = happyReduce_112

action_165 _ = happyReduce_113

action_166 _ = happyReduce_115

action_167 _ = happyReduce_114

action_168 (81) = happyShift action_206
action_168 _ = happyFail

action_169 (68) = happyReduce_100
action_169 (69) = happyReduce_100
action_169 (70) = happyReduce_100
action_169 (71) = happyReduce_100
action_169 (72) = happyReduce_100
action_169 (73) = happyReduce_100
action_169 (75) = happyReduce_100
action_169 (76) = happyReduce_100
action_169 (77) = happyReduce_100
action_169 (78) = happyReduce_100
action_169 (79) = happyReduce_100
action_169 (80) = happyReduce_100
action_169 (81) = happyReduce_100
action_169 (82) = happyReduce_100
action_169 (94) = happyReduce_100
action_169 (96) = happyReduce_100
action_169 (103) = happyReduce_100
action_169 (116) = happyReduce_100
action_169 _ = happyReduce_100

action_170 (81) = happyShift action_205
action_170 _ = happyFail

action_171 _ = happyReduce_81

action_172 _ = happyReduce_80

action_173 (69) = happyShift action_155
action_173 (73) = happyShift action_156
action_173 _ = happyReduce_78

action_174 (69) = happyShift action_155
action_174 (73) = happyShift action_156
action_174 _ = happyReduce_77

action_175 (70) = happyShift action_153
action_175 (72) = happyShift action_154
action_175 _ = happyReduce_75

action_176 (70) = happyShift action_153
action_176 (72) = happyShift action_154
action_176 _ = happyReduce_74

action_177 (77) = happyShift action_151
action_177 (79) = happyShift action_152
action_177 _ = happyReduce_72

action_178 (78) = happyShift action_150
action_178 _ = happyReduce_70

action_179 (82) = happyShift action_149
action_179 _ = happyReduce_68

action_180 (68) = happyShift action_204
action_180 _ = happyFail

action_181 (76) = happyShift action_203
action_181 _ = happyFail

action_182 (95) = happyShift action_32
action_182 (100) = happyShift action_33
action_182 (106) = happyShift action_34
action_182 (107) = happyShift action_35
action_182 (111) = happyShift action_29
action_182 (31) = happyGoto action_30
action_182 (39) = happyGoto action_112
action_182 (43) = happyGoto action_202
action_182 (63) = happyGoto action_114
action_182 _ = happyReduce_44

action_183 _ = happyReduce_53

action_184 (64) = happyShift action_66
action_184 (66) = happyShift action_54
action_184 (67) = happyShift action_55
action_184 (69) = happyShift action_56
action_184 (90) = happyShift action_57
action_184 (104) = happyShift action_58
action_184 (111) = happyShift action_29
action_184 (112) = happyShift action_59
action_184 (113) = happyShift action_60
action_184 (114) = happyShift action_61
action_184 (115) = happyShift action_62
action_184 (31) = happyGoto action_44
action_184 (32) = happyGoto action_45
action_184 (33) = happyGoto action_46
action_184 (34) = happyGoto action_47
action_184 (35) = happyGoto action_48
action_184 (47) = happyGoto action_67
action_184 (48) = happyGoto action_68
action_184 (49) = happyGoto action_69
action_184 (50) = happyGoto action_70
action_184 (51) = happyGoto action_71
action_184 (52) = happyGoto action_72
action_184 (53) = happyGoto action_63
action_184 (54) = happyGoto action_49
action_184 (55) = happyGoto action_50
action_184 (56) = happyGoto action_51
action_184 (57) = happyGoto action_52
action_184 (58) = happyGoto action_201
action_184 (59) = happyGoto action_76
action_184 (60) = happyGoto action_74
action_184 (61) = happyGoto action_65
action_184 _ = happyFail

action_185 (41) = happyGoto action_200
action_185 _ = happyReduce_39

action_186 _ = happyReduce_56

action_187 (41) = happyGoto action_199
action_187 _ = happyReduce_39

action_188 (68) = happyShift action_198
action_188 _ = happyFail

action_189 (68) = happyShift action_197
action_189 _ = happyFail

action_190 (68) = happyShift action_196
action_190 _ = happyFail

action_191 _ = happyReduce_49

action_192 _ = happyReduce_46

action_193 _ = happyReduce_36

action_194 _ = happyReduce_35

action_195 _ = happyReduce_43

action_196 (76) = happyShift action_214
action_196 _ = happyFail

action_197 (76) = happyShift action_213
action_197 _ = happyFail

action_198 (76) = happyShift action_212
action_198 _ = happyFail

action_199 (64) = happyShift action_66
action_199 (65) = happyShift action_97
action_199 (66) = happyShift action_54
action_199 (67) = happyShift action_55
action_199 (69) = happyShift action_56
action_199 (76) = happyShift action_98
action_199 (86) = happyShift action_99
action_199 (89) = happyShift action_211
action_199 (90) = happyShift action_57
action_199 (91) = happyShift action_100
action_199 (92) = happyShift action_101
action_199 (97) = happyShift action_102
action_199 (98) = happyShift action_103
action_199 (99) = happyShift action_104
action_199 (101) = happyShift action_105
action_199 (104) = happyShift action_58
action_199 (105) = happyShift action_106
action_199 (108) = happyShift action_107
action_199 (109) = happyShift action_108
action_199 (110) = happyShift action_109
action_199 (111) = happyShift action_29
action_199 (112) = happyShift action_59
action_199 (113) = happyShift action_60
action_199 (114) = happyShift action_61
action_199 (115) = happyShift action_62
action_199 (31) = happyGoto action_90
action_199 (32) = happyGoto action_45
action_199 (33) = happyGoto action_46
action_199 (34) = happyGoto action_47
action_199 (35) = happyGoto action_48
action_199 (37) = happyGoto action_91
action_199 (38) = happyGoto action_92
action_199 (45) = happyGoto action_125
action_199 (46) = happyGoto action_94
action_199 (47) = happyGoto action_67
action_199 (48) = happyGoto action_68
action_199 (49) = happyGoto action_69
action_199 (50) = happyGoto action_70
action_199 (51) = happyGoto action_71
action_199 (52) = happyGoto action_72
action_199 (53) = happyGoto action_63
action_199 (54) = happyGoto action_95
action_199 (55) = happyGoto action_50
action_199 (56) = happyGoto action_51
action_199 (57) = happyGoto action_52
action_199 (58) = happyGoto action_96
action_199 (59) = happyGoto action_76
action_199 (60) = happyGoto action_74
action_199 (61) = happyGoto action_65
action_199 _ = happyFail

action_200 (64) = happyShift action_66
action_200 (65) = happyShift action_97
action_200 (66) = happyShift action_54
action_200 (67) = happyShift action_55
action_200 (69) = happyShift action_56
action_200 (76) = happyShift action_98
action_200 (86) = happyShift action_99
action_200 (88) = happyShift action_209
action_200 (89) = happyShift action_210
action_200 (90) = happyShift action_57
action_200 (91) = happyShift action_100
action_200 (92) = happyShift action_101
action_200 (97) = happyShift action_102
action_200 (98) = happyShift action_103
action_200 (99) = happyShift action_104
action_200 (101) = happyShift action_105
action_200 (104) = happyShift action_58
action_200 (105) = happyShift action_106
action_200 (108) = happyShift action_107
action_200 (109) = happyShift action_108
action_200 (110) = happyShift action_109
action_200 (111) = happyShift action_29
action_200 (112) = happyShift action_59
action_200 (113) = happyShift action_60
action_200 (114) = happyShift action_61
action_200 (115) = happyShift action_62
action_200 (31) = happyGoto action_90
action_200 (32) = happyGoto action_45
action_200 (33) = happyGoto action_46
action_200 (34) = happyGoto action_47
action_200 (35) = happyGoto action_48
action_200 (37) = happyGoto action_91
action_200 (38) = happyGoto action_92
action_200 (45) = happyGoto action_125
action_200 (46) = happyGoto action_94
action_200 (47) = happyGoto action_67
action_200 (48) = happyGoto action_68
action_200 (49) = happyGoto action_69
action_200 (50) = happyGoto action_70
action_200 (51) = happyGoto action_71
action_200 (52) = happyGoto action_72
action_200 (53) = happyGoto action_63
action_200 (54) = happyGoto action_95
action_200 (55) = happyGoto action_50
action_200 (56) = happyGoto action_51
action_200 (57) = happyGoto action_52
action_200 (58) = happyGoto action_96
action_200 (59) = happyGoto action_76
action_200 (60) = happyGoto action_74
action_200 (61) = happyGoto action_65
action_200 _ = happyFail

action_201 (94) = happyShift action_208
action_201 _ = happyFail

action_202 (68) = happyShift action_207
action_202 _ = happyFail

action_203 _ = happyReduce_67

action_204 _ = happyReduce_90

action_205 _ = happyReduce_88

action_206 _ = happyReduce_111

action_207 (74) = happyShift action_217
action_207 _ = happyFail

action_208 (41) = happyGoto action_216
action_208 _ = happyReduce_39

action_209 (41) = happyGoto action_215
action_209 _ = happyReduce_39

action_210 _ = happyReduce_59

action_211 _ = happyReduce_54

action_212 _ = happyReduce_63

action_213 _ = happyReduce_61

action_214 _ = happyReduce_65

action_215 (64) = happyShift action_66
action_215 (65) = happyShift action_97
action_215 (66) = happyShift action_54
action_215 (67) = happyShift action_55
action_215 (69) = happyShift action_56
action_215 (76) = happyShift action_98
action_215 (86) = happyShift action_99
action_215 (89) = happyShift action_220
action_215 (90) = happyShift action_57
action_215 (91) = happyShift action_100
action_215 (92) = happyShift action_101
action_215 (97) = happyShift action_102
action_215 (98) = happyShift action_103
action_215 (99) = happyShift action_104
action_215 (101) = happyShift action_105
action_215 (104) = happyShift action_58
action_215 (105) = happyShift action_106
action_215 (108) = happyShift action_107
action_215 (109) = happyShift action_108
action_215 (110) = happyShift action_109
action_215 (111) = happyShift action_29
action_215 (112) = happyShift action_59
action_215 (113) = happyShift action_60
action_215 (114) = happyShift action_61
action_215 (115) = happyShift action_62
action_215 (31) = happyGoto action_90
action_215 (32) = happyGoto action_45
action_215 (33) = happyGoto action_46
action_215 (34) = happyGoto action_47
action_215 (35) = happyGoto action_48
action_215 (37) = happyGoto action_91
action_215 (38) = happyGoto action_92
action_215 (45) = happyGoto action_125
action_215 (46) = happyGoto action_94
action_215 (47) = happyGoto action_67
action_215 (48) = happyGoto action_68
action_215 (49) = happyGoto action_69
action_215 (50) = happyGoto action_70
action_215 (51) = happyGoto action_71
action_215 (52) = happyGoto action_72
action_215 (53) = happyGoto action_63
action_215 (54) = happyGoto action_95
action_215 (55) = happyGoto action_50
action_215 (56) = happyGoto action_51
action_215 (57) = happyGoto action_52
action_215 (58) = happyGoto action_96
action_215 (59) = happyGoto action_76
action_215 (60) = happyGoto action_74
action_215 (61) = happyGoto action_65
action_215 _ = happyFail

action_216 (64) = happyShift action_66
action_216 (65) = happyShift action_97
action_216 (66) = happyShift action_54
action_216 (67) = happyShift action_55
action_216 (69) = happyShift action_56
action_216 (76) = happyShift action_98
action_216 (86) = happyShift action_99
action_216 (89) = happyShift action_219
action_216 (90) = happyShift action_57
action_216 (91) = happyShift action_100
action_216 (92) = happyShift action_101
action_216 (97) = happyShift action_102
action_216 (98) = happyShift action_103
action_216 (99) = happyShift action_104
action_216 (101) = happyShift action_105
action_216 (104) = happyShift action_58
action_216 (105) = happyShift action_106
action_216 (108) = happyShift action_107
action_216 (109) = happyShift action_108
action_216 (110) = happyShift action_109
action_216 (111) = happyShift action_29
action_216 (112) = happyShift action_59
action_216 (113) = happyShift action_60
action_216 (114) = happyShift action_61
action_216 (115) = happyShift action_62
action_216 (31) = happyGoto action_90
action_216 (32) = happyGoto action_45
action_216 (33) = happyGoto action_46
action_216 (34) = happyGoto action_47
action_216 (35) = happyGoto action_48
action_216 (37) = happyGoto action_91
action_216 (38) = happyGoto action_92
action_216 (45) = happyGoto action_125
action_216 (46) = happyGoto action_94
action_216 (47) = happyGoto action_67
action_216 (48) = happyGoto action_68
action_216 (49) = happyGoto action_69
action_216 (50) = happyGoto action_70
action_216 (51) = happyGoto action_71
action_216 (52) = happyGoto action_72
action_216 (53) = happyGoto action_63
action_216 (54) = happyGoto action_95
action_216 (55) = happyGoto action_50
action_216 (56) = happyGoto action_51
action_216 (57) = happyGoto action_52
action_216 (58) = happyGoto action_96
action_216 (59) = happyGoto action_76
action_216 (60) = happyGoto action_74
action_216 (61) = happyGoto action_65
action_216 _ = happyFail

action_217 (69) = happyShift action_37
action_217 (83) = happyShift action_38
action_217 (84) = happyShift action_39
action_217 (85) = happyShift action_40
action_217 (87) = happyShift action_41
action_217 (93) = happyShift action_42
action_217 (102) = happyShift action_43
action_217 (62) = happyGoto action_218
action_217 _ = happyFail

action_218 (86) = happyShift action_221
action_218 _ = happyFail

action_219 _ = happyReduce_55

action_220 _ = happyReduce_60

action_221 (41) = happyGoto action_222
action_221 _ = happyReduce_39

action_222 (64) = happyShift action_66
action_222 (65) = happyShift action_97
action_222 (66) = happyShift action_54
action_222 (67) = happyShift action_55
action_222 (69) = happyShift action_56
action_222 (76) = happyShift action_98
action_222 (86) = happyShift action_99
action_222 (89) = happyShift action_223
action_222 (90) = happyShift action_57
action_222 (91) = happyShift action_100
action_222 (92) = happyShift action_101
action_222 (97) = happyShift action_102
action_222 (98) = happyShift action_103
action_222 (99) = happyShift action_104
action_222 (101) = happyShift action_105
action_222 (104) = happyShift action_58
action_222 (105) = happyShift action_106
action_222 (108) = happyShift action_107
action_222 (109) = happyShift action_108
action_222 (110) = happyShift action_109
action_222 (111) = happyShift action_29
action_222 (112) = happyShift action_59
action_222 (113) = happyShift action_60
action_222 (114) = happyShift action_61
action_222 (115) = happyShift action_62
action_222 (31) = happyGoto action_90
action_222 (32) = happyGoto action_45
action_222 (33) = happyGoto action_46
action_222 (34) = happyGoto action_47
action_222 (35) = happyGoto action_48
action_222 (37) = happyGoto action_91
action_222 (38) = happyGoto action_92
action_222 (45) = happyGoto action_125
action_222 (46) = happyGoto action_94
action_222 (47) = happyGoto action_67
action_222 (48) = happyGoto action_68
action_222 (49) = happyGoto action_69
action_222 (50) = happyGoto action_70
action_222 (51) = happyGoto action_71
action_222 (52) = happyGoto action_72
action_222 (53) = happyGoto action_63
action_222 (54) = happyGoto action_95
action_222 (55) = happyGoto action_50
action_222 (56) = happyGoto action_51
action_222 (57) = happyGoto action_52
action_222 (58) = happyGoto action_96
action_222 (59) = happyGoto action_76
action_222 (60) = happyGoto action_74
action_222 (61) = happyGoto action_65
action_222 _ = happyFail

action_223 _ = happyReduce_34

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

happyReduce_62 = happySpecReduce_2  45 happyReduction_62
happyReduction_62 _
	_
	 =  HappyAbsSyn45
		 (AbsGram.SRInt
	)

happyReduce_63 = happyReduce 5 45 happyReduction_63
happyReduction_63 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn47  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn45
		 (AbsGram.SWDou happy_var_3
	) `HappyStk` happyRest

happyReduce_64 = happySpecReduce_2  45 happyReduction_64
happyReduction_64 _
	_
	 =  HappyAbsSyn45
		 (AbsGram.SRDou
	)

happyReduce_65 = happyReduce 5 45 happyReduction_65
happyReduction_65 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn47  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn45
		 (AbsGram.SWStr happy_var_3
	) `HappyStk` happyRest

happyReduce_66 = happySpecReduce_2  45 happyReduction_66
happyReduction_66 _
	_
	 =  HappyAbsSyn45
		 (AbsGram.SRStr
	)

happyReduce_67 = happyReduce 4 46 happyReduction_67
happyReduction_67 (_ `HappyStk`
	(HappyAbsSyn47  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn47  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn46
		 (AbsGram.DAss happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_68 = happySpecReduce_3  47 happyReduction_68
happyReduction_68 (HappyAbsSyn47  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EOr happy_var_1 happy_var_3
	)
happyReduction_68 _ _ _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_1  47 happyReduction_69
happyReduction_69 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_69 _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_3  48 happyReduction_70
happyReduction_70 (HappyAbsSyn47  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EAnd happy_var_1 happy_var_3
	)
happyReduction_70 _ _ _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_1  48 happyReduction_71
happyReduction_71 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_71 _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_3  49 happyReduction_72
happyReduction_72 (HappyAbsSyn47  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EEql happy_var_1 happy_var_3
	)
happyReduction_72 _ _ _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_1  49 happyReduction_73
happyReduction_73 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_73 _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_3  50 happyReduction_74
happyReduction_74 (HappyAbsSyn47  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.ELt happy_var_1 happy_var_3
	)
happyReduction_74 _ _ _  = notHappyAtAll 

happyReduce_75 = happySpecReduce_3  50 happyReduction_75
happyReduction_75 (HappyAbsSyn47  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EGt happy_var_1 happy_var_3
	)
happyReduction_75 _ _ _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_1  50 happyReduction_76
happyReduction_76 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_76 _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_3  51 happyReduction_77
happyReduction_77 (HappyAbsSyn47  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EAdd happy_var_1 happy_var_3
	)
happyReduction_77 _ _ _  = notHappyAtAll 

happyReduce_78 = happySpecReduce_3  51 happyReduction_78
happyReduction_78 (HappyAbsSyn47  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.ESub happy_var_1 happy_var_3
	)
happyReduction_78 _ _ _  = notHappyAtAll 

happyReduce_79 = happySpecReduce_1  51 happyReduction_79
happyReduction_79 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_79 _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_3  52 happyReduction_80
happyReduction_80 (HappyAbsSyn47  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EMul happy_var_1 happy_var_3
	)
happyReduction_80 _ _ _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_3  52 happyReduction_81
happyReduction_81 (HappyAbsSyn47  happy_var_3)
	_
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EDiv happy_var_1 happy_var_3
	)
happyReduction_81 _ _ _  = notHappyAtAll 

happyReduce_82 = happySpecReduce_1  52 happyReduction_82
happyReduction_82 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_82 _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_2  53 happyReduction_83
happyReduction_83 (HappyAbsSyn47  happy_var_2)
	_
	 =  HappyAbsSyn47
		 (AbsGram.ENot happy_var_2
	)
happyReduction_83 _ _  = notHappyAtAll 

happyReduce_84 = happySpecReduce_1  53 happyReduction_84
happyReduction_84 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_84 _  = notHappyAtAll 

happyReduce_85 = happySpecReduce_2  54 happyReduction_85
happyReduction_85 (HappyAbsSyn47  happy_var_2)
	_
	 =  HappyAbsSyn47
		 (AbsGram.EDeref happy_var_2
	)
happyReduction_85 _ _  = notHappyAtAll 

happyReduce_86 = happySpecReduce_2  54 happyReduction_86
happyReduction_86 (HappyAbsSyn47  happy_var_2)
	_
	 =  HappyAbsSyn47
		 (AbsGram.ERefer happy_var_2
	)
happyReduction_86 _ _  = notHappyAtAll 

happyReduce_87 = happySpecReduce_1  54 happyReduction_87
happyReduction_87 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_87 _  = notHappyAtAll 

happyReduce_88 = happyReduce 4 55 happyReduction_88
happyReduction_88 (_ `HappyStk`
	(HappyAbsSyn47  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn47  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn47
		 (AbsGram.EArr happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_89 = happySpecReduce_1  55 happyReduction_89
happyReduction_89 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_89 _  = notHappyAtAll 

happyReduce_90 = happyReduce 4 56 happyReduction_90
happyReduction_90 (_ `HappyStk`
	(HappyAbsSyn44  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn31  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn47
		 (AbsGram.ECall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_91 = happySpecReduce_1  56 happyReduction_91
happyReduction_91 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EVar happy_var_1
	)
happyReduction_91 _  = notHappyAtAll 

happyReduce_92 = happySpecReduce_1  56 happyReduction_92
happyReduction_92 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EStr happy_var_1
	)
happyReduction_92 _  = notHappyAtAll 

happyReduce_93 = happySpecReduce_1  56 happyReduction_93
happyReduction_93 (HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EInt happy_var_1
	)
happyReduction_93 _  = notHappyAtAll 

happyReduce_94 = happySpecReduce_1  56 happyReduction_94
happyReduction_94 (HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EChar happy_var_1
	)
happyReduction_94 _  = notHappyAtAll 

happyReduce_95 = happySpecReduce_1  56 happyReduction_95
happyReduction_95 (HappyAbsSyn35  happy_var_1)
	 =  HappyAbsSyn47
		 (AbsGram.EDouble happy_var_1
	)
happyReduction_95 _  = notHappyAtAll 

happyReduce_96 = happySpecReduce_1  56 happyReduction_96
happyReduction_96 _
	 =  HappyAbsSyn47
		 (AbsGram.ETrue
	)

happyReduce_97 = happySpecReduce_1  56 happyReduction_97
happyReduction_97 _
	 =  HappyAbsSyn47
		 (AbsGram.EFalse
	)

happyReduce_98 = happySpecReduce_1  56 happyReduction_98
happyReduction_98 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_98 _  = notHappyAtAll 

happyReduce_99 = happySpecReduce_3  57 happyReduction_99
happyReduction_99 _
	(HappyAbsSyn47  happy_var_2)
	_
	 =  HappyAbsSyn47
		 (AbsGram.EParen happy_var_2
	)
happyReduction_99 _ _ _  = notHappyAtAll 

happyReduce_100 = happySpecReduce_3  57 happyReduction_100
happyReduction_100 _
	(HappyAbsSyn47  happy_var_2)
	_
	 =  HappyAbsSyn47
		 (happy_var_2
	)
happyReduction_100 _ _ _  = notHappyAtAll 

happyReduce_101 = happySpecReduce_1  58 happyReduction_101
happyReduction_101 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_101 _  = notHappyAtAll 

happyReduce_102 = happySpecReduce_1  59 happyReduction_102
happyReduction_102 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_102 _  = notHappyAtAll 

happyReduce_103 = happySpecReduce_1  60 happyReduction_103
happyReduction_103 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_103 _  = notHappyAtAll 

happyReduce_104 = happySpecReduce_1  61 happyReduction_104
happyReduction_104 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_104 _  = notHappyAtAll 

happyReduce_105 = happySpecReduce_1  62 happyReduction_105
happyReduction_105 _
	 =  HappyAbsSyn62
		 (AbsGram.TInt
	)

happyReduce_106 = happySpecReduce_1  62 happyReduction_106
happyReduction_106 _
	 =  HappyAbsSyn62
		 (AbsGram.TDouble
	)

happyReduce_107 = happySpecReduce_1  62 happyReduction_107
happyReduction_107 _
	 =  HappyAbsSyn62
		 (AbsGram.TBool
	)

happyReduce_108 = happySpecReduce_1  62 happyReduction_108
happyReduction_108 _
	 =  HappyAbsSyn62
		 (AbsGram.TStr
	)

happyReduce_109 = happySpecReduce_1  62 happyReduction_109
happyReduction_109 _
	 =  HappyAbsSyn62
		 (AbsGram.TChar
	)

happyReduce_110 = happySpecReduce_2  62 happyReduction_110
happyReduction_110 (HappyAbsSyn62  happy_var_2)
	_
	 =  HappyAbsSyn62
		 (AbsGram.TPtr happy_var_2
	)
happyReduction_110 _ _  = notHappyAtAll 

happyReduce_111 = happyReduce 4 62 happyReduction_111
happyReduction_111 (_ `HappyStk`
	(HappyAbsSyn62  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn62
		 (AbsGram.TArray happy_var_3
	) `HappyStk` happyRest

happyReduce_112 = happySpecReduce_2  63 happyReduction_112
happyReduction_112 (HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn63
		 (AbsGram.PVal happy_var_2
	)
happyReduction_112 _ _  = notHappyAtAll 

happyReduce_113 = happySpecReduce_2  63 happyReduction_113
happyReduction_113 (HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn63
		 (AbsGram.PValres happy_var_2
	)
happyReduction_113 _ _  = notHappyAtAll 

happyReduce_114 = happySpecReduce_2  63 happyReduction_114
happyReduction_114 (HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn63
		 (AbsGram.PName happy_var_2
	)
happyReduction_114 _ _  = notHappyAtAll 

happyReduce_115 = happySpecReduce_2  63 happyReduction_115
happyReduction_115 (HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn63
		 (AbsGram.PRef happy_var_2
	)
happyReduction_115 _ _  = notHappyAtAll 

happyReduce_116 = happySpecReduce_1  63 happyReduction_116
happyReduction_116 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn63
		 (AbsGram.PImpl happy_var_1
	)
happyReduction_116 _  = notHappyAtAll 

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

pExp11 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_18 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp12 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_19 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp13 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_20 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp14 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_21 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_22 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp1 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_23 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp8 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_24 tks) (\x -> case x of {HappyAbsSyn47 z -> happyReturn z; _other -> notHappyAtAll })

pExp10 tks = happySomeParser where
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

