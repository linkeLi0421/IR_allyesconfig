; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/radio_2059.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/radio_2059.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.b43_phy_ht_channeltab_e_radio2059 = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.b43_phy_ht_channeltab_e_phy }
%struct.b43_phy_ht_channeltab_e_phy = type { i16, i16, i16, i16, i16, i16 }
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

@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/broadcom/b43/radio_2059.c\00", [49 x i8] zeroinitializer }, align 32
@b43_phy_ht_channeltab_radio2059 = internal constant { [37 x %struct.b43_phy_ht_channeltab_e_radio2059], [332 x i8] } { [37 x %struct.b43_phy_ht_channeltab_e_radio2059] [%struct.b43_phy_ht_channeltab_e_radio2059 { i16 2412, i8 72, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 108, i8 9, i8 15, i8 10, i8 0, i8 10, i8 0, i8 97, i8 115, i8 0, i8 0, i8 0, i8 -48, i8 0, %struct.b43_phy_ht_channeltab_e_phy { i16 969, i16 965, i16 961, i16 1082, i16 1087, i16 1091 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 2417, i8 75, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 113, i8 9, i8 15, i8 10, i8 0, i8 10, i8 0, i8 97, i8 115, i8 0, i8 0, i8 0, i8 -48, i8 0, %struct.b43_phy_ht_channeltab_e_phy { i16 971, i16 967, i16 963, i16 1080, i16 1085, i16 1089 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 2422, i8 78, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 118, i8 9, i8 15, i8 9, i8 0, i8 9, i8 0, i8 97, i8 115, i8 0, i8 0, i8 0, i8 -48, i8 0, %struct.b43_phy_ht_channeltab_e_phy { i16 973, i16 969, i16 965, i16 1078, i16 1082, i16 1087 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 2427, i8 82, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 123, i8 9, i8 15, i8 9, i8 0, i8 9, i8 0, i8 97, i8 115, i8 0, i8 0, i8 0, i8 -96, i8 0, %struct.b43_phy_ht_channeltab_e_phy { i16 975, i16 971, i16 967, i16 1076, i16 1080, i16 1085 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 2432, i8 85, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -128, i8 9, i8 15, i8 8, i8 0, i8 8, i8 0, i8 97, i8 115, i8 0, i8 0, i8 0, i8 -96, i8 0, %struct.b43_phy_ht_channeltab_e_phy { i16 977, i16 973, i16 969, i16 1073, i16 1078, i16 1082 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 2437, i8 88, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -123, i8 9, i8 15, i8 8, i8 0, i8 8, i8 0, i8 97, i8 115, i8 0, i8 0, i8 0, i8 -96, i8 0, %struct.b43_phy_ht_channeltab_e_phy { i16 979, i16 975, i16 971, i16 1071, i16 1076, i16 1080 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 2442, i8 92, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -118, i8 9, i8 15, i8 7, i8 0, i8 7, i8 0, i8 97, i8 115, i8 0, i8 0, i8 0, i8 -128, i8 0, %struct.b43_phy_ht_channeltab_e_phy { i16 981, i16 977, i16 973, i16 1069, i16 1073, i16 1078 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 2447, i8 95, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -113, i8 9, i8 15, i8 7, i8 0, i8 7, i8 0, i8 97, i8 115, i8 0, i8 0, i8 0, i8 -128, i8 0, %struct.b43_phy_ht_channeltab_e_phy { i16 983, i16 979, i16 975, i16 1067, i16 1071, i16 1076 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 2452, i8 98, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -108, i8 9, i8 15, i8 7, i8 0, i8 7, i8 0, i8 97, i8 115, i8 0, i8 0, i8 0, i8 -128, i8 0, %struct.b43_phy_ht_channeltab_e_phy { i16 985, i16 981, i16 977, i16 1065, i16 1069, i16 1073 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 2457, i8 102, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -103, i8 9, i8 15, i8 6, i8 0, i8 6, i8 0, i8 97, i8 115, i8 0, i8 0, i8 0, i8 96, i8 0, %struct.b43_phy_ht_channeltab_e_phy { i16 987, i16 983, i16 979, i16 1063, i16 1067, i16 1071 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 2462, i8 105, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -98, i8 9, i8 15, i8 6, i8 0, i8 6, i8 0, i8 97, i8 115, i8 0, i8 0, i8 0, i8 96, i8 0, %struct.b43_phy_ht_channeltab_e_phy { i16 989, i16 985, i16 981, i16 1060, i16 1065, i16 1069 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 2467, i8 108, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -93, i8 9, i8 15, i8 5, i8 0, i8 5, i8 0, i8 97, i8 3, i8 0, i8 0, i8 0, i8 -16, i8 0, %struct.b43_phy_ht_channeltab_e_phy { i16 991, i16 987, i16 983, i16 1058, i16 1063, i16 1067 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 2472, i8 112, i8 22, i8 48, i8 27, i8 10, i8 10, i8 48, i8 -88, i8 9, i8 15, i8 5, i8 0, i8 5, i8 0, i8 97, i8 3, i8 0, i8 0, i8 0, i8 -16, i8 0, %struct.b43_phy_ht_channeltab_e_phy { i16 993, i16 989, i16 985, i16 1056, i16 1060, i16 1065 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5180, i8 -66, i8 22, i8 16, i8 31, i8 8, i8 8, i8 63, i8 6, i8 2, i8 12, i8 0, i8 12, i8 0, i8 12, i8 0, i8 0, i8 15, i8 79, i8 -93, i8 0, i8 -4, %struct.b43_phy_ht_channeltab_e_phy { i16 2076, i16 2072, i16 2068, i16 505, i16 506, i16 507 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5200, i8 -59, i8 22, i8 16, i8 31, i8 8, i8 8, i8 63, i8 8, i8 2, i8 12, i8 0, i8 12, i8 0, i8 12, i8 0, i8 0, i8 15, i8 79, i8 -109, i8 0, i8 -5, %struct.b43_phy_ht_channeltab_e_phy { i16 2084, i16 2080, i16 2076, i16 503, i16 504, i16 505 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5220, i8 -52, i8 22, i8 16, i8 31, i8 8, i8 8, i8 63, i8 10, i8 2, i8 12, i8 0, i8 12, i8 0, i8 12, i8 0, i8 0, i8 15, i8 79, i8 -109, i8 0, i8 -22, %struct.b43_phy_ht_channeltab_e_phy { i16 2092, i16 2088, i16 2084, i16 501, i16 502, i16 503 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5240, i8 -46, i8 22, i8 16, i8 31, i8 8, i8 8, i8 63, i8 12, i8 2, i8 12, i8 0, i8 12, i8 0, i8 12, i8 0, i8 0, i8 15, i8 79, i8 -109, i8 0, i8 -38, %struct.b43_phy_ht_channeltab_e_phy { i16 2100, i16 2096, i16 2092, i16 499, i16 500, i16 501 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5260, i8 -39, i8 22, i8 16, i8 31, i8 8, i8 8, i8 63, i8 14, i8 2, i8 11, i8 0, i8 11, i8 0, i8 11, i8 0, i8 0, i8 15, i8 79, i8 -109, i8 0, i8 -54, %struct.b43_phy_ht_channeltab_e_phy { i16 2108, i16 2104, i16 2100, i16 497, i16 498, i16 499 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5280, i8 -32, i8 22, i8 16, i8 31, i8 8, i8 8, i8 63, i8 16, i8 2, i8 11, i8 0, i8 11, i8 0, i8 11, i8 0, i8 0, i8 15, i8 79, i8 -109, i8 0, i8 -71, %struct.b43_phy_ht_channeltab_e_phy { i16 2116, i16 2112, i16 2108, i16 496, i16 496, i16 497 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5300, i8 -26, i8 22, i8 16, i8 31, i8 8, i8 8, i8 63, i8 18, i8 2, i8 11, i8 0, i8 11, i8 0, i8 11, i8 0, i8 0, i8 15, i8 76, i8 -125, i8 0, i8 -72, %struct.b43_phy_ht_channeltab_e_phy { i16 2124, i16 2120, i16 2116, i16 494, i16 495, i16 496 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5320, i8 -19, i8 22, i8 16, i8 31, i8 8, i8 8, i8 63, i8 20, i8 2, i8 11, i8 0, i8 11, i8 0, i8 11, i8 0, i8 0, i8 15, i8 76, i8 -125, i8 0, i8 -88, %struct.b43_phy_ht_channeltab_e_phy { i16 2132, i16 2128, i16 2124, i16 492, i16 493, i16 494 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5500, i8 41, i8 23, i8 16, i8 31, i8 8, i8 8, i8 63, i8 38, i8 2, i8 9, i8 0, i8 9, i8 0, i8 9, i8 0, i8 0, i8 10, i8 70, i8 67, i8 0, i8 117, %struct.b43_phy_ht_channeltab_e_phy { i16 2204, i16 2200, i16 2196, i16 476, i16 477, i16 477 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5520, i8 48, i8 23, i8 16, i8 31, i8 8, i8 8, i8 63, i8 40, i8 2, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 0, i8 10, i8 70, i8 67, i8 0, i8 117, %struct.b43_phy_ht_channeltab_e_phy { i16 2212, i16 2208, i16 2204, i16 474, i16 475, i16 476 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5540, i8 54, i8 23, i8 16, i8 31, i8 8, i8 8, i8 63, i8 42, i8 2, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 0, i8 10, i8 70, i8 67, i8 0, i8 117, %struct.b43_phy_ht_channeltab_e_phy { i16 2220, i16 2216, i16 2212, i16 472, i16 473, i16 474 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5560, i8 61, i8 23, i8 16, i8 31, i8 8, i8 8, i8 63, i8 44, i8 2, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 0, i8 10, i8 70, i8 67, i8 0, i8 117, %struct.b43_phy_ht_channeltab_e_phy { i16 2228, i16 2224, i16 2220, i16 471, i16 471, i16 472 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5580, i8 68, i8 23, i8 16, i8 31, i8 8, i8 8, i8 63, i8 46, i8 2, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 0, i8 10, i8 70, i8 67, i8 0, i8 116, %struct.b43_phy_ht_channeltab_e_phy { i16 2236, i16 2232, i16 2228, i16 469, i16 470, i16 471 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5600, i8 74, i8 23, i8 16, i8 31, i8 8, i8 8, i8 63, i8 48, i8 2, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 0, i8 9, i8 68, i8 35, i8 0, i8 84, %struct.b43_phy_ht_channeltab_e_phy { i16 2244, i16 2240, i16 2236, i16 467, i16 468, i16 469 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5620, i8 81, i8 23, i8 16, i8 31, i8 8, i8 8, i8 63, i8 50, i8 2, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 0, i8 9, i8 68, i8 35, i8 0, i8 84, %struct.b43_phy_ht_channeltab_e_phy { i16 2252, i16 2248, i16 2244, i16 466, i16 466, i16 467 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5640, i8 88, i8 23, i8 16, i8 31, i8 8, i8 8, i8 63, i8 52, i8 2, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 0, i8 9, i8 68, i8 35, i8 0, i8 67, %struct.b43_phy_ht_channeltab_e_phy { i16 2260, i16 2256, i16 2252, i16 464, i16 465, i16 466 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5660, i8 94, i8 23, i8 16, i8 31, i8 8, i8 8, i8 63, i8 54, i8 2, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 0, i8 9, i8 67, i8 35, i8 0, i8 67, %struct.b43_phy_ht_channeltab_e_phy { i16 2268, i16 2264, i16 2260, i16 462, i16 463, i16 464 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5680, i8 101, i8 23, i8 16, i8 31, i8 8, i8 8, i8 63, i8 56, i8 2, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 0, i8 9, i8 66, i8 35, i8 0, i8 67, %struct.b43_phy_ht_channeltab_e_phy { i16 2276, i16 2272, i16 2268, i16 461, i16 462, i16 462 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5700, i8 108, i8 23, i8 16, i8 31, i8 8, i8 8, i8 63, i8 58, i8 2, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 0, i8 8, i8 66, i8 19, i8 0, i8 50, %struct.b43_phy_ht_channeltab_e_phy { i16 2284, i16 2280, i16 2276, i16 459, i16 460, i16 461 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5745, i8 123, i8 23, i8 32, i8 31, i8 8, i8 8, i8 63, i8 125, i8 4, i8 6, i8 0, i8 6, i8 0, i8 6, i8 0, i8 0, i8 8, i8 66, i8 19, i8 0, i8 33, %struct.b43_phy_ht_channeltab_e_phy { i16 2302, i16 2298, i16 2294, i16 456, i16 456, i16 457 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5765, i8 -127, i8 23, i8 32, i8 31, i8 8, i8 8, i8 63, i8 -127, i8 4, i8 6, i8 0, i8 6, i8 0, i8 6, i8 0, i8 0, i8 8, i8 66, i8 19, i8 0, i8 17, %struct.b43_phy_ht_channeltab_e_phy { i16 2310, i16 2306, i16 2302, i16 454, i16 455, i16 456 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5785, i8 -120, i8 23, i8 32, i8 31, i8 8, i8 8, i8 63, i8 -123, i8 4, i8 5, i8 0, i8 5, i8 0, i8 5, i8 0, i8 0, i8 8, i8 66, i8 19, i8 0, i8 0, %struct.b43_phy_ht_channeltab_e_phy { i16 2318, i16 2314, i16 2310, i16 452, i16 453, i16 454 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5805, i8 -113, i8 23, i8 32, i8 31, i8 8, i8 8, i8 63, i8 -119, i8 4, i8 5, i8 0, i8 5, i8 0, i8 5, i8 0, i8 0, i8 6, i8 65, i8 3, i8 0, i8 0, %struct.b43_phy_ht_channeltab_e_phy { i16 2326, i16 2322, i16 2318, i16 451, i16 452, i16 452 } }, %struct.b43_phy_ht_channeltab_e_radio2059 { i16 5825, i8 -107, i8 23, i8 32, i8 31, i8 8, i8 8, i8 63, i8 -115, i8 4, i8 5, i8 0, i8 5, i8 0, i8 5, i8 0, i8 0, i8 6, i8 65, i8 3, i8 0, i8 0, %struct.b43_phy_ht_channeltab_e_phy { i16 2334, i16 2330, i16 2326, i16 449, i16 450, i16 451 } }], [332 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 330, i32 3 }
@___asan_gen_.4 = private unnamed_addr constant [32 x i8] c"b43_phy_ht_channeltab_radio2059\00", align 1
@___asan_gen_.5 = private constant [50 x i8] c"../drivers/net/wireless/broadcom/b43/radio_2059.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 58, i32 55 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @b43_phy_ht_channeltab_radio2059], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_phy_ht_channeltab_radio2059 to i32), i32 1332, i32 1664, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r2059_upload_inittabs(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cond = icmp eq i8 %1, 1
  br i1 %cond, label %for.body.preheader, label %do.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 3153, i16 noundef zeroext 112) #3
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 3162, i16 noundef zeroext 3) #3
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 3193, i16 noundef zeroext 1) #3
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 3202, i16 noundef zeroext 112) #3
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 3203, i16 noundef zeroext 0) #3
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 3204, i16 noundef zeroext 112) #3
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 3226, i16 noundef zeroext 127) #3
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 3254, i16 noundef zeroext 16) #3
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 3464, i16 noundef zeroext 5) #3
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 330, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.preheader
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_radio_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @b43_phy_ht_get_channeltab_e_r2059(ptr nocapture noundef readnone %dev, i16 noundef zeroext %freq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %e.09 = phi ptr [ @b43_phy_ht_channeltab_radio2059, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %e.09 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %e.09, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %freq)
  %cmp3 = icmp eq i16 %1, %freq
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.010, 1
  %incdec.ptr = getelementptr %struct.b43_phy_ht_channeltab_e_radio2059, ptr %e.09, i32 1
  %exitcond.not = icmp eq i32 %inc, 37
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi ptr [ %e.09, %for.body.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43/radio_2059.c", i32 330, i32 3}
!2 = distinct !{null, !3, !"r2059_phy_rev1_init", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43/radio_2059.c", i32 16, i32 12}
!4 = !{ptr @b43_phy_ht_channeltab_radio2059, !5, !"b43_phy_ht_channeltab_radio2059", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43/radio_2059.c", i32 58, i32 55}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
