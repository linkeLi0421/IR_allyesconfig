; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pvrusb2/pvrusb2-std.c_pt.bc'
source_filename = "../drivers/media/usb/pvrusb2/pvrusb2-std.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.std_name = type { ptr, i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_standard = type { i32, i64, [24 x i8], %struct.v4l2_fract, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }

@std_groups = internal constant { [4 x %struct.std_name], [32 x i8] } { [4 x %struct.std_name] [%struct.std_name { ptr @.str.12, i64 4095 }, %struct.std_name { ptr @.str.13, i64 61440 }, %struct.std_name { ptr @.str.14, i64 16711680 }, %struct.std_name { ptr @.str.15, i64 50331648 }], [32 x i8] zeroinitializer }, align 32
@std_items = internal constant { [20 x %struct.std_name], [64 x i8] } { [20 x %struct.std_name] [%struct.std_name { ptr @.str.16, i64 65537 }, %struct.std_name { ptr @.str.17, i64 2 }, %struct.std_name { ptr @.str.18, i64 131104 }, %struct.std_name { ptr @.str.19, i64 64 }, %struct.std_name { ptr @.str.20, i64 262148 }, %struct.std_name { ptr @.str.21, i64 524296 }, %struct.std_name { ptr @.str.22, i64 16 }, %struct.std_name { ptr @.str.23, i64 1048704 }, %struct.std_name { ptr @.str.24, i64 2097152 }, %struct.std_name { ptr @.str.25, i64 4194304 }, %struct.std_name { ptr @.str.26, i64 8388608 }, %struct.std_name { ptr @.str.27, i64 4352 }, %struct.std_name { ptr @.str.28, i64 8192 }, %struct.std_name { ptr @.str.29, i64 16384 }, %struct.std_name { ptr @.str.30, i64 32768 }, %struct.std_name { ptr @.str.31, i64 512 }, %struct.std_name { ptr @.str.32, i64 1024 }, %struct.std_name { ptr @.str.33, i64 2048 }, %struct.std_name { ptr @.str.34, i64 16777216 }, %struct.std_name { ptr @.str.35, i64 33554432 }], [64 x i8] zeroinitializer }, align 32
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c";\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s-\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@pvrusb2_debug = external dso_local local_unnamed_addr global i32, align 4
@pvr2_std_create_enum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016pvrusb2: Mapping standards mask=0x%x (%.*s)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pvr2_std_create_enum\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/pvrusb2/pvrusb2-std.c\00", [56 x i8] zeroinitializer }, align 32
@pvr2_std_create_enum._entry_ptr = internal global ptr @pvr2_std_create_enum._entry, section ".printk_index", align 4
@std_mixes = internal constant { [4 x i64], [32 x i8] } { [4 x i64] [i64 5, i64 160, i64 327680, i64 1179648], [32 x i8] zeroinitializer }, align 32
@pvr2_std_create_enum._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016pvrusb2: ***WARNING*** Failed to classify the following standard(s): %.*s\0A\00", [51 x i8] zeroinitializer }, align 32
@pvr2_std_create_enum._entry_ptr.8 = internal global ptr @pvr2_std_create_enum._entry.6, section ".printk_index", align 4
@pvr2_std_create_enum._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016pvrusb2: Setting up %u unique standard(s)\0A\00", [51 x i8] zeroinitializer }, align 32
@pvr2_std_create_enum._entry_ptr.11 = internal global ptr @pvr2_std_create_enum._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PAL\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NTSC\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SECAM\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ATSC\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"B1\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"D1\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"G\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"H\00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"K\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"K1\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"L\00", [30 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LC\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"M\00", [30 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Mj\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"443\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Mk\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"N\00", [30 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Nc\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"60\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"8VSB\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"16VSB\00", [26 x i8] zeroinitializer }, align 32
@generic_standards = internal constant { [4 x %struct.v4l2_standard], [64 x i8] } { [4 x %struct.v4l2_standard] [%struct.v4l2_standard { i32 0, i64 16713471, [24 x i8] zeroinitializer, %struct.v4l2_fract { i32 1, i32 25 }, i32 625, [4 x i32] zeroinitializer }, %struct.v4l2_standard { i32 0, i64 45312, [24 x i8] zeroinitializer, %struct.v4l2_fract { i32 1001, i32 30000 }, i32 525, [4 x i32] zeroinitializer }, %struct.v4l2_standard { i32 0, i64 2048, [24 x i8] zeroinitializer, %struct.v4l2_fract { i32 1001, i32 30000 }, i32 525, [4 x i32] zeroinitializer }, %struct.v4l2_standard { i32 0, i64 16384, [24 x i8] zeroinitializer, %struct.v4l2_fract { i32 1001, i32 30000 }, i32 525, [4 x i32] zeroinitializer }], [64 x i8] zeroinitializer }, align 32
@pvr2_std_fill._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.5, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016pvrusb2: Set up standard idx=%u name=%s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pvr2_std_fill\00", [18 x i8] zeroinitializer }, align 32
@pvr2_std_fill._entry_ptr = internal global ptr @pvr2_std_fill._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 8, i64 47, i64 59]
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"std_groups\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 70, i32 30 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"std_items\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 78, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 189, i32 36 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 196, i32 13 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 199, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 316, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [10 x i8] c"std_mixes\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 298, i32 20 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 344, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 350, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 71, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 72, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 73, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 74, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 79, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 80, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 81, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 82, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 83, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 84, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 85, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 86, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 87, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 88, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 89, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 90, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 91, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 92, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 93, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 94, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 95, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 96, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 97, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 98, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [18 x i8] c"generic_standards\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 217, i32 29 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [43 x i8] c"../drivers/media/usb/pvrusb2/pvrusb2-std.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 291, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @pvr2_std_create_enum._entry, ptr @pvr2_std_create_enum._entry.6, ptr @pvr2_std_create_enum._entry.9, ptr @pvr2_std_create_enum._entry_ptr, ptr @pvr2_std_create_enum._entry_ptr.11, ptr @pvr2_std_create_enum._entry_ptr.8, ptr @pvr2_std_fill._entry, ptr @pvr2_std_fill._entry_ptr, ptr @std_groups, ptr @std_items, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @std_mixes, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @generic_standards, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @std_groups to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @std_items to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_std_create_enum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @std_mixes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_std_create_enum._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_std_create_enum._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_standards to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_std_fill._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_std_str_to_id(ptr noundef writeonly %idPtr, ptr nocapture noundef readonly %bufPtr, i32 noundef %bufSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufSize)
  %tobool.not141158 = icmp eq i32 %bufSize, 0
  br i1 %tobool.not141158, label %entry.while.end47_crit_edge, label %entry.while.body.lr.ph_crit_edge

entry.while.body.lr.ph_crit_edge:                 ; preds = %entry
  br label %while.body.lr.ph

entry.while.end47_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end47

while.body.lr.ph:                                 ; preds = %if.end39.while.body.lr.ph_crit_edge, %entry.while.body.lr.ph_crit_edge
  %mMode.0.ph163 = phi i32 [ %mMode.1, %if.end39.while.body.lr.ph_crit_edge ], [ 0, %entry.while.body.lr.ph_crit_edge ]
  %cmsk.0.ph162 = phi i64 [ %cmsk.0144.lcssa, %if.end39.while.body.lr.ph_crit_edge ], [ 0, %entry.while.body.lr.ph_crit_edge ]
  %id.0.ph161 = phi i64 [ %or, %if.end39.while.body.lr.ph_crit_edge ], [ 0, %entry.while.body.lr.ph_crit_edge ]
  %bufSize.addr.0.ph160 = phi i32 [ %sub46, %if.end39.while.body.lr.ph_crit_edge ], [ %bufSize, %entry.while.body.lr.ph_crit_edge ]
  %bufPtr.addr.0.ph159 = phi ptr [ %add.ptr45, %if.end39.while.body.lr.ph_crit_edge ], [ %bufPtr, %entry.while.body.lr.ph_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mMode.0.ph163)
  %tobool1.not255 = icmp eq i32 %mMode.0.ph163, 0
  br i1 %tobool1.not255, label %while.body.lr.ph.land.rhs_crit_edge, label %while.body.lr.ph.while.body18.preheader_crit_edge

while.body.lr.ph.while.body18.preheader_crit_edge: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body18.preheader

while.body.lr.ph.land.rhs_crit_edge:              ; preds = %while.body.lr.ph
  br label %land.rhs

while.body.while.body18.preheader_crit_edge:      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %bufPtr.addr.0.ph159, i32 %inc12
  %id13 = getelementptr %struct.std_name, ptr @std_groups, i32 %idx.013.i.lcssa, i32 1
  %0 = ptrtoint ptr %id13 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %id13, align 8
  br label %while.body18.preheader

while.body18.preheader:                           ; preds = %while.body.while.body18.preheader_crit_edge, %while.body.lr.ph.while.body18.preheader_crit_edge
  %cmsk.0144.lcssa = phi i64 [ %1, %while.body.while.body18.preheader_crit_edge ], [ %cmsk.0.ph162, %while.body.lr.ph.while.body18.preheader_crit_edge ]
  %bufSize.addr.0143.lcssa = phi i32 [ %sub, %while.body.while.body18.preheader_crit_edge ], [ %bufSize.addr.0.ph160, %while.body.lr.ph.while.body18.preheader_crit_edge ]
  %bufPtr.addr.0142.lcssa = phi ptr [ %add.ptr, %while.body.while.body18.preheader_crit_edge ], [ %bufPtr.addr.0.ph159, %while.body.lr.ph.while.body18.preheader_crit_edge ]
  br label %while.body18

land.rhs:                                         ; preds = %while.body5.land.rhs_crit_edge, %while.body.lr.ph.land.rhs_crit_edge
  %cnt.0140 = phi i32 [ %inc, %while.body5.land.rhs_crit_edge ], [ 0, %while.body.lr.ph.land.rhs_crit_edge ]
  %arrayidx = getelementptr i8, ptr %bufPtr.addr.0.ph159, i32 %cnt.0140
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %3)
  %cmp3.not = icmp eq i8 %3, 45
  br i1 %cmp3.not, label %for.body.i.preheader, label %while.body5

for.body.i.preheader:                             ; preds = %land.rhs
  %4 = zext i32 %cnt.0140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cnt.0140, label %for.body.i.preheader.cleanup_crit_edge [
    i32 3, label %if.end.i
    i32 4, label %if.end.i.1
    i32 5, label %if.end.i.2
  ]

for.body.i.preheader.cleanup_crit_edge:           ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body5:                                      ; preds = %land.rhs
  %inc = add nuw i32 %cnt.0140, 1
  %exitcond.not = icmp eq i32 %inc, %bufSize.addr.0.ph160
  br i1 %exitcond.not, label %while.body5.cleanup_crit_edge, label %while.body5.land.rhs_crit_edge

while.body5.land.rhs_crit_edge:                   ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.body5.cleanup_crit_edge:                    ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i.preheader
  %bcmp.i = tail call i32 @bcmp(ptr %bufPtr.addr.0.ph159, ptr nonnull @.str.12, i32 %cnt.0140) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end11_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end.i.1:                                       ; preds = %for.body.i.preheader
  %bcmp.i.1 = tail call i32 @bcmp(ptr %bufPtr.addr.0.ph159, ptr nonnull @.str.13, i32 %cnt.0140) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.1)
  %tobool.not.i.1 = icmp eq i32 %bcmp.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1.if.end11_crit_edge, label %if.end.i.3

if.end.i.1.if.end11_crit_edge:                    ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end.i.2:                                       ; preds = %for.body.i.preheader
  %bcmp.i.2 = tail call i32 @bcmp(ptr %bufPtr.addr.0.ph159, ptr nonnull @.str.14, i32 %cnt.0140) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.2)
  %tobool.not.i.2 = icmp eq i32 %bcmp.i.2, 0
  br i1 %tobool.not.i.2, label %if.end.i.2.if.end11_crit_edge, label %if.end.i.2.cleanup_crit_edge

if.end.i.2.cleanup_crit_edge:                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.2.if.end11_crit_edge:                    ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end.i.3:                                       ; preds = %if.end.i.1
  %bcmp.i.3 = tail call i32 @bcmp(ptr %bufPtr.addr.0.ph159, ptr nonnull @.str.15, i32 %cnt.0140) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.3)
  %tobool.not.i.3 = icmp eq i32 %bcmp.i.3, 0
  br i1 %tobool.not.i.3, label %if.end.i.3.if.end11_crit_edge, label %if.end.i.3.cleanup_crit_edge

if.end.i.3.cleanup_crit_edge:                     ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.3.if.end11_crit_edge:                    ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end11:                                         ; preds = %if.end.i.3.if.end11_crit_edge, %if.end.i.2.if.end11_crit_edge, %if.end.i.1.if.end11_crit_edge, %if.end.i.if.end11_crit_edge
  %idx.013.i.lcssa = phi i32 [ 0, %if.end.i.if.end11_crit_edge ], [ 1, %if.end.i.1.if.end11_crit_edge ], [ 2, %if.end.i.2.if.end11_crit_edge ], [ 3, %if.end.i.3.if.end11_crit_edge ]
  %inc12 = add nuw nsw i32 %cnt.0140, 1
  %sub = sub i32 %bufSize.addr.0.ph160, %inc12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end11.while.end47_crit_edge, label %while.body.while.body18.preheader_crit_edge

if.end11.while.end47_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end47

while.body18:                                     ; preds = %if.end29.while.body18_crit_edge, %while.body18.preheader
  %cmp16149 = phi i1 [ %cmp16, %if.end29.while.body18_crit_edge ], [ true, %while.body18.preheader ]
  %cnt.1148 = phi i32 [ %inc30, %if.end29.while.body18_crit_edge ], [ 0, %while.body18.preheader ]
  %arrayidx19 = getelementptr i8, ptr %bufPtr.addr.0142.lcssa, i32 %cnt.1148
  %5 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx19, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %6, label %if.end29 [
    i8 59, label %while.body18.while.end31.loopexit_crit_edge
    i8 47, label %while.body18.while.end31_crit_edge
  ]

while.body18.while.end31_crit_edge:               ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end31

while.body18.while.end31.loopexit_crit_edge:      ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end31.loopexit

if.end29:                                         ; preds = %while.body18
  %inc30 = add nuw i32 %cnt.1148, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc30, i32 %bufSize.addr.0143.lcssa)
  %cmp16 = icmp ult i32 %inc30, %bufSize.addr.0143.lcssa
  %exitcond199.not = icmp eq i32 %inc30, %bufSize.addr.0143.lcssa
  br i1 %exitcond199.not, label %if.end29.while.end31.loopexit_crit_edge, label %if.end29.while.body18_crit_edge

if.end29.while.body18_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body18

if.end29.while.end31.loopexit_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end31.loopexit

while.end31.loopexit:                             ; preds = %if.end29.while.end31.loopexit_crit_edge, %while.body18.while.end31.loopexit_crit_edge
  %cnt.1131.ph = phi i32 [ %cnt.1148, %while.body18.while.end31.loopexit_crit_edge ], [ %bufSize.addr.0143.lcssa, %if.end29.while.end31.loopexit_crit_edge ]
  %cmp16129.ph = phi i1 [ %cmp16149, %while.body18.while.end31.loopexit_crit_edge ], [ %cmp16, %if.end29.while.end31.loopexit_crit_edge ]
  %mMode.1.ph = phi i32 [ 0, %while.body18.while.end31.loopexit_crit_edge ], [ 1, %if.end29.while.end31.loopexit_crit_edge ]
  br label %while.end31

while.end31:                                      ; preds = %while.end31.loopexit, %while.body18.while.end31_crit_edge
  %cnt.1131 = phi i32 [ %cnt.1131.ph, %while.end31.loopexit ], [ %cnt.1148, %while.body18.while.end31_crit_edge ]
  %cmp16129 = phi i1 [ %cmp16129.ph, %while.end31.loopexit ], [ %cmp16149, %while.body18.while.end31_crit_edge ]
  %mMode.1 = phi i32 [ %mMode.1.ph, %while.end31.loopexit ], [ 1, %while.body18.while.end31_crit_edge ]
  br label %for.body.i94

for.body.i94:                                     ; preds = %for.inc.i100.for.body.i94_crit_edge, %while.end31
  %idx.013.i90 = phi i32 [ %inc.i98, %for.inc.i100.for.body.i94_crit_edge ], [ 0, %while.end31 ]
  %add.ptr.i91 = getelementptr %struct.std_name, ptr @std_items, i32 %idx.013.i90
  %8 = ptrtoint ptr %add.ptr.i91 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i91, align 8
  %call.i92 = tail call i32 @strlen(ptr noundef %9) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i92, i32 %cnt.1131)
  %cmp1.not.i93 = icmp eq i32 %call.i92, %cnt.1131
  br i1 %cmp1.not.i93, label %if.end.i97, label %for.body.i94.for.inc.i100_crit_edge

for.body.i94.for.inc.i100_crit_edge:              ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i100

if.end.i97:                                       ; preds = %for.body.i94
  %bcmp.i95 = tail call i32 @bcmp(ptr %bufPtr.addr.0142.lcssa, ptr %9, i32 %cnt.1131) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i95)
  %tobool.not.i96 = icmp eq i32 %bcmp.i95, 0
  br i1 %tobool.not.i96, label %find_std_name.exit102, label %if.end.i97.for.inc.i100_crit_edge

if.end.i97.for.inc.i100_crit_edge:                ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i100

for.inc.i100:                                     ; preds = %if.end.i97.for.inc.i100_crit_edge, %for.body.i94.for.inc.i100_crit_edge
  %inc.i98 = add nuw nsw i32 %idx.013.i90, 1
  %exitcond.not.i99 = icmp eq i32 %inc.i98, 20
  br i1 %exitcond.not.i99, label %for.inc.i100.cleanup_crit_edge, label %for.inc.i100.for.body.i94_crit_edge

for.inc.i100.for.body.i94_crit_edge:              ; preds = %for.inc.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i94

for.inc.i100.cleanup_crit_edge:                   ; preds = %for.inc.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

find_std_name.exit102:                            ; preds = %if.end.i97
  %tobool33.not = icmp eq ptr %add.ptr.i91, null
  br i1 %tobool33.not, label %find_std_name.exit102.cleanup_crit_edge, label %if.end35

find_std_name.exit102.cleanup_crit_edge:          ; preds = %find_std_name.exit102
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end35:                                         ; preds = %find_std_name.exit102
  %id36 = getelementptr %struct.std_name, ptr @std_items, i32 %idx.013.i90, i32 1
  %10 = ptrtoint ptr %id36 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %id36, align 8
  %and = and i64 %11, %cmsk.0144.lcssa
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool37.not = icmp eq i64 %and, 0
  br i1 %tobool37.not, label %if.end35.cleanup_crit_edge, label %if.end39

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %or = or i64 %and, %id.0.ph161
  %inc43 = zext i1 %cmp16129 to i32
  %spec.select = add i32 %cnt.1131, %inc43
  %add.ptr45 = getelementptr i8, ptr %bufPtr.addr.0142.lcssa, i32 %spec.select
  %sub46 = sub i32 %bufSize.addr.0143.lcssa, %spec.select
  %tobool.not141 = icmp eq i32 %sub46, 0
  br i1 %tobool.not141, label %if.end39.while.end47_crit_edge, label %if.end39.while.body.lr.ph_crit_edge

if.end39.while.body.lr.ph_crit_edge:              ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph

if.end39.while.end47_crit_edge:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end47

while.end47:                                      ; preds = %if.end39.while.end47_crit_edge, %if.end11.while.end47_crit_edge, %entry.while.end47_crit_edge
  %id.0.ph.lcssa138 = phi i64 [ 0, %entry.while.end47_crit_edge ], [ %or, %if.end39.while.end47_crit_edge ], [ %id.0.ph161, %if.end11.while.end47_crit_edge ]
  %tobool48.not = icmp eq ptr %idPtr, null
  br i1 %tobool48.not, label %while.end47.cleanup_crit_edge, label %if.then49

while.end47.cleanup_crit_edge:                    ; preds = %while.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then49:                                        ; preds = %while.end47
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %idPtr to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %id.0.ph.lcssa138, ptr %idPtr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %while.end47.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %find_std_name.exit102.cleanup_crit_edge, %for.inc.i100.cleanup_crit_edge, %if.end.i.3.cleanup_crit_edge, %if.end.i.2.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %while.body5.cleanup_crit_edge, %for.body.i.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then49 ], [ 1, %while.end47.cleanup_crit_edge ], [ 0, %for.inc.i100.cleanup_crit_edge ], [ 0, %while.body5.cleanup_crit_edge ], [ 0, %for.body.i.preheader.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end.i.3.cleanup_crit_edge ], [ 0, %if.end.i.2.cleanup_crit_edge ], [ 0, %find_std_name.exit102.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_std_id_to_str(ptr noundef %bufPtr, i32 noundef %bufSize, i64 noundef %id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc25.for.body_crit_edge, %entry
  %c1.067 = phi i32 [ 0, %entry ], [ %c1.4, %for.inc25.for.body_crit_edge ]
  %cfl.066 = phi i32 [ 0, %entry ], [ %cfl.3, %for.inc25.for.body_crit_edge ]
  %idx1.065 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25.for.body_crit_edge ]
  %bufPtr.addr.064 = phi ptr [ %bufPtr, %entry ], [ %bufPtr.addr.4, %for.inc25.for.body_crit_edge ]
  %bufSize.addr.063 = phi i32 [ %bufSize, %entry ], [ %bufSize.addr.4, %for.inc25.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.std_name, ptr @std_groups, i32 %idx1.065
  %id5 = getelementptr %struct.std_name, ptr @std_groups, i32 %idx1.065, i32 1
  %0 = ptrtoint ptr %id5 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %id5, align 8
  %and = and i64 %1, %id
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.body
  %c1.162 = phi i32 [ %c1.067, %for.body ], [ %c1.4, %for.inc.for.body3_crit_edge ]
  %cfl.161 = phi i32 [ %cfl.066, %for.body ], [ %cfl.3, %for.inc.for.body3_crit_edge ]
  %gfl.060 = phi i32 [ 0, %for.body ], [ %gfl.2, %for.inc.for.body3_crit_edge ]
  %idx2.059 = phi i32 [ 0, %for.body ], [ %inc, %for.inc.for.body3_crit_edge ]
  %bufPtr.addr.158 = phi ptr [ %bufPtr.addr.064, %for.body ], [ %bufPtr.addr.4, %for.inc.for.body3_crit_edge ]
  %bufSize.addr.157 = phi i32 [ %bufSize.addr.063, %for.body ], [ %bufSize.addr.4, %for.inc.for.body3_crit_edge ]
  %add.ptr4 = getelementptr %struct.std_name, ptr @std_items, i32 %idx2.059
  %id6 = getelementptr %struct.std_name, ptr @std_items, i32 %idx2.059, i32 1
  %2 = ptrtoint ptr %id6 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %id6, align 8
  %and7 = and i64 %and, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool.not = icmp eq i64 %and7, 0
  br i1 %tobool.not, label %for.body3.for.inc_crit_edge, label %if.end

for.body3.for.inc_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gfl.060)
  %tobool8.not = icmp eq i32 %gfl.060, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cfl.161)
  %tobool10.not = icmp eq i32 %cfl.161, 0
  br i1 %tobool10.not, label %if.then9.if.end13_crit_edge, label %if.then11

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %bufPtr.addr.158, i32 noundef %bufSize.addr.157, ptr noundef nonnull @.str) #10
  %add = add i32 %call, %c1.162
  %sub = sub i32 %bufSize.addr.157, %call
  %add.ptr12 = getelementptr i8, ptr %bufPtr.addr.158, i32 %call
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9.if.end13_crit_edge
  %bufSize.addr.2 = phi i32 [ %sub, %if.then11 ], [ %bufSize.addr.157, %if.then9.if.end13_crit_edge ]
  %bufPtr.addr.2 = phi ptr [ %add.ptr12, %if.then11 ], [ %bufPtr.addr.158, %if.then9.if.end13_crit_edge ]
  %c1.2 = phi i32 [ %add, %if.then11 ], [ %c1.162, %if.then9.if.end13_crit_edge ]
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %bufPtr.addr.2, i32 noundef %bufSize.addr.2, ptr noundef nonnull @.str.1, ptr noundef %5) #10
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %bufPtr.addr.158, i32 noundef %bufSize.addr.157, ptr noundef nonnull @.str.2) #10
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end13
  %bufSize.addr.3 = phi i32 [ %bufSize.addr.157, %if.else ], [ %bufSize.addr.2, %if.end13 ]
  %bufPtr.addr.3 = phi ptr [ %bufPtr.addr.158, %if.else ], [ %bufPtr.addr.2, %if.end13 ]
  %cfl.2 = phi i32 [ %cfl.161, %if.else ], [ 1, %if.end13 ]
  %c1.3 = phi i32 [ %c1.162, %if.else ], [ %c1.2, %if.end13 ]
  %c2.0 = phi i32 [ %call15, %if.else ], [ %call14, %if.end13 ]
  %add17 = add i32 %c2.0, %c1.3
  %sub18 = sub i32 %bufSize.addr.3, %c2.0
  %add.ptr19 = getelementptr i8, ptr %bufPtr.addr.3, i32 %c2.0
  %6 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr4, align 8
  %call21 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr19, i32 noundef %sub18, ptr noundef %7) #10
  %add22 = add i32 %add17, %call21
  %sub23 = sub i32 %sub18, %call21
  %add.ptr24 = getelementptr i8, ptr %add.ptr19, i32 %call21
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %for.body3.for.inc_crit_edge
  %bufSize.addr.4 = phi i32 [ %sub23, %if.end16 ], [ %bufSize.addr.157, %for.body3.for.inc_crit_edge ]
  %bufPtr.addr.4 = phi ptr [ %add.ptr24, %if.end16 ], [ %bufPtr.addr.158, %for.body3.for.inc_crit_edge ]
  %gfl.2 = phi i32 [ 1, %if.end16 ], [ %gfl.060, %for.body3.for.inc_crit_edge ]
  %cfl.3 = phi i32 [ %cfl.2, %if.end16 ], [ %cfl.161, %for.body3.for.inc_crit_edge ]
  %c1.4 = phi i32 [ %add22, %if.end16 ], [ %c1.162, %for.body3.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %idx2.059, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.inc25, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3

for.inc25:                                        ; preds = %for.inc
  %inc26 = add nuw nsw i32 %idx1.065, 1
  %exitcond68.not = icmp eq i32 %inc26, 4
  br i1 %exitcond68.not, label %for.end27, label %for.inc25.for.body_crit_edge

for.inc25.for.body_crit_edge:                     ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end27:                                        ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #12
  ret i32 %c1.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pvr2_std_create_enum(ptr nocapture noundef writeonly %countptr, i64 noundef %id) local_unnamed_addr #2 align 64 {
entry:
  %buf = alloca [100 x i8], align 1
  %buf36 = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %0 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf) #10
  %1 = call ptr @memset(ptr %buf, i32 255, i32 100)
  %call = call i32 @pvr2_std_id_to_str(ptr noundef nonnull %buf, i32 noundef 100, i64 noundef %id)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %2 = load i32, ptr @pvrusb2_debug, align 4
  %and1 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then.do.end8_crit_edge, label %do.end

if.then.do.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i64 %id to i32
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %call, ptr noundef nonnull %buf) #14
  br label %do.end8

do.end8:                                          ; preds = %do.end, %if.then.do.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf) #10
  br label %if.end9

if.end9:                                          ; preds = %do.end8, %entry.if.end9_crit_edge
  %3 = ptrtoint ptr %countptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %countptr, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %id)
  %tobool10.not222 = icmp eq i64 %id, 0
  br i1 %tobool10.not222, label %if.end9.for.cond20.preheader_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.for.cond20.preheader_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.inc.for.cond20.preheader_crit_edge, %if.end9.for.cond20.preheader_crit_edge
  %fmsk.0.lcssa = phi i64 [ 0, %if.end9.for.cond20.preheader_crit_edge ], [ %fmsk.1, %for.inc.for.cond20.preheader_crit_edge ]
  %std_cnt.0.lcssa = phi i32 [ 0, %if.end9.for.cond20.preheader_crit_edge ], [ %std_cnt.1, %for.inc.for.cond20.preheader_crit_edge ]
  %and23 = and i64 %id, 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %and23)
  %cmp25 = icmp eq i64 %and23, 5
  %inc28 = zext i1 %cmp25 to i32
  %spec.select = add i32 %std_cnt.0.lcssa, %inc28
  %and23.1 = and i64 %id, 160
  call void @__sanitizer_cov_trace_const_cmp8(i64 160, i64 %and23.1)
  %cmp25.1 = icmp eq i64 %and23.1, 160
  %inc28.1 = zext i1 %cmp25.1 to i32
  %spec.select.1 = add i32 %spec.select, %inc28.1
  %and23.2 = and i64 %id, 327680
  call void @__sanitizer_cov_trace_const_cmp8(i64 327680, i64 %and23.2)
  %cmp25.2 = icmp eq i64 %and23.2, 327680
  %inc28.2 = zext i1 %cmp25.2 to i32
  %spec.select.2 = add i32 %spec.select.1, %inc28.2
  %and23.3 = and i64 %id, 1179648
  call void @__sanitizer_cov_trace_const_cmp8(i64 1179648, i64 %and23.3)
  %cmp25.3 = icmp eq i64 %and23.3, 1179648
  %inc28.3 = zext i1 %cmp25.3 to i32
  %spec.select.3 = add i32 %spec.select.2, %inc28.3
  %and33 = and i64 %fmsk.0.lcssa, -50331649
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and33)
  %tobool34.not = icmp eq i64 %and33, 0
  br i1 %tobool34.not, label %for.cond20.preheader.do.body53_crit_edge, label %if.then35

for.cond20.preheader.do.body53_crit_edge:         ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body53

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9.for.body_crit_edge
  %std_cnt.0229 = phi i32 [ %std_cnt.1, %for.inc.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %fmsk.0228 = phi i64 [ %fmsk.1, %for.inc.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %cmsk.0227 = phi i64 [ %cmsk.1, %for.inc.for.body_crit_edge ], [ %id, %if.end9.for.body_crit_edge ]
  %idmsk.0223 = phi i64 [ %shl, %for.inc.for.body_crit_edge ], [ 1, %if.end9.for.body_crit_edge ]
  %and11 = and i64 %cmsk.0227, %idmsk.0223
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11)
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %if.end14

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end14:                                         ; preds = %for.body
  %neg = xor i64 %idmsk.0223, -1
  %and15 = and i64 %cmsk.0227, %neg
  %and.i = and i64 %idmsk.0223, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.end14.match_std.exit_crit_edge

if.end14.match_std.exit_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %match_std.exit

for.inc.i:                                        ; preds = %if.end14
  %and.1.i = and i64 %idmsk.0223, 45312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.1.i)
  %tobool.not.1.i = icmp eq i64 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %for.inc.i.match_std.exit_crit_edge

for.inc.i.match_std.exit_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %match_std.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %and.2.i = and i64 %idmsk.0223, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.2.i)
  %tobool.not.2.i = icmp eq i64 %and.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.2.i, label %for.inc.1.i.match_std.exit_crit_edge

for.inc.1.i.match_std.exit_crit_edge:             ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %match_std.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %and.3.i = and i64 %idmsk.0223, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.3.i)
  %tobool.not.3.i = icmp eq i64 %and.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.if.end19_crit_edge, label %for.inc.2.i.match_std.exit_crit_edge

for.inc.2.i.match_std.exit_crit_edge:             ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %match_std.exit

for.inc.2.i.if.end19_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

match_std.exit:                                   ; preds = %for.inc.2.i.match_std.exit_crit_edge, %for.inc.1.i.match_std.exit_crit_edge, %for.inc.i.match_std.exit_crit_edge, %if.end14.match_std.exit_crit_edge
  %idx.06.lcssa.i = phi i32 [ 0, %if.end14.match_std.exit_crit_edge ], [ 1, %for.inc.i.match_std.exit_crit_edge ], [ 2, %for.inc.1.i.match_std.exit_crit_edge ], [ 3, %for.inc.2.i.match_std.exit_crit_edge ]
  %add.ptr.i = getelementptr %struct.v4l2_standard, ptr @generic_standards, i32 %idx.06.lcssa.i
  %tobool17.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool17.not, label %match_std.exit.if.end19_crit_edge, label %if.then18

match_std.exit.if.end19_crit_edge:                ; preds = %match_std.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %match_std.exit
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %std_cnt.0229, 1
  br label %for.inc

if.end19:                                         ; preds = %match_std.exit.if.end19_crit_edge, %for.inc.2.i.if.end19_crit_edge
  %or = or i64 %fmsk.0228, %idmsk.0223
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %if.then18, %for.body.for.inc_crit_edge
  %cmsk.1 = phi i64 [ %and15, %if.then18 ], [ %and15, %if.end19 ], [ %cmsk.0227, %for.body.for.inc_crit_edge ]
  %fmsk.1 = phi i64 [ %fmsk.0228, %if.then18 ], [ %or, %if.end19 ], [ %fmsk.0228, %for.body.for.inc_crit_edge ]
  %std_cnt.1 = phi i32 [ %inc, %if.then18 ], [ %std_cnt.0229, %if.end19 ], [ %std_cnt.0229, %for.body.for.inc_crit_edge ]
  %shl = shl i64 %idmsk.0223, 1
  %tobool10.not = icmp eq i64 %cmsk.1, 0
  br i1 %tobool10.not, label %for.inc.for.cond20.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.cond20.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond20.preheader

if.then35:                                        ; preds = %for.cond20.preheader
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf36) #10
  %4 = call ptr @memset(ptr %buf36, i32 255, i32 100)
  %call38 = call i32 @pvr2_std_id_to_str(ptr noundef nonnull %buf36, i32 noundef 100, i64 noundef %and33)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %5 = load i32, ptr @pvrusb2_debug, align 4
  %and40 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.then35.do.end51_crit_edge, label %do.end45

if.then35.do.end51_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

do.end45:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call38, ptr noundef nonnull %buf36) #14
  br label %do.end51

do.end51:                                         ; preds = %do.end45, %if.then35.do.end51_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf36) #10
  br label %do.body53

do.body53:                                        ; preds = %do.end51, %for.cond20.preheader.do.body53_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %6 = load i32, ptr @pvrusb2_debug, align 4
  %and54 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body53.do.end64_crit_edge, label %do.end59

do.body53.do.end64_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end64

do.end59:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %spec.select.3) #14
  br label %do.end64

do.end64:                                         ; preds = %do.end59, %do.body53.do.end64_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.3)
  %tobool65.not = icmp eq i32 %spec.select.3, 0
  br i1 %tobool65.not, label %do.end64.cleanup_crit_edge, label %if.end67

do.end64.cleanup_crit_edge:                       ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end67:                                         ; preds = %do.end64
  %7 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select.3, i32 72) #10
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %if.end67.cleanup_crit_edge, label %if.end7.i.i, !prof !90

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end67
  %9 = extractvalue { i32, i1 } %7, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #15
  %tobool69.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool69.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end7.i.i.for.body75_crit_edge

if.end7.i.i.for.body75_crit_edge:                 ; preds = %if.end7.i.i
  br label %for.body75

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %if.end7.i.i.for.body75_crit_edge
  %idx.0234 = phi i32 [ %inc78, %for.body75.for.body75_crit_edge ], [ 0, %if.end7.i.i.for.body75_crit_edge ]
  %arrayidx76 = getelementptr %struct.v4l2_standard, ptr %call8.i.i, i32 %idx.0234
  %10 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %idx.0234, ptr %arrayidx76, align 8
  %inc78 = add nuw i32 %idx.0234, 1
  %exitcond.not = icmp eq i32 %inc78, %spec.select.3
  br i1 %exitcond.not, label %for.body85, label %for.body75.for.body75_crit_edge

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body75

for.cond100.preheader:                            ; preds = %pvr2_std_fill.exit.3, %for.inc97.2.for.cond100.preheader_crit_edge, %for.inc97.1.for.cond100.preheader_crit_edge, %for.inc97.for.cond100.preheader_crit_edge
  %idx.2.lcssa = phi i32 [ %idx.2, %for.inc97.for.cond100.preheader_crit_edge ], [ %idx.2.1, %for.inc97.1.for.cond100.preheader_crit_edge ], [ %idx.2.2, %for.inc97.2.for.cond100.preheader_crit_edge ], [ %inc95.3, %pvr2_std_fill.exit.3 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %id)
  %tobool101.not239 = icmp ne i64 %id, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.2.lcssa, i32 %spec.select.3)
  %cmp103240 = icmp ult i32 %idx.2.lcssa, %spec.select.3
  %or.cond181241 = select i1 %tobool101.not239, i1 %cmp103240, i1 false
  br i1 %or.cond181241, label %for.cond100.preheader.for.body106_crit_edge, label %for.cond100.preheader.for.end121_crit_edge

for.cond100.preheader.for.end121_crit_edge:       ; preds = %for.cond100.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end121

for.cond100.preheader.for.body106_crit_edge:      ; preds = %for.cond100.preheader
  br label %for.body106

for.body85:                                       ; preds = %for.body75
  %and87 = and i64 %id, 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and87)
  %tobool88.not = icmp eq i64 %and87, 0
  br i1 %tobool88.not, label %for.body85.for.inc97_crit_edge, label %if.end.i

for.body85.for.inc97_crit_edge:                   ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc97

if.end.i:                                         ; preds = %for.body85
  %11 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call8.i.i, align 128
  %13 = call ptr @memcpy(ptr %call8.i.i, ptr @generic_standards, i32 72)
  store i32 %12, ptr %call8.i.i, align 128
  %id2.i = getelementptr %struct.v4l2_standard, ptr %call8.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %id2.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 5, ptr %id2.i, align 8
  %name.i = getelementptr %struct.v4l2_standard, ptr %call8.i.i, i32 0, i32 2
  %call3.i = call i32 @pvr2_std_id_to_str(ptr noundef %name.i, i32 noundef 23, i64 noundef 5) #10
  %arrayidx.i = getelementptr %struct.v4l2_standard, ptr %call8.i.i, i32 0, i32 2, i32 %call3.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %16 = load i32, ptr @pvrusb2_debug, align 4
  %and.i184 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i184)
  %tobool5.not.i = icmp eq i32 %and.i184, 0
  br i1 %tobool5.not.i, label %if.end.i.for.inc97_crit_edge, label %do.end.i

if.end.i.for.inc97_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc97

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call8.i.i, align 128
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %18, ptr noundef %name.i) #14
  br label %for.inc97

for.inc97:                                        ; preds = %do.end.i, %if.end.i.for.inc97_crit_edge, %for.body85.for.inc97_crit_edge
  %idx.2 = phi i32 [ 0, %for.body85.for.inc97_crit_edge ], [ 1, %if.end.i.for.inc97_crit_edge ], [ 1, %do.end.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.2, i32 %spec.select.3)
  %cmp83 = icmp ult i32 %idx.2, %spec.select.3
  br i1 %cmp83, label %for.body85.1, label %for.inc97.for.cond100.preheader_crit_edge

for.inc97.for.cond100.preheader_crit_edge:        ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond100.preheader

for.body85.1:                                     ; preds = %for.inc97
  %and87.1 = and i64 %id, 160
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and87.1)
  %tobool88.not.1 = icmp eq i64 %and87.1, 0
  br i1 %tobool88.not.1, label %for.body85.1.for.inc97.1_crit_edge, label %if.end90.1

for.body85.1.for.inc97.1_crit_edge:               ; preds = %for.body85.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc97.1

if.end90.1:                                       ; preds = %for.body85.1
  %add.ptr.1 = getelementptr %struct.v4l2_standard, ptr %call8.i.i, i32 %idx.2
  %19 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.1, align 8
  %21 = call ptr @memcpy(ptr %add.ptr.1, ptr @generic_standards, i32 72)
  store i32 %20, ptr %add.ptr.1, align 8
  %id2.i.1 = getelementptr %struct.v4l2_standard, ptr %call8.i.i, i32 %idx.2, i32 1
  %22 = ptrtoint ptr %id2.i.1 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 160, ptr %id2.i.1, align 8
  %name.i.1 = getelementptr %struct.v4l2_standard, ptr %call8.i.i, i32 %idx.2, i32 2
  %call3.i.1 = call i32 @pvr2_std_id_to_str(ptr noundef %name.i.1, i32 noundef 23, i64 noundef 160) #10
  %arrayidx.i.1 = getelementptr %struct.v4l2_standard, ptr %call8.i.i, i32 %idx.2, i32 2, i32 %call3.i.1
  %23 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx.i.1, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %24 = load i32, ptr @pvrusb2_debug, align 4
  %and.i184.1 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i184.1)
  %tobool5.not.i.1 = icmp eq i32 %and.i184.1, 0
  br i1 %tobool5.not.i.1, label %if.end90.1.pvr2_std_fill.exit.1_crit_edge, label %do.end.i.1

if.end90.1.pvr2_std_fill.exit.1_crit_edge:        ; preds = %if.end90.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %pvr2_std_fill.exit.1

do.end.i.1:                                       ; preds = %if.end90.1
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.1, align 8
  %call11.i.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %26, ptr noundef %name.i.1) #14
  br label %pvr2_std_fill.exit.1

pvr2_std_fill.exit.1:                             ; preds = %do.end.i.1, %if.end90.1.pvr2_std_fill.exit.1_crit_edge
  %inc95.1 = add nuw nsw i32 %idx.2, 1
  br label %for.inc97.1

for.inc97.1:                                      ; preds = %pvr2_std_fill.exit.1, %for.body85.1.for.inc97.1_crit_edge
  %idx.2.1 = phi i32 [ %idx.2, %for.body85.1.for.inc97.1_crit_edge ], [ %inc95.1, %pvr2_std_fill.exit.1 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.2.1, i32 %spec.select.3)
  %cmp83.1 = icmp ult i32 %idx.2.1, %spec.select.3
  br i1 %cmp83.1, label %for.body85.2, label %for.inc97.1.for.cond100.preheader_crit_edge

for.inc97.1.for.cond100.preheader_crit_edge:      ; preds = %for.inc97.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond100.preheader

for.body85.2:                                     ; preds = %for.inc97.1
  %and87.2 = and i64 %id, 327680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and87.2)
  %tobool88.not.2 = icmp eq i64 %and87.2, 0
  br i1 %tobool88.not.2, label %for.body85.2.for.inc97.2_crit_edge, label %if.end90.2

for.body85.2.for.inc97.2_crit_edge:               ; preds = %for.body85.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc97.2

if.end90.2:                                       ; preds = %for.body85.2
  %add.ptr.2 = getelementptr %struct.v4l2_standard, ptr %call8.i.i, i32 %idx.2.1
  %27 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.2, align 8
  %29 = call ptr @memcpy(ptr %add.ptr.2, ptr @generic_standards, i32 72)
  store i32 %28, ptr %add.ptr.2, align 8
  %id2.i.2 = getelementptr %struct.v4l2_standard, ptr %call8.i.i, i32 %idx.2.1, i32 1
  %30 = ptrtoint ptr %id2.i.2 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 327680, ptr %id2.i.2, align 8
  %name.i.2 = getelementptr %struct.v4l2_standard, ptr %call8.i.i, i32 %idx.2.1, i32 2
  %call3.i.2 = call i32 @pvr2_std_id_to_str(ptr noundef %name.i.2, i32 noundef 23, i64 noundef 327680) #10
  %arrayidx.i.2 = getelementptr %struct.v4l2_standard, ptr %call8.i.i, i32 %idx.2.1, i32 2, i32 %call3.i.2
  %31 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx.i.2, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %32 = load i32, ptr @pvrusb2_debug, align 4
  %and.i184.2 = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i184.2)
  %tobool5.not.i.2 = icmp eq i32 %and.i184.2, 0
  br i1 %tobool5.not.i.2, label %if.end90.2.pvr2_std_fill.exit.2_crit_edge, label %do.end.i.2

if.end90.2.pvr2_std_fill.exit.2_crit_edge:        ; preds = %if.end90.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %pvr2_std_fill.exit.2

do.end.i.2:                                       ; preds = %if.end90.2
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.2, align 8
  %call11.i.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %34, ptr noundef %name.i.2) #14
  br label %pvr2_std_fill.exit.2

pvr2_std_fill.exit.2:                             ; preds = %do.end.i.2, %if.end90.2.pvr2_std_fill.exit.2_crit_edge
  %inc95.2 = add nuw nsw i32 %idx.2.1, 1
  br label %for.inc97.2

for.inc97.2:                                      ; preds = %pvr2_std_fill.exit.2, %for.body85.2.for.inc97.2_crit_edge
  %idx.2.2 = phi i32 [ %idx.2.1, %for.body85.2.for.inc97.2_crit_edge ], [ %inc95.2, %pvr2_std_fill.exit.2 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.2.2, i32 %spec.select.3)
  %cmp83.2 = icmp uge i32 %idx.2.2, %spec.select.3
  %and87.3 = and i64 %id, 1179648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and87.3)
  %tobool88.not.3 = icmp eq i64 %and87.3, 0
  %or.cond = or i1 %cmp83.2, %tobool88.not.3
  br i1 %or.cond, label %for.inc97.2.for.cond100.preheader_crit_edge, label %if.end90.3

for.inc97.2.for.cond100.preheader_crit_edge:      ; preds = %for.inc97.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond100.preheader

if.end90.3:                                       ; preds = %for.inc97.2
  %add.ptr.3 = getelementptr %struct.v4l2_standard, ptr %call8.i.i, i32 %idx.2.2
  %35 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.3, align 8
  %37 = call ptr @memcpy(ptr %add.ptr.3, ptr @generic_standards, i32 72)
  store i32 %36, ptr %add.ptr.3, align 8
  %id2.i.3 = getelementptr %struct.v4l2_standard, ptr %call8.i.i, i32 %idx.2.2, i32 1
  %38 = ptrtoint ptr %id2.i.3 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 1179648, ptr %id2.i.3, align 8
  %name.i.3 = getelementptr %struct.v4l2_standard, ptr %call8.i.i, i32 %idx.2.2, i32 2
  %call3.i.3 = call i32 @pvr2_std_id_to_str(ptr noundef %name.i.3, i32 noundef 23, i64 noundef 1179648) #10
  %arrayidx.i.3 = getelementptr %struct.v4l2_standard, ptr %call8.i.i, i32 %idx.2.2, i32 2, i32 %call3.i.3
  %39 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx.i.3, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %40 = load i32, ptr @pvrusb2_debug, align 4
  %and.i184.3 = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i184.3)
  %tobool5.not.i.3 = icmp eq i32 %and.i184.3, 0
  br i1 %tobool5.not.i.3, label %if.end90.3.pvr2_std_fill.exit.3_crit_edge, label %do.end.i.3

if.end90.3.pvr2_std_fill.exit.3_crit_edge:        ; preds = %if.end90.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %pvr2_std_fill.exit.3

do.end.i.3:                                       ; preds = %if.end90.3
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.3, align 8
  %call11.i.3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %42, ptr noundef %name.i.3) #14
  br label %pvr2_std_fill.exit.3

pvr2_std_fill.exit.3:                             ; preds = %do.end.i.3, %if.end90.3.pvr2_std_fill.exit.3_crit_edge
  %inc95.3 = add nuw nsw i32 %idx.2.2, 1
  br label %for.cond100.preheader

for.body106:                                      ; preds = %for.inc119.for.body106_crit_edge, %for.cond100.preheader.for.body106_crit_edge
  %idx.3246 = phi i32 [ %idx.4, %for.inc119.for.body106_crit_edge ], [ %idx.2.lcssa, %for.cond100.preheader.for.body106_crit_edge ]
  %cmsk.2245 = phi i64 [ %cmsk.3, %for.inc119.for.body106_crit_edge ], [ %id, %for.cond100.preheader.for.body106_crit_edge ]
  %idmsk.1242 = phi i64 [ %shl120, %for.inc119.for.body106_crit_edge ], [ 1, %for.cond100.preheader.for.body106_crit_edge ]
  %and107 = and i64 %cmsk.2245, %idmsk.1242
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and107)
  %tobool108.not = icmp eq i64 %and107, 0
  br i1 %tobool108.not, label %for.body106.for.inc119_crit_edge, label %if.end110

for.body106.for.inc119_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc119

if.end110:                                        ; preds = %for.body106
  %neg111 = xor i64 %idmsk.1242, -1
  %and112 = and i64 %cmsk.2245, %neg111
  %add.ptr113 = getelementptr %struct.v4l2_standard, ptr %call8.i.i, i32 %idx.3246
  %and.i.i186 = and i64 %idmsk.1242, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i186)
  %tobool.not.i.i187 = icmp eq i64 %and.i.i186, 0
  br i1 %tobool.not.i.i187, label %for.inc.i.i190, label %if.end110.match_std.exit.i200_crit_edge

if.end110.match_std.exit.i200_crit_edge:          ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %match_std.exit.i200

for.inc.i.i190:                                   ; preds = %if.end110
  %and.1.i.i188 = and i64 %idmsk.1242, 45312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.1.i.i188)
  %tobool.not.1.i.i189 = icmp eq i64 %and.1.i.i188, 0
  br i1 %tobool.not.1.i.i189, label %for.inc.1.i.i193, label %for.inc.i.i190.match_std.exit.i200_crit_edge

for.inc.i.i190.match_std.exit.i200_crit_edge:     ; preds = %for.inc.i.i190
  call void @__sanitizer_cov_trace_pc() #12
  br label %match_std.exit.i200

for.inc.1.i.i193:                                 ; preds = %for.inc.i.i190
  %and.2.i.i191 = and i64 %idmsk.1242, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.2.i.i191)
  %tobool.not.2.i.i192 = icmp eq i64 %and.2.i.i191, 0
  br i1 %tobool.not.2.i.i192, label %for.inc.2.i.i196, label %for.inc.1.i.i193.match_std.exit.i200_crit_edge

for.inc.1.i.i193.match_std.exit.i200_crit_edge:   ; preds = %for.inc.1.i.i193
  call void @__sanitizer_cov_trace_pc() #12
  br label %match_std.exit.i200

for.inc.2.i.i196:                                 ; preds = %for.inc.1.i.i193
  %and.3.i.i194 = and i64 %idmsk.1242, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.3.i.i194)
  %tobool.not.3.i.i195 = icmp eq i64 %and.3.i.i194, 0
  br i1 %tobool.not.3.i.i195, label %for.inc.2.i.i196.for.inc119_crit_edge, label %for.inc.2.i.i196.match_std.exit.i200_crit_edge

for.inc.2.i.i196.match_std.exit.i200_crit_edge:   ; preds = %for.inc.2.i.i196
  call void @__sanitizer_cov_trace_pc() #12
  br label %match_std.exit.i200

for.inc.2.i.i196.for.inc119_crit_edge:            ; preds = %for.inc.2.i.i196
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc119

match_std.exit.i200:                              ; preds = %for.inc.2.i.i196.match_std.exit.i200_crit_edge, %for.inc.1.i.i193.match_std.exit.i200_crit_edge, %for.inc.i.i190.match_std.exit.i200_crit_edge, %if.end110.match_std.exit.i200_crit_edge
  %idx.06.lcssa.i.i197 = phi i32 [ 0, %if.end110.match_std.exit.i200_crit_edge ], [ 1, %for.inc.i.i190.match_std.exit.i200_crit_edge ], [ 2, %for.inc.1.i.i193.match_std.exit.i200_crit_edge ], [ 3, %for.inc.2.i.i196.match_std.exit.i200_crit_edge ]
  %add.ptr.i.i198 = getelementptr %struct.v4l2_standard, ptr @generic_standards, i32 %idx.06.lcssa.i.i197
  %tobool.not.i199 = icmp eq ptr %add.ptr.i.i198, null
  br i1 %tobool.not.i199, label %match_std.exit.i200.for.inc119_crit_edge, label %if.end.i207

match_std.exit.i200.for.inc119_crit_edge:         ; preds = %match_std.exit.i200
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc119

if.end.i207:                                      ; preds = %match_std.exit.i200
  %43 = ptrtoint ptr %add.ptr113 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr113, align 8
  %45 = call ptr @memcpy(ptr %add.ptr113, ptr %add.ptr.i.i198, i32 72)
  store i32 %44, ptr %add.ptr113, align 8
  %id2.i201 = getelementptr %struct.v4l2_standard, ptr %call8.i.i, i32 %idx.3246, i32 1
  %46 = ptrtoint ptr %id2.i201 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %idmsk.1242, ptr %id2.i201, align 8
  %name.i202 = getelementptr %struct.v4l2_standard, ptr %call8.i.i, i32 %idx.3246, i32 2
  %call3.i203 = call i32 @pvr2_std_id_to_str(ptr noundef %name.i202, i32 noundef 23, i64 noundef %idmsk.1242) #10
  %arrayidx.i204 = getelementptr %struct.v4l2_standard, ptr %call8.i.i, i32 %idx.3246, i32 2, i32 %call3.i203
  %47 = ptrtoint ptr %arrayidx.i204 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx.i204, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %48 = load i32, ptr @pvrusb2_debug, align 4
  %and.i205 = and i32 %48, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i205)
  %tobool5.not.i206 = icmp eq i32 %and.i205, 0
  br i1 %tobool5.not.i206, label %if.end.i207.pvr2_std_fill.exit211_crit_edge, label %do.end.i209

if.end.i207.pvr2_std_fill.exit211_crit_edge:      ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #12
  br label %pvr2_std_fill.exit211

do.end.i209:                                      ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %add.ptr113 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr113, align 8
  %call11.i208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %50, ptr noundef %name.i202) #14
  br label %pvr2_std_fill.exit211

pvr2_std_fill.exit211:                            ; preds = %do.end.i209, %if.end.i207.pvr2_std_fill.exit211_crit_edge
  %inc118 = add nuw i32 %idx.3246, 1
  br label %for.inc119

for.inc119:                                       ; preds = %pvr2_std_fill.exit211, %match_std.exit.i200.for.inc119_crit_edge, %for.inc.2.i.i196.for.inc119_crit_edge, %for.body106.for.inc119_crit_edge
  %cmsk.3 = phi i64 [ %cmsk.2245, %for.body106.for.inc119_crit_edge ], [ %and112, %for.inc.2.i.i196.for.inc119_crit_edge ], [ %and112, %match_std.exit.i200.for.inc119_crit_edge ], [ %and112, %pvr2_std_fill.exit211 ]
  %idx.4 = phi i32 [ %idx.3246, %for.body106.for.inc119_crit_edge ], [ %idx.3246, %for.inc.2.i.i196.for.inc119_crit_edge ], [ %idx.3246, %match_std.exit.i200.for.inc119_crit_edge ], [ %inc118, %pvr2_std_fill.exit211 ]
  %shl120 = shl i64 %idmsk.1242, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cmsk.3)
  %tobool101.not = icmp ne i64 %cmsk.3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.4, i32 %spec.select.3)
  %cmp103 = icmp ult i32 %idx.4, %spec.select.3
  %or.cond181 = select i1 %tobool101.not, i1 %cmp103, i1 false
  br i1 %or.cond181, label %for.inc119.for.body106_crit_edge, label %for.inc119.for.end121_crit_edge

for.inc119.for.end121_crit_edge:                  ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end121

for.inc119.for.body106_crit_edge:                 ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body106

for.end121:                                       ; preds = %for.inc119.for.end121_crit_edge, %for.cond100.preheader.for.end121_crit_edge
  %51 = ptrtoint ptr %countptr to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %spec.select.3, ptr %countptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end121, %if.end7.i.i.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %do.end64.cleanup_crit_edge
  %retval.0 = phi ptr [ %call8.i.i, %for.end121 ], [ null, %do.end64.cleanup_crit_edge ], [ null, %if.end7.i.i.cleanup_crit_edge ], [ null, %if.end67.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @pvr2_std_get_usable() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 67108863
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 189, i32 36}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 196, i32 13}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 199, i32 35}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 316, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @pvr2_std_create_enum._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @pvr2_std_create_enum._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 344, i32 3}
!14 = !{ptr @pvr2_std_create_enum._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @pvr2_std_create_enum._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 350, i32 2}
!18 = !{ptr @pvr2_std_create_enum._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @pvr2_std_create_enum._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 71, i32 3}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 72, i32 3}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 73, i32 3}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 74, i32 3}
!28 = !{ptr @std_groups, !29, !"std_groups", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 70, i32 30}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 79, i32 3}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 80, i32 3}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 81, i32 3}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 82, i32 3}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 83, i32 3}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 84, i32 3}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 85, i32 3}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 86, i32 3}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 87, i32 3}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 88, i32 3}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 89, i32 3}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 90, i32 3}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 91, i32 3}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 92, i32 3}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 93, i32 3}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 94, i32 3}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 95, i32 3}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 96, i32 3}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 97, i32 3}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 98, i32 3}
!70 = !{ptr @std_items, !71, !"std_items", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 78, i32 30}
!72 = !{ptr @generic_standards, !73, !"generic_standards", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 217, i32 29}
!74 = !{ptr @std_mixes, !75, !"std_mixes", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 298, i32 20}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-std.c", i32 291, i32 2}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @pvr2_std_fill._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @pvr2_std_fill._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"branch_weights", i32 1, i32 2000}
