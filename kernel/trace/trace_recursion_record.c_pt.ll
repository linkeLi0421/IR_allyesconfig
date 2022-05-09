; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_recursion_record.c_pt.bc'
source_filename = "../kernel/trace/trace_recursion_record.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ftrace_record_recursion\22, \22a\22\09"
module asm "\09.weak\09__crc_ftrace_record_recursion\09\09\09\09"
module asm "\09.long\09__crc_ftrace_record_recursion\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ftrace_record_recursion:\09\09\09\09\09"
module asm "\09.asciz \09\22ftrace_record_recursion\22\09\09\09\09\09"
module asm "__kstrtabns_ftrace_record_recursion:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.recursed_functions = type { i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@cached_function = internal global { i32, [28 x i8] } zeroinitializer, align 32
@nr_records = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@recursed_functions = internal global { [128 x %struct.recursed_functions], [256 x i8] } zeroinitializer, align 32
@__kstrtab_ftrace_record_recursion = external dso_local constant [0 x i8], align 1
@__kstrtabns_ftrace_record_recursion = external dso_local constant [0 x i8], align 1
@__ksymtab_ftrace_record_recursion = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ftrace_record_recursion to i32), ptr @__kstrtab_ftrace_record_recursion, ptr @__kstrtabns_ftrace_record_recursion }, section "___ksymtab_gpl+ftrace_record_recursion", align 4
@__initcall__kmod_trace_recursion_record__262_236_create_recursed_functions5 = internal global ptr @create_recursed_functions, section ".initcall5.init", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"recursed_functions\00", [45 x i8] zeroinitializer }, align 32
@recursed_functions_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @recursed_function_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @recursed_function_open, ptr null, ptr @recursed_function_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@create_recursed_functions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014WARNING: Failed to create recursed_functions\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"create_recursed_functions\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"kernel/trace/trace_recursion_record.c\00", [58 x i8] zeroinitializer }, align 32
@create_recursed_functions._entry_ptr = internal global ptr @create_recursed_functions._entry, section ".printk_index", align 4
@recursed_function_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @recursed_function_lock, i64 52), ptr getelementptr (i8, ptr @recursed_function_lock, i64 52) }, ptr @recursed_function_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@recursed_function_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @recursed_function_seq_start, ptr @recursed_function_seq_stop, ptr @recursed_function_seq_next, ptr @recursed_function_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"recursed_function_lock.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"recursed_function_lock\00", [41 x i8] zeroinitializer }, align 32
@tseq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c":\09\00", [29 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [12 x i64] zeroinitializer
@__llvm_gcov_ctr.7 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.8 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.9 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.10 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.11 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.12 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.13 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.14 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.15 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.16 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.27 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.28 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.29 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [27 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.33 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.34 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.35 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [1 x i64] zeroinitializer
@0 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_recursion_record.gcda\00", [54 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [31 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 1067640894, i32 -1443850581 }, %emit_function_args_ty { i32 1, i32 -464218692, i32 -1443850581 }, %emit_function_args_ty { i32 2, i32 -986397664, i32 -1443850581 }, %emit_function_args_ty { i32 3, i32 -918793433, i32 -1443850581 }, %emit_function_args_ty { i32 4, i32 370320754, i32 -1443850581 }, %emit_function_args_ty { i32 5, i32 881278196, i32 -1443850581 }, %emit_function_args_ty { i32 6, i32 1663674071, i32 -1443850581 }, %emit_function_args_ty { i32 7, i32 -1672745738, i32 -1443850581 }, %emit_function_args_ty { i32 8, i32 47165945, i32 -1443850581 }, %emit_function_args_ty { i32 9, i32 1879419842, i32 -1443850581 }, %emit_function_args_ty { i32 10, i32 831866196, i32 -1443850581 }, %emit_function_args_ty { i32 11, i32 -76524825, i32 -1443850581 }, %emit_function_args_ty { i32 12, i32 -1036661837, i32 -1443850581 }, %emit_function_args_ty { i32 13, i32 901447506, i32 -1443850581 }, %emit_function_args_ty { i32 14, i32 2137933198, i32 -1443850581 }, %emit_function_args_ty { i32 15, i32 -604281166, i32 -1443850581 }, %emit_function_args_ty { i32 16, i32 142271268, i32 -1443850581 }, %emit_function_args_ty { i32 17, i32 -12132042, i32 -1443850581 }, %emit_function_args_ty { i32 18, i32 1480149331, i32 -1443850581 }, %emit_function_args_ty { i32 19, i32 436087400, i32 -1443850581 }, %emit_function_args_ty { i32 20, i32 -1159899074, i32 -1443850581 }, %emit_function_args_ty { i32 21, i32 -1041795849, i32 -1443850581 }, %emit_function_args_ty { i32 22, i32 -400554785, i32 -1443850581 }, %emit_function_args_ty { i32 23, i32 -1782918348, i32 -1443850581 }, %emit_function_args_ty { i32 24, i32 795548855, i32 -1443850581 }, %emit_function_args_ty { i32 25, i32 727036892, i32 -1443850581 }, %emit_function_args_ty { i32 26, i32 1841983822, i32 -1443850581 }, %emit_function_args_ty { i32 27, i32 1624494247, i32 -1443850581 }, %emit_function_args_ty { i32 28, i32 -963894156, i32 -1443850581 }, %emit_function_args_ty { i32 29, i32 -176284414, i32 -1443850581 }, %emit_function_args_ty { i32 30, i32 1248901211, i32 -1443850581 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [31 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 12, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.7 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.8 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.9 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.10 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.11 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.12 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.13 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.14 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.15 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.16 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.17 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.18 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.20 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.21 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.22 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.23 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.24 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.25 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.26 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.27 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.28 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.29 }, %emit_arcs_args_ty { i32 27, ptr @__llvm_gcov_ctr.30 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.31 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.32 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.33 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.34 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.35 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.36 }]
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"cached_function\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 23, i32 22 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"nr_records\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 17, i32 17 }
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"recursed_functions\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 16, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 229, i32 29 }
@___asan_gen_.49 = private unnamed_addr constant [24 x i8] c"recursed_functions_fops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 217, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 232, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [23 x i8] c"recursed_function_lock\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [26 x i8] c"recursed_function_seq_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 174, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 118, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant [5 x i8] c"tseq\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 119, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [41 x i8] c"../kernel/trace/trace_recursion_record.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 165, i32 24 }
@___asan_gen_.82 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @__initcall__kmod_trace_recursion_record__262_236_create_recursed_functions5, ptr @__ksymtab_ftrace_record_recursion, ptr @create_recursed_functions._entry, ptr @create_recursed_functions._entry_ptr, ptr @cached_function, ptr @nr_records, ptr @recursed_functions, ptr @.str, ptr @recursed_functions_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @recursed_function_lock, ptr @recursed_function_seq_ops, ptr @.str.4, ptr @.str.5, ptr @tseq, ptr @.str.6], section "llvm.metadata"
@1 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cached_function to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_records to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recursed_functions to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recursed_functions_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_recursed_functions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recursed_function_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recursed_function_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tseq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ftrace_record_recursion(i32 noundef %ip, i32 noundef %parent_ip) #0 align 64 !dbg !42 {
entry:
  call void @__sanitizer_cov_trace_pc() #11, !dbg !45
  %0 = load i32, ptr @cached_function, align 4, !dbg !46
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %ip), !dbg !47
  %cmp149 = icmp eq i32 %0, %ip, !dbg !47
  br i1 %cmp149, label %entry.if.then_crit_edge, label %entry.if.end_crit_edge, !dbg !48

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end, !dbg !48

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11, !dbg !48
  br label %if.then, !dbg !48

if.then:                                          ; preds = %if.end42.if.then_crit_edge, %entry.if.then_crit_edge
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 16
  %1 = add i64 %gcov_ctr, 1
  store i64 %1, ptr @__llvm_gcov_ctr, align 16
  br label %cleanup, !dbg !49

if.end:                                           ; preds = %if.end42.if.end_crit_edge, %entry.if.end_crit_edge
  %index.0150 = phi i32 [ %inc, %if.end42.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.7, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.7, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.12, align 8
  %3 = add i64 %gcov_ctr.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.12, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nr_records, i32 noundef 4) #12, !dbg !50
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %4 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.13, align 8
  %5 = load volatile i32, ptr @nr_records, align 4, !dbg !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !dbg !58, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5), !dbg !60
  %cmp4 = icmp slt i32 %5, 0, !dbg !60
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !61

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11, !dbg !62
  %gcov_ctr85 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8
  %6 = add i64 %gcov_ctr85, 1
  store i64 %6, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8
  br label %cleanup, !dbg !63

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0150, i32 %5), !dbg !64
  %cmp7 = icmp slt i32 %index.0150, %5, !dbg !64
  br i1 %cmp7, label %if.then8, label %if.end6.if.end9_crit_edge, !dbg !65

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11, !dbg !65
  br label %if.end9, !dbg !65

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11, !dbg !66
  %gcov_ctr86 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !66
  %7 = add i64 %gcov_ctr86, 1, !dbg !66
  store i64 %7, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !66
  br label %if.end9, !dbg !67

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %index.1 = phi i32 [ %5, %if.then8 ], [ %index.0150, %if.end6.if.end9_crit_edge ], !dbg !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %index.1), !dbg !68
  %cmp10 = icmp sgt i32 %index.1, 127, !dbg !68
  br i1 %cmp10, label %if.then11, label %for.cond.preheader, !dbg !69

for.cond.preheader:                               ; preds = %if.end9
  %i.0146 = add i32 %index.1, -1, !dbg !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0146), !dbg !70
  %cmp13147 = icmp sgt i32 %i.0146, -1, !dbg !70
  br i1 %cmp13147, label %for.body.preheader, label %for.cond.preheader.for.end_crit_edge, !dbg !71

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11, !dbg !71
  br label %for.end, !dbg !71

for.body.preheader:                               ; preds = %for.cond.preheader
  %.promoted = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 5), align 8
  br label %for.body, !dbg !71

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11, !dbg !62
  %gcov_ctr87 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8
  %8 = add i64 %gcov_ctr87, 1
  store i64 %8, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8
  br label %cleanup, !dbg !72

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %for.body.preheader
  %i.0148 = phi i32 [ %i.0, %if.end17.for.body_crit_edge ], [ %i.0146, %for.body.preheader ]
  %9 = phi i64 [ %13, %if.end17.for.body_crit_edge ], [ %.promoted, %for.body.preheader ]
  %arrayidx = getelementptr [128 x %struct.recursed_functions], ptr @recursed_functions, i32 0, i32 %i.0148, !dbg !73
  %10 = ptrtoint ptr %arrayidx to i32, !dbg !74
  call void @__asan_load4_noabort(i32 %10), !dbg !74
  %11 = load i32, ptr %arrayidx, align 4, !dbg !74
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %ip), !dbg !75
  %cmp15 = icmp eq i32 %11, %ip, !dbg !75
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !73

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11, !dbg !76
  %gcov_ctr88 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !76
  %12 = add i64 %gcov_ctr88, 1, !dbg !76
  store i64 %12, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !76
  store i32 %ip, ptr @cached_function, align 4, !dbg !77
  br label %cleanup, !dbg !78

if.end17:                                         ; preds = %for.body
  %13 = add i64 %9, 1, !dbg !79
  store i64 %13, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 5), align 8, !dbg !79
  %i.0 = add i32 %i.0148, -1, !dbg !62
  %cmp13 = icmp sgt i32 %i.0, -1, !dbg !70
  br i1 %cmp13, label %if.end17.for.body_crit_edge, label %if.end17.for.end_crit_edge, !dbg !71, !llvm.loop !80

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11, !dbg !71
  br label %for.end, !dbg !71

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11, !dbg !71
  br label %for.body, !dbg !71

for.end:                                          ; preds = %if.end17.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  store i32 %ip, ptr @cached_function, align 4, !dbg !81
  %arrayidx18 = getelementptr [128 x %struct.recursed_functions], ptr @recursed_functions, i32 0, i32 %index.1, !dbg !82
  %gcov_ctr.i121 = load i64, ptr @__llvm_gcov_ctr.8, align 8
  %14 = add i64 %gcov_ctr.i121, 1
  store i64 %14, ptr @__llvm_gcov_ctr.8, align 8
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx18, i32 noundef 4) #12, !dbg !83
  %gcov_ctr.i.i122 = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %15 = add i64 %gcov_ctr.i.i122, 1
  store i64 %15, ptr @__llvm_gcov_ctr.13, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !dbg !82, !srcloc !86
  tail call void @llvm.prefetch.p0(ptr %arrayidx18, i32 1, i32 3, i32 1) #12, !dbg !87
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.end
  %gcov_ctr.i134 = load i64, ptr @__llvm_gcov_ctr.9, align 16, !dbg !91
  %16 = add i64 %gcov_ctr.i134, 1, !dbg !91
  store i64 %16, ptr @__llvm_gcov_ctr.9, align 16, !dbg !91
  %17 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %arrayidx18, i32 0, i32 %ip) #12, !dbg !92, !srcloc !93
  %asmresult.i = extractvalue { i32, i32 } %17, 0, !dbg !92
  %tobool.not.i = icmp eq i32 %asmresult.i, 0, !dbg !94
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge, !dbg !94, !llvm.loop !95

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11, !dbg !94
  br label %do.body.i, !dbg !94

__cmpxchg.exit:                                   ; preds = %do.body.i
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 1), align 8, !dbg !98
  %18 = add i64 %gcov_ctr2.i, 1, !dbg !98
  store i64 %18, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 1), align 8, !dbg !98
  %asmresult1.i = extractvalue { i32, i32 } %17, 1, !dbg !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !dbg !82, !srcloc !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i), !dbg !100
  %cmp38.not = icmp eq i32 %asmresult1.i, 0, !dbg !100
  br i1 %cmp38.not, label %if.end43, label %if.then39, !dbg !101

if.then39:                                        ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult1.i, i32 %ip), !dbg !102
  %cmp40 = icmp eq i32 %asmresult1.i, %ip, !dbg !102
  br i1 %cmp40, label %if.then41, label %if.end42, !dbg !103

if.then41:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11, !dbg !62
  %gcov_ctr91 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 7), align 8
  %19 = add i64 %gcov_ctr91, 1
  store i64 %19, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 7), align 8
  br label %cleanup, !dbg !104

if.end42:                                         ; preds = %if.then39
  %gcov_ctr90 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 6), align 16, !dbg !105
  %20 = add i64 %gcov_ctr90, 1, !dbg !105
  store i64 %20, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 6), align 16, !dbg !105
  %inc = add i32 %index.1, 1, !dbg !105
  %21 = load i32, ptr @cached_function, align 4, !dbg !46
  %cmp = icmp eq i32 %21, %ip, !dbg !47
  br i1 %cmp, label %if.end42.if.then_crit_edge, label %if.end42.if.end_crit_edge, !dbg !48

if.end42.if.end_crit_edge:                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11, !dbg !48
  br label %if.end, !dbg !48

if.end42.if.then_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11, !dbg !48
  br label %if.then, !dbg !48

if.end43:                                         ; preds = %__cmpxchg.exit
  %parent_ip45 = getelementptr [128 x %struct.recursed_functions], ptr @recursed_functions, i32 0, i32 %index.1, i32 1, !dbg !106
  %22 = ptrtoint ptr %parent_ip45 to i32, !dbg !107
  call void @__asan_store4_noabort(i32 %22), !dbg !107
  store i32 %parent_ip, ptr %parent_ip45, align 4, !dbg !107
  %gcov_ctr.i123 = load i64, ptr @__llvm_gcov_ctr.7, align 8
  %23 = add i64 %gcov_ctr.i123, 1
  store i64 %23, ptr @__llvm_gcov_ctr.7, align 8
  %gcov_ctr.i.i124 = load i64, ptr @__llvm_gcov_ctr.12, align 8
  %24 = add i64 %gcov_ctr.i.i124, 1
  store i64 %24, ptr @__llvm_gcov_ctr.12, align 8
  %call.i.i125 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nr_records, i32 noundef 4) #12, !dbg !108
  %gcov_ctr.i.i.i126 = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %25 = add i64 %gcov_ctr.i.i.i126, 1
  store i64 %25, ptr @__llvm_gcov_ctr.13, align 8
  %26 = load volatile i32, ptr @nr_records, align 4, !dbg !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !dbg !112, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26), !dbg !114
  %cmp53 = icmp slt i32 %26, 0, !dbg !114
  br i1 %cmp53, label %if.then54, label %if.else, !dbg !115

if.then54:                                        ; preds = %if.end43
  %gcov_ctr.i127 = load i64, ptr @__llvm_gcov_ctr.8, align 8
  %27 = add i64 %gcov_ctr.i127, 1
  store i64 %27, ptr @__llvm_gcov_ctr.8, align 8
  %call.i128 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx18, i32 noundef 4) #12, !dbg !116
  %gcov_ctr.i.i129 = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %28 = add i64 %gcov_ctr.i.i129, 1
  store i64 %28, ptr @__llvm_gcov_ctr.13, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !dbg !118, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr %arrayidx18, i32 1, i32 3, i32 1) #12, !dbg !120
  br label %do.body.i138

do.body.i138:                                     ; preds = %do.body.i138.do.body.i138_crit_edge, %if.then54
  %gcov_ctr.i135 = load i64, ptr @__llvm_gcov_ctr.9, align 16, !dbg !122
  %29 = add i64 %gcov_ctr.i135, 1, !dbg !122
  store i64 %29, ptr @__llvm_gcov_ctr.9, align 16, !dbg !122
  %30 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %arrayidx18, i32 %ip, i32 0) #12, !dbg !123, !srcloc !93
  %asmresult.i136 = extractvalue { i32, i32 } %30, 0, !dbg !123
  %tobool.not.i137 = icmp eq i32 %asmresult.i136, 0, !dbg !124
  br i1 %tobool.not.i137, label %__cmpxchg.exit141, label %do.body.i138.do.body.i138_crit_edge, !dbg !124, !llvm.loop !125

do.body.i138.do.body.i138_crit_edge:              ; preds = %do.body.i138
  call void @__sanitizer_cov_trace_pc() #11, !dbg !124
  br label %do.body.i138, !dbg !124

__cmpxchg.exit141:                                ; preds = %do.body.i138
  call void @__sanitizer_cov_trace_pc() #11, !dbg !128
  %gcov_ctr2.i139 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 1), align 8, !dbg !128
  %31 = add i64 %gcov_ctr2.i139, 1, !dbg !128
  store i64 %31, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 1), align 8, !dbg !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !dbg !118, !srcloc !129
  %gcov_ctr92 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 8), align 16, !dbg !118
  %32 = add i64 %gcov_ctr92, 1, !dbg !118
  store i64 %32, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 8), align 16, !dbg !118
  br label %cleanup, !dbg !118

if.else:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %index.1), !dbg !130
  %cmp78.not = icmp sgt i32 %26, %index.1, !dbg !130
  br i1 %cmp78.not, label %if.else.if.end81_crit_edge, label %if.then79, !dbg !131

if.else.if.end81_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11, !dbg !131
  br label %if.end81, !dbg !131

if.then79:                                        ; preds = %if.else
  %gcov_ctr93 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 9), align 8, !dbg !132
  %33 = add i64 %gcov_ctr93, 1, !dbg !132
  store i64 %33, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 9), align 8, !dbg !132
  %add = add i32 %index.1, 1, !dbg !133
  %gcov_ctr.i130 = load i64, ptr @__llvm_gcov_ctr.10, align 8
  %34 = add i64 %gcov_ctr.i130, 1
  store i64 %34, ptr @__llvm_gcov_ctr.10, align 8
  %gcov_ctr.i.i131 = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %35 = add i64 %gcov_ctr.i.i131, 1
  store i64 %35, ptr @__llvm_gcov_ctr.14, align 8
  %call.i.i132 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nr_records, i32 noundef 4) #12, !dbg !134
  %gcov_ctr.i.i.i133 = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %36 = add i64 %gcov_ctr.i.i.i133, 1
  store i64 %36, ptr @__llvm_gcov_ctr.13, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !dbg !139, !srcloc !143
  %gcov_ctr.i.i1.i = load i64, ptr @__llvm_gcov_ctr.16, align 8
  %37 = add i64 %gcov_ctr.i.i1.i, 1
  store i64 %37, ptr @__llvm_gcov_ctr.16, align 8
  tail call void @llvm.prefetch.p0(ptr nonnull @nr_records, i32 1, i32 3, i32 1) #12, !dbg !144
  br label %do.body.i.i.i, !dbg !148

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.then79
  %gcov_ctr4.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !149
  %38 = add i64 %gcov_ctr4.i.i.i, 1, !dbg !149
  store i64 %38, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !149
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_records, ptr nonnull @nr_records, i32 %26, i32 %add, ptr nonnull elementtype(i32) @nr_records) #12, !dbg !150, !srcloc !151
  %asmresult.i.i.i = extractvalue { i32, i32 } %39, 0, !dbg !150
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0, !dbg !152
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge, !dbg !152, !llvm.loop !153

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11, !dbg !152
  br label %do.body.i.i.i, !dbg !152

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11, !dbg !155
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.15, align 8, !dbg !155
  %40 = add i64 %gcov_ctr.i2.i, 1, !dbg !155
  store i64 %40, ptr @__llvm_gcov_ctr.15, align 8, !dbg !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !dbg !155, !srcloc !156
  br label %if.end81, !dbg !157

if.end81:                                         ; preds = %atomic_cmpxchg.exit, %if.else.if.end81_crit_edge
  %gcov_ctr94 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 10), align 16
  %41 = add i64 %gcov_ctr94, 1
  store i64 %41, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 10), align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %__cmpxchg.exit141, %if.then41, %if.then16, %if.then11, %if.then5, %if.then
  ret void, !dbg !158
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @create_recursed_functions() #1 section ".init.text" align 64 !dbg !159 {
entry:
  call void @__sanitizer_cov_trace_pc() #11, !dbg !160
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.11, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.11, align 8
  %call = tail call ptr @trace_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 416, ptr noundef null, ptr noundef null, ptr noundef nonnull @recursed_functions_fops) #12, !dbg !161
  %tobool.not = icmp eq ptr %call, null, !dbg !162
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !dbg !163

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11, !dbg !163
  br label %if.end, !dbg !163

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11, !dbg !164
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 1), align 8, !dbg !164
  %1 = add i64 %gcov_ctr2, 1, !dbg !164
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 1), align 8, !dbg !164
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13, !dbg !164
  br label %if.end, !dbg !164

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0, !dbg !165
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @recursed_function_write(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buffer, i32 noundef returned %count, ptr nocapture noundef readnone %ppos) #5 align 64 !dbg !166 {
entry:
  call void @__sanitizer_cov_trace_pc() #11, !dbg !167
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.17, align 8
  ret i32 %count, !dbg !168
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @recursed_function_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 !dbg !169 {
entry:
  call void @__sanitizer_cov_trace_pc() #11, !dbg !170
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.18, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.18, align 16
  tail call void @mutex_lock_nested(ptr noundef nonnull @recursed_function_lock, i32 noundef 0) #12, !dbg !171
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8, !dbg !172
  %1 = ptrtoint ptr %f_mode to i32, !dbg !172
  call void @__asan_load4_noabort(i32 %1), !dbg !172
  %2 = load i32, ptr %f_mode, align 8, !dbg !172
  %and = and i32 %2, 2, !dbg !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !173
  %tobool.not = icmp eq i32 %and, 0, !dbg !173
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true, !dbg !174

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11, !dbg !174
  br label %if.end, !dbg !174

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !175
  %3 = add i64 %gcov_ctr17, 1, !dbg !175
  store i64 %3, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !175
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7, !dbg !176
  %4 = ptrtoint ptr %f_flags to i32, !dbg !176
  call void @__asan_load4_noabort(i32 %4), !dbg !176
  %5 = load i32, ptr %f_flags, align 4, !dbg !176
  %and1 = and i32 %5, 512, !dbg !177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1), !dbg !177
  %tobool2.not = icmp eq i32 %and1, 0, !dbg !177
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then, !dbg !178

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11, !dbg !178
  br label %if.end, !dbg !178

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11, !dbg !179
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.8, align 8
  %6 = add i64 %gcov_ctr.i.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.8, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nr_records, i32 noundef 4) #12, !dbg !180
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %7 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.13, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.20, align 8, !dbg !184
  %8 = add i64 %gcov_ctr.i, 1, !dbg !184
  store i64 %8, ptr @__llvm_gcov_ctr.20, align 8, !dbg !184
  store volatile i32 -1, ptr @nr_records, align 4, !dbg !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !dbg !185, !srcloc !186
  %9 = call ptr @memset(ptr @recursed_functions, i32 0, i32 1024), !dbg !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !dbg !188, !srcloc !189
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 2), align 16, !dbg !190
  %10 = add i64 %gcov_ctr18, 1, !dbg !190
  store i64 %10, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 2), align 16, !dbg !190
  %gcov_ctr.i.i23 = load i64, ptr @__llvm_gcov_ctr.8, align 8
  %11 = add i64 %gcov_ctr.i.i23, 1
  store i64 %11, ptr @__llvm_gcov_ctr.8, align 8
  %call.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nr_records, i32 noundef 4) #12, !dbg !191
  %gcov_ctr.i.i.i25 = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %12 = add i64 %gcov_ctr.i.i.i25, 1
  store i64 %12, ptr @__llvm_gcov_ctr.13, align 8
  %gcov_ctr.i26 = load i64, ptr @__llvm_gcov_ctr.20, align 8, !dbg !194
  %13 = add i64 %gcov_ctr.i26, 1, !dbg !194
  store i64 %13, ptr @__llvm_gcov_ctr.20, align 8, !dbg !194
  store volatile i32 0, ptr @nr_records, align 4, !dbg !194
  br label %if.end, !dbg !195

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %f_mode to i32, !dbg !196
  call void @__asan_load4_noabort(i32 %14), !dbg !196
  %15 = load i32, ptr %f_mode, align 8, !dbg !196
  %and13 = and i32 %15, 1, !dbg !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13), !dbg !197
  %tobool14.not = icmp eq i32 %and13, 0, !dbg !197
  br i1 %tobool14.not, label %if.end.if.end16_crit_edge, label %if.then15, !dbg !198

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11, !dbg !198
  br label %if.end16, !dbg !198

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11, !dbg !199
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 3), align 8, !dbg !199
  %16 = add i64 %gcov_ctr19, 1, !dbg !199
  store i64 %16, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 3), align 8, !dbg !199
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @recursed_function_seq_ops) #12, !dbg !200
  br label %if.end16, !dbg !201

if.end16:                                         ; preds = %if.then15, %if.end.if.end16_crit_edge
  %ret.0 = phi i32 [ %call, %if.then15 ], [ 0, %if.end.if.end16_crit_edge ], !dbg !179
  tail call void @mutex_unlock(ptr noundef nonnull @recursed_function_lock) #12, !dbg !202
  ret i32 %ret.0, !dbg !203
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @recursed_function_release(ptr noundef %inode, ptr noundef %file) #0 align 64 !dbg !204 {
entry:
  call void @__sanitizer_cov_trace_pc() #11, !dbg !205
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.19, align 8
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8, !dbg !206
  %1 = ptrtoint ptr %f_mode to i32, !dbg !206
  call void @__asan_load4_noabort(i32 %1), !dbg !206
  %2 = load i32, ptr %f_mode, align 8, !dbg !206
  %and = and i32 %2, 1, !dbg !207
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !207
  %tobool.not = icmp eq i32 %and, 0, !dbg !207
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !dbg !208

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11, !dbg !208
  br label %if.end, !dbg !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11, !dbg !209
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 1), align 8, !dbg !209
  %3 = add i64 %gcov_ctr1, 1, !dbg !209
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 1), align 8, !dbg !209
  %call = tail call i32 @seq_release(ptr noundef %inode, ptr noundef %file) #12, !dbg !210
  br label %if.end, !dbg !210

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0, !dbg !211
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @recursed_function_seq_start(ptr nocapture noundef readnone %m, ptr nocapture noundef readonly %pos) #0 align 64 !dbg !212 {
entry:
  call void @__sanitizer_cov_trace_pc() #11, !dbg !213
  tail call void @mutex_lock_nested(ptr noundef nonnull @recursed_function_lock, i32 noundef 0) #12, !dbg !214
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.7, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.7, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.12, align 8
  %1 = add i64 %gcov_ctr.i.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.12, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nr_records, i32 noundef 4) #12, !dbg !215
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %2 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.13, align 8
  %3 = load volatile i32, ptr @nr_records, align 4, !dbg !218
  %4 = ptrtoint ptr %pos to i32, !dbg !219
  call void @__asan_load8_noabort(i32 %4), !dbg !219
  %5 = load i64, ptr %pos, align 8, !dbg !219
  %conv = sext i32 %3 to i64, !dbg !220
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv), !dbg !221
  %cmp = icmp slt i64 %5, %conv, !dbg !221
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !dbg !219

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11, !dbg !219
  br label %if.end, !dbg !219

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11, !dbg !222
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.21, align 16, !dbg !222
  %6 = add i64 %gcov_ctr, 1, !dbg !222
  store i64 %6, ptr @__llvm_gcov_ctr.21, align 16, !dbg !222
  %7 = ptrtoint ptr %pos to i32, !dbg !223
  call void @__asan_load8_noabort(i32 %7), !dbg !223
  %8 = load i64, ptr %pos, align 8, !dbg !223
  %idxprom = trunc i64 %8 to i32, !dbg !224
  %arrayidx = getelementptr [128 x %struct.recursed_functions], ptr @recursed_functions, i32 0, i32 %idxprom, !dbg !224
  br label %if.end, !dbg !225

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi ptr [ %arrayidx, %if.then ], [ null, %entry.if.end_crit_edge ], !dbg !226
  %gcov_ctr.i10 = load i64, ptr @__llvm_gcov_ctr.25, align 8
  %9 = add i64 %gcov_ctr.i10, 1
  store i64 %9, ptr @__llvm_gcov_ctr.25, align 8
  %gcov_ctr90.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 12), align 16, !dbg !227
  %10 = add i64 %gcov_ctr90.i.i.i, 1, !dbg !227
  store i64 %10, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 12), align 16, !dbg !227
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 2), align 16, !dbg !235
  %11 = add i64 %gcov_ctr11.i.i, 1, !dbg !235
  store i64 %11, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 2), align 16, !dbg !235
  %gcov_ctr.i.i.i11 = load i64, ptr @__llvm_gcov_ctr.31, align 16, !dbg !236
  %12 = add i64 %gcov_ctr.i.i.i11, 1, !dbg !236
  store i64 %12, ptr @__llvm_gcov_ctr.31, align 16, !dbg !236
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32)), !dbg !239
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4, !dbg !239
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 4128) #14, !dbg !240
  store ptr %call7.i.i, ptr @tseq, align 4, !dbg !241
  %tobool.not = icmp eq ptr %call7.i.i, null, !dbg !242
  br i1 %tobool.not, label %if.then3, label %if.end5, !dbg !243

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11, !dbg !244
  %gcov_ctr7 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 1), align 8, !dbg !244
  %14 = add i64 %gcov_ctr7, 1, !dbg !244
  store i64 %14, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 1), align 8, !dbg !244
  %gcov_ctr.i12 = load i64, ptr @__llvm_gcov_ctr.26, align 8
  %15 = add i64 %gcov_ctr.i12, 1
  store i64 %15, ptr @__llvm_gcov_ctr.26, align 8
  br label %cleanup, !dbg !245

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11, !dbg !246
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 2), align 16, !dbg !246
  %16 = add i64 %gcov_ctr8, 1, !dbg !246
  store i64 %16, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 2), align 16, !dbg !246
  %gcov_ctr.i13 = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %17 = add i64 %gcov_ctr.i13, 1
  store i64 %17, ptr @__llvm_gcov_ctr.27, align 8
  %seq.i = getelementptr inbounds %struct.trace_seq, ptr %call7.i.i, i32 0, i32 1, !dbg !247
  %gcov_ctr.i.i14 = load i64, ptr @__llvm_gcov_ctr.35, align 8
  %18 = add i64 %gcov_ctr.i.i14, 1
  store i64 %18, ptr @__llvm_gcov_ctr.35, align 8
  %19 = ptrtoint ptr %seq.i to i32, !dbg !251
  call void @__asan_store4_noabort(i32 %19), !dbg !251
  store ptr %call7.i.i, ptr %seq.i, align 8, !dbg !251
  %size1.i.i = getelementptr inbounds %struct.trace_seq, ptr %call7.i.i, i32 0, i32 1, i32 1, !dbg !255
  %20 = ptrtoint ptr %size1.i.i to i32, !dbg !256
  call void @__asan_store4_noabort(i32 %20), !dbg !256
  store i32 4096, ptr %size1.i.i, align 4, !dbg !256
  %gcov_ctr.i.i.i15 = load i64, ptr @__llvm_gcov_ctr.36, align 8
  %21 = add i64 %gcov_ctr.i.i.i15, 1
  store i64 %21, ptr @__llvm_gcov_ctr.36, align 8
  %len.i.i.i = getelementptr inbounds %struct.trace_seq, ptr %call7.i.i, i32 0, i32 1, i32 2, !dbg !257
  %22 = ptrtoint ptr %len.i.i.i to i32, !dbg !260
  call void @__asan_store4_noabort(i32 %22), !dbg !260
  store i32 0, ptr %len.i.i.i, align 8, !dbg !260
  %readpos.i.i.i = getelementptr inbounds %struct.trace_seq, ptr %call7.i.i, i32 0, i32 1, i32 3, !dbg !261
  %23 = ptrtoint ptr %readpos.i.i.i to i32, !dbg !262
  call void @__asan_store8_noabort(i32 %23), !dbg !262
  store i64 0, ptr %readpos.i.i.i, align 8, !dbg !262
  %full.i = getelementptr inbounds %struct.trace_seq, ptr %call7.i.i, i32 0, i32 2, !dbg !263
  %24 = ptrtoint ptr %full.i to i32, !dbg !264
  call void @__asan_store4_noabort(i32 %24), !dbg !264
  store i32 0, ptr %full.i, align 8, !dbg !264
  br label %cleanup, !dbg !265

cleanup:                                          ; preds = %if.end5, %if.then3
  %retval.0 = phi ptr [ %ret.0, %if.end5 ], [ inttoptr (i32 -12 to ptr), %if.then3 ], !dbg !226
  ret ptr %retval.0, !dbg !266
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recursed_function_seq_stop(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %v) #0 align 64 !dbg !267 {
entry:
  call void @__sanitizer_cov_trace_pc() #11, !dbg !268
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.22, align 8
  %1 = load ptr, ptr @tseq, align 4, !dbg !269
  tail call void @kfree(ptr noundef %1) #12, !dbg !270
  tail call void @mutex_unlock(ptr noundef nonnull @recursed_function_lock) #12, !dbg !271
  ret void, !dbg !272
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @recursed_function_seq_next(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #0 align 64 !dbg !273 {
entry:
  call void @__sanitizer_cov_trace_pc() #11, !dbg !274
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.7, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.7, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.12, align 8
  %1 = add i64 %gcov_ctr.i.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.12, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nr_records, i32 noundef 4) #12, !dbg !275
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %2 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.13, align 8
  %3 = load volatile i32, ptr @nr_records, align 4, !dbg !278
  %4 = ptrtoint ptr %pos to i32, !dbg !279
  call void @__asan_load8_noabort(i32 %4), !dbg !279
  %5 = load i64, ptr %pos, align 8, !dbg !279
  %inc = add i64 %5, 1, !dbg !279
  store i64 %inc, ptr %pos, align 8, !dbg !279
  %conv = trunc i64 %inc to i32, !dbg !279
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv), !dbg !280
  %cmp = icmp sgt i32 %3, %conv, !dbg !280
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !281

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11, !dbg !282
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.23, align 8, !dbg !282
  %6 = add i64 %gcov_ctr, 1, !dbg !282
  store i64 %6, ptr @__llvm_gcov_ctr.23, align 8, !dbg !282
  %arrayidx = getelementptr [128 x %struct.recursed_functions], ptr @recursed_functions, i32 0, i32 %conv, !dbg !283
  br label %cond.end, !dbg !281

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11, !dbg !281
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 1), align 8, !dbg !281
  %7 = add i64 %gcov_ctr2, 1, !dbg !281
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 1), align 8, !dbg !281
  br label %cond.end, !dbg !281

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx, %cond.true ], [ null, %cond.false ], !dbg !281
  ret ptr %cond, !dbg !284
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @recursed_function_seq_show(ptr noundef %m, ptr noundef readonly %v) #0 align 64 !dbg !285 {
entry:
  call void @__sanitizer_cov_trace_pc() #11, !dbg !286
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.24, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.24, align 8
  %tobool.not = icmp eq ptr %v, null, !dbg !287
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !dbg !287

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11, !dbg !287
  br label %if.end, !dbg !287

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11, !dbg !288
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), align 8, !dbg !288
  %1 = add i64 %gcov_ctr1, 1, !dbg !288
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), align 8, !dbg !288
  %2 = load ptr, ptr @tseq, align 4, !dbg !288
  %parent_ip = getelementptr inbounds %struct.recursed_functions, ptr %v, i32 0, i32 1, !dbg !289
  %3 = ptrtoint ptr %parent_ip to i32, !dbg !289
  call void @__asan_load4_noabort(i32 %3), !dbg !289
  %4 = load i32, ptr %parent_ip, align 4, !dbg !289
  tail call void @trace_seq_print_sym(ptr noundef %2, i32 noundef %4, i1 noundef zeroext true) #12, !dbg !290
  %5 = load ptr, ptr @tseq, align 4, !dbg !291
  tail call void @trace_seq_puts(ptr noundef %5, ptr noundef nonnull @.str.6) #12, !dbg !292
  %6 = load ptr, ptr @tseq, align 4, !dbg !293
  %7 = ptrtoint ptr %v to i32, !dbg !294
  call void @__asan_load4_noabort(i32 %7), !dbg !294
  %8 = load i32, ptr %v, align 4, !dbg !294
  tail call void @trace_seq_print_sym(ptr noundef %6, i32 noundef %8, i1 noundef zeroext true) #12, !dbg !295
  %9 = load ptr, ptr @tseq, align 4, !dbg !296
  tail call void @trace_seq_putc(ptr noundef %9, i8 noundef zeroext 10) #12, !dbg !297
  %10 = load ptr, ptr @tseq, align 4, !dbg !298
  %call = tail call i32 @trace_print_seq(ptr noundef %m, ptr noundef %10) #12, !dbg !299
  br label %if.end, !dbg !300

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ], !dbg !301
  ret i32 %ret.0, !dbg !302
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_print_sym(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_print_seq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #7 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 -1443850581) #12
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #12
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #12
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 31
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #11
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @llvm_gcda_summary_info() #12
  tail call void @llvm_gcda_end_file() #12
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #8 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) @__llvm_gcov_ctr, i8 0, i64 96, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.7, align 8
  store i64 0, ptr @__llvm_gcov_ctr.8, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.9, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.10, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.11, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.12, align 8
  store i64 0, ptr @__llvm_gcov_ctr.13, align 8
  store i64 0, ptr @__llvm_gcov_ctr.14, align 8
  store i64 0, ptr @__llvm_gcov_ctr.15, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.16, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.17, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.18, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.19, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.20, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.21, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.22, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.23, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.24, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.25, align 8
  store i64 0, ptr @__llvm_gcov_ctr.26, align 8
  store i64 0, ptr @__llvm_gcov_ctr.27, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.28, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.29, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @__llvm_gcov_ctr.30, i8 0, i64 216, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.31, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.32, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.33, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.34, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.35, align 8
  store i64 0, ptr @__llvm_gcov_ctr.36, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #7 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #12
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { noinline nounwind uwtable(sync) }
attributes #8 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind uwtable(sync) }
attributes #11 = { nomerge }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !25, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.gcov = !{!40}
!llvm.ident = !{!41}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_recursion_record.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @__ksymtab_ftrace_record_recursion, !3, !"__ksymtab_ftrace_record_recursion", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_recursion_record.c", i32 116, i32 1}
!4 = !{ptr @__initcall__kmod_trace_recursion_record__262_236_create_recursed_functions5, !5, !"__initcall__kmod_trace_recursion_record__262_236_create_recursed_functions5", i1 false, i1 false}
!5 = !{!"../kernel/trace/trace_recursion_record.c", i32 236, i32 1}
!6 = !{ptr @recursed_functions, !7, !"recursed_functions", i1 false, i1 false}
!7 = !{!"../kernel/trace/trace_recursion_record.c", i32 16, i32 34}
!8 = !{ptr @nr_records, !9, !"nr_records", i1 false, i1 false}
!9 = !{!"../kernel/trace/trace_recursion_record.c", i32 17, i32 17}
!10 = !{ptr @cached_function, !11, !"cached_function", i1 false, i1 false}
!11 = !{!"../kernel/trace/trace_recursion_record.c", i32 23, i32 22}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/trace/trace_recursion_record.c", i32 229, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/trace/trace_recursion_record.c", i32 232, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @create_recursed_functions._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @create_recursed_functions._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @recursed_functions_fops, !21, !"recursed_functions_fops", i1 false, i1 false}
!21 = !{!"../kernel/trace/trace_recursion_record.c", i32 217, i32 37}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/trace/trace_recursion_record.c", i32 118, i32 8}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @recursed_function_lock, !23, !"recursed_function_lock", i1 false, i1 false}
!26 = !{ptr @recursed_function_seq_ops, !27, !"recursed_function_seq_ops", i1 false, i1 false}
!27 = !{!"../kernel/trace/trace_recursion_record.c", i32 174, i32 36}
!28 = !{ptr @tseq, !29, !"tseq", i1 false, i1 false}
!29 = !{!"../kernel/trace/trace_recursion_record.c", i32 119, i32 26}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/trace/trace_recursion_record.c", i32 165, i32 24}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_recursion_record.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_recursion_record.gcda", !0}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = distinct !DISubprogram(name: "ftrace_record_recursion", scope: !1, file: !1, line: 25, type: !43, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!43 = !DISubroutineType(types: !44)
!44 = !{}
!45 = !DILocation(line: 26, scope: !42)
!46 = !DILocation(line: 33, column: 12, scope: !42)
!47 = !DILocation(line: 33, column: 9, scope: !42)
!48 = !DILocation(line: 33, column: 6, scope: !42)
!49 = !DILocation(line: 34, column: 3, scope: !42)
!50 = !DILocation(line: 71, column: 2, scope: !51, inlinedAt: !53)
!51 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !52, file: !52, line: 69, type: !43, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!52 = !DIFile(filename: "../include/linux/instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!53 = distinct !DILocation(line: 27, column: 2, scope: !54, inlinedAt: !56)
!54 = distinct !DISubprogram(name: "atomic_read", scope: !55, file: !55, line: 25, type: !43, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!55 = !DIFile(filename: "../include/linux/atomic/atomic-instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!56 = distinct !DILocation(line: 36, column: 6, scope: !42)
!57 = !DILocation(line: 28, column: 9, scope: !54, inlinedAt: !56)
!58 = !DILocation(line: 38, column: 2, scope: !42)
!59 = !{i64 2155272942}
!60 = !DILocation(line: 39, column: 8, scope: !42)
!61 = !DILocation(line: 39, column: 6, scope: !42)
!62 = !DILocation(line: 0, scope: !42)
!63 = !DILocation(line: 40, column: 3, scope: !42)
!64 = !DILocation(line: 58, column: 12, scope: !42)
!65 = !DILocation(line: 58, column: 6, scope: !42)
!66 = !DILocation(line: 59, column: 11, scope: !42)
!67 = !DILocation(line: 59, column: 3, scope: !42)
!68 = !DILocation(line: 60, column: 12, scope: !42)
!69 = !DILocation(line: 60, column: 6, scope: !42)
!70 = !DILocation(line: 63, column: 24, scope: !42)
!71 = !DILocation(line: 63, column: 2, scope: !42)
!72 = !DILocation(line: 61, column: 3, scope: !42)
!73 = !DILocation(line: 64, column: 7, scope: !42)
!74 = !DILocation(line: 64, column: 29, scope: !42)
!75 = !DILocation(line: 64, column: 32, scope: !42)
!76 = !DILocation(line: 65, column: 22, scope: !42)
!77 = !DILocation(line: 65, column: 20, scope: !42)
!78 = !DILocation(line: 66, column: 4, scope: !42)
!79 = !DILocation(line: 68, column: 2, scope: !42)
!80 = distinct !{!80, !71, !79}
!81 = !DILocation(line: 70, column: 18, scope: !42)
!82 = !DILocation(line: 78, column: 8, scope: !42)
!83 = !DILocation(line: 86, column: 2, scope: !84, inlinedAt: !85)
!84 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !52, file: !52, line: 84, type: !43, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!85 = distinct !DILocation(line: 78, column: 8, scope: !42)
!86 = !{i64 2155273886}
!87 = !DILocation(line: 161, column: 2, scope: !88, inlinedAt: !90)
!88 = distinct !DISubprogram(name: "__cmpxchg", scope: !89, file: !89, line: 156, type: !43, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!89 = !DIFile(filename: "../arch/arm/include/asm/cmpxchg.h", directory: "/llk/linux-5.17/build_arm_allyes")
!90 = distinct !DILocation(line: 78, column: 8, scope: !42)
!91 = !DILocation(line: 198, column: 12, scope: !88, inlinedAt: !90)
!92 = !DILocation(line: 192, column: 4, scope: !88, inlinedAt: !90)
!93 = !{i64 906954, i64 906975, i64 906998, i64 907017, i64 907036}
!94 = !DILocation(line: 200, column: 3, scope: !88, inlinedAt: !90)
!95 = distinct !{!95, !96, !97}
!96 = !DILocation(line: 191, column: 3, scope: !88, inlinedAt: !90)
!97 = !DILocation(line: 200, column: 15, scope: !88, inlinedAt: !90)
!98 = !DILocation(line: 201, column: 3, scope: !88, inlinedAt: !90)
!99 = !{i64 2155274288}
!100 = !DILocation(line: 79, column: 10, scope: !42)
!101 = !DILocation(line: 79, column: 6, scope: !42)
!102 = !DILocation(line: 81, column: 11, scope: !42)
!103 = !DILocation(line: 81, column: 7, scope: !42)
!104 = !DILocation(line: 82, column: 4, scope: !42)
!105 = !DILocation(line: 84, column: 8, scope: !42)
!106 = !DILocation(line: 88, column: 28, scope: !42)
!107 = !DILocation(line: 88, column: 38, scope: !42)
!108 = !DILocation(line: 71, column: 2, scope: !51, inlinedAt: !109)
!109 = distinct !DILocation(line: 27, column: 2, scope: !54, inlinedAt: !110)
!110 = distinct !DILocation(line: 109, column: 6, scope: !42)
!111 = !DILocation(line: 28, column: 9, scope: !54, inlinedAt: !110)
!112 = !DILocation(line: 110, column: 2, scope: !42)
!113 = !{i64 2155274465}
!114 = !DILocation(line: 111, column: 8, scope: !42)
!115 = !DILocation(line: 111, column: 6, scope: !42)
!116 = !DILocation(line: 86, column: 2, scope: !84, inlinedAt: !117)
!117 = distinct !DILocation(line: 112, column: 3, scope: !42)
!118 = !DILocation(line: 112, column: 3, scope: !42)
!119 = !{i64 2155275405}
!120 = !DILocation(line: 161, column: 2, scope: !88, inlinedAt: !121)
!121 = distinct !DILocation(line: 112, column: 3, scope: !42)
!122 = !DILocation(line: 198, column: 12, scope: !88, inlinedAt: !121)
!123 = !DILocation(line: 192, column: 4, scope: !88, inlinedAt: !121)
!124 = !DILocation(line: 200, column: 3, scope: !88, inlinedAt: !121)
!125 = distinct !{!125, !126, !127}
!126 = !DILocation(line: 191, column: 3, scope: !88, inlinedAt: !121)
!127 = !DILocation(line: 200, column: 15, scope: !88, inlinedAt: !121)
!128 = !DILocation(line: 201, column: 3, scope: !88, inlinedAt: !121)
!129 = !{i64 2155275807}
!130 = !DILocation(line: 113, column: 13, scope: !42)
!131 = !DILocation(line: 113, column: 11, scope: !42)
!132 = !DILocation(line: 114, column: 31, scope: !42)
!133 = !DILocation(line: 114, column: 40, scope: !42)
!134 = !DILocation(line: 101, column: 2, scope: !135, inlinedAt: !136)
!135 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !52, file: !52, line: 99, type: !43, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!136 = distinct !DILocation(line: 503, column: 2, scope: !137, inlinedAt: !138)
!137 = distinct !DISubprogram(name: "atomic_cmpxchg", scope: !55, file: !55, line: 500, type: !43, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!138 = distinct !DILocation(line: 114, column: 3, scope: !42)
!139 = !DILocation(line: 968, column: 2, scope: !140, inlinedAt: !142)
!140 = distinct !DISubprogram(name: "arch_atomic_cmpxchg", scope: !141, file: !141, line: 965, type: !43, scopeLine: 966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!141 = !DIFile(filename: "../include/linux/atomic/atomic-arch-fallback.h", directory: "/llk/linux-5.17/build_arm_allyes")
!142 = distinct !DILocation(line: 504, column: 9, scope: !137, inlinedAt: !138)
!143 = !{i64 2148499285}
!144 = !DILocation(line: 111, column: 2, scope: !145, inlinedAt: !147)
!145 = distinct !DISubprogram(name: "arch_atomic_cmpxchg_relaxed", scope: !146, file: !146, line: 106, type: !43, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!146 = !DIFile(filename: "../arch/arm/include/asm/atomic.h", directory: "/llk/linux-5.17/build_arm_allyes")
!147 = distinct !DILocation(line: 969, column: 8, scope: !140, inlinedAt: !142)
!148 = !DILocation(line: 113, column: 2, scope: !145, inlinedAt: !147)
!149 = !DILocation(line: 119, column: 45, scope: !145, inlinedAt: !147)
!150 = !DILocation(line: 114, column: 3, scope: !145, inlinedAt: !147)
!151 = !{i64 882975, i64 882999, i64 883020, i64 883037, i64 883054}
!152 = !DILocation(line: 122, column: 2, scope: !145, inlinedAt: !147)
!153 = distinct !{!153, !148, !154}
!154 = !DILocation(line: 122, column: 14, scope: !145, inlinedAt: !147)
!155 = !DILocation(line: 970, column: 2, scope: !140, inlinedAt: !142)
!156 = !{i64 2148499511}
!157 = !DILocation(line: 114, column: 3, scope: !42)
!158 = !DILocation(line: 115, column: 1, scope: !42)
!159 = distinct !DISubprogram(name: "create_recursed_functions", scope: !1, file: !1, line: 225, type: !43, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!160 = !DILocation(line: 226, scope: !159)
!161 = !DILocation(line: 229, column: 11, scope: !159)
!162 = !DILocation(line: 231, column: 7, scope: !159)
!163 = !DILocation(line: 231, column: 6, scope: !159)
!164 = !DILocation(line: 232, column: 3, scope: !159)
!165 = !DILocation(line: 233, column: 2, scope: !159)
!166 = distinct !DISubprogram(name: "recursed_function_write", scope: !1, file: !1, line: 203, type: !43, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!167 = !DILocation(line: 206, scope: !166)
!168 = !DILocation(line: 207, column: 2, scope: !166)
!169 = distinct !DISubprogram(name: "recursed_function_open", scope: !1, file: !1, line: 181, type: !43, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!170 = !DILocation(line: 182, scope: !169)
!171 = !DILocation(line: 185, column: 2, scope: !169)
!172 = !DILocation(line: 187, column: 13, scope: !169)
!173 = !DILocation(line: 187, column: 20, scope: !169)
!174 = !DILocation(line: 187, column: 35, scope: !169)
!175 = !DILocation(line: 187, column: 39, scope: !169)
!176 = !DILocation(line: 187, column: 45, scope: !169)
!177 = !DILocation(line: 187, column: 53, scope: !169)
!178 = !DILocation(line: 187, column: 6, scope: !169)
!179 = !DILocation(line: 0, scope: !169)
!180 = !DILocation(line: 86, column: 2, scope: !84, inlinedAt: !181)
!181 = distinct !DILocation(line: 41, column: 2, scope: !182, inlinedAt: !183)
!182 = distinct !DISubprogram(name: "atomic_set", scope: !55, file: !55, line: 39, type: !43, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!183 = distinct !DILocation(line: 189, column: 3, scope: !169)
!184 = !DILocation(line: 42, column: 2, scope: !182, inlinedAt: !183)
!185 = !DILocation(line: 190, column: 3, scope: !169)
!186 = !{i64 2155279183}
!187 = !DILocation(line: 191, column: 3, scope: !169)
!188 = !DILocation(line: 192, column: 3, scope: !169)
!189 = !{i64 2155279339}
!190 = !DILocation(line: 194, column: 3, scope: !169)
!191 = !DILocation(line: 86, column: 2, scope: !84, inlinedAt: !192)
!192 = distinct !DILocation(line: 41, column: 2, scope: !182, inlinedAt: !193)
!193 = distinct !DILocation(line: 194, column: 3, scope: !169)
!194 = !DILocation(line: 42, column: 2, scope: !182, inlinedAt: !193)
!195 = !DILocation(line: 195, column: 2, scope: !169)
!196 = !DILocation(line: 196, column: 12, scope: !169)
!197 = !DILocation(line: 196, column: 19, scope: !169)
!198 = !DILocation(line: 196, column: 6, scope: !169)
!199 = !DILocation(line: 197, column: 18, scope: !169)
!200 = !DILocation(line: 197, column: 9, scope: !169)
!201 = !DILocation(line: 197, column: 3, scope: !169)
!202 = !DILocation(line: 198, column: 2, scope: !169)
!203 = !DILocation(line: 200, column: 2, scope: !169)
!204 = distinct !DISubprogram(name: "recursed_function_release", scope: !1, file: !1, line: 210, type: !43, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!205 = !DILocation(line: 211, scope: !204)
!206 = !DILocation(line: 212, column: 12, scope: !204)
!207 = !DILocation(line: 212, column: 19, scope: !204)
!208 = !DILocation(line: 212, column: 6, scope: !204)
!209 = !DILocation(line: 213, column: 15, scope: !204)
!210 = !DILocation(line: 213, column: 3, scope: !204)
!211 = !DILocation(line: 214, column: 2, scope: !204)
!212 = distinct !DISubprogram(name: "recursed_function_seq_start", scope: !1, file: !1, line: 121, type: !43, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!213 = !DILocation(line: 122, scope: !212)
!214 = !DILocation(line: 126, column: 2, scope: !212)
!215 = !DILocation(line: 71, column: 2, scope: !51, inlinedAt: !216)
!216 = distinct !DILocation(line: 27, column: 2, scope: !54, inlinedAt: !217)
!217 = distinct !DILocation(line: 127, column: 10, scope: !212)
!218 = !DILocation(line: 28, column: 9, scope: !54, inlinedAt: !217)
!219 = !DILocation(line: 128, column: 6, scope: !212)
!220 = !DILocation(line: 128, column: 13, scope: !212)
!221 = !DILocation(line: 128, column: 11, scope: !212)
!222 = !DILocation(line: 129, column: 30, scope: !212)
!223 = !DILocation(line: 129, column: 29, scope: !212)
!224 = !DILocation(line: 129, column: 10, scope: !212)
!225 = !DILocation(line: 130, column: 2, scope: !212)
!226 = !DILocation(line: 0, scope: !212)
!227 = !DILocation(line: 392, column: 26, scope: !228, inlinedAt: !230)
!228 = distinct !DISubprogram(name: "__kmalloc_index", scope: !229, file: !229, line: 369, type: !43, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!229 = !DIFile(filename: "../include/linux/slab.h", directory: "/llk/linux-5.17/build_arm_allyes")
!230 = distinct !DILocation(line: 576, column: 11, scope: !231, inlinedAt: !232)
!231 = distinct !DISubprogram(name: "kmalloc", scope: !229, file: !229, line: 567, type: !43, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!232 = distinct !DILocation(line: 714, column: 9, scope: !233, inlinedAt: !234)
!233 = distinct !DISubprogram(name: "kzalloc", scope: !229, file: !229, line: 712, type: !43, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!234 = distinct !DILocation(line: 132, column: 9, scope: !212)
!235 = !DILocation(line: 582, column: 33, scope: !231, inlinedAt: !232)
!236 = !DILocation(line: 339, column: 3, scope: !237, inlinedAt: !238)
!237 = distinct !DISubprogram(name: "kmalloc_type", scope: !229, file: !229, line: 332, type: !43, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!238 = distinct !DILocation(line: 582, column: 20, scope: !231, inlinedAt: !232)
!239 = !DILocation(line: 582, column: 5, scope: !231, inlinedAt: !232)
!240 = !DILocation(line: 581, column: 10, scope: !231, inlinedAt: !232)
!241 = !DILocation(line: 132, column: 7, scope: !212)
!242 = !DILocation(line: 133, column: 7, scope: !212)
!243 = !DILocation(line: 133, column: 6, scope: !212)
!244 = !DILocation(line: 134, column: 10, scope: !212)
!245 = !DILocation(line: 134, column: 3, scope: !212)
!246 = !DILocation(line: 136, column: 17, scope: !212)
!247 = !DILocation(line: 23, column: 19, scope: !248, inlinedAt: !250)
!248 = distinct !DISubprogram(name: "trace_seq_init", scope: !249, file: !249, line: 21, type: !43, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!249 = !DIFile(filename: "../include/linux/trace_seq.h", directory: "/llk/linux-5.17/build_arm_allyes")
!250 = distinct !DILocation(line: 136, column: 2, scope: !212)
!251 = !DILocation(line: 35, column: 12, scope: !252, inlinedAt: !254)
!252 = distinct !DISubprogram(name: "seq_buf_init", scope: !253, file: !253, line: 33, type: !43, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!253 = !DIFile(filename: "../include/linux/seq_buf.h", directory: "/llk/linux-5.17/build_arm_allyes")
!254 = distinct !DILocation(line: 23, column: 2, scope: !248, inlinedAt: !250)
!255 = !DILocation(line: 36, column: 5, scope: !252, inlinedAt: !254)
!256 = !DILocation(line: 36, column: 10, scope: !252, inlinedAt: !254)
!257 = !DILocation(line: 28, column: 5, scope: !258, inlinedAt: !259)
!258 = distinct !DISubprogram(name: "seq_buf_clear", scope: !253, file: !253, line: 26, type: !43, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!259 = distinct !DILocation(line: 37, column: 2, scope: !252, inlinedAt: !254)
!260 = !DILocation(line: 28, column: 9, scope: !258, inlinedAt: !259)
!261 = !DILocation(line: 29, column: 5, scope: !258, inlinedAt: !259)
!262 = !DILocation(line: 29, column: 13, scope: !258, inlinedAt: !259)
!263 = !DILocation(line: 24, column: 5, scope: !248, inlinedAt: !250)
!264 = !DILocation(line: 24, column: 10, scope: !248, inlinedAt: !250)
!265 = !DILocation(line: 138, column: 2, scope: !212)
!266 = !DILocation(line: 139, column: 1, scope: !212)
!267 = distinct !DISubprogram(name: "recursed_function_seq_stop", scope: !1, file: !1, line: 152, type: !43, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!268 = !DILocation(line: 153, scope: !267)
!269 = !DILocation(line: 154, column: 8, scope: !267)
!270 = !DILocation(line: 154, column: 2, scope: !267)
!271 = !DILocation(line: 155, column: 2, scope: !267)
!272 = !DILocation(line: 156, column: 1, scope: !267)
!273 = distinct !DISubprogram(name: "recursed_function_seq_next", scope: !1, file: !1, line: 141, type: !43, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!274 = !DILocation(line: 142, scope: !273)
!275 = !DILocation(line: 71, column: 2, scope: !51, inlinedAt: !276)
!276 = distinct !DILocation(line: 27, column: 2, scope: !54, inlinedAt: !277)
!277 = distinct !DILocation(line: 146, column: 10, scope: !273)
!278 = !DILocation(line: 28, column: 9, scope: !54, inlinedAt: !277)
!279 = !DILocation(line: 147, column: 6, scope: !273)
!280 = !DILocation(line: 149, column: 11, scope: !273)
!281 = !DILocation(line: 149, column: 9, scope: !273)
!282 = !DILocation(line: 149, column: 41, scope: !273)
!283 = !DILocation(line: 149, column: 22, scope: !273)
!284 = !DILocation(line: 149, column: 2, scope: !273)
!285 = distinct !DISubprogram(name: "recursed_function_seq_show", scope: !1, file: !1, line: 158, type: !43, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!286 = !DILocation(line: 159, scope: !285)
!287 = !DILocation(line: 163, column: 6, scope: !285)
!288 = !DILocation(line: 164, column: 23, scope: !285)
!289 = !DILocation(line: 164, column: 37, scope: !285)
!290 = !DILocation(line: 164, column: 3, scope: !285)
!291 = !DILocation(line: 165, column: 18, scope: !285)
!292 = !DILocation(line: 165, column: 3, scope: !285)
!293 = !DILocation(line: 166, column: 23, scope: !285)
!294 = !DILocation(line: 166, column: 37, scope: !285)
!295 = !DILocation(line: 166, column: 3, scope: !285)
!296 = !DILocation(line: 167, column: 18, scope: !285)
!297 = !DILocation(line: 167, column: 3, scope: !285)
!298 = !DILocation(line: 168, column: 28, scope: !285)
!299 = !DILocation(line: 168, column: 9, scope: !285)
!300 = !DILocation(line: 169, column: 2, scope: !285)
!301 = !DILocation(line: 0, scope: !285)
!302 = !DILocation(line: 171, column: 2, scope: !285)
