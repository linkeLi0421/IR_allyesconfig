; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_printk.c_pt.bc'
source_filename = "../kernel/trace/trace_printk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__trace_bprintk\22, \22a\22\09"
module asm "\09.weak\09__crc___trace_bprintk\09\09\09\09"
module asm "\09.long\09__crc___trace_bprintk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___trace_bprintk:\09\09\09\09\09"
module asm "\09.asciz \09\22__trace_bprintk\22\09\09\09\09\09"
module asm "__kstrtabns___trace_bprintk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__ftrace_vbprintk\22, \22a\22\09"
module asm "\09.weak\09__crc___ftrace_vbprintk\09\09\09\09"
module asm "\09.long\09__crc___ftrace_vbprintk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ftrace_vbprintk:\09\09\09\09\09"
module asm "\09.asciz \09\22__ftrace_vbprintk\22\09\09\09\09\09"
module asm "__kstrtabns___ftrace_vbprintk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__trace_printk\22, \22a\22\09"
module asm "\09.weak\09__crc___trace_printk\09\09\09\09"
module asm "\09.long\09__crc___trace_printk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___trace_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22__trace_printk\22\09\09\09\09\09"
module asm "__kstrtabns___trace_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__ftrace_vprintk\22, \22a\22\09"
module asm "\09.weak\09__crc___ftrace_vprintk\09\09\09\09"
module asm "\09.long\09__crc___ftrace_vprintk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ftrace_vprintk:\09\09\09\09\09"
module asm "\09.asciz \09\22__ftrace_vprintk\22\09\09\09\09\09"
module asm "__kstrtabns___ftrace_vprintk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.__va_list = type { ptr }
%struct.trace_bprintk_fmt = type { %struct.list_head, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }

@trace_printk_enabled = internal unnamed_addr global i8 1, section ".data..read_mostly", align 1
@__kstrtab___trace_bprintk = external dso_local constant [0 x i8], align 1
@__kstrtabns___trace_bprintk = external dso_local constant [0 x i8], align 1
@__ksymtab___trace_bprintk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__trace_bprintk to i32), ptr @__kstrtab___trace_bprintk, ptr @__kstrtabns___trace_bprintk }, section "___ksymtab_gpl+__trace_bprintk", align 4
@__kstrtab___ftrace_vbprintk = external dso_local constant [0 x i8], align 1
@__kstrtabns___ftrace_vbprintk = external dso_local constant [0 x i8], align 1
@__ksymtab___ftrace_vbprintk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ftrace_vbprintk to i32), ptr @__kstrtab___ftrace_vbprintk, ptr @__kstrtabns___ftrace_vbprintk }, section "___ksymtab_gpl+__ftrace_vbprintk", align 4
@__kstrtab___trace_printk = external dso_local constant [0 x i8], align 1
@__kstrtabns___trace_printk = external dso_local constant [0 x i8], align 1
@__ksymtab___trace_printk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__trace_printk to i32), ptr @__kstrtab___trace_printk, ptr @__kstrtabns___trace_printk }, section "___ksymtab_gpl+__trace_printk", align 4
@__kstrtab___ftrace_vprintk = external dso_local constant [0 x i8], align 1
@__kstrtabns___ftrace_vprintk = external dso_local constant [0 x i8], align 1
@__ksymtab___ftrace_vprintk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ftrace_vprintk to i32), ptr @__kstrtab___ftrace_vprintk, ptr @__kstrtabns___ftrace_vprintk }, section "___ksymtab_gpl+__ftrace_vprintk", align 4
@__start___tracepoint_str = external dso_local global [0 x ptr], align 4
@__stop___tracepoint_str = external dso_local global [0 x ptr], align 4
@__initcall__kmod_trace_printk__262_393_init_trace_printk_function_export5 = internal global ptr @init_trace_printk_function_export, section ".initcall5.init", align 4
@__initcall__kmod_trace_printk__263_400_init_trace_printkearly = internal global ptr @init_trace_printk, section ".initcallearly.init", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"printk_formats\00", [17 x i8] zeroinitializer }, align 32
@ftrace_formats_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ftrace_formats_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@show_format_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @t_start, ptr @t_stop, ptr @t_next, ptr @t_show }, [16 x i8] zeroinitializer }, align 32
@btrace_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @btrace_mutex, i64 52), ptr getelementptr (i8, ptr @btrace_mutex, i64 52) }, ptr @btrace_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"btrace_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"btrace_mutex\00", [19 x i8] zeroinitializer }, align 32
@__stop___trace_bprintk_fmt = external dso_local global [0 x ptr], align 4
@__start___trace_bprintk_fmt = external dso_local global [0 x ptr], align 4
@trace_bprintk_fmt_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @trace_bprintk_fmt_list, ptr @trace_bprintk_fmt_list }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0x%lx : \22\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\\n\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\\t\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\\\22\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\22\0A\00", [29 x i8] zeroinitializer }, align 32
@module_trace_bprintk_format_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @module_trace_bprintk_format_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__llvm_gcov_ctr = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.8 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.9 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.10 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.11 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.12 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.13 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.14 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.15 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.16 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.27 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.28 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.29 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.33 = internal global [27 x i64] zeroinitializer
@__llvm_gcov_ctr.34 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.35 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.37 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.38 = internal global [2 x i64] zeroinitializer
@0 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_printk.gcda\00", [32 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [32 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 1485409330, i32 1536090230 }, %emit_function_args_ty { i32 1, i32 -877987002, i32 1536090230 }, %emit_function_args_ty { i32 2, i32 1595990432, i32 1536090230 }, %emit_function_args_ty { i32 3, i32 -602151076, i32 1536090230 }, %emit_function_args_ty { i32 4, i32 591270224, i32 1536090230 }, %emit_function_args_ty { i32 5, i32 354289497, i32 1536090230 }, %emit_function_args_ty { i32 6, i32 -496468317, i32 1536090230 }, %emit_function_args_ty { i32 7, i32 -573916469, i32 1536090230 }, %emit_function_args_ty { i32 8, i32 -1403423839, i32 1536090230 }, %emit_function_args_ty { i32 9, i32 -690335415, i32 1536090230 }, %emit_function_args_ty { i32 10, i32 -331662270, i32 1536090230 }, %emit_function_args_ty { i32 11, i32 -435456558, i32 1536090230 }, %emit_function_args_ty { i32 12, i32 -1175289231, i32 1536090230 }, %emit_function_args_ty { i32 13, i32 1297973029, i32 1536090230 }, %emit_function_args_ty { i32 14, i32 -1047987827, i32 1536090230 }, %emit_function_args_ty { i32 15, i32 1021060580, i32 1536090230 }, %emit_function_args_ty { i32 16, i32 181361786, i32 1536090230 }, %emit_function_args_ty { i32 17, i32 -963947540, i32 1536090230 }, %emit_function_args_ty { i32 18, i32 -87647396, i32 1536090230 }, %emit_function_args_ty { i32 19, i32 1522073108, i32 1536090230 }, %emit_function_args_ty { i32 20, i32 502848774, i32 1536090230 }, %emit_function_args_ty { i32 21, i32 -10115036, i32 1536090230 }, %emit_function_args_ty { i32 22, i32 -400554785, i32 1536090230 }, %emit_function_args_ty { i32 23, i32 -481620889, i32 1536090230 }, %emit_function_args_ty { i32 24, i32 -1159899074, i32 1536090230 }, %emit_function_args_ty { i32 25, i32 -1782918348, i32 1536090230 }, %emit_function_args_ty { i32 26, i32 795548855, i32 1536090230 }, %emit_function_args_ty { i32 27, i32 727036892, i32 1536090230 }, %emit_function_args_ty { i32 28, i32 1841983822, i32 1536090230 }, %emit_function_args_ty { i32 29, i32 1624494247, i32 1536090230 }, %emit_function_args_ty { i32 30, i32 -963894156, i32 1536090230 }, %emit_function_args_ty { i32 31, i32 1112388048, i32 1536090230 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [32 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.8 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.9 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.10 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.11 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.12 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.13 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.14 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.15 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.16 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.17 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.18 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.20 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.21 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.22 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.23 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.24 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.25 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.26 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.27 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.28 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.29 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.30 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.31 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.32 }, %emit_arcs_args_ty { i32 27, ptr @__llvm_gcov_ctr.33 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.34 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.35 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.36 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.37 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.38 }]
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 9, i64 10, i64 34, i64 92]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 387, i32 20 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"ftrace_formats_fops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 372, i32 37 }
@___asan_gen_.45 = private unnamed_addr constant [20 x i8] c"show_format_seq_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 353, i32 36 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"btrace_mutex\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 31, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant [23 x i8] c"trace_bprintk_fmt_list\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 28, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 320, i32 16 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 328, i32 16 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 331, i32 16 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 337, i32 16 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 343, i32 14 }
@___asan_gen_.75 = private unnamed_addr constant [31 x i8] c"module_trace_bprintk_format_nb\00", align 1
@___asan_gen_.76 = private constant [31 x i8] c"../kernel/trace/trace_printk.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 196, i32 23 }
@___asan_gen_.78 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__initcall__kmod_trace_printk__262_393_init_trace_printk_function_export5, ptr @__initcall__kmod_trace_printk__263_400_init_trace_printkearly, ptr @__ksymtab___ftrace_vbprintk, ptr @__ksymtab___ftrace_vprintk, ptr @__ksymtab___trace_bprintk, ptr @__ksymtab___trace_printk, ptr @.str, ptr @ftrace_formats_fops, ptr @show_format_seq_ops, ptr @btrace_mutex, ptr @.str.1, ptr @.str.2, ptr @trace_bprintk_fmt_list, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @module_trace_bprintk_format_nb], section "llvm.metadata"
@1 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_formats_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_format_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrace_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_bprintk_fmt_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @module_trace_bprintk_format_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @trace_printk_control(i1 noundef zeroext %enabled) local_unnamed_addr #0 align 64 !dbg !50 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !53
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr, align 8
  %frombool = zext i1 %enabled to i8
  store i8 %frombool, ptr @trace_printk_enabled, align 1, !dbg !54
  ret void, !dbg !55
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__trace_bprintk(i32 noundef %ip, ptr noundef %fmt, ...) #1 align 64 !dbg !56 {
entry:
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #16, !dbg !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #17, !dbg !58
  %0 = ptrtoint ptr %ap to i32, !dbg !59
  call void @__asan_store4_noabort(i32 %0), !dbg !59
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !dbg !59, !annotation !60
  %tobool.not = icmp eq ptr %fmt, null, !dbg !61
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !61, !prof !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !63
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.8, align 16, !dbg !63
  %1 = add i64 %gcov_ctr, 1, !dbg !63
  store i64 %1, ptr @__llvm_gcov_ctr.8, align 16, !dbg !63
  br label %cleanup, !dbg !63

if.end:                                           ; preds = %entry
  %2 = load i8, ptr @trace_printk_enabled, align 1, !dbg !64, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2), !dbg !64
  %tobool4.not = icmp eq i8 %2, 0, !dbg !64
  br i1 %tobool4.not, label %if.then5, label %if.end6, !dbg !66

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !67
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 1), align 8, !dbg !67
  %3 = add i64 %gcov_ctr8, 1, !dbg !67
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 1), align 8, !dbg !67
  br label %cleanup, !dbg !67

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !68
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 2), align 16, !dbg !68
  %4 = add i64 %gcov_ctr9, 1, !dbg !68
  store i64 %4, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 2), align 16, !dbg !68
  call void @llvm.va_start(ptr nonnull %ap), !dbg !68
  %5 = ptrtoint ptr %ap to i32, !dbg !69
  call void @__asan_load4_noabort(i32 %5), !dbg !69
  %.fca.0.load = load i32, ptr %ap, align 4, !dbg !69
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0, !dbg !69
  %call = call i32 @trace_vbprintk(i32 noundef %ip, ptr noundef nonnull %fmt, [1 x i32] %.fca.0.insert) #17, !dbg !69
  call void @llvm.va_end(ptr nonnull %ap), !dbg !70
  br label %cleanup, !dbg !71

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end6 ], [ 0, %if.then5 ], !dbg !72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #17, !dbg !73
  ret i32 %retval.0, !dbg !73
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_vbprintk(i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ftrace_vbprintk(i32 noundef %ip, ptr noundef %fmt, [1 x i32] %ap.coerce) #1 align 64 !dbg !74 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !75
  %tobool.not = icmp eq ptr %fmt, null, !dbg !76
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !76, !prof !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !77
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.9, align 16, !dbg !77
  %0 = add i64 %gcov_ctr, 1, !dbg !77
  store i64 %0, ptr @__llvm_gcov_ctr.9, align 16, !dbg !77
  br label %return, !dbg !77

if.end:                                           ; preds = %entry
  %1 = load i8, ptr @trace_printk_enabled, align 1, !dbg !78, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1), !dbg !78
  %tobool4.not = icmp eq i8 %1, 0, !dbg !78
  br i1 %tobool4.not, label %if.then5, label %if.end6, !dbg !79

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !80
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 1), align 8, !dbg !80
  %2 = add i64 %gcov_ctr8, 1, !dbg !80
  store i64 %2, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 1), align 8, !dbg !80
  br label %return, !dbg !80

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !81
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 2), align 16, !dbg !81
  %3 = add i64 %gcov_ctr9, 1, !dbg !81
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 2), align 16, !dbg !81
  %call = tail call i32 @trace_vbprintk(i32 noundef %ip, ptr noundef nonnull %fmt, [1 x i32] %ap.coerce) #17, !dbg !82
  br label %return, !dbg !83

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end6 ], [ 0, %if.then5 ], !dbg !84
  ret i32 %retval.0, !dbg !85
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__trace_printk(i32 noundef %ip, ptr noundef %fmt, ...) #1 align 64 !dbg !86 {
entry:
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #16, !dbg !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #17, !dbg !88
  %0 = ptrtoint ptr %ap to i32, !dbg !89
  call void @__asan_store4_noabort(i32 %0), !dbg !89
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !dbg !89, !annotation !60
  %1 = load i8, ptr @trace_printk_enabled, align 1, !dbg !90, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1), !dbg !90
  %tobool.not = icmp eq i8 %1, 0, !dbg !90
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !91

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !92
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.10, align 8, !dbg !92
  %2 = add i64 %gcov_ctr, 1, !dbg !92
  store i64 %2, ptr @__llvm_gcov_ctr.10, align 8, !dbg !92
  br label %cleanup, !dbg !92

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !93
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 1), align 8, !dbg !93
  %3 = add i64 %gcov_ctr2, 1, !dbg !93
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.10, i32 0, i32 1), align 8, !dbg !93
  call void @llvm.va_start(ptr nonnull %ap), !dbg !93
  %4 = ptrtoint ptr %ap to i32, !dbg !94
  call void @__asan_load4_noabort(i32 %4), !dbg !94
  %.fca.0.load = load i32, ptr %ap, align 4, !dbg !94
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0, !dbg !94
  %call = call i32 @trace_vprintk(i32 noundef %ip, ptr noundef %fmt, [1 x i32] %.fca.0.insert) #17, !dbg !94
  call void @llvm.va_end(ptr nonnull %ap), !dbg !95
  br label %cleanup, !dbg !96

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %if.then ], !dbg !97
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #17, !dbg !98
  ret i32 %retval.0, !dbg !98
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_vprintk(i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ftrace_vprintk(i32 noundef %ip, ptr noundef %fmt, [1 x i32] %ap.coerce) #1 align 64 !dbg !99 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !100
  %0 = load i8, ptr @trace_printk_enabled, align 1, !dbg !101, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0), !dbg !101
  %tobool.not = icmp eq i8 %0, 0, !dbg !101
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !102

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !103
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.11, align 8, !dbg !103
  %1 = add i64 %gcov_ctr, 1, !dbg !103
  store i64 %1, ptr @__llvm_gcov_ctr.11, align 8, !dbg !103
  br label %return, !dbg !103

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !104
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 1), align 8, !dbg !104
  %2 = add i64 %gcov_ctr2, 1, !dbg !104
  store i64 %2, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 1), align 8, !dbg !104
  %call = tail call i32 @trace_vprintk(i32 noundef %ip, ptr noundef %fmt, [1 x i32] %ap.coerce) #17, !dbg !105
  br label %return, !dbg !106

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %if.then ], !dbg !107
  ret i32 %retval.0, !dbg !108
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @trace_is_tracepoint_string(ptr noundef readnone %str) local_unnamed_addr #5 align 64 !dbg !109 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !110
  br i1 icmp ult (ptr @__start___tracepoint_str, ptr @__stop___tracepoint_str), label %for.body.preheader, label %entry.cleanup_crit_edge, !dbg !111

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !111
  br label %cleanup, !dbg !111

for.body.preheader:                               ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__start___tracepoint_str to i32)), !dbg !112
  %0 = load ptr, ptr @__start___tracepoint_str, align 4, !dbg !112
  %cmp114 = icmp eq ptr %0, %str, !dbg !113
  br i1 %cmp114, label %for.body.preheader.cleanup_crit_edge, label %for.inc.lr.ph, !dbg !114

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16, !dbg !114
  br label %cleanup, !dbg !114

for.inc.lr.ph:                                    ; preds = %for.body.preheader
  %.promoted = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 1), align 8
  br label %for.inc, !dbg !114

for.body:                                         ; preds = %for.inc
  %1 = ptrtoint ptr %incdec.ptr to i32, !dbg !112
  call void @__asan_load4_noabort(i32 %1), !dbg !112
  %2 = load ptr, ptr %incdec.ptr, align 4, !dbg !112
  %cmp1 = icmp eq ptr %2, %str, !dbg !113
  br i1 %cmp1, label %for.body.cleanup.loopexit_crit_edge, label %for.body.for.inc_crit_edge, !dbg !114, !llvm.loop !115

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !114
  br label %for.inc, !dbg !114

for.body.cleanup.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !114
  br label %cleanup.loopexit, !dbg !114

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.inc.lr.ph
  %3 = phi i64 [ %.promoted, %for.inc.lr.ph ], [ %4, %for.body.for.inc_crit_edge ]
  %ptr.0815 = phi ptr [ @__start___tracepoint_str, %for.inc.lr.ph ], [ %incdec.ptr, %for.body.for.inc_crit_edge ]
  %4 = add i64 %3, 1, !dbg !117
  %incdec.ptr = getelementptr ptr, ptr %ptr.0815, i32 1, !dbg !117
  %cmp = icmp ult ptr %incdec.ptr, @__stop___tracepoint_str, !dbg !118
  br i1 %cmp, label %for.body, label %for.inc.cleanup.loopexit_crit_edge, !dbg !111, !llvm.loop !115

for.inc.cleanup.loopexit_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !111
  br label %cleanup.loopexit, !dbg !111

cleanup.loopexit:                                 ; preds = %for.inc.cleanup.loopexit_crit_edge, %for.body.cleanup.loopexit_crit_edge
  %.sink.ph = phi ptr [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 2), %for.inc.cleanup.loopexit_crit_edge ], [ @__llvm_gcov_ctr.12, %for.body.cleanup.loopexit_crit_edge ]
  store i64 %4, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 1), align 8, !dbg !117
  br label %cleanup, !dbg !119

cleanup:                                          ; preds = %cleanup.loopexit, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 2), %entry.cleanup_crit_edge ], [ @__llvm_gcov_ctr.12, %for.body.preheader.cleanup_crit_edge ], [ %.sink.ph, %cleanup.loopexit ]
  %cmp7 = phi i1 [ icmp ult (ptr @__start___tracepoint_str, ptr @__stop___tracepoint_str), %entry.cleanup_crit_edge ], [ icmp ult (ptr @__start___tracepoint_str, ptr @__stop___tracepoint_str), %for.body.preheader.cleanup_crit_edge ], [ %cmp, %cleanup.loopexit ]
  %5 = ptrtoint ptr %.sink to i32, !dbg !119
  call void @__asan_load8_noabort(i32 %5), !dbg !119
  %gcov_ctr3 = load i64, ptr %.sink, align 16, !dbg !119
  %6 = add i64 %gcov_ctr3, 1, !dbg !119
  store i64 %6, ptr %.sink, align 16, !dbg !119
  ret i1 %cmp7, !dbg !120
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_trace_printk_function_export() #6 section ".init.text" align 64 !dbg !121 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !122
  %call = tail call i32 @tracing_init_dentry() #17, !dbg !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !124
  %tobool.not = icmp eq i32 %call, 0, !dbg !124
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !124

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !125
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !125
  %0 = add i64 %gcov_ctr, 1, !dbg !125
  store i64 %0, ptr @__llvm_gcov_ctr.13, align 8, !dbg !125
  br label %cleanup, !dbg !125

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !126
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 1), align 8, !dbg !126
  %1 = add i64 %gcov_ctr2, 1, !dbg !126
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 1), align 8, !dbg !126
  %call1 = tail call ptr @trace_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 288, ptr noundef null, ptr noundef null, ptr noundef nonnull @ftrace_formats_fops) #17, !dbg !126
  br label %cleanup, !dbg !127

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0, !dbg !128
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_trace_printk() #6 section ".init.text" align 64 !dbg !129 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !130
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.14, align 8, !dbg !131
  %0 = add i64 %gcov_ctr, 1, !dbg !131
  store i64 %0, ptr @__llvm_gcov_ctr.14, align 8, !dbg !131
  %call = tail call i32 @register_module_notifier(ptr noundef nonnull @module_trace_bprintk_format_nb) #17, !dbg !131
  ret i32 %call, !dbg !132
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_init_dentry() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftrace_formats_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #1 align 64 !dbg !133 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !134
  %call = tail call i32 @security_locked_down(i32 noundef 22) #17, !dbg !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !136
  %tobool.not = icmp eq i32 %call, 0, !dbg !136
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !136

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !137
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.15, align 8, !dbg !137
  %0 = add i64 %gcov_ctr, 1, !dbg !137
  store i64 %0, ptr @__llvm_gcov_ctr.15, align 8, !dbg !137
  br label %cleanup, !dbg !138

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !139
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 1), align 8, !dbg !139
  %1 = add i64 %gcov_ctr2, 1, !dbg !139
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 1), align 8, !dbg !139
  %call1 = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @show_format_seq_ops) #17, !dbg !140
  br label %cleanup, !dbg !141

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end ], !dbg !142
  ret i32 %retval.0, !dbg !143
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_locked_down(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @t_start(ptr nocapture noundef readnone %m, ptr nocapture noundef readonly %pos) #1 align 64 !dbg !144 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !145
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.16, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.16, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.20, align 8, !dbg !146
  %1 = add i64 %gcov_ctr.i, 1, !dbg !146
  store i64 %1, ptr @__llvm_gcov_ctr.20, align 8, !dbg !146
  tail call void @mutex_lock_nested(ptr noundef nonnull @btrace_mutex, i32 noundef 0) #17, !dbg !146
  %2 = ptrtoint ptr %pos to i32, !dbg !149
  call void @__asan_load8_noabort(i32 %2), !dbg !149
  %3 = load i64, ptr %pos, align 8, !dbg !149
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 sext (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4) to i64)), !dbg !152
  %cmp.i = icmp slt i64 %3, sext (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4) to i64), !dbg !152
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !149

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !153
  %gcov_ctr.i1 = load i64, ptr @__llvm_gcov_ctr.21, align 16, !dbg !153
  %4 = add i64 %gcov_ctr.i1, 1, !dbg !153
  store i64 %4, ptr @__llvm_gcov_ctr.21, align 16, !dbg !153
  %5 = ptrtoint ptr %pos to i32, !dbg !154
  call void @__asan_load8_noabort(i32 %5), !dbg !154
  %6 = load i64, ptr %pos, align 8, !dbg !154
  %idx.ext.i = trunc i64 %6 to i32, !dbg !155
  %add.ptr.i = getelementptr ptr, ptr @__start___trace_bprintk_fmt, i32 %idx.ext.i, !dbg !155
  br label %find_next.exit, !dbg !156

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 sext (i32 add (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4), i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___tracepoint_str to i32), i32 ptrtoint (ptr @__start___tracepoint_str to i32)), i32 4)) to i64)), !dbg !157
  %cmp3.i = icmp slt i64 %3, sext (i32 add (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4), i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___tracepoint_str to i32), i32 ptrtoint (ptr @__start___tracepoint_str to i32)), i32 4)) to i64), !dbg !157
  br i1 %cmp3.i, label %if.then5.i, label %if.end9.i, !dbg !158

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !159
  %gcov_ctr13.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 1), align 8, !dbg !159
  %7 = add i64 %gcov_ctr13.i, 1, !dbg !159
  store i64 %7, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 1), align 8, !dbg !159
  %8 = ptrtoint ptr %pos to i32, !dbg !160
  call void @__asan_load8_noabort(i32 %8), !dbg !160
  %9 = load i64, ptr %pos, align 8, !dbg !160
  %10 = trunc i64 %9 to i32, !dbg !161
  %idx.ext7.i = sub i32 %10, sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4), !dbg !161
  %add.ptr8.i = getelementptr ptr, ptr @__start___tracepoint_str, i32 %idx.ext7.i, !dbg !161
  br label %find_next.exit, !dbg !162

if.end9.i:                                        ; preds = %if.end.i
  %gcov_ctr14.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 2), align 16, !dbg !163
  %11 = add i64 %gcov_ctr14.i, 1, !dbg !163
  store i64 %11, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 2), align 16, !dbg !163
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %12 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.23, align 8
  %13 = load volatile ptr, ptr @trace_bprintk_fmt_list, align 4, !dbg !164
  %cmp.i.not.i.i = icmp eq ptr %13, @trace_bprintk_fmt_list, !dbg !170
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %if.end9.i.for.body.i.i_crit_edge, !dbg !171

if.end9.i.for.body.i.i_crit_edge:                 ; preds = %if.end9.i
  br label %for.body.i.i, !dbg !171

if.then.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !172
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.22, align 16, !dbg !172
  %14 = add i64 %gcov_ctr.i.i, 1, !dbg !172
  store i64 %14, ptr @__llvm_gcov_ctr.22, align 16, !dbg !172
  br label %find_next.exit, !dbg !172

for.body.i.i:                                     ; preds = %if.end11.i.i.for.body.i.i_crit_edge, %if.end9.i.for.body.i.i_crit_edge
  %p.05.i.i = phi ptr [ %p.0.i.i, %if.end11.i.i.for.body.i.i_crit_edge ], [ %13, %if.end9.i.for.body.i.i_crit_edge ]
  %start_index.addr.04.i.i = phi i32 [ %inc.i.i, %if.end11.i.i.for.body.i.i_crit_edge ], [ add (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___tracepoint_str to i32), i32 ptrtoint (ptr @__start___tracepoint_str to i32)), i32 4), i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4)), %if.end9.i.for.body.i.i_crit_edge ]
  %conv6.i.i = sext i32 %start_index.addr.04.i.i to i64, !dbg !173
  %15 = ptrtoint ptr %pos to i32, !dbg !174
  call void @__asan_load8_noabort(i32 %15), !dbg !174
  %16 = load i64, ptr %pos, align 8, !dbg !174
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %conv6.i.i), !dbg !175
  %cmp7.i.i = icmp eq i64 %16, %conv6.i.i, !dbg !175
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.end11.i.i, !dbg !173

if.then9.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !176
  %gcov_ctr34.i.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 2), align 16, !dbg !176
  %17 = add i64 %gcov_ctr34.i.i, 1, !dbg !176
  store i64 %17, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 2), align 16, !dbg !176
  %fmt10.i.i = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %p.05.i.i, i32 0, i32 1, !dbg !177
  br label %find_next.exit, !dbg !178

if.end11.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add i32 %start_index.addr.04.i.i, 1, !dbg !179
  %gcov_ctr35.i.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 3), align 8, !dbg !180
  %18 = add i64 %gcov_ctr35.i.i, 1, !dbg !180
  store i64 %18, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 3), align 8, !dbg !180
  %19 = ptrtoint ptr %p.05.i.i to i32, !dbg !180
  call void @__asan_load4_noabort(i32 %19), !dbg !180
  %p.0.i.i = load ptr, ptr %p.05.i.i, align 4, !dbg !180
  %cmp4.not.i.i = icmp eq ptr %p.0.i.i, @trace_bprintk_fmt_list, !dbg !180
  br i1 %cmp4.not.i.i, label %for.end.i.i, label %if.end11.i.i.for.body.i.i_crit_edge, !dbg !180, !llvm.loop !181

if.end11.i.i.for.body.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !180
  br label %for.body.i.i, !dbg !180

for.end.i.i:                                      ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !183
  %gcov_ctr36.i.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 4), align 16, !dbg !183
  %20 = add i64 %gcov_ctr36.i.i, 1, !dbg !183
  store i64 %20, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 4), align 16, !dbg !183
  br label %find_next.exit, !dbg !183

find_next.exit:                                   ; preds = %for.end.i.i, %if.then9.i.i, %if.then.i.i, %if.then5.i, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %add.ptr8.i, %if.then5.i ], [ null, %if.then.i.i ], [ %fmt10.i.i, %if.then9.i.i ], [ null, %for.end.i.i ], !dbg !184
  ret ptr %retval.0.i, !dbg !185
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @t_stop(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %p) #1 align 64 !dbg !186 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !187
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.17, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.24, align 8, !dbg !188
  %1 = add i64 %gcov_ctr.i, 1, !dbg !188
  store i64 %1, ptr @__llvm_gcov_ctr.24, align 8, !dbg !188
  tail call void @mutex_unlock(ptr noundef nonnull @btrace_mutex) #17, !dbg !188
  ret void, !dbg !191
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @t_next(ptr nocapture noundef readnone %m, ptr noundef %v, ptr nocapture noundef %pos) #7 align 64 !dbg !192 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !193
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.18, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.18, align 8
  %1 = ptrtoint ptr %pos to i32, !dbg !194
  call void @__asan_load8_noabort(i32 %1), !dbg !194
  %2 = load i64, ptr %pos, align 8, !dbg !194
  %inc = add i64 %2, 1, !dbg !194
  store i64 %inc, ptr %pos, align 8, !dbg !194
  %call = tail call fastcc ptr @find_next(ptr noundef %v, ptr noundef %pos), !dbg !195
  ret ptr %call, !dbg !196
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t_show(ptr noundef %m, ptr nocapture noundef readonly %v) #1 align 64 !dbg !197 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !198
  %0 = ptrtoint ptr %v to i32, !dbg !199
  call void @__asan_load4_noabort(i32 %0), !dbg !199
  %1 = load ptr, ptr %v, align 4, !dbg !199
  %tobool.not = icmp eq ptr %1, null, !dbg !200
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !201

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !202
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.19, align 16, !dbg !202
  %2 = add i64 %gcov_ctr, 1, !dbg !202
  store i64 %2, ptr @__llvm_gcov_ctr.19, align 16, !dbg !202
  br label %cleanup, !dbg !202

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %v to i32, !dbg !203
  call void @__asan_load4_noabort(i32 %3), !dbg !203
  %4 = load i32, ptr %v, align 4, !dbg !203
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %4) #17, !dbg !204
  br label %for.cond, !dbg !205

for.cond:                                         ; preds = %for.inc, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %for.inc ], !dbg !206
  %arrayidx = getelementptr i8, ptr %1, i32 %i.0, !dbg !207
  %5 = ptrtoint ptr %arrayidx to i32, !dbg !207
  call void @__asan_load1_noabort(i32 %5), !dbg !207
  %6 = load i8, ptr %arrayidx, align 1, !dbg !207
  %7 = zext i8 %6 to i64, !dbg !208
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values), !dbg !208
  switch i8 %6, label %sw.default [
    i8 0, label %for.end
    i8 10, label %sw.bb
    i8 9, label %sw.bb3
    i8 92, label %sw.bb4
    i8 34, label %sw.bb5
  ], !dbg !208

sw.bb:                                            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16, !dbg !209
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 2), align 16, !dbg !209
  %8 = add i64 %gcov_ctr10, 1, !dbg !209
  store i64 %8, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 2), align 16, !dbg !209
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.4) #17, !dbg !210
  br label %for.inc, !dbg !211

sw.bb3:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16, !dbg !212
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 3), align 8, !dbg !212
  %9 = add i64 %gcov_ctr11, 1, !dbg !212
  store i64 %9, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 3), align 8, !dbg !212
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.5) #17, !dbg !213
  br label %for.inc, !dbg !214

sw.bb4:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16, !dbg !215
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 4), align 16, !dbg !215
  %10 = add i64 %gcov_ctr12, 1, !dbg !215
  store i64 %10, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 4), align 16, !dbg !215
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 92) #17, !dbg !216
  br label %for.inc, !dbg !217

sw.bb5:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16, !dbg !218
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 5), align 8, !dbg !218
  %11 = add i64 %gcov_ctr13, 1, !dbg !218
  store i64 %11, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 5), align 8, !dbg !218
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.6) #17, !dbg !219
  br label %for.inc, !dbg !220

sw.default:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16, !dbg !221
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 6), align 16, !dbg !221
  %12 = add i64 %gcov_ctr14, 1, !dbg !221
  store i64 %12, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 6), align 16, !dbg !221
  %13 = ptrtoint ptr %arrayidx to i32, !dbg !222
  call void @__asan_load1_noabort(i32 %13), !dbg !222
  %14 = load i8, ptr %arrayidx, align 1, !dbg !222
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %14) #17, !dbg !223
  br label %for.inc, !dbg !224

for.inc:                                          ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb
  %inc = add i32 %i.0, 1, !dbg !225
  br label %for.cond, !dbg !208, !llvm.loop !226

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16, !dbg !228
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 1), align 8, !dbg !228
  %15 = add i64 %gcov_ctr9, 1, !dbg !228
  store i64 %15, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 1), align 8, !dbg !228
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.7) #17, !dbg !229
  br label %cleanup, !dbg !230

cleanup:                                          ; preds = %for.end, %if.then
  ret i32 0, !dbg !231
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_next(ptr noundef readonly %v, ptr nocapture noundef readonly %pos) unnamed_addr #7 align 64 !dbg !150 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !232
  %0 = ptrtoint ptr %pos to i32, !dbg !233
  call void @__asan_load8_noabort(i32 %0), !dbg !233
  %1 = load i64, ptr %pos, align 8, !dbg !233
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 sext (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4) to i64)), !dbg !234
  %cmp = icmp slt i64 %1, sext (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4) to i64), !dbg !234
  br i1 %cmp, label %if.then, label %if.end, !dbg !233

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !235
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.21, align 16, !dbg !235
  %2 = add i64 %gcov_ctr, 1, !dbg !235
  store i64 %2, ptr @__llvm_gcov_ctr.21, align 16, !dbg !235
  %3 = ptrtoint ptr %pos to i32, !dbg !236
  call void @__asan_load8_noabort(i32 %3), !dbg !236
  %4 = load i64, ptr %pos, align 8, !dbg !236
  %idx.ext = trunc i64 %4 to i32, !dbg !237
  %add.ptr = getelementptr ptr, ptr @__start___trace_bprintk_fmt, i32 %idx.ext, !dbg !237
  br label %cleanup, !dbg !238

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 sext (i32 add (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4), i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___tracepoint_str to i32), i32 ptrtoint (ptr @__start___tracepoint_str to i32)), i32 4)) to i64)), !dbg !239
  %cmp3 = icmp slt i64 %1, sext (i32 add (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4), i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___tracepoint_str to i32), i32 ptrtoint (ptr @__start___tracepoint_str to i32)), i32 4)) to i64), !dbg !239
  br i1 %cmp3, label %if.then5, label %if.end9, !dbg !240

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !241
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 1), align 8, !dbg !241
  %5 = add i64 %gcov_ctr13, 1, !dbg !241
  store i64 %5, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 1), align 8, !dbg !241
  %6 = ptrtoint ptr %pos to i32, !dbg !242
  call void @__asan_load8_noabort(i32 %6), !dbg !242
  %7 = load i64, ptr %pos, align 8, !dbg !242
  %8 = trunc i64 %7 to i32, !dbg !243
  %idx.ext7 = sub i32 %8, sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4), !dbg !243
  %add.ptr8 = getelementptr ptr, ptr @__start___tracepoint_str, i32 %idx.ext7, !dbg !243
  br label %cleanup, !dbg !244

if.end9:                                          ; preds = %if.end
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 2), align 16, !dbg !245
  %9 = add i64 %gcov_ctr14, 1, !dbg !245
  store i64 %9, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 2), align 16, !dbg !245
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %10 = add i64 %gcov_ctr.i.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.23, align 8
  %11 = load volatile ptr, ptr @trace_bprintk_fmt_list, align 4, !dbg !246
  %cmp.i.not.i = icmp eq ptr %11, @trace_bprintk_fmt_list, !dbg !249
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end.i, !dbg !250

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16, !dbg !251
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.22, align 16, !dbg !251
  %12 = add i64 %gcov_ctr.i, 1, !dbg !251
  store i64 %12, ptr @__llvm_gcov_ctr.22, align 16, !dbg !251
  br label %cleanup, !dbg !251

if.end.i:                                         ; preds = %if.end9
  %tobool1.not.i = icmp eq ptr %v, null, !dbg !252
  br i1 %tobool1.not.i, label %if.end.i.for.body.i.preheader_crit_edge, label %lor.lhs.false.i, !dbg !253

if.end.i.for.body.i.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !253
  br label %for.body.i.preheader, !dbg !253

lor.lhs.false.i:                                  ; preds = %if.end.i
  %gcov_ctr33.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 1), align 8, !dbg !254
  %13 = add i64 %gcov_ctr33.i, 1, !dbg !254
  store i64 %13, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 1), align 8, !dbg !254
  %14 = ptrtoint ptr %pos to i32, !dbg !255
  call void @__asan_load8_noabort(i32 %14), !dbg !255
  %15 = load i64, ptr %pos, align 8, !dbg !255
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 sext (i32 add (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___tracepoint_str to i32), i32 ptrtoint (ptr @__start___tracepoint_str to i32)), i32 4), i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4)) to i64)), !dbg !256
  %cmp.i = icmp eq i64 %15, sext (i32 add (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___tracepoint_str to i32), i32 ptrtoint (ptr @__start___tracepoint_str to i32)), i32 4), i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4)) to i64), !dbg !256
  br i1 %cmp.i, label %lor.lhs.false.i.for.body.i.preheader_crit_edge, label %if.end16.i, !dbg !257

lor.lhs.false.i.for.body.i.preheader_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !257
  br label %for.body.i.preheader, !dbg !257

for.body.i.preheader:                             ; preds = %lor.lhs.false.i.for.body.i.preheader_crit_edge, %if.end.i.for.body.i.preheader_crit_edge
  br label %for.body.i, !dbg !258

for.body.i:                                       ; preds = %if.end11.i.for.body.i_crit_edge, %for.body.i.preheader
  %p.05.i = phi ptr [ %p.0.i, %if.end11.i.for.body.i_crit_edge ], [ %11, %for.body.i.preheader ]
  %start_index.addr.04.i = phi i32 [ %inc.i, %if.end11.i.for.body.i_crit_edge ], [ add (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___tracepoint_str to i32), i32 ptrtoint (ptr @__start___tracepoint_str to i32)), i32 4), i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop___trace_bprintk_fmt to i32), i32 ptrtoint (ptr @__start___trace_bprintk_fmt to i32)), i32 4)), %for.body.i.preheader ]
  %conv6.i = sext i32 %start_index.addr.04.i to i64, !dbg !259
  %16 = ptrtoint ptr %pos to i32, !dbg !260
  call void @__asan_load8_noabort(i32 %16), !dbg !260
  %17 = load i64, ptr %pos, align 8, !dbg !260
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %conv6.i), !dbg !261
  %cmp7.i = icmp eq i64 %17, %conv6.i, !dbg !261
  br i1 %cmp7.i, label %if.then9.i, label %if.end11.i, !dbg !259

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !262
  %gcov_ctr34.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 2), align 16, !dbg !262
  %18 = add i64 %gcov_ctr34.i, 1, !dbg !262
  store i64 %18, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 2), align 16, !dbg !262
  %fmt10.i = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %p.05.i, i32 0, i32 1, !dbg !263
  br label %cleanup, !dbg !264

if.end11.i:                                       ; preds = %for.body.i
  %inc.i = add i32 %start_index.addr.04.i, 1, !dbg !265
  %gcov_ctr35.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 3), align 8, !dbg !258
  %19 = add i64 %gcov_ctr35.i, 1, !dbg !258
  store i64 %19, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 3), align 8, !dbg !258
  %20 = ptrtoint ptr %p.05.i to i32, !dbg !258
  call void @__asan_load4_noabort(i32 %20), !dbg !258
  %p.0.i = load ptr, ptr %p.05.i, align 4, !dbg !258
  %cmp4.not.i = icmp eq ptr %p.0.i, @trace_bprintk_fmt_list, !dbg !258
  br i1 %cmp4.not.i, label %for.end.i, label %if.end11.i.for.body.i_crit_edge, !dbg !258, !llvm.loop !266

if.end11.i.for.body.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !258
  br label %for.body.i, !dbg !258

for.end.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !268
  %gcov_ctr36.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 4), align 16, !dbg !268
  %21 = add i64 %gcov_ctr36.i, 1, !dbg !268
  store i64 %21, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 4), align 16, !dbg !268
  br label %cleanup, !dbg !268

if.end16.i:                                       ; preds = %lor.lhs.false.i
  %add.ptr19.i = getelementptr i8, ptr %v, i32 -8, !dbg !269
  %22 = ptrtoint ptr %add.ptr19.i to i32, !dbg !270
  call void @__asan_load4_noabort(i32 %22), !dbg !270
  %23 = load ptr, ptr %add.ptr19.i, align 4, !dbg !270
  %cmp22.i = icmp eq ptr %23, @trace_bprintk_fmt_list, !dbg !271
  br i1 %cmp22.i, label %if.then24.i, label %if.end25.i, !dbg !272

if.then24.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !273
  %gcov_ctr37.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 5), align 8, !dbg !273
  %24 = add i64 %gcov_ctr37.i, 1, !dbg !273
  store i64 %24, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 5), align 8, !dbg !273
  br label %cleanup, !dbg !273

if.end25.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !274
  %gcov_ctr38.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 6), align 16, !dbg !274
  %25 = add i64 %gcov_ctr38.i, 1, !dbg !274
  store i64 %25, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 6), align 16, !dbg !274
  %26 = ptrtoint ptr %add.ptr19.i to i32, !dbg !274
  call void @__asan_load4_noabort(i32 %26), !dbg !274
  %27 = load ptr, ptr %add.ptr19.i, align 4, !dbg !274
  %fmt31.i = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %27, i32 0, i32 1, !dbg !275
  br label %cleanup, !dbg !276

cleanup:                                          ; preds = %if.end25.i, %if.then24.i, %for.end.i, %if.then9.i, %if.then.i, %if.then5, %if.then
  %retval.0 = phi ptr [ %add.ptr, %if.then ], [ %add.ptr8, %if.then5 ], [ null, %if.then.i ], [ null, %if.then24.i ], [ %fmt31.i, %if.end25.i ], [ %fmt10.i, %if.then9.i ], [ null, %for.end.i ], !dbg !277
  ret ptr %retval.0, !dbg !278
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_module_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @module_trace_bprintk_format_notify(ptr nocapture noundef readnone %self, i32 noundef %val, ptr nocapture noundef readonly %data) #1 align 64 !dbg !279 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !280
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.25, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.25, align 16
  %num_trace_bprintk_fmt = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 49, !dbg !281
  %1 = ptrtoint ptr %num_trace_bprintk_fmt to i32, !dbg !281
  call void @__asan_load4_noabort(i32 %1), !dbg !281
  %2 = load i32, ptr %num_trace_bprintk_fmt, align 8, !dbg !281
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2), !dbg !282
  %tobool.not = icmp eq i32 %2, 0, !dbg !282
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then, !dbg !282

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !282
  br label %if.end3, !dbg !282

if.then:                                          ; preds = %entry
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 1), align 8, !dbg !283
  %3 = add i64 %gcov_ctr4, 1, !dbg !283
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 1), align 8, !dbg !283
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val), !dbg !284
  %cmp = icmp eq i32 %val, 1, !dbg !284
  br i1 %cmp, label %if.then2, label %if.then.if.end3_crit_edge, !dbg !285

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !285
  br label %if.end3, !dbg !285

if.then2:                                         ; preds = %if.then
  %trace_bprintk_fmt_start = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 50, !dbg !286
  %4 = ptrtoint ptr %trace_bprintk_fmt_start to i32, !dbg !286
  call void @__asan_load4_noabort(i32 %4), !dbg !286
  %5 = load ptr, ptr %trace_bprintk_fmt_start, align 4, !dbg !286
  %add.ptr = getelementptr ptr, ptr %5, i32 %2, !dbg !287
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 2), align 16, !dbg !288
  %6 = add i64 %gcov_ctr5, 1, !dbg !288
  store i64 %6, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 2), align 16, !dbg !288
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.26, align 16
  %7 = add i64 %gcov_ctr.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.26, align 16
  %cmp.not.i = icmp eq ptr %5, %add.ptr, !dbg !289
  br i1 %cmp.not.i, label %if.then2.if.end.i_crit_edge, label %if.then.i, !dbg !292

if.then2.if.end.i_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16, !dbg !292
  br label %if.end.i, !dbg !292

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16, !dbg !293
  %gcov_ctr19.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 1), align 8, !dbg !293
  %8 = add i64 %gcov_ctr19.i, 1, !dbg !293
  store i64 %8, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 1), align 8, !dbg !293
  tail call void @trace_printk_init_buffers() #17, !dbg !293
  br label %if.end.i, !dbg !293

if.end.i:                                         ; preds = %if.then.i, %if.then2.if.end.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @btrace_mutex, i32 noundef 0) #17, !dbg !294
  %cmp176.i = icmp ult ptr %5, %add.ptr, !dbg !295
  br i1 %cmp176.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.hold_module_trace_bprintk_format.exit_crit_edge, !dbg !296

if.end.i.hold_module_trace_bprintk_format.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !296
  br label %hold_module_trace_bprintk_format.exit, !dbg !296

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i, !dbg !296

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %iter.077.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %5, %if.end.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %iter.077.i to i32, !dbg !297
  call void @__asan_load4_noabort(i32 %9), !dbg !297
  %10 = load ptr, ptr %iter.077.i, align 4, !dbg !297
  %tobool.not.i.i = icmp eq ptr %10, null, !dbg !298
  br i1 %tobool.not.i.i, label %if.then2.thread.i, label %for.cond.preheader.i.i, !dbg !301

for.cond.preheader.i.i:                           ; preds = %for.body.i
  %pos.018.i.i = load ptr, ptr @trace_bprintk_fmt_list, align 4, !dbg !302
  %cmp.not19.i.i = icmp eq ptr %pos.018.i.i, @trace_bprintk_fmt_list, !dbg !302
  br i1 %cmp.not19.i.i, label %for.cond.preheader.i.i.lookup_format.exit.thread.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, !dbg !302

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i, !dbg !302

for.cond.preheader.i.i.lookup_format.exit.thread.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !302
  br label %lookup_format.exit.thread.i, !dbg !302

if.then2.thread.i:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !303
  %gcov_ctr.i48.i = load i64, ptr @__llvm_gcov_ctr.27, align 16, !dbg !303
  %11 = add i64 %gcov_ctr.i48.i, 1, !dbg !303
  store i64 %11, ptr @__llvm_gcov_ctr.27, align 16, !dbg !303
  %gcov_ctr12.i5164.i = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %12 = add i64 %gcov_ctr12.i5164.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.31, align 8
  %gcov_ctr.i5268.i = load i64, ptr @__llvm_gcov_ctr.28, align 8
  %13 = add i64 %gcov_ctr.i5268.i, 1
  store i64 %13, ptr @__llvm_gcov_ctr.28, align 8
  br label %cleanup.i, !dbg !304

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %pos.020.i.i = phi ptr [ %pos.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %pos.018.i.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %fmt1.i.i = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %pos.020.i.i, i32 0, i32 1, !dbg !305
  %14 = ptrtoint ptr %fmt1.i.i to i32, !dbg !305
  call void @__asan_load4_noabort(i32 %14), !dbg !305
  %15 = load ptr, ptr %fmt1.i.i, align 4, !dbg !305
  %call2.i.i = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull %10) #18, !dbg !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i), !dbg !306
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0, !dbg !306
  br i1 %tobool3.not.i.i, label %lookup_format.exit.i, label %for.inc.i.i, !dbg !307

for.inc.i.i:                                      ; preds = %for.body.i.i
  %gcov_ctr11.i50.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 2), align 16, !dbg !302
  %16 = add i64 %gcov_ctr11.i50.i, 1, !dbg !302
  store i64 %16, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 2), align 16, !dbg !302
  %17 = ptrtoint ptr %pos.020.i.i to i32, !dbg !302
  call void @__asan_load4_noabort(i32 %17), !dbg !302
  %pos.0.i.i = load ptr, ptr %pos.020.i.i, align 4, !dbg !302
  %cmp.not.i.i = icmp eq ptr %pos.0.i.i, @trace_bprintk_fmt_list, !dbg !302
  br i1 %cmp.not.i.i, label %for.inc.i.i.lookup_format.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge, !dbg !302, !llvm.loop !308

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !302
  br label %for.body.i.i, !dbg !302

for.inc.i.i.lookup_format.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !302
  br label %lookup_format.exit.thread.i, !dbg !302

lookup_format.exit.thread.i:                      ; preds = %for.inc.i.i.lookup_format.exit.thread.i_crit_edge, %for.cond.preheader.i.i.lookup_format.exit.thread.i_crit_edge
  %gcov_ctr12.i5159.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 3), align 8
  %18 = add i64 %gcov_ctr12.i5159.i, 1
  store i64 %18, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 3), align 8
  br label %if.end7.i, !dbg !310

lookup_format.exit.i:                             ; preds = %for.body.i.i
  %fmt1.i.i.le = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %pos.020.i.i, i32 0, i32 1, !dbg !305
  %gcov_ctr12.i51.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 1), align 8
  %19 = add i64 %gcov_ctr12.i51.i, 1
  store i64 %19, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 1), align 8
  %tobool.not.i = icmp eq ptr %pos.020.i.i, null, !dbg !310
  br i1 %tobool.not.i, label %lookup_format.exit.i.if.end7.i_crit_edge, label %if.then2.i, !dbg !310

lookup_format.exit.i.if.end7.i_crit_edge:         ; preds = %lookup_format.exit.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !310
  br label %if.end7.i, !dbg !310

if.then2.i:                                       ; preds = %lookup_format.exit.i
  %gcov_ctr.i52.i = load i64, ptr @__llvm_gcov_ctr.28, align 8
  %20 = add i64 %gcov_ctr.i52.i, 1
  store i64 %20, ptr @__llvm_gcov_ctr.28, align 8
  %cmp.i53.i = icmp ugt ptr %pos.020.i.i, inttoptr (i32 -4096 to ptr), !dbg !311
  br i1 %cmp.i53.i, label %if.then2.i.cleanup.i_crit_edge, label %if.then4.i, !dbg !304

if.then2.i.cleanup.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !304
  br label %cleanup.i, !dbg !304

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !315
  %gcov_ctr20.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 2), align 16, !dbg !315
  %21 = add i64 %gcov_ctr20.i, 1, !dbg !315
  store i64 %21, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 2), align 16, !dbg !315
  %22 = ptrtoint ptr %fmt1.i.i.le to i32, !dbg !316
  call void @__asan_load4_noabort(i32 %22), !dbg !316
  %23 = load ptr, ptr %fmt1.i.i.le, align 4, !dbg !316
  %24 = ptrtoint ptr %iter.077.i to i32, !dbg !317
  call void @__asan_store4_noabort(i32 %24), !dbg !317
  store ptr %23, ptr %iter.077.i, align 4, !dbg !317
  br label %cleanup.i, !dbg !318

if.end7.i:                                        ; preds = %lookup_format.exit.i.if.end7.i_crit_edge, %lookup_format.exit.thread.i
  %gcov_ctr79.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8, !dbg !319
  %25 = add i64 %gcov_ctr79.i.i.i, 1, !dbg !319
  store i64 %25, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8, !dbg !319
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 2), align 16, !dbg !325
  %26 = add i64 %gcov_ctr11.i.i, 1, !dbg !325
  store i64 %26, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 2), align 16, !dbg !325
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.34, align 16, !dbg !326
  %27 = add i64 %gcov_ctr.i2.i.i, 1, !dbg !326
  store i64 %27, ptr @__llvm_gcov_ctr.34, align 16, !dbg !326
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32)), !dbg !329
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4, !dbg !329
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3264, i32 noundef 12) #19, !dbg !330
  %tobool9.not.i = icmp eq ptr %call7.i.i, null, !dbg !331
  br i1 %tobool9.not.i, label %if.end7.i.cleanup.cont.i_crit_edge, label %if.end8.i.i, !dbg !331

if.end7.i.cleanup.cont.i_crit_edge:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !331
  br label %cleanup.cont.i, !dbg !331

if.end8.i.i:                                      ; preds = %if.end7.i
  %29 = ptrtoint ptr %iter.077.i to i32, !dbg !332
  call void @__asan_load4_noabort(i32 %29), !dbg !332
  %30 = load ptr, ptr %iter.077.i, align 4, !dbg !332
  %call11.i = tail call i32 @strlen(ptr noundef %30) #18, !dbg !333
  %add.i = add i32 %call11.i, 1, !dbg !334
  %gcov_ctr12.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 3), align 8, !dbg !335
  %31 = add i64 %gcov_ctr12.i.i, 1, !dbg !335
  store i64 %31, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 3), align 8, !dbg !335
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #20, !dbg !337
  %tobool13.not.i = icmp eq ptr %call9.i.i, null, !dbg !338
  br i1 %tobool13.not.i, label %if.else.i, label %if.then14.i, !dbg !338

if.then14.i:                                      ; preds = %if.end8.i.i
  %gcov_ctr22.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 4), align 16, !dbg !339
  %32 = add i64 %gcov_ctr22.i, 1, !dbg !339
  store i64 %32, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 4), align 16, !dbg !339
  %gcov_ctr.i54.i = load i64, ptr @__llvm_gcov_ctr.30, align 8
  %33 = add i64 %gcov_ctr.i54.i, 1
  store i64 %33, ptr @__llvm_gcov_ctr.30, align 8
  %34 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @trace_bprintk_fmt_list, i32 0, i32 1), align 4, !dbg !340
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %34, ptr noundef nonnull @trace_bprintk_fmt_list) #17, !dbg !343
  br i1 %call.i.i.i, label %if.end.i.i55.i, label %if.then14.i.list_add_tail.exit.i_crit_edge, !dbg !346

if.then14.i.list_add_tail.exit.i_crit_edge:       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !346
  br label %list_add_tail.exit.i, !dbg !346

if.end.i.i55.i:                                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !347
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @trace_bprintk_fmt_list, i32 0, i32 1), align 4, !dbg !347
  %35 = ptrtoint ptr %call7.i.i to i32, !dbg !348
  call void @__asan_store4_noabort(i32 %35), !dbg !348
  store ptr @trace_bprintk_fmt_list, ptr %call7.i.i, align 8, !dbg !348
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1, !dbg !349
  %36 = ptrtoint ptr %prev3.i.i.i to i32, !dbg !350
  call void @__asan_store4_noabort(i32 %36), !dbg !350
  store ptr %34, ptr %prev3.i.i.i, align 4, !dbg !350
  %37 = ptrtoint ptr %34 to i32, !dbg !351
  call void @__asan_store4_noabort(i32 %37), !dbg !351
  store volatile ptr %call7.i.i, ptr %34, align 4, !dbg !351
  br label %list_add_tail.exit.i, !dbg !351

list_add_tail.exit.i:                             ; preds = %if.end.i.i55.i, %if.then14.i.list_add_tail.exit.i_crit_edge
  %__llvm_gcov_ctr.38.sink1.i.i.i = phi ptr [ getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 1), %if.end.i.i55.i ], [ @__llvm_gcov_ctr.38, %if.then14.i.list_add_tail.exit.i_crit_edge ]
  %38 = ptrtoint ptr %__llvm_gcov_ctr.38.sink1.i.i.i to i32, !dbg !352
  call void @__asan_load8_noabort(i32 %38), !dbg !352
  %gcov_ctr.i.i56.i = load i64, ptr %__llvm_gcov_ctr.38.sink1.i.i.i, align 8, !dbg !352
  %39 = add i64 %gcov_ctr.i.i56.i, 1, !dbg !352
  store i64 %39, ptr %__llvm_gcov_ctr.38.sink1.i.i.i, align 8, !dbg !352
  %40 = ptrtoint ptr %iter.077.i to i32, !dbg !353
  call void @__asan_load4_noabort(i32 %40), !dbg !353
  %41 = load ptr, ptr %iter.077.i, align 4, !dbg !353
  %call15.i = tail call ptr @strcpy(ptr noundef nonnull %call9.i.i, ptr noundef %41) #18, !dbg !354
  %fmt16.i = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %call7.i.i, i32 0, i32 1, !dbg !355
  %42 = ptrtoint ptr %fmt16.i to i32, !dbg !356
  call void @__asan_store4_noabort(i32 %42), !dbg !356
  store ptr %call9.i.i, ptr %fmt16.i, align 8, !dbg !356
  br label %cleanup.cont.i, !dbg !357

if.else.i:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !358
  %gcov_ctr23.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 5), align 8, !dbg !358
  %43 = add i64 %gcov_ctr23.i, 1, !dbg !358
  store i64 %43, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 5), align 8, !dbg !358
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17, !dbg !359
  br label %cleanup.cont.i

cleanup.i:                                        ; preds = %if.then4.i, %if.then2.i.cleanup.i_crit_edge, %if.then2.thread.i
  %gcov_ctr21.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 3), align 8
  %44 = add i64 %gcov_ctr21.i, 1
  store i64 %44, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 3), align 8
  br label %for.inc.i

cleanup.cont.i:                                   ; preds = %if.else.i, %list_add_tail.exit.i, %if.end7.i.cleanup.cont.i_crit_edge
  %fmt.0.i = phi ptr [ %call9.i.i, %list_add_tail.exit.i ], [ null, %if.else.i ], [ null, %if.end7.i.cleanup.cont.i_crit_edge ], !dbg !360
  %gcov_ctr24.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 6), align 16, !dbg !361
  %45 = add i64 %gcov_ctr24.i, 1, !dbg !361
  store i64 %45, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 6), align 16, !dbg !361
  %46 = ptrtoint ptr %iter.077.i to i32, !dbg !362
  call void @__asan_store4_noabort(i32 %46), !dbg !362
  store ptr %fmt.0.i, ptr %iter.077.i, align 4, !dbg !362
  %gcov_ctr26.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 8), align 16, !dbg !363
  %47 = add i64 %gcov_ctr26.i, 1, !dbg !363
  store i64 %47, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 8), align 16, !dbg !363
  br label %for.inc.i, !dbg !363

for.inc.i:                                        ; preds = %cleanup.cont.i, %cleanup.i
  %incdec.ptr.i = getelementptr ptr, ptr %iter.077.i, i32 1, !dbg !364
  %cmp1.i = icmp ult ptr %incdec.ptr.i, %add.ptr, !dbg !295
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.hold_module_trace_bprintk_format.exit_crit_edge, !dbg !296, !llvm.loop !365

for.inc.i.hold_module_trace_bprintk_format.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !296
  br label %hold_module_trace_bprintk_format.exit, !dbg !296

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !296
  br label %for.body.i, !dbg !296

hold_module_trace_bprintk_format.exit:            ; preds = %for.inc.i.hold_module_trace_bprintk_format.exit_crit_edge, %if.end.i.hold_module_trace_bprintk_format.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @btrace_mutex) #17, !dbg !366
  br label %if.end3, !dbg !367

if.end3:                                          ; preds = %hold_module_trace_bprintk_format.exit, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret i32 1, !dbg !368
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_printk_init_buffers() local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #12 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 1536090230) #17
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #17
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #17
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 32
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #16
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @llvm_gcda_summary_info() #17
  tail call void @llvm_gcda_end_file() #17
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #13 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  store i64 0, ptr @__llvm_gcov_ctr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.8, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.9, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.10, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.11, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.12, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.13, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.14, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.15, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.16, align 8
  store i64 0, ptr @__llvm_gcov_ctr.17, align 8
  store i64 0, ptr @__llvm_gcov_ctr.18, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.19, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.20, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.21, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.22, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.23, align 8
  store i64 0, ptr @__llvm_gcov_ctr.24, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.25, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.26, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.27, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.28, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.29, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.30, align 8
  store i64 0, ptr @__llvm_gcov_ctr.31, align 8
  store i64 0, ptr @__llvm_gcov_ctr.32, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @__llvm_gcov_ctr.33, i8 0, i64 216, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.34, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.35, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.36, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.37, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #12 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #17
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 14)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { noinline nounwind uwtable(sync) }
attributes #13 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #14 = { argmemonly nofree nounwind willreturn writeonly }
attributes #15 = { nounwind uwtable(sync) }
attributes #16 = { nomerge }
attributes #17 = { nounwind }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.gcov = !{!48}
!llvm.ident = !{!49}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_printk.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @__ksymtab___trace_bprintk, !3, !"__ksymtab___trace_bprintk", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_printk.c", i32 216, i32 1}
!4 = !{ptr @__ksymtab___ftrace_vbprintk, !5, !"__ksymtab___ftrace_vbprintk", i1 false, i1 false}
!5 = !{!"../kernel/trace/trace_printk.c", i32 228, i32 1}
!6 = !{ptr @__ksymtab___trace_printk, !7, !"__ksymtab___trace_printk", i1 false, i1 false}
!7 = !{!"../kernel/trace/trace_printk.c", i32 243, i32 1}
!8 = !{ptr @__ksymtab___ftrace_vprintk, !9, !"__ksymtab___ftrace_vprintk", i1 false, i1 false}
!9 = !{!"../kernel/trace/trace_printk.c", i32 252, i32 1}
!10 = !{ptr @__initcall__kmod_trace_printk__262_393_init_trace_printk_function_export5, !11, !"__initcall__kmod_trace_printk__262_393_init_trace_printk_function_export5", i1 false, i1 false}
!11 = !{!"../kernel/trace/trace_printk.c", i32 393, i32 1}
!12 = !{ptr @__initcall__kmod_trace_printk__263_400_init_trace_printkearly, !13, !"__initcall__kmod_trace_printk__263_400_init_trace_printkearly", i1 false, i1 false}
!13 = !{!"../kernel/trace/trace_printk.c", i32 400, i32 1}
!14 = !{ptr @trace_printk_enabled, !15, !"trace_printk_enabled", i1 false, i1 false}
!15 = !{!"../kernel/trace/trace_printk.c", i32 188, i32 27}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/trace/trace_printk.c", i32 387, i32 20}
!18 = !{ptr @ftrace_formats_fops, !19, !"ftrace_formats_fops", i1 false, i1 false}
!19 = !{!"../kernel/trace/trace_printk.c", i32 372, i32 37}
!20 = !{ptr @show_format_seq_ops, !21, !"show_format_seq_ops", i1 false, i1 false}
!21 = !{!"../kernel/trace/trace_printk.c", i32 353, i32 36}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/trace/trace_printk.c", i32 31, i32 8}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @btrace_mutex, !23, !"btrace_mutex", i1 false, i1 false}
!26 = !{ptr @trace_bprintk_fmt_list, !27, !"trace_bprintk_fmt_list", i1 false, i1 false}
!27 = !{!"../kernel/trace/trace_printk.c", i32 28, i32 8}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/trace/trace_printk.c", i32 320, i32 16}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/trace/trace_printk.c", i32 328, i32 16}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/trace/trace_printk.c", i32 331, i32 16}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/trace/trace_printk.c", i32 337, i32 16}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/trace/trace_printk.c", i32 343, i32 14}
!38 = !{ptr @module_trace_bprintk_format_nb, !39, !"module_trace_bprintk_format_nb", i1 false, i1 false}
!39 = !{!"../kernel/trace/trace_printk.c", i32 196, i32 23}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_printk.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_printk.gcda", !0}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = distinct !DISubprogram(name: "trace_printk_control", scope: !1, file: !1, line: 190, type: !51, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!51 = !DISubroutineType(types: !52)
!52 = !{}
!53 = !DILocation(line: 191, scope: !50)
!54 = !DILocation(line: 192, column: 23, scope: !50)
!55 = !DILocation(line: 193, column: 1, scope: !50)
!56 = distinct !DISubprogram(name: "__trace_bprintk", scope: !1, file: !1, line: 200, type: !51, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!57 = !DILocation(line: 201, scope: !56)
!58 = !DILocation(line: 203, column: 2, scope: !56)
!59 = !DILocation(line: 203, column: 10, scope: !56)
!60 = !{!"auto-init"}
!61 = !DILocation(line: 205, column: 6, scope: !56)
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !DILocation(line: 206, column: 3, scope: !56)
!64 = !DILocation(line: 208, column: 7, scope: !56)
!65 = !{i8 0, i8 2}
!66 = !DILocation(line: 208, column: 6, scope: !56)
!67 = !DILocation(line: 209, column: 3, scope: !56)
!68 = !DILocation(line: 211, column: 2, scope: !56)
!69 = !DILocation(line: 212, column: 8, scope: !56)
!70 = !DILocation(line: 213, column: 2, scope: !56)
!71 = !DILocation(line: 214, column: 2, scope: !56)
!72 = !DILocation(line: 0, scope: !56)
!73 = !DILocation(line: 215, column: 1, scope: !56)
!74 = distinct !DISubprogram(name: "__ftrace_vbprintk", scope: !1, file: !1, line: 218, type: !51, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!75 = !DILocation(line: 219, scope: !74)
!76 = !DILocation(line: 220, column: 6, scope: !74)
!77 = !DILocation(line: 221, column: 3, scope: !74)
!78 = !DILocation(line: 223, column: 7, scope: !74)
!79 = !DILocation(line: 223, column: 6, scope: !74)
!80 = !DILocation(line: 224, column: 3, scope: !74)
!81 = !DILocation(line: 226, column: 24, scope: !74)
!82 = !DILocation(line: 226, column: 9, scope: !74)
!83 = !DILocation(line: 226, column: 2, scope: !74)
!84 = !DILocation(line: 0, scope: !74)
!85 = !DILocation(line: 227, column: 1, scope: !74)
!86 = distinct !DISubprogram(name: "__trace_printk", scope: !1, file: !1, line: 230, type: !51, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!87 = !DILocation(line: 231, scope: !86)
!88 = !DILocation(line: 233, column: 2, scope: !86)
!89 = !DILocation(line: 233, column: 10, scope: !86)
!90 = !DILocation(line: 235, column: 7, scope: !86)
!91 = !DILocation(line: 235, column: 6, scope: !86)
!92 = !DILocation(line: 236, column: 3, scope: !86)
!93 = !DILocation(line: 238, column: 2, scope: !86)
!94 = !DILocation(line: 239, column: 8, scope: !86)
!95 = !DILocation(line: 240, column: 2, scope: !86)
!96 = !DILocation(line: 241, column: 2, scope: !86)
!97 = !DILocation(line: 0, scope: !86)
!98 = !DILocation(line: 242, column: 1, scope: !86)
!99 = distinct !DISubprogram(name: "__ftrace_vprintk", scope: !1, file: !1, line: 245, type: !51, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!100 = !DILocation(line: 246, scope: !99)
!101 = !DILocation(line: 247, column: 7, scope: !99)
!102 = !DILocation(line: 247, column: 6, scope: !99)
!103 = !DILocation(line: 248, column: 3, scope: !99)
!104 = !DILocation(line: 250, column: 23, scope: !99)
!105 = !DILocation(line: 250, column: 9, scope: !99)
!106 = !DILocation(line: 250, column: 2, scope: !99)
!107 = !DILocation(line: 0, scope: !99)
!108 = !DILocation(line: 251, column: 1, scope: !99)
!109 = distinct !DISubprogram(name: "trace_is_tracepoint_string", scope: !1, file: !1, line: 254, type: !51, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!110 = !DILocation(line: 255, scope: !109)
!111 = !DILocation(line: 258, column: 2, scope: !109)
!112 = !DILocation(line: 259, column: 14, scope: !109)
!113 = !DILocation(line: 259, column: 11, scope: !109)
!114 = !DILocation(line: 259, column: 7, scope: !109)
!115 = distinct !{!115, !111, !116}
!116 = !DILocation(line: 261, column: 2, scope: !109)
!117 = !DILocation(line: 258, column: 73, scope: !109)
!118 = !DILocation(line: 258, column: 43, scope: !109)
!119 = !DILocation(line: 0, scope: !109)
!120 = !DILocation(line: 263, column: 1, scope: !109)
!121 = distinct !DISubprogram(name: "init_trace_printk_function_export", scope: !1, file: !1, line: 379, type: !51, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!122 = !DILocation(line: 380, scope: !121)
!123 = !DILocation(line: 383, column: 8, scope: !121)
!124 = !DILocation(line: 384, column: 6, scope: !121)
!125 = !DILocation(line: 385, column: 3, scope: !121)
!126 = !DILocation(line: 387, column: 2, scope: !121)
!127 = !DILocation(line: 390, column: 2, scope: !121)
!128 = !DILocation(line: 391, column: 1, scope: !121)
!129 = distinct !DISubprogram(name: "init_trace_printk", scope: !1, file: !1, line: 395, type: !51, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!130 = !DILocation(line: 396, scope: !129)
!131 = !DILocation(line: 397, column: 9, scope: !129)
!132 = !DILocation(line: 397, column: 2, scope: !129)
!133 = distinct !DISubprogram(name: "ftrace_formats_open", scope: !1, file: !1, line: 361, type: !51, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!134 = !DILocation(line: 362, scope: !133)
!135 = !DILocation(line: 365, column: 8, scope: !133)
!136 = !DILocation(line: 366, column: 6, scope: !133)
!137 = !DILocation(line: 367, column: 10, scope: !133)
!138 = !DILocation(line: 367, column: 3, scope: !133)
!139 = !DILocation(line: 369, column: 18, scope: !133)
!140 = !DILocation(line: 369, column: 9, scope: !133)
!141 = !DILocation(line: 369, column: 2, scope: !133)
!142 = !DILocation(line: 0, scope: !133)
!143 = !DILocation(line: 370, column: 1, scope: !133)
!144 = distinct !DISubprogram(name: "t_start", scope: !1, file: !1, line: 299, type: !51, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!145 = !DILocation(line: 300, scope: !144)
!146 = !DILocation(line: 164, column: 2, scope: !147, inlinedAt: !148)
!147 = distinct !DISubprogram(name: "format_mod_start", scope: !1, file: !1, line: 162, type: !51, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!148 = distinct !DILocation(line: 301, column: 2, scope: !144)
!149 = !DILocation(line: 273, column: 6, scope: !150, inlinedAt: !151)
!150 = distinct !DISubprogram(name: "find_next", scope: !1, file: !1, line: 265, type: !51, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!151 = distinct !DILocation(line: 302, column: 9, scope: !144)
!152 = !DILocation(line: 273, column: 11, scope: !150, inlinedAt: !151)
!153 = !DILocation(line: 274, column: 41, scope: !150, inlinedAt: !151)
!154 = !DILocation(line: 274, column: 40, scope: !150, inlinedAt: !151)
!155 = !DILocation(line: 274, column: 38, scope: !150, inlinedAt: !151)
!156 = !DILocation(line: 274, column: 3, scope: !150, inlinedAt: !151)
!157 = !DILocation(line: 291, column: 11, scope: !150, inlinedAt: !151)
!158 = !DILocation(line: 291, column: 6, scope: !150, inlinedAt: !151)
!159 = !DILocation(line: 292, column: 39, scope: !150, inlinedAt: !151)
!160 = !DILocation(line: 292, column: 38, scope: !150, inlinedAt: !151)
!161 = !DILocation(line: 292, column: 35, scope: !150, inlinedAt: !151)
!162 = !DILocation(line: 292, column: 3, scope: !150, inlinedAt: !151)
!163 = !DILocation(line: 294, column: 17, scope: !150, inlinedAt: !151)
!164 = !DILocation(line: 292, column: 9, scope: !165, inlinedAt: !167)
!165 = distinct !DISubprogram(name: "list_empty", scope: !166, file: !166, line: 290, type: !51, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!166 = !DIFile(filename: "../include/linux/list.h", directory: "/llk/linux-5.17/build_arm_allyes")
!167 = distinct !DILocation(line: 127, column: 6, scope: !168, inlinedAt: !169)
!168 = distinct !DISubprogram(name: "find_next_mod_format", scope: !1, file: !1, line: 123, type: !51, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!169 = distinct !DILocation(line: 295, column: 9, scope: !150, inlinedAt: !151)
!170 = !DILocation(line: 292, column: 31, scope: !165, inlinedAt: !167)
!171 = !DILocation(line: 127, column: 6, scope: !168, inlinedAt: !169)
!172 = !DILocation(line: 128, column: 3, scope: !168, inlinedAt: !169)
!173 = !DILocation(line: 141, column: 8, scope: !168, inlinedAt: !169)
!174 = !DILocation(line: 141, column: 23, scope: !168, inlinedAt: !169)
!175 = !DILocation(line: 141, column: 20, scope: !168, inlinedAt: !169)
!176 = !DILocation(line: 142, column: 13, scope: !168, inlinedAt: !169)
!177 = !DILocation(line: 142, column: 16, scope: !168, inlinedAt: !169)
!178 = !DILocation(line: 142, column: 5, scope: !168, inlinedAt: !169)
!179 = !DILocation(line: 143, column: 15, scope: !168, inlinedAt: !169)
!180 = !DILocation(line: 140, column: 3, scope: !168, inlinedAt: !169)
!181 = distinct !{!181, !180, !182}
!182 = !DILocation(line: 144, column: 3, scope: !168, inlinedAt: !169)
!183 = !DILocation(line: 146, column: 3, scope: !168, inlinedAt: !169)
!184 = !DILocation(line: 0, scope: !150, inlinedAt: !151)
!185 = !DILocation(line: 302, column: 2, scope: !144)
!186 = distinct !DISubprogram(name: "t_stop", scope: !1, file: !1, line: 348, type: !51, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!187 = !DILocation(line: 349, scope: !186)
!188 = !DILocation(line: 169, column: 2, scope: !189, inlinedAt: !190)
!189 = distinct !DISubprogram(name: "format_mod_stop", scope: !1, file: !1, line: 167, type: !51, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!190 = distinct !DILocation(line: 350, column: 2, scope: !186)
!191 = !DILocation(line: 351, column: 1, scope: !186)
!192 = distinct !DISubprogram(name: "t_next", scope: !1, file: !1, line: 305, type: !51, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!193 = !DILocation(line: 306, scope: !192)
!194 = !DILocation(line: 307, column: 8, scope: !192)
!195 = !DILocation(line: 308, column: 9, scope: !192)
!196 = !DILocation(line: 308, column: 2, scope: !192)
!197 = distinct !DISubprogram(name: "t_show", scope: !1, file: !1, line: 311, type: !51, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!198 = !DILocation(line: 312, scope: !197)
!199 = !DILocation(line: 314, column: 20, scope: !197)
!200 = !DILocation(line: 317, column: 7, scope: !197)
!201 = !DILocation(line: 317, column: 6, scope: !197)
!202 = !DILocation(line: 318, column: 3, scope: !197)
!203 = !DILocation(line: 320, column: 30, scope: !197)
!204 = !DILocation(line: 320, column: 2, scope: !197)
!205 = !DILocation(line: 325, column: 7, scope: !197)
!206 = !DILocation(line: 0, scope: !197)
!207 = !DILocation(line: 325, column: 14, scope: !197)
!208 = !DILocation(line: 325, column: 2, scope: !197)
!209 = !DILocation(line: 328, column: 13, scope: !197)
!210 = !DILocation(line: 328, column: 4, scope: !197)
!211 = !DILocation(line: 329, column: 4, scope: !197)
!212 = !DILocation(line: 331, column: 13, scope: !197)
!213 = !DILocation(line: 331, column: 4, scope: !197)
!214 = !DILocation(line: 332, column: 4, scope: !197)
!215 = !DILocation(line: 334, column: 13, scope: !197)
!216 = !DILocation(line: 334, column: 4, scope: !197)
!217 = !DILocation(line: 335, column: 4, scope: !197)
!218 = !DILocation(line: 337, column: 13, scope: !197)
!219 = !DILocation(line: 337, column: 4, scope: !197)
!220 = !DILocation(line: 338, column: 4, scope: !197)
!221 = !DILocation(line: 340, column: 13, scope: !197)
!222 = !DILocation(line: 340, column: 16, scope: !197)
!223 = !DILocation(line: 340, column: 4, scope: !197)
!224 = !DILocation(line: 341, column: 3, scope: !197)
!225 = !DILocation(line: 325, column: 23, scope: !197)
!226 = distinct !{!226, !208, !227}
!227 = !DILocation(line: 342, column: 2, scope: !197)
!228 = !DILocation(line: 343, column: 11, scope: !197)
!229 = !DILocation(line: 343, column: 2, scope: !197)
!230 = !DILocation(line: 345, column: 2, scope: !197)
!231 = !DILocation(line: 346, column: 1, scope: !197)
!232 = !DILocation(line: 266, scope: !150)
!233 = !DILocation(line: 273, column: 6, scope: !150)
!234 = !DILocation(line: 273, column: 11, scope: !150)
!235 = !DILocation(line: 274, column: 41, scope: !150)
!236 = !DILocation(line: 274, column: 40, scope: !150)
!237 = !DILocation(line: 274, column: 38, scope: !150)
!238 = !DILocation(line: 274, column: 3, scope: !150)
!239 = !DILocation(line: 291, column: 11, scope: !150)
!240 = !DILocation(line: 291, column: 6, scope: !150)
!241 = !DILocation(line: 292, column: 39, scope: !150)
!242 = !DILocation(line: 292, column: 38, scope: !150)
!243 = !DILocation(line: 292, column: 35, scope: !150)
!244 = !DILocation(line: 292, column: 3, scope: !150)
!245 = !DILocation(line: 294, column: 17, scope: !150)
!246 = !DILocation(line: 292, column: 9, scope: !165, inlinedAt: !247)
!247 = distinct !DILocation(line: 127, column: 6, scope: !168, inlinedAt: !248)
!248 = distinct !DILocation(line: 295, column: 9, scope: !150)
!249 = !DILocation(line: 292, column: 31, scope: !165, inlinedAt: !247)
!250 = !DILocation(line: 127, column: 6, scope: !168, inlinedAt: !248)
!251 = !DILocation(line: 128, column: 3, scope: !168, inlinedAt: !248)
!252 = !DILocation(line: 136, column: 7, scope: !168, inlinedAt: !248)
!253 = !DILocation(line: 136, column: 9, scope: !168, inlinedAt: !248)
!254 = !DILocation(line: 136, column: 12, scope: !168, inlinedAt: !248)
!255 = !DILocation(line: 136, column: 27, scope: !168, inlinedAt: !248)
!256 = !DILocation(line: 136, column: 24, scope: !168, inlinedAt: !248)
!257 = !DILocation(line: 136, column: 6, scope: !168, inlinedAt: !248)
!258 = !DILocation(line: 140, column: 3, scope: !168, inlinedAt: !248)
!259 = !DILocation(line: 141, column: 8, scope: !168, inlinedAt: !248)
!260 = !DILocation(line: 141, column: 23, scope: !168, inlinedAt: !248)
!261 = !DILocation(line: 141, column: 20, scope: !168, inlinedAt: !248)
!262 = !DILocation(line: 142, column: 13, scope: !168, inlinedAt: !248)
!263 = !DILocation(line: 142, column: 16, scope: !168, inlinedAt: !248)
!264 = !DILocation(line: 142, column: 5, scope: !168, inlinedAt: !248)
!265 = !DILocation(line: 143, column: 15, scope: !168, inlinedAt: !248)
!266 = distinct !{!266, !258, !267}
!267 = !DILocation(line: 144, column: 3, scope: !168, inlinedAt: !248)
!268 = !DILocation(line: 146, column: 3, scope: !168, inlinedAt: !248)
!269 = !DILocation(line: 153, column: 12, scope: !168, inlinedAt: !248)
!270 = !DILocation(line: 154, column: 20, scope: !168, inlinedAt: !248)
!271 = !DILocation(line: 154, column: 25, scope: !168, inlinedAt: !248)
!272 = !DILocation(line: 154, column: 6, scope: !168, inlinedAt: !248)
!273 = !DILocation(line: 155, column: 3, scope: !168, inlinedAt: !248)
!274 = !DILocation(line: 157, column: 12, scope: !168, inlinedAt: !248)
!275 = !DILocation(line: 159, column: 19, scope: !168, inlinedAt: !248)
!276 = !DILocation(line: 159, column: 2, scope: !168, inlinedAt: !248)
!277 = !DILocation(line: 0, scope: !150)
!278 = !DILocation(line: 296, column: 1, scope: !150)
!279 = distinct !DISubprogram(name: "module_trace_bprintk_format_notify", scope: !1, file: !1, line: 88, type: !51, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!280 = !DILocation(line: 90, scope: !279)
!281 = !DILocation(line: 92, column: 11, scope: !279)
!282 = !DILocation(line: 92, column: 6, scope: !279)
!283 = !DILocation(line: 93, column: 3, scope: !279)
!284 = !DILocation(line: 96, column: 11, scope: !279)
!285 = !DILocation(line: 96, column: 7, scope: !279)
!286 = !DILocation(line: 93, column: 29, scope: !279)
!287 = !DILocation(line: 94, column: 28, scope: !279)
!288 = !DILocation(line: 97, column: 37, scope: !279)
!289 = !DILocation(line: 59, column: 12, scope: !290, inlinedAt: !291)
!290 = distinct !DISubprogram(name: "hold_module_trace_bprintk_format", scope: !1, file: !1, line: 53, type: !51, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!291 = distinct !DILocation(line: 97, column: 4, scope: !279)
!292 = !DILocation(line: 59, column: 6, scope: !290, inlinedAt: !291)
!293 = !DILocation(line: 60, column: 3, scope: !290, inlinedAt: !291)
!294 = !DILocation(line: 62, column: 2, scope: !290, inlinedAt: !291)
!295 = !DILocation(line: 63, column: 26, scope: !290, inlinedAt: !291)
!296 = !DILocation(line: 63, column: 2, scope: !290, inlinedAt: !291)
!297 = !DILocation(line: 64, column: 52, scope: !290, inlinedAt: !291)
!298 = !DILocation(line: 42, column: 7, scope: !299, inlinedAt: !300)
!299 = distinct !DISubprogram(name: "lookup_format", scope: !1, file: !1, line: 38, type: !51, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!300 = distinct !DILocation(line: 64, column: 38, scope: !290, inlinedAt: !291)
!301 = !DILocation(line: 42, column: 6, scope: !299, inlinedAt: !300)
!302 = !DILocation(line: 45, column: 2, scope: !299, inlinedAt: !300)
!303 = !DILocation(line: 43, column: 10, scope: !299, inlinedAt: !300)
!304 = !DILocation(line: 66, column: 8, scope: !290, inlinedAt: !291)
!305 = !DILocation(line: 46, column: 20, scope: !299, inlinedAt: !300)
!306 = !DILocation(line: 46, column: 8, scope: !299, inlinedAt: !300)
!307 = !DILocation(line: 46, column: 7, scope: !299, inlinedAt: !300)
!308 = distinct !{!308, !302, !309}
!309 = !DILocation(line: 48, column: 2, scope: !299, inlinedAt: !300)
!310 = !DILocation(line: 65, column: 7, scope: !290, inlinedAt: !291)
!311 = !DILocation(line: 36, column: 9, scope: !312, inlinedAt: !314)
!312 = distinct !DISubprogram(name: "IS_ERR", scope: !313, file: !313, line: 34, type: !51, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!313 = !DIFile(filename: "../include/linux/err.h", directory: "/llk/linux-5.17/build_arm_allyes")
!314 = distinct !DILocation(line: 66, column: 9, scope: !290, inlinedAt: !291)
!315 = !DILocation(line: 67, column: 13, scope: !290, inlinedAt: !291)
!316 = !DILocation(line: 67, column: 21, scope: !290, inlinedAt: !291)
!317 = !DILocation(line: 67, column: 11, scope: !290, inlinedAt: !291)
!318 = !DILocation(line: 67, column: 5, scope: !290, inlinedAt: !291)
!319 = !DILocation(line: 376, column: 3, scope: !320, inlinedAt: !322)
!320 = distinct !DISubprogram(name: "__kmalloc_index", scope: !321, file: !321, line: 369, type: !51, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!321 = !DIFile(filename: "../include/linux/slab.h", directory: "/llk/linux-5.17/build_arm_allyes")
!322 = distinct !DILocation(line: 576, column: 11, scope: !323, inlinedAt: !324)
!323 = distinct !DISubprogram(name: "kmalloc", scope: !321, file: !321, line: 567, type: !51, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!324 = distinct !DILocation(line: 72, column: 12, scope: !290, inlinedAt: !291)
!325 = !DILocation(line: 582, column: 33, scope: !323, inlinedAt: !324)
!326 = !DILocation(line: 339, column: 3, scope: !327, inlinedAt: !328)
!327 = distinct !DISubprogram(name: "kmalloc_type", scope: !321, file: !321, line: 332, type: !51, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!328 = distinct !DILocation(line: 582, column: 20, scope: !323, inlinedAt: !324)
!329 = !DILocation(line: 582, column: 5, scope: !323, inlinedAt: !324)
!330 = !DILocation(line: 581, column: 10, scope: !323, inlinedAt: !324)
!331 = !DILocation(line: 73, column: 7, scope: !290, inlinedAt: !291)
!332 = !DILocation(line: 74, column: 25, scope: !290, inlinedAt: !291)
!333 = !DILocation(line: 74, column: 18, scope: !290, inlinedAt: !291)
!334 = !DILocation(line: 74, column: 32, scope: !290, inlinedAt: !291)
!335 = !DILocation(line: 586, column: 19, scope: !323, inlinedAt: !336)
!336 = distinct !DILocation(line: 74, column: 10, scope: !290, inlinedAt: !291)
!337 = !DILocation(line: 586, column: 9, scope: !323, inlinedAt: !336)
!338 = !DILocation(line: 75, column: 8, scope: !290, inlinedAt: !291)
!339 = !DILocation(line: 76, column: 20, scope: !290, inlinedAt: !291)
!340 = !DILocation(line: 102, column: 24, scope: !341, inlinedAt: !342)
!341 = distinct !DISubprogram(name: "list_add_tail", scope: !166, file: !166, line: 100, type: !51, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!342 = distinct !DILocation(line: 76, column: 5, scope: !290, inlinedAt: !291)
!343 = !DILocation(line: 69, column: 7, scope: !344, inlinedAt: !345)
!344 = distinct !DISubprogram(name: "__list_add", scope: !166, file: !166, line: 65, type: !51, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!345 = distinct !DILocation(line: 102, column: 2, scope: !341, inlinedAt: !342)
!346 = !DILocation(line: 69, column: 6, scope: !344, inlinedAt: !345)
!347 = !DILocation(line: 72, column: 13, scope: !344, inlinedAt: !345)
!348 = !DILocation(line: 73, column: 12, scope: !344, inlinedAt: !345)
!349 = !DILocation(line: 74, column: 7, scope: !344, inlinedAt: !345)
!350 = !DILocation(line: 74, column: 12, scope: !344, inlinedAt: !345)
!351 = !DILocation(line: 75, column: 2, scope: !344, inlinedAt: !345)
!352 = !DILocation(line: 0, scope: !344, inlinedAt: !345)
!353 = !DILocation(line: 77, column: 17, scope: !290, inlinedAt: !291)
!354 = !DILocation(line: 77, column: 5, scope: !290, inlinedAt: !291)
!355 = !DILocation(line: 78, column: 13, scope: !290, inlinedAt: !291)
!356 = !DILocation(line: 78, column: 17, scope: !290, inlinedAt: !291)
!357 = !DILocation(line: 79, column: 4, scope: !290, inlinedAt: !291)
!358 = !DILocation(line: 80, column: 11, scope: !290, inlinedAt: !291)
!359 = !DILocation(line: 80, column: 5, scope: !290, inlinedAt: !291)
!360 = !DILocation(line: 0, scope: !290, inlinedAt: !291)
!361 = !DILocation(line: 82, column: 11, scope: !290, inlinedAt: !291)
!362 = !DILocation(line: 82, column: 9, scope: !290, inlinedAt: !291)
!363 = !DILocation(line: 84, column: 2, scope: !290, inlinedAt: !291)
!364 = !DILocation(line: 63, column: 37, scope: !290, inlinedAt: !291)
!365 = distinct !{!365, !296, !363}
!366 = !DILocation(line: 85, column: 2, scope: !290, inlinedAt: !291)
!367 = !DILocation(line: 97, column: 4, scope: !279)
!368 = !DILocation(line: 99, column: 2, scope: !279)
