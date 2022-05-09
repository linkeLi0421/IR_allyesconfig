; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/tables.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/tables.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.b43_wldev = type { ptr, ptr, %struct.completion, %struct.atomic_t, i8, i8, i8, i8, i8, i8, %struct.b43_phy, %union.anon.137, i8, %struct.b43_stats, i32, [6 x i32], i32, %struct.b43_noise_calculation, i32, %struct.delayed_work, i32, %struct.work_struct, i16, [58 x %struct.b43_key], %struct.b43_firmware, %struct.list_head, ptr, i32, [32 x i32], i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.b43_phy = type { ptr, %struct.anon.135, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i32, i8, i32, ptr, i32, %struct.atomic_t, i8, i8 }
%struct.anon.135 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.137 = type { %struct.b43_dma }
%struct.b43_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.b43_stats = type { i8 }
%struct.b43_noise_calculation = type { i8, i8, [8 x [4 x i8]] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43_key = type { ptr, i8 }
%struct.b43_firmware = type { %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, i16, i16, i32, i8, i8 }
%struct.b43_firmware_file = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.b43_phy_g = type { i8, i8, i8, i8, %struct.anon.136, [2 x i16], [2 x i16], ptr, i8, i32, i32, i8, %struct.b43_bbatt, %struct.b43_rfatt, i8, i32, i32, ptr, i16, i16, i16, i16, i16, i32, [26 x i32], [2 x i16], i32, [64 x i8], i16, i16, i16, i32 }
%struct.anon.136 = type { i8, i16, i16 }
%struct.b43_bbatt = type { i8 }
%struct.b43_rfatt = type { i8, i8 }

@b43_tab_rotor = dso_local constant { [53 x i32], [44 x i8] } { [53 x i32] [i32 -21413891, i32 -20561923, i32 -19775491, i32 -18923523, i32 -18071554, i32 -17285122, i32 -16433154, i32 -15646722, i32 -14794754, i32 -14008321, i32 -13156353, i32 -12304385, i32 -11517953, i32 -10665985, i32 -9879553, i32 -9027585, i32 -8241152, i32 -7389184, i32 -6602752, i32 -5750784, i32 -4898816, i32 -4112384, i32 -3260416, i32 -2473984, i32 -1622016, i32 -835584, i32 16384, i32 868352, i32 1654784, i32 2506752, i32 3293184, i32 4145152, i32 4931584, i32 5783552, i32 6635520, i32 7421952, i32 8273920, i32 9060351, i32 9912319, i32 10698751, i32 11550719, i32 12337151, i32 13189119, i32 14041087, i32 14827518, i32 15679486, i32 16465918, i32 17317886, i32 18104318, i32 18956285, i32 19808253, i32 20594685, i32 21446653], [44 x i8] zeroinitializer }, align 32
@b43_tab_retard = dso_local constant { [53 x i32], [44 x i8] } { [53 x i32] [i32 -611071097, i32 -697905308, i32 -771894440, i32 -844703706, i32 -902242913, i32 -953556300, i32 -999692146, i32 -1033179605, i32 -1059130260, i32 -1066141086, i32 -1071841067, i32 -1066006717, i32 -1051325154, i32 -1025174679, i32 -991094529, i32 -945021225, i32 -886561870, i32 -822466343, i32 -755618497, i32 -675597929, i32 -588958360, i32 -503433099, i32 -405718219, i32 -312066763, i32 -207929660, i32 -108118105, i32 16384, i32 108150695, i32 207961796, i32 312098101, i32 405748533, i32 503462005, i32 588985704, i32 675623319, i32 755641663, i32 822487257, i32 886580146, i32 945037015, i32 991107327, i32 1025184617, i32 1051331870, i32 1066010435, i32 1071841493, i32 1066269282, i32 1059255404, i32 1033301547, i32 999811214, i32 953672372, i32 902356383, i32 844814374, i32 772002648, i32 698011492, i32 611175303], [44 x i8] zeroinitializer }, align 32
@b43_tab_finefreqa = dso_local constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 130, i16 130, i16 258, i16 386, i16 514, i16 642, i16 770, i16 898, i16 1026, i16 1154, i16 1282, i16 1410, i16 1506, i16 1634, i16 1762, i16 1890, i16 2018, i16 2114, i16 2242, i16 2370, i16 2498, i16 2594, i16 2722, i16 2818, i16 2946, i16 3042, i16 3170, i16 3266, i16 3394, i16 3490, i16 3586, i16 3682, i16 3810, i16 3906, i16 4002, i16 4098, i16 4194, i16 4290, i16 4386, i16 4482, i16 4578, i16 4674, i16 4770, i16 4834, i16 4930, i16 5026, i16 5122, i16 5186, i16 5282, i16 5346, i16 5442, i16 5506, i16 5602, i16 5666, i16 5730, i16 5825, i16 5889, i16 5953, i16 6017, i16 6113, i16 6177, i16 6241, i16 6305, i16 6369, i16 6433, i16 6497, i16 6561, i16 6625, i16 6689, i16 6753, i16 6817, i16 6849, i16 6913, i16 6977, i16 7041, i16 7073, i16 7137, i16 7201, i16 7233, i16 7297, i16 7329, i16 7393, i16 7425, i16 7489, i16 7521, i16 7585, i16 7617, i16 7681, i16 7713, i16 7777, i16 7809, i16 7841, i16 7905, i16 7937, i16 7969, i16 8001, i16 8065, i16 8097, i16 8129, i16 8161, i16 8193, i16 8257, i16 8289, i16 8321, i16 8353, i16 8385, i16 8417, i16 8449, i16 8481, i16 8513, i16 8545, i16 8577, i16 8609, i16 8641, i16 8673, i16 8705, i16 8737, i16 8769, i16 8801, i16 8833, i16 8865, i16 8897, i16 8897, i16 8929, i16 8961, i16 8993, i16 9025, i16 9057, i16 9057, i16 9089, i16 9121, i16 9153, i16 9185, i16 9185, i16 9217, i16 9249, i16 9281, i16 9281, i16 9313, i16 9345, i16 9345, i16 9377, i16 9409, i16 9409, i16 9441, i16 9473, i16 9473, i16 9505, i16 9537, i16 9537, i16 9569, i16 9569, i16 9601, i16 9633, i16 9633, i16 9665, i16 9665, i16 9697, i16 9729, i16 9729, i16 9761, i16 9761, i16 9793, i16 9793, i16 9825, i16 9825, i16 9857, i16 9857, i16 9889, i16 9889, i16 9921, i16 9921, i16 9953, i16 9953, i16 9985, i16 9985, i16 10017, i16 10017, i16 10048, i16 10048, i16 10080, i16 10080, i16 10112, i16 10112, i16 10112, i16 10144, i16 10144, i16 10176, i16 10176, i16 10208, i16 10208, i16 10208, i16 10240, i16 10240, i16 10272, i16 10272, i16 10272, i16 10304, i16 10304, i16 10304, i16 10336, i16 10336, i16 10368, i16 10368, i16 10368, i16 10400, i16 10400, i16 10400, i16 10432, i16 10432, i16 10432, i16 10464, i16 10464, i16 10464, i16 10496, i16 10496, i16 10496, i16 10528, i16 10528, i16 10528, i16 10560, i16 10560, i16 10560, i16 10592, i16 10592, i16 10592, i16 10592, i16 10624, i16 10624, i16 10624, i16 10656, i16 10656, i16 10656, i16 10656, i16 10688, i16 10688, i16 10688, i16 10720, i16 10720, i16 10720, i16 10720, i16 10752, i16 10752, i16 10752, i16 10752, i16 10784, i16 10784, i16 10784, i16 10784, i16 10816, i16 10816, i16 10816, i16 10816, i16 10848, i16 10848, i16 10848], [128 x i8] zeroinitializer }, align 32
@b43_tab_finefreqg = dso_local constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 137, i16 745, i16 1033, i16 1257, i16 1449, i16 1641, i16 1801, i16 1929, i16 2089, i16 2217, i16 2345, i16 2441, i16 2569, i16 2665, i16 2761, i16 2857, i16 2985, i16 3049, i16 3145, i16 3241, i16 3337, i16 3433, i16 3497, i16 3593, i16 3689, i16 3753, i16 3849, i16 3913, i16 4009, i16 4073, i16 4137, i16 4233, i16 4297, i16 4361, i16 4457, i16 4521, i16 4585, i16 4649, i16 4745, i16 4809, i16 4873, i16 4937, i16 5001, i16 5065, i16 5129, i16 5193, i16 5289, i16 5353, i16 5417, i16 5481, i16 5545, i16 5609, i16 5673, i16 5737, i16 5801, i16 5864, i16 5928, i16 5992, i16 6056, i16 6120, i16 6184, i16 6248, i16 6312, i16 6376, i16 6440, i16 6504, i16 6568, i16 6632, i16 6696, i16 6760, i16 6824, i16 6888, i16 6952, i16 7016, i16 7080, i16 7144, i16 7208, i16 7272, i16 7336, i16 7400, i16 7464, i16 7528, i16 7624, i16 7688, i16 7752, i16 7816, i16 7880, i16 7944, i16 8008, i16 8072, i16 8168, i16 8232, i16 8296, i16 8360, i16 8456, i16 8520, i16 8584, i16 8648, i16 8744, i16 8808, i16 8904, i16 8968, i16 9032, i16 9128, i16 9192, i16 9288, i16 9384, i16 9448, i16 9544, i16 9640, i16 9736, i16 9832, i16 9928, i16 10024, i16 10119, i16 10215, i16 10311, i16 10439, i16 10567, i16 10663, i16 10791, i16 10951, i16 11079, i16 11239, i16 11431, i16 11623, i16 11847, i16 12135, i16 12871, i16 13606, i16 13894, i16 14118, i16 14342, i16 14502, i16 14662, i16 14822, i16 14950, i16 15078, i16 15206, i16 15302, i16 15429, i16 15525, i16 15621, i16 15749, i16 15845, i16 15941, i16 16037, i16 16101, i16 16197, i16 16293, i16 16389, i16 16453, i16 16549, i16 16613, i16 16709, i16 16773, i16 16869, i16 16933, i16 16997, i16 17093, i16 17157, i16 17221, i16 17317, i16 17381, i16 17444, i16 17508, i16 17604, i16 17668, i16 17732, i16 17796, i16 17860, i16 17924, i16 17988, i16 18084, i16 18148, i16 18212, i16 18276, i16 18340, i16 18404, i16 18468, i16 18532, i16 18596, i16 18660, i16 18724, i16 18788, i16 18852, i16 18916, i16 18980, i16 19044, i16 19108, i16 19172, i16 19235, i16 19299, i16 19363, i16 19427, i16 19491, i16 19555, i16 19619, i16 19683, i16 19747, i16 19811, i16 19875, i16 19939, i16 20003, i16 20067, i16 20131, i16 20195, i16 20259, i16 20323, i16 20419, i16 20483, i16 20547, i16 20611, i16 20675, i16 20739, i16 20803, i16 20867, i16 20962, i16 21026, i16 21090, i16 21154, i16 21218, i16 21314, i16 21378, i16 21442, i16 21506, i16 21602, i16 21666, i16 21762, i16 21826, i16 21922, i16 21986, i16 22082, i16 22146, i16 22242, i16 22306, i16 22402, i16 22497, i16 22593, i16 22689, i16 22785, i16 22881, i16 22977, i16 23073, i16 23201, i16 23297, i16 23425, i16 23521, i16 23649, i16 23809, i16 23936, i16 24096, i16 24288, i16 24480, i16 24704, i16 25024], [128 x i8] zeroinitializer }, align 32
@b43_tab_noisea2 = dso_local constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 1, i16 1, i16 1, i16 -2, i16 -2, i16 16383, i16 4096, i16 915], [16 x i8] zeroinitializer }, align 32
@b43_tab_noisea3 = dso_local constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 24158, i16 24158, i16 24158, i16 16200, i16 19532, i16 19532, i16 19532, i16 11574], [16 x i8] zeroinitializer }, align 32
@b43_tab_noiseg1 = dso_local constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 316, i16 501, i16 794, i16 1585, i16 1, i16 1, i16 1, i16 1], [16 x i8] zeroinitializer }, align 32
@b43_tab_noiseg2 = dso_local constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 21636, i16 15424, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0], [16 x i8] zeroinitializer }, align 32
@b43_tab_noisescalea2 = dso_local constant { [27 x i16], [42 x i8] } { [27 x i16] [i16 26471, i16 26471, i16 26471, i16 26471, i16 26471, i16 26471, i16 26471, i16 26471, i16 26471, i16 26471, i16 26471, i16 26471, i16 26471, i16 26368, i16 26471, i16 26471, i16 26471, i16 26471, i16 26471, i16 26471, i16 26471, i16 26471, i16 26471, i16 26471, i16 26471, i16 26471, i16 103], [42 x i8] zeroinitializer }, align 32
@b43_tab_noisescalea3 = dso_local constant { [27 x i16], [42 x i8] } { [27 x i16] [i16 8995, i16 8995, i16 8995, i16 8995, i16 8995, i16 8995, i16 8995, i16 8995, i16 8995, i16 8995, i16 8995, i16 8995, i16 8995, i16 8960, i16 8995, i16 8995, i16 8995, i16 8995, i16 8995, i16 8995, i16 8995, i16 8995, i16 8995, i16 8995, i16 8995, i16 8995, i16 35], [42 x i8] zeroinitializer }, align 32
@b43_tab_noisescaleg1 = dso_local constant { [27 x i16], [42 x i8] } { [27 x i16] [i16 27767, i16 20834, i16 15168, i16 13109, i16 12077, i16 10794, i16 9511, i16 7969, i16 6685, i16 5913, i16 5654, i16 5140, i16 5140, i16 5120, i16 5140, i16 5652, i16 5910, i16 6681, i16 7965, i16 9505, i16 10791, i16 12074, i16 13101, i16 15157, i16 20800, i16 27746, i16 119], [42 x i8] zeroinitializer }, align 32
@b43_tab_noisescaleg2 = dso_local constant { [27 x i16], [42 x i8] } { [27 x i16] [i16 -10019, i16 -13356, i16 -17216, i16 -18761, i16 -19792, i16 -21075, i16 -22615, i16 -24671, i16 -26981, i16 -28267, i16 -28785, i16 -30070, i16 -30070, i16 -30208, i16 -30070, i16 -28790, i16 -28273, i16 -26987, i16 -24677, i16 -22623, i16 -21079, i16 -19795, i16 -18768, i16 -17225, i16 -13376, i16 -10028, i16 221], [42 x i8] zeroinitializer }, align 32
@b43_tab_noisescaleg3 = dso_local constant { [27 x i16], [42 x i8] } { [27 x i16] [i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23552, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 164], [42 x i8] zeroinitializer }, align 32
@b43_tab_sigmasqr1 = dso_local constant { [53 x i16], [54 x i8] } { [53 x i16] [i16 122, i16 117, i16 113, i16 108, i16 103, i16 99, i16 94, i16 89, i16 84, i16 80, i16 75, i16 70, i16 66, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 0, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 66, i16 70, i16 75, i16 80, i16 84, i16 89, i16 94, i16 99, i16 103, i16 108, i16 113, i16 117, i16 122], [54 x i8] zeroinitializer }, align 32
@b43_tab_sigmasqr2 = dso_local constant { [53 x i16], [54 x i8] } { [53 x i16] [i16 222, i16 220, i16 218, i16 216, i16 214, i16 212, i16 210, i16 207, i16 205, i16 202, i16 199, i16 196, i16 193, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 0, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 193, i16 196, i16 199, i16 202, i16 205, i16 207, i16 210, i16 212, i16 214, i16 216, i16 218, i16 220, i16 222], [54 x i8] zeroinitializer }, align 32
@b43_tab_rssiagc1 = dso_local constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 -8, i16 -8, i16 -8, i16 -8, i16 -8, i16 -7, i16 -4, i16 -2, i16 -8, i16 -8, i16 -8, i16 -8, i16 -8, i16 -8, i16 -8, i16 -8], [32 x i8] zeroinitializer }, align 32
@b43_tab_rssiagc2 = dso_local constant { [48 x i16], [32 x i8] } { [48 x i16] [i16 2080, i16 2080, i16 2336, i16 3128, i16 2080, i16 2080, i16 2080, i16 2080, i16 2080, i16 2080, i16 2336, i16 2616, i16 2080, i16 2080, i16 2080, i16 2080, i16 2080, i16 2080, i16 2336, i16 2616, i16 2080, i16 2080, i16 2080, i16 2080, i16 2080, i16 2080, i16 2336, i16 2616, i16 2080, i16 2080, i16 2080, i16 2080, i16 2080, i16 2080, i16 2336, i16 2616, i16 2080, i16 2080, i16 2080, i16 2080, i16 2080, i16 2080, i16 2336, i16 2616, i16 2080, i16 2080, i16 2080, i16 2080], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"b43_tab_rotor\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 20, i32 11 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"b43_tab_retard\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 50, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"b43_tab_finefreqa\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 80, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"b43_tab_finefreqg\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 147, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"b43_tab_noisea2\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 214, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"b43_tab_noisea3\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 219, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"b43_tab_noiseg1\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 224, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"b43_tab_noiseg2\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 229, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"b43_tab_noisescalea2\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 234, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [21 x i8] c"b43_tab_noisescalea3\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 244, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [21 x i8] c"b43_tab_noisescaleg1\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 254, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [21 x i8] c"b43_tab_noisescaleg2\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 264, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"b43_tab_noisescaleg3\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 274, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"b43_tab_sigmasqr1\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 284, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"b43_tab_sigmasqr2\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 301, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"b43_tab_rssiagc1\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 318, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"b43_tab_rssiagc2\00", align 1
@___asan_gen_.50 = private constant [46 x i8] c"../drivers/net/wireless/broadcom/b43/tables.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 325, i32 11 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @b43_tab_rotor, ptr @b43_tab_retard, ptr @b43_tab_finefreqa, ptr @b43_tab_finefreqg, ptr @b43_tab_noisea2, ptr @b43_tab_noisea3, ptr @b43_tab_noiseg1, ptr @b43_tab_noiseg2, ptr @b43_tab_noisescalea2, ptr @b43_tab_noisescalea3, ptr @b43_tab_noisescaleg1, ptr @b43_tab_noisescaleg2, ptr @b43_tab_noisescaleg3, ptr @b43_tab_sigmasqr1, ptr @b43_tab_sigmasqr2, ptr @b43_tab_rssiagc1, ptr @b43_tab_rssiagc2], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_tab_rotor to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_tab_retard to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_tab_finefreqa to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_tab_finefreqg to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_tab_noisea2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_tab_noisea3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_tab_noiseg1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_tab_noiseg2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_tab_noisescalea2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_tab_noisescalea3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_tab_noisescaleg1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_tab_noisescaleg2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_tab_noisescaleg3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_tab_sigmasqr1 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_tab_sigmasqr2 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_tab_rssiagc1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_tab_rssiagc2 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @b43_ofdmtab_read16(ptr noundef %dev, i16 noundef zeroext %table, i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add = add i16 %offset, %table
  %ofdmtab_addr_direction = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 31
  %3 = ptrtoint ptr %ofdmtab_addr_direction to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ofdmtab_addr_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %conv4 = zext i16 %add to i32
  %sub = add nsw i32 %conv4, -1
  %ofdmtab_addr = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 30
  %5 = ptrtoint ptr %ofdmtab_addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ofdmtab_addr, align 4
  %conv5 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv5)
  %cmp6.not = icmp eq i32 %sub, %conv5
  br i1 %cmp6.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1138, i16 noundef zeroext %add) #2
  %7 = ptrtoint ptr %ofdmtab_addr_direction to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %ofdmtab_addr_direction, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %ofdmtab_addr9 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 30
  %8 = ptrtoint ptr %ofdmtab_addr9 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %add, ptr %ofdmtab_addr9, align 4
  %call = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1139) #2
  ret i16 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43_phy_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_ofdmtab_write16(ptr noundef %dev, i16 noundef zeroext %table, i16 noundef zeroext %offset, i16 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add = add i16 %offset, %table
  %ofdmtab_addr_direction = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 31
  %3 = ptrtoint ptr %ofdmtab_addr_direction to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ofdmtab_addr_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not = icmp eq i32 %4, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %conv4 = zext i16 %add to i32
  %sub = add nsw i32 %conv4, -1
  %ofdmtab_addr = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 30
  %5 = ptrtoint ptr %ofdmtab_addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ofdmtab_addr, align 4
  %conv5 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv5)
  %cmp6.not = icmp eq i32 %sub, %conv5
  br i1 %cmp6.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1138, i16 noundef zeroext %add) #2
  %7 = ptrtoint ptr %ofdmtab_addr_direction to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %ofdmtab_addr_direction, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %ofdmtab_addr9 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 30
  %8 = ptrtoint ptr %ofdmtab_addr9 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %add, ptr %ofdmtab_addr9, align 4
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1139, i16 noundef zeroext %value) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43_ofdmtab_read32(ptr noundef %dev, i16 noundef zeroext %table, i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add = add i16 %offset, %table
  %ofdmtab_addr_direction = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 31
  %3 = ptrtoint ptr %ofdmtab_addr_direction to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ofdmtab_addr_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %conv4 = zext i16 %add to i32
  %sub = add nsw i32 %conv4, -1
  %ofdmtab_addr = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 30
  %5 = ptrtoint ptr %ofdmtab_addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ofdmtab_addr, align 4
  %conv5 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv5)
  %cmp6.not = icmp eq i32 %sub, %conv5
  br i1 %cmp6.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1138, i16 noundef zeroext %add) #2
  %7 = ptrtoint ptr %ofdmtab_addr_direction to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %ofdmtab_addr_direction, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %ofdmtab_addr9 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 30
  %8 = ptrtoint ptr %ofdmtab_addr9 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %add, ptr %ofdmtab_addr9, align 4
  %call = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1140) #2
  %conv10 = zext i16 %call to i32
  %shl = shl nuw i32 %conv10, 16
  %call11 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1139) #2
  %conv12 = zext i16 %call11 to i32
  %or = or i32 %shl, %conv12
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_ofdmtab_write32(ptr noundef %dev, i16 noundef zeroext %table, i16 noundef zeroext %offset, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add = add i16 %offset, %table
  %ofdmtab_addr_direction = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 31
  %3 = ptrtoint ptr %ofdmtab_addr_direction to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ofdmtab_addr_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not = icmp eq i32 %4, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %conv4 = zext i16 %add to i32
  %sub = add nsw i32 %conv4, -1
  %ofdmtab_addr = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 30
  %5 = ptrtoint ptr %ofdmtab_addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ofdmtab_addr, align 4
  %conv5 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv5)
  %cmp6.not = icmp eq i32 %sub, %conv5
  br i1 %cmp6.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1138, i16 noundef zeroext %add) #2
  %7 = ptrtoint ptr %ofdmtab_addr_direction to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %ofdmtab_addr_direction, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %ofdmtab_addr9 = getelementptr inbounds %struct.b43_phy_g, ptr %2, i32 0, i32 30
  %8 = ptrtoint ptr %ofdmtab_addr9 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %add, ptr %ofdmtab_addr9, align 4
  %conv10 = trunc i32 %value to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1139, i16 noundef zeroext %conv10) #2
  %shr = lshr i32 %value, 16
  %conv11 = trunc i32 %shr to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1140, i16 noundef zeroext %conv11) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @b43_gtab_read(ptr noundef %dev, i16 noundef zeroext %table, i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i16 %offset, %table
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2051, i16 noundef zeroext %add) #2
  %call = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 2052) #2
  ret i16 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_gtab_write(ptr noundef %dev, i16 noundef zeroext %table, i16 noundef zeroext %offset, i16 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i16 %offset, %table
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2051, i16 noundef zeroext %add) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 2052, i16 noundef zeroext %value) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @b43_tab_rotor, !1, !"b43_tab_rotor", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43/tables.c", i32 20, i32 11}
!2 = !{ptr @b43_tab_retard, !3, !"b43_tab_retard", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43/tables.c", i32 50, i32 11}
!4 = !{ptr @b43_tab_finefreqa, !5, !"b43_tab_finefreqa", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43/tables.c", i32 80, i32 11}
!6 = !{ptr @b43_tab_finefreqg, !7, !"b43_tab_finefreqg", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43/tables.c", i32 147, i32 11}
!8 = !{ptr @b43_tab_noisea2, !9, !"b43_tab_noisea2", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/b43/tables.c", i32 214, i32 11}
!10 = !{ptr @b43_tab_noisea3, !11, !"b43_tab_noisea3", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/b43/tables.c", i32 219, i32 11}
!12 = !{ptr @b43_tab_noiseg1, !13, !"b43_tab_noiseg1", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/b43/tables.c", i32 224, i32 11}
!14 = !{ptr @b43_tab_noiseg2, !15, !"b43_tab_noiseg2", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/b43/tables.c", i32 229, i32 11}
!16 = !{ptr @b43_tab_noisescalea2, !17, !"b43_tab_noisescalea2", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/b43/tables.c", i32 234, i32 11}
!18 = !{ptr @b43_tab_noisescalea3, !19, !"b43_tab_noisescalea3", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/b43/tables.c", i32 244, i32 11}
!20 = !{ptr @b43_tab_noisescaleg1, !21, !"b43_tab_noisescaleg1", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/b43/tables.c", i32 254, i32 11}
!22 = !{ptr @b43_tab_noisescaleg2, !23, !"b43_tab_noisescaleg2", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/b43/tables.c", i32 264, i32 11}
!24 = !{ptr @b43_tab_noisescaleg3, !25, !"b43_tab_noisescaleg3", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/b43/tables.c", i32 274, i32 11}
!26 = !{ptr @b43_tab_sigmasqr1, !27, !"b43_tab_sigmasqr1", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/broadcom/b43/tables.c", i32 284, i32 11}
!28 = !{ptr @b43_tab_sigmasqr2, !29, !"b43_tab_sigmasqr2", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/b43/tables.c", i32 301, i32 11}
!30 = !{ptr @b43_tab_rssiagc1, !31, !"b43_tab_rssiagc1", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/broadcom/b43/tables.c", i32 318, i32 11}
!32 = !{ptr @b43_tab_rssiagc2, !33, !"b43_tab_rssiagc2", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/b43/tables.c", i32 325, i32 11}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
