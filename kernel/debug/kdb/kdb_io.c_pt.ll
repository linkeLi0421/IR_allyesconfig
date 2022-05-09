; ModuleID = '/llk/IR_all_yes/kernel/debug/kdb/kdb_io.c_pt.bc'
source_filename = "../kernel/debug/kdb/kdb_io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+kdb_printf\22, \22a\22\09"
module asm "\09.weak\09__crc_kdb_printf\09\09\09\09"
module asm "\09.long\09__crc_kdb_printf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kdb_printf:\09\09\09\09\09"
module asm "\09.asciz \09\22kdb_printf\22\09\09\09\09\09"
module asm "__kstrtabns_kdb_printf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.kgdb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }

@kdb_printf_cpu = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@kdb_poll_funcs = external dso_local global [0 x ptr], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kdb_prompt_str = dso_local global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@kdb_nextline = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"more> \00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LINES\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"COLUMNS\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LOGGING\00", [24 x i8] zeroinitializer }, align 32
@kdb_grepping_flag = external dso_local local_unnamed_addr global i32, align 4
@suspend_grep = internal global { i1, [31 x i8] } zeroinitializer, align 32
@kdb_buffer = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@next_avail = internal global { ptr, [28 x i8] } { ptr @kdb_buffer, [28 x i8] zeroinitializer }, align 32
@size_avail = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kdb_grep_string = external dso_local global [0 x i8], align 1
@dbg_kdb_mode = external dso_local local_unnamed_addr global i32, align 4
@kgdb_connected = external dso_local local_unnamed_addr global i32, align 4
@console_printk = external dso_local local_unnamed_addr global [0 x i32], align 4
@vkdb_printf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vkdb_printf\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kernel/debug/kdb/kdb_io.c\00", [38 x i8] zeroinitializer }, align 32
@vkdb_printf._entry_ptr = internal global ptr @vkdb_printf._entry, section ".printk_index", align 4
@vkdb_printf._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016%s\00", [27 x i8] zeroinitializer }, align 32
@vkdb_printf._entry_ptr.9 = internal global ptr @vkdb_printf._entry.7, section ".printk_index", align 4
@kdb_state = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MOREPROMPT\00", [21 x i8] zeroinitializer }, align 32
@vkdb_printf._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vkdb_printf._entry_ptr.12 = internal global ptr @vkdb_printf._entry.11, section ".printk_index", align 4
@kdb_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0D\00", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SEARCHPROMPT\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"search> \00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\0AOnly 'q', 'Q' or '/' are processed at more prompt, input ignored\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\0A'/' cannot be used during | grep filtering, input ignored\0A\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_kdb_printf = external dso_local constant [0 x i8], align 1
@__kstrtabns_kdb_printf = external dso_local constant [0 x i8], align 1
@__ksymtab_kdb_printf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kdb_printf to i32), ptr @__kstrtab_kdb_printf, ptr @__kstrtabns_kdb_printf }, section "___ksymtab_gpl+kdb_printf", align 4
@kdb_trap_printk = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@kdb_read.tmpbuffer = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DTABCOUNT\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\08%s \0D\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s \0D\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\08\00", [30 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0D%s\0D\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%c\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\0A%d symbols are found.\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c" But only first %d symbols will be printed.\0AYou can change the environment variable DTABCOUNT.\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s... \00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"...\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0D\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"$?#3f\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"kgdb\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"$qSupported\00", [20 x i8] zeroinitializer }, align 32
@kdb_grep_leading = external dso_local local_unnamed_addr global i32, align 4
@kdb_grep_trailing = external dso_local local_unnamed_addr global i32, align 4
@dbg_io_ops = external dso_local local_unnamed_addr global ptr, align 4
@console_drivers = external dso_local local_unnamed_addr global ptr, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.34 = internal global [9 x i64] [i64 7, i64 8, i64 49, i64 51, i64 52, i64 65, i64 66, i64 67, i64 68]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 8, i64 49, i64 51, i64 52]
@__sancov_gen_cov_switch_values.36 = internal global [12 x i64] [i64 10, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 8, i64 9, i64 13, i64 14, i64 16]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967289]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 8, i64 36, i64 43]
@__sancov_gen_cov_switch_values.39 = internal global [11 x i64] [i64 9, i64 8, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 99]
@__sancov_gen_cov_switch_values.40 = internal global [11 x i64] [i64 9, i64 8, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 99]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 13]
@__sancov_gen_cov_switch_values.42 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 10, i64 13, i64 32, i64 47, i64 81, i64 113]
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"kdb_printf_cpu\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 33, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"kdb_prompt_str\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 30, i32 6 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 593, i32 21 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 610, i32 22 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 614, i32 22 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 618, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"suspend_grep\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [11 x i8] c"kdb_buffer\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 504, i32 13 }
@___asan_gen_.65 = private unnamed_addr constant [11 x i8] c"next_avail\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 505, i32 14 }
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"size_avail\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 506, i32 13 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 740, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 742, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 779, i32 26 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 787, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 802, i32 15 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 804, i32 15 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 813, i32 18 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 813, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 822, i32 9 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 825, i32 16 }
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"kdb_trap_printk\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 32, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant [10 x i8] c"tmpbuffer\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 204, i32 14 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 214, i32 22 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 240, i32 15 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 262, i32 15 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 285, i32 15 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 294, i32 14 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 300, i32 15 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 332, i32 15 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 335, i32 16 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 346, i32 17 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 348, i32 17 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 352, i32 16 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 375, i32 16 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 398, i32 29 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 400, i32 20 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private constant [29 x i8] c"../kernel/debug/kdb/kdb_io.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 405, i32 30 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__ksymtab_kdb_printf, ptr @vkdb_printf._entry, ptr @vkdb_printf._entry.11, ptr @vkdb_printf._entry.7, ptr @vkdb_printf._entry_ptr, ptr @vkdb_printf._entry_ptr.12, ptr @vkdb_printf._entry_ptr.9, ptr @kdb_printf_cpu, ptr @kdb_prompt_str, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @suspend_grep, ptr @kdb_buffer, ptr @next_avail, ptr @size_avail, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @kdb_trap_printk, ptr @kdb_read.tmpbuffer, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_printf_cpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_prompt_str to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_grep to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_buffer to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @next_avail to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @size_avail to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkdb_printf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkdb_printf._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkdb_printf._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_trap_printk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_read.tmpbuffer to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @kdb_getchar() local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #10
  %0 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf, align 4
  %add.ptr.i = getelementptr i8, ptr %buf, i32 -1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %pbuf.0 = phi ptr [ %buf, %entry ], [ %pbuf.2, %for.inc ]
  %escape_delay.0 = phi i32 [ 0, %entry ], [ %escape_delay.2, %for.inc ]
  %f.0 = phi ptr [ @kdb_poll_funcs, %entry ], [ %incdec.ptr31, %for.inc ]
  %f_prev.0 = phi ptr [ null, %entry ], [ %f_prev.2, %for.inc ]
  %3 = ptrtoint ptr %f.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f.0, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %for.cond.if.end_crit_edge

for.cond.if.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  call void @touch_softlockup_watchdog() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond.if.end_crit_edge
  %f.1 = phi ptr [ @kdb_poll_funcs, %if.then ], [ %f.0, %for.cond.if.end_crit_edge ]
  %5 = ptrtoint ptr %f.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f.1, align 4
  %call = call i32 %6() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %escape_delay.0)
  %tobool.not = icmp eq i32 %escape_delay.0, 0
  br i1 %tobool.not, label %if.then2.for.inc_crit_edge, label %if.then3

if.then2.for.inc_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then3:                                         ; preds = %if.then2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 214748000) #10
  %dec = add i32 %escape_delay.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp4 = icmp eq i32 %dec, 0
  br i1 %cmp4, label %if.then3.cleanup.loopexit_crit_edge, label %if.then3.for.inc_crit_edge

if.then3.for.inc_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then3.cleanup.loopexit_crit_edge:              ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.loopexit

if.end8:                                          ; preds = %if.end
  %cmp9.not = icmp eq ptr %f_prev.0, %f.1
  %pbuf.1 = select i1 %cmp9.not, ptr %pbuf.0, ptr %buf
  %escape_delay.1 = select i1 %cmp9.not, i32 %escape_delay.0, i32 2000
  %conv = trunc i32 %call to i8
  %pbuf.0.sroa.gep = getelementptr i8, ptr %pbuf.0, i32 1
  %pbuf.1.sroa.sel.v.sroa.sel = select i1 %cmp9.not, ptr %pbuf.0.sroa.gep, ptr %0
  %8 = ptrtoint ptr %pbuf.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %pbuf.1, align 1
  %sub.ptr.lhs.cast = ptrtoint ptr %pbuf.1.sroa.sel.v.sroa.sel to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %sub.ptr.sub
  %9 = zext i32 %sub.ptr.sub to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %sub.ptr.sub, label %if.end8.if.then18_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb9.i
    i32 4, label %sw.bb16.i
  ]

if.end8.if.then18_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

sw.bb.i:                                          ; preds = %if.end8
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %11)
  %cmp.i = icmp eq i8 %11, 27
  br i1 %cmp.i, label %sw.bb.i.for.inc_crit_edge, label %sw.bb.i.if.then18_crit_edge

sw.bb.i.if.then18_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

sw.bb.i.for.inc_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb3.i:                                         ; preds = %if.end8
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 91, i8 %13)
  %cmp5.i = icmp eq i8 %13, 91
  br i1 %cmp5.i, label %sw.bb3.i.for.inc_crit_edge, label %sw.bb3.i.if.then18_crit_edge

sw.bb3.i.if.then18_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

sw.bb3.i.for.inc_crit_edge:                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb9.i:                                         ; preds = %if.end8
  %14 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr1.i, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %15, label %sw.bb9.i.if.then18_crit_edge [
    i8 65, label %sw.bb9.i.cleanup.loopexit_crit_edge
    i8 66, label %sw.bb9.i.cleanup_crit_edge
    i8 67, label %cleanup.loopexit73
    i8 68, label %cleanup.loopexit83
    i8 49, label %sw.bb9.i.for.inc_crit_edge
    i8 51, label %sw.bb9.i.for.inc_crit_edge111
    i8 52, label %sw.bb9.i.for.inc_crit_edge112
  ]

sw.bb9.i.for.inc_crit_edge112:                    ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb9.i.for.inc_crit_edge111:                    ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb9.i.for.inc_crit_edge:                       ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb9.i.cleanup_crit_edge:                       ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb9.i.cleanup.loopexit_crit_edge:              ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.loopexit

sw.bb9.i.if.then18_crit_edge:                     ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

sw.bb16.i:                                        ; preds = %if.end8
  %17 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %18)
  %cmp18.i = icmp eq i8 %18, 126
  br i1 %cmp18.i, label %if.then20.i, label %sw.bb16.i.if.then18_crit_edge

sw.bb16.i.if.then18_crit_edge:                    ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.then20.i:                                      ; preds = %sw.bb16.i
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %1, align 2
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %20, label %if.then20.i.if.then18_crit_edge [
    i8 49, label %if.then20.i.cleanup_crit_edge
    i8 51, label %sw.bb23.i
    i8 52, label %sw.bb24.i
  ]

if.then20.i.cleanup_crit_edge:                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then20.i.if.then18_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

sw.bb23.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb24.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %if.then20.i.if.then18_crit_edge, %sw.bb16.i.if.then18_crit_edge, %sw.bb9.i.if.then18_crit_edge, %sw.bb3.i.if.then18_crit_edge, %sw.bb.i.if.then18_crit_edge, %if.end8.if.then18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub)
  %cmp23 = icmp eq i32 %sub.ptr.sub, 2
  %cond = zext i1 %cmp23 to i32
  %arrayidx = getelementptr [4 x i8], ptr %buf, i32 0, i32 %cond
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  br label %cleanup

for.inc:                                          ; preds = %sw.bb9.i.for.inc_crit_edge, %sw.bb9.i.for.inc_crit_edge111, %sw.bb9.i.for.inc_crit_edge112, %sw.bb3.i.for.inc_crit_edge, %sw.bb.i.for.inc_crit_edge, %if.then3.for.inc_crit_edge, %if.then2.for.inc_crit_edge
  %pbuf.2 = phi ptr [ %pbuf.0, %if.then3.for.inc_crit_edge ], [ %pbuf.0, %if.then2.for.inc_crit_edge ], [ %pbuf.1.sroa.sel.v.sroa.sel, %sw.bb.i.for.inc_crit_edge ], [ %pbuf.1.sroa.sel.v.sroa.sel, %sw.bb3.i.for.inc_crit_edge ], [ %pbuf.1.sroa.sel.v.sroa.sel, %sw.bb9.i.for.inc_crit_edge ], [ %pbuf.1.sroa.sel.v.sroa.sel, %sw.bb9.i.for.inc_crit_edge111 ], [ %pbuf.1.sroa.sel.v.sroa.sel, %sw.bb9.i.for.inc_crit_edge112 ]
  %escape_delay.2 = phi i32 [ %dec, %if.then3.for.inc_crit_edge ], [ 0, %if.then2.for.inc_crit_edge ], [ %escape_delay.1, %sw.bb.i.for.inc_crit_edge ], [ %escape_delay.1, %sw.bb3.i.for.inc_crit_edge ], [ %escape_delay.1, %sw.bb9.i.for.inc_crit_edge ], [ %escape_delay.1, %sw.bb9.i.for.inc_crit_edge111 ], [ %escape_delay.1, %sw.bb9.i.for.inc_crit_edge112 ]
  %f_prev.2 = phi ptr [ %f_prev.0, %if.then3.for.inc_crit_edge ], [ %f_prev.0, %if.then2.for.inc_crit_edge ], [ %f.1, %sw.bb.i.for.inc_crit_edge ], [ %f.1, %sw.bb3.i.for.inc_crit_edge ], [ %f.1, %sw.bb9.i.for.inc_crit_edge ], [ %f.1, %sw.bb9.i.for.inc_crit_edge111 ], [ %f.1, %sw.bb9.i.for.inc_crit_edge112 ]
  %incdec.ptr31 = getelementptr ptr, ptr %f.1, i32 1
  br label %for.cond

cleanup.loopexit73:                               ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.loopexit83:                               ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.loopexit:                                 ; preds = %sw.bb9.i.cleanup.loopexit_crit_edge, %if.then3.cleanup.loopexit_crit_edge
  %retval.0.ph = phi i8 [ 27, %if.then3.cleanup.loopexit_crit_edge ], [ 16, %sw.bb9.i.cleanup.loopexit_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %cleanup.loopexit83, %cleanup.loopexit73, %if.then18, %sw.bb24.i, %sw.bb23.i, %if.then20.i.cleanup_crit_edge, %sw.bb9.i.cleanup_crit_edge
  %retval.0 = phi i8 [ %23, %if.then18 ], [ 5, %sw.bb24.i ], [ 4, %sw.bb23.i ], [ 1, %if.then20.i.cleanup_crit_edge ], [ 6, %cleanup.loopexit73 ], [ 2, %cleanup.loopexit83 ], [ %retval.0.ph, %cleanup.loopexit ], [ 14, %sw.bb9.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #10
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kdb_getstr(ptr noundef %buffer, i32 noundef %bufsize, ptr noundef %prompt) local_unnamed_addr #0 align 64 {
entry:
  %dtab_count.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %prompt, null
  %cmp.not = icmp eq ptr %prompt, @kdb_prompt_str
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @strscpy(ptr noundef nonnull @kdb_prompt_str, ptr noundef nonnull %prompt, i32 noundef 256) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @kdb_prompt_str)
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_nextline to i32))
  store i32 1, ptr @kdb_nextline, align 4
  %add.ptr.i = getelementptr i8, ptr %buffer, i32 %bufsize
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -2
  %call.i = tail call i32 @strlen(ptr noundef %buffer) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dtab_count.i) #10
  %0 = ptrtoint ptr %dtab_count.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dtab_count.i, align 4, !annotation !93
  %call2.i = call i32 @kdbgetintenv(ptr noundef nonnull @.str.19, ptr noundef nonnull %dtab_count.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %dtab_count.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 30, ptr %dtab_count.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr4.i = getelementptr i8, ptr %buffer, i32 %call.i
  %add.ptr6.i = getelementptr i8, ptr %add.ptr4.i, i32 -1
  %2 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp7.i = icmp eq i8 %3, 10
  %spec.select.i = select i1 %cmp7.i, ptr %add.ptr6.i, ptr %add.ptr4.i
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then3.i, %if.end.i.if.end11.i_crit_edge
  %cp.0.i = phi ptr [ %buffer, %if.end.i.if.end11.i_crit_edge ], [ %spec.select.i, %if.then3.i ]
  %4 = ptrtoint ptr %cp.0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %cp.0.i, align 1
  %call12.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.4, ptr noundef %buffer) #10
  %sub.ptr.rhs.cast270.i = ptrtoint ptr %buffer to i32
  br label %poll_again.i

poll_again.i:                                     ; preds = %poll_again.i.backedge, %if.end11.i
  %lastchar.0.i = phi ptr [ %cp.0.i, %if.end11.i ], [ %lastchar.0.i.be, %poll_again.i.backedge ]
  %tab.0.i = phi i32 [ 0, %if.end11.i ], [ %tab.0.i.be, %poll_again.i.backedge ]
  %cp.1.i = phi ptr [ %cp.0.i, %if.end11.i ], [ %cp.1.i.be, %poll_again.i.backedge ]
  %call13.i = call zeroext i8 @kdb_getchar() #10
  %conv14.i = zext i8 %call13.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %call13.i)
  %cmp15.not.i = icmp eq i8 %call13.i, 9
  %spec.select479.i = select i1 %cmp15.not.i, i32 %tab.0.i, i32 0
  %5 = zext i8 %call13.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %call13.i, label %sw.default.i [
    i8 8, label %sw.bb.i
    i8 13, label %sw.bb36.i
    i8 4, label %sw.bb44.i
    i8 1, label %sw.bb61.i
    i8 5, label %sw.bb68.i
    i8 2, label %sw.bb74.i
    i8 14, label %sw.bb81.i
    i8 6, label %sw.bb95.i
    i8 16, label %sw.bb103.i
    i8 9, label %poll_again.i.while.cond.i_crit_edge
  ]

poll_again.i.while.cond.i_crit_edge:              ; preds = %poll_again.i
  br label %while.cond.i

sw.bb.i:                                          ; preds = %poll_again.i
  %cmp19.i = icmp ugt ptr %cp.1.i, %buffer
  br i1 %cmp19.i, label %if.then21.i, label %sw.bb.i.poll_again.i.backedge_crit_edge

sw.bb.i.poll_again.i.backedge_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_again.i.backedge

if.then21.i:                                      ; preds = %sw.bb.i
  %cmp22.i = icmp ult ptr %cp.1.i, %lastchar.0.i
  br i1 %cmp22.i, label %if.then24.i, label %if.then21.i.if.end29.i_crit_edge

if.then21.i.if.end29.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then24.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i = ptrtoint ptr %lastchar.0.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %cp.1.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %6 = call ptr @memcpy(ptr @kdb_read.tmpbuffer, ptr %cp.1.i, i32 %sub.ptr.sub.i)
  %add.ptr25.i = getelementptr i8, ptr %cp.1.i, i32 -1
  %7 = call ptr @memmove(ptr %add.ptr25.i, ptr %cp.1.i, i32 %sub.ptr.sub.i)
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then24.i, %if.then21.i.if.end29.i_crit_edge
  %incdec.ptr30.i = getelementptr i8, ptr %lastchar.0.i, i32 -1
  %8 = ptrtoint ptr %incdec.ptr30.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %incdec.ptr30.i, align 1
  %incdec.ptr31.i = getelementptr i8, ptr %cp.1.i, i32 -1
  %call32.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.20, ptr noundef %incdec.ptr31.i) #10
  %9 = ptrtoint ptr %incdec.ptr31.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr31.i, align 1
  store i8 0, ptr %incdec.ptr31.i, align 1
  %call33.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @kdb_prompt_str) #10
  %call34.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.4, ptr noundef %buffer) #10
  %11 = ptrtoint ptr %incdec.ptr31.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %incdec.ptr31.i, align 1
  br label %poll_again.i.backedge

sw.bb36.i:                                        ; preds = %poll_again.i
  %incdec.ptr37.i = getelementptr i8, ptr %lastchar.0.i, i32 1
  %12 = ptrtoint ptr %lastchar.0.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 10, ptr %lastchar.0.i, align 1
  %13 = ptrtoint ptr %incdec.ptr37.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %incdec.ptr37.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %14 = load i32, ptr @kdb_state, align 4
  %and.i = and i32 %14, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool39.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %sw.bb36.i.if.end42.i_crit_edge

sw.bb36.i.if.end42.i_crit_edge:                   ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

if.then40.i:                                      ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %14, 2097152
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  store i32 %or.i, ptr @kdb_state, align 4
  %call41.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.4, ptr noundef %buffer) #10
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then40.i, %sw.bb36.i.if.end42.i_crit_edge
  %call43.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.13) #10
  br label %kdb_read.exit

sw.bb44.i:                                        ; preds = %poll_again.i
  %cmp45.i = icmp ult ptr %cp.1.i, %lastchar.0.i
  br i1 %cmp45.i, label %if.then47.i, label %sw.bb44.i.poll_again.i.backedge_crit_edge

sw.bb44.i.poll_again.i.backedge_crit_edge:        ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_again.i.backedge

if.then47.i:                                      ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr48.i = getelementptr i8, ptr %cp.1.i, i32 1
  %sub.ptr.lhs.cast49.i = ptrtoint ptr %lastchar.0.i to i32
  %sub.ptr.rhs.cast50.i = ptrtoint ptr %cp.1.i to i32
  %15 = xor i32 %sub.ptr.rhs.cast50.i, -1
  %sub.i = add i32 %15, %sub.ptr.lhs.cast49.i
  %16 = call ptr @memcpy(ptr @kdb_read.tmpbuffer, ptr %add.ptr48.i, i32 %sub.i)
  %17 = call ptr @memmove(ptr %cp.1.i, ptr %add.ptr48.i, i32 %sub.i)
  %incdec.ptr56.i = getelementptr i8, ptr %lastchar.0.i, i32 -1
  %18 = ptrtoint ptr %incdec.ptr56.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %incdec.ptr56.i, align 1
  %call57.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.21, ptr noundef %cp.1.i) #10
  %19 = ptrtoint ptr %cp.1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cp.1.i, align 1
  store i8 0, ptr %cp.1.i, align 1
  %call58.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @kdb_prompt_str) #10
  %call59.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.4, ptr noundef %buffer) #10
  %21 = ptrtoint ptr %cp.1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %cp.1.i, align 1
  br label %poll_again.i.backedge

sw.bb61.i:                                        ; preds = %poll_again.i
  %cmp62.i = icmp ugt ptr %cp.1.i, %buffer
  br i1 %cmp62.i, label %if.then64.i, label %sw.bb61.i.poll_again.i.backedge_crit_edge

sw.bb61.i.poll_again.i.backedge_crit_edge:        ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_again.i.backedge

if.then64.i:                                      ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #12
  %call65.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.14) #10
  %call66.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @kdb_prompt_str) #10
  br label %poll_again.i.backedge

sw.bb68.i:                                        ; preds = %poll_again.i
  %cmp69.i = icmp ult ptr %cp.1.i, %lastchar.0.i
  br i1 %cmp69.i, label %if.then71.i, label %sw.bb68.i.poll_again.i.backedge_crit_edge

sw.bb68.i.poll_again.i.backedge_crit_edge:        ; preds = %sw.bb68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_again.i.backedge

if.then71.i:                                      ; preds = %sw.bb68.i
  call void @__sanitizer_cov_trace_pc() #12
  %call72.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.4, ptr noundef %cp.1.i) #10
  br label %poll_again.i.backedge

sw.bb74.i:                                        ; preds = %poll_again.i
  %cmp75.i = icmp ugt ptr %cp.1.i, %buffer
  br i1 %cmp75.i, label %if.then77.i, label %sw.bb74.i.poll_again.i.backedge_crit_edge

sw.bb74.i.poll_again.i.backedge_crit_edge:        ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_again.i.backedge

if.then77.i:                                      ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #12
  %call78.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.22) #10
  %incdec.ptr79.i = getelementptr i8, ptr %cp.1.i, i32 -1
  br label %poll_again.i.backedge

sw.bb81.i:                                        ; preds = %poll_again.i
  call void @__sanitizer_cov_trace_pc() #12
  %call82.i = call i32 @strlen(ptr noundef nonnull @kdb_prompt_str) #13
  %sub.ptr.lhs.cast83.i = ptrtoint ptr %lastchar.0.i to i32
  %sub.ptr.sub85.i = sub i32 %sub.ptr.lhs.cast83.i, %sub.ptr.rhs.cast270.i
  %add.i = add i32 %call82.i, %sub.ptr.sub85.i
  %22 = call ptr @memset(ptr @kdb_read.tmpbuffer, i32 32, i32 %add.i)
  %add.ptr87.i = getelementptr i8, ptr @kdb_read.tmpbuffer, i32 %call82.i
  %add.ptr91.i = getelementptr i8, ptr %add.ptr87.i, i32 %sub.ptr.sub85.i
  %23 = ptrtoint ptr %add.ptr91.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %add.ptr91.i, align 1
  %call92.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.23, ptr noundef nonnull @kdb_read.tmpbuffer) #10
  %24 = ptrtoint ptr %lastchar.0.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 14, ptr %lastchar.0.i, align 1
  %add.ptr94.i = getelementptr i8, ptr %lastchar.0.i, i32 1
  %25 = ptrtoint ptr %add.ptr94.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %add.ptr94.i, align 1
  br label %kdb_read.exit

sw.bb95.i:                                        ; preds = %poll_again.i
  %cmp96.i = icmp ult ptr %cp.1.i, %lastchar.0.i
  br i1 %cmp96.i, label %if.then98.i, label %sw.bb95.i.poll_again.i.backedge_crit_edge

sw.bb95.i.poll_again.i.backedge_crit_edge:        ; preds = %sw.bb95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_again.i.backedge

if.then98.i:                                      ; preds = %sw.bb95.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %cp.1.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cp.1.i, align 1
  %conv99.i = zext i8 %27 to i32
  %call100.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.24, i32 noundef %conv99.i) #10
  %incdec.ptr101.i = getelementptr i8, ptr %cp.1.i, i32 1
  br label %poll_again.i.backedge

sw.bb103.i:                                       ; preds = %poll_again.i
  call void @__sanitizer_cov_trace_pc() #12
  %call104.i = call i32 @strlen(ptr noundef nonnull @kdb_prompt_str) #13
  %sub.ptr.lhs.cast105.i = ptrtoint ptr %lastchar.0.i to i32
  %sub.ptr.sub107.i = sub i32 %sub.ptr.lhs.cast105.i, %sub.ptr.rhs.cast270.i
  %add108.i = add i32 %call104.i, %sub.ptr.sub107.i
  %28 = call ptr @memset(ptr @kdb_read.tmpbuffer, i32 32, i32 %add108.i)
  %add.ptr110.i = getelementptr i8, ptr @kdb_read.tmpbuffer, i32 %call104.i
  %add.ptr114.i = getelementptr i8, ptr %add.ptr110.i, i32 %sub.ptr.sub107.i
  %29 = ptrtoint ptr %add.ptr114.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %add.ptr114.i, align 1
  %call115.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.23, ptr noundef nonnull @kdb_read.tmpbuffer) #10
  %30 = ptrtoint ptr %lastchar.0.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 16, ptr %lastchar.0.i, align 1
  %add.ptr117.i = getelementptr i8, ptr %lastchar.0.i, i32 1
  %31 = ptrtoint ptr %add.ptr117.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %add.ptr117.i, align 1
  br label %kdb_read.exit

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %poll_again.i.while.cond.i_crit_edge
  %p_tmp.0.i = phi ptr [ %incdec.ptr126.i, %while.cond.i.while.cond.i_crit_edge ], [ %buffer, %poll_again.i.while.cond.i_crit_edge ]
  %32 = ptrtoint ptr %p_tmp.0.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %p_tmp.0.i, align 1
  %cmp124.i = icmp eq i8 %33, 32
  %incdec.ptr126.i = getelementptr i8, ptr %p_tmp.0.i, i32 1
  br i1 %cmp124.i, label %while.cond.i.while.cond.i_crit_edge, label %while.end.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %inc.i = add i32 %spec.select479.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select479.i)
  %cmp119.i = icmp slt i32 %spec.select479.i, 2
  %spec.select480.i = select i1 %cmp119.i, i32 %inc.i, i32 2
  %cmp127.i = icmp ugt ptr %p_tmp.0.i, %cp.1.i
  br i1 %cmp127.i, label %while.end.i.poll_again.i.backedge_crit_edge, label %if.end130.i

while.end.i.poll_again.i.backedge_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_again.i.backedge

if.end130.i:                                      ; preds = %while.end.i
  %sub.ptr.lhs.cast131.i = ptrtoint ptr %cp.1.i to i32
  %sub.ptr.rhs.cast132.i = ptrtoint ptr %p_tmp.0.i to i32
  %sub.ptr.sub133.i = sub i32 %sub.ptr.lhs.cast131.i, %sub.ptr.rhs.cast132.i
  %34 = call ptr @memcpy(ptr @kdb_read.tmpbuffer, ptr %p_tmp.0.i, i32 %sub.ptr.sub133.i)
  %add.ptr137.i = getelementptr i8, ptr @kdb_read.tmpbuffer, i32 %sub.ptr.sub133.i
  %35 = ptrtoint ptr %add.ptr137.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %add.ptr137.i, align 1
  %call138.i = call ptr @strrchr(ptr noundef nonnull @kdb_read.tmpbuffer, i32 noundef 32) #10
  %tobool139.not.i = icmp eq ptr %call138.i, null
  %incdec.ptr141.i = getelementptr i8, ptr %call138.i, i32 1
  %p_tmp.1.i = select i1 %tobool139.not.i, ptr @kdb_read.tmpbuffer, ptr %incdec.ptr141.i
  %call143.i = call i32 @strlen(ptr noundef %p_tmp.1.i) #13
  %sub.ptr.lhs.cast144.i = ptrtoint ptr %p_tmp.1.i to i32
  %sub146.i = sub i32 add (i32 ptrtoint (ptr @kdb_read.tmpbuffer to i32), i32 256), %sub.ptr.lhs.cast144.i
  %call147.i = call i32 @kallsyms_symbol_complete(ptr noundef %p_tmp.1.i, i32 noundef %sub146.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select480.i)
  %cmp148.i = icmp eq i32 %spec.select480.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147.i)
  %cmp150.i = icmp sgt i32 %call147.i, 0
  %or.cond.i = select i1 %cmp148.i, i1 %cmp150.i, i1 false
  br i1 %or.cond.i, label %if.then152.i, label %if.else207.i

if.then152.i:                                     ; preds = %if.end130.i
  %call153.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.25, i32 noundef %call147.i) #10
  %36 = ptrtoint ptr %dtab_count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dtab_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call147.i, i32 %37)
  %cmp154.i = icmp sgt i32 %call147.i, %37
  br i1 %cmp154.i, label %if.end158.i, label %if.end158.i.thread

if.end158.i.thread:                               ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #12
  %call159.i43 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.13) #10
  br label %for.body.i.lr.ph

if.end158.i:                                      ; preds = %if.then152.i
  %call157.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.26, i32 noundef %37) #10
  %call159.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp160.i28 = icmp sgt i32 %37, 0
  br i1 %cmp160.i28, label %if.end158.i.for.body.i.lr.ph_crit_edge, label %if.end158.i.for.end.i_crit_edge

if.end158.i.for.end.i_crit_edge:                  ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end158.i.for.body.i.lr.ph_crit_edge:           ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.lr.ph

for.body.i.lr.ph:                                 ; preds = %if.end158.i.for.body.i.lr.ph_crit_edge, %if.end158.i.thread
  %count.0.i45 = phi i32 [ %call147.i, %if.end158.i.thread ], [ %37, %if.end158.i.for.body.i.lr.ph_crit_edge ]
  %add.ptr197.i = getelementptr i8, ptr %p_tmp.1.i, i32 %call143.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end196.i.for.body.i_crit_edge, %for.body.i.lr.ph
  %i.0.i29 = phi i32 [ 0, %for.body.i.lr.ph ], [ %inc198.i, %if.end196.i.for.body.i_crit_edge ]
  %call162.i = call i32 @kallsyms_symbol_next(ptr noundef %p_tmp.1.i, i32 noundef %i.0.i29, i32 noundef %sub146.i) #10
  %38 = zext i32 %call162.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call162.i, label %for.body.i.if.end196.i_crit_edge [
    i32 0, label %do.end.i
    i32 -7, label %if.else194.i
  ], !prof !94

for.body.i.if.end196.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end196.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 343, i32 noundef 9, ptr noundef null) #10
  br label %for.end.i

if.else194.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end196.i

if.end196.i:                                      ; preds = %if.else194.i, %for.body.i.if.end196.i_crit_edge
  %.str.28.sink = phi ptr [ @.str.28, %if.else194.i ], [ @.str.27, %for.body.i.if.end196.i_crit_edge ]
  %call195.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull %.str.28.sink, ptr noundef %p_tmp.1.i) #10
  %39 = ptrtoint ptr %add.ptr197.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %add.ptr197.i, align 1
  %inc198.i = add nuw nsw i32 %i.0.i29, 1
  %exitcond.not = icmp eq i32 %inc198.i, %count.0.i45
  br i1 %exitcond.not, label %if.end196.i.for.end.i_crit_edge, label %if.end196.i.for.body.i_crit_edge

if.end196.i.for.body.i_crit_edge:                 ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end196.i.for.end.i_crit_edge:                  ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %if.end196.i.for.end.i_crit_edge, %do.end.i, %if.end158.i.for.end.i_crit_edge
  %i.0.i16 = phi i32 [ %i.0.i29, %do.end.i ], [ 0, %if.end158.i.for.end.i_crit_edge ], [ %count.0.i45, %if.end196.i.for.end.i_crit_edge ]
  %40 = ptrtoint ptr %dtab_count.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dtab_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i16, i32 %41)
  %cmp199.not.i = icmp slt i32 %i.0.i16, %41
  br i1 %cmp199.not.i, label %for.end.i.if.end203.i_crit_edge, label %if.then201.i

for.end.i.if.end203.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end203.i

if.then201.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call202.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.29) #10
  br label %if.end203.i

if.end203.i:                                      ; preds = %if.then201.i, %for.end.i.if.end203.i_crit_edge
  %call204.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.13) #10
  %call205.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @kdb_prompt_str) #10
  %call206.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.4, ptr noundef %buffer) #10
  br label %if.end231.i

if.else207.i:                                     ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select480.i)
  %cmp208.not.i = icmp ne i32 %spec.select480.i, 2
  %or.cond481.i = select i1 %cmp208.not.i, i1 %cmp150.i, i1 false
  br i1 %or.cond481.i, label %if.then213.i, label %if.else207.i.if.end231.i_crit_edge

if.else207.i.if.end231.i_crit_edge:               ; preds = %if.else207.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231.i

if.then213.i:                                     ; preds = %if.else207.i
  call void @__sanitizer_cov_trace_pc() #12
  %call214.i = call i32 @strlen(ptr noundef %p_tmp.1.i) #13
  %add.ptr215.i = getelementptr i8, ptr %p_tmp.1.i, i32 %call214.i
  %sub.ptr.lhs.cast216.i = ptrtoint ptr %lastchar.0.i to i32
  %sub.ptr.sub218.i = add i32 %sub.ptr.lhs.cast216.i, 1
  %add219.i = sub i32 %sub.ptr.sub218.i, %sub.ptr.lhs.cast131.i
  %call220.i = call ptr @strncpy(ptr noundef %add.ptr215.i, ptr noundef %cp.1.i, i32 noundef %add219.i) #10
  %call221.i = call i32 @strlen(ptr noundef %p_tmp.1.i) #13
  %add.ptr222.i = getelementptr i8, ptr %p_tmp.1.i, i32 %call143.i
  %sub223.i = sub i32 %call221.i, %call143.i
  %add224.i = add i32 %sub223.i, 1
  %call225.i = call ptr @strncpy(ptr noundef %cp.1.i, ptr noundef %add.ptr222.i, i32 noundef %add224.i) #10
  %call227.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.4, ptr noundef %cp.1.i) #10
  %add.ptr228.i = getelementptr i8, ptr %cp.1.i, i32 %sub223.i
  %add.ptr229.i = getelementptr i8, ptr %lastchar.0.i, i32 %sub223.i
  br label %if.end231.i

if.end231.i:                                      ; preds = %if.then213.i, %if.else207.i.if.end231.i_crit_edge, %if.end203.i
  %lastchar.1.i = phi ptr [ %lastchar.0.i, %if.end203.i ], [ %add.ptr229.i, %if.then213.i ], [ %lastchar.0.i, %if.else207.i.if.end231.i_crit_edge ]
  %cp.2.i = phi ptr [ %cp.1.i, %if.end203.i ], [ %add.ptr228.i, %if.then213.i ], [ %cp.1.i, %if.else207.i.if.end231.i_crit_edge ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_nextline to i32))
  store i32 1, ptr @kdb_nextline, align 4
  br label %poll_again.i.backedge

sw.default.i:                                     ; preds = %poll_again.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %call13.i)
  %cmp232.i = icmp ugt i8 %call13.i, 31
  %cmp235.i = icmp ult ptr %lastchar.0.i, %add.ptr1.i
  %or.cond482.i = select i1 %cmp232.i, i1 %cmp235.i, i1 false
  br i1 %or.cond482.i, label %if.then237.i, label %sw.default.i.poll_again.i.backedge_crit_edge

sw.default.i.poll_again.i.backedge_crit_edge:     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_again.i.backedge

if.then237.i:                                     ; preds = %sw.default.i
  %cmp238.i = icmp ult ptr %cp.1.i, %lastchar.0.i
  br i1 %cmp238.i, label %if.then240.i, label %if.else254.i

if.then240.i:                                     ; preds = %if.then237.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast241.i = ptrtoint ptr %lastchar.0.i to i32
  %sub.ptr.rhs.cast242.i = ptrtoint ptr %cp.1.i to i32
  %sub.ptr.sub243.i = sub i32 %sub.ptr.lhs.cast241.i, %sub.ptr.rhs.cast242.i
  %42 = call ptr @memcpy(ptr @kdb_read.tmpbuffer, ptr %cp.1.i, i32 %sub.ptr.sub243.i)
  %add.ptr244.i = getelementptr i8, ptr %cp.1.i, i32 1
  %43 = call ptr @memmove(ptr %add.ptr244.i, ptr %cp.1.i, i32 %sub.ptr.sub243.i)
  %incdec.ptr248.i = getelementptr i8, ptr %lastchar.0.i, i32 1
  %44 = ptrtoint ptr %incdec.ptr248.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %incdec.ptr248.i, align 1
  %45 = ptrtoint ptr %cp.1.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %call13.i, ptr %cp.1.i, align 1
  %call250.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.30, ptr noundef %cp.1.i) #10
  %46 = ptrtoint ptr %add.ptr244.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr244.i, align 1
  store i8 0, ptr %add.ptr244.i, align 1
  %call252.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @kdb_prompt_str) #10
  %call253.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.4, ptr noundef %buffer) #10
  %48 = ptrtoint ptr %add.ptr244.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %add.ptr244.i, align 1
  br label %if.end268.i

if.else254.i:                                     ; preds = %if.then237.i
  %incdec.ptr255.i = getelementptr i8, ptr %lastchar.0.i, i32 1
  %49 = ptrtoint ptr %incdec.ptr255.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %incdec.ptr255.i, align 1
  %incdec.ptr257.i = getelementptr i8, ptr %cp.1.i, i32 1
  %50 = ptrtoint ptr %cp.1.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %call13.i, ptr %cp.1.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %51 = load i32, ptr @kdb_state, align 4
  %and258.i = and i32 %51, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and258.i)
  %tobool259.not.i = icmp eq i32 %and258.i, 0
  br i1 %tobool259.not.i, label %if.then260.i, label %if.else265.i

if.then260.i:                                     ; preds = %if.else254.i
  %52 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %buffer, align 1
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %53, label %if.then.i7 [
    i8 43, label %if.then260.i.if.else.i_crit_edge
    i8 36, label %if.then260.i.if.else.i_crit_edge95
  ]

if.then260.i.if.else.i_crit_edge95:               ; preds = %if.then260.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then260.i.if.else.i_crit_edge:                 ; preds = %if.then260.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i7:                                       ; preds = %if.then260.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i5 = or i32 %51, 2097152
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  store i32 %or.i5, ptr @kdb_state, align 4
  %call.i6 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.4, ptr noundef %buffer) #10
  br label %if.end268.i

if.else.i:                                        ; preds = %if.then260.i.if.else.i_crit_edge, %if.then260.i.if.else.i_crit_edge95
  %call6.i = call i32 @strlen(ptr noundef %buffer) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call6.i)
  %cmp7.i8 = icmp sgt i32 %call6.i, 3
  br i1 %cmp7.i8, label %land.lhs.true9.i, label %if.else.i.if.end268.i_crit_edge

if.else.i.if.end268.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end268.i

land.lhs.true9.i:                                 ; preds = %if.else.i
  %sub.i9 = add nsw i32 %call6.i, -3
  %arrayidx10.i = getelementptr i8, ptr %buffer, i32 %sub.i9
  %55 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %56)
  %cmp12.i = icmp eq i8 %56, 35
  br i1 %cmp12.i, label %kgdb_transition_check.exit, label %land.lhs.true9.i.if.end268.i_crit_edge

land.lhs.true9.i.if.end268.i_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end268.i

kgdb_transition_check.exit:                       ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kdb_gdb_state_pass(ptr noundef %buffer) #10
  %57 = call ptr @memcpy(ptr %buffer, ptr @.str.32, i32 5)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %58 = load i32, ptr @kdb_state, align 4
  %or16.i = or i32 %58, 524288
  store i32 %or16.i, ptr @kdb_state, align 4
  br label %kdb_read.exit

if.else265.i:                                     ; preds = %if.else254.i
  call void @__sanitizer_cov_trace_pc() #12
  %call266.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.24, i32 noundef %conv14.i) #10
  br label %if.end268.i

if.end268.i:                                      ; preds = %if.else265.i, %land.lhs.true9.i.if.end268.i_crit_edge, %if.else.i.if.end268.i_crit_edge, %if.then.i7, %if.then240.i
  %lastchar.2.i = phi ptr [ %incdec.ptr248.i, %if.then240.i ], [ %incdec.ptr255.i, %if.else265.i ], [ %incdec.ptr255.i, %if.then.i7 ], [ %incdec.ptr255.i, %land.lhs.true9.i.if.end268.i_crit_edge ], [ %incdec.ptr255.i, %if.else.i.if.end268.i_crit_edge ]
  %cp.3.i = phi ptr [ %add.ptr244.i, %if.then240.i ], [ %incdec.ptr257.i, %if.else265.i ], [ %incdec.ptr257.i, %if.then.i7 ], [ %incdec.ptr257.i, %land.lhs.true9.i.if.end268.i_crit_edge ], [ %incdec.ptr257.i, %if.else.i.if.end268.i_crit_edge ]
  %sub.ptr.lhs.cast269.i = ptrtoint ptr %lastchar.2.i to i32
  %sub.ptr.sub271.i = sub i32 %sub.ptr.lhs.cast269.i, %sub.ptr.rhs.cast270.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub271.i)
  %cmp272.i = icmp sgt i32 %sub.ptr.sub271.i, 4
  br i1 %cmp272.i, label %land.lhs.true274.i, label %if.end268.i.poll_again.i.backedge_crit_edge

if.end268.i.poll_again.i.backedge_crit_edge:      ; preds = %if.end268.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_again.i.backedge

poll_again.i.backedge:                            ; preds = %land.lhs.true289.i.poll_again.i.backedge_crit_edge, %if.end283.i.poll_again.i.backedge_crit_edge, %if.end268.i.poll_again.i.backedge_crit_edge, %sw.default.i.poll_again.i.backedge_crit_edge, %if.end231.i, %while.end.i.poll_again.i.backedge_crit_edge, %if.then98.i, %sw.bb95.i.poll_again.i.backedge_crit_edge, %if.then77.i, %sw.bb74.i.poll_again.i.backedge_crit_edge, %if.then71.i, %sw.bb68.i.poll_again.i.backedge_crit_edge, %if.then64.i, %sw.bb61.i.poll_again.i.backedge_crit_edge, %if.then47.i, %sw.bb44.i.poll_again.i.backedge_crit_edge, %if.end29.i, %sw.bb.i.poll_again.i.backedge_crit_edge
  %lastchar.0.i.be = phi ptr [ %lastchar.2.i, %land.lhs.true289.i.poll_again.i.backedge_crit_edge ], [ %lastchar.2.i, %if.end283.i.poll_again.i.backedge_crit_edge ], [ %lastchar.0.i, %sw.default.i.poll_again.i.backedge_crit_edge ], [ %lastchar.0.i, %while.end.i.poll_again.i.backedge_crit_edge ], [ %lastchar.1.i, %if.end231.i ], [ %lastchar.0.i, %if.then98.i ], [ %lastchar.0.i, %sw.bb95.i.poll_again.i.backedge_crit_edge ], [ %lastchar.0.i, %if.then77.i ], [ %lastchar.0.i, %sw.bb74.i.poll_again.i.backedge_crit_edge ], [ %lastchar.0.i, %if.then71.i ], [ %lastchar.0.i, %sw.bb68.i.poll_again.i.backedge_crit_edge ], [ %lastchar.0.i, %if.then64.i ], [ %lastchar.0.i, %sw.bb61.i.poll_again.i.backedge_crit_edge ], [ %incdec.ptr56.i, %if.then47.i ], [ %lastchar.0.i, %sw.bb44.i.poll_again.i.backedge_crit_edge ], [ %incdec.ptr30.i, %if.end29.i ], [ %lastchar.0.i, %sw.bb.i.poll_again.i.backedge_crit_edge ], [ %lastchar.2.i, %if.end268.i.poll_again.i.backedge_crit_edge ]
  %tab.0.i.be = phi i32 [ %spec.select479.i, %land.lhs.true289.i.poll_again.i.backedge_crit_edge ], [ %spec.select479.i, %if.end283.i.poll_again.i.backedge_crit_edge ], [ %spec.select479.i, %sw.default.i.poll_again.i.backedge_crit_edge ], [ %spec.select480.i, %while.end.i.poll_again.i.backedge_crit_edge ], [ %spec.select480.i, %if.end231.i ], [ %spec.select479.i, %if.then98.i ], [ %spec.select479.i, %sw.bb95.i.poll_again.i.backedge_crit_edge ], [ %spec.select479.i, %if.then77.i ], [ %spec.select479.i, %sw.bb74.i.poll_again.i.backedge_crit_edge ], [ %spec.select479.i, %if.then71.i ], [ %spec.select479.i, %sw.bb68.i.poll_again.i.backedge_crit_edge ], [ %spec.select479.i, %if.then64.i ], [ %spec.select479.i, %sw.bb61.i.poll_again.i.backedge_crit_edge ], [ %spec.select479.i, %if.then47.i ], [ %spec.select479.i, %sw.bb44.i.poll_again.i.backedge_crit_edge ], [ %spec.select479.i, %if.end29.i ], [ %spec.select479.i, %sw.bb.i.poll_again.i.backedge_crit_edge ], [ %spec.select479.i, %if.end268.i.poll_again.i.backedge_crit_edge ]
  %cp.1.i.be = phi ptr [ %cp.3.i, %land.lhs.true289.i.poll_again.i.backedge_crit_edge ], [ %cp.3.i, %if.end283.i.poll_again.i.backedge_crit_edge ], [ %cp.1.i, %sw.default.i.poll_again.i.backedge_crit_edge ], [ %cp.1.i, %while.end.i.poll_again.i.backedge_crit_edge ], [ %cp.2.i, %if.end231.i ], [ %incdec.ptr101.i, %if.then98.i ], [ %cp.1.i, %sw.bb95.i.poll_again.i.backedge_crit_edge ], [ %incdec.ptr79.i, %if.then77.i ], [ %cp.1.i, %sw.bb74.i.poll_again.i.backedge_crit_edge ], [ %lastchar.0.i, %if.then71.i ], [ %cp.1.i, %sw.bb68.i.poll_again.i.backedge_crit_edge ], [ %buffer, %if.then64.i ], [ %cp.1.i, %sw.bb61.i.poll_again.i.backedge_crit_edge ], [ %cp.1.i, %if.then47.i ], [ %cp.1.i, %sw.bb44.i.poll_again.i.backedge_crit_edge ], [ %incdec.ptr31.i, %if.end29.i ], [ %cp.1.i, %sw.bb.i.poll_again.i.backedge_crit_edge ], [ %cp.3.i, %if.end268.i.poll_again.i.backedge_crit_edge ]
  br label %poll_again.i

land.lhs.true274.i:                               ; preds = %if.end268.i
  %add.ptr275.i = getelementptr i8, ptr %lastchar.0.i, i32 -4
  %call276.i = call i32 @strcmp(ptr noundef %add.ptr275.i, ptr noundef nonnull dereferenceable(6) @.str.31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call276.i)
  %cmp277.i = icmp eq i32 %call276.i, 0
  br i1 %cmp277.i, label %if.then279.i, label %if.end283.i

if.then279.i:                                     ; preds = %land.lhs.true274.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kdb_gdb_state_pass(ptr noundef %add.ptr275.i) #10
  %59 = call ptr @memcpy(ptr %buffer, ptr @.str.32, i32 5)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %60 = load i32, ptr @kdb_state, align 4
  %or282.i = or i32 %60, 524288
  store i32 %or282.i, ptr @kdb_state, align 4
  br label %kdb_read.exit

if.end283.i:                                      ; preds = %land.lhs.true274.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub.ptr.sub271.i)
  %cmp287.i = icmp ugt i32 %sub.ptr.sub271.i, 10
  br i1 %cmp287.i, label %land.lhs.true289.i, label %if.end283.i.poll_again.i.backedge_crit_edge

if.end283.i.poll_again.i.backedge_crit_edge:      ; preds = %if.end283.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_again.i.backedge

land.lhs.true289.i:                               ; preds = %if.end283.i
  %add.ptr290.i = getelementptr i8, ptr %lastchar.0.i, i32 -10
  %call291.i = call i32 @strcmp(ptr noundef %add.ptr290.i, ptr noundef nonnull dereferenceable(12) @.str.33) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call291.i)
  %cmp292.i = icmp eq i32 %call291.i, 0
  br i1 %cmp292.i, label %if.then294.i, label %land.lhs.true289.i.poll_again.i.backedge_crit_edge

land.lhs.true289.i.poll_again.i.backedge_crit_edge: ; preds = %land.lhs.true289.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_again.i.backedge

if.then294.i:                                     ; preds = %land.lhs.true289.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kdb_gdb_state_pass(ptr noundef %add.ptr290.i) #10
  %61 = call ptr @memcpy(ptr %buffer, ptr @.str.32, i32 5)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %62 = load i32, ptr @kdb_state, align 4
  %or297.i = or i32 %62, 524288
  store i32 %or297.i, ptr @kdb_state, align 4
  br label %kdb_read.exit

kdb_read.exit:                                    ; preds = %if.then294.i, %if.then279.i, %kgdb_transition_check.exit, %sw.bb103.i, %sw.bb81.i, %if.end42.i
  %retval.0.i = phi ptr [ %buffer, %if.then279.i ], [ %buffer, %if.then294.i ], [ %lastchar.0.i, %sw.bb103.i ], [ %lastchar.0.i, %sw.bb81.i ], [ %buffer, %if.end42.i ], [ %buffer, %kgdb_transition_check.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dtab_count.i) #10
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kdb_printf(ptr nocapture noundef readonly %fmt, ...) #0 align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #10
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !93
  call void @llvm.va_start(ptr nonnull %ap)
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %ap, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vkdb_printf(i32 noundef 0, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vkdb_printf(i32 noundef %src, ptr nocapture noundef readonly %fmt, [1 x i32] %ap.coerce) local_unnamed_addr #0 align 64 {
entry:
  %linecount = alloca i32, align 4
  %colcount = alloca i32, align 4
  %logging = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %linecount) #10
  %0 = ptrtoint ptr %linecount to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %linecount, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %colcount) #10
  %1 = ptrtoint ptr %colcount to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %colcount, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %logging) #10
  %2 = ptrtoint ptr %logging to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %logging, align 4, !annotation !93
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !95
  %and.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i345 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i345 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  br label %for.cond

for.cond:                                         ; preds = %do.end42, %do.end11
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kdb_printf_cpu, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !96
  tail call void @llvm.prefetch.p0(ptr nonnull @kdb_printf_cpu, i32 1, i32 3, i32 1) #10
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.cond
  %8 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr nonnull @kdb_printf_cpu, i32 -1, i32 %7) #10, !srcloc !97
  %asmresult.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult1.i)
  %cmp32 = icmp eq i32 %asmresult1.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult1.i, i32 %7)
  %cmp34 = icmp eq i32 %asmresult1.i, %7
  %or.cond = select i1 %cmp32, i1 true, i1 %cmp34
  br i1 %or.cond, label %for.end, label %do.end42

do.end42:                                         ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !100
  br label %for.cond

for.end:                                          ; preds = %__cmpxchg.exit
  %asmresult1.i.le = extractvalue { i32, i32 } %8, 1
  %call47 = call i32 @kdbgetintenv(ptr noundef nonnull @.str.1, ptr noundef nonnull %linecount) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %for.end.if.then52_crit_edge

for.end.if.then52_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

lor.lhs.false49:                                  ; preds = %for.end
  %9 = ptrtoint ptr %linecount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %linecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp50 = icmp slt i32 %10, 2
  br i1 %cmp50, label %lor.lhs.false49.if.then52_crit_edge, label %lor.lhs.false49.if.end53_crit_edge

lor.lhs.false49.if.end53_crit_edge:               ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

lor.lhs.false49.if.then52_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

if.then52:                                        ; preds = %lor.lhs.false49.if.then52_crit_edge, %for.end.if.then52_crit_edge
  %11 = ptrtoint ptr %linecount to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 24, ptr %linecount, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %lor.lhs.false49.if.end53_crit_edge
  %call54 = call i32 @kdbgetintenv(ptr noundef nonnull @.str.2, ptr noundef nonnull %colcount) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %lor.lhs.false56, label %if.end53.if.then59_crit_edge

if.end53.if.then59_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59

lor.lhs.false56:                                  ; preds = %if.end53
  %12 = ptrtoint ptr %colcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %colcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp57 = icmp slt i32 %13, 2
  br i1 %cmp57, label %lor.lhs.false56.if.then59_crit_edge, label %lor.lhs.false56.if.end60_crit_edge

lor.lhs.false56.if.end60_crit_edge:               ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

lor.lhs.false56.if.then59_crit_edge:              ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59

if.then59:                                        ; preds = %lor.lhs.false56.if.then59_crit_edge, %if.end53.if.then59_crit_edge
  %14 = ptrtoint ptr %colcount to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 80, ptr %colcount, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %lor.lhs.false56.if.end60_crit_edge
  %call61 = call i32 @kdbgetintenv(ptr noundef nonnull @.str.3, ptr noundef nonnull %logging) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end60.if.end64_crit_edge, label %if.then63

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %logging to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %logging, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end60.if.end64_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_grepping_flag to i32))
  %16 = load i32, ptr @kdb_grepping_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool65.not = icmp eq i32 %16, 0
  br i1 %tobool65.not, label %if.end64.if.then68_crit_edge, label %lor.lhs.false66

if.end64.if.then68_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then68

lor.lhs.false66:                                  ; preds = %if.end64
  %.b343 = load i1, ptr @suspend_grep, align 4
  br i1 %.b343, label %lor.lhs.false66.if.then68_crit_edge, label %lor.lhs.false66.if.end69_crit_edge

lor.lhs.false66.if.end69_crit_edge:               ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

lor.lhs.false66.if.then68_crit_edge:              ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then68

if.then68:                                        ; preds = %lor.lhs.false66.if.then68_crit_edge, %if.end64.if.then68_crit_edge
  store ptr @kdb_buffer, ptr @next_avail, align 4
  store i32 256, ptr @size_avail, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %lor.lhs.false66.if.end69_crit_edge
  %17 = load ptr, ptr @next_avail, align 4
  %18 = load i32, ptr @size_avail, align 4
  %call71 = call i32 @vsnprintf(ptr noundef %17, i32 noundef %18, ptr noundef %fmt, [1 x i32] %ap.coerce)
  %.b342 = load i1, ptr @suspend_grep, align 4
  br i1 %.b342, label %if.end69.kdb_printit_crit_edge, label %land.lhs.true

if.end69.kdb_printit_crit_edge:                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %kdb_printit

land.lhs.true:                                    ; preds = %if.end69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_grepping_flag to i32))
  %19 = load i32, ptr @kdb_grepping_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool73.not = icmp eq i32 %19, 0
  br i1 %tobool73.not, label %land.lhs.true.kdb_printit_crit_edge, label %if.then74

land.lhs.true.kdb_printit_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %kdb_printit

if.then74:                                        ; preds = %land.lhs.true
  %call75 = call ptr @strchr(ptr noundef nonnull @kdb_buffer, i32 noundef 10)
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %if.then77, label %if.end88

if.then77:                                        ; preds = %if.then74
  %20 = load ptr, ptr @next_avail, align 4
  %cmp78 = icmp eq ptr %20, @kdb_buffer
  br i1 %cmp78, label %if.then80, label %if.then77.kdb_print_out.sink.split_crit_edge

if.then77.kdb_print_out.sink.split_crit_edge:     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  br label %kdb_print_out.sink.split

if.then80:                                        ; preds = %if.then77
  %call81 = call i32 @strlen(ptr noundef nonnull @kdb_prompt_str) #14
  %call82 = call i32 @strncmp(ptr noundef nonnull @kdb_buffer, ptr noundef nonnull @kdb_prompt_str, i32 noundef %call81)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then80.kdb_printit.sink.split_crit_edge, label %if.then80.kdb_print_out.sink.split_crit_edge

if.then80.kdb_print_out.sink.split_crit_edge:     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %kdb_print_out.sink.split

if.then80.kdb_printit.sink.split_crit_edge:       ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %kdb_printit.sink.split

if.end88:                                         ; preds = %if.then74
  %incdec.ptr = getelementptr i8, ptr %call75, i32 1
  %21 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr, align 1
  store i8 0, ptr %incdec.ptr, align 1
  %call.i346 = call i32 @strlen(ptr noundef nonnull @kdb_buffer) #13
  %sub.i = add i32 %call.i346, -1
  %call1.i = call i32 @strlen(ptr noundef nonnull @kdb_grep_string) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %call1.i)
  %cmp.i = icmp slt i32 %sub.i, %call1.i
  br i1 %cmp.i, label %if.end88.if.then91_crit_edge, label %if.end.i

if.end88.if.then91_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then91

if.end.i:                                         ; preds = %if.end88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_grep_leading to i32))
  %23 = load i32, ptr @kdb_grep_leading, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i347 = icmp eq i32 %23, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_grep_trailing to i32))
  %24 = load i32, ptr @kdb_grep_trailing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool13.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i347, label %if.else.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %call1.i)
  %cmp4.not.i = icmp eq i32 %sub.i, %call1.i
  %or.cond.i = select i1 %tobool13.not.i, i1 true, i1 %cmp4.not.i
  br i1 %or.cond.i, label %if.then8.i, label %land.lhs.true.i.if.then91_crit_edge

land.lhs.true.i.if.then91_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then91

if.then8.i:                                       ; preds = %land.lhs.true.i
  %call9.i = call i32 @strncmp(ptr noundef nonnull @kdb_buffer, ptr noundef nonnull @kdb_grep_string, i32 noundef %call1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then8.i.if.end96_crit_edge, label %if.then8.i.if.then91_crit_edge

if.then8.i.if.then91_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then91

if.then8.i.if.end96_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.else.i:                                        ; preds = %if.end.i
  br i1 %tobool13.not.i, label %if.else20.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.else.i
  %add.ptr.i = getelementptr i8, ptr @kdb_buffer, i32 %sub.i
  %idx.neg.i = sub i32 0, %call1.i
  %add.ptr15.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  %call16.i = call i32 @strncmp(ptr noundef %add.ptr15.i, ptr noundef nonnull @kdb_grep_string, i32 noundef %call1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then14.i.if.end96_crit_edge, label %if.then14.i.if.then91_crit_edge

if.then14.i.if.then91_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then91

if.then14.i.if.end96_crit_edge:                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.else20.i:                                      ; preds = %if.else.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @kdb_grep_string to i32))
  %25 = load i8, ptr @kdb_grep_string, align 1
  %conv.i = zext i8 %25 to i32
  %call211.i = call ptr @strchr(ptr noundef nonnull @kdb_buffer, i32 noundef %conv.i) #10
  %tobool22.not2.i = icmp eq ptr %call211.i, null
  br i1 %tobool22.not2.i, label %if.else20.i.if.then91_crit_edge, label %if.else20.i.while.body.i_crit_edge

if.else20.i.while.body.i_crit_edge:               ; preds = %if.else20.i
  br label %while.body.i

if.else20.i.if.then91_crit_edge:                  ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then91

while.cond.i:                                     ; preds = %while.body.i
  %incdec.ptr.i = getelementptr i8, ptr %call213.i, i32 1
  %call21.i = call ptr @strchr(ptr noundef %incdec.ptr.i, i32 noundef %conv.i) #10
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %while.cond.i.if.then91_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond.i.if.then91_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then91

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %if.else20.i.while.body.i_crit_edge
  %call213.i = phi ptr [ %call21.i, %while.cond.i.while.body.i_crit_edge ], [ %call211.i, %if.else20.i.while.body.i_crit_edge ]
  %call23.i = call i32 @strncmp(ptr noundef nonnull %call213.i, ptr noundef nonnull @kdb_grep_string, i32 noundef %call1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %while.body.i.if.end96_crit_edge, label %while.cond.i

while.body.i.if.end96_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then91:                                        ; preds = %while.cond.i.if.then91_crit_edge, %if.else20.i.if.then91_crit_edge, %if.then14.i.if.then91_crit_edge, %if.then8.i.if.then91_crit_edge, %land.lhs.true.i.if.then91_crit_edge, %if.end88.if.then91_crit_edge
  %26 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %22, ptr %incdec.ptr, align 1
  br label %kdb_print_out.sink.split.sink.split

if.end96:                                         ; preds = %while.body.i.if.end96_crit_edge, %if.then14.i.if.end96_crit_edge, %if.then8.i.if.end96_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_grepping_flag to i32))
  %27 = load i32, ptr @kdb_grepping_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %27)
  %cmp97 = icmp sgt i32 %27, 32767
  br i1 %cmp97, label %if.then99, label %if.end96.kdb_printit_crit_edge

if.end96.kdb_printit_crit_edge:                   ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %kdb_printit

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %22, ptr %incdec.ptr, align 1
  br label %kdb_printit.sink.split

kdb_printit.sink.split:                           ; preds = %if.then99, %if.then80.kdb_printit.sink.split_crit_edge
  %replaced_byte.0.ph = phi i8 [ %22, %if.then99 ], [ 32, %if.then80.kdb_printit.sink.split_crit_edge ]
  %cphold.0.ph = phi ptr [ %incdec.ptr, %if.then99 ], [ null, %if.then80.kdb_printit.sink.split_crit_edge ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_grepping_flag to i32))
  store i32 0, ptr @kdb_grepping_flag, align 4
  br label %kdb_printit

kdb_printit:                                      ; preds = %kdb_printit.sink.split, %if.end96.kdb_printit_crit_edge, %land.lhs.true.kdb_printit_crit_edge, %if.end69.kdb_printit_crit_edge
  %replaced_byte.0 = phi i8 [ 32, %if.end69.kdb_printit_crit_edge ], [ %22, %if.end96.kdb_printit_crit_edge ], [ 32, %land.lhs.true.kdb_printit_crit_edge ], [ %replaced_byte.0.ph, %kdb_printit.sink.split ]
  %cphold.0 = phi ptr [ null, %if.end69.kdb_printit_crit_edge ], [ %incdec.ptr, %if.end96.kdb_printit_crit_edge ], [ null, %land.lhs.true.kdb_printit_crit_edge ], [ %cphold.0.ph, %kdb_printit.sink.split ]
  %call102 = call i32 @strlen(ptr noundef nonnull @kdb_buffer) #14
  %29 = load i8, ptr @kdb_buffer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp.i3.i = icmp eq i8 %29, 1
  br i1 %cmp.i3.i, label %kdb_printit.land.lhs.true.i.i_crit_edge, label %kdb_printit.printk_skip_headers.exit_crit_edge

kdb_printit.printk_skip_headers.exit_crit_edge:   ; preds = %kdb_printit
  call void @__sanitizer_cov_trace_pc() #12
  br label %printk_skip_headers.exit

kdb_printit.land.lhs.true.i.i_crit_edge:          ; preds = %kdb_printit
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %printk_get_level.exit.i.i.land.lhs.true.i.i_crit_edge, %kdb_printit.land.lhs.true.i.i_crit_edge
  %buffer.addr.04.i = phi ptr [ %add.ptr.i.i, %printk_get_level.exit.i.i.land.lhs.true.i.i_crit_edge ], [ @kdb_buffer, %kdb_printit.land.lhs.true.i.i_crit_edge ]
  %arrayidx2.i.i = getelementptr i8, ptr %buffer.addr.04.i, i32 1
  %30 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx2.i.i, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %31, label %land.lhs.true.i.i.printk_skip_headers.exit_crit_edge [
    i8 55, label %land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge
    i8 99, label %land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge460
    i8 48, label %land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge461
    i8 49, label %land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge462
    i8 50, label %land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge463
    i8 51, label %land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge464
    i8 52, label %land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge465
    i8 53, label %land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge466
    i8 54, label %land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge467
  ]

land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge467: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %printk_get_level.exit.i.i

land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge466: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %printk_get_level.exit.i.i

land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge465: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %printk_get_level.exit.i.i

land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge464: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %printk_get_level.exit.i.i

land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge463: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %printk_get_level.exit.i.i

land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge462: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %printk_get_level.exit.i.i

land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge461: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %printk_get_level.exit.i.i

land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge460: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %printk_get_level.exit.i.i

land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %printk_get_level.exit.i.i

land.lhs.true.i.i.printk_skip_headers.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %printk_skip_headers.exit

printk_get_level.exit.i.i:                        ; preds = %land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge, %land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge460, %land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge461, %land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge462, %land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge463, %land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge464, %land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge465, %land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge466, %land.lhs.true.i.i.printk_get_level.exit.i.i_crit_edge467
  %add.ptr.i.i = getelementptr i8, ptr %buffer.addr.04.i, i32 2
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr.i.i, align 1
  %cmp.i.i = icmp eq i8 %34, 1
  br i1 %cmp.i.i, label %printk_get_level.exit.i.i.land.lhs.true.i.i_crit_edge, label %printk_get_level.exit.i.i.printk_skip_headers.exit_crit_edge

printk_get_level.exit.i.i.printk_skip_headers.exit_crit_edge: ; preds = %printk_get_level.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %printk_skip_headers.exit

printk_get_level.exit.i.i.land.lhs.true.i.i_crit_edge: ; preds = %printk_get_level.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

printk_skip_headers.exit:                         ; preds = %printk_get_level.exit.i.i.printk_skip_headers.exit_crit_edge, %land.lhs.true.i.i.printk_skip_headers.exit_crit_edge, %kdb_printit.printk_skip_headers.exit_crit_edge
  %buffer.addr.0.lcssa.i = phi ptr [ @kdb_buffer, %kdb_printit.printk_skip_headers.exit_crit_edge ], [ %add.ptr.i.i, %printk_get_level.exit.i.i.printk_skip_headers.exit_crit_edge ], [ %buffer.addr.04.i, %land.lhs.true.i.i.printk_skip_headers.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_kdb_mode to i32))
  %35 = load i32, ptr @dbg_kdb_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool104.not = icmp eq i32 %35, 0
  br i1 %tobool104.not, label %land.lhs.true105, label %printk_skip_headers.exit.if.else_crit_edge

printk_skip_headers.exit.if.else_crit_edge:       ; preds = %printk_skip_headers.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true105:                                 ; preds = %printk_skip_headers.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_connected to i32))
  %36 = load i32, ptr @kgdb_connected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool106.not = icmp eq i32 %36, 0
  br i1 %tobool106.not, label %land.lhs.true105.if.else_crit_edge, label %if.then107

land.lhs.true105.if.else_crit_edge:               ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then107:                                       ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast = ptrtoint ptr %buffer.addr.0.lcssa.i to i32
  %sub.ptr.sub.neg = add i32 %call102, ptrtoint (ptr @kdb_buffer to i32)
  %sub108 = sub i32 %sub.ptr.sub.neg, %sub.ptr.lhs.cast
  call void @gdbstub_msg_write(ptr noundef %buffer.addr.0.lcssa.i, i32 noundef %sub108) #10
  br label %if.end112

if.else:                                          ; preds = %land.lhs.true105.if.else_crit_edge, %printk_skip_headers.exit.if.else_crit_edge
  %sub.ptr.lhs.cast109 = ptrtoint ptr %buffer.addr.0.lcssa.i to i32
  %sub.ptr.sub110.neg = sub i32 ptrtoint (ptr @kdb_buffer to i32), %sub.ptr.lhs.cast109
  %sub111 = add i32 %sub.ptr.sub110.neg, %call102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub111)
  %cmp.i348 = icmp eq i32 %sub111, 0
  br i1 %cmp.i348, label %if.else.if.end112_crit_edge, label %if.else.while.body.i351_crit_edge

if.else.while.body.i351_crit_edge:                ; preds = %if.else
  br label %while.body.i351

if.else.if.end112_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

for.cond.preheader.i:                             ; preds = %while.body.i351
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @console_drivers to i32))
  %c.025.i = load ptr, ptr @console_drivers, align 4
  %cmp1.not26.i = icmp eq ptr %c.025.i, null
  br i1 %cmp1.not26.i, label %for.cond.preheader.i.if.end112_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end112_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

while.body.i351:                                  ; preds = %while.body.i351.while.body.i351_crit_edge, %if.else.while.body.i351_crit_edge
  %len.024.i = phi i32 [ %dec.i, %while.body.i351.while.body.i351_crit_edge ], [ %sub111, %if.else.while.body.i351_crit_edge ]
  %cp.023.i = phi ptr [ %incdec.ptr.i349, %while.body.i351.while.body.i351_crit_edge ], [ %buffer.addr.0.lcssa.i, %if.else.while.body.i351_crit_edge ]
  %dec.i = add i32 %len.024.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %37 = load ptr, ptr @dbg_io_ops, align 4
  %write_char.i = getelementptr inbounds %struct.kgdb_io, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %write_char.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_char.i, align 4
  %40 = ptrtoint ptr %cp.023.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %cp.023.i, align 1
  call void %39(i8 noundef zeroext %41) #10
  %incdec.ptr.i349 = getelementptr i8, ptr %cp.023.i, i32 1
  %tobool.not.i350 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i350, label %for.cond.preheader.i, label %while.body.i351.while.body.i351_crit_edge

while.body.i351.while.body.i351_crit_edge:        ; preds = %while.body.i351
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i351

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %c.027.i = phi ptr [ %c.0.i, %for.inc.i.for.body.i_crit_edge ], [ %c.025.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.console, ptr %c.027.i, i32 0, i32 8
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %flags.i, align 4
  %44 = and i16 %43, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool2.not.i = icmp eq i16 %44, 0
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %45 = load ptr, ptr @dbg_io_ops, align 4
  %cons.i = getelementptr inbounds %struct.kgdb_io, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cons.i, align 4
  %cmp5.i = icmp eq ptr %c.027.i, %47
  br i1 %cmp5.i, label %if.end4.i.for.inc.i_crit_edge, label %if.end8.i

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %48 = load i32, ptr @oops_in_progress, align 4
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr @oops_in_progress, align 4
  %write.i = getelementptr inbounds %struct.console, ptr %c.027.i, i32 0, i32 1
  %49 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write.i, align 4
  call void %50(ptr noundef nonnull %c.027.i, ptr noundef %buffer.addr.0.lcssa.i, i32 noundef %sub111) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %51 = load i32, ptr @oops_in_progress, align 4
  %dec9.i = add i32 %51, -1
  store i32 %dec9.i, ptr @oops_in_progress, align 4
  call void @touch_softlockup_watchdog() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i, %if.end4.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %next.i = getelementptr inbounds %struct.console, ptr %c.027.i, i32 0, i32 14
  %52 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %c.0.i = load ptr, ptr %next.i, align 4
  %cmp1.not.i = icmp eq ptr %c.0.i, null
  br i1 %cmp1.not.i, label %for.inc.i.if.end112_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end112_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.end112:                                        ; preds = %for.inc.i.if.end112_crit_edge, %for.cond.preheader.i.if.end112_crit_edge, %if.else.if.end112_crit_edge, %if.then107
  %53 = ptrtoint ptr %logging to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool113.not = icmp eq i32 %54, 0
  br i1 %tobool113.not, label %if.end112.if.end133_crit_edge, label %if.then114

if.end112.if.end133_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133

if.then114:                                       ; preds = %if.end112
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @console_printk to i32))
  %55 = load i32, ptr @console_printk, align 4
  store i32 0, ptr @console_printk, align 4
  %56 = load i8, ptr @kdb_buffer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %56)
  %cmp.i352 = icmp eq i8 %56, 1
  br i1 %cmp.i352, label %land.lhs.true.i353, label %if.then114.printk_get_level.exit_crit_edge

if.then114.printk_get_level.exit_crit_edge:       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  br label %printk_get_level.exit

land.lhs.true.i353:                               ; preds = %if.then114
  %57 = load i8, ptr getelementptr inbounds ([256 x i8], ptr @kdb_buffer, i32 0, i32 1), align 1
  %58 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %57, label %land.lhs.true.i353.printk_get_level.exit_crit_edge [
    i8 55, label %land.lhs.true.i353.if.end133.sink.split_crit_edge
    i8 99, label %land.lhs.true.i353.if.end133.sink.split_crit_edge468
    i8 48, label %land.lhs.true.i353.if.end133.sink.split_crit_edge469
    i8 49, label %land.lhs.true.i353.if.end133.sink.split_crit_edge470
    i8 50, label %land.lhs.true.i353.if.end133.sink.split_crit_edge471
    i8 51, label %land.lhs.true.i353.if.end133.sink.split_crit_edge472
    i8 52, label %land.lhs.true.i353.if.end133.sink.split_crit_edge473
    i8 53, label %land.lhs.true.i353.if.end133.sink.split_crit_edge474
    i8 54, label %land.lhs.true.i353.if.end133.sink.split_crit_edge475
  ]

land.lhs.true.i353.if.end133.sink.split_crit_edge475: ; preds = %land.lhs.true.i353
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133.sink.split

land.lhs.true.i353.if.end133.sink.split_crit_edge474: ; preds = %land.lhs.true.i353
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133.sink.split

land.lhs.true.i353.if.end133.sink.split_crit_edge473: ; preds = %land.lhs.true.i353
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133.sink.split

land.lhs.true.i353.if.end133.sink.split_crit_edge472: ; preds = %land.lhs.true.i353
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133.sink.split

land.lhs.true.i353.if.end133.sink.split_crit_edge471: ; preds = %land.lhs.true.i353
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133.sink.split

land.lhs.true.i353.if.end133.sink.split_crit_edge470: ; preds = %land.lhs.true.i353
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133.sink.split

land.lhs.true.i353.if.end133.sink.split_crit_edge469: ; preds = %land.lhs.true.i353
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133.sink.split

land.lhs.true.i353.if.end133.sink.split_crit_edge468: ; preds = %land.lhs.true.i353
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133.sink.split

land.lhs.true.i353.if.end133.sink.split_crit_edge: ; preds = %land.lhs.true.i353
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133.sink.split

land.lhs.true.i353.printk_get_level.exit_crit_edge: ; preds = %land.lhs.true.i353
  call void @__sanitizer_cov_trace_pc() #12
  br label %printk_get_level.exit

printk_get_level.exit:                            ; preds = %land.lhs.true.i353.printk_get_level.exit_crit_edge, %if.then114.printk_get_level.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %src)
  %cmp118 = icmp eq i32 %src, 1
  %spec.select = select i1 %cmp118, ptr @.str.4, ptr @.str.8
  br label %if.end133.sink.split

if.end133.sink.split:                             ; preds = %printk_get_level.exit, %land.lhs.true.i353.if.end133.sink.split_crit_edge, %land.lhs.true.i353.if.end133.sink.split_crit_edge468, %land.lhs.true.i353.if.end133.sink.split_crit_edge469, %land.lhs.true.i353.if.end133.sink.split_crit_edge470, %land.lhs.true.i353.if.end133.sink.split_crit_edge471, %land.lhs.true.i353.if.end133.sink.split_crit_edge472, %land.lhs.true.i353.if.end133.sink.split_crit_edge473, %land.lhs.true.i353.if.end133.sink.split_crit_edge474, %land.lhs.true.i353.if.end133.sink.split_crit_edge475
  %.str.4.sink = phi ptr [ @.str.4, %land.lhs.true.i353.if.end133.sink.split_crit_edge ], [ @.str.4, %land.lhs.true.i353.if.end133.sink.split_crit_edge468 ], [ @.str.4, %land.lhs.true.i353.if.end133.sink.split_crit_edge469 ], [ @.str.4, %land.lhs.true.i353.if.end133.sink.split_crit_edge470 ], [ @.str.4, %land.lhs.true.i353.if.end133.sink.split_crit_edge471 ], [ @.str.4, %land.lhs.true.i353.if.end133.sink.split_crit_edge472 ], [ @.str.4, %land.lhs.true.i353.if.end133.sink.split_crit_edge473 ], [ @.str.4, %land.lhs.true.i353.if.end133.sink.split_crit_edge474 ], [ @.str.4, %land.lhs.true.i353.if.end133.sink.split_crit_edge475 ], [ %spec.select, %printk_get_level.exit ]
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink, ptr noundef nonnull @kdb_buffer) #15
  br label %if.end133

if.end133:                                        ; preds = %if.end133.sink.split, %if.end112.if.end133_crit_edge
  %saved_loglevel.0 = phi i32 [ 0, %if.end112.if.end133_crit_edge ], [ %55, %if.end133.sink.split ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %59 = load i32, ptr @kdb_state, align 4
  %and = and i32 %59, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool134.not = icmp eq i32 %and, 0
  br i1 %tobool134.not, label %if.end133.if.end152_crit_edge, label %while.cond.preheader

if.end133.if.end152_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152

while.cond.preheader:                             ; preds = %if.end133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool136.not423 = icmp eq i32 %call102, 0
  br i1 %tobool136.not423, label %while.cond.preheader.while.end_crit_edge, label %while.body.preheader

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_nextline to i32))
  %kdb_nextline.promoted = load i32, ptr @kdb_nextline, align 4
  br label %while.body

while.body:                                       ; preds = %if.end150.while.body_crit_edge, %while.body.preheader
  %dec426.in = phi i32 [ %dec426, %if.end150.while.body_crit_edge ], [ %call102, %while.body.preheader ]
  %got.0425 = phi i32 [ %got.1, %if.end150.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %inc421424 = phi i32 [ %inc420, %if.end150.while.body_crit_edge ], [ %kdb_nextline.promoted, %while.body.preheader ]
  %dec426 = add i32 %dec426.in, -1
  %arrayidx = getelementptr [256 x i8], ptr @kdb_buffer, i32 0, i32 %dec426
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx, align 1
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %61, label %if.else147 [
    i8 10, label %if.then140
    i8 13, label %while.body.if.end150_crit_edge
  ]

while.body.if.end150_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

if.then140:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %inc421424, 1
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_nextline to i32))
  store i32 %inc, ptr @kdb_nextline, align 4
  br label %if.end150

if.else147:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %inc148 = add i32 %got.0425, 1
  br label %if.end150

if.end150:                                        ; preds = %if.else147, %if.then140, %while.body.if.end150_crit_edge
  %inc420 = phi i32 [ %inc, %if.then140 ], [ %inc421424, %if.else147 ], [ %inc421424, %while.body.if.end150_crit_edge ]
  %got.1 = phi i32 [ 0, %if.then140 ], [ %inc148, %if.else147 ], [ 0, %while.body.if.end150_crit_edge ]
  %tobool136.not = icmp eq i32 %dec426, 0
  br i1 %tobool136.not, label %if.end150.while.end_crit_edge, label %if.end150.while.body_crit_edge

if.end150.while.body_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end150.while.end_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end150.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %got.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %got.1, %if.end150.while.end_crit_edge ]
  %63 = ptrtoint ptr %colcount to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %colcount, align 4
  %add = add i32 %64, 1
  %div = sdiv i32 %got.0.lcssa, %add
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_nextline to i32))
  %65 = load i32, ptr @kdb_nextline, align 4
  %add151 = add i32 %65, %div
  store i32 %add151, ptr @kdb_nextline, align 4
  br label %if.end152

if.end152:                                        ; preds = %while.end, %if.end133.if.end152_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_nextline to i32))
  %66 = load i32, ptr @kdb_nextline, align 4
  %67 = ptrtoint ptr %linecount to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %linecount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp153.not = icmp slt i32 %66, %68
  br i1 %cmp153.not, label %if.end152.if.end232_crit_edge, label %if.then155

if.end152.if.end232_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end232

if.then155:                                       ; preds = %if.end152
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_nextline to i32))
  store i32 1, ptr @kdb_nextline, align 4
  %call156 = call ptr @kdbgetenv(ptr noundef nonnull @.str.10) #10
  %cmp157 = icmp eq ptr %call156, null
  %spec.store.select = select i1 %cmp157, ptr @.str, ptr %call156
  br label %empty.preheader.i

empty.preheader.i:                                ; preds = %if.end4.i359.empty.preheader.i_crit_edge, %if.then155
  call void @touch_softlockup_watchdog() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_poll_funcs to i32))
  %69 = load ptr, ptr @kdb_poll_funcs, align 4
  %tobool1.not914.i = icmp eq ptr %69, null
  br i1 %tobool1.not914.i, label %empty.preheader.i.kdb_input_flush.exit_crit_edge, label %empty.preheader.i.for.body.lr.ph.i_crit_edge

empty.preheader.i.for.body.lr.ph.i_crit_edge:     ; preds = %empty.preheader.i
  br label %for.body.lr.ph.i

empty.preheader.i.kdb_input_flush.exit_crit_edge: ; preds = %empty.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kdb_input_flush.exit

empty.loopexit.i:                                 ; preds = %for.body.i357
  call void @touch_softlockup_watchdog() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_poll_funcs to i32))
  %70 = load ptr, ptr @kdb_poll_funcs, align 4
  %tobool1.not9.i = icmp eq ptr %70, null
  br i1 %tobool1.not9.i, label %empty.loopexit.i.if.then3.i_crit_edge, label %empty.loopexit.i.for.body.lr.ph.i_crit_edge

empty.loopexit.i.for.body.lr.ph.i_crit_edge:      ; preds = %empty.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph.i

empty.loopexit.i.if.then3.i_crit_edge:            ; preds = %empty.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

for.body.lr.ph.i:                                 ; preds = %empty.loopexit.i.for.body.lr.ph.i_crit_edge, %empty.preheader.i.for.body.lr.ph.i_crit_edge
  %71 = phi ptr [ %70, %empty.loopexit.i.for.body.lr.ph.i_crit_edge ], [ %69, %empty.preheader.i.for.body.lr.ph.i_crit_edge ]
  %flush_delay.116.i = phi i32 [ 1, %empty.loopexit.i.for.body.lr.ph.i_crit_edge ], [ 0, %empty.preheader.i.for.body.lr.ph.i_crit_edge ]
  %tobool2.not15.i = phi i1 [ false, %empty.loopexit.i.for.body.lr.ph.i_crit_edge ], [ true, %empty.preheader.i.for.body.lr.ph.i_crit_edge ]
  br label %for.body.i357

for.cond.i:                                       ; preds = %for.body.i357
  %incdec.ptr.i355 = getelementptr ptr, ptr %f.010.i, i32 1
  %72 = ptrtoint ptr %incdec.ptr.i355 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %incdec.ptr.i355, align 4
  %tobool1.not.i = icmp eq ptr %73, null
  br i1 %tobool1.not.i, label %for.end.i, label %for.cond.i.for.body.i357_crit_edge

for.cond.i.for.body.i357_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i357

for.body.i357:                                    ; preds = %for.cond.i.for.body.i357_crit_edge, %for.body.lr.ph.i
  %74 = phi ptr [ %71, %for.body.lr.ph.i ], [ %73, %for.cond.i.for.body.i357_crit_edge ]
  %f.010.i = phi ptr [ @kdb_poll_funcs, %for.body.lr.ph.i ], [ %incdec.ptr.i355, %for.cond.i.for.body.i357_crit_edge ]
  %call.i356 = call i32 %74() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i356)
  %cmp.not.i = icmp eq i32 %call.i356, -1
  br i1 %cmp.not.i, label %for.cond.i, label %empty.loopexit.i

for.end.i:                                        ; preds = %for.cond.i
  br i1 %tobool2.not15.i, label %for.end.i.if.end4.i359_crit_edge, label %for.end.i.if.then3.i_crit_edge

for.end.i.if.then3.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

for.end.i.if.end4.i359_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i359

if.then3.i:                                       ; preds = %for.end.i.if.then3.i_crit_edge, %empty.loopexit.i.if.then3.i_crit_edge
  %flush_delay.1.lcssa28.i = phi i32 [ %flush_delay.116.i, %for.end.i.if.then3.i_crit_edge ], [ 1, %empty.loopexit.i.if.then3.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %75(i32 noundef 214748000) #10
  br label %if.end4.i359

if.end4.i359:                                     ; preds = %if.then3.i, %for.end.i.if.end4.i359_crit_edge
  %flush_delay.1.lcssa24.i = phi i32 [ %flush_delay.1.lcssa28.i, %if.then3.i ], [ %flush_delay.116.i, %for.end.i.if.end4.i359_crit_edge ]
  %tobool.not.i358 = icmp eq i32 %flush_delay.1.lcssa24.i, 0
  br i1 %tobool.not.i358, label %if.end4.i359.kdb_input_flush.exit_crit_edge, label %if.end4.i359.empty.preheader.i_crit_edge

if.end4.i359.empty.preheader.i_crit_edge:         ; preds = %if.end4.i359
  call void @__sanitizer_cov_trace_pc() #12
  br label %empty.preheader.i

if.end4.i359.kdb_input_flush.exit_crit_edge:      ; preds = %if.end4.i359
  call void @__sanitizer_cov_trace_pc() #12
  br label %kdb_input_flush.exit

kdb_input_flush.exit:                             ; preds = %if.end4.i359.kdb_input_flush.exit_crit_edge, %empty.preheader.i.kdb_input_flush.exit_crit_edge
  %call161 = call i32 @strlen(ptr noundef %spec.store.select) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %cmp.i360 = icmp eq i32 %call161, 0
  br i1 %cmp.i360, label %kdb_input_flush.exit.kdb_msg_write.exit386_crit_edge, label %kdb_input_flush.exit.while.body.i370_crit_edge

kdb_input_flush.exit.while.body.i370_crit_edge:   ; preds = %kdb_input_flush.exit
  br label %while.body.i370

kdb_input_flush.exit.kdb_msg_write.exit386_crit_edge: ; preds = %kdb_input_flush.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %kdb_msg_write.exit386

for.cond.preheader.i363:                          ; preds = %while.body.i370
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @console_drivers to i32))
  %c.025.i361 = load ptr, ptr @console_drivers, align 4
  %cmp1.not26.i362 = icmp eq ptr %c.025.i361, null
  br i1 %cmp1.not26.i362, label %for.cond.preheader.i363.kdb_msg_write.exit386_crit_edge, label %for.cond.preheader.i363.for.body.i374_crit_edge

for.cond.preheader.i363.for.body.i374_crit_edge:  ; preds = %for.cond.preheader.i363
  br label %for.body.i374

for.cond.preheader.i363.kdb_msg_write.exit386_crit_edge: ; preds = %for.cond.preheader.i363
  call void @__sanitizer_cov_trace_pc() #12
  br label %kdb_msg_write.exit386

while.body.i370:                                  ; preds = %while.body.i370.while.body.i370_crit_edge, %kdb_input_flush.exit.while.body.i370_crit_edge
  %len.024.i364 = phi i32 [ %dec.i366, %while.body.i370.while.body.i370_crit_edge ], [ %call161, %kdb_input_flush.exit.while.body.i370_crit_edge ]
  %cp.023.i365 = phi ptr [ %incdec.ptr.i368, %while.body.i370.while.body.i370_crit_edge ], [ %spec.store.select, %kdb_input_flush.exit.while.body.i370_crit_edge ]
  %dec.i366 = add i32 %len.024.i364, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %76 = load ptr, ptr @dbg_io_ops, align 4
  %write_char.i367 = getelementptr inbounds %struct.kgdb_io, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %write_char.i367 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write_char.i367, align 4
  %79 = ptrtoint ptr %cp.023.i365 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %cp.023.i365, align 1
  call void %78(i8 noundef zeroext %80) #10
  %incdec.ptr.i368 = getelementptr i8, ptr %cp.023.i365, i32 1
  %tobool.not.i369 = icmp eq i32 %dec.i366, 0
  br i1 %tobool.not.i369, label %for.cond.preheader.i363, label %while.body.i370.while.body.i370_crit_edge

while.body.i370.while.body.i370_crit_edge:        ; preds = %while.body.i370
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i370

for.body.i374:                                    ; preds = %for.inc.i385.for.body.i374_crit_edge, %for.cond.preheader.i363.for.body.i374_crit_edge
  %c.027.i371 = phi ptr [ %c.0.i383, %for.inc.i385.for.body.i374_crit_edge ], [ %c.025.i361, %for.cond.preheader.i363.for.body.i374_crit_edge ]
  %flags.i372 = getelementptr inbounds %struct.console, ptr %c.027.i371, i32 0, i32 8
  %81 = ptrtoint ptr %flags.i372 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %flags.i372, align 4
  %83 = and i16 %82, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool2.not.i373 = icmp eq i16 %83, 0
  br i1 %tobool2.not.i373, label %for.body.i374.for.inc.i385_crit_edge, label %if.end4.i377

for.body.i374.for.inc.i385_crit_edge:             ; preds = %for.body.i374
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i385

if.end4.i377:                                     ; preds = %for.body.i374
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %84 = load ptr, ptr @dbg_io_ops, align 4
  %cons.i375 = getelementptr inbounds %struct.kgdb_io, ptr %84, i32 0, i32 8
  %85 = ptrtoint ptr %cons.i375 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cons.i375, align 4
  %cmp5.i376 = icmp eq ptr %c.027.i371, %86
  br i1 %cmp5.i376, label %if.end4.i377.for.inc.i385_crit_edge, label %if.end8.i381

if.end4.i377.for.inc.i385_crit_edge:              ; preds = %if.end4.i377
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i385

if.end8.i381:                                     ; preds = %if.end4.i377
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %87 = load i32, ptr @oops_in_progress, align 4
  %inc.i378 = add i32 %87, 1
  store i32 %inc.i378, ptr @oops_in_progress, align 4
  %write.i379 = getelementptr inbounds %struct.console, ptr %c.027.i371, i32 0, i32 1
  %88 = ptrtoint ptr %write.i379 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write.i379, align 4
  call void %89(ptr noundef nonnull %c.027.i371, ptr noundef %spec.store.select, i32 noundef %call161) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %90 = load i32, ptr @oops_in_progress, align 4
  %dec9.i380 = add i32 %90, -1
  store i32 %dec9.i380, ptr @oops_in_progress, align 4
  call void @touch_softlockup_watchdog() #10
  br label %for.inc.i385

for.inc.i385:                                     ; preds = %if.end8.i381, %if.end4.i377.for.inc.i385_crit_edge, %for.body.i374.for.inc.i385_crit_edge
  %next.i382 = getelementptr inbounds %struct.console, ptr %c.027.i371, i32 0, i32 14
  %91 = ptrtoint ptr %next.i382 to i32
  call void @__asan_load4_noabort(i32 %91)
  %c.0.i383 = load ptr, ptr %next.i382, align 4
  %cmp1.not.i384 = icmp eq ptr %c.0.i383, null
  br i1 %cmp1.not.i384, label %for.inc.i385.kdb_msg_write.exit386_crit_edge, label %for.inc.i385.for.body.i374_crit_edge

for.inc.i385.for.body.i374_crit_edge:             ; preds = %for.inc.i385
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i374

for.inc.i385.kdb_msg_write.exit386_crit_edge:     ; preds = %for.inc.i385
  call void @__sanitizer_cov_trace_pc() #12
  br label %kdb_msg_write.exit386

kdb_msg_write.exit386:                            ; preds = %for.inc.i385.kdb_msg_write.exit386_crit_edge, %for.cond.preheader.i363.kdb_msg_write.exit386_crit_edge, %kdb_input_flush.exit.kdb_msg_write.exit386_crit_edge
  %92 = ptrtoint ptr %logging to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool162.not = icmp eq i32 %93, 0
  br i1 %tobool162.not, label %kdb_msg_write.exit386.if.end169_crit_edge, label %do.end166

kdb_msg_write.exit386.if.end169_crit_edge:        ; preds = %kdb_msg_write.exit386
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

do.end166:                                        ; preds = %kdb_msg_write.exit386
  call void @__sanitizer_cov_trace_pc() #12
  %call168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %spec.store.select) #15
  br label %if.end169

if.end169:                                        ; preds = %do.end166, %kdb_msg_write.exit386.if.end169_crit_edge
  %call170 = call zeroext i8 @kdb_getchar()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_nextline to i32))
  store i32 1, ptr @kdb_nextline, align 4
  store i8 0, ptr @kdb_buffer, align 1
  store ptr @kdb_buffer, ptr @next_avail, align 4
  store i32 256, ptr @size_avail, align 4
  %94 = zext i8 %call170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %call170, label %if.then213 [
    i8 113, label %if.end169.if.then178_crit_edge
    i8 81, label %if.end169.if.then178_crit_edge476
    i8 32, label %if.then185
    i8 10, label %if.end169.if.then195_crit_edge
    i8 13, label %if.end169.if.then195_crit_edge477
    i8 47, label %land.lhs.true202
    i8 0, label %if.else222
  ]

if.end169.if.then195_crit_edge477:                ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then195

if.end169.if.then195_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then195

if.end169.if.then178_crit_edge476:                ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then178

if.end169.if.then178_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then178

if.then178:                                       ; preds = %if.end169.if.then178_crit_edge, %if.end169.if.then178_crit_edge476
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_flags to i32))
  %95 = load i32, ptr @kdb_flags, align 4
  %or = or i32 %95, 4
  store i32 %or, ptr @kdb_flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %96 = load i32, ptr @kdb_state, align 4
  %and179 = and i32 %96, -1025
  store i32 %and179, ptr @kdb_state, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_grepping_flag to i32))
  store i32 0, ptr @kdb_grepping_flag, align 4
  %call180 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.13)
  br label %empty.preheader.i388.preheader

if.then185:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  %call186 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.14)
  store i1 true, ptr @suspend_grep, align 4
  br label %empty.preheader.i388.preheader

if.then195:                                       ; preds = %if.end169.if.then195_crit_edge, %if.end169.if.then195_crit_edge477
  %97 = ptrtoint ptr %linecount to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %linecount, align 4
  %sub196 = add i32 %98, -1
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_nextline to i32))
  store i32 %sub196, ptr @kdb_nextline, align 4
  %call197 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.14)
  store i1 true, ptr @suspend_grep, align 4
  br label %empty.preheader.i388.preheader

land.lhs.true202:                                 ; preds = %if.end169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_grepping_flag to i32))
  %99 = load i32, ptr @kdb_grepping_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool203.not = icmp eq i32 %99, 0
  br i1 %tobool203.not, label %if.then204, label %if.then213.thread

if.then213.thread:                                ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @suspend_grep, align 4
  %call220 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.18)
  br label %empty.preheader.i388.preheader

if.then204:                                       ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #12
  %call205 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.14)
  %call206 = call ptr @kdbgetenv(ptr noundef nonnull @.str.15) #10
  %tobool207.not = icmp eq ptr %call206, null
  %call206..str.16 = select i1 %tobool207.not, ptr @.str.16, ptr %call206
  %call208 = call ptr @kdb_getstr(ptr noundef nonnull @kdb_grep_string, i32 noundef 256, ptr noundef %call206..str.16)
  %call209 = call ptr @strchrnul(ptr noundef nonnull @kdb_grep_string, i32 noundef 10) #10
  %100 = ptrtoint ptr %call209 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %call209, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_grepping_flag to i32))
  %101 = load i32, ptr @kdb_grepping_flag, align 4
  %add210 = add i32 %101, 32768
  store i32 %add210, ptr @kdb_grepping_flag, align 4
  store i1 true, ptr @suspend_grep, align 4
  br label %empty.preheader.i388.preheader

if.then213:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @suspend_grep, align 4
  %call218 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.17)
  br label %empty.preheader.i388.preheader

if.else222:                                       ; preds = %if.end169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_grepping_flag to i32))
  %102 = load i32, ptr @kdb_grepping_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool223.not = icmp eq i32 %102, 0
  br i1 %tobool223.not, label %if.else222.empty.preheader.i388.preheader_crit_edge, label %if.then224

if.else222.empty.preheader.i388.preheader_crit_edge: ; preds = %if.else222
  call void @__sanitizer_cov_trace_pc() #12
  br label %empty.preheader.i388.preheader

if.then224:                                       ; preds = %if.else222
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @suspend_grep, align 4
  %call225 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.13)
  br label %empty.preheader.i388.preheader

empty.preheader.i388.preheader:                   ; preds = %if.then224, %if.else222.empty.preheader.i388.preheader_crit_edge, %if.then213, %if.then204, %if.then213.thread, %if.then195, %if.then185, %if.then178
  br label %empty.preheader.i388

empty.preheader.i388:                             ; preds = %if.end4.i406.empty.preheader.i388_crit_edge, %empty.preheader.i388.preheader
  call void @touch_softlockup_watchdog() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_poll_funcs to i32))
  %103 = load ptr, ptr @kdb_poll_funcs, align 4
  %tobool1.not914.i387 = icmp eq ptr %103, null
  br i1 %tobool1.not914.i387, label %empty.preheader.i388.if.end232_crit_edge, label %empty.preheader.i388.for.body.lr.ph.i393_crit_edge

empty.preheader.i388.for.body.lr.ph.i393_crit_edge: ; preds = %empty.preheader.i388
  br label %for.body.lr.ph.i393

empty.preheader.i388.if.end232_crit_edge:         ; preds = %empty.preheader.i388
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end232

empty.loopexit.i390:                              ; preds = %for.body.i400
  call void @touch_softlockup_watchdog() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_poll_funcs to i32))
  %104 = load ptr, ptr @kdb_poll_funcs, align 4
  %tobool1.not9.i389 = icmp eq ptr %104, null
  br i1 %tobool1.not9.i389, label %empty.loopexit.i390.if.then3.i403_crit_edge, label %empty.loopexit.i390.for.body.lr.ph.i393_crit_edge

empty.loopexit.i390.for.body.lr.ph.i393_crit_edge: ; preds = %empty.loopexit.i390
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph.i393

empty.loopexit.i390.if.then3.i403_crit_edge:      ; preds = %empty.loopexit.i390
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i403

for.body.lr.ph.i393:                              ; preds = %empty.loopexit.i390.for.body.lr.ph.i393_crit_edge, %empty.preheader.i388.for.body.lr.ph.i393_crit_edge
  %105 = phi ptr [ %104, %empty.loopexit.i390.for.body.lr.ph.i393_crit_edge ], [ %103, %empty.preheader.i388.for.body.lr.ph.i393_crit_edge ]
  %flush_delay.116.i391 = phi i32 [ 1, %empty.loopexit.i390.for.body.lr.ph.i393_crit_edge ], [ 0, %empty.preheader.i388.for.body.lr.ph.i393_crit_edge ]
  %tobool2.not15.i392 = phi i1 [ false, %empty.loopexit.i390.for.body.lr.ph.i393_crit_edge ], [ true, %empty.preheader.i388.for.body.lr.ph.i393_crit_edge ]
  br label %for.body.i400

for.cond.i396:                                    ; preds = %for.body.i400
  %incdec.ptr.i394 = getelementptr ptr, ptr %f.010.i397, i32 1
  %106 = ptrtoint ptr %incdec.ptr.i394 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %incdec.ptr.i394, align 4
  %tobool1.not.i395 = icmp eq ptr %107, null
  br i1 %tobool1.not.i395, label %for.end.i401, label %for.cond.i396.for.body.i400_crit_edge

for.cond.i396.for.body.i400_crit_edge:            ; preds = %for.cond.i396
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i400

for.body.i400:                                    ; preds = %for.cond.i396.for.body.i400_crit_edge, %for.body.lr.ph.i393
  %108 = phi ptr [ %105, %for.body.lr.ph.i393 ], [ %107, %for.cond.i396.for.body.i400_crit_edge ]
  %f.010.i397 = phi ptr [ @kdb_poll_funcs, %for.body.lr.ph.i393 ], [ %incdec.ptr.i394, %for.cond.i396.for.body.i400_crit_edge ]
  %call.i398 = call i32 %108() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i398)
  %cmp.not.i399 = icmp eq i32 %call.i398, -1
  br i1 %cmp.not.i399, label %for.cond.i396, label %empty.loopexit.i390

for.end.i401:                                     ; preds = %for.cond.i396
  br i1 %tobool2.not15.i392, label %for.end.i401.if.end4.i406_crit_edge, label %for.end.i401.if.then3.i403_crit_edge

for.end.i401.if.then3.i403_crit_edge:             ; preds = %for.end.i401
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i403

for.end.i401.if.end4.i406_crit_edge:              ; preds = %for.end.i401
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i406

if.then3.i403:                                    ; preds = %for.end.i401.if.then3.i403_crit_edge, %empty.loopexit.i390.if.then3.i403_crit_edge
  %flush_delay.1.lcssa28.i402 = phi i32 [ %flush_delay.116.i391, %for.end.i401.if.then3.i403_crit_edge ], [ 1, %empty.loopexit.i390.if.then3.i403_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %109(i32 noundef 214748000) #10
  br label %if.end4.i406

if.end4.i406:                                     ; preds = %if.then3.i403, %for.end.i401.if.end4.i406_crit_edge
  %flush_delay.1.lcssa24.i404 = phi i32 [ %flush_delay.1.lcssa28.i402, %if.then3.i403 ], [ %flush_delay.116.i391, %for.end.i401.if.end4.i406_crit_edge ]
  %tobool.not.i405 = icmp eq i32 %flush_delay.1.lcssa24.i404, 0
  br i1 %tobool.not.i405, label %if.end4.i406.if.end232_crit_edge, label %if.end4.i406.empty.preheader.i388_crit_edge

if.end4.i406.empty.preheader.i388_crit_edge:      ; preds = %if.end4.i406
  call void @__sanitizer_cov_trace_pc() #12
  br label %empty.preheader.i388

if.end4.i406.if.end232_crit_edge:                 ; preds = %if.end4.i406
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end232

if.end232:                                        ; preds = %if.end4.i406.if.end232_crit_edge, %empty.preheader.i388.if.end232_crit_edge, %if.end152.if.end232_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_grepping_flag to i32))
  %110 = load i32, ptr @kdb_grepping_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool233.not = icmp eq i32 %110, 0
  br i1 %tobool233.not, label %if.end232.kdb_print_out_crit_edge, label %land.lhs.true234

if.end232.kdb_print_out_crit_edge:                ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #12
  br label %kdb_print_out

land.lhs.true234:                                 ; preds = %if.end232
  %.b = load i1, ptr @suspend_grep, align 4
  br i1 %.b, label %land.lhs.true234.kdb_print_out_crit_edge, label %if.then236

land.lhs.true234.kdb_print_out_crit_edge:         ; preds = %land.lhs.true234
  call void @__sanitizer_cov_trace_pc() #12
  br label %kdb_print_out

if.then236:                                       ; preds = %land.lhs.true234
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %cphold.0 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %replaced_byte.0, ptr %cphold.0, align 1
  br label %kdb_print_out.sink.split.sink.split

kdb_print_out.sink.split.sink.split:              ; preds = %if.then236, %if.then91
  %incdec.ptr.sink = phi ptr [ %incdec.ptr, %if.then91 ], [ %cphold.0, %if.then236 ]
  %retlen.0.ph.ph = phi i32 [ 0, %if.then91 ], [ %call102, %if.then236 ]
  %saved_loglevel.1.ph.ph = phi i32 [ 0, %if.then91 ], [ %saved_loglevel.0, %if.then236 ]
  %call92 = call ptr @strcpy(ptr noundef nonnull @kdb_buffer, ptr noundef %incdec.ptr.sink) #14
  br label %kdb_print_out.sink.split

kdb_print_out.sink.split:                         ; preds = %kdb_print_out.sink.split.sink.split, %if.then80.kdb_print_out.sink.split_crit_edge, %if.then77.kdb_print_out.sink.split_crit_edge
  %retlen.0.ph = phi i32 [ 0, %if.then80.kdb_print_out.sink.split_crit_edge ], [ 0, %if.then77.kdb_print_out.sink.split_crit_edge ], [ %retlen.0.ph.ph, %kdb_print_out.sink.split.sink.split ]
  %saved_loglevel.1.ph = phi i32 [ 0, %if.then80.kdb_print_out.sink.split_crit_edge ], [ 0, %if.then77.kdb_print_out.sink.split_crit_edge ], [ %saved_loglevel.1.ph.ph, %kdb_print_out.sink.split.sink.split ]
  %call87 = call i32 @strlen(ptr noundef nonnull @kdb_buffer) #14
  %add.ptr239 = getelementptr i8, ptr @kdb_buffer, i32 %call87
  store ptr %add.ptr239, ptr @next_avail, align 4
  %sub240 = sub i32 256, %call87
  store i32 %sub240, ptr @size_avail, align 4
  br label %kdb_print_out

kdb_print_out:                                    ; preds = %kdb_print_out.sink.split, %land.lhs.true234.kdb_print_out_crit_edge, %if.end232.kdb_print_out_crit_edge
  %retlen.0 = phi i32 [ %call102, %land.lhs.true234.kdb_print_out_crit_edge ], [ %call102, %if.end232.kdb_print_out_crit_edge ], [ %retlen.0.ph, %kdb_print_out.sink.split ]
  %saved_loglevel.1 = phi i32 [ %saved_loglevel.0, %land.lhs.true234.kdb_print_out_crit_edge ], [ %saved_loglevel.0, %if.end232.kdb_print_out_crit_edge ], [ %saved_loglevel.1.ph, %kdb_print_out.sink.split ]
  store i1 false, ptr @suspend_grep, align 4
  %112 = ptrtoint ptr %logging to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool242.not = icmp eq i32 %113, 0
  br i1 %tobool242.not, label %kdb_print_out.do.end252_crit_edge, label %if.then243

kdb_print_out.do.end252_crit_edge:                ; preds = %kdb_print_out
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end252

if.then243:                                       ; preds = %kdb_print_out
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @console_printk to i32))
  store i32 %saved_loglevel.1, ptr @console_printk, align 4
  br label %do.end252

do.end252:                                        ; preds = %if.then243, %kdb_print_out.do.end252_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  store volatile i32 %asmresult1.i.le, ptr @kdb_printf_cpu, align 4
  br i1 %tobool.not, label %if.then275, label %do.end252.do.body277_crit_edge

do.end252.do.body277_crit_edge:                   ; preds = %do.end252
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body277

if.then275:                                       ; preds = %do.end252
  call void @__sanitizer_cov_trace_pc() #12
  call void @trace_hardirqs_on() #10
  br label %do.body277

do.body277:                                       ; preds = %if.then275, %do.end252.do.body277_crit_edge
  %114 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !102
  %and.i.i = and i32 %114, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool285.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool285.not, label %if.then289, label %do.body277.do.end292_crit_edge, !prof !103

do.body277.do.end292_crit_edge:                   ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end292

if.then289:                                       ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %do.end292

do.end292:                                        ; preds = %if.then289, %do.body277.do.end292_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #10, !srcloc !104
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %logging) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %colcount) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %linecount) #10
  ret i32 %retlen.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdbgetintenv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @gdbstub_msg_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kdbgetenv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kallsyms_symbol_complete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kallsyms_symbol_next(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kdb_gdb_state_pass(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81}
!llvm.named.register.sp = !{!83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @kdb_printf_cpu, !1, !"kdb_printf_cpu", i1 false, i1 false}
!1 = !{!"../kernel/debug/kdb/kdb_io.c", i32 33, i32 5}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/debug/kdb/kdb_io.c", i32 593, i32 21}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/debug/kdb/kdb_io.c", i32 610, i32 22}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/debug/kdb/kdb_io.c", i32 614, i32 22}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/debug/kdb/kdb_io.c", i32 618, i32 22}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/debug/kdb/kdb_io.c", i32 740, i32 4}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @vkdb_printf._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @vkdb_printf._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/debug/kdb/kdb_io.c", i32 742, i32 4}
!18 = !{ptr @vkdb_printf._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @vkdb_printf._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/debug/kdb/kdb_io.c", i32 779, i32 26}
!22 = !{ptr @vkdb_printf._entry.11, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../kernel/debug/kdb/kdb_io.c", i32 787, i32 4}
!24 = !{ptr @vkdb_printf._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/debug/kdb/kdb_io.c", i32 802, i32 15}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/debug/kdb/kdb_io.c", i32 804, i32 15}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../kernel/debug/kdb/kdb_io.c", i32 813, i32 18}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/debug/kdb/kdb_io.c", i32 813, i32 37}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../kernel/debug/kdb/kdb_io.c", i32 822, i32 9}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../kernel/debug/kdb/kdb_io.c", i32 825, i32 16}
!37 = !{ptr @__ksymtab_kdb_printf, !38, !"__ksymtab_kdb_printf", i1 false, i1 false}
!38 = !{!"../kernel/debug/kdb/kdb_io.c", i32 870, i32 1}
!39 = !{ptr @kdb_prompt_str, !40, !"kdb_prompt_str", i1 false, i1 false}
!40 = !{!"../kernel/debug/kdb/kdb_io.c", i32 30, i32 6}
!41 = !{ptr @kdb_trap_printk, !42, !"kdb_trap_printk", i1 false, i1 false}
!42 = !{!"../kernel/debug/kdb/kdb_io.c", i32 32, i32 5}
!43 = !{ptr @kdb_buffer, !44, !"kdb_buffer", i1 false, i1 false}
!44 = !{!"../kernel/debug/kdb/kdb_io.c", i32 504, i32 13}
!45 = !{ptr @size_avail, !46, !"size_avail", i1 false, i1 false}
!46 = !{!"../kernel/debug/kdb/kdb_io.c", i32 506, i32 13}
!47 = distinct !{null, !48, !"suspend_grep", i1 false, i1 false}
!48 = !{!"../kernel/debug/kdb/kdb_io.c", i32 507, i32 13}
!49 = !{ptr @kdb_read.tmpbuffer, !50, !"tmpbuffer", i1 false, i1 false}
!50 = !{!"../kernel/debug/kdb/kdb_io.c", i32 204, i32 14}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/debug/kdb/kdb_io.c", i32 214, i32 22}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../kernel/debug/kdb/kdb_io.c", i32 240, i32 15}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../kernel/debug/kdb/kdb_io.c", i32 262, i32 15}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../kernel/debug/kdb/kdb_io.c", i32 285, i32 15}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../kernel/debug/kdb/kdb_io.c", i32 294, i32 14}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../kernel/debug/kdb/kdb_io.c", i32 300, i32 15}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../kernel/debug/kdb/kdb_io.c", i32 332, i32 15}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../kernel/debug/kdb/kdb_io.c", i32 335, i32 16}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../kernel/debug/kdb/kdb_io.c", i32 346, i32 17}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../kernel/debug/kdb/kdb_io.c", i32 348, i32 17}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../kernel/debug/kdb/kdb_io.c", i32 352, i32 16}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../kernel/debug/kdb/kdb_io.c", i32 375, i32 16}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../kernel/debug/kdb/kdb_io.c", i32 398, i32 29}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../kernel/debug/kdb/kdb_io.c", i32 400, i32 20}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../kernel/debug/kdb/kdb_io.c", i32 405, i32 30}
!81 = !{ptr @next_avail, !82, !"next_avail", i1 false, i1 false}
!82 = !{!"../kernel/debug/kdb/kdb_io.c", i32 505, i32 14}
!83 = !{!"sp"}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
!94 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!95 = !{i64 763273, i64 763334}
!96 = !{i64 2154103985}
!97 = !{i64 869065, i64 869086, i64 869109, i64 869128, i64 869147}
!98 = !{i64 2154104394}
!99 = !{i64 2154104669}
!100 = !{i64 2154104511}
!101 = !{i64 2154110907}
!102 = !{i64 766005}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{i64 766290}
