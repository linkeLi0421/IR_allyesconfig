; ModuleID = '/llk/IR_all_yes/drivers/video/of_display_timing.c_pt.bc'
source_filename = "../drivers/video/of_display_timing.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+of_get_display_timing\22, \22a\22\09"
module asm "\09.weak\09__crc_of_get_display_timing\09\09\09\09"
module asm "\09.long\09__crc_of_get_display_timing\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_display_timing:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_display_timing\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_display_timing:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_get_display_timings\22, \22a\22\09"
module asm "\09.weak\09__crc_of_get_display_timings\09\09\09\09"
module asm "\09.long\09__crc_of_get_display_timings\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_display_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_display_timings\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_display_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.display_timing = type { %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, i32 }
%struct.timing_entry = type { i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.display_timings = type { i32, i32, ptr }

@__kstrtab_of_get_display_timing = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_display_timing = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_display_timing = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_display_timing to i32), ptr @__kstrtab_of_get_display_timing, ptr @__kstrtabns_of_get_display_timing }, section "___ksymtab_gpl+of_get_display_timing", align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"display-timings\00", [16 x i8] zeroinitializer }, align 32
@of_get_display_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%pOF: could not find display-timings node\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"of_get_display_timings\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/video/of_display_timing.c\00", [62 x i8] zeroinitializer }, align 32
@of_get_display_timings._entry_ptr = internal global ptr @of_get_display_timings._entry, section ".printk_index", align 4
@of_get_display_timings._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%pOF: could not allocate struct disp'\0A\00", [55 x i8] zeroinitializer }, align 32
@of_get_display_timings._entry_ptr.6 = internal global ptr @of_get_display_timings._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"native-mode\00", [20 x i8] zeroinitializer }, align 32
@of_get_display_timings._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%pOF: no timing specifications given\0A\00", [56 x i8] zeroinitializer }, align 32
@of_get_display_timings._entry_ptr.10 = internal global ptr @of_get_display_timings._entry.8, section ".printk_index", align 4
@of_get_display_timings.__UNIQUE_ID_ddebug167 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.2, ptr @.str.3, ptr @.str.12, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"of_display_timing\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%pOF: using %pOFn as default timing\0A\00", [59 x i8] zeroinitializer }, align 32
@of_get_display_timings._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%pOF: no timings specified\0A\00", [34 x i8] zeroinitializer }, align 32
@of_get_display_timings._entry_ptr.15 = internal global ptr @of_get_display_timings._entry.13, section ".printk_index", align 4
@of_get_display_timings._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%pOF: could not allocate timings array\0A\00", [54 x i8] zeroinitializer }, align 32
@of_get_display_timings._entry_ptr.18 = internal global ptr @of_get_display_timings._entry.16, section ".printk_index", align 4
@of_get_display_timings._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%pOF: could not allocate display_timing struct\0A\00", [46 x i8] zeroinitializer }, align 32
@of_get_display_timings._entry_ptr.21 = internal global ptr @of_get_display_timings._entry.19, section ".printk_index", align 4
@of_get_display_timings._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%pOF: error in timing %d\0A\00", [36 x i8] zeroinitializer }, align 32
@of_get_display_timings._entry_ptr.24 = internal global ptr @of_get_display_timings._entry.22, section ".printk_index", align 4
@of_get_display_timings.__UNIQUE_ID_ddebug168 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.2, ptr @.str.3, ptr @.str.25, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%pOF: got %d timings. Using timing #%d as default\0A\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_of_get_display_timings = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_display_timings = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_display_timings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_display_timings to i32), ptr @__kstrtab_of_get_display_timings, ptr @__kstrtabns_of_get_display_timings }, section "___ksymtab_gpl+of_get_display_timings", align 4
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hback-porch\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hfront-porch\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hactive\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hsync-len\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vback-porch\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vfront-porch\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vactive\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vsync-len\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vsync-active\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hsync-active\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"de-active\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pixelclk-active\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"syncclk-active\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"interlaced\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"doublescan\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"doubleclk\00", [22 x i8] zeroinitializer }, align 32
@of_parse_display_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%pOF: error reading timing properties\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"of_parse_display_timing\00", [40 x i8] zeroinitializer }, align 32
@of_parse_display_timing._entry_ptr = internal global ptr @of_parse_display_timing._entry, section ".printk_index", align 4
@parse_timing_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%pOF: could not find property %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"parse_timing_property\00", [42 x i8] zeroinitializer }, align 32
@parse_timing_property._entry_ptr = internal global ptr @parse_timing_property._entry, section ".printk_index", align 4
@parse_timing_property._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%pOF: illegal timing specification in %s\0A\00", [52 x i8] zeroinitializer }, align 32
@parse_timing_property._entry_ptr.49 = internal global ptr @parse_timing_property._entry.47, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 154, i32 40 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 156, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 162, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 166, i32 39 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 172, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 176, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 183, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 191, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 204, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 215, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 234, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 65, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 66, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 67, i32 35 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 68, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 69, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 70, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 71, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 72, i32 35 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 73, i32 35 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 76, i32 32 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 79, i32 32 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 82, i32 32 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 85, i32 32 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 89, i32 32 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 98, i32 32 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 100, i32 32 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 102, i32 32 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 106, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 33, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private constant [37 x i8] c"../drivers/video/of_display_timing.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 45, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__ksymtab_of_get_display_timing, ptr @__ksymtab_of_get_display_timings, ptr @of_get_display_timings._entry, ptr @of_get_display_timings._entry.13, ptr @of_get_display_timings._entry.16, ptr @of_get_display_timings._entry.19, ptr @of_get_display_timings._entry.22, ptr @of_get_display_timings._entry.4, ptr @of_get_display_timings._entry.8, ptr @of_get_display_timings._entry_ptr, ptr @of_get_display_timings._entry_ptr.10, ptr @of_get_display_timings._entry_ptr.15, ptr @of_get_display_timings._entry_ptr.18, ptr @of_get_display_timings._entry_ptr.21, ptr @of_get_display_timings._entry_ptr.24, ptr @of_get_display_timings._entry_ptr.6, ptr @of_parse_display_timing._entry, ptr @of_parse_display_timing._entry_ptr, ptr @parse_timing_property._entry, ptr @parse_timing_property._entry.47, ptr @parse_timing_property._entry_ptr, ptr @parse_timing_property._entry_ptr.49, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_display_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_display_timings._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_display_timings._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_display_timings._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_display_timings._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_display_timings._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_display_timings._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_parse_display_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_timing_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_timing_property._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_get_display_timing(ptr noundef %np, ptr noundef %name, ptr noundef %dt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %np, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_get_child_by_name(ptr noundef nonnull %np, ptr noundef %name) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call fastcc i32 @of_parse_display_timing(ptr noundef nonnull %call, ptr noundef %dt)
  tail call void @of_node_put(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @of_parse_display_timing(ptr noundef %np, ptr noundef %dt) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %1 = call ptr @memset(ptr %dt, i32 0, i32 112)
  %hback_porch = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 3
  %call = tail call fastcc i32 @parse_timing_property(ptr noundef %np, ptr noundef nonnull @.str.26, ptr noundef %hback_porch)
  %hfront_porch = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 2
  %call1 = tail call fastcc i32 @parse_timing_property(ptr noundef %np, ptr noundef nonnull @.str.27, ptr noundef %hfront_porch)
  %or2 = or i32 %call1, %call
  %hactive = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 1
  %call3 = tail call fastcc i32 @parse_timing_property(ptr noundef %np, ptr noundef nonnull @.str.28, ptr noundef %hactive)
  %or4 = or i32 %or2, %call3
  %hsync_len = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 4
  %call5 = tail call fastcc i32 @parse_timing_property(ptr noundef %np, ptr noundef nonnull @.str.29, ptr noundef %hsync_len)
  %or6 = or i32 %or4, %call5
  %vback_porch = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 7
  %call7 = tail call fastcc i32 @parse_timing_property(ptr noundef %np, ptr noundef nonnull @.str.30, ptr noundef %vback_porch)
  %or8 = or i32 %or6, %call7
  %vfront_porch = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 6
  %call9 = tail call fastcc i32 @parse_timing_property(ptr noundef %np, ptr noundef nonnull @.str.31, ptr noundef %vfront_porch)
  %or10 = or i32 %or8, %call9
  %vactive = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 5
  %call11 = tail call fastcc i32 @parse_timing_property(ptr noundef %np, ptr noundef nonnull @.str.32, ptr noundef %vactive)
  %or12 = or i32 %or10, %call11
  %vsync_len = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 8
  %call13 = tail call fastcc i32 @parse_timing_property(ptr noundef %np, ptr noundef nonnull @.str.33, ptr noundef %vsync_len)
  %or14 = or i32 %or12, %call13
  %call15 = tail call fastcc i32 @parse_timing_property(ptr noundef %np, ptr noundef nonnull @.str.34, ptr noundef %dt)
  %or16 = or i32 %or14, %call15
  %flags = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 9
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.35, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool18.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool18.not, i32 4, i32 8
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %or20 = or i32 %cond, %6
  store i32 %or20, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i.i130 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.36, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i130)
  %tobool22.not = icmp sgt i32 %call.i.i130, -1
  br i1 %tobool22.not, label %if.then23, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool24.not = icmp eq i32 %8, 0
  %cond25 = select i1 %tobool24.not, i32 1, i32 2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %or27 = or i32 %cond25, %10
  store i32 %or27, ptr %flags, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end.if.end28_crit_edge
  %call.i.i131 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.37, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i131)
  %tobool30.not = icmp sgt i32 %call.i.i131, -1
  br i1 %tobool30.not, label %if.then31, label %if.end28.if.end36_crit_edge

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool32.not = icmp eq i32 %12, 0
  %cond33 = select i1 %tobool32.not, i32 16, i32 32
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %or35 = or i32 %cond33, %14
  store i32 %or35, ptr %flags, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.end28.if.end36_crit_edge
  %call.i.i132 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.38, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i132)
  %tobool38.not = icmp sgt i32 %call.i.i132, -1
  br i1 %tobool38.not, label %if.then39, label %if.end36.if.end44_crit_edge

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool40.not = icmp eq i32 %16, 0
  %cond41 = select i1 %tobool40.not, i32 128, i32 64
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %or43 = or i32 %cond41, %18
  store i32 %or43, ptr %flags, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.end36.if.end44_crit_edge
  %call.i.i133 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.39, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i133)
  %tobool46.not = icmp sgt i32 %call.i.i133, -1
  br i1 %tobool46.not, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool48.not = icmp eq i32 %20, 0
  %cond49 = select i1 %tobool48.not, i32 4096, i32 2048
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %or51 = or i32 %cond49, %22
  br label %if.end62.sink.split

if.else:                                          ; preds = %if.end44
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and = and i32 %24, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool53.not = icmp eq i32 %and, 0
  br i1 %tobool53.not, label %if.else.if.end62_crit_edge, label %if.then54

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %and56 = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %cond58 = select i1 %tobool57.not, i32 4096, i32 2048
  %or60 = or i32 %cond58, %24
  br label %if.end62.sink.split

if.end62.sink.split:                              ; preds = %if.then54, %if.then47
  %or60.sink = phi i32 [ %or60, %if.then54 ], [ %or51, %if.then47 ]
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or60.sink, ptr %flags, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end62.sink.split, %if.else.if.end62_crit_edge
  %call.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.40, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end62.if.end67_crit_edge, label %if.then64

if.end62.if.end67_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %or66 = or i32 %27, 256
  store i32 %or66, ptr %flags, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end62.if.end67_crit_edge
  %call.i134 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.41, ptr noundef null) #7
  %tobool.i135.not = icmp eq ptr %call.i134, null
  br i1 %tobool.i135.not, label %if.end67.if.end72_crit_edge, label %if.then69

if.end67.if.end72_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %or71 = or i32 %29, 512
  store i32 %or71, ptr %flags, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end67.if.end72_crit_edge
  %call.i136 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.42, ptr noundef null) #7
  %tobool.i137.not = icmp eq ptr %call.i136, null
  br i1 %tobool.i137.not, label %if.end72.if.end77_crit_edge, label %if.then74

if.end72.if.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %or76 = or i32 %31, 1024
  store i32 %or76, ptr %flags, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end72.if.end77_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or16)
  %tobool78.not = icmp eq i32 %or16, 0
  br i1 %tobool78.not, label %if.end77.cleanup_crit_edge, label %do.end

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %np) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end77.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end77.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_get_display_timings(ptr noundef %np) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %np, null
  br i1 %tobool.not, label %entry.cleanup110_crit_edge, label %if.end

entry.cleanup110_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_get_child_by_name(ptr noundef nonnull %np, ptr noundef nonnull @.str) #7
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %np) #10
  br label %cleanup110

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #11
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %np) #10
  br label %dispfail

if.end14:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %1 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %if.end19

of_parse_phandle.exit:                            ; preds = %if.end14
  %2 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool16.not = icmp eq ptr %3, null
  br i1 %tobool16.not, label %of_parse_phandle.exit.if.end19_crit_edge, label %of_parse_phandle.exit.do.body28_crit_edge

of_parse_phandle.exit.do.body28_crit_edge:        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

of_parse_phandle.exit.if.end19_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end19:                                         ; preds = %of_parse_phandle.exit.if.end19_crit_edge, %of_parse_phandle.exit.thread
  %call18 = call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #7
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %do.end24, label %if.end19.do.body28_crit_edge

if.end19.do.body28_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

do.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %np) #10
  br label %entryfail

do.body28:                                        ; preds = %if.end19.do.body28_crit_edge, %of_parse_phandle.exit.do.body28_crit_edge
  %entry1.0173 = phi ptr [ %call18, %if.end19.do.body28_crit_edge ], [ %3, %of_parse_phandle.exit.do.body28_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_get_display_timings.__UNIQUE_ID_ddebug167, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_get_display_timings, %if.then34)) #7
          to label %do.end37 [label %if.then34], !srcloc !102

if.then34:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @of_get_display_timings.__UNIQUE_ID_ddebug167, ptr noundef nonnull @.str.12, ptr noundef nonnull %np, ptr noundef nonnull %entry1.0173) #7
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %do.body28
  %call.i165 = call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #7
  %cmp.not5.i = icmp eq ptr %call.i165, null
  br i1 %cmp.not5.i, label %of_get_child_count.exit.thread, label %do.end37.for.body.i_crit_edge

do.end37.for.body.i_crit_edge:                    ; preds = %do.end37
  br label %for.body.i

of_get_child_count.exit.thread:                   ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %call7.i.i, align 8
  br label %do.end43

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end37.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end37.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i165, %do.end37.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef nonnull %child.06.i) #7
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc.i, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %cmp = icmp eq i32 %inc.i, 0
  br i1 %cmp, label %of_get_child_count.exit.do.end43_crit_edge, label %if.end46

of_get_child_count.exit.do.end43_crit_edge:       ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

do.end43:                                         ; preds = %of_get_child_count.exit.do.end43_crit_edge, %of_get_child_count.exit.thread
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %np) #10
  br label %entryfail

if.end46:                                         ; preds = %of_get_child_count.exit
  %6 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i, i32 4) #7
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !103

kcalloc.exit.thread:                              ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %timings178 = getelementptr inbounds %struct.display_timings, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %timings178 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %timings178, align 8
  br label %do.end54

if.end7.i.i:                                      ; preds = %if.end46
  %9 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #12
  %timings = getelementptr inbounds %struct.display_timings, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %timings to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i.i, ptr %timings, align 8
  %tobool50.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool50.not, label %if.end7.i.i.do.end54_crit_edge, label %if.end57

if.end7.i.i.do.end54_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

do.end54:                                         ; preds = %if.end7.i.i.do.end54_crit_edge, %kcalloc.exit.thread
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %np) #10
  br label %entryfail

if.end57:                                         ; preds = %if.end7.i.i
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %call7.i.i, align 8
  %native_mode59 = getelementptr inbounds %struct.display_timings, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %native_mode59 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %native_mode59, align 4
  %call60 = call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #7
  %cmp61.not188 = icmp eq ptr %call60, null
  br i1 %cmp61.not188, label %if.end57.for.end_crit_edge, label %if.end57.for.body_crit_edge

if.end57.for.body_crit_edge:                      ; preds = %if.end57
  br label %for.body

if.end57.for.end_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end57.for.body_crit_edge
  %entry1.1189 = phi ptr [ %call90, %for.inc.for.body_crit_edge ], [ %call60, %if.end57.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i168 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 112) #11
  %tobool63.not = icmp eq ptr %call7.i.i168, null
  br i1 %tobool63.not, label %do.end67, label %if.end70

do.end67:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %np) #10
  br label %timingfail

if.end70:                                         ; preds = %for.body
  %call71 = call fastcc i32 @of_parse_display_timing(ptr noundef nonnull %entry1.1189, ptr noundef nonnull %call7.i.i168)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end80, label %do.end76

do.end76:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call7.i.i, align 8
  %add = add i32 %15, 1
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull %np, i32 noundef %add) #10
  call void @kfree(ptr noundef nonnull %call7.i.i168) #7
  br label %timingfail

if.end80:                                         ; preds = %if.end70
  %cmp81 = icmp eq ptr %entry1.0173, %entry1.1189
  br i1 %cmp81, label %if.then82, label %if.end80.for.inc_crit_edge

if.end80.for.inc_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call7.i.i, align 8
  %18 = ptrtoint ptr %native_mode59 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %native_mode59, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then82, %if.end80.for.inc_crit_edge
  %19 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %timings, align 8
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call7.i.i, align 8
  %arrayidx = getelementptr ptr, ptr %20, i32 %22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i168, ptr %arrayidx, align 4
  %24 = load i32, ptr %call7.i.i, align 8
  %inc = add i32 %24, 1
  store i32 %inc, ptr %call7.i.i, align 8
  %call90 = call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef nonnull %entry1.1189) #7
  %cmp61.not = icmp eq ptr %call90, null
  br i1 %cmp61.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end57.for.end_crit_edge
  call void @of_node_put(ptr noundef nonnull %call) #7
  call void @of_node_put(ptr noundef nonnull %entry1.0173) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_get_display_timings.__UNIQUE_ID_ddebug168, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_get_display_timings, %if.then103)) #7
          to label %cleanup110 [label %if.then103], !srcloc !102

if.then103:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call7.i.i, align 8
  %27 = ptrtoint ptr %native_mode59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %native_mode59, align 4
  %add106 = add i32 %28, 1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @of_get_display_timings.__UNIQUE_ID_ddebug168, ptr noundef nonnull @.str.25, ptr noundef nonnull %np, i32 noundef %26, i32 noundef %add106) #7
  br label %cleanup110

timingfail:                                       ; preds = %do.end76, %do.end67
  call void @of_node_put(ptr noundef nonnull %entry1.0173) #7
  call void @display_timings_release(ptr noundef nonnull %call7.i.i) #7
  br label %entryfail

entryfail:                                        ; preds = %timingfail, %do.end54, %do.end43, %do.end24
  %disp.0 = phi ptr [ %call7.i.i, %do.end43 ], [ null, %timingfail ], [ %call7.i.i, %do.end54 ], [ %call7.i.i, %do.end24 ]
  call void @kfree(ptr noundef %disp.0) #7
  br label %dispfail

dispfail:                                         ; preds = %entryfail, %do.end11
  call void @of_node_put(ptr noundef nonnull %call) #7
  br label %cleanup110

cleanup110:                                       ; preds = %dispfail, %if.then103, %for.end, %do.end, %entry.cleanup110_crit_edge
  %retval.0 = phi ptr [ null, %dispfail ], [ null, %do.end ], [ null, %entry.cleanup110_crit_edge ], [ %call7.i.i, %if.then103 ], [ %call7.i.i, %for.end ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @display_timings_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_timing_property(ptr noundef %np, ptr noundef %name, ptr noundef %result) unnamed_addr #0 align 64 {
entry:
  %length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #7
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %length, align 4, !annotation !104
  %call = call ptr @of_find_property(ptr noundef %np, ptr noundef %name, ptr noundef nonnull %length) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %np, ptr noundef %name) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %length, align 4
  %div36 = lshr i32 %2, 2
  %3 = zext i32 %div36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %div36, label %do.end13 [
    i32 1, label %if.then2
    i32 3, label %if.then7
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %typ = getelementptr inbounds %struct.timing_entry, ptr %result, i32 0, i32 1
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef %name, ptr noundef %typ, i32 noundef 1, i32 noundef 0) #7
  %4 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #7
  %5 = ptrtoint ptr %typ to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %typ, align 4
  %7 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %result, align 4
  %max = getelementptr inbounds %struct.timing_entry, ptr %result, i32 0, i32 2
  %8 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %max, align 4
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef %name, ptr noundef %result, i32 noundef 3, i32 noundef 0) #7
  %9 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #7
  br label %cleanup

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %np, ptr noundef %name) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.then7, %if.then2, %do.end
  %retval.0 = phi i32 [ -22, %do.end13 ], [ -22, %do.end ], [ %4, %if.then2 ], [ %9, %if.then7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__ksymtab_of_get_display_timing, !1, !"__ksymtab_of_get_display_timing", i1 false, i1 false}
!1 = !{!"../drivers/video/of_display_timing.c", i32 138, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/video/of_display_timing.c", i32 154, i32 40}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/video/of_display_timing.c", i32 156, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @of_get_display_timings._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @of_get_display_timings._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/of_display_timing.c", i32 162, i32 3}
!12 = !{ptr @of_get_display_timings._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @of_get_display_timings._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/of_display_timing.c", i32 166, i32 39}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/of_display_timing.c", i32 172, i32 3}
!18 = !{ptr @of_get_display_timings._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @of_get_display_timings._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/video/of_display_timing.c", i32 176, i32 2}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @of_get_display_timings.__UNIQUE_ID_ddebug167, !21, !"__UNIQUE_ID_ddebug167", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/of_display_timing.c", i32 183, i32 3}
!26 = !{ptr @of_get_display_timings._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @of_get_display_timings._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/of_display_timing.c", i32 191, i32 3}
!30 = !{ptr @of_get_display_timings._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @of_get_display_timings._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/of_display_timing.c", i32 204, i32 4}
!34 = !{ptr @of_get_display_timings._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @of_get_display_timings._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/of_display_timing.c", i32 215, i32 4}
!38 = !{ptr @of_get_display_timings._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @of_get_display_timings._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/of_display_timing.c", i32 234, i32 2}
!42 = !{ptr @of_get_display_timings.__UNIQUE_ID_ddebug168, !41, !"__UNIQUE_ID_ddebug168", i1 false, i1 false}
!43 = !{ptr @__ksymtab_of_get_display_timings, !44, !"__ksymtab_of_get_display_timings", i1 false, i1 false}
!44 = !{!"../drivers/video/of_display_timing.c", i32 250, i32 1}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/of_display_timing.c", i32 65, i32 35}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/video/of_display_timing.c", i32 66, i32 35}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/of_display_timing.c", i32 67, i32 35}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/of_display_timing.c", i32 68, i32 35}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/of_display_timing.c", i32 69, i32 35}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/of_display_timing.c", i32 70, i32 35}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/video/of_display_timing.c", i32 71, i32 35}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/video/of_display_timing.c", i32 72, i32 35}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/video/of_display_timing.c", i32 73, i32 35}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/video/of_display_timing.c", i32 76, i32 32}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/video/of_display_timing.c", i32 79, i32 32}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/video/of_display_timing.c", i32 82, i32 32}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/video/of_display_timing.c", i32 85, i32 32}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/video/of_display_timing.c", i32 89, i32 32}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/video/of_display_timing.c", i32 98, i32 32}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/video/of_display_timing.c", i32 100, i32 32}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/video/of_display_timing.c", i32 102, i32 32}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/video/of_display_timing.c", i32 106, i32 3}
!81 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @of_parse_display_timing._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @of_parse_display_timing._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/video/of_display_timing.c", i32 33, i32 3}
!86 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @parse_timing_property._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @parse_timing_property._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/video/of_display_timing.c", i32 45, i32 3}
!91 = !{ptr @parse_timing_property._entry.47, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @parse_timing_property._entry_ptr.49, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i64 2148862959, i64 2148862964, i64 2148862977, i64 2148863021, i64 2148863055, i64 2148863076}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{!"auto-init"}
