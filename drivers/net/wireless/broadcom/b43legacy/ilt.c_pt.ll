; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43legacy/ilt.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43legacy/ilt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@b43legacy_ilt_rotor = dso_local constant { [53 x i32], [44 x i8] } { [53 x i32] [i32 -21413891, i32 -20561923, i32 -19775491, i32 -18923523, i32 -18071554, i32 -17285122, i32 -16433154, i32 -15646722, i32 -14794754, i32 -14008321, i32 -13156353, i32 -12304385, i32 -11517953, i32 -10665985, i32 -9879553, i32 -9027585, i32 -8241152, i32 -7389184, i32 -6602752, i32 -5750784, i32 -4898816, i32 -4112384, i32 -3260416, i32 -2473984, i32 -1622016, i32 -835584, i32 16384, i32 868352, i32 1654784, i32 2506752, i32 3293184, i32 4145152, i32 4931584, i32 5783552, i32 6635520, i32 7421952, i32 8273920, i32 9060351, i32 9912319, i32 10698751, i32 11550719, i32 12337151, i32 13189119, i32 14041087, i32 14827518, i32 15679486, i32 16465918, i32 17317886, i32 18104318, i32 18956285, i32 19808253, i32 20594685, i32 21446653], [44 x i8] zeroinitializer }, align 32
@b43legacy_ilt_retard = dso_local constant { [53 x i32], [44 x i8] } { [53 x i32] [i32 -611071097, i32 -697905308, i32 -771894440, i32 -844703706, i32 -902242913, i32 -953556300, i32 -999692146, i32 -1033179605, i32 -1059130260, i32 -1066141086, i32 -1071841067, i32 -1066006717, i32 -1051325154, i32 -1025174679, i32 -991094529, i32 -945021225, i32 -886561870, i32 -822466343, i32 -755618497, i32 -675597929, i32 -588958360, i32 -503433099, i32 -405718219, i32 -312066763, i32 -207929660, i32 -108118105, i32 16384, i32 108150695, i32 207961796, i32 312098101, i32 405748533, i32 503462005, i32 588985704, i32 675623319, i32 755641663, i32 822487257, i32 886580146, i32 945037015, i32 991107327, i32 1025184617, i32 1051331870, i32 1066010435, i32 1071841493, i32 1066269282, i32 1059255404, i32 1033301547, i32 999811214, i32 953672372, i32 902356383, i32 844814374, i32 772002648, i32 698011492, i32 611175303], [44 x i8] zeroinitializer }, align 32
@b43legacy_ilt_finefreqa = dso_local constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 130, i16 130, i16 258, i16 386, i16 514, i16 642, i16 770, i16 898, i16 1026, i16 1154, i16 1282, i16 1410, i16 1506, i16 1634, i16 1762, i16 1890, i16 2018, i16 2114, i16 2242, i16 2370, i16 2498, i16 2594, i16 2722, i16 2818, i16 2946, i16 3042, i16 3170, i16 3266, i16 3394, i16 3490, i16 3586, i16 3682, i16 3810, i16 3906, i16 4002, i16 4098, i16 4194, i16 4290, i16 4386, i16 4482, i16 4578, i16 4674, i16 4770, i16 4834, i16 4930, i16 5026, i16 5122, i16 5186, i16 5282, i16 5346, i16 5442, i16 5506, i16 5602, i16 5666, i16 5730, i16 5825, i16 5889, i16 5953, i16 6017, i16 6113, i16 6177, i16 6241, i16 6305, i16 6369, i16 6433, i16 6497, i16 6561, i16 6625, i16 6689, i16 6753, i16 6817, i16 6849, i16 6913, i16 6977, i16 7041, i16 7073, i16 7137, i16 7201, i16 7233, i16 7297, i16 7329, i16 7393, i16 7425, i16 7489, i16 7521, i16 7585, i16 7617, i16 7681, i16 7713, i16 7777, i16 7809, i16 7841, i16 7905, i16 7937, i16 7969, i16 8001, i16 8065, i16 8097, i16 8129, i16 8161, i16 8193, i16 8257, i16 8289, i16 8321, i16 8353, i16 8385, i16 8417, i16 8449, i16 8481, i16 8513, i16 8545, i16 8577, i16 8609, i16 8641, i16 8673, i16 8705, i16 8737, i16 8769, i16 8801, i16 8833, i16 8865, i16 8897, i16 8897, i16 8929, i16 8961, i16 8993, i16 9025, i16 9057, i16 9057, i16 9089, i16 9121, i16 9153, i16 9185, i16 9185, i16 9217, i16 9249, i16 9281, i16 9281, i16 9313, i16 9345, i16 9345, i16 9377, i16 9409, i16 9409, i16 9441, i16 9473, i16 9473, i16 9505, i16 9537, i16 9537, i16 9569, i16 9569, i16 9601, i16 9633, i16 9633, i16 9665, i16 9665, i16 9697, i16 9729, i16 9729, i16 9761, i16 9761, i16 9793, i16 9793, i16 9825, i16 9825, i16 9857, i16 9857, i16 9889, i16 9889, i16 9921, i16 9921, i16 9953, i16 9953, i16 9985, i16 9985, i16 10017, i16 10017, i16 10048, i16 10048, i16 10080, i16 10080, i16 10112, i16 10112, i16 10112, i16 10144, i16 10144, i16 10176, i16 10176, i16 10208, i16 10208, i16 10208, i16 10240, i16 10240, i16 10272, i16 10272, i16 10272, i16 10304, i16 10304, i16 10304, i16 10336, i16 10336, i16 10368, i16 10368, i16 10368, i16 10400, i16 10400, i16 10400, i16 10432, i16 10432, i16 10432, i16 10464, i16 10464, i16 10464, i16 10496, i16 10496, i16 10496, i16 10528, i16 10528, i16 10528, i16 10560, i16 10560, i16 10560, i16 10592, i16 10592, i16 10592, i16 10592, i16 10624, i16 10624, i16 10624, i16 10656, i16 10656, i16 10656, i16 10656, i16 10688, i16 10688, i16 10688, i16 10720, i16 10720, i16 10720, i16 10720, i16 10752, i16 10752, i16 10752, i16 10752, i16 10784, i16 10784, i16 10784, i16 10784, i16 10816, i16 10816, i16 10816, i16 10816, i16 10848, i16 10848, i16 10848], [128 x i8] zeroinitializer }, align 32
@b43legacy_ilt_finefreqg = dso_local constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 137, i16 745, i16 1033, i16 1257, i16 1449, i16 1641, i16 1801, i16 1929, i16 2089, i16 2217, i16 2345, i16 2441, i16 2569, i16 2665, i16 2761, i16 2857, i16 2985, i16 3049, i16 3145, i16 3241, i16 3337, i16 3433, i16 3497, i16 3593, i16 3689, i16 3753, i16 3849, i16 3913, i16 4009, i16 4073, i16 4137, i16 4233, i16 4297, i16 4361, i16 4457, i16 4521, i16 4585, i16 4649, i16 4745, i16 4809, i16 4873, i16 4937, i16 5001, i16 5065, i16 5129, i16 5193, i16 5289, i16 5353, i16 5417, i16 5481, i16 5545, i16 5609, i16 5673, i16 5737, i16 5801, i16 5864, i16 5928, i16 5992, i16 6056, i16 6120, i16 6184, i16 6248, i16 6312, i16 6376, i16 6440, i16 6504, i16 6568, i16 6632, i16 6696, i16 6760, i16 6824, i16 6888, i16 6952, i16 7016, i16 7080, i16 7144, i16 7208, i16 7272, i16 7336, i16 7400, i16 7464, i16 7528, i16 7624, i16 7688, i16 7752, i16 7816, i16 7880, i16 7944, i16 8008, i16 8072, i16 8168, i16 8232, i16 8296, i16 8360, i16 8456, i16 8520, i16 8584, i16 8648, i16 8744, i16 8808, i16 8904, i16 8968, i16 9032, i16 9128, i16 9192, i16 9288, i16 9384, i16 9448, i16 9544, i16 9640, i16 9736, i16 9832, i16 9928, i16 10024, i16 10119, i16 10215, i16 10311, i16 10439, i16 10567, i16 10663, i16 10791, i16 10951, i16 11079, i16 11239, i16 11431, i16 11623, i16 11847, i16 12135, i16 12871, i16 13606, i16 13894, i16 14118, i16 14342, i16 14502, i16 14662, i16 14822, i16 14950, i16 15078, i16 15206, i16 15302, i16 15429, i16 15525, i16 15621, i16 15749, i16 15845, i16 15941, i16 16037, i16 16101, i16 16197, i16 16293, i16 16389, i16 16453, i16 16549, i16 16613, i16 16709, i16 16773, i16 16869, i16 16933, i16 16997, i16 17093, i16 17157, i16 17221, i16 17317, i16 17381, i16 17444, i16 17508, i16 17604, i16 17668, i16 17732, i16 17796, i16 17860, i16 17924, i16 17988, i16 18084, i16 18148, i16 18212, i16 18276, i16 18340, i16 18404, i16 18468, i16 18532, i16 18596, i16 18660, i16 18724, i16 18788, i16 18852, i16 18916, i16 18980, i16 19044, i16 19108, i16 19172, i16 19235, i16 19299, i16 19363, i16 19427, i16 19491, i16 19555, i16 19619, i16 19683, i16 19747, i16 19811, i16 19875, i16 19939, i16 20003, i16 20067, i16 20131, i16 20195, i16 20259, i16 20323, i16 20419, i16 20483, i16 20547, i16 20611, i16 20675, i16 20739, i16 20803, i16 20867, i16 20962, i16 21026, i16 21090, i16 21154, i16 21218, i16 21314, i16 21378, i16 21442, i16 21506, i16 21602, i16 21666, i16 21762, i16 21826, i16 21922, i16 21986, i16 22082, i16 22146, i16 22242, i16 22306, i16 22402, i16 22497, i16 22593, i16 22689, i16 22785, i16 22881, i16 22977, i16 23073, i16 23201, i16 23297, i16 23425, i16 23521, i16 23649, i16 23809, i16 23936, i16 24096, i16 24288, i16 24480, i16 24704, i16 25024], [128 x i8] zeroinitializer }, align 32
@b43legacy_ilt_noisea2 = dso_local constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 1, i16 1, i16 1, i16 -2, i16 -2, i16 16383, i16 4096, i16 915], [16 x i8] zeroinitializer }, align 32
@b43legacy_ilt_noisea3 = dso_local constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 19532, i16 19532, i16 19532, i16 11574, i16 19532, i16 19532, i16 19532, i16 11574], [16 x i8] zeroinitializer }, align 32
@b43legacy_ilt_noiseg1 = dso_local constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 316, i16 501, i16 794, i16 1585, i16 1, i16 1, i16 1, i16 1], [16 x i8] zeroinitializer }, align 32
@b43legacy_ilt_noiseg2 = dso_local constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 21636, i16 15424, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0], [16 x i8] zeroinitializer }, align 32
@b43legacy_ilt_noisescaleg1 = dso_local constant { [27 x i16], [42 x i8] } { [27 x i16] [i16 27767, i16 20834, i16 15168, i16 13109, i16 12077, i16 10794, i16 9511, i16 7969, i16 6685, i16 5913, i16 5654, i16 5140, i16 5140, i16 5120, i16 5140, i16 5652, i16 5910, i16 6681, i16 7965, i16 9505, i16 10791, i16 12074, i16 13101, i16 15157, i16 20800, i16 27746, i16 119], [42 x i8] zeroinitializer }, align 32
@b43legacy_ilt_noisescaleg2 = dso_local constant { [27 x i16], [42 x i8] } { [27 x i16] [i16 -10019, i16 -13356, i16 -17216, i16 -18761, i16 -19792, i16 -21075, i16 -22615, i16 -24671, i16 -26981, i16 -28267, i16 -28785, i16 -30070, i16 -30070, i16 -30208, i16 -30070, i16 -28790, i16 -28273, i16 -26987, i16 -24677, i16 -22623, i16 -21079, i16 -19795, i16 -18768, i16 -17225, i16 -13376, i16 -10028, i16 221], [42 x i8] zeroinitializer }, align 32
@b43legacy_ilt_noisescaleg3 = dso_local constant { [27 x i16], [42 x i8] } { [27 x i16] [i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23552, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 164], [42 x i8] zeroinitializer }, align 32
@b43legacy_ilt_sigmasqr1 = dso_local constant { [53 x i16], [54 x i8] } { [53 x i16] [i16 122, i16 117, i16 113, i16 108, i16 103, i16 99, i16 94, i16 89, i16 84, i16 80, i16 75, i16 70, i16 66, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 0, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 66, i16 70, i16 75, i16 80, i16 84, i16 89, i16 94, i16 99, i16 103, i16 108, i16 113, i16 117, i16 122], [54 x i8] zeroinitializer }, align 32
@b43legacy_ilt_sigmasqr2 = dso_local constant { [53 x i16], [54 x i8] } { [53 x i16] [i16 222, i16 220, i16 218, i16 216, i16 214, i16 212, i16 210, i16 207, i16 205, i16 202, i16 199, i16 196, i16 193, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 0, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 193, i16 196, i16 199, i16 202, i16 205, i16 207, i16 210, i16 212, i16 214, i16 216, i16 218, i16 220, i16 222], [54 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"b43legacy_ilt_rotor\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 22, i32 11 }
@___asan_gen_.4 = private unnamed_addr constant [21 x i8] c"b43legacy_ilt_retard\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 52, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [24 x i8] c"b43legacy_ilt_finefreqa\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 82, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant [24 x i8] c"b43legacy_ilt_finefreqg\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 149, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"b43legacy_ilt_noisea2\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 216, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [22 x i8] c"b43legacy_ilt_noisea3\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 221, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"b43legacy_ilt_noiseg1\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 226, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"b43legacy_ilt_noiseg2\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 231, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [27 x i8] c"b43legacy_ilt_noisescaleg1\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 236, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [27 x i8] c"b43legacy_ilt_noisescaleg2\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 246, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [27 x i8] c"b43legacy_ilt_noisescaleg3\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 256, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [24 x i8] c"b43legacy_ilt_sigmasqr1\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 266, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [24 x i8] c"b43legacy_ilt_sigmasqr2\00", align 1
@___asan_gen_.38 = private constant [49 x i8] c"../drivers/net/wireless/broadcom/b43legacy/ilt.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 283, i32 11 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @b43legacy_ilt_rotor, ptr @b43legacy_ilt_retard, ptr @b43legacy_ilt_finefreqa, ptr @b43legacy_ilt_finefreqg, ptr @b43legacy_ilt_noisea2, ptr @b43legacy_ilt_noisea3, ptr @b43legacy_ilt_noiseg1, ptr @b43legacy_ilt_noiseg2, ptr @b43legacy_ilt_noisescaleg1, ptr @b43legacy_ilt_noisescaleg2, ptr @b43legacy_ilt_noisescaleg3, ptr @b43legacy_ilt_sigmasqr1, ptr @b43legacy_ilt_sigmasqr2], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_ilt_rotor to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_ilt_retard to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_ilt_finefreqa to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_ilt_finefreqg to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_ilt_noisea2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_ilt_noisea3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_ilt_noiseg1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_ilt_noiseg2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_ilt_noisescaleg1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_ilt_noisescaleg2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_ilt_noisescaleg3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_ilt_sigmasqr1 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_ilt_sigmasqr2 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @b43legacy_phy_write(ptr noundef %dev, i16 noundef zeroext 1138, i16 noundef zeroext %offset) #2
  tail call void @b43legacy_phy_write(ptr noundef %dev, i16 noundef zeroext 1139, i16 noundef zeroext %val) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_phy_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_ilt_write32(ptr noundef %dev, i16 noundef zeroext %offset, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @b43legacy_phy_write(ptr noundef %dev, i16 noundef zeroext 1138, i16 noundef zeroext %offset) #2
  %shr = lshr i32 %val, 16
  %conv = trunc i32 %shr to i16
  tail call void @b43legacy_phy_write(ptr noundef %dev, i16 noundef zeroext 1140, i16 noundef zeroext %conv) #2
  %conv2 = trunc i32 %val to i16
  tail call void @b43legacy_phy_write(ptr noundef %dev, i16 noundef zeroext 1139, i16 noundef zeroext %conv2) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @b43legacy_ilt_read(ptr noundef %dev, i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @b43legacy_phy_write(ptr noundef %dev, i16 noundef zeroext 1138, i16 noundef zeroext %offset) #2
  %call = tail call zeroext i16 @b43legacy_phy_read(ptr noundef %dev, i16 noundef zeroext 1139) #2
  ret i16 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43legacy_phy_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @b43legacy_ilt_rotor, !1, !"b43legacy_ilt_rotor", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43legacy/ilt.c", i32 22, i32 11}
!2 = !{ptr @b43legacy_ilt_retard, !3, !"b43legacy_ilt_retard", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43legacy/ilt.c", i32 52, i32 11}
!4 = !{ptr @b43legacy_ilt_finefreqa, !5, !"b43legacy_ilt_finefreqa", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43legacy/ilt.c", i32 82, i32 11}
!6 = !{ptr @b43legacy_ilt_finefreqg, !7, !"b43legacy_ilt_finefreqg", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43legacy/ilt.c", i32 149, i32 11}
!8 = !{ptr @b43legacy_ilt_noisea2, !9, !"b43legacy_ilt_noisea2", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/b43legacy/ilt.c", i32 216, i32 11}
!10 = !{ptr @b43legacy_ilt_noisea3, !11, !"b43legacy_ilt_noisea3", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/b43legacy/ilt.c", i32 221, i32 11}
!12 = !{ptr @b43legacy_ilt_noiseg1, !13, !"b43legacy_ilt_noiseg1", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/b43legacy/ilt.c", i32 226, i32 11}
!14 = !{ptr @b43legacy_ilt_noiseg2, !15, !"b43legacy_ilt_noiseg2", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/b43legacy/ilt.c", i32 231, i32 11}
!16 = !{ptr @b43legacy_ilt_noisescaleg1, !17, !"b43legacy_ilt_noisescaleg1", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/b43legacy/ilt.c", i32 236, i32 11}
!18 = !{ptr @b43legacy_ilt_noisescaleg2, !19, !"b43legacy_ilt_noisescaleg2", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/b43legacy/ilt.c", i32 246, i32 11}
!20 = !{ptr @b43legacy_ilt_noisescaleg3, !21, !"b43legacy_ilt_noisescaleg3", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/b43legacy/ilt.c", i32 256, i32 11}
!22 = !{ptr @b43legacy_ilt_sigmasqr1, !23, !"b43legacy_ilt_sigmasqr1", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/b43legacy/ilt.c", i32 266, i32 11}
!24 = !{ptr @b43legacy_ilt_sigmasqr2, !25, !"b43legacy_ilt_sigmasqr2", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/b43legacy/ilt.c", i32 283, i32 11}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
