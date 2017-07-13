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
	| HappyAbsSyn27 (Ident)
	| HappyAbsSyn28 (String)
	| HappyAbsSyn29 (Integer)
	| HappyAbsSyn30 (Double)
	| HappyAbsSyn31 (Program)
	| HappyAbsSyn32 (Function)
	| HappyAbsSyn33 (Decl)
	| HappyAbsSyn34 (PDecl)
	| HappyAbsSyn35 ([Function])
	| HappyAbsSyn36 ([Stm])
	| HappyAbsSyn37 ([Decl])
	| HappyAbsSyn38 ([PDecl])
	| HappyAbsSyn39 ([Exp])
	| HappyAbsSyn40 (Stm)
	| HappyAbsSyn41 (Ass)
	| HappyAbsSyn42 (Exp)
	| HappyAbsSyn53 (Type)
	| HappyAbsSyn54 (PMet)

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
 action_174 :: () => Int -> ({-HappyReduction (Err) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Err) HappyAbsSyn)

happyReduce_24,
 happyReduce_25,
 happyReduce_26,
 happyReduce_27,
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
 happyReduce_92 :: () => ({-HappyReduction (Err) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Err) HappyAbsSyn)

action_0 (31) = happyGoto action_96
action_0 (36) = happyGoto action_97
action_0 _ = happyReduce_34

action_1 (56) = happyShift action_78
action_1 (32) = happyGoto action_95
action_1 _ = happyFail

action_2 (90) = happyShift action_25
action_2 (27) = happyGoto action_88
action_2 (33) = happyGoto action_94
action_2 _ = happyFail

action_3 (82) = happyShift action_28
action_3 (84) = happyShift action_29
action_3 (88) = happyShift action_30
action_3 (89) = happyShift action_31
action_3 (90) = happyShift action_25
action_3 (27) = happyGoto action_26
action_3 (34) = happyGoto action_93
action_3 (54) = happyGoto action_87
action_3 _ = happyFail

action_4 (35) = happyGoto action_92
action_4 _ = happyReduce_32

action_5 (36) = happyGoto action_91
action_5 _ = happyReduce_34

action_6 (90) = happyShift action_25
action_6 (27) = happyGoto action_88
action_6 (33) = happyGoto action_89
action_6 (37) = happyGoto action_90
action_6 _ = happyReduce_36

action_7 (82) = happyShift action_28
action_7 (84) = happyShift action_29
action_7 (88) = happyShift action_30
action_7 (89) = happyShift action_31
action_7 (90) = happyShift action_25
action_7 (27) = happyGoto action_26
action_7 (34) = happyGoto action_85
action_7 (38) = happyGoto action_86
action_7 (54) = happyGoto action_87
action_7 _ = happyReduce_39

action_8 (55) = happyShift action_46
action_8 (57) = happyShift action_47
action_8 (59) = happyShift action_48
action_8 (90) = happyShift action_25
action_8 (91) = happyShift action_49
action_8 (92) = happyShift action_50
action_8 (93) = happyShift action_51
action_8 (27) = happyGoto action_38
action_8 (28) = happyGoto action_39
action_8 (29) = happyGoto action_40
action_8 (30) = happyGoto action_41
action_8 (39) = happyGoto action_83
action_8 (42) = happyGoto action_52
action_8 (43) = happyGoto action_53
action_8 (44) = happyGoto action_54
action_8 (45) = happyGoto action_55
action_8 (46) = happyGoto action_56
action_8 (47) = happyGoto action_42
action_8 (48) = happyGoto action_43
action_8 (49) = happyGoto action_44
action_8 (50) = happyGoto action_84
action_8 (51) = happyGoto action_60
action_8 (52) = happyGoto action_58
action_8 _ = happyReduce_42

action_9 (55) = happyShift action_46
action_9 (56) = happyShift action_78
action_9 (57) = happyShift action_47
action_9 (59) = happyShift action_48
action_9 (74) = happyShift action_79
action_9 (78) = happyShift action_80
action_9 (79) = happyShift action_81
action_9 (85) = happyShift action_82
action_9 (90) = happyShift action_25
action_9 (91) = happyShift action_49
action_9 (92) = happyShift action_50
action_9 (93) = happyShift action_51
action_9 (27) = happyGoto action_71
action_9 (28) = happyGoto action_39
action_9 (29) = happyGoto action_40
action_9 (30) = happyGoto action_41
action_9 (32) = happyGoto action_72
action_9 (33) = happyGoto action_73
action_9 (40) = happyGoto action_74
action_9 (41) = happyGoto action_75
action_9 (42) = happyGoto action_52
action_9 (43) = happyGoto action_53
action_9 (44) = happyGoto action_54
action_9 (45) = happyGoto action_55
action_9 (46) = happyGoto action_56
action_9 (47) = happyGoto action_76
action_9 (48) = happyGoto action_43
action_9 (49) = happyGoto action_44
action_9 (50) = happyGoto action_77
action_9 (51) = happyGoto action_60
action_9 (52) = happyGoto action_58
action_9 _ = happyFail

action_10 (55) = happyShift action_46
action_10 (57) = happyShift action_47
action_10 (59) = happyShift action_48
action_10 (90) = happyShift action_25
action_10 (91) = happyShift action_49
action_10 (92) = happyShift action_50
action_10 (93) = happyShift action_51
action_10 (27) = happyGoto action_38
action_10 (28) = happyGoto action_39
action_10 (29) = happyGoto action_40
action_10 (30) = happyGoto action_41
action_10 (41) = happyGoto action_69
action_10 (47) = happyGoto action_70
action_10 (48) = happyGoto action_43
action_10 (49) = happyGoto action_44
action_10 _ = happyFail

action_11 (55) = happyShift action_46
action_11 (57) = happyShift action_47
action_11 (59) = happyShift action_48
action_11 (90) = happyShift action_25
action_11 (91) = happyShift action_49
action_11 (92) = happyShift action_50
action_11 (93) = happyShift action_51
action_11 (27) = happyGoto action_38
action_11 (28) = happyGoto action_39
action_11 (29) = happyGoto action_40
action_11 (30) = happyGoto action_41
action_11 (42) = happyGoto action_68
action_11 (43) = happyGoto action_53
action_11 (44) = happyGoto action_54
action_11 (45) = happyGoto action_55
action_11 (46) = happyGoto action_56
action_11 (47) = happyGoto action_42
action_11 (48) = happyGoto action_43
action_11 (49) = happyGoto action_44
action_11 (52) = happyGoto action_58
action_11 _ = happyFail

action_12 (55) = happyShift action_46
action_12 (57) = happyShift action_47
action_12 (59) = happyShift action_48
action_12 (90) = happyShift action_25
action_12 (91) = happyShift action_49
action_12 (92) = happyShift action_50
action_12 (93) = happyShift action_51
action_12 (27) = happyGoto action_38
action_12 (28) = happyGoto action_39
action_12 (29) = happyGoto action_40
action_12 (30) = happyGoto action_41
action_12 (43) = happyGoto action_67
action_12 (44) = happyGoto action_54
action_12 (45) = happyGoto action_55
action_12 (46) = happyGoto action_56
action_12 (47) = happyGoto action_42
action_12 (48) = happyGoto action_43
action_12 (49) = happyGoto action_44
action_12 (52) = happyGoto action_58
action_12 _ = happyFail

action_13 (55) = happyShift action_46
action_13 (57) = happyShift action_47
action_13 (59) = happyShift action_48
action_13 (90) = happyShift action_25
action_13 (91) = happyShift action_49
action_13 (92) = happyShift action_50
action_13 (93) = happyShift action_51
action_13 (27) = happyGoto action_38
action_13 (28) = happyGoto action_39
action_13 (29) = happyGoto action_40
action_13 (30) = happyGoto action_41
action_13 (44) = happyGoto action_66
action_13 (45) = happyGoto action_55
action_13 (46) = happyGoto action_56
action_13 (47) = happyGoto action_42
action_13 (48) = happyGoto action_43
action_13 (49) = happyGoto action_44
action_13 (52) = happyGoto action_58
action_13 _ = happyFail

action_14 (55) = happyShift action_46
action_14 (57) = happyShift action_47
action_14 (59) = happyShift action_48
action_14 (90) = happyShift action_25
action_14 (91) = happyShift action_49
action_14 (92) = happyShift action_50
action_14 (93) = happyShift action_51
action_14 (27) = happyGoto action_38
action_14 (28) = happyGoto action_39
action_14 (29) = happyGoto action_40
action_14 (30) = happyGoto action_41
action_14 (45) = happyGoto action_65
action_14 (46) = happyGoto action_56
action_14 (47) = happyGoto action_42
action_14 (48) = happyGoto action_43
action_14 (49) = happyGoto action_44
action_14 (52) = happyGoto action_58
action_14 _ = happyFail

action_15 (55) = happyShift action_46
action_15 (57) = happyShift action_47
action_15 (59) = happyShift action_48
action_15 (90) = happyShift action_25
action_15 (91) = happyShift action_49
action_15 (92) = happyShift action_50
action_15 (93) = happyShift action_51
action_15 (27) = happyGoto action_38
action_15 (28) = happyGoto action_39
action_15 (29) = happyGoto action_40
action_15 (30) = happyGoto action_41
action_15 (46) = happyGoto action_64
action_15 (47) = happyGoto action_42
action_15 (48) = happyGoto action_43
action_15 (49) = happyGoto action_44
action_15 (52) = happyGoto action_58
action_15 _ = happyFail

action_16 (55) = happyShift action_46
action_16 (57) = happyShift action_47
action_16 (59) = happyShift action_48
action_16 (90) = happyShift action_25
action_16 (91) = happyShift action_49
action_16 (92) = happyShift action_50
action_16 (93) = happyShift action_51
action_16 (27) = happyGoto action_38
action_16 (28) = happyGoto action_39
action_16 (29) = happyGoto action_40
action_16 (30) = happyGoto action_41
action_16 (47) = happyGoto action_63
action_16 (48) = happyGoto action_43
action_16 (49) = happyGoto action_44
action_16 _ = happyFail

action_17 (57) = happyShift action_47
action_17 (90) = happyShift action_25
action_17 (91) = happyShift action_49
action_17 (92) = happyShift action_50
action_17 (93) = happyShift action_51
action_17 (27) = happyGoto action_38
action_17 (28) = happyGoto action_39
action_17 (29) = happyGoto action_40
action_17 (30) = happyGoto action_41
action_17 (48) = happyGoto action_62
action_17 (49) = happyGoto action_44
action_17 _ = happyFail

action_18 (57) = happyShift action_47
action_18 (90) = happyShift action_25
action_18 (91) = happyShift action_49
action_18 (92) = happyShift action_50
action_18 (93) = happyShift action_51
action_18 (27) = happyGoto action_38
action_18 (28) = happyGoto action_39
action_18 (29) = happyGoto action_40
action_18 (30) = happyGoto action_41
action_18 (49) = happyGoto action_61
action_18 _ = happyFail

action_19 (55) = happyShift action_46
action_19 (57) = happyShift action_47
action_19 (59) = happyShift action_48
action_19 (90) = happyShift action_25
action_19 (91) = happyShift action_49
action_19 (92) = happyShift action_50
action_19 (93) = happyShift action_51
action_19 (27) = happyGoto action_38
action_19 (28) = happyGoto action_39
action_19 (29) = happyGoto action_40
action_19 (30) = happyGoto action_41
action_19 (42) = happyGoto action_52
action_19 (43) = happyGoto action_53
action_19 (44) = happyGoto action_54
action_19 (45) = happyGoto action_55
action_19 (46) = happyGoto action_56
action_19 (47) = happyGoto action_42
action_19 (48) = happyGoto action_43
action_19 (49) = happyGoto action_44
action_19 (50) = happyGoto action_59
action_19 (51) = happyGoto action_60
action_19 (52) = happyGoto action_58
action_19 _ = happyFail

action_20 (55) = happyShift action_46
action_20 (57) = happyShift action_47
action_20 (59) = happyShift action_48
action_20 (90) = happyShift action_25
action_20 (91) = happyShift action_49
action_20 (92) = happyShift action_50
action_20 (93) = happyShift action_51
action_20 (27) = happyGoto action_38
action_20 (28) = happyGoto action_39
action_20 (29) = happyGoto action_40
action_20 (30) = happyGoto action_41
action_20 (42) = happyGoto action_52
action_20 (43) = happyGoto action_53
action_20 (44) = happyGoto action_54
action_20 (45) = happyGoto action_55
action_20 (46) = happyGoto action_56
action_20 (47) = happyGoto action_42
action_20 (48) = happyGoto action_43
action_20 (49) = happyGoto action_44
action_20 (51) = happyGoto action_57
action_20 (52) = happyGoto action_58
action_20 _ = happyFail

action_21 (55) = happyShift action_46
action_21 (57) = happyShift action_47
action_21 (59) = happyShift action_48
action_21 (90) = happyShift action_25
action_21 (91) = happyShift action_49
action_21 (92) = happyShift action_50
action_21 (93) = happyShift action_51
action_21 (27) = happyGoto action_38
action_21 (28) = happyGoto action_39
action_21 (29) = happyGoto action_40
action_21 (30) = happyGoto action_41
action_21 (47) = happyGoto action_42
action_21 (48) = happyGoto action_43
action_21 (49) = happyGoto action_44
action_21 (52) = happyGoto action_45
action_21 _ = happyFail

action_22 (59) = happyShift action_33
action_22 (72) = happyShift action_34
action_22 (73) = happyShift action_35
action_22 (75) = happyShift action_36
action_22 (80) = happyShift action_37
action_22 (53) = happyGoto action_32
action_22 _ = happyFail

action_23 (82) = happyShift action_28
action_23 (84) = happyShift action_29
action_23 (88) = happyShift action_30
action_23 (89) = happyShift action_31
action_23 (90) = happyShift action_25
action_23 (27) = happyGoto action_26
action_23 (54) = happyGoto action_27
action_23 _ = happyFail

action_24 (90) = happyShift action_25
action_24 _ = happyFail

action_25 _ = happyReduce_24

action_26 _ = happyReduce_92

action_27 (94) = happyAccept
action_27 _ = happyFail

action_28 (90) = happyShift action_25
action_28 (27) = happyGoto action_131
action_28 _ = happyFail

action_29 (90) = happyShift action_25
action_29 (27) = happyGoto action_130
action_29 _ = happyFail

action_30 (90) = happyShift action_25
action_30 (27) = happyGoto action_129
action_30 _ = happyFail

action_31 (90) = happyShift action_25
action_31 (27) = happyGoto action_128
action_31 _ = happyFail

action_32 (94) = happyAccept
action_32 _ = happyFail

action_33 (59) = happyShift action_33
action_33 (72) = happyShift action_34
action_33 (73) = happyShift action_35
action_33 (75) = happyShift action_36
action_33 (80) = happyShift action_37
action_33 (53) = happyGoto action_127
action_33 _ = happyFail

action_34 (69) = happyShift action_126
action_34 _ = happyFail

action_35 _ = happyReduce_85

action_36 _ = happyReduce_84

action_37 _ = happyReduce_83

action_38 (57) = happyShift action_113
action_38 _ = happyReduce_74

action_39 _ = happyReduce_75

action_40 _ = happyReduce_76

action_41 _ = happyReduce_77

action_42 _ = happyReduce_82

action_43 (69) = happyShift action_122
action_43 _ = happyReduce_70

action_44 _ = happyReduce_72

action_45 (94) = happyAccept
action_45 _ = happyFail

action_46 (55) = happyShift action_46
action_46 (57) = happyShift action_47
action_46 (59) = happyShift action_48
action_46 (90) = happyShift action_25
action_46 (91) = happyShift action_49
action_46 (92) = happyShift action_50
action_46 (93) = happyShift action_51
action_46 (27) = happyGoto action_38
action_46 (28) = happyGoto action_39
action_46 (29) = happyGoto action_40
action_46 (30) = happyGoto action_41
action_46 (47) = happyGoto action_42
action_46 (48) = happyGoto action_43
action_46 (49) = happyGoto action_44
action_46 (52) = happyGoto action_125
action_46 _ = happyFail

action_47 (55) = happyShift action_46
action_47 (57) = happyShift action_47
action_47 (59) = happyShift action_48
action_47 (90) = happyShift action_25
action_47 (91) = happyShift action_49
action_47 (92) = happyShift action_50
action_47 (93) = happyShift action_51
action_47 (27) = happyGoto action_38
action_47 (28) = happyGoto action_39
action_47 (29) = happyGoto action_40
action_47 (30) = happyGoto action_41
action_47 (42) = happyGoto action_52
action_47 (43) = happyGoto action_53
action_47 (44) = happyGoto action_54
action_47 (45) = happyGoto action_55
action_47 (46) = happyGoto action_56
action_47 (47) = happyGoto action_42
action_47 (48) = happyGoto action_43
action_47 (49) = happyGoto action_44
action_47 (50) = happyGoto action_124
action_47 (51) = happyGoto action_60
action_47 (52) = happyGoto action_58
action_47 _ = happyFail

action_48 (55) = happyShift action_46
action_48 (57) = happyShift action_47
action_48 (59) = happyShift action_48
action_48 (90) = happyShift action_25
action_48 (91) = happyShift action_49
action_48 (92) = happyShift action_50
action_48 (93) = happyShift action_51
action_48 (27) = happyGoto action_38
action_48 (28) = happyGoto action_39
action_48 (29) = happyGoto action_40
action_48 (30) = happyGoto action_41
action_48 (47) = happyGoto action_42
action_48 (48) = happyGoto action_43
action_48 (49) = happyGoto action_44
action_48 (52) = happyGoto action_123
action_48 _ = happyFail

action_49 _ = happyReduce_25

action_50 _ = happyReduce_26

action_51 _ = happyReduce_27

action_52 (83) = happyShift action_114
action_52 _ = happyReduce_81

action_53 (71) = happyShift action_115
action_53 _ = happyReduce_56

action_54 (67) = happyShift action_116
action_54 (68) = happyShift action_117
action_54 _ = happyReduce_58

action_55 (60) = happyShift action_118
action_55 (62) = happyShift action_119
action_55 _ = happyReduce_61

action_56 (59) = happyShift action_120
action_56 (63) = happyShift action_121
action_56 _ = happyReduce_64

action_57 (94) = happyAccept
action_57 _ = happyFail

action_58 _ = happyReduce_67

action_59 (94) = happyAccept
action_59 _ = happyFail

action_60 _ = happyReduce_80

action_61 (94) = happyAccept
action_61 _ = happyFail

action_62 (69) = happyShift action_122
action_62 (94) = happyAccept
action_62 _ = happyFail

action_63 (94) = happyAccept
action_63 _ = happyFail

action_64 (59) = happyShift action_120
action_64 (63) = happyShift action_121
action_64 (94) = happyAccept
action_64 _ = happyFail

action_65 (60) = happyShift action_118
action_65 (62) = happyShift action_119
action_65 (94) = happyAccept
action_65 _ = happyFail

action_66 (67) = happyShift action_116
action_66 (68) = happyShift action_117
action_66 (94) = happyAccept
action_66 _ = happyFail

action_67 (71) = happyShift action_115
action_67 (94) = happyAccept
action_67 _ = happyFail

action_68 (83) = happyShift action_114
action_68 (94) = happyAccept
action_68 _ = happyFail

action_69 (94) = happyAccept
action_69 _ = happyFail

action_70 (65) = happyShift action_111
action_70 _ = happyFail

action_71 (57) = happyShift action_113
action_71 (64) = happyShift action_101
action_71 _ = happyReduce_74

action_72 _ = happyReduce_50

action_73 (66) = happyShift action_112
action_73 _ = happyFail

action_74 (94) = happyAccept
action_74 _ = happyFail

action_75 _ = happyReduce_51

action_76 (65) = happyShift action_111
action_76 _ = happyReduce_82

action_77 (66) = happyShift action_110
action_77 _ = happyFail

action_78 (90) = happyShift action_25
action_78 (27) = happyGoto action_109
action_78 _ = happyFail

action_79 (36) = happyGoto action_108
action_79 _ = happyReduce_34

action_80 (55) = happyShift action_46
action_80 (57) = happyShift action_47
action_80 (59) = happyShift action_48
action_80 (90) = happyShift action_25
action_80 (91) = happyShift action_49
action_80 (92) = happyShift action_50
action_80 (93) = happyShift action_51
action_80 (27) = happyGoto action_38
action_80 (28) = happyGoto action_39
action_80 (29) = happyGoto action_40
action_80 (30) = happyGoto action_41
action_80 (41) = happyGoto action_107
action_80 (47) = happyGoto action_70
action_80 (48) = happyGoto action_43
action_80 (49) = happyGoto action_44
action_80 _ = happyFail

action_81 (55) = happyShift action_46
action_81 (57) = happyShift action_47
action_81 (59) = happyShift action_48
action_81 (90) = happyShift action_25
action_81 (91) = happyShift action_49
action_81 (92) = happyShift action_50
action_81 (93) = happyShift action_51
action_81 (27) = happyGoto action_38
action_81 (28) = happyGoto action_39
action_81 (29) = happyGoto action_40
action_81 (30) = happyGoto action_41
action_81 (42) = happyGoto action_52
action_81 (43) = happyGoto action_53
action_81 (44) = happyGoto action_54
action_81 (45) = happyGoto action_55
action_81 (46) = happyGoto action_56
action_81 (47) = happyGoto action_42
action_81 (48) = happyGoto action_43
action_81 (49) = happyGoto action_44
action_81 (50) = happyGoto action_106
action_81 (51) = happyGoto action_60
action_81 (52) = happyGoto action_58
action_81 _ = happyFail

action_82 (55) = happyShift action_46
action_82 (57) = happyShift action_47
action_82 (59) = happyShift action_48
action_82 (90) = happyShift action_25
action_82 (91) = happyShift action_49
action_82 (92) = happyShift action_50
action_82 (93) = happyShift action_51
action_82 (27) = happyGoto action_38
action_82 (28) = happyGoto action_39
action_82 (29) = happyGoto action_40
action_82 (30) = happyGoto action_41
action_82 (42) = happyGoto action_52
action_82 (43) = happyGoto action_53
action_82 (44) = happyGoto action_54
action_82 (45) = happyGoto action_55
action_82 (46) = happyGoto action_56
action_82 (47) = happyGoto action_42
action_82 (48) = happyGoto action_43
action_82 (49) = happyGoto action_44
action_82 (50) = happyGoto action_105
action_82 (51) = happyGoto action_60
action_82 (52) = happyGoto action_58
action_82 _ = happyFail

action_83 (94) = happyAccept
action_83 _ = happyFail

action_84 (61) = happyShift action_104
action_84 _ = happyReduce_43

action_85 (66) = happyShift action_103
action_85 _ = happyReduce_40

action_86 (94) = happyAccept
action_86 _ = happyFail

action_87 (64) = happyShift action_102
action_87 _ = happyFail

action_88 (64) = happyShift action_101
action_88 _ = happyFail

action_89 (66) = happyShift action_100
action_89 _ = happyReduce_37

action_90 (94) = happyAccept
action_90 _ = happyFail

action_91 (55) = happyShift action_46
action_91 (56) = happyShift action_78
action_91 (57) = happyShift action_47
action_91 (59) = happyShift action_48
action_91 (74) = happyShift action_79
action_91 (78) = happyShift action_80
action_91 (79) = happyShift action_81
action_91 (85) = happyShift action_82
action_91 (90) = happyShift action_25
action_91 (91) = happyShift action_49
action_91 (92) = happyShift action_50
action_91 (93) = happyShift action_51
action_91 (94) = happyAccept
action_91 (27) = happyGoto action_71
action_91 (28) = happyGoto action_39
action_91 (29) = happyGoto action_40
action_91 (30) = happyGoto action_41
action_91 (32) = happyGoto action_72
action_91 (33) = happyGoto action_73
action_91 (40) = happyGoto action_98
action_91 (41) = happyGoto action_75
action_91 (42) = happyGoto action_52
action_91 (43) = happyGoto action_53
action_91 (44) = happyGoto action_54
action_91 (45) = happyGoto action_55
action_91 (46) = happyGoto action_56
action_91 (47) = happyGoto action_76
action_91 (48) = happyGoto action_43
action_91 (49) = happyGoto action_44
action_91 (50) = happyGoto action_77
action_91 (51) = happyGoto action_60
action_91 (52) = happyGoto action_58
action_91 _ = happyFail

action_92 (56) = happyShift action_78
action_92 (94) = happyAccept
action_92 (32) = happyGoto action_99
action_92 _ = happyFail

action_93 (94) = happyAccept
action_93 _ = happyFail

action_94 (94) = happyAccept
action_94 _ = happyFail

action_95 (94) = happyAccept
action_95 _ = happyFail

action_96 (94) = happyAccept
action_96 _ = happyFail

action_97 (55) = happyShift action_46
action_97 (56) = happyShift action_78
action_97 (57) = happyShift action_47
action_97 (59) = happyShift action_48
action_97 (74) = happyShift action_79
action_97 (78) = happyShift action_80
action_97 (79) = happyShift action_81
action_97 (85) = happyShift action_82
action_97 (90) = happyShift action_25
action_97 (91) = happyShift action_49
action_97 (92) = happyShift action_50
action_97 (93) = happyShift action_51
action_97 (27) = happyGoto action_71
action_97 (28) = happyGoto action_39
action_97 (29) = happyGoto action_40
action_97 (30) = happyGoto action_41
action_97 (32) = happyGoto action_72
action_97 (33) = happyGoto action_73
action_97 (40) = happyGoto action_98
action_97 (41) = happyGoto action_75
action_97 (42) = happyGoto action_52
action_97 (43) = happyGoto action_53
action_97 (44) = happyGoto action_54
action_97 (45) = happyGoto action_55
action_97 (46) = happyGoto action_56
action_97 (47) = happyGoto action_76
action_97 (48) = happyGoto action_43
action_97 (49) = happyGoto action_44
action_97 (50) = happyGoto action_77
action_97 (51) = happyGoto action_60
action_97 (52) = happyGoto action_58
action_97 _ = happyReduce_28

action_98 _ = happyReduce_35

action_99 _ = happyReduce_33

action_100 (90) = happyShift action_25
action_100 (27) = happyGoto action_88
action_100 (33) = happyGoto action_89
action_100 (37) = happyGoto action_154
action_100 _ = happyReduce_36

action_101 (59) = happyShift action_33
action_101 (72) = happyShift action_34
action_101 (73) = happyShift action_35
action_101 (75) = happyShift action_36
action_101 (80) = happyShift action_37
action_101 (53) = happyGoto action_153
action_101 _ = happyFail

action_102 (59) = happyShift action_33
action_102 (72) = happyShift action_34
action_102 (73) = happyShift action_35
action_102 (75) = happyShift action_36
action_102 (80) = happyShift action_37
action_102 (53) = happyGoto action_152
action_102 _ = happyFail

action_103 (82) = happyShift action_28
action_103 (84) = happyShift action_29
action_103 (88) = happyShift action_30
action_103 (89) = happyShift action_31
action_103 (90) = happyShift action_25
action_103 (27) = happyGoto action_26
action_103 (34) = happyGoto action_85
action_103 (38) = happyGoto action_151
action_103 (54) = happyGoto action_87
action_103 _ = happyReduce_39

action_104 (55) = happyShift action_46
action_104 (57) = happyShift action_47
action_104 (59) = happyShift action_48
action_104 (90) = happyShift action_25
action_104 (91) = happyShift action_49
action_104 (92) = happyShift action_50
action_104 (93) = happyShift action_51
action_104 (27) = happyGoto action_38
action_104 (28) = happyGoto action_39
action_104 (29) = happyGoto action_40
action_104 (30) = happyGoto action_41
action_104 (39) = happyGoto action_150
action_104 (42) = happyGoto action_52
action_104 (43) = happyGoto action_53
action_104 (44) = happyGoto action_54
action_104 (45) = happyGoto action_55
action_104 (46) = happyGoto action_56
action_104 (47) = happyGoto action_42
action_104 (48) = happyGoto action_43
action_104 (49) = happyGoto action_44
action_104 (50) = happyGoto action_84
action_104 (51) = happyGoto action_60
action_104 (52) = happyGoto action_58
action_104 _ = happyReduce_42

action_105 (66) = happyShift action_149
action_105 _ = happyFail

action_106 (86) = happyShift action_148
action_106 _ = happyFail

action_107 (87) = happyShift action_147
action_107 _ = happyFail

action_108 (55) = happyShift action_46
action_108 (56) = happyShift action_78
action_108 (57) = happyShift action_47
action_108 (59) = happyShift action_48
action_108 (74) = happyShift action_79
action_108 (77) = happyShift action_146
action_108 (78) = happyShift action_80
action_108 (79) = happyShift action_81
action_108 (85) = happyShift action_82
action_108 (90) = happyShift action_25
action_108 (91) = happyShift action_49
action_108 (92) = happyShift action_50
action_108 (93) = happyShift action_51
action_108 (27) = happyGoto action_71
action_108 (28) = happyGoto action_39
action_108 (29) = happyGoto action_40
action_108 (30) = happyGoto action_41
action_108 (32) = happyGoto action_72
action_108 (33) = happyGoto action_73
action_108 (40) = happyGoto action_98
action_108 (41) = happyGoto action_75
action_108 (42) = happyGoto action_52
action_108 (43) = happyGoto action_53
action_108 (44) = happyGoto action_54
action_108 (45) = happyGoto action_55
action_108 (46) = happyGoto action_56
action_108 (47) = happyGoto action_76
action_108 (48) = happyGoto action_43
action_108 (49) = happyGoto action_44
action_108 (50) = happyGoto action_77
action_108 (51) = happyGoto action_60
action_108 (52) = happyGoto action_58
action_108 _ = happyFail

action_109 (57) = happyShift action_145
action_109 _ = happyFail

action_110 _ = happyReduce_46

action_111 (55) = happyShift action_46
action_111 (57) = happyShift action_47
action_111 (59) = happyShift action_48
action_111 (90) = happyShift action_25
action_111 (91) = happyShift action_49
action_111 (92) = happyShift action_50
action_111 (93) = happyShift action_51
action_111 (27) = happyGoto action_38
action_111 (28) = happyGoto action_39
action_111 (29) = happyGoto action_40
action_111 (30) = happyGoto action_41
action_111 (42) = happyGoto action_52
action_111 (43) = happyGoto action_53
action_111 (44) = happyGoto action_54
action_111 (45) = happyGoto action_55
action_111 (46) = happyGoto action_56
action_111 (47) = happyGoto action_42
action_111 (48) = happyGoto action_43
action_111 (49) = happyGoto action_44
action_111 (50) = happyGoto action_144
action_111 (51) = happyGoto action_60
action_111 (52) = happyGoto action_58
action_111 _ = happyFail

action_112 _ = happyReduce_45

action_113 (55) = happyShift action_46
action_113 (57) = happyShift action_47
action_113 (59) = happyShift action_48
action_113 (90) = happyShift action_25
action_113 (91) = happyShift action_49
action_113 (92) = happyShift action_50
action_113 (93) = happyShift action_51
action_113 (27) = happyGoto action_38
action_113 (28) = happyGoto action_39
action_113 (29) = happyGoto action_40
action_113 (30) = happyGoto action_41
action_113 (39) = happyGoto action_143
action_113 (42) = happyGoto action_52
action_113 (43) = happyGoto action_53
action_113 (44) = happyGoto action_54
action_113 (45) = happyGoto action_55
action_113 (46) = happyGoto action_56
action_113 (47) = happyGoto action_42
action_113 (48) = happyGoto action_43
action_113 (49) = happyGoto action_44
action_113 (50) = happyGoto action_84
action_113 (51) = happyGoto action_60
action_113 (52) = happyGoto action_58
action_113 _ = happyReduce_42

action_114 (55) = happyShift action_46
action_114 (57) = happyShift action_47
action_114 (59) = happyShift action_48
action_114 (90) = happyShift action_25
action_114 (91) = happyShift action_49
action_114 (92) = happyShift action_50
action_114 (93) = happyShift action_51
action_114 (27) = happyGoto action_38
action_114 (28) = happyGoto action_39
action_114 (29) = happyGoto action_40
action_114 (30) = happyGoto action_41
action_114 (43) = happyGoto action_142
action_114 (44) = happyGoto action_54
action_114 (45) = happyGoto action_55
action_114 (46) = happyGoto action_56
action_114 (47) = happyGoto action_42
action_114 (48) = happyGoto action_43
action_114 (49) = happyGoto action_44
action_114 (52) = happyGoto action_58
action_114 _ = happyFail

action_115 (55) = happyShift action_46
action_115 (57) = happyShift action_47
action_115 (59) = happyShift action_48
action_115 (90) = happyShift action_25
action_115 (91) = happyShift action_49
action_115 (92) = happyShift action_50
action_115 (93) = happyShift action_51
action_115 (27) = happyGoto action_38
action_115 (28) = happyGoto action_39
action_115 (29) = happyGoto action_40
action_115 (30) = happyGoto action_41
action_115 (44) = happyGoto action_141
action_115 (45) = happyGoto action_55
action_115 (46) = happyGoto action_56
action_115 (47) = happyGoto action_42
action_115 (48) = happyGoto action_43
action_115 (49) = happyGoto action_44
action_115 (52) = happyGoto action_58
action_115 _ = happyFail

action_116 (55) = happyShift action_46
action_116 (57) = happyShift action_47
action_116 (59) = happyShift action_48
action_116 (90) = happyShift action_25
action_116 (91) = happyShift action_49
action_116 (92) = happyShift action_50
action_116 (93) = happyShift action_51
action_116 (27) = happyGoto action_38
action_116 (28) = happyGoto action_39
action_116 (29) = happyGoto action_40
action_116 (30) = happyGoto action_41
action_116 (45) = happyGoto action_140
action_116 (46) = happyGoto action_56
action_116 (47) = happyGoto action_42
action_116 (48) = happyGoto action_43
action_116 (49) = happyGoto action_44
action_116 (52) = happyGoto action_58
action_116 _ = happyFail

action_117 (55) = happyShift action_46
action_117 (57) = happyShift action_47
action_117 (59) = happyShift action_48
action_117 (90) = happyShift action_25
action_117 (91) = happyShift action_49
action_117 (92) = happyShift action_50
action_117 (93) = happyShift action_51
action_117 (27) = happyGoto action_38
action_117 (28) = happyGoto action_39
action_117 (29) = happyGoto action_40
action_117 (30) = happyGoto action_41
action_117 (45) = happyGoto action_139
action_117 (46) = happyGoto action_56
action_117 (47) = happyGoto action_42
action_117 (48) = happyGoto action_43
action_117 (49) = happyGoto action_44
action_117 (52) = happyGoto action_58
action_117 _ = happyFail

action_118 (55) = happyShift action_46
action_118 (57) = happyShift action_47
action_118 (59) = happyShift action_48
action_118 (90) = happyShift action_25
action_118 (91) = happyShift action_49
action_118 (92) = happyShift action_50
action_118 (93) = happyShift action_51
action_118 (27) = happyGoto action_38
action_118 (28) = happyGoto action_39
action_118 (29) = happyGoto action_40
action_118 (30) = happyGoto action_41
action_118 (46) = happyGoto action_138
action_118 (47) = happyGoto action_42
action_118 (48) = happyGoto action_43
action_118 (49) = happyGoto action_44
action_118 (52) = happyGoto action_58
action_118 _ = happyFail

action_119 (55) = happyShift action_46
action_119 (57) = happyShift action_47
action_119 (59) = happyShift action_48
action_119 (90) = happyShift action_25
action_119 (91) = happyShift action_49
action_119 (92) = happyShift action_50
action_119 (93) = happyShift action_51
action_119 (27) = happyGoto action_38
action_119 (28) = happyGoto action_39
action_119 (29) = happyGoto action_40
action_119 (30) = happyGoto action_41
action_119 (46) = happyGoto action_137
action_119 (47) = happyGoto action_42
action_119 (48) = happyGoto action_43
action_119 (49) = happyGoto action_44
action_119 (52) = happyGoto action_58
action_119 _ = happyFail

action_120 (55) = happyShift action_46
action_120 (57) = happyShift action_47
action_120 (59) = happyShift action_48
action_120 (90) = happyShift action_25
action_120 (91) = happyShift action_49
action_120 (92) = happyShift action_50
action_120 (93) = happyShift action_51
action_120 (27) = happyGoto action_38
action_120 (28) = happyGoto action_39
action_120 (29) = happyGoto action_40
action_120 (30) = happyGoto action_41
action_120 (47) = happyGoto action_42
action_120 (48) = happyGoto action_43
action_120 (49) = happyGoto action_44
action_120 (52) = happyGoto action_136
action_120 _ = happyFail

action_121 (55) = happyShift action_46
action_121 (57) = happyShift action_47
action_121 (59) = happyShift action_48
action_121 (90) = happyShift action_25
action_121 (91) = happyShift action_49
action_121 (92) = happyShift action_50
action_121 (93) = happyShift action_51
action_121 (27) = happyGoto action_38
action_121 (28) = happyGoto action_39
action_121 (29) = happyGoto action_40
action_121 (30) = happyGoto action_41
action_121 (47) = happyGoto action_42
action_121 (48) = happyGoto action_43
action_121 (49) = happyGoto action_44
action_121 (52) = happyGoto action_135
action_121 _ = happyFail

action_122 (55) = happyShift action_46
action_122 (57) = happyShift action_47
action_122 (59) = happyShift action_48
action_122 (90) = happyShift action_25
action_122 (91) = happyShift action_49
action_122 (92) = happyShift action_50
action_122 (93) = happyShift action_51
action_122 (27) = happyGoto action_38
action_122 (28) = happyGoto action_39
action_122 (29) = happyGoto action_40
action_122 (30) = happyGoto action_41
action_122 (42) = happyGoto action_52
action_122 (43) = happyGoto action_53
action_122 (44) = happyGoto action_54
action_122 (45) = happyGoto action_55
action_122 (46) = happyGoto action_56
action_122 (47) = happyGoto action_42
action_122 (48) = happyGoto action_43
action_122 (49) = happyGoto action_44
action_122 (50) = happyGoto action_134
action_122 (51) = happyGoto action_60
action_122 (52) = happyGoto action_58
action_122 _ = happyFail

action_123 _ = happyReduce_68

action_124 (58) = happyShift action_133
action_124 _ = happyFail

action_125 _ = happyReduce_69

action_126 (59) = happyShift action_33
action_126 (72) = happyShift action_34
action_126 (73) = happyShift action_35
action_126 (75) = happyShift action_36
action_126 (80) = happyShift action_37
action_126 (53) = happyGoto action_132
action_126 _ = happyFail

action_127 _ = happyReduce_87

action_128 _ = happyReduce_88

action_129 _ = happyReduce_89

action_130 _ = happyReduce_91

action_131 _ = happyReduce_90

action_132 (70) = happyShift action_161
action_132 _ = happyFail

action_133 (58) = happyReduce_79
action_133 (59) = happyReduce_79
action_133 (60) = happyReduce_79
action_133 (61) = happyReduce_79
action_133 (62) = happyReduce_79
action_133 (63) = happyReduce_79
action_133 (65) = happyReduce_79
action_133 (66) = happyReduce_79
action_133 (67) = happyReduce_79
action_133 (68) = happyReduce_79
action_133 (69) = happyReduce_79
action_133 (70) = happyReduce_79
action_133 (71) = happyReduce_79
action_133 (81) = happyReduce_79
action_133 (83) = happyReduce_79
action_133 (86) = happyReduce_79
action_133 (94) = happyReduce_79
action_133 _ = happyReduce_79

action_134 (70) = happyShift action_160
action_134 _ = happyFail

action_135 _ = happyReduce_66

action_136 _ = happyReduce_65

action_137 (59) = happyShift action_120
action_137 (63) = happyShift action_121
action_137 _ = happyReduce_63

action_138 (59) = happyShift action_120
action_138 (63) = happyShift action_121
action_138 _ = happyReduce_62

action_139 (60) = happyShift action_118
action_139 (62) = happyShift action_119
action_139 _ = happyReduce_60

action_140 (60) = happyShift action_118
action_140 (62) = happyShift action_119
action_140 _ = happyReduce_59

action_141 (67) = happyShift action_116
action_141 (68) = happyShift action_117
action_141 _ = happyReduce_57

action_142 (71) = happyShift action_115
action_142 _ = happyReduce_55

action_143 (58) = happyShift action_159
action_143 _ = happyFail

action_144 (66) = happyShift action_158
action_144 _ = happyFail

action_145 (82) = happyShift action_28
action_145 (84) = happyShift action_29
action_145 (88) = happyShift action_30
action_145 (89) = happyShift action_31
action_145 (90) = happyShift action_25
action_145 (27) = happyGoto action_26
action_145 (34) = happyGoto action_85
action_145 (38) = happyGoto action_157
action_145 (54) = happyGoto action_87
action_145 _ = happyReduce_39

action_146 _ = happyReduce_47

action_147 (55) = happyShift action_46
action_147 (57) = happyShift action_47
action_147 (59) = happyShift action_48
action_147 (90) = happyShift action_25
action_147 (91) = happyShift action_49
action_147 (92) = happyShift action_50
action_147 (93) = happyShift action_51
action_147 (27) = happyGoto action_38
action_147 (28) = happyGoto action_39
action_147 (29) = happyGoto action_40
action_147 (30) = happyGoto action_41
action_147 (42) = happyGoto action_52
action_147 (43) = happyGoto action_53
action_147 (44) = happyGoto action_54
action_147 (45) = happyGoto action_55
action_147 (46) = happyGoto action_56
action_147 (47) = happyGoto action_42
action_147 (48) = happyGoto action_43
action_147 (49) = happyGoto action_44
action_147 (50) = happyGoto action_156
action_147 (51) = happyGoto action_60
action_147 (52) = happyGoto action_58
action_147 _ = happyFail

action_148 (36) = happyGoto action_155
action_148 _ = happyReduce_34

action_149 _ = happyReduce_49

action_150 _ = happyReduce_44

action_151 _ = happyReduce_41

action_152 _ = happyReduce_31

action_153 _ = happyReduce_30

action_154 _ = happyReduce_38

action_155 (55) = happyShift action_46
action_155 (56) = happyShift action_78
action_155 (57) = happyShift action_47
action_155 (59) = happyShift action_48
action_155 (74) = happyShift action_79
action_155 (76) = happyShift action_164
action_155 (77) = happyShift action_165
action_155 (78) = happyShift action_80
action_155 (79) = happyShift action_81
action_155 (85) = happyShift action_82
action_155 (90) = happyShift action_25
action_155 (91) = happyShift action_49
action_155 (92) = happyShift action_50
action_155 (93) = happyShift action_51
action_155 (27) = happyGoto action_71
action_155 (28) = happyGoto action_39
action_155 (29) = happyGoto action_40
action_155 (30) = happyGoto action_41
action_155 (32) = happyGoto action_72
action_155 (33) = happyGoto action_73
action_155 (40) = happyGoto action_98
action_155 (41) = happyGoto action_75
action_155 (42) = happyGoto action_52
action_155 (43) = happyGoto action_53
action_155 (44) = happyGoto action_54
action_155 (45) = happyGoto action_55
action_155 (46) = happyGoto action_56
action_155 (47) = happyGoto action_76
action_155 (48) = happyGoto action_43
action_155 (49) = happyGoto action_44
action_155 (50) = happyGoto action_77
action_155 (51) = happyGoto action_60
action_155 (52) = happyGoto action_58
action_155 _ = happyFail

action_156 (81) = happyShift action_163
action_156 _ = happyFail

action_157 (58) = happyShift action_162
action_157 _ = happyFail

action_158 _ = happyReduce_54

action_159 _ = happyReduce_73

action_160 _ = happyReduce_71

action_161 _ = happyReduce_86

action_162 (64) = happyShift action_168
action_162 _ = happyFail

action_163 (36) = happyGoto action_167
action_163 _ = happyReduce_34

action_164 (36) = happyGoto action_166
action_164 _ = happyReduce_34

action_165 _ = happyReduce_52

action_166 (55) = happyShift action_46
action_166 (56) = happyShift action_78
action_166 (57) = happyShift action_47
action_166 (59) = happyShift action_48
action_166 (74) = happyShift action_79
action_166 (77) = happyShift action_171
action_166 (78) = happyShift action_80
action_166 (79) = happyShift action_81
action_166 (85) = happyShift action_82
action_166 (90) = happyShift action_25
action_166 (91) = happyShift action_49
action_166 (92) = happyShift action_50
action_166 (93) = happyShift action_51
action_166 (27) = happyGoto action_71
action_166 (28) = happyGoto action_39
action_166 (29) = happyGoto action_40
action_166 (30) = happyGoto action_41
action_166 (32) = happyGoto action_72
action_166 (33) = happyGoto action_73
action_166 (40) = happyGoto action_98
action_166 (41) = happyGoto action_75
action_166 (42) = happyGoto action_52
action_166 (43) = happyGoto action_53
action_166 (44) = happyGoto action_54
action_166 (45) = happyGoto action_55
action_166 (46) = happyGoto action_56
action_166 (47) = happyGoto action_76
action_166 (48) = happyGoto action_43
action_166 (49) = happyGoto action_44
action_166 (50) = happyGoto action_77
action_166 (51) = happyGoto action_60
action_166 (52) = happyGoto action_58
action_166 _ = happyFail

action_167 (55) = happyShift action_46
action_167 (56) = happyShift action_78
action_167 (57) = happyShift action_47
action_167 (59) = happyShift action_48
action_167 (74) = happyShift action_79
action_167 (77) = happyShift action_170
action_167 (78) = happyShift action_80
action_167 (79) = happyShift action_81
action_167 (85) = happyShift action_82
action_167 (90) = happyShift action_25
action_167 (91) = happyShift action_49
action_167 (92) = happyShift action_50
action_167 (93) = happyShift action_51
action_167 (27) = happyGoto action_71
action_167 (28) = happyGoto action_39
action_167 (29) = happyGoto action_40
action_167 (30) = happyGoto action_41
action_167 (32) = happyGoto action_72
action_167 (33) = happyGoto action_73
action_167 (40) = happyGoto action_98
action_167 (41) = happyGoto action_75
action_167 (42) = happyGoto action_52
action_167 (43) = happyGoto action_53
action_167 (44) = happyGoto action_54
action_167 (45) = happyGoto action_55
action_167 (46) = happyGoto action_56
action_167 (47) = happyGoto action_76
action_167 (48) = happyGoto action_43
action_167 (49) = happyGoto action_44
action_167 (50) = happyGoto action_77
action_167 (51) = happyGoto action_60
action_167 (52) = happyGoto action_58
action_167 _ = happyFail

action_168 (59) = happyShift action_33
action_168 (72) = happyShift action_34
action_168 (73) = happyShift action_35
action_168 (75) = happyShift action_36
action_168 (80) = happyShift action_37
action_168 (53) = happyGoto action_169
action_168 _ = happyFail

action_169 (74) = happyShift action_172
action_169 _ = happyFail

action_170 _ = happyReduce_48

action_171 _ = happyReduce_53

action_172 (36) = happyGoto action_173
action_172 _ = happyReduce_34

action_173 (55) = happyShift action_46
action_173 (56) = happyShift action_78
action_173 (57) = happyShift action_47
action_173 (59) = happyShift action_48
action_173 (74) = happyShift action_79
action_173 (77) = happyShift action_174
action_173 (78) = happyShift action_80
action_173 (79) = happyShift action_81
action_173 (85) = happyShift action_82
action_173 (90) = happyShift action_25
action_173 (91) = happyShift action_49
action_173 (92) = happyShift action_50
action_173 (93) = happyShift action_51
action_173 (27) = happyGoto action_71
action_173 (28) = happyGoto action_39
action_173 (29) = happyGoto action_40
action_173 (30) = happyGoto action_41
action_173 (32) = happyGoto action_72
action_173 (33) = happyGoto action_73
action_173 (40) = happyGoto action_98
action_173 (41) = happyGoto action_75
action_173 (42) = happyGoto action_52
action_173 (43) = happyGoto action_53
action_173 (44) = happyGoto action_54
action_173 (45) = happyGoto action_55
action_173 (46) = happyGoto action_56
action_173 (47) = happyGoto action_76
action_173 (48) = happyGoto action_43
action_173 (49) = happyGoto action_44
action_173 (50) = happyGoto action_77
action_173 (51) = happyGoto action_60
action_173 (52) = happyGoto action_58
action_173 _ = happyFail

action_174 _ = happyReduce_29

happyReduce_24 = happySpecReduce_1  27 happyReduction_24
happyReduction_24 (HappyTerminal (PT _ (TV happy_var_1)))
	 =  HappyAbsSyn27
		 (Ident happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  28 happyReduction_25
happyReduction_25 (HappyTerminal (PT _ (TL happy_var_1)))
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  29 happyReduction_26
happyReduction_26 (HappyTerminal (PT _ (TI happy_var_1)))
	 =  HappyAbsSyn29
		 ((read ( happy_var_1)) :: Integer
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  30 happyReduction_27
happyReduction_27 (HappyTerminal (PT _ (TD happy_var_1)))
	 =  HappyAbsSyn30
		 ((read ( happy_var_1)) :: Double
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  31 happyReduction_28
happyReduction_28 (HappyAbsSyn36  happy_var_1)
	 =  HappyAbsSyn31
		 (AbsGram.Prog (reverse happy_var_1)
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happyReduce 10 32 happyReduction_29
happyReduction_29 (_ `HappyStk`
	(HappyAbsSyn36  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn53  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn38  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn27  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn32
		 (AbsGram.Fun happy_var_2 happy_var_4 happy_var_7 (reverse happy_var_9)
	) `HappyStk` happyRest

happyReduce_30 = happySpecReduce_3  33 happyReduction_30
happyReduction_30 (HappyAbsSyn53  happy_var_3)
	_
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn33
		 (AbsGram.Dec happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  34 happyReduction_31
happyReduction_31 (HappyAbsSyn53  happy_var_3)
	_
	(HappyAbsSyn54  happy_var_1)
	 =  HappyAbsSyn34
		 (AbsGram.PDec happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_0  35 happyReduction_32
happyReduction_32  =  HappyAbsSyn35
		 ([]
	)

happyReduce_33 = happySpecReduce_2  35 happyReduction_33
happyReduction_33 (HappyAbsSyn32  happy_var_2)
	(HappyAbsSyn35  happy_var_1)
	 =  HappyAbsSyn35
		 (flip (:) happy_var_1 happy_var_2
	)
happyReduction_33 _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_0  36 happyReduction_34
happyReduction_34  =  HappyAbsSyn36
		 ([]
	)

happyReduce_35 = happySpecReduce_2  36 happyReduction_35
happyReduction_35 (HappyAbsSyn40  happy_var_2)
	(HappyAbsSyn36  happy_var_1)
	 =  HappyAbsSyn36
		 (flip (:) happy_var_1 happy_var_2
	)
happyReduction_35 _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_0  37 happyReduction_36
happyReduction_36  =  HappyAbsSyn37
		 ([]
	)

happyReduce_37 = happySpecReduce_1  37 happyReduction_37
happyReduction_37 (HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn37
		 ((:[]) happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  37 happyReduction_38
happyReduction_38 (HappyAbsSyn37  happy_var_3)
	_
	(HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn37
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_0  38 happyReduction_39
happyReduction_39  =  HappyAbsSyn38
		 ([]
	)

happyReduce_40 = happySpecReduce_1  38 happyReduction_40
happyReduction_40 (HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn38
		 ((:[]) happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  38 happyReduction_41
happyReduction_41 (HappyAbsSyn38  happy_var_3)
	_
	(HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn38
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_0  39 happyReduction_42
happyReduction_42  =  HappyAbsSyn39
		 ([]
	)

happyReduce_43 = happySpecReduce_1  39 happyReduction_43
happyReduction_43 (HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn39
		 ((:[]) happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  39 happyReduction_44
happyReduction_44 (HappyAbsSyn39  happy_var_3)
	_
	(HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn39
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_2  40 happyReduction_45
happyReduction_45 _
	(HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn40
		 (AbsGram.SDecl happy_var_1
	)
happyReduction_45 _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_2  40 happyReduction_46
happyReduction_46 _
	(HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn40
		 (AbsGram.SExp happy_var_1
	)
happyReduction_46 _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  40 happyReduction_47
happyReduction_47 _
	(HappyAbsSyn36  happy_var_2)
	_
	 =  HappyAbsSyn40
		 (AbsGram.SBlock (reverse happy_var_2)
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happyReduce 7 40 happyReduction_48
happyReduction_48 (_ `HappyStk`
	(HappyAbsSyn36  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn42  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn41  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn40
		 (AbsGram.SWhile happy_var_2 happy_var_4 (reverse happy_var_6)
	) `HappyStk` happyRest

happyReduce_49 = happySpecReduce_3  40 happyReduction_49
happyReduction_49 _
	(HappyAbsSyn42  happy_var_2)
	_
	 =  HappyAbsSyn40
		 (AbsGram.SReturn happy_var_2
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  40 happyReduction_50
happyReduction_50 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn40
		 (AbsGram.SFunc happy_var_1
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  40 happyReduction_51
happyReduction_51 (HappyAbsSyn41  happy_var_1)
	 =  HappyAbsSyn40
		 (AbsGram.SAss happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happyReduce 5 40 happyReduction_52
happyReduction_52 (_ `HappyStk`
	(HappyAbsSyn36  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn42  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn40
		 (AbsGram.SCond happy_var_2 (reverse happy_var_4)
	) `HappyStk` happyRest

happyReduce_53 = happyReduce 7 40 happyReduction_53
happyReduction_53 (_ `HappyStk`
	(HappyAbsSyn36  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn36  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn42  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn40
		 (AbsGram.SCondEl happy_var_2 (reverse happy_var_4) (reverse happy_var_6)
	) `HappyStk` happyRest

happyReduce_54 = happyReduce 4 41 happyReduction_54
happyReduction_54 (_ `HappyStk`
	(HappyAbsSyn42  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn42  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn41
		 (AbsGram.DAss happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_55 = happySpecReduce_3  42 happyReduction_55
happyReduction_55 (HappyAbsSyn42  happy_var_3)
	_
	(HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn42
		 (AbsGram.EOr happy_var_1 happy_var_3
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_1  42 happyReduction_56
happyReduction_56 (HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn42
		 (happy_var_1
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_3  43 happyReduction_57
happyReduction_57 (HappyAbsSyn42  happy_var_3)
	_
	(HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn42
		 (AbsGram.EAnd happy_var_1 happy_var_3
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  43 happyReduction_58
happyReduction_58 (HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn42
		 (happy_var_1
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  44 happyReduction_59
happyReduction_59 (HappyAbsSyn42  happy_var_3)
	_
	(HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn42
		 (AbsGram.ELt happy_var_1 happy_var_3
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_3  44 happyReduction_60
happyReduction_60 (HappyAbsSyn42  happy_var_3)
	_
	(HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn42
		 (AbsGram.EGt happy_var_1 happy_var_3
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_1  44 happyReduction_61
happyReduction_61 (HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn42
		 (happy_var_1
	)
happyReduction_61 _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_3  45 happyReduction_62
happyReduction_62 (HappyAbsSyn42  happy_var_3)
	_
	(HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn42
		 (AbsGram.EAdd happy_var_1 happy_var_3
	)
happyReduction_62 _ _ _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_3  45 happyReduction_63
happyReduction_63 (HappyAbsSyn42  happy_var_3)
	_
	(HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn42
		 (AbsGram.ESub happy_var_1 happy_var_3
	)
happyReduction_63 _ _ _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_1  45 happyReduction_64
happyReduction_64 (HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn42
		 (happy_var_1
	)
happyReduction_64 _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_3  46 happyReduction_65
happyReduction_65 (HappyAbsSyn42  happy_var_3)
	_
	(HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn42
		 (AbsGram.EMul happy_var_1 happy_var_3
	)
happyReduction_65 _ _ _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_3  46 happyReduction_66
happyReduction_66 (HappyAbsSyn42  happy_var_3)
	_
	(HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn42
		 (AbsGram.EDiv happy_var_1 happy_var_3
	)
happyReduction_66 _ _ _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_1  46 happyReduction_67
happyReduction_67 (HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn42
		 (happy_var_1
	)
happyReduction_67 _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_2  47 happyReduction_68
happyReduction_68 (HappyAbsSyn42  happy_var_2)
	_
	 =  HappyAbsSyn42
		 (AbsGram.EDeref happy_var_2
	)
happyReduction_68 _ _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_2  47 happyReduction_69
happyReduction_69 (HappyAbsSyn42  happy_var_2)
	_
	 =  HappyAbsSyn42
		 (AbsGram.ENot happy_var_2
	)
happyReduction_69 _ _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_1  47 happyReduction_70
happyReduction_70 (HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn42
		 (happy_var_1
	)
happyReduction_70 _  = notHappyAtAll 

happyReduce_71 = happyReduce 4 48 happyReduction_71
happyReduction_71 (_ `HappyStk`
	(HappyAbsSyn42  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn42  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn42
		 (AbsGram.EArr happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_72 = happySpecReduce_1  48 happyReduction_72
happyReduction_72 (HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn42
		 (happy_var_1
	)
happyReduction_72 _  = notHappyAtAll 

happyReduce_73 = happyReduce 4 49 happyReduction_73
happyReduction_73 (_ `HappyStk`
	(HappyAbsSyn39  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn27  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn42
		 (AbsGram.ECall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_74 = happySpecReduce_1  49 happyReduction_74
happyReduction_74 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn42
		 (AbsGram.EVar happy_var_1
	)
happyReduction_74 _  = notHappyAtAll 

happyReduce_75 = happySpecReduce_1  49 happyReduction_75
happyReduction_75 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn42
		 (AbsGram.EStr happy_var_1
	)
happyReduction_75 _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_1  49 happyReduction_76
happyReduction_76 (HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn42
		 (AbsGram.EInt happy_var_1
	)
happyReduction_76 _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_1  49 happyReduction_77
happyReduction_77 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn42
		 (AbsGram.EDouble happy_var_1
	)
happyReduction_77 _  = notHappyAtAll 

happyReduce_78 = happySpecReduce_3  49 happyReduction_78
happyReduction_78 _
	(HappyAbsSyn42  happy_var_2)
	_
	 =  HappyAbsSyn42
		 (AbsGram.EParen happy_var_2
	)
happyReduction_78 _ _ _  = notHappyAtAll 

happyReduce_79 = happySpecReduce_3  49 happyReduction_79
happyReduction_79 _
	(HappyAbsSyn42  happy_var_2)
	_
	 =  HappyAbsSyn42
		 (happy_var_2
	)
happyReduction_79 _ _ _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_1  50 happyReduction_80
happyReduction_80 (HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn42
		 (happy_var_1
	)
happyReduction_80 _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_1  51 happyReduction_81
happyReduction_81 (HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn42
		 (happy_var_1
	)
happyReduction_81 _  = notHappyAtAll 

happyReduce_82 = happySpecReduce_1  52 happyReduction_82
happyReduction_82 (HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn42
		 (happy_var_1
	)
happyReduction_82 _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_1  53 happyReduction_83
happyReduction_83 _
	 =  HappyAbsSyn53
		 (AbsGram.TInt
	)

happyReduce_84 = happySpecReduce_1  53 happyReduction_84
happyReduction_84 _
	 =  HappyAbsSyn53
		 (AbsGram.TDouble
	)

happyReduce_85 = happySpecReduce_1  53 happyReduction_85
happyReduction_85 _
	 =  HappyAbsSyn53
		 (AbsGram.TBool
	)

happyReduce_86 = happyReduce 4 53 happyReduction_86
happyReduction_86 (_ `HappyStk`
	(HappyAbsSyn53  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn53
		 (AbsGram.TArray happy_var_3
	) `HappyStk` happyRest

happyReduce_87 = happySpecReduce_2  53 happyReduction_87
happyReduction_87 (HappyAbsSyn53  happy_var_2)
	_
	 =  HappyAbsSyn53
		 (AbsGram.TPtr happy_var_2
	)
happyReduction_87 _ _  = notHappyAtAll 

happyReduce_88 = happySpecReduce_2  54 happyReduction_88
happyReduction_88 (HappyAbsSyn27  happy_var_2)
	_
	 =  HappyAbsSyn54
		 (AbsGram.PVal happy_var_2
	)
happyReduction_88 _ _  = notHappyAtAll 

happyReduce_89 = happySpecReduce_2  54 happyReduction_89
happyReduction_89 (HappyAbsSyn27  happy_var_2)
	_
	 =  HappyAbsSyn54
		 (AbsGram.PValres happy_var_2
	)
happyReduction_89 _ _  = notHappyAtAll 

happyReduce_90 = happySpecReduce_2  54 happyReduction_90
happyReduction_90 (HappyAbsSyn27  happy_var_2)
	_
	 =  HappyAbsSyn54
		 (AbsGram.PName happy_var_2
	)
happyReduction_90 _ _  = notHappyAtAll 

happyReduce_91 = happySpecReduce_2  54 happyReduction_91
happyReduction_91 (HappyAbsSyn27  happy_var_2)
	_
	 =  HappyAbsSyn54
		 (AbsGram.PRef happy_var_2
	)
happyReduction_91 _ _  = notHappyAtAll 

happyReduce_92 = happySpecReduce_1  54 happyReduction_92
happyReduction_92 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn54
		 (AbsGram.PImpl happy_var_1
	)
happyReduction_92 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 94 94 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 55;
	PT _ (TS _ 2) -> cont 56;
	PT _ (TS _ 3) -> cont 57;
	PT _ (TS _ 4) -> cont 58;
	PT _ (TS _ 5) -> cont 59;
	PT _ (TS _ 6) -> cont 60;
	PT _ (TS _ 7) -> cont 61;
	PT _ (TS _ 8) -> cont 62;
	PT _ (TS _ 9) -> cont 63;
	PT _ (TS _ 10) -> cont 64;
	PT _ (TS _ 11) -> cont 65;
	PT _ (TS _ 12) -> cont 66;
	PT _ (TS _ 13) -> cont 67;
	PT _ (TS _ 14) -> cont 68;
	PT _ (TS _ 15) -> cont 69;
	PT _ (TS _ 16) -> cont 70;
	PT _ (TS _ 17) -> cont 71;
	PT _ (TS _ 18) -> cont 72;
	PT _ (TS _ 19) -> cont 73;
	PT _ (TS _ 20) -> cont 74;
	PT _ (TS _ 21) -> cont 75;
	PT _ (TS _ 22) -> cont 76;
	PT _ (TS _ 23) -> cont 77;
	PT _ (TS _ 24) -> cont 78;
	PT _ (TS _ 25) -> cont 79;
	PT _ (TS _ 26) -> cont 80;
	PT _ (TS _ 27) -> cont 81;
	PT _ (TS _ 28) -> cont 82;
	PT _ (TS _ 29) -> cont 83;
	PT _ (TS _ 30) -> cont 84;
	PT _ (TS _ 31) -> cont 85;
	PT _ (TS _ 32) -> cont 86;
	PT _ (TS _ 33) -> cont 87;
	PT _ (TS _ 34) -> cont 88;
	PT _ (TS _ 35) -> cont 89;
	PT _ (TV happy_dollar_dollar) -> cont 90;
	PT _ (TL happy_dollar_dollar) -> cont 91;
	PT _ (TI happy_dollar_dollar) -> cont 92;
	PT _ (TD happy_dollar_dollar) -> cont 93;
	_ -> happyError' (tk:tks)
	}

happyError_ 94 tk tks = happyError' tks
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
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pFunction tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_1 tks) (\x -> case x of {HappyAbsSyn32 z -> happyReturn z; _other -> notHappyAtAll })

pDecl tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_2 tks) (\x -> case x of {HappyAbsSyn33 z -> happyReturn z; _other -> notHappyAtAll })

pPDecl tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_3 tks) (\x -> case x of {HappyAbsSyn34 z -> happyReturn z; _other -> notHappyAtAll })

pListFunction tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_4 tks) (\x -> case x of {HappyAbsSyn35 z -> happyReturn z; _other -> notHappyAtAll })

pListStm tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_5 tks) (\x -> case x of {HappyAbsSyn36 z -> happyReturn z; _other -> notHappyAtAll })

pListDecl tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_6 tks) (\x -> case x of {HappyAbsSyn37 z -> happyReturn z; _other -> notHappyAtAll })

pListPDecl tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_7 tks) (\x -> case x of {HappyAbsSyn38 z -> happyReturn z; _other -> notHappyAtAll })

pListExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_8 tks) (\x -> case x of {HappyAbsSyn39 z -> happyReturn z; _other -> notHappyAtAll })

pStm tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_9 tks) (\x -> case x of {HappyAbsSyn40 z -> happyReturn z; _other -> notHappyAtAll })

pAss tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_10 tks) (\x -> case x of {HappyAbsSyn41 z -> happyReturn z; _other -> notHappyAtAll })

pExp2 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_11 tks) (\x -> case x of {HappyAbsSyn42 z -> happyReturn z; _other -> notHappyAtAll })

pExp3 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_12 tks) (\x -> case x of {HappyAbsSyn42 z -> happyReturn z; _other -> notHappyAtAll })

pExp4 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_13 tks) (\x -> case x of {HappyAbsSyn42 z -> happyReturn z; _other -> notHappyAtAll })

pExp5 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_14 tks) (\x -> case x of {HappyAbsSyn42 z -> happyReturn z; _other -> notHappyAtAll })

pExp6 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_15 tks) (\x -> case x of {HappyAbsSyn42 z -> happyReturn z; _other -> notHappyAtAll })

pExp8 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_16 tks) (\x -> case x of {HappyAbsSyn42 z -> happyReturn z; _other -> notHappyAtAll })

pExp9 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_17 tks) (\x -> case x of {HappyAbsSyn42 z -> happyReturn z; _other -> notHappyAtAll })

pExp10 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_18 tks) (\x -> case x of {HappyAbsSyn42 z -> happyReturn z; _other -> notHappyAtAll })

pExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_19 tks) (\x -> case x of {HappyAbsSyn42 z -> happyReturn z; _other -> notHappyAtAll })

pExp1 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_20 tks) (\x -> case x of {HappyAbsSyn42 z -> happyReturn z; _other -> notHappyAtAll })

pExp7 tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_21 tks) (\x -> case x of {HappyAbsSyn42 z -> happyReturn z; _other -> notHappyAtAll })

pType tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_22 tks) (\x -> case x of {HappyAbsSyn53 z -> happyReturn z; _other -> notHappyAtAll })

pPMet tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_23 tks) (\x -> case x of {HappyAbsSyn54 z -> happyReturn z; _other -> notHappyAtAll })

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

