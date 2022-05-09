; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/radio_2057.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/radio_2057.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.b43_nphy_chantabent_rev7_2g = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.b43_phy_n_sfo_cfg }
%struct.b43_phy_n_sfo_cfg = type { i16, i16, i16, i16, i16, i16 }
%struct.b43_nphy_chantabent_rev7 = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.b43_phy_n_sfo_cfg }
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

@r2057_rev4_init = internal constant { [42 x [2 x i16]], [56 x i8] } { [42 x [2 x i16]] [[2 x i16] [i16 14, i16 32], [2 x i16] [i16 49, i16 0], [2 x i16] [i16 50, i16 0], [2 x i16] [i16 51, i16 0], [2 x i16] [i16 53, i16 38], [2 x i16] [i16 60, i16 255], [2 x i16] [i16 61, i16 255], [2 x i16] [i16 62, i16 255], [2 x i16] [i16 63, i16 255], [2 x i16] [i16 98, i16 51], [2 x i16] [i16 138, i16 240], [2 x i16] [i16 139, i16 16], [2 x i16] [i16 140, i16 240], [2 x i16] [i16 145, i16 63], [2 x i16] [i16 146, i16 54], [2 x i16] [i16 164, i16 140], [2 x i16] [i16 168, i16 85], [2 x i16] [i16 175, i16 1], [2 x i16] [i16 271, i16 240], [2 x i16] [i16 272, i16 16], [2 x i16] [i16 273, i16 240], [2 x i16] [i16 278, i16 63], [2 x i16] [i16 279, i16 54], [2 x i16] [i16 297, i16 140], [2 x i16] [i16 301, i16 85], [2 x i16] [i16 308, i16 1], [2 x i16] [i16 350, i16 0], [2 x i16] [i16 351, i16 0], [2 x i16] [i16 352, i16 0], [2 x i16] [i16 353, i16 0], [2 x i16] [i16 354, i16 0], [2 x i16] [i16 355, i16 0], [2 x i16] [i16 361, i16 2], [2 x i16] [i16 362, i16 0], [2 x i16] [i16 363, i16 0], [2 x i16] [i16 364, i16 0], [2 x i16] [i16 420, i16 0], [2 x i16] [i16 421, i16 0], [2 x i16] [i16 422, i16 0], [2 x i16] [i16 426, i16 0], [2 x i16] [i16 427, i16 0], [2 x i16] [i16 428, i16 0]], [56 x i8] zeroinitializer }, align 32
@r2057_rev5_init = internal constant { [44 x [2 x i16]], [48 x i8] } { [44 x [2 x i16]] [[2 x i16] zeroinitializer, [2 x i16] [i16 1, i16 87], [2 x i16] [i16 2, i16 32], [2 x i16] [i16 35, i16 6], [2 x i16] [i16 49, i16 0], [2 x i16] [i16 50, i16 0], [2 x i16] [i16 51, i16 0], [2 x i16] [i16 81, i16 112], [2 x i16] [i16 89, i16 136], [2 x i16] [i16 92, i16 32], [2 x i16] [i16 98, i16 51], [2 x i16] [i16 99, i16 15], [2 x i16] [i16 100, i16 15], [2 x i16] [i16 129, i16 1], [2 x i16] [i16 145, i16 63], [2 x i16] [i16 146, i16 54], [2 x i16] [i16 161, i16 32], [2 x i16] [i16 214, i16 112], [2 x i16] [i16 222, i16 136], [2 x i16] [i16 225, i16 32], [2 x i16] [i16 232, i16 15], [2 x i16] [i16 233, i16 15], [2 x i16] [i16 262, i16 1], [2 x i16] [i16 278, i16 63], [2 x i16] [i16 279, i16 54], [2 x i16] [i16 294, i16 32], [2 x i16] [i16 350, i16 0], [2 x i16] [i16 351, i16 0], [2 x i16] [i16 352, i16 0], [2 x i16] [i16 353, i16 0], [2 x i16] [i16 354, i16 0], [2 x i16] [i16 355, i16 0], [2 x i16] [i16 362, i16 0], [2 x i16] [i16 363, i16 0], [2 x i16] [i16 364, i16 0], [2 x i16] [i16 420, i16 0], [2 x i16] [i16 421, i16 0], [2 x i16] [i16 422, i16 0], [2 x i16] [i16 426, i16 0], [2 x i16] [i16 427, i16 0], [2 x i16] [i16 428, i16 0], [2 x i16] [i16 439, i16 12], [2 x i16] [i16 449, i16 1], [2 x i16] [i16 450, i16 128]], [48 x i8] zeroinitializer }, align 32
@r2057_rev7_init = internal constant { [54 x [2 x i16]], [40 x i8] } { [54 x [2 x i16]] [[2 x i16] zeroinitializer, [2 x i16] [i16 1, i16 87], [2 x i16] [i16 2, i16 32], [2 x i16] [i16 49, i16 0], [2 x i16] [i16 50, i16 0], [2 x i16] [i16 51, i16 0], [2 x i16] [i16 81, i16 112], [2 x i16] [i16 89, i16 136], [2 x i16] [i16 92, i16 32], [2 x i16] [i16 98, i16 51], [2 x i16] [i16 99, i16 15], [2 x i16] [i16 100, i16 19], [2 x i16] [i16 102, i16 238], [2 x i16] [i16 110, i16 88], [2 x i16] [i16 117, i16 19], [2 x i16] [i16 123, i16 19], [2 x i16] [i16 124, i16 20], [2 x i16] [i16 125, i16 238], [2 x i16] [i16 129, i16 1], [2 x i16] [i16 145, i16 63], [2 x i16] [i16 146, i16 54], [2 x i16] [i16 161, i16 32], [2 x i16] [i16 214, i16 112], [2 x i16] [i16 222, i16 136], [2 x i16] [i16 225, i16 32], [2 x i16] [i16 232, i16 15], [2 x i16] [i16 233, i16 19], [2 x i16] [i16 235, i16 238], [2 x i16] [i16 243, i16 88], [2 x i16] [i16 250, i16 19], [2 x i16] [i16 256, i16 19], [2 x i16] [i16 257, i16 20], [2 x i16] [i16 258, i16 238], [2 x i16] [i16 262, i16 1], [2 x i16] [i16 278, i16 63], [2 x i16] [i16 279, i16 54], [2 x i16] [i16 294, i16 32], [2 x i16] [i16 350, i16 0], [2 x i16] [i16 351, i16 0], [2 x i16] [i16 352, i16 0], [2 x i16] [i16 353, i16 0], [2 x i16] [i16 354, i16 0], [2 x i16] [i16 355, i16 0], [2 x i16] [i16 362, i16 0], [2 x i16] [i16 363, i16 0], [2 x i16] [i16 364, i16 0], [2 x i16] [i16 420, i16 0], [2 x i16] [i16 421, i16 0], [2 x i16] [i16 422, i16 0], [2 x i16] [i16 426, i16 0], [2 x i16] [i16 427, i16 0], [2 x i16] [i16 428, i16 0], [2 x i16] [i16 439, i16 5], [2 x i16] [i16 450, i16 160]], [40 x i8] zeroinitializer }, align 32
@r2057_rev5a_init = internal constant { [45 x [2 x i16]], [44 x i8] } { [45 x [2 x i16]] [[2 x i16] [i16 0, i16 21], [2 x i16] [i16 1, i16 87], [2 x i16] [i16 2, i16 32], [2 x i16] [i16 35, i16 6], [2 x i16] [i16 49, i16 0], [2 x i16] [i16 50, i16 0], [2 x i16] [i16 51, i16 0], [2 x i16] [i16 81, i16 112], [2 x i16] [i16 89, i16 136], [2 x i16] [i16 92, i16 32], [2 x i16] [i16 98, i16 51], [2 x i16] [i16 99, i16 15], [2 x i16] [i16 100, i16 15], [2 x i16] [i16 129, i16 1], [2 x i16] [i16 145, i16 63], [2 x i16] [i16 146, i16 54], [2 x i16] [i16 201, i16 1], [2 x i16] [i16 214, i16 112], [2 x i16] [i16 222, i16 136], [2 x i16] [i16 225, i16 32], [2 x i16] [i16 232, i16 15], [2 x i16] [i16 233, i16 15], [2 x i16] [i16 262, i16 1], [2 x i16] [i16 278, i16 63], [2 x i16] [i16 279, i16 54], [2 x i16] [i16 294, i16 32], [2 x i16] [i16 334, i16 1], [2 x i16] [i16 350, i16 0], [2 x i16] [i16 351, i16 0], [2 x i16] [i16 352, i16 0], [2 x i16] [i16 353, i16 0], [2 x i16] [i16 354, i16 0], [2 x i16] [i16 355, i16 0], [2 x i16] [i16 362, i16 0], [2 x i16] [i16 363, i16 0], [2 x i16] [i16 364, i16 0], [2 x i16] [i16 420, i16 0], [2 x i16] [i16 421, i16 0], [2 x i16] [i16 422, i16 0], [2 x i16] [i16 426, i16 0], [2 x i16] [i16 427, i16 0], [2 x i16] [i16 428, i16 0], [2 x i16] [i16 439, i16 12], [2 x i16] [i16 449, i16 1], [2 x i16] [i16 450, i16 128]], [44 x i8] zeroinitializer }, align 32
@r2057_rev9_init = internal constant { [31 x [2 x i16]], [36 x i8] } { [31 x [2 x i16]] [[2 x i16] [i16 39, i16 31], [2 x i16] [i16 40, i16 10], [2 x i16] [i16 41, i16 47], [2 x i16] [i16 66, i16 31], [2 x i16] [i16 72, i16 63], [2 x i16] [i16 92, i16 65], [2 x i16] [i16 99, i16 20], [2 x i16] [i16 100, i16 18], [2 x i16] [i16 102, i16 255], [2 x i16] [i16 116, i16 163], [2 x i16] [i16 123, i16 20], [2 x i16] [i16 124, i16 20], [2 x i16] [i16 125, i16 238], [2 x i16] [i16 134, i16 192], [2 x i16] [i16 196, i16 16], [2 x i16] [i16 201, i16 1], [2 x i16] [i16 225, i16 65], [2 x i16] [i16 232, i16 20], [2 x i16] [i16 233, i16 18], [2 x i16] [i16 235, i16 255], [2 x i16] [i16 245, i16 10], [2 x i16] [i16 248, i16 9], [2 x i16] [i16 249, i16 163], [2 x i16] [i16 256, i16 20], [2 x i16] [i16 257, i16 16], [2 x i16] [i16 258, i16 238], [2 x i16] [i16 267, i16 192], [2 x i16] [i16 329, i16 16], [2 x i16] [i16 334, i16 1], [2 x i16] [i16 439, i16 5], [2 x i16] [i16 450, i16 160]], [36 x i8] zeroinitializer }, align 32
@r2057_rev14_init = internal constant { [17 x [2 x i16]], [60 x i8] } { [17 x [2 x i16]] [[2 x i16] [i16 17, i16 252], [2 x i16] [i16 48, i16 36], [2 x i16] [i16 64, i16 28], [2 x i16] [i16 130, i16 8], [2 x i16] [i16 180, i16 68], [2 x i16] [i16 200, i16 1], [2 x i16] [i16 201, i16 1], [2 x i16] [i16 263, i16 8], [2 x i16] [i16 333, i16 1], [2 x i16] [i16 334, i16 1], [2 x i16] [i16 431, i16 64], [2 x i16] [i16 432, i16 64], [2 x i16] [i16 460, i16 1], [2 x i16] [i16 463, i16 16], [2 x i16] [i16 464, i16 15], [2 x i16] [i16 467, i16 16], [2 x i16] [i16 468, i16 15]], [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/broadcom/b43/radio_2057.c\00", [49 x i8] zeroinitializer }, align 32
@b43_nphy_chantab_phy_rev8_radio_rev5 = internal constant { [14 x %struct.b43_nphy_chantabent_rev7_2g], [96 x i8] } { [14 x %struct.b43_nphy_chantabent_rev7_2g] [%struct.b43_nphy_chantabent_rev7_2g { i16 2412, i8 72, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 108, i8 9, i8 13, i8 8, i8 14, i8 97, i8 3, i8 -1, i8 97, i8 3, i8 -1, %struct.b43_phy_n_sfo_cfg { i16 969, i16 965, i16 961, i16 1082, i16 1087, i16 1091 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2417, i8 75, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 113, i8 9, i8 13, i8 8, i8 14, i8 97, i8 3, i8 -1, i8 97, i8 3, i8 -1, %struct.b43_phy_n_sfo_cfg { i16 971, i16 967, i16 963, i16 1080, i16 1085, i16 1089 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2422, i8 78, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 118, i8 9, i8 13, i8 8, i8 14, i8 97, i8 3, i8 -17, i8 97, i8 3, i8 -17, %struct.b43_phy_n_sfo_cfg { i16 973, i16 969, i16 965, i16 1078, i16 1082, i16 1087 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2427, i8 82, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 123, i8 9, i8 12, i8 8, i8 14, i8 97, i8 3, i8 -33, i8 97, i8 3, i8 -33, %struct.b43_phy_n_sfo_cfg { i16 975, i16 971, i16 967, i16 1076, i16 1080, i16 1085 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2432, i8 85, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -128, i8 9, i8 12, i8 7, i8 13, i8 97, i8 3, i8 -49, i8 97, i8 3, i8 -49, %struct.b43_phy_n_sfo_cfg { i16 977, i16 973, i16 969, i16 1073, i16 1078, i16 1082 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2437, i8 88, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -123, i8 9, i8 12, i8 7, i8 13, i8 97, i8 3, i8 -65, i8 97, i8 3, i8 -65, %struct.b43_phy_n_sfo_cfg { i16 979, i16 975, i16 971, i16 1071, i16 1076, i16 1080 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2442, i8 92, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -118, i8 9, i8 11, i8 7, i8 13, i8 97, i8 3, i8 -81, i8 97, i8 3, i8 -81, %struct.b43_phy_n_sfo_cfg { i16 981, i16 977, i16 973, i16 1069, i16 1073, i16 1078 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2447, i8 95, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -113, i8 9, i8 11, i8 7, i8 13, i8 97, i8 3, i8 -97, i8 97, i8 3, i8 -97, %struct.b43_phy_n_sfo_cfg { i16 983, i16 979, i16 975, i16 1067, i16 1071, i16 1076 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2452, i8 98, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -108, i8 9, i8 11, i8 7, i8 13, i8 97, i8 3, i8 -113, i8 97, i8 3, i8 -113, %struct.b43_phy_n_sfo_cfg { i16 985, i16 981, i16 977, i16 1065, i16 1069, i16 1073 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2457, i8 102, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -103, i8 9, i8 11, i8 7, i8 12, i8 97, i8 3, i8 127, i8 97, i8 3, i8 127, %struct.b43_phy_n_sfo_cfg { i16 987, i16 983, i16 979, i16 1063, i16 1067, i16 1071 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2462, i8 105, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -98, i8 9, i8 11, i8 7, i8 12, i8 97, i8 3, i8 111, i8 97, i8 3, i8 111, %struct.b43_phy_n_sfo_cfg { i16 989, i16 985, i16 981, i16 1060, i16 1065, i16 1069 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2467, i8 108, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -93, i8 9, i8 11, i8 6, i8 12, i8 97, i8 3, i8 95, i8 97, i8 3, i8 95, %struct.b43_phy_n_sfo_cfg { i16 991, i16 987, i16 983, i16 1058, i16 1063, i16 1067 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2472, i8 112, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -88, i8 9, i8 10, i8 6, i8 11, i8 97, i8 3, i8 79, i8 97, i8 3, i8 79, %struct.b43_phy_n_sfo_cfg { i16 993, i16 989, i16 985, i16 1056, i16 1060, i16 1065 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2484, i8 120, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -76, i8 9, i8 10, i8 6, i8 11, i8 97, i8 3, i8 63, i8 97, i8 3, i8 63, %struct.b43_phy_n_sfo_cfg { i16 998, i16 994, i16 990, i16 1051, i16 1055, i16 1060 } }], [96 x i8] zeroinitializer }, align 32
@b43_nphy_chantab_phy_rev16_radio_rev9 = internal constant { [20 x %struct.b43_nphy_chantabent_rev7], [216 x i8] } { [20 x %struct.b43_nphy_chantabent_rev7] [%struct.b43_nphy_chantabent_rev7 { i16 2412, i8 72, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 108, i8 9, i8 15, i8 10, i8 0, i8 10, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, %struct.b43_phy_n_sfo_cfg { i16 969, i16 965, i16 961, i16 1082, i16 1087, i16 1091 } }, %struct.b43_nphy_chantabent_rev7 { i16 2417, i8 75, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 113, i8 9, i8 15, i8 10, i8 0, i8 10, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, %struct.b43_phy_n_sfo_cfg { i16 971, i16 967, i16 963, i16 1080, i16 1085, i16 1089 } }, %struct.b43_nphy_chantabent_rev7 { i16 2422, i8 78, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 118, i8 9, i8 15, i8 9, i8 0, i8 9, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, %struct.b43_phy_n_sfo_cfg { i16 973, i16 969, i16 965, i16 1078, i16 1082, i16 1087 } }, %struct.b43_nphy_chantabent_rev7 { i16 2427, i8 82, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 123, i8 9, i8 15, i8 9, i8 0, i8 9, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, %struct.b43_phy_n_sfo_cfg { i16 975, i16 971, i16 967, i16 1076, i16 1080, i16 1085 } }, %struct.b43_nphy_chantabent_rev7 { i16 2432, i8 85, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -128, i8 9, i8 15, i8 8, i8 0, i8 8, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, %struct.b43_phy_n_sfo_cfg { i16 977, i16 973, i16 969, i16 1073, i16 1078, i16 1082 } }, %struct.b43_nphy_chantabent_rev7 { i16 2437, i8 88, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -123, i8 9, i8 15, i8 8, i8 0, i8 8, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, %struct.b43_phy_n_sfo_cfg { i16 979, i16 975, i16 971, i16 1071, i16 1076, i16 1080 } }, %struct.b43_nphy_chantabent_rev7 { i16 2442, i8 92, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -118, i8 9, i8 15, i8 7, i8 0, i8 7, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, %struct.b43_phy_n_sfo_cfg { i16 981, i16 977, i16 973, i16 1069, i16 1073, i16 1078 } }, %struct.b43_nphy_chantabent_rev7 { i16 2447, i8 95, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -113, i8 9, i8 15, i8 7, i8 0, i8 7, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, %struct.b43_phy_n_sfo_cfg { i16 983, i16 979, i16 975, i16 1067, i16 1071, i16 1076 } }, %struct.b43_nphy_chantabent_rev7 { i16 2452, i8 98, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -108, i8 9, i8 15, i8 7, i8 0, i8 7, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, %struct.b43_phy_n_sfo_cfg { i16 985, i16 981, i16 977, i16 1065, i16 1069, i16 1073 } }, %struct.b43_nphy_chantabent_rev7 { i16 2457, i8 102, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -103, i8 9, i8 15, i8 6, i8 0, i8 6, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, %struct.b43_phy_n_sfo_cfg { i16 987, i16 983, i16 979, i16 1063, i16 1067, i16 1071 } }, %struct.b43_nphy_chantabent_rev7 { i16 2462, i8 105, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -98, i8 9, i8 15, i8 6, i8 0, i8 6, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, i8 65, i8 99, i8 0, i8 0, i8 0, i8 -16, i8 0, %struct.b43_phy_n_sfo_cfg { i16 989, i16 985, i16 981, i16 1060, i16 1065, i16 1069 } }, %struct.b43_nphy_chantabent_rev7 { i16 5180, i8 -66, i8 22, i8 16, i8 31, i8 8, i8 8, i8 63, i8 6, i8 2, i8 14, i8 0, i8 14, i8 0, i8 -98, i8 0, i8 0, i8 -97, i8 47, i8 -93, i8 0, i8 -4, i8 0, i8 0, i8 79, i8 58, i8 -125, i8 0, i8 -4, %struct.b43_phy_n_sfo_cfg { i16 2076, i16 2072, i16 2068, i16 505, i16 506, i16 507 } }, %struct.b43_nphy_chantabent_rev7 { i16 5200, i8 -59, i8 22, i8 16, i8 31, i8 8, i8 8, i8 63, i8 8, i8 2, i8 14, i8 0, i8 14, i8 0, i8 -98, i8 0, i8 0, i8 127, i8 47, i8 -125, i8 0, i8 -8, i8 0, i8 0, i8 76, i8 74, i8 -125, i8 0, i8 -8, %struct.b43_phy_n_sfo_cfg { i16 2084, i16 2080, i16 2076, i16 503, i16 504, i16 505 } }, %struct.b43_nphy_chantabent_rev7 { i16 5220, i8 -52, i8 22, i8 16, i8 31, i8 8, i8 8, i8 63, i8 10, i8 2, i8 14, i8 0, i8 14, i8 0, i8 -98, i8 0, i8 0, i8 109, i8 61, i8 -125, i8 0, i8 -8, i8 0, i8 0, i8 45, i8 42, i8 115, i8 0, i8 -8, %struct.b43_phy_n_sfo_cfg { i16 2092, i16 2088, i16 2084, i16 501, i16 502, i16 503 } }, %struct.b43_nphy_chantabent_rev7 { i16 5240, i8 -46, i8 22, i8 16, i8 31, i8 8, i8 8, i8 63, i8 12, i8 2, i8 13, i8 0, i8 13, i8 0, i8 -115, i8 0, i8 0, i8 77, i8 28, i8 115, i8 0, i8 -8, i8 0, i8 0, i8 77, i8 43, i8 115, i8 0, i8 -8, %struct.b43_phy_n_sfo_cfg { i16 2100, i16 2096, i16 2092, i16 499, i16 500, i16 501 } }, %struct.b43_nphy_chantabent_rev7 { i16 5745, i8 123, i8 23, i8 32, i8 31, i8 8, i8 8, i8 63, i8 125, i8 4, i8 8, i8 0, i8 6, i8 0, i8 21, i8 0, i8 0, i8 8, i8 3, i8 3, i8 0, i8 48, i8 0, i8 0, i8 6, i8 2, i8 3, i8 0, i8 48, %struct.b43_phy_n_sfo_cfg { i16 2302, i16 2298, i16 2294, i16 456, i16 456, i16 457 } }, %struct.b43_nphy_chantabent_rev7 { i16 5765, i8 -127, i8 23, i8 32, i8 31, i8 8, i8 8, i8 63, i8 -127, i8 4, i8 8, i8 0, i8 6, i8 0, i8 21, i8 0, i8 0, i8 6, i8 3, i8 3, i8 0, i8 0, i8 0, i8 0, i8 5, i8 2, i8 3, i8 0, i8 0, %struct.b43_phy_n_sfo_cfg { i16 2310, i16 2306, i16 2302, i16 454, i16 455, i16 456 } }, %struct.b43_nphy_chantabent_rev7 { i16 5785, i8 -120, i8 23, i8 32, i8 31, i8 8, i8 8, i8 63, i8 -123, i8 4, i8 8, i8 0, i8 6, i8 0, i8 21, i8 0, i8 0, i8 8, i8 3, i8 3, i8 0, i8 0, i8 0, i8 0, i8 5, i8 33, i8 3, i8 0, i8 0, %struct.b43_phy_n_sfo_cfg { i16 2318, i16 2314, i16 2310, i16 452, i16 453, i16 454 } }, %struct.b43_nphy_chantabent_rev7 { i16 5805, i8 -113, i8 23, i8 32, i8 31, i8 8, i8 8, i8 63, i8 -119, i8 4, i8 7, i8 0, i8 6, i8 0, i8 4, i8 0, i8 0, i8 6, i8 3, i8 3, i8 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 3, i8 0, i8 0, %struct.b43_phy_n_sfo_cfg { i16 2326, i16 2322, i16 2318, i16 451, i16 452, i16 452 } }, %struct.b43_nphy_chantabent_rev7 { i16 5825, i8 -107, i8 23, i8 32, i8 31, i8 8, i8 8, i8 63, i8 -115, i8 4, i8 7, i8 0, i8 5, i8 0, i8 3, i8 0, i8 0, i8 5, i8 3, i8 3, i8 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 3, i8 0, i8 0, %struct.b43_phy_n_sfo_cfg { i16 2334, i16 2330, i16 2326, i16 449, i16 450, i16 451 } }], [216 x i8] zeroinitializer }, align 32
@b43_nphy_chantab_phy_rev17_radio_rev14 = internal constant { [11 x %struct.b43_nphy_chantabent_rev7_2g], [64 x i8] } { [11 x %struct.b43_nphy_chantabent_rev7_2g] [%struct.b43_nphy_chantabent_rev7_2g { i16 2412, i8 72, i8 22, i8 48, i8 43, i8 31, i8 31, i8 48, i8 108, i8 9, i8 13, i8 9, i8 3, i8 33, i8 83, i8 -1, i8 33, i8 83, i8 -1, %struct.b43_phy_n_sfo_cfg { i16 969, i16 965, i16 961, i16 1082, i16 1087, i16 1091 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2417, i8 75, i8 22, i8 48, i8 43, i8 31, i8 31, i8 48, i8 113, i8 9, i8 13, i8 8, i8 3, i8 33, i8 83, i8 -1, i8 33, i8 83, i8 -1, %struct.b43_phy_n_sfo_cfg { i16 971, i16 967, i16 963, i16 1080, i16 1085, i16 1089 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2422, i8 78, i8 22, i8 48, i8 43, i8 31, i8 31, i8 48, i8 118, i8 9, i8 13, i8 8, i8 3, i8 33, i8 83, i8 -1, i8 33, i8 83, i8 -1, %struct.b43_phy_n_sfo_cfg { i16 973, i16 969, i16 965, i16 1078, i16 1082, i16 1087 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2427, i8 82, i8 22, i8 48, i8 43, i8 31, i8 31, i8 48, i8 123, i8 9, i8 12, i8 8, i8 3, i8 33, i8 83, i8 -1, i8 33, i8 83, i8 -1, %struct.b43_phy_n_sfo_cfg { i16 975, i16 971, i16 967, i16 1076, i16 1080, i16 1085 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2432, i8 85, i8 22, i8 48, i8 43, i8 31, i8 31, i8 48, i8 -128, i8 9, i8 12, i8 8, i8 3, i8 33, i8 83, i8 -1, i8 33, i8 83, i8 -1, %struct.b43_phy_n_sfo_cfg { i16 977, i16 973, i16 969, i16 1073, i16 1078, i16 1082 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2437, i8 88, i8 22, i8 48, i8 43, i8 31, i8 31, i8 48, i8 -123, i8 9, i8 12, i8 8, i8 3, i8 33, i8 83, i8 -1, i8 33, i8 83, i8 -1, %struct.b43_phy_n_sfo_cfg { i16 979, i16 975, i16 971, i16 1071, i16 1076, i16 1080 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2442, i8 92, i8 22, i8 48, i8 43, i8 31, i8 31, i8 48, i8 -118, i8 9, i8 12, i8 8, i8 3, i8 33, i8 67, i8 -1, i8 33, i8 67, i8 -1, %struct.b43_phy_n_sfo_cfg { i16 981, i16 977, i16 973, i16 1069, i16 1073, i16 1078 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2447, i8 95, i8 22, i8 48, i8 43, i8 31, i8 31, i8 48, i8 -113, i8 9, i8 12, i8 8, i8 3, i8 33, i8 67, i8 -1, i8 33, i8 67, i8 -1, %struct.b43_phy_n_sfo_cfg { i16 983, i16 979, i16 975, i16 1067, i16 1071, i16 1076 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2452, i8 98, i8 22, i8 48, i8 43, i8 31, i8 31, i8 48, i8 -108, i8 9, i8 12, i8 8, i8 3, i8 33, i8 67, i8 -1, i8 33, i8 67, i8 -1, %struct.b43_phy_n_sfo_cfg { i16 985, i16 981, i16 977, i16 1065, i16 1069, i16 1073 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2457, i8 102, i8 22, i8 48, i8 43, i8 31, i8 31, i8 48, i8 -103, i8 9, i8 11, i8 7, i8 3, i8 33, i8 67, i8 -1, i8 33, i8 67, i8 -1, %struct.b43_phy_n_sfo_cfg { i16 987, i16 983, i16 979, i16 1063, i16 1067, i16 1071 } }, %struct.b43_nphy_chantabent_rev7_2g { i16 2462, i8 105, i8 22, i8 48, i8 43, i8 31, i8 31, i8 48, i8 -98, i8 9, i8 11, i8 7, i8 3, i8 1, i8 67, i8 -1, i8 1, i8 67, i8 -1, %struct.b43_phy_n_sfo_cfg { i16 989, i16 985, i16 981, i16 1060, i16 1065, i16 1069 } }], [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 7, i64 8, i64 9, i64 16, i64 17]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 7]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 16, i64 17]
@__sancov_gen_cov_switch_values.3 = internal global [22 x i64] [i64 20, i64 16, i64 2412, i64 2417, i64 2422, i64 2427, i64 2432, i64 2437, i64 2442, i64 2447, i64 2452, i64 2457, i64 2462, i64 5180, i64 5200, i64 5220, i64 5240, i64 5745, i64 5765, i64 5785, i64 5805, i64 5825]
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"r2057_rev4_init\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 16, i32 12 }
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"r2057_rev5_init\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 30, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"r2057_rev7_init\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 59, i32 12 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"r2057_rev5a_init\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 44, i32 12 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"r2057_rev9_init\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 96, i32 12 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"r2057_rev14_init\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 108, i32 12 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 564, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [37 x i8] c"b43_nphy_chantab_phy_rev8_radio_rev5\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 178, i32 49 }
@___asan_gen_.28 = private unnamed_addr constant [38 x i8] c"b43_nphy_chantab_phy_rev16_radio_rev9\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 361, i32 46 }
@___asan_gen_.31 = private unnamed_addr constant [39 x i8] c"b43_nphy_chantab_phy_rev17_radio_rev14\00", align 1
@___asan_gen_.32 = private constant [50 x i8] c"../drivers/net/wireless/broadcom/b43/radio_2057.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 280, i32 49 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @r2057_rev4_init, ptr @r2057_rev5_init, ptr @r2057_rev7_init, ptr @r2057_rev5a_init, ptr @r2057_rev9_init, ptr @r2057_rev14_init, ptr @.str, ptr @b43_nphy_chantab_phy_rev8_radio_rev5, ptr @b43_nphy_chantab_phy_rev16_radio_rev9, ptr @b43_nphy_chantab_phy_rev17_radio_rev14], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r2057_rev4_init to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r2057_rev5_init to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r2057_rev7_init to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r2057_rev5a_init to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r2057_rev9_init to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r2057_rev14_init to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_nphy_chantab_phy_rev8_radio_rev5 to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_nphy_chantab_phy_rev16_radio_rev9 to i32), i32 840, i32 1056, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_nphy_chantab_phy_rev17_radio_rev14 to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r2057_upload_inittabs(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.do.end_crit_edge [
    i8 7, label %entry.sw.epilog_crit_edge
    i8 8, label %sw.bb2
    i8 9, label %sw.bb11
    i8 16, label %sw.bb18
    i8 17, label %sw.bb25
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

sw.bb2:                                           ; preds = %entry
  %radio_rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %3 = ptrtoint ptr %radio_rev to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %radio_rev, align 4
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %4, label %sw.bb2.do.end_crit_edge [
    i8 5, label %sw.bb2.sw.epilog_crit_edge
    i8 7, label %if.then9
  ]

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb2.do.end_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

if.then9:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %radio_rev12 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %6 = ptrtoint ptr %radio_rev12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %radio_rev12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp14 = icmp eq i8 %7, 5
  br i1 %cmp14, label %sw.bb11.sw.epilog_crit_edge, label %sw.bb11.do.end_crit_edge, !prof !29

sw.bb11.do.end_crit_edge:                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %radio_rev19 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %8 = ptrtoint ptr %radio_rev19 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %radio_rev19, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %9)
  %cmp21 = icmp eq i8 %9, 9
  br i1 %cmp21, label %sw.bb18.sw.epilog_crit_edge, label %sw.bb18.do.end_crit_edge, !prof !29

sw.bb18.do.end_crit_edge:                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %radio_rev26 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %10 = ptrtoint ptr %radio_rev26 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %radio_rev26, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %11)
  %cmp28 = icmp eq i8 %11, 14
  br i1 %cmp28, label %sw.bb25.sw.epilog_crit_edge, label %sw.bb25.do.end_crit_edge, !prof !29

sw.bb25.do.end_crit_edge:                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25.sw.epilog_crit_edge, %sw.bb18.sw.epilog_crit_edge, %sw.bb11.sw.epilog_crit_edge, %if.then9, %sw.bb2.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %table.0 = phi ptr [ @r2057_rev7_init, %if.then9 ], [ @r2057_rev5_init, %sw.bb2.sw.epilog_crit_edge ], [ @r2057_rev4_init, %entry.sw.epilog_crit_edge ], [ @r2057_rev5a_init, %sw.bb11.sw.epilog_crit_edge ], [ @r2057_rev9_init, %sw.bb18.sw.epilog_crit_edge ], [ @r2057_rev14_init, %sw.bb25.sw.epilog_crit_edge ]
  %size.0 = phi i32 [ 54, %if.then9 ], [ 44, %sw.bb2.sw.epilog_crit_edge ], [ 42, %entry.sw.epilog_crit_edge ], [ 45, %sw.bb11.sw.epilog_crit_edge ], [ 31, %sw.bb18.sw.epilog_crit_edge ], [ 17, %sw.bb25.sw.epilog_crit_edge ]
  br label %for.body

do.end:                                           ; preds = %sw.bb25.do.end_crit_edge, %sw.bb18.do.end_crit_edge, %sw.bb11.do.end_crit_edge, %sw.bb2.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 564, i32 noundef 9, ptr noundef null) #2
  br label %if.end61

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.epilog
  %indvars.iv = phi i32 [ 0, %sw.epilog ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %table.177 = phi ptr [ %table.0, %sw.epilog ], [ %add.ptr, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %table.177 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %table.177, align 2
  %arrayidx60 = getelementptr i16, ptr %table.177, i32 1
  %14 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx60, align 2
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext %13, i16 noundef zeroext %15) #2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %add.ptr = getelementptr i16, ptr %table.177, i32 2
  %exitcond.not = icmp eq i32 %indvars.iv.next, %size.0
  br i1 %exitcond.not, label %for.body.if.end61_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.if.end61_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end61

if.end61:                                         ; preds = %for.body.if.end61_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_radio_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r2057_get_chantabent_rev7(ptr nocapture noundef readonly %dev, i16 noundef zeroext %freq, ptr nocapture noundef writeonly %tabent_r7, ptr nocapture noundef writeonly %tabent_r7_2g) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tabent_r7 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tabent_r7, align 4
  %1 = ptrtoint ptr %tabent_r7_2g to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %tabent_r7_2g, align 4
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %2 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rev, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %3, label %entry.do.end_crit_edge [
    i8 8, label %sw.bb
    i8 16, label %sw.bb4
    i8 17, label %sw.bb11
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

sw.bb:                                            ; preds = %entry
  %radio_rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %5 = ptrtoint ptr %radio_rev to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %radio_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %6)
  %cmp = icmp eq i8 %6, 5
  br i1 %cmp, label %sw.bb.if.else_crit_edge, label %sw.bb.do.end_crit_edge

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

sw.bb4:                                           ; preds = %entry
  %radio_rev5 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %7 = ptrtoint ptr %radio_rev5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %radio_rev5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %8)
  %cmp7 = icmp eq i8 %8, 9
  br i1 %cmp7, label %for.body.preheader, label %sw.bb4.do.end_crit_edge

sw.bb4.do.end_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

for.body.preheader:                               ; preds = %sw.bb4
  %9 = zext i16 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %freq, label %for.body.preheader.cleanup_crit_edge [
    i16 2412, label %for.body.preheader.if.then26_crit_edge
    i16 2417, label %if.then26.fold.split
    i16 2422, label %if.then26.fold.split108
    i16 2427, label %if.then26.fold.split109
    i16 2432, label %if.then26.fold.split110
    i16 2437, label %if.then26.fold.split111
    i16 2442, label %if.then26.fold.split112
    i16 2447, label %if.then26.fold.split113
    i16 2452, label %if.then26.fold.split114
    i16 2457, label %if.then26.fold.split115
    i16 2462, label %if.then26.fold.split116
    i16 5180, label %if.then26.fold.split117
    i16 5200, label %if.then26.fold.split118
    i16 5220, label %if.then26.fold.split119
    i16 5240, label %if.then26.fold.split120
    i16 5745, label %if.then26.fold.split121
    i16 5765, label %if.then26.fold.split122
    i16 5785, label %if.then26.fold.split123
    i16 5805, label %if.then26.fold.split124
    i16 5825, label %if.then26.fold.split125
  ]

for.body.preheader.if.then26_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then26

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %radio_rev12 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 12
  %10 = ptrtoint ptr %radio_rev12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %radio_rev12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %11)
  %cmp14 = icmp eq i8 %11, 14
  br i1 %cmp14, label %sw.bb11.if.else_crit_edge, label %sw.bb11.do.end_crit_edge

sw.bb11.do.end_crit_edge:                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

sw.bb11.if.else_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

if.then26.fold.split:                             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then26

if.then26.fold.split108:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then26

if.then26.fold.split109:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then26

if.then26.fold.split110:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then26

if.then26.fold.split111:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then26

if.then26.fold.split112:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then26

if.then26.fold.split113:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then26

if.then26.fold.split114:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then26

if.then26.fold.split115:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then26

if.then26.fold.split116:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then26

if.then26.fold.split117:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then26

if.then26.fold.split118:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then26

if.then26.fold.split119:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then26

if.then26.fold.split120:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then26

if.then26.fold.split121:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then26

if.then26.fold.split122:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then26

if.then26.fold.split123:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then26

if.then26.fold.split124:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then26

if.then26.fold.split125:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then26

if.then26:                                        ; preds = %if.then26.fold.split125, %if.then26.fold.split124, %if.then26.fold.split123, %if.then26.fold.split122, %if.then26.fold.split121, %if.then26.fold.split120, %if.then26.fold.split119, %if.then26.fold.split118, %if.then26.fold.split117, %if.then26.fold.split116, %if.then26.fold.split115, %if.then26.fold.split114, %if.then26.fold.split113, %if.then26.fold.split112, %if.then26.fold.split111, %if.then26.fold.split110, %if.then26.fold.split109, %if.then26.fold.split108, %if.then26.fold.split, %for.body.preheader.if.then26_crit_edge
  %e_r7.1100.lcssa = phi ptr [ @b43_nphy_chantab_phy_rev16_radio_rev9, %for.body.preheader.if.then26_crit_edge ], [ getelementptr inbounds ([20 x %struct.b43_nphy_chantabent_rev7], ptr @b43_nphy_chantab_phy_rev16_radio_rev9, i32 0, i32 1), %if.then26.fold.split ], [ getelementptr inbounds ([20 x %struct.b43_nphy_chantabent_rev7], ptr @b43_nphy_chantab_phy_rev16_radio_rev9, i32 0, i32 2), %if.then26.fold.split108 ], [ getelementptr inbounds ([20 x %struct.b43_nphy_chantabent_rev7], ptr @b43_nphy_chantab_phy_rev16_radio_rev9, i32 0, i32 3), %if.then26.fold.split109 ], [ getelementptr inbounds ([20 x %struct.b43_nphy_chantabent_rev7], ptr @b43_nphy_chantab_phy_rev16_radio_rev9, i32 0, i32 4), %if.then26.fold.split110 ], [ getelementptr inbounds ([20 x %struct.b43_nphy_chantabent_rev7], ptr @b43_nphy_chantab_phy_rev16_radio_rev9, i32 0, i32 5), %if.then26.fold.split111 ], [ getelementptr inbounds ([20 x %struct.b43_nphy_chantabent_rev7], ptr @b43_nphy_chantab_phy_rev16_radio_rev9, i32 0, i32 6), %if.then26.fold.split112 ], [ getelementptr inbounds ([20 x %struct.b43_nphy_chantabent_rev7], ptr @b43_nphy_chantab_phy_rev16_radio_rev9, i32 0, i32 7), %if.then26.fold.split113 ], [ getelementptr inbounds ([20 x %struct.b43_nphy_chantabent_rev7], ptr @b43_nphy_chantab_phy_rev16_radio_rev9, i32 0, i32 8), %if.then26.fold.split114 ], [ getelementptr inbounds ([20 x %struct.b43_nphy_chantabent_rev7], ptr @b43_nphy_chantab_phy_rev16_radio_rev9, i32 0, i32 9), %if.then26.fold.split115 ], [ getelementptr inbounds ([20 x %struct.b43_nphy_chantabent_rev7], ptr @b43_nphy_chantab_phy_rev16_radio_rev9, i32 0, i32 10), %if.then26.fold.split116 ], [ getelementptr inbounds ([20 x %struct.b43_nphy_chantabent_rev7], ptr @b43_nphy_chantab_phy_rev16_radio_rev9, i32 0, i32 11), %if.then26.fold.split117 ], [ getelementptr inbounds ([20 x %struct.b43_nphy_chantabent_rev7], ptr @b43_nphy_chantab_phy_rev16_radio_rev9, i32 0, i32 12), %if.then26.fold.split118 ], [ getelementptr inbounds ([20 x %struct.b43_nphy_chantabent_rev7], ptr @b43_nphy_chantab_phy_rev16_radio_rev9, i32 0, i32 13), %if.then26.fold.split119 ], [ getelementptr inbounds ([20 x %struct.b43_nphy_chantabent_rev7], ptr @b43_nphy_chantab_phy_rev16_radio_rev9, i32 0, i32 14), %if.then26.fold.split120 ], [ getelementptr inbounds ([20 x %struct.b43_nphy_chantabent_rev7], ptr @b43_nphy_chantab_phy_rev16_radio_rev9, i32 0, i32 15), %if.then26.fold.split121 ], [ getelementptr inbounds ([20 x %struct.b43_nphy_chantabent_rev7], ptr @b43_nphy_chantab_phy_rev16_radio_rev9, i32 0, i32 16), %if.then26.fold.split122 ], [ getelementptr inbounds ([20 x %struct.b43_nphy_chantabent_rev7], ptr @b43_nphy_chantab_phy_rev16_radio_rev9, i32 0, i32 17), %if.then26.fold.split123 ], [ getelementptr inbounds ([20 x %struct.b43_nphy_chantabent_rev7], ptr @b43_nphy_chantab_phy_rev16_radio_rev9, i32 0, i32 18), %if.then26.fold.split124 ], [ getelementptr inbounds ([20 x %struct.b43_nphy_chantabent_rev7], ptr @b43_nphy_chantab_phy_rev16_radio_rev9, i32 0, i32 19), %if.then26.fold.split125 ]
  %12 = ptrtoint ptr %tabent_r7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %e_r7.1100.lcssa, ptr %tabent_r7, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb11.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %e_r7_2g.0.ph = phi ptr [ @b43_nphy_chantab_phy_rev8_radio_rev5, %sw.bb.if.else_crit_edge ], [ @b43_nphy_chantab_phy_rev17_radio_rev14, %sw.bb11.if.else_crit_edge ]
  %len.0.ph = phi i32 [ 14, %sw.bb.if.else_crit_edge ], [ 11, %sw.bb11.if.else_crit_edge ]
  br label %for.body33

for.body33:                                       ; preds = %for.inc41.for.body33_crit_edge, %if.else
  %i.1103 = phi i32 [ 0, %if.else ], [ %inc42, %for.inc41.for.body33_crit_edge ]
  %e_r7_2g.1102 = phi ptr [ %e_r7_2g.0.ph, %if.else ], [ %incdec.ptr43, %for.inc41.for.body33_crit_edge ]
  %13 = ptrtoint ptr %e_r7_2g.1102 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %e_r7_2g.1102, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %freq)
  %cmp37 = icmp eq i16 %14, %freq
  br i1 %cmp37, label %if.then39, label %for.inc41

if.then39:                                        ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #4
  %15 = ptrtoint ptr %tabent_r7_2g to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %e_r7_2g.1102, ptr %tabent_r7_2g, align 4
  br label %cleanup

for.inc41:                                        ; preds = %for.body33
  %inc42 = add nuw nsw i32 %i.1103, 1
  %incdec.ptr43 = getelementptr %struct.b43_nphy_chantabent_rev7_2g, ptr %e_r7_2g.1102, i32 1
  %exitcond.not = icmp eq i32 %inc42, %len.0.ph
  br i1 %exitcond.not, label %for.inc41.cleanup_crit_edge, label %for.inc41.for.body33_crit_edge

for.inc41.for.body33_crit_edge:                   ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body33

for.inc41.cleanup_crit_edge:                      ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end:                                           ; preds = %sw.bb11.do.end_crit_edge, %sw.bb4.do.end_crit_edge, %sw.bb.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 622, i32 noundef 9, ptr noundef null) #2
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.inc41.cleanup_crit_edge, %if.then39, %if.then26, %for.body.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43/radio_2057.c", i32 564, i32 2}
!2 = !{ptr @r2057_rev4_init, !3, !"r2057_rev4_init", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43/radio_2057.c", i32 16, i32 12}
!4 = !{ptr @r2057_rev5_init, !5, !"r2057_rev5_init", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43/radio_2057.c", i32 30, i32 12}
!6 = !{ptr @r2057_rev7_init, !7, !"r2057_rev7_init", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43/radio_2057.c", i32 59, i32 12}
!8 = !{ptr @r2057_rev5a_init, !9, !"r2057_rev5a_init", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/b43/radio_2057.c", i32 44, i32 12}
!10 = !{ptr @r2057_rev9_init, !11, !"r2057_rev9_init", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/b43/radio_2057.c", i32 96, i32 12}
!12 = !{ptr @r2057_rev14_init, !13, !"r2057_rev14_init", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/b43/radio_2057.c", i32 108, i32 12}
!14 = !{ptr @b43_nphy_chantab_phy_rev8_radio_rev5, !15, !"b43_nphy_chantab_phy_rev8_radio_rev5", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/b43/radio_2057.c", i32 178, i32 49}
!16 = !{ptr @b43_nphy_chantab_phy_rev16_radio_rev9, !17, !"b43_nphy_chantab_phy_rev16_radio_rev9", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/b43/radio_2057.c", i32 361, i32 46}
!18 = !{ptr @b43_nphy_chantab_phy_rev17_radio_rev14, !19, !"b43_nphy_chantab_phy_rev17_radio_rev14", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/b43/radio_2057.c", i32 280, i32 49}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 2146410443, i32 1073205}
