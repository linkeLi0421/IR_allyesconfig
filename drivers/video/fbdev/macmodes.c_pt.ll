; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/macmodes.c_pt.bc'
source_filename = "../drivers/video/fbdev/macmodes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mac_vmode_to_var\22, \22a\22\09"
module asm "\09.weak\09__crc_mac_vmode_to_var\09\09\09\09"
module asm "\09.long\09__crc_mac_vmode_to_var\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mac_vmode_to_var:\09\09\09\09\09"
module asm "\09.asciz \09\22mac_vmode_to_var\22\09\09\09\09\09"
module asm "__kstrtabns_mac_vmode_to_var:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mac_map_monitor_sense\22, \22a\22\09"
module asm "\09.weak\09__crc_mac_map_monitor_sense\09\09\09\09"
module asm "\09.long\09__crc_mac_map_monitor_sense\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mac_map_monitor_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22mac_map_monitor_sense\22\09\09\09\09\09"
module asm "__kstrtabns_mac_map_monitor_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mac_find_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_mac_find_mode\09\09\09\09"
module asm "\09.long\09__crc_mac_find_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mac_find_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22mac_find_mode\22\09\09\09\09\09"
module asm "__kstrtabns_mac_find_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mode_map = type { i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.monitor_map = type { i32, i32 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }

@mac_modes = internal constant { [19 x %struct.mode_map], [40 x i8] } { [19 x %struct.mode_map] [%struct.mode_map { i32 2, ptr @mac_modedb }, %struct.mode_map { i32 5, ptr getelementptr (i8, ptr @mac_modedb, i64 56) }, %struct.mode_map { i32 6, ptr getelementptr (i8, ptr @mac_modedb, i64 112) }, %struct.mode_map { i32 7, ptr getelementptr (i8, ptr @mac_modedb, i64 168) }, %struct.mode_map { i32 9, ptr getelementptr (i8, ptr @mac_modedb, i64 224) }, %struct.mode_map { i32 10, ptr getelementptr (i8, ptr @mac_modedb, i64 280) }, %struct.mode_map { i32 12, ptr getelementptr (i8, ptr @mac_modedb, i64 392) }, %struct.mode_map { i32 11, ptr getelementptr (i8, ptr @mac_modedb, i64 336) }, %struct.mode_map { i32 13, ptr getelementptr (i8, ptr @mac_modedb, i64 448) }, %struct.mode_map { i32 14, ptr getelementptr (i8, ptr @mac_modedb, i64 504) }, %struct.mode_map { i32 15, ptr getelementptr (i8, ptr @mac_modedb, i64 560) }, %struct.mode_map { i32 16, ptr getelementptr (i8, ptr @mac_modedb, i64 616) }, %struct.mode_map { i32 17, ptr getelementptr (i8, ptr @mac_modedb, i64 672) }, %struct.mode_map { i32 21, ptr getelementptr (i8, ptr @mac_modedb, i64 896) }, %struct.mode_map { i32 18, ptr getelementptr (i8, ptr @mac_modedb, i64 728) }, %struct.mode_map { i32 19, ptr getelementptr (i8, ptr @mac_modedb, i64 784) }, %struct.mode_map { i32 20, ptr getelementptr (i8, ptr @mac_modedb, i64 840) }, %struct.mode_map { i32 22, ptr getelementptr (i8, ptr @mac_modedb, i64 952) }, %struct.mode_map { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@__kstrtab_mac_vmode_to_var = external dso_local constant [0 x i8], align 1
@__kstrtabns_mac_vmode_to_var = external dso_local constant [0 x i8], align 1
@__ksymtab_mac_vmode_to_var = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mac_vmode_to_var to i32), ptr @__kstrtab_mac_vmode_to_var, ptr @__kstrtabns_mac_vmode_to_var }, section "___ksymtab+mac_vmode_to_var", align 4
@mac_monitors = internal constant { [21 x %struct.monitor_map], [56 x i8] } { [21 x %struct.monitor_map] [%struct.monitor_map { i32 0, i32 20 }, %struct.monitor_map { i32 276, i32 7 }, %struct.monitor_map { i32 545, i32 2 }, %struct.monitor_map { i32 817, i32 20 }, %struct.monitor_map { i32 820, i32 20 }, %struct.monitor_map { i32 821, i32 20 }, %struct.monitor_map { i32 1034, i32 4 }, %struct.monitor_map { i32 1310, i32 7 }, %struct.monitor_map { i32 1539, i32 13 }, %struct.monitor_map { i32 1547, i32 15 }, %struct.monitor_map { i32 1571, i32 18 }, %struct.monitor_map { i32 1579, i32 6 }, %struct.monitor_map { i32 1792, i32 3 }, %struct.monitor_map { i32 1812, i32 4 }, %struct.monitor_map { i32 1815, i32 12 }, %struct.monitor_map { i32 1837, i32 13 }, %struct.monitor_map { i32 1840, i32 8 }, %struct.monitor_map { i32 1850, i32 18 }, %struct.monitor_map { i32 1855, i32 6 }, %struct.monitor_map { i32 48879, i32 22 }, %struct.monitor_map { i32 -1, i32 5 }], [56 x i8] zeroinitializer }, align 32
@__kstrtab_mac_map_monitor_sense = external dso_local constant [0 x i8], align 1
@__kstrtabns_mac_map_monitor_sense = external dso_local constant [0 x i8], align 1
@__ksymtab_mac_map_monitor_sense = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mac_map_monitor_sense to i32), ptr @__kstrtab_mac_map_monitor_sense, ptr @__kstrtabns_mac_map_monitor_sense }, section "___ksymtab+mac_map_monitor_sense", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mac\00", [28 x i8] zeroinitializer }, align 32
@mac_modedb = internal constant { [18 x %struct.fb_videomode], [240 x i8] } { [18 x %struct.fb_videomode] [%struct.fb_videomode { ptr @.str.1, i32 60, i32 512, i32 384, i32 63828, i32 80, i32 16, i32 19, i32 1, i32 32, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.2, i32 60, i32 640, i32 480, i32 39722, i32 32, i32 32, i32 33, i32 10, i32 96, i32 2, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.3, i32 67, i32 640, i32 480, i32 33334, i32 80, i32 80, i32 39, i32 3, i32 64, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.4, i32 75, i32 640, i32 870, i32 17457, i32 80, i32 32, i32 42, i32 3, i32 80, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.5, i32 56, i32 800, i32 600, i32 27778, i32 112, i32 40, i32 22, i32 1, i32 72, i32 2, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.6, i32 60, i32 800, i32 600, i32 25000, i32 72, i32 56, i32 23, i32 1, i32 128, i32 4, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.7, i32 72, i32 800, i32 600, i32 20000, i32 48, i32 72, i32 23, i32 37, i32 120, i32 6, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.8, i32 75, i32 800, i32 600, i32 20203, i32 144, i32 32, i32 21, i32 1, i32 80, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.9, i32 75, i32 832, i32 624, i32 17362, i32 208, i32 48, i32 39, i32 1, i32 64, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.10, i32 60, i32 1024, i32 768, i32 15385, i32 144, i32 40, i32 29, i32 3, i32 136, i32 6, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.11, i32 72, i32 1024, i32 768, i32 13334, i32 128, i32 40, i32 29, i32 3, i32 136, i32 6, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.12, i32 75, i32 1024, i32 768, i32 12699, i32 176, i32 16, i32 28, i32 1, i32 96, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.13, i32 75, i32 1024, i32 768, i32 12699, i32 160, i32 32, i32 28, i32 1, i32 96, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.14, i32 75, i32 1152, i32 870, i32 10000, i32 128, i32 48, i32 39, i32 3, i32 128, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.15, i32 75, i32 1280, i32 960, i32 7937, i32 224, i32 32, i32 36, i32 1, i32 144, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.16, i32 75, i32 1280, i32 1024, i32 7408, i32 232, i32 64, i32 38, i32 1, i32 112, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.17, i32 60, i32 1152, i32 768, i32 15386, i32 158, i32 26, i32 29, i32 3, i32 136, i32 6, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.18, i32 60, i32 1600, i32 1024, i32 8908, i32 88, i32 104, i32 1, i32 10, i32 16, i32 1, i32 3, i32 0, i32 0 }], [240 x i8] zeroinitializer }, align 32
@__kstrtab_mac_find_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_mac_find_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_mac_find_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mac_find_mode to i32), ptr @__kstrtab_mac_find_mode, ptr @__kstrtabns_mac_find_mode }, section "___ksymtab+mac_find_mode", align 4
@__UNIQUE_ID_file301 = internal constant [43 x i8] c"macmodes.file=drivers/video/fbdev/macmodes\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [21 x i8] c"macmodes.license=GPL\00", section ".modinfo", align 1
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mac2\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mac5\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mac6\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mac7\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mac9\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac10\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac11\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac12\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac13\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac14\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac15\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac16\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac17\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac18\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac19\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac20\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac21\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac22\00", [26 x i8] zeroinitializer }, align 32
@switch.table.mac_vmode_to_var = internal constant { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @mac_modes, ptr @mac_modes, ptr @mac_modes, ptr getelementptr inbounds ([19 x %struct.mode_map], ptr @mac_modes, i32 0, i32 1), ptr getelementptr inbounds ([19 x %struct.mode_map], ptr @mac_modes, i32 0, i32 2), ptr getelementptr inbounds ([19 x %struct.mode_map], ptr @mac_modes, i32 0, i32 3), ptr @mac_modes, ptr getelementptr inbounds ([19 x %struct.mode_map], ptr @mac_modes, i32 0, i32 4), ptr getelementptr inbounds ([19 x %struct.mode_map], ptr @mac_modes, i32 0, i32 5), ptr getelementptr inbounds ([19 x %struct.mode_map], ptr @mac_modes, i32 0, i32 7), ptr getelementptr inbounds ([19 x %struct.mode_map], ptr @mac_modes, i32 0, i32 6), ptr getelementptr inbounds ([19 x %struct.mode_map], ptr @mac_modes, i32 0, i32 8), ptr getelementptr inbounds ([19 x %struct.mode_map], ptr @mac_modes, i32 0, i32 9), ptr getelementptr inbounds ([19 x %struct.mode_map], ptr @mac_modes, i32 0, i32 10), ptr getelementptr inbounds ([19 x %struct.mode_map], ptr @mac_modes, i32 0, i32 11), ptr getelementptr inbounds ([19 x %struct.mode_map], ptr @mac_modes, i32 0, i32 12), ptr getelementptr inbounds ([19 x %struct.mode_map], ptr @mac_modes, i32 0, i32 14), ptr getelementptr inbounds ([19 x %struct.mode_map], ptr @mac_modes, i32 0, i32 15), ptr getelementptr inbounds ([19 x %struct.mode_map], ptr @mac_modes, i32 0, i32 16), ptr getelementptr inbounds ([19 x %struct.mode_map], ptr @mac_modes, i32 0, i32 13), ptr getelementptr inbounds ([19 x %struct.mode_map], ptr @mac_modes, i32 0, i32 17)], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"mac_modes\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 143, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [13 x i8] c"mac_monitors\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 184, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 404, i32 46 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"mac_modedb\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 34, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 37, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 41, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 45, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 49, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 53, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 57, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 61, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 65, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 69, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 73, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 77, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 81, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 85, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 89, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 93, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 97, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 101, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [34 x i8] c"../drivers/video/fbdev/macmodes.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 105, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [30 x i8] c"switch.table.mac_vmode_to_var\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__ksymtab_mac_find_mode, ptr @__ksymtab_mac_map_monitor_sense, ptr @__ksymtab_mac_vmode_to_var, ptr @mac_modes, ptr @mac_monitors, ptr @.str, ptr @mac_modedb, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @switch.table.mac_vmode_to_var], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_modes to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_monitors to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_modedb to i32), i32 1008, i32 1248, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mac_vmode_to_var to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac_vmode_to_var(i32 noundef %vmode, i32 noundef %cmode, ptr noundef writeonly %var) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %vmode, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 21
  br i1 %0, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i32 2097081, %switch.tableidx
  %1 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.lobit.not = icmp eq i32 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [21 x ptr], ptr @switch.table.mac_vmode_to_var, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %mode4 = getelementptr inbounds %struct.mode_map, ptr %switch.load, i32 0, i32 1
  %3 = ptrtoint ptr %mode4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mode4, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %switch.lookup.cleanup_crit_edge, label %if.end6

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %switch.lookup
  %5 = call ptr @memset(ptr %var, i32 0, i32 160)
  %6 = zext i32 %cmode to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmode, label %if.end6.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb28
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %7 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %bits_per_pixel, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %length, align 4
  %length10 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %length10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %length10, align 4
  %length13 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %length13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %length13, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %bits_per_pixel15 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %11 = ptrtoint ptr %bits_per_pixel15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16, ptr %bits_per_pixel15, align 4
  %red16 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %12 = ptrtoint ptr %red16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 10, ptr %red16, align 4
  %length19 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %length19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %length19, align 4
  %green20 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %14 = ptrtoint ptr %green20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %green20, align 4
  %length23 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %length23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %length23, align 4
  %length27 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %length27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5, ptr %length27, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %bits_per_pixel29 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %17 = ptrtoint ptr %bits_per_pixel29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 32, ptr %bits_per_pixel29, align 4
  %red30 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %18 = ptrtoint ptr %red30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16, ptr %red30, align 4
  %length33 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %length33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %length33, align 4
  %green34 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %20 = ptrtoint ptr %green34 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %green34, align 4
  %length37 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %length37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %length37, align 4
  %length41 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %length41 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %length41, align 4
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %23 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 24, ptr %transp, align 4
  %length44 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %24 = ptrtoint ptr %length44 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %length44, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28, %sw.bb14, %sw.bb
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %4, i32 0, i32 2
  %25 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xres, align 4
  %27 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_videomode, ptr %4, i32 0, i32 3
  %28 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %yres, align 4
  %yres46 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %30 = ptrtoint ptr %yres46 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %yres46, align 4
  %31 = load i32, ptr %xres, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %32 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %xres_virtual, align 4
  %33 = load i32, ptr %yres, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %34 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %yres_virtual, align 4
  %height = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 14
  %35 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %height, align 4
  %width = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 15
  %36 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %width, align 4
  %pixclock = getelementptr inbounds %struct.fb_videomode, ptr %4, i32 0, i32 4
  %37 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pixclock, align 4
  %pixclock49 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %39 = ptrtoint ptr %pixclock49 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %pixclock49, align 4
  %left_margin = getelementptr inbounds %struct.fb_videomode, ptr %4, i32 0, i32 5
  %40 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %left_margin, align 4
  %left_margin50 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %42 = ptrtoint ptr %left_margin50 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %left_margin50, align 4
  %right_margin = getelementptr inbounds %struct.fb_videomode, ptr %4, i32 0, i32 6
  %43 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %right_margin, align 4
  %right_margin51 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %45 = ptrtoint ptr %right_margin51 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %right_margin51, align 4
  %upper_margin = getelementptr inbounds %struct.fb_videomode, ptr %4, i32 0, i32 7
  %46 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %upper_margin, align 4
  %upper_margin52 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %48 = ptrtoint ptr %upper_margin52 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %upper_margin52, align 4
  %lower_margin = getelementptr inbounds %struct.fb_videomode, ptr %4, i32 0, i32 8
  %49 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %lower_margin, align 4
  %lower_margin53 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %51 = ptrtoint ptr %lower_margin53 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %lower_margin53, align 4
  %hsync_len = getelementptr inbounds %struct.fb_videomode, ptr %4, i32 0, i32 9
  %52 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hsync_len, align 4
  %hsync_len54 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %54 = ptrtoint ptr %hsync_len54 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %hsync_len54, align 4
  %vsync_len = getelementptr inbounds %struct.fb_videomode, ptr %4, i32 0, i32 10
  %55 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %vsync_len, align 4
  %vsync_len55 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %57 = ptrtoint ptr %vsync_len55 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %vsync_len55, align 4
  %sync = getelementptr inbounds %struct.fb_videomode, ptr %4, i32 0, i32 11
  %58 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sync, align 4
  %sync56 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %60 = ptrtoint ptr %sync56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %sync56, align 4
  %vmode57 = getelementptr inbounds %struct.fb_videomode, ptr %4, i32 0, i32 12
  %61 = ptrtoint ptr %vmode57 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vmode57, align 4
  %vmode58 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %63 = ptrtoint ptr %vmode58 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %vmode58, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end6.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac_var_to_vmode(ptr nocapture noundef readonly %var, ptr nocapture noundef writeonly %vmode, ptr nocapture noundef writeonly %cmode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp = icmp ult i32 %1, 9
  br i1 %cmp, label %entry.if.end10_crit_edge, label %if.else

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %cmp2 = icmp ult i32 %1, 17
  br i1 %cmp2, label %if.else.if.end10_crit_edge, label %if.else4

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %1)
  %cmp6 = icmp ult i32 %1, 33
  br i1 %cmp6, label %if.else4.if.end10_crit_edge, label %if.else4.cleanup64_crit_edge

if.else4.cleanup64_crit_edge:                     ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64

if.else4.if.end10_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %if.else4.if.end10_crit_edge, %if.else.if.end10_crit_edge, %entry.if.end10_crit_edge
  %.sink = phi i32 [ 0, %entry.if.end10_crit_edge ], [ 1, %if.else.if.end10_crit_edge ], [ 2, %if.else4.if.end10_crit_edge ]
  %2 = ptrtoint ptr %cmode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %cmode, align 4
  %3 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %vmode31 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10
  %5 = phi i32 [ 2, %if.end10 ], [ %52, %for.inc.for.body_crit_edge ]
  %map.0114 = phi ptr [ @mac_modes, %if.end10 ], [ %incdec.ptr63, %for.inc.for.body_crit_edge ]
  %mode13 = getelementptr inbounds %struct.mode_map, ptr %map.0114, i32 0, i32 1
  %6 = ptrtoint ptr %mode13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode13, align 4
  %xres14 = getelementptr inbounds %struct.fb_videomode, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %xres14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xres14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %9)
  %cmp15 = icmp ugt i32 %4, %9
  br i1 %cmp15, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %10 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres, align 4
  %yres16 = getelementptr inbounds %struct.fb_videomode, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %yres16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp17 = icmp ugt i32 %11, %13
  br i1 %cmp17, label %lor.lhs.false.for.inc_crit_edge, label %if.end19

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end19:                                         ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %9)
  %cmp21 = icmp ugt i32 %15, %9
  br i1 %cmp21, label %if.end19.for.inc_crit_edge, label %lor.lhs.false22

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false22:                                  ; preds = %if.end19
  %16 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %13)
  %cmp24 = icmp ugt i32 %17, %13
  br i1 %cmp24, label %lor.lhs.false22.for.inc_crit_edge, label %if.end26

lor.lhs.false22.for.inc_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end26:                                         ; preds = %lor.lhs.false22
  %18 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pixclock, align 4
  %pixclock27 = getelementptr inbounds %struct.fb_videomode, ptr %7, i32 0, i32 4
  %20 = ptrtoint ptr %pixclock27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pixclock27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp28 = icmp ugt i32 %19, %21
  br i1 %cmp28, label %if.end26.for.inc_crit_edge, label %if.end30

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end30:                                         ; preds = %if.end26
  %22 = ptrtoint ptr %vmode31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vmode31, align 4
  %and = and i32 %23, 255
  %vmode32 = getelementptr inbounds %struct.fb_videomode, ptr %7, i32 0, i32 12
  %24 = ptrtoint ptr %vmode32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vmode32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %25)
  %cmp33.not = icmp eq i32 %and, %25
  br i1 %cmp33.not, label %if.end35, label %if.end30.for.inc_crit_edge

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end35:                                         ; preds = %if.end30
  %xres14.le = getelementptr inbounds %struct.fb_videomode, ptr %7, i32 0, i32 2
  %yres16.le = getelementptr inbounds %struct.fb_videomode, ptr %7, i32 0, i32 3
  %pixclock27.le = getelementptr inbounds %struct.fb_videomode, ptr %7, i32 0, i32 4
  %vmode32.le = getelementptr inbounds %struct.fb_videomode, ptr %7, i32 0, i32 12
  %26 = ptrtoint ptr %vmode to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %5, ptr %vmode, align 4
  %incdec.ptr = getelementptr %struct.mode_map, ptr %map.0114, i32 1
  %27 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %incdec.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp38.not116 = icmp eq i32 %28, -1
  br i1 %cmp38.not116, label %if.end35.cleanup64_crit_edge, label %if.end35.while.body_crit_edge

if.end35.while.body_crit_edge:                    ; preds = %if.end35
  br label %while.body

if.end35.cleanup64_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end35.while.body_crit_edge
  %29 = phi i32 [ %50, %cleanup.while.body_crit_edge ], [ %28, %if.end35.while.body_crit_edge ]
  %map.1117 = phi ptr [ %map.2, %cleanup.while.body_crit_edge ], [ %incdec.ptr, %if.end35.while.body_crit_edge ]
  %mode39 = getelementptr inbounds %struct.mode_map, ptr %map.1117, i32 0, i32 1
  %30 = ptrtoint ptr %mode39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mode39, align 4
  %32 = ptrtoint ptr %xres14.le to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xres14.le, align 4
  %xres41 = getelementptr inbounds %struct.fb_videomode, ptr %31, i32 0, i32 2
  %34 = ptrtoint ptr %xres41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xres41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp42.not = icmp eq i32 %33, %35
  br i1 %cmp42.not, label %lor.lhs.false43, label %while.body.cleanup64_crit_edge

while.body.cleanup64_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64

lor.lhs.false43:                                  ; preds = %while.body
  %36 = ptrtoint ptr %yres16.le to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %yres16.le, align 4
  %yres45 = getelementptr inbounds %struct.fb_videomode, ptr %31, i32 0, i32 3
  %38 = ptrtoint ptr %yres45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %yres45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp46.not = icmp eq i32 %37, %39
  br i1 %cmp46.not, label %if.end48, label %lor.lhs.false43.cleanup64_crit_edge

lor.lhs.false43.cleanup64_crit_edge:              ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64

if.end48:                                         ; preds = %lor.lhs.false43
  %40 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pixclock, align 4
  %42 = ptrtoint ptr %pixclock27.le to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pixclock27.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp51 = icmp ugt i32 %41, %43
  br i1 %cmp51, label %if.end48.cleanup64_crit_edge, label %if.end53

if.end48.cleanup64_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64

if.end53:                                         ; preds = %if.end48
  %44 = ptrtoint ptr %vmode32.le to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vmode32.le, align 4
  %vmode55 = getelementptr inbounds %struct.fb_videomode, ptr %31, i32 0, i32 12
  %46 = ptrtoint ptr %vmode55 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vmode55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp56.not = icmp eq i32 %45, %47
  br i1 %cmp56.not, label %if.end58, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end58:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %vmode to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %29, ptr %vmode, align 4
  %incdec.ptr60 = getelementptr %struct.mode_map, ptr %map.1117, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.end53.cleanup_crit_edge
  %map.2 = phi ptr [ %incdec.ptr60, %if.end58 ], [ %map.1117, %if.end53.cleanup_crit_edge ]
  %49 = ptrtoint ptr %map.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %map.2, align 4
  %cmp38.not = icmp eq i32 %50, -1
  br i1 %cmp38.not, label %cleanup.cleanup64_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup.cleanup64_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64

for.inc:                                          ; preds = %if.end30.for.inc_crit_edge, %if.end26.for.inc_crit_edge, %lor.lhs.false22.for.inc_crit_edge, %if.end19.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr63 = getelementptr %struct.mode_map, ptr %map.0114, i32 1
  %51 = ptrtoint ptr %incdec.ptr63 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %incdec.ptr63, align 4
  %cmp12.not = icmp eq i32 %52, -1
  br i1 %cmp12.not, label %for.inc.cleanup64_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup64_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64

cleanup64:                                        ; preds = %for.inc.cleanup64_crit_edge, %cleanup.cleanup64_crit_edge, %if.end48.cleanup64_crit_edge, %lor.lhs.false43.cleanup64_crit_edge, %while.body.cleanup64_crit_edge, %if.end35.cleanup64_crit_edge, %if.else4.cleanup64_crit_edge
  %retval.2 = phi i32 [ -22, %if.else4.cleanup64_crit_edge ], [ 0, %if.end35.cleanup64_crit_edge ], [ 0, %if.end48.cleanup64_crit_edge ], [ 0, %while.body.cleanup64_crit_edge ], [ 0, %lor.lhs.false43.cleanup64_crit_edge ], [ 0, %cleanup.cleanup64_crit_edge ], [ -22, %for.inc.cleanup64_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac_map_monitor_sense(i32 noundef %sense) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %map.0 = phi ptr [ @mac_monitors, %entry ], [ %incdec.ptr, %for.cond.for.cond_crit_edge ]
  %0 = ptrtoint ptr %map.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sense)
  %cmp3 = icmp eq i32 %1, %sense
  %or.cond = or i1 %cmp.not, %cmp3
  %incdec.ptr = getelementptr %struct.monitor_map, ptr %map.0, i32 1
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %vmode = getelementptr inbounds %struct.monitor_map, ptr %map.0, i32 0, i32 1
  %2 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vmode, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac_find_mode(ptr noundef %var, ptr noundef %info, ptr noundef %mode_option, i32 noundef %default_bpp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mode_option, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @strncmp(ptr noundef nonnull %mode_option, ptr noundef nonnull dereferenceable(4) @.str, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %mode_option, i32 3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mode_option.addr.0 = phi ptr [ %mode_option, %land.lhs.true.if.end_crit_edge ], [ %add.ptr, %if.then ], [ null, %entry.if.end_crit_edge ]
  %db.0 = phi ptr [ null, %land.lhs.true.if.end_crit_edge ], [ @mac_modedb, %if.then ], [ null, %entry.if.end_crit_edge ]
  %dbsize.0 = phi i32 [ 0, %land.lhs.true.if.end_crit_edge ], [ 18, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call2 = tail call i32 @fb_find_mode(ptr noundef %var, ptr noundef %info, ptr noundef %mode_option.addr.0, ptr noundef %db.0, i32 noundef %dbsize.0, ptr noundef nonnull @mac_modedb, i32 noundef %default_bpp) #6
  ret i32 %call2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__ksymtab_mac_vmode_to_var, !1, !"__ksymtab_mac_vmode_to_var", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/macmodes.c", i32 288, i32 1}
!2 = !{ptr @__ksymtab_mac_map_monitor_sense, !3, !"__ksymtab_mac_map_monitor_sense", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/macmodes.c", i32 376, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/macmodes.c", i32 404, i32 46}
!6 = !{ptr @__ksymtab_mac_find_mode, !7, !"__ksymtab_mac_find_mode", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/macmodes.c", i32 412, i32 1}
!8 = !{ptr @__UNIQUE_ID_file301, !9, !"__UNIQUE_ID_file301", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/macmodes.c", i32 414, i32 1}
!10 = !{ptr @__UNIQUE_ID_license302, !9, !"__UNIQUE_ID_license302", i1 false, i1 false}
!11 = !{ptr @mac_modes, !12, !"mac_modes", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/macmodes.c", i32 143, i32 3}
!13 = !{ptr @mac_monitors, !14, !"mac_monitors", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/macmodes.c", i32 184, i32 3}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/macmodes.c", i32 37, i32 2}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/macmodes.c", i32 41, i32 2}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/macmodes.c", i32 45, i32 2}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/macmodes.c", i32 49, i32 2}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/macmodes.c", i32 53, i32 2}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/macmodes.c", i32 57, i32 2}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/macmodes.c", i32 61, i32 2}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/macmodes.c", i32 65, i32 2}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/macmodes.c", i32 69, i32 2}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/macmodes.c", i32 73, i32 2}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/macmodes.c", i32 77, i32 2}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/macmodes.c", i32 81, i32 2}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/macmodes.c", i32 85, i32 2}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/macmodes.c", i32 89, i32 2}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/macmodes.c", i32 93, i32 2}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/macmodes.c", i32 97, i32 2}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/macmodes.c", i32 101, i32 2}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/macmodes.c", i32 105, i32 2}
!51 = !{ptr @mac_modedb, !52, !"mac_modedb", i1 false, i1 false}
!52 = !{!"../drivers/video/fbdev/macmodes.c", i32 34, i32 34}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
