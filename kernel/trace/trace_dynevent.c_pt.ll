; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_dynevent.c_pt.bc'
source_filename = "../kernel/trace/trace_dynevent.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dynevent_create\22, \22a\22\09"
module asm "\09.weak\09__crc_dynevent_create\09\09\09\09"
module asm "\09.long\09__crc_dynevent_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dynevent_create:\09\09\09\09\09"
module asm "\09.asciz \09\22dynevent_create\22\09\09\09\09\09"
module asm "__kstrtabns_dynevent_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.0, %struct.trace_event, ptr, ptr, %union.anon.98, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.0 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.98 = type { ptr }
%struct.dyn_event_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.dyn_event = type { %struct.list_head, ptr }
%struct.dynevent_arg = type { ptr, i8 }
%struct.dynevent_arg_pair = type { ptr, ptr, i8, i8 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.dynevent_cmd = type { %struct.seq_buf, ptr, i32, i32, ptr, ptr }
%struct.file = type { %union.anon.20, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@trace_event_dyn_try_get_ref.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kernel/trace/trace_dynevent.c\00", [34 x i8] zeroinitializer }, align 32
@trace_event_sem = external dso_local global %struct.rw_semaphore, align 4
@ftrace_events = external dso_local global %struct.list_head, align 4
@trace_event_dyn_put_ref.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@trace_event_dyn_put_ref.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dyn_event_ops_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dyn_event_ops_mutex, i64 52), ptr getelementptr (i8, ptr @dyn_event_ops_mutex, i64 52) }, ptr @dyn_event_ops_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@dyn_event_ops_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dyn_event_ops_list, ptr @dyn_event_ops_list }, [24 x i8] zeroinitializer }, align 32
@event_mutex = external dso_local global %struct.mutex, align 4
@dyn_event_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dyn_event_list, ptr @dyn_event_list }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_trace_dynevent__262_274_init_dynamic_event5 = internal global ptr @init_dynamic_event, section ".initcall5.init", align 4
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %s%c\00", [26 x i8] zeroinitializer }, align 32
@dynevent_arg_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013String is too long: %s%c\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dynevent_arg_add\00", [47 x i8] zeroinitializer }, align 32
@dynevent_arg_add._entry_ptr = internal global ptr @dynevent_arg_add._entry, section ".printk_index", align 4
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" %s%c%s%c\00", [22 x i8] zeroinitializer }, align 32
@dynevent_arg_pair_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013field string is too long: %s%c%s%c\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dynevent_arg_pair_add\00", [42 x i8] zeroinitializer }, align 32
@dynevent_arg_pair_add._entry_ptr = internal global ptr @dynevent_arg_pair_add._entry, section ".printk_index", align 4
@dynevent_str_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013String is too long: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dynevent_str_add\00", [47 x i8] zeroinitializer }, align 32
@dynevent_str_add._entry_ptr = internal global ptr @dynevent_str_add._entry, section ".printk_index", align 4
@__kstrtab_dynevent_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_dynevent_create = external dso_local constant [0 x i8], align 1
@__ksymtab_dynevent_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dynevent_create to i32), ptr @__kstrtab_dynevent_create, ptr @__kstrtabns_dynevent_create }, section "___ksymtab_gpl+dynevent_create", align 4
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dyn_event_ops_mutex.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dyn_event_ops_mutex\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dynamic_events\00", [17 x i8] zeroinitializer }, align 32
@dynamic_events_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @dyn_event_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dyn_event_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@init_dynamic_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014Could not create tracefs 'dynamic_events' entry\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"init_dynamic_event\00", [45 x i8] zeroinitializer }, align 32
@init_dynamic_event._entry_ptr = internal global ptr @init_dynamic_event._entry, section ".printk_index", align 4
@dyn_event_seq_op = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @dyn_event_seq_start, ptr @dyn_event_seq_stop, ptr @dyn_event_seq_next, ptr @dyn_event_seq_show }, [16 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.15 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.16 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [12 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.27 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.28 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.29 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.33 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.34 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.35 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.37 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.38 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.39 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.40 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.41 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.42 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.43 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.44 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.45 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.46 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.47 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.48 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.49 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.50 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.51 = internal global [1 x i64] zeroinitializer
@0 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_dynevent.gcda\00", [62 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [38 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 1731511295, i32 -142739927 }, %emit_function_args_ty { i32 1, i32 -1584402539, i32 -142739927 }, %emit_function_args_ty { i32 2, i32 -1688330947, i32 -142739927 }, %emit_function_args_ty { i32 3, i32 -464218692, i32 -142739927 }, %emit_function_args_ty { i32 4, i32 2137933198, i32 -142739927 }, %emit_function_args_ty { i32 5, i32 -1023618272, i32 -142739927 }, %emit_function_args_ty { i32 6, i32 1502637145, i32 -142739927 }, %emit_function_args_ty { i32 7, i32 363601677, i32 -142739927 }, %emit_function_args_ty { i32 8, i32 -20435385, i32 -142739927 }, %emit_function_args_ty { i32 9, i32 -481620889, i32 -142739927 }, %emit_function_args_ty { i32 10, i32 -1178350342, i32 -142739927 }, %emit_function_args_ty { i32 11, i32 -2044253671, i32 -142739927 }, %emit_function_args_ty { i32 12, i32 2097307782, i32 -142739927 }, %emit_function_args_ty { i32 13, i32 -399940412, i32 -142739927 }, %emit_function_args_ty { i32 14, i32 -1961370249, i32 -142739927 }, %emit_function_args_ty { i32 15, i32 -976679114, i32 -142739927 }, %emit_function_args_ty { i32 16, i32 -1820142344, i32 -142739927 }, %emit_function_args_ty { i32 17, i32 1824542646, i32 -142739927 }, %emit_function_args_ty { i32 18, i32 -751585115, i32 -142739927 }, %emit_function_args_ty { i32 19, i32 44757256, i32 -142739927 }, %emit_function_args_ty { i32 20, i32 -176284414, i32 -142739927 }, %emit_function_args_ty { i32 21, i32 2143787135, i32 -142739927 }, %emit_function_args_ty { i32 22, i32 635515162, i32 -142739927 }, %emit_function_args_ty { i32 23, i32 258177415, i32 -142739927 }, %emit_function_args_ty { i32 24, i32 47165945, i32 -142739927 }, %emit_function_args_ty { i32 25, i32 1193399290, i32 -142739927 }, %emit_function_args_ty { i32 26, i32 -1672745738, i32 -142739927 }, %emit_function_args_ty { i32 27, i32 1836136019, i32 -142739927 }, %emit_function_args_ty { i32 28, i32 1663674071, i32 -142739927 }, %emit_function_args_ty { i32 29, i32 -986397664, i32 -142739927 }, %emit_function_args_ty { i32 30, i32 1044414937, i32 -142739927 }, %emit_function_args_ty { i32 31, i32 1311495864, i32 -142739927 }, %emit_function_args_ty { i32 32, i32 1112388048, i32 -142739927 }, %emit_function_args_ty { i32 33, i32 1474562810, i32 -142739927 }, %emit_function_args_ty { i32 34, i32 -1614179871, i32 -142739927 }, %emit_function_args_ty { i32 35, i32 551948583, i32 -142739927 }, %emit_function_args_ty { i32 36, i32 1242680655, i32 -142739927 }, %emit_function_args_ty { i32 37, i32 1248901211, i32 -142739927 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [38 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.15 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.16 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.17 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.18 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.20 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.21 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.22 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.23 }, %emit_arcs_args_ty { i32 12, ptr @__llvm_gcov_ctr.24 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.25 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.26 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.27 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.28 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.29 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.30 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.31 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.32 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.33 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.34 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.35 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.36 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.37 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.38 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.39 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.40 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.41 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.42 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.43 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.44 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.45 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.46 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.47 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.48 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.49 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.50 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.51 }]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 27, i32 6 }
@___asan_gen_.55 = private unnamed_addr constant [20 x i8] c"dyn_event_ops_mutex\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c"dyn_event_ops_list\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 20, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"dyn_event_list\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 149, i32 1 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 306, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 308, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 351, i32 34 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 355, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 380, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 19, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 265, i32 30 }
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"dynamic_events_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 246, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 270, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"dyn_event_seq_op\00", align 1
@___asan_gen_.119 = private constant [33 x i8] c"../kernel/trace/trace_dynevent.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 177, i32 36 }
@___asan_gen_.121 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [29 x ptr] [ptr @__initcall__kmod_trace_dynevent__262_274_init_dynamic_event5, ptr @__ksymtab_dynevent_create, ptr @dynevent_arg_add._entry, ptr @dynevent_arg_add._entry_ptr, ptr @dynevent_arg_pair_add._entry, ptr @dynevent_arg_pair_add._entry_ptr, ptr @dynevent_str_add._entry, ptr @dynevent_str_add._entry_ptr, ptr @init_dynamic_event._entry, ptr @init_dynamic_event._entry_ptr, ptr @.str, ptr @dyn_event_ops_mutex, ptr @dyn_event_ops_list, ptr @dyn_event_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @dynamic_events_ops, ptr @.str.13, ptr @.str.14, ptr @dyn_event_seq_op], section "llvm.metadata"
@1 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dyn_event_ops_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dyn_event_ops_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dyn_event_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynevent_arg_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynevent_arg_pair_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynevent_str_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynamic_events_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_dynamic_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dyn_event_seq_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @trace_event_dyn_try_get_ref(ptr noundef %dyn_call) local_unnamed_addr #0 align 64 !dbg !61 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !64
  %flags = getelementptr inbounds %struct.trace_event_call, ptr %dyn_call, i32 0, i32 8, !dbg !65
  %0 = ptrtoint ptr %flags to i32, !dbg !65
  call void @__asan_load4_noabort(i32 %0), !dbg !65
  %1 = load i32, ptr %flags, align 4, !dbg !65
  %and = and i32 %1, 32, !dbg !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !65
  %tobool.not = icmp eq i32 %and, 0, !dbg !65
  br i1 %tobool.not, label %land.rhs, label %if.end39, !dbg !65

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 16, !dbg !65
  %2 = add i64 %gcov_ctr, 1, !dbg !65
  store i64 %2, ptr @__llvm_gcov_ctr, align 16, !dbg !65
  %.b65 = load i1, ptr @trace_event_dyn_try_get_ref.__already_done, align 1, !dbg !65
  br i1 %.b65, label %land.rhs.if.then38_crit_edge, label %if.then, !dbg !65, !prof !66

land.rhs.if.then38_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13, !dbg !65
  br label %if.then38, !dbg !65

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13, !dbg !65
  store i1 true, ptr @trace_event_dyn_try_get_ref.__already_done, align 1, !dbg !65
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 27, i32 noundef 9, ptr noundef null) #14, !dbg !65
  %gcov_ctr52 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !65
  %3 = add i64 %gcov_ctr52, 1, !dbg !65
  store i64 %3, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !65
  %gcov_ctr53 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !65
  %4 = add i64 %gcov_ctr53, 1, !dbg !65
  store i64 %4, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !65
  br label %if.then38, !dbg !65

if.then38:                                        ; preds = %if.then, %land.rhs.if.then38_crit_edge
  %gcov_ctr55 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !67
  %5 = add i64 %gcov_ctr55, 1, !dbg !67
  store i64 %5, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !67
  br label %cleanup, !dbg !67

if.end39:                                         ; preds = %entry
  %gcov_ctr54 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !68
  %6 = add i64 %gcov_ctr54, 1, !dbg !68
  store i64 %6, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !68
  tail call void @down_read(ptr noundef nonnull @trace_event_sem) #14, !dbg !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ftrace_events to i32)), !dbg !69
  %call.067 = load ptr, ptr @ftrace_events, align 4, !dbg !69
  %cmp.not68 = icmp eq ptr %call.067, @ftrace_events, !dbg !69
  br i1 %cmp.not68, label %if.end39.for.end_crit_edge, label %for.body.lr.ph, !dbg !69

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13, !dbg !69
  br label %for.end, !dbg !69

for.body.lr.ph:                                   ; preds = %if.end39
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %dyn_call, i32 0, i32 6
  br label %for.body, !dbg !69

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %call.070 = phi ptr [ %call.067, %for.body.lr.ph ], [ %call.0, %for.inc.for.body_crit_edge ]
  %ret.0.off069 = phi i1 [ false, %for.body.lr.ph ], [ %ret.1.off0, %for.inc.for.body_crit_edge ]
  %cmp43 = icmp eq ptr %call.070, %dyn_call, !dbg !70
  br i1 %cmp43, label %if.then44, label %for.body.for.inc_crit_edge, !dbg !71

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13, !dbg !71
  br label %for.inc, !dbg !71

if.then44:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13, !dbg !72
  %gcov_ctr56 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 5), align 8, !dbg !72
  %8 = add i64 %gcov_ctr56, 1, !dbg !72
  store i64 %8, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 5), align 8, !dbg !72
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %9 = add i64 %gcov_ctr.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.15, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %10 = add i64 %gcov_ctr.i.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.38, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %7, i32 noundef 4) #14, !dbg !73
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %11 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %11, ptr @__llvm_gcov_ctr.40, align 8
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.39, align 8
  %12 = add i64 %gcov_ctr.i2.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.39, align 8
  %gcov_ctr.i.i3.i = load i64, ptr @__llvm_gcov_ctr.41, align 8
  %13 = add i64 %gcov_ctr.i.i3.i, 1
  store i64 %13, ptr @__llvm_gcov_ctr.41, align 8
  tail call void @llvm.prefetch.p0(ptr %7, i32 1, i32 3, i32 1) #14, !dbg !80
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #14, !dbg !80, !srcloc !87
  br label %for.inc, !dbg !88

for.inc:                                          ; preds = %if.then44, %for.body.for.inc_crit_edge
  %ret.1.off0 = phi i1 [ true, %if.then44 ], [ %ret.0.off069, %for.body.for.inc_crit_edge ]
  %gcov_ctr57 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 6), align 16, !dbg !69
  %15 = add i64 %gcov_ctr57, 1, !dbg !69
  store i64 %15, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 6), align 16, !dbg !69
  %16 = ptrtoint ptr %call.070 to i32, !dbg !69
  call void @__asan_load4_noabort(i32 %16), !dbg !69
  %call.0 = load ptr, ptr %call.070, align 4, !dbg !69
  %cmp.not = icmp eq ptr %call.0, @ftrace_events, !dbg !69
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !69, !llvm.loop !89

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13, !dbg !69
  br label %for.body, !dbg !69

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13, !dbg !69
  br label %for.end, !dbg !69

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end39.for.end_crit_edge
  %ret.0.off0.lcssa = phi i1 [ false, %if.end39.for.end_crit_edge ], [ %ret.1.off0, %for.inc.for.end_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @trace_event_sem) #14, !dbg !91
  br label %cleanup, !dbg !92

cleanup:                                          ; preds = %for.end, %if.then38
  %retval.0 = phi i1 [ false, %if.then38 ], [ %ret.0.off0.lcssa, %for.end ], !dbg !93
  ret i1 %retval.0, !dbg !94
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trace_event_dyn_put_ref(ptr noundef %call) local_unnamed_addr #0 align 64 !dbg !95 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !96
  %flags = getelementptr inbounds %struct.trace_event_call, ptr %call, i32 0, i32 8, !dbg !97
  %0 = ptrtoint ptr %flags to i32, !dbg !97
  call void @__asan_load4_noabort(i32 %0), !dbg !97
  %1 = load i32, ptr %flags, align 4, !dbg !97
  %and = and i32 %1, 32, !dbg !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !97
  %tobool.not = icmp eq i32 %and, 0, !dbg !97
  br i1 %tobool.not, label %land.rhs, label %if.end39, !dbg !97

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.16, align 16, !dbg !97
  %2 = add i64 %gcov_ctr, 1, !dbg !97
  store i64 %2, ptr @__llvm_gcov_ctr.16, align 16, !dbg !97
  %.b114 = load i1, ptr @trace_event_dyn_put_ref.__already_done, align 1, !dbg !97
  br i1 %.b114, label %land.rhs.if.then38_crit_edge, label %if.then, !dbg !97, !prof !66

land.rhs.if.then38_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13, !dbg !97
  br label %if.then38, !dbg !97

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13, !dbg !97
  store i1 true, ptr @trace_event_dyn_put_ref.__already_done, align 1, !dbg !97
  %gcov_ctr97 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !97
  %3 = add i64 %gcov_ctr97, 1, !dbg !97
  store i64 %3, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !97
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef null) #14, !dbg !97
  %gcov_ctr98 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 2), align 16, !dbg !97
  %4 = add i64 %gcov_ctr98, 1, !dbg !97
  store i64 %4, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 2), align 16, !dbg !97
  br label %if.then38, !dbg !97

if.then38:                                        ; preds = %if.then, %land.rhs.if.then38_crit_edge
  %gcov_ctr99 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 3), align 8, !dbg !98
  %5 = add i64 %gcov_ctr99, 1, !dbg !98
  store i64 %5, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 3), align 8, !dbg !98
  br label %return, !dbg !98

if.end39:                                         ; preds = %entry
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %call, i32 0, i32 6, !dbg !99
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %7 = add i64 %gcov_ctr.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.17, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %8 = add i64 %gcov_ctr.i.i, 1
  store i64 %8, ptr @__llvm_gcov_ctr.42, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %6, i32 noundef 4) #14, !dbg !100
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %9 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.40, align 8
  %10 = ptrtoint ptr %6 to i32, !dbg !105
  call void @__asan_load4_noabort(i32 %10), !dbg !105
  %11 = load volatile i32, ptr %6, align 4, !dbg !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11), !dbg !99
  %cmp = icmp slt i32 %11, 1, !dbg !99
  br i1 %cmp, label %land.rhs48, label %if.end96, !dbg !99

land.rhs48:                                       ; preds = %if.end39
  %gcov_ctr100 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 4), align 16, !dbg !99
  %12 = add i64 %gcov_ctr100, 1, !dbg !99
  store i64 %12, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 4), align 16, !dbg !99
  %.b112113 = load i1, ptr @trace_event_dyn_put_ref.__already_done.1, align 1, !dbg !99
  br i1 %.b112113, label %land.rhs48.if.then95_crit_edge, label %if.then59, !dbg !99, !prof !66

land.rhs48.if.then95_crit_edge:                   ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #13, !dbg !99
  br label %if.then95, !dbg !99

if.then59:                                        ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #13, !dbg !99
  store i1 true, ptr @trace_event_dyn_put_ref.__already_done.1, align 1, !dbg !99
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef null) #14, !dbg !99
  %gcov_ctr101 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 5), align 8, !dbg !99
  %13 = add i64 %gcov_ctr101, 1, !dbg !99
  store i64 %13, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 5), align 8, !dbg !99
  %gcov_ctr102 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 6), align 16, !dbg !99
  %14 = add i64 %gcov_ctr102, 1, !dbg !99
  store i64 %14, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 6), align 16, !dbg !99
  br label %if.then95, !dbg !99

if.then95:                                        ; preds = %if.then59, %land.rhs48.if.then95_crit_edge
  %gcov_ctr104 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 8), align 16, !dbg !106
  %15 = add i64 %gcov_ctr104, 1, !dbg !106
  store i64 %15, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 8), align 16, !dbg !106
  %gcov_ctr.i.i117 = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %16 = add i64 %gcov_ctr.i.i117, 1
  store i64 %16, ptr @__llvm_gcov_ctr.43, align 8
  %call.i.i118 = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #14, !dbg !107
  %gcov_ctr.i.i.i119 = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %17 = add i64 %gcov_ctr.i.i.i119, 1
  store i64 %17, ptr @__llvm_gcov_ctr.40, align 8
  %gcov_ctr.i120 = load i64, ptr @__llvm_gcov_ctr.18, align 8, !dbg !112
  %18 = add i64 %gcov_ctr.i120, 1, !dbg !112
  store i64 %18, ptr @__llvm_gcov_ctr.18, align 8, !dbg !112
  %19 = ptrtoint ptr %6 to i32, !dbg !112
  call void @__asan_store4_noabort(i32 %19), !dbg !112
  store volatile i32 0, ptr %6, align 4, !dbg !112
  br label %return, !dbg !113

if.end96:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13, !dbg !114
  %gcov_ctr103 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 7), align 8, !dbg !114
  %20 = add i64 %gcov_ctr103, 1, !dbg !114
  store i64 %20, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 7), align 8, !dbg !114
  %gcov_ctr.i121 = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %21 = add i64 %gcov_ctr.i121, 1
  store i64 %21, ptr @__llvm_gcov_ctr.19, align 8
  %gcov_ctr.i.i122 = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %22 = add i64 %gcov_ctr.i.i122, 1
  store i64 %22, ptr @__llvm_gcov_ctr.38, align 8
  %call.i.i123 = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #14, !dbg !115
  %gcov_ctr.i.i.i124 = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %23 = add i64 %gcov_ctr.i.i.i124, 1
  store i64 %23, ptr @__llvm_gcov_ctr.40, align 8
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %24 = add i64 %gcov_ctr.i2.i, 1
  store i64 %24, ptr @__llvm_gcov_ctr.44, align 8
  %gcov_ctr.i.i3.i = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %25 = add i64 %gcov_ctr.i.i3.i, 1
  store i64 %25, ptr @__llvm_gcov_ctr.45, align 8
  tail call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #14, !dbg !119
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #14, !dbg !119, !srcloc !124
  br label %return, !dbg !125

return:                                           ; preds = %if.end96, %if.then95, %if.then38
  ret void, !dbg !125
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @trace_event_dyn_busy(ptr noundef %call) local_unnamed_addr #0 align 64 !dbg !126 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !127
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.20, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.20, align 8
  %1 = getelementptr inbounds %struct.trace_event_call, ptr %call, i32 0, i32 6, !dbg !128
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.17, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %3 = add i64 %gcov_ctr.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.42, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %1, i32 noundef 4) #14, !dbg !129
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %4 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.40, align 8
  %5 = ptrtoint ptr %1 to i32, !dbg !132
  call void @__asan_load4_noabort(i32 %5), !dbg !132
  %6 = load volatile i32, ptr %1, align 4, !dbg !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6), !dbg !133
  %cmp = icmp ne i32 %6, 0, !dbg !133
  ret i1 %cmp, !dbg !134
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dyn_event_register(ptr noundef %ops) local_unnamed_addr #0 align 64 !dbg !135 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !136
  %tobool.not = icmp eq ptr %ops, null, !dbg !137
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !dbg !138

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !138
  br label %if.then, !dbg !138

lor.lhs.false:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.21, align 16, !dbg !139
  %0 = add i64 %gcov_ctr, 1, !dbg !139
  store i64 %0, ptr @__llvm_gcov_ctr.21, align 16, !dbg !139
  %create = getelementptr inbounds %struct.dyn_event_operations, ptr %ops, i32 0, i32 1, !dbg !140
  %1 = ptrtoint ptr %create to i32, !dbg !140
  call void @__asan_load4_noabort(i32 %1), !dbg !140
  %2 = load ptr, ptr %create, align 4, !dbg !140
  %tobool1.not = icmp eq ptr %2, null, !dbg !139
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false2, !dbg !141

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13, !dbg !141
  br label %if.then, !dbg !141

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 1), align 8, !dbg !142
  %3 = add i64 %gcov_ctr11, 1, !dbg !142
  store i64 %3, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 1), align 8, !dbg !142
  %show = getelementptr inbounds %struct.dyn_event_operations, ptr %ops, i32 0, i32 2, !dbg !143
  %4 = ptrtoint ptr %show to i32, !dbg !143
  call void @__asan_load4_noabort(i32 %4), !dbg !143
  %5 = load ptr, ptr %show, align 4, !dbg !143
  %tobool3.not = icmp eq ptr %5, null, !dbg !142
  br i1 %tobool3.not, label %lor.lhs.false2.if.then_crit_edge, label %lor.lhs.false4, !dbg !144

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13, !dbg !144
  br label %if.then, !dbg !144

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 2), align 16, !dbg !145
  %6 = add i64 %gcov_ctr12, 1, !dbg !145
  store i64 %6, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 2), align 16, !dbg !145
  %is_busy = getelementptr inbounds %struct.dyn_event_operations, ptr %ops, i32 0, i32 3, !dbg !146
  %7 = ptrtoint ptr %is_busy to i32, !dbg !146
  call void @__asan_load4_noabort(i32 %7), !dbg !146
  %8 = load ptr, ptr %is_busy, align 4, !dbg !146
  %tobool5.not = icmp eq ptr %8, null, !dbg !145
  br i1 %tobool5.not, label %lor.lhs.false4.if.then_crit_edge, label %lor.lhs.false6, !dbg !147

lor.lhs.false4.if.then_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13, !dbg !147
  br label %if.then, !dbg !147

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 3), align 8, !dbg !148
  %9 = add i64 %gcov_ctr13, 1, !dbg !148
  store i64 %9, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 3), align 8, !dbg !148
  %free = getelementptr inbounds %struct.dyn_event_operations, ptr %ops, i32 0, i32 4, !dbg !149
  %10 = ptrtoint ptr %free to i32, !dbg !149
  call void @__asan_load4_noabort(i32 %10), !dbg !149
  %11 = load ptr, ptr %free, align 4, !dbg !149
  %tobool7.not = icmp eq ptr %11, null, !dbg !148
  br i1 %tobool7.not, label %lor.lhs.false6.if.then_crit_edge, label %lor.lhs.false8, !dbg !150

lor.lhs.false6.if.then_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #13, !dbg !150
  br label %if.then, !dbg !150

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 4), align 16, !dbg !151
  %12 = add i64 %gcov_ctr14, 1, !dbg !151
  store i64 %12, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 4), align 16, !dbg !151
  %match = getelementptr inbounds %struct.dyn_event_operations, ptr %ops, i32 0, i32 5, !dbg !152
  %13 = ptrtoint ptr %match to i32, !dbg !152
  call void @__asan_load4_noabort(i32 %13), !dbg !152
  %14 = load ptr, ptr %match, align 4, !dbg !152
  %tobool9.not = icmp eq ptr %14, null, !dbg !151
  br i1 %tobool9.not, label %lor.lhs.false8.if.then_crit_edge, label %if.end, !dbg !153

lor.lhs.false8.if.then_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13, !dbg !153
  br label %if.then, !dbg !153

if.then:                                          ; preds = %lor.lhs.false8.if.then_crit_edge, %lor.lhs.false6.if.then_crit_edge, %lor.lhs.false4.if.then_crit_edge, %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 6), align 16, !dbg !154
  %15 = add i64 %gcov_ctr16, 1, !dbg !154
  store i64 %15, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 6), align 16, !dbg !154
  br label %return, !dbg !154

if.end:                                           ; preds = %lor.lhs.false8
  %gcov_ctr15 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 5), align 8, !dbg !155
  %16 = add i64 %gcov_ctr15, 1, !dbg !155
  store i64 %16, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 5), align 8, !dbg !155
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.22, align 8, !dbg !156
  %17 = add i64 %gcov_ctr.i, 1, !dbg !156
  store i64 %17, ptr @__llvm_gcov_ctr.22, align 8, !dbg !156
  %18 = ptrtoint ptr %ops to i32, !dbg !156
  call void @__asan_store4_noabort(i32 %18), !dbg !156
  store volatile ptr %ops, ptr %ops, align 4, !dbg !156
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ops, i32 0, i32 1, !dbg !160
  %19 = ptrtoint ptr %prev.i to i32, !dbg !161
  call void @__asan_store4_noabort(i32 %19), !dbg !161
  store ptr %ops, ptr %prev.i, align 4, !dbg !161
  tail call void @mutex_lock_nested(ptr noundef nonnull @dyn_event_ops_mutex, i32 noundef 0) #14, !dbg !162
  %gcov_ctr.i24 = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %20 = add i64 %gcov_ctr.i24, 1
  store i64 %20, ptr @__llvm_gcov_ctr.23, align 8
  %21 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_ops_list, i32 0, i32 1), align 4, !dbg !163
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %ops, ptr noundef %21, ptr noundef nonnull @dyn_event_ops_list) #14, !dbg !166
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge, !dbg !169

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !169
  br label %list_add_tail.exit, !dbg !169

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !170
  store ptr %ops, ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_ops_list, i32 0, i32 1), align 4, !dbg !170
  %22 = ptrtoint ptr %ops to i32, !dbg !171
  call void @__asan_store4_noabort(i32 %22), !dbg !171
  store ptr @dyn_event_ops_list, ptr %ops, align 4, !dbg !171
  %23 = ptrtoint ptr %prev.i to i32, !dbg !172
  call void @__asan_store4_noabort(i32 %23), !dbg !172
  store ptr %21, ptr %prev.i, align 4, !dbg !172
  %24 = ptrtoint ptr %21 to i32, !dbg !173
  call void @__asan_store4_noabort(i32 %24), !dbg !173
  store volatile ptr %ops, ptr %21, align 4, !dbg !173
  br label %list_add_tail.exit, !dbg !173

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %__llvm_gcov_ctr.46.sink1.i.i = phi ptr [ getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 1), %if.end.i.i ], [ @__llvm_gcov_ctr.46, %if.end.list_add_tail.exit_crit_edge ]
  %25 = ptrtoint ptr %__llvm_gcov_ctr.46.sink1.i.i to i32, !dbg !174
  call void @__asan_load8_noabort(i32 %25), !dbg !174
  %gcov_ctr.i.i = load i64, ptr %__llvm_gcov_ctr.46.sink1.i.i, align 8, !dbg !174
  %26 = add i64 %gcov_ctr.i.i, 1, !dbg !174
  store i64 %26, ptr %__llvm_gcov_ctr.46.sink1.i.i, align 8, !dbg !174
  tail call void @mutex_unlock(ptr noundef nonnull @dyn_event_ops_mutex) #14, !dbg !175
  br label %return, !dbg !176

return:                                           ; preds = %list_add_tail.exit, %if.then
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -22, %if.then ], !dbg !177
  ret i32 %retval.0, !dbg !178
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dyn_event_release(ptr noundef %raw_command, ptr noundef readnone %type) local_unnamed_addr #0 align 64 !dbg !179 {
entry:
  %argc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13, !dbg !180
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argc) #14, !dbg !181
  %0 = ptrtoint ptr %argc to i32, !dbg !182
  call void @__asan_store4_noabort(i32 %0), !dbg !182
  store i32 -1, ptr %argc, align 4, !dbg !182, !annotation !183
  %call = call ptr @argv_split(i32 noundef 3264, ptr noundef %raw_command, ptr noundef nonnull %argc) #14, !dbg !184
  %tobool.not = icmp eq ptr %call, null, !dbg !185
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !187
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.24, align 16, !dbg !187
  %1 = add i64 %gcov_ctr, 1, !dbg !187
  store i64 %1, ptr @__llvm_gcov_ctr.24, align 16, !dbg !187
  br label %cleanup, !dbg !187

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32, !dbg !188
  call void @__asan_load4_noabort(i32 %2), !dbg !188
  %3 = load ptr, ptr %call, align 4, !dbg !188
  %4 = ptrtoint ptr %3 to i32, !dbg !188
  call void @__asan_load1_noabort(i32 %4), !dbg !188
  %5 = load i8, ptr %3, align 1, !dbg !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %5), !dbg !189
  %cmp = icmp eq i8 %5, 45, !dbg !189
  br i1 %cmp, label %if.then3, label %if.else, !dbg !188

if.then3:                                         ; preds = %if.end
  %arrayidx5 = getelementptr i8, ptr %3, i32 1, !dbg !190
  %6 = ptrtoint ptr %arrayidx5 to i32, !dbg !190
  call void @__asan_load1_noabort(i32 %6), !dbg !190
  %7 = load i8, ptr %arrayidx5, align 1, !dbg !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %7), !dbg !191
  %cmp7.not = icmp eq i8 %7, 58, !dbg !191
  br i1 %cmp7.not, label %if.end10, label %if.then9, !dbg !190

if.then9:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13, !dbg !192
  %gcov_ctr63 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), align 8, !dbg !192
  %8 = add i64 %gcov_ctr63, 1, !dbg !192
  store i64 %8, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), align 8, !dbg !192
  br label %out, !dbg !193

if.end10:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13, !dbg !194
  %gcov_ctr64 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 2), align 16, !dbg !194
  %9 = add i64 %gcov_ctr64, 1, !dbg !194
  store i64 %9, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 2), align 16, !dbg !194
  %10 = ptrtoint ptr %call to i32, !dbg !194
  call void @__asan_load4_noabort(i32 %10), !dbg !194
  %11 = load ptr, ptr %call, align 4, !dbg !194
  %arrayidx12 = getelementptr i8, ptr %11, i32 2, !dbg !194
  br label %if.end18, !dbg !195

if.else:                                          ; preds = %if.end
  %call14 = call ptr @strchr(ptr noundef %3, i32 noundef 58), !dbg !196
  %tobool15.not = icmp eq ptr %call14, null, !dbg !197
  br i1 %tobool15.not, label %if.then16, label %if.end17, !dbg !198

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13, !dbg !199
  %gcov_ctr66 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 4), align 16, !dbg !199
  %12 = add i64 %gcov_ctr66, 1, !dbg !199
  store i64 %12, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 4), align 16, !dbg !199
  br label %out, !dbg !200

if.end17:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13, !dbg !201
  %gcov_ctr65 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 3), align 8, !dbg !201
  %13 = add i64 %gcov_ctr65, 1, !dbg !201
  store i64 %13, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 3), align 8, !dbg !201
  %incdec.ptr = getelementptr i8, ptr %call14, i32 1, !dbg !201
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end10
  %event.0 = phi ptr [ %arrayidx12, %if.end10 ], [ %incdec.ptr, %if.end17 ], !dbg !202
  %call19 = call ptr @strchr(ptr noundef %event.0, i32 noundef 47), !dbg !203
  %tobool20.not = icmp eq ptr %call19, null, !dbg !204
  br i1 %tobool20.not, label %if.end18.if.end22_crit_edge, label %if.then21, !dbg !204

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13, !dbg !204
  br label %if.end22, !dbg !204

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13, !dbg !205
  %gcov_ctr67 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 5), align 8, !dbg !205
  %14 = add i64 %gcov_ctr67, 1, !dbg !205
  store i64 %14, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 5), align 8, !dbg !205
  %add.ptr = getelementptr i8, ptr %call19, i32 1, !dbg !206
  %15 = ptrtoint ptr %call19 to i32, !dbg !207
  call void @__asan_store1_noabort(i32 %15), !dbg !207
  store i8 0, ptr %call19, align 1, !dbg !207
  br label %if.end22, !dbg !208

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge
  %event.1 = phi ptr [ %add.ptr, %if.then21 ], [ %event.0, %if.end18.if.end22_crit_edge ], !dbg !202
  %system.0 = phi ptr [ %event.0, %if.then21 ], [ null, %if.end18.if.end22_crit_edge ], !dbg !202
  %16 = ptrtoint ptr %event.1 to i32, !dbg !209
  call void @__asan_load1_noabort(i32 %16), !dbg !209
  %17 = load i8, ptr %event.1, align 1, !dbg !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17), !dbg !210
  %cmp25 = icmp eq i8 %17, 0, !dbg !210
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !209

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13, !dbg !211
  %gcov_ctr68 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 6), align 16, !dbg !211
  %18 = add i64 %gcov_ctr68, 1, !dbg !211
  store i64 %18, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 6), align 16, !dbg !211
  br label %out, !dbg !212

if.end28:                                         ; preds = %if.end22
  call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #14, !dbg !213
  %19 = load ptr, ptr @dyn_event_list, align 4, !dbg !214
  %cmp34.not98 = icmp eq ptr %19, @dyn_event_list, !dbg !214
  br i1 %cmp34.not98, label %if.end28.for.end_crit_edge, label %for.body.lr.ph, !dbg !214

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13, !dbg !214
  br label %for.end, !dbg !214

for.body.lr.ph:                                   ; preds = %if.end28
  %tobool36.not = icmp eq ptr %type, null
  %add.ptr42 = getelementptr ptr, ptr %call, i32 1
  br label %for.body, !dbg !214

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.0100 = phi ptr [ %19, %for.body.lr.ph ], [ %n.0101, %for.inc.for.body_crit_edge ]
  %ret.099 = phi i32 [ -2, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %20 = ptrtoint ptr %pos.0100 to i32, !dbg !214
  call void @__asan_load4_noabort(i32 %20), !dbg !214
  %n.0101 = load ptr, ptr %pos.0100, align 4, !dbg !214
  br i1 %tobool36.not, label %for.body.if.end40_crit_edge, label %land.lhs.true, !dbg !215

for.body.if.end40_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13, !dbg !215
  br label %if.end40, !dbg !215

land.lhs.true:                                    ; preds = %for.body
  %gcov_ctr69 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 7), align 8, !dbg !216
  %21 = add i64 %gcov_ctr69, 1, !dbg !216
  store i64 %21, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 7), align 8, !dbg !216
  %ops = getelementptr inbounds %struct.dyn_event, ptr %pos.0100, i32 0, i32 1, !dbg !217
  %22 = ptrtoint ptr %ops to i32, !dbg !217
  call void @__asan_load4_noabort(i32 %22), !dbg !217
  %23 = load ptr, ptr %ops, align 4, !dbg !217
  %cmp37.not = icmp eq ptr %23, %type, !dbg !218
  br i1 %cmp37.not, label %land.lhs.true.if.end40_crit_edge, label %if.then39, !dbg !219

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13, !dbg !219
  br label %if.end40, !dbg !219

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13, !dbg !220
  %gcov_ctr70 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 8), align 16, !dbg !220
  %24 = add i64 %gcov_ctr70, 1, !dbg !220
  store i64 %24, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 8), align 16, !dbg !220
  br label %for.inc, !dbg !220

if.end40:                                         ; preds = %land.lhs.true.if.end40_crit_edge, %for.body.if.end40_crit_edge
  %ops41 = getelementptr inbounds %struct.dyn_event, ptr %pos.0100, i32 0, i32 1, !dbg !221
  %25 = ptrtoint ptr %ops41 to i32, !dbg !221
  call void @__asan_load4_noabort(i32 %25), !dbg !221
  %26 = load ptr, ptr %ops41, align 4, !dbg !221
  %match = getelementptr inbounds %struct.dyn_event_operations, ptr %26, i32 0, i32 5, !dbg !222
  %27 = ptrtoint ptr %match to i32, !dbg !222
  call void @__asan_load4_noabort(i32 %27), !dbg !222
  %28 = load ptr, ptr %match, align 4, !dbg !222
  %29 = ptrtoint ptr %argc to i32, !dbg !223
  call void @__asan_load4_noabort(i32 %29), !dbg !223
  %30 = load i32, ptr %argc, align 4, !dbg !223
  %sub = add i32 %30, -1, !dbg !224
  %call43 = call zeroext i1 %28(ptr noundef %system.0, ptr noundef %event.1, i32 noundef %sub, ptr noundef %add.ptr42, ptr noundef %pos.0100) #14, !dbg !225
  br i1 %call43, label %if.end45, label %if.then44, !dbg !226

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13, !dbg !227
  %gcov_ctr71 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 9), align 8, !dbg !227
  %31 = add i64 %gcov_ctr71, 1, !dbg !227
  store i64 %31, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 9), align 8, !dbg !227
  br label %for.inc, !dbg !227

if.end45:                                         ; preds = %if.end40
  %32 = ptrtoint ptr %ops41 to i32, !dbg !228
  call void @__asan_load4_noabort(i32 %32), !dbg !228
  %33 = load ptr, ptr %ops41, align 4, !dbg !228
  %free = getelementptr inbounds %struct.dyn_event_operations, ptr %33, i32 0, i32 4, !dbg !229
  %34 = ptrtoint ptr %free to i32, !dbg !229
  call void @__asan_load4_noabort(i32 %34), !dbg !229
  %35 = load ptr, ptr %free, align 4, !dbg !229
  %call47 = call i32 %35(ptr noundef %pos.0100) #14, !dbg !230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47), !dbg !231
  %tobool48.not = icmp eq i32 %call47, 0, !dbg !231
  br i1 %tobool48.not, label %if.end50, label %if.then49, !dbg !231

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13, !dbg !232
  %gcov_ctr72 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 10), align 16, !dbg !232
  %36 = add i64 %gcov_ctr72, 1, !dbg !232
  store i64 %36, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 10), align 16, !dbg !232
  br label %for.end, !dbg !232

if.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13, !dbg !233
  %gcov_ctr73 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 11), align 8, !dbg !233
  %37 = add i64 %gcov_ctr73, 1, !dbg !233
  store i64 %37, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 11), align 8, !dbg !233
  br label %for.inc, !dbg !233

for.inc:                                          ; preds = %if.end50, %if.then44, %if.then39
  %ret.1 = phi i32 [ %ret.099, %if.then39 ], [ 0, %if.end50 ], [ %ret.099, %if.then44 ], !dbg !202
  %cmp34.not = icmp eq ptr %n.0101, @dyn_event_list, !dbg !214
  br i1 %cmp34.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !214, !llvm.loop !234

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13, !dbg !214
  br label %for.body, !dbg !214

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13, !dbg !214
  br label %for.end, !dbg !214

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then49, %if.end28.for.end_crit_edge
  %ret.2 = phi i32 [ %call47, %if.then49 ], [ -2, %if.end28.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ], !dbg !202
  call void @mutex_unlock(ptr noundef nonnull @event_mutex) #14, !dbg !235
  br label %out, !dbg !235

out:                                              ; preds = %for.end, %if.then27, %if.then16, %if.then9
  %ret.3 = phi i32 [ -22, %if.then9 ], [ -22, %if.then27 ], [ %ret.2, %for.end ], [ -22, %if.then16 ], !dbg !202
  call void @argv_free(ptr noundef nonnull %call) #14, !dbg !236
  br label %cleanup, !dbg !237

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.3, %out ], [ -12, %if.then ], !dbg !202
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argc) #14, !dbg !238
  ret i32 %retval.0, !dbg !238
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @argv_split(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @argv_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dyn_event_seq_start(ptr nocapture readnone %m, ptr nocapture noundef readonly %pos) #0 align 64 !dbg !239 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !240
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.25, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.25, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #14, !dbg !241
  %1 = ptrtoint ptr %pos to i32, !dbg !242
  call void @__asan_load8_noabort(i32 %1), !dbg !242
  %2 = load i64, ptr %pos, align 8, !dbg !242
  %call = tail call ptr @seq_list_start(ptr noundef nonnull @dyn_event_list, i64 noundef %2) #14, !dbg !243
  ret ptr %call, !dbg !244
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dyn_event_seq_next(ptr nocapture readnone %m, ptr noundef %v, ptr noundef %pos) #0 align 64 !dbg !245 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !246
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.26, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.26, align 8
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef nonnull @dyn_event_list, ptr noundef %pos) #14, !dbg !247
  ret ptr %call, !dbg !248
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dyn_event_seq_stop(ptr nocapture readnone %m, ptr nocapture readnone %v) #0 align 64 !dbg !249 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !250
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.27, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #14, !dbg !251
  ret void, !dbg !252
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dyn_events_release_all(ptr noundef readnone %type) local_unnamed_addr #0 align 64 !dbg !253 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !254
  tail call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #14, !dbg !255
  %ev.063 = load ptr, ptr @dyn_event_list, align 4, !dbg !256
  %cmp.not64 = icmp eq ptr %ev.063, @dyn_event_list, !dbg !256
  br i1 %cmp.not64, label %entry.out_crit_edge, label %for.body.lr.ph, !dbg !256

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !256
  br label %out, !dbg !256

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %type, null
  br label %for.body, !dbg !256

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ev.065 = phi ptr [ %ev.063, %for.body.lr.ph ], [ %ev.0, %for.inc.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true, !dbg !257

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13, !dbg !257
  br label %if.end, !dbg !257

land.lhs.true:                                    ; preds = %for.body
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.28, align 16, !dbg !258
  %0 = add i64 %gcov_ctr, 1, !dbg !258
  store i64 %0, ptr @__llvm_gcov_ctr.28, align 16, !dbg !258
  %ops = getelementptr inbounds %struct.dyn_event, ptr %ev.065, i32 0, i32 1, !dbg !259
  %1 = ptrtoint ptr %ops to i32, !dbg !259
  call void @__asan_load4_noabort(i32 %1), !dbg !259
  %2 = load ptr, ptr %ops, align 4, !dbg !259
  %cmp2.not = icmp eq ptr %2, %type, !dbg !260
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge, !dbg !261

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13, !dbg !261
  br label %for.inc, !dbg !261

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13, !dbg !261
  br label %if.end, !dbg !261

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %ops3 = getelementptr inbounds %struct.dyn_event, ptr %ev.065, i32 0, i32 1, !dbg !262
  %3 = ptrtoint ptr %ops3 to i32, !dbg !262
  call void @__asan_load4_noabort(i32 %3), !dbg !262
  %4 = load ptr, ptr %ops3, align 4, !dbg !262
  %is_busy = getelementptr inbounds %struct.dyn_event_operations, ptr %4, i32 0, i32 3, !dbg !263
  %5 = ptrtoint ptr %is_busy to i32, !dbg !263
  call void @__asan_load4_noabort(i32 %5), !dbg !263
  %6 = load ptr, ptr %is_busy, align 4, !dbg !263
  %call = tail call zeroext i1 %6(ptr noundef %ev.065) #14, !dbg !264
  br i1 %call, label %if.end.out_crit_edge, label %if.end.for.inc_crit_edge, !dbg !264

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !264
  br label %for.inc, !dbg !264

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !264
  br label %out, !dbg !264

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 1), %land.lhs.true.for.inc_crit_edge ], [ getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), %if.end.for.inc_crit_edge ]
  %7 = ptrtoint ptr %.sink to i32, !dbg !265
  call void @__asan_load8_noabort(i32 %7), !dbg !265
  %gcov_ctr43 = load i64, ptr %.sink, align 8, !dbg !265
  %8 = add i64 %gcov_ctr43, 1, !dbg !265
  store i64 %8, ptr %.sink, align 8, !dbg !265
  %9 = ptrtoint ptr %ev.065 to i32, !dbg !256
  call void @__asan_load4_noabort(i32 %9), !dbg !256
  %ev.0 = load ptr, ptr %ev.065, align 4, !dbg !256
  %cmp.not = icmp eq ptr %ev.0, @dyn_event_list, !dbg !256
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge, !dbg !256, !llvm.loop !266

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13, !dbg !256
  br label %for.body, !dbg !256

for.end:                                          ; preds = %for.inc
  %.pr = load ptr, ptr @dyn_event_list, align 4, !dbg !268
  %cmp20.not67 = icmp eq ptr %.pr, @dyn_event_list, !dbg !268
  br i1 %cmp20.not67, label %for.end.out_crit_edge, label %for.body22.lr.ph, !dbg !268

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !268
  br label %out, !dbg !268

for.body22.lr.ph:                                 ; preds = %for.end
  %tobool23.not = icmp eq ptr %type, null
  br label %for.body22, !dbg !268

for.body22:                                       ; preds = %for.inc34.for.body22_crit_edge, %for.body22.lr.ph
  %ev.168 = phi ptr [ %.pr, %for.body22.lr.ph ], [ %tmp.069, %for.inc34.for.body22_crit_edge ]
  %10 = ptrtoint ptr %ev.168 to i32, !dbg !268
  call void @__asan_load4_noabort(i32 %10), !dbg !268
  %tmp.069 = load ptr, ptr %ev.168, align 4, !dbg !268
  br i1 %tobool23.not, label %for.body22.if.end28_crit_edge, label %land.lhs.true24, !dbg !269

for.body22.if.end28_crit_edge:                    ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #13, !dbg !269
  br label %if.end28, !dbg !269

land.lhs.true24:                                  ; preds = %for.body22
  %gcov_ctr44 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 4), align 16, !dbg !270
  %11 = add i64 %gcov_ctr44, 1, !dbg !270
  store i64 %11, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 4), align 16, !dbg !270
  %ops25 = getelementptr inbounds %struct.dyn_event, ptr %ev.168, i32 0, i32 1, !dbg !271
  %12 = ptrtoint ptr %ops25 to i32, !dbg !271
  call void @__asan_load4_noabort(i32 %12), !dbg !271
  %13 = load ptr, ptr %ops25, align 4, !dbg !271
  %cmp26.not = icmp eq ptr %13, %type, !dbg !272
  br i1 %cmp26.not, label %land.lhs.true24.if.end28_crit_edge, label %land.lhs.true24.for.inc34_crit_edge, !dbg !273

land.lhs.true24.for.inc34_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13, !dbg !273
  br label %for.inc34, !dbg !273

land.lhs.true24.if.end28_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13, !dbg !273
  br label %if.end28, !dbg !273

if.end28:                                         ; preds = %land.lhs.true24.if.end28_crit_edge, %for.body22.if.end28_crit_edge
  %ops29 = getelementptr inbounds %struct.dyn_event, ptr %ev.168, i32 0, i32 1, !dbg !274
  %14 = ptrtoint ptr %ops29 to i32, !dbg !274
  call void @__asan_load4_noabort(i32 %14), !dbg !274
  %15 = load ptr, ptr %ops29, align 4, !dbg !274
  %free = getelementptr inbounds %struct.dyn_event_operations, ptr %15, i32 0, i32 4, !dbg !275
  %16 = ptrtoint ptr %free to i32, !dbg !275
  call void @__asan_load4_noabort(i32 %16), !dbg !275
  %17 = load ptr, ptr %free, align 4, !dbg !275
  %call30 = tail call i32 %17(ptr noundef %ev.168) #14, !dbg !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30), !dbg !277
  %tobool31.not = icmp eq i32 %call30, 0, !dbg !277
  br i1 %tobool31.not, label %if.end28.for.inc34_crit_edge, label %if.then32, !dbg !277

if.end28.for.inc34_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13, !dbg !277
  br label %for.inc34, !dbg !277

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13, !dbg !278
  %gcov_ctr46 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 6), align 16, !dbg !278
  %18 = add i64 %gcov_ctr46, 1, !dbg !278
  store i64 %18, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 6), align 16, !dbg !278
  br label %out, !dbg !278

for.inc34:                                        ; preds = %if.end28.for.inc34_crit_edge, %land.lhs.true24.for.inc34_crit_edge
  %.sink74 = phi ptr [ getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 5), %land.lhs.true24.for.inc34_crit_edge ], [ getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 7), %if.end28.for.inc34_crit_edge ]
  %19 = ptrtoint ptr %.sink74 to i32, !dbg !265
  call void @__asan_load8_noabort(i32 %19), !dbg !265
  %gcov_ctr47 = load i64, ptr %.sink74, align 8, !dbg !265
  %20 = add i64 %gcov_ctr47, 1, !dbg !265
  store i64 %20, ptr %.sink74, align 8, !dbg !265
  %cmp20.not = icmp eq ptr %tmp.069, @dyn_event_list, !dbg !268
  br i1 %cmp20.not, label %for.inc34.out_crit_edge, label %for.inc34.for.body22_crit_edge, !dbg !268, !llvm.loop !279

for.inc34.for.body22_crit_edge:                   ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #13, !dbg !268
  br label %for.body22, !dbg !268

for.inc34.out_crit_edge:                          ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #13, !dbg !268
  br label %out, !dbg !268

out:                                              ; preds = %for.inc34.out_crit_edge, %if.then32, %for.end.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %.sink77 = phi ptr [ getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 8), %entry.out_crit_edge ], [ getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 8), %for.end.out_crit_edge ], [ getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 8), %if.then32 ], [ getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 8), %for.inc34.out_crit_edge ], [ getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 2), %if.end.out_crit_edge ]
  %ret.3 = phi i32 [ 0, %entry.out_crit_edge ], [ 0, %for.end.out_crit_edge ], [ %call30, %if.then32 ], [ 0, %for.inc34.out_crit_edge ], [ -16, %if.end.out_crit_edge ], !dbg !265
  %21 = ptrtoint ptr %.sink77 to i32, !dbg !265
  call void @__asan_load8_noabort(i32 %21), !dbg !265
  %gcov_ctr48 = load i64, ptr %.sink77, align 16, !dbg !265
  %22 = add i64 %gcov_ctr48, 1, !dbg !265
  store i64 %22, ptr %.sink77, align 16, !dbg !265
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #14, !dbg !281
  ret i32 %ret.3, !dbg !282
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_dynamic_event() #4 section ".init.text" align 64 !dbg !283 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !284
  %call = tail call i32 @tracing_init_dentry() #14, !dbg !285
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !286
  %tobool.not = icmp eq i32 %call, 0, !dbg !286
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !286

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !287
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.29, align 16, !dbg !287
  %0 = add i64 %gcov_ctr, 1, !dbg !287
  store i64 %0, ptr @__llvm_gcov_ctr.29, align 16, !dbg !287
  br label %cleanup, !dbg !287

if.end:                                           ; preds = %entry
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 1), align 8, !dbg !288
  %1 = add i64 %gcov_ctr8, 1, !dbg !288
  store i64 %1, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 1), align 8, !dbg !288
  %call2 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 416, ptr noundef null, ptr noundef null, ptr noundef nonnull @dynamic_events_ops) #14, !dbg !288
  %tobool3.not = icmp eq ptr %call2, null, !dbg !289
  br i1 %tobool3.not, label %do.end, label %if.end.cleanup_crit_edge, !dbg !290

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !290
  br label %cleanup, !dbg !290

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !291
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 2), align 16, !dbg !291
  %2 = add i64 %gcov_ctr9, 1, !dbg !291
  store i64 %2, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 2), align 16, !dbg !291
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #15, !dbg !291
  br label %cleanup, !dbg !291

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then
  ret i32 0, !dbg !292
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dynevent_arg_add(ptr noundef %cmd, ptr noundef %arg, ptr noundef readonly %check_arg) local_unnamed_addr #0 align 64 !dbg !293 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !294
  %tobool.not = icmp eq ptr %check_arg, null, !dbg !295
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then, !dbg !295

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !295
  br label %if.end3, !dbg !295

if.then:                                          ; preds = %entry
  %call = tail call i32 %check_arg(ptr noundef %arg) #14, !dbg !296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !297
  %tobool1.not = icmp eq i32 %call, 0, !dbg !297
  br i1 %tobool1.not, label %if.end, label %if.then2, !dbg !297

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13, !dbg !298
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.30, align 16, !dbg !298
  %0 = add i64 %gcov_ctr, 1, !dbg !298
  store i64 %0, ptr @__llvm_gcov_ctr.30, align 16, !dbg !298
  br label %cleanup, !dbg !299

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13, !dbg !300
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 1), align 8, !dbg !300
  %1 = add i64 %gcov_ctr12, 1, !dbg !300
  store i64 %1, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 1), align 8, !dbg !300
  br label %if.end3, !dbg !300

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %2 = ptrtoint ptr %arg to i32, !dbg !301
  call void @__asan_load4_noabort(i32 %2), !dbg !301
  %3 = load ptr, ptr %arg, align 4, !dbg !301
  %separator = getelementptr inbounds %struct.dynevent_arg, ptr %arg, i32 0, i32 1, !dbg !302
  %4 = ptrtoint ptr %separator to i32, !dbg !302
  call void @__asan_load1_noabort(i32 %4), !dbg !302
  %5 = load i8, ptr %separator, align 4, !dbg !302
  %conv = zext i8 %5 to i32, !dbg !303
  %call4 = tail call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %cmd, ptr noundef nonnull @.str.2, ptr noundef %3, i32 noundef %conv) #14, !dbg !304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4), !dbg !305
  %tobool5.not = icmp eq i32 %call4, 0, !dbg !305
  br i1 %tobool5.not, label %if.end11, label %if.then6, !dbg !305

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13, !dbg !306
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 2), align 16, !dbg !306
  %6 = add i64 %gcov_ctr13, 1, !dbg !306
  store i64 %6, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 2), align 16, !dbg !306
  %7 = ptrtoint ptr %arg to i32, !dbg !306
  call void @__asan_load4_noabort(i32 %7), !dbg !306
  %8 = load ptr, ptr %arg, align 4, !dbg !306
  %9 = ptrtoint ptr %separator to i32, !dbg !306
  call void @__asan_load1_noabort(i32 %9), !dbg !306
  %10 = load i8, ptr %separator, align 4, !dbg !306
  %conv9 = zext i8 %10 to i32, !dbg !306
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %8, i32 noundef %conv9) #15, !dbg !306
  br label %cleanup, !dbg !307

if.end11:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13, !dbg !308
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 3), align 8, !dbg !308
  %11 = add i64 %gcov_ctr14, 1, !dbg !308
  store i64 %11, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 3), align 8, !dbg !308
  br label %cleanup, !dbg !309

cleanup:                                          ; preds = %if.end11, %if.then6, %if.then2
  %retval.0 = phi i32 [ %call, %if.then2 ], [ -7, %if.then6 ], [ 0, %if.end11 ], !dbg !310
  ret i32 %retval.0, !dbg !311
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_buf_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dynevent_arg_pair_add(ptr noundef %cmd, ptr noundef %arg_pair, ptr noundef readonly %check_arg) local_unnamed_addr #0 align 64 !dbg !312 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !313
  %tobool.not = icmp eq ptr %check_arg, null, !dbg !314
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then, !dbg !314

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !314
  br label %if.end3, !dbg !314

if.then:                                          ; preds = %entry
  %call = tail call i32 %check_arg(ptr noundef %arg_pair) #14, !dbg !315
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !316
  %tobool1.not = icmp eq i32 %call, 0, !dbg !316
  br i1 %tobool1.not, label %if.end, label %if.then2, !dbg !316

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13, !dbg !317
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.31, align 16, !dbg !317
  %0 = add i64 %gcov_ctr, 1, !dbg !317
  store i64 %0, ptr @__llvm_gcov_ctr.31, align 16, !dbg !317
  br label %cleanup, !dbg !318

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13, !dbg !319
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.31, i32 0, i32 1), align 8, !dbg !319
  %1 = add i64 %gcov_ctr16, 1, !dbg !319
  store i64 %1, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.31, i32 0, i32 1), align 8, !dbg !319
  br label %if.end3, !dbg !319

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %2 = ptrtoint ptr %arg_pair to i32, !dbg !320
  call void @__asan_load4_noabort(i32 %2), !dbg !320
  %3 = load ptr, ptr %arg_pair, align 4, !dbg !320
  %operator = getelementptr inbounds %struct.dynevent_arg_pair, ptr %arg_pair, i32 0, i32 2, !dbg !321
  %4 = ptrtoint ptr %operator to i32, !dbg !321
  call void @__asan_load1_noabort(i32 %4), !dbg !321
  %5 = load i8, ptr %operator, align 4, !dbg !321
  %conv = zext i8 %5 to i32, !dbg !322
  %rhs = getelementptr inbounds %struct.dynevent_arg_pair, ptr %arg_pair, i32 0, i32 1, !dbg !323
  %6 = ptrtoint ptr %rhs to i32, !dbg !323
  call void @__asan_load4_noabort(i32 %6), !dbg !323
  %7 = load ptr, ptr %rhs, align 4, !dbg !323
  %separator = getelementptr inbounds %struct.dynevent_arg_pair, ptr %arg_pair, i32 0, i32 3, !dbg !324
  %8 = ptrtoint ptr %separator to i32, !dbg !324
  call void @__asan_load1_noabort(i32 %8), !dbg !324
  %9 = load i8, ptr %separator, align 1, !dbg !324
  %conv4 = zext i8 %9 to i32, !dbg !325
  %call5 = tail call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %cmd, ptr noundef nonnull @.str.5, ptr noundef %3, i32 noundef %conv, ptr noundef %7, i32 noundef %conv4) #14, !dbg !326
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5), !dbg !327
  %tobool6.not = icmp eq i32 %call5, 0, !dbg !327
  br i1 %tobool6.not, label %if.end15, label %if.then7, !dbg !327

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13, !dbg !328
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.31, i32 0, i32 2), align 16, !dbg !328
  %10 = add i64 %gcov_ctr17, 1, !dbg !328
  store i64 %10, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.31, i32 0, i32 2), align 16, !dbg !328
  %11 = ptrtoint ptr %arg_pair to i32, !dbg !328
  call void @__asan_load4_noabort(i32 %11), !dbg !328
  %12 = load ptr, ptr %arg_pair, align 4, !dbg !328
  %13 = ptrtoint ptr %operator to i32, !dbg !328
  call void @__asan_load1_noabort(i32 %13), !dbg !328
  %14 = load i8, ptr %operator, align 4, !dbg !328
  %conv10 = zext i8 %14 to i32, !dbg !328
  %15 = ptrtoint ptr %rhs to i32, !dbg !328
  call void @__asan_load4_noabort(i32 %15), !dbg !328
  %16 = load ptr, ptr %rhs, align 4, !dbg !328
  %17 = ptrtoint ptr %separator to i32, !dbg !328
  call void @__asan_load1_noabort(i32 %17), !dbg !328
  %18 = load i8, ptr %separator, align 1, !dbg !328
  %conv13 = zext i8 %18 to i32, !dbg !328
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %12, i32 noundef %conv10, ptr noundef %16, i32 noundef %conv13) #15, !dbg !328
  br label %cleanup, !dbg !329

if.end15:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13, !dbg !330
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.31, i32 0, i32 3), align 8, !dbg !330
  %19 = add i64 %gcov_ctr18, 1, !dbg !330
  store i64 %19, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.31, i32 0, i32 3), align 8, !dbg !330
  br label %cleanup, !dbg !331

cleanup:                                          ; preds = %if.end15, %if.then7, %if.then2
  %retval.0 = phi i32 [ %call, %if.then2 ], [ -7, %if.then7 ], [ 0, %if.end15 ], !dbg !332
  ret i32 %retval.0, !dbg !333
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dynevent_str_add(ptr noundef %cmd, ptr noundef %str) local_unnamed_addr #0 align 64 !dbg !334 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !335
  %call = tail call i32 @seq_buf_puts(ptr noundef %cmd, ptr noundef %str) #14, !dbg !336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !337
  %tobool.not = icmp eq i32 %call, 0, !dbg !337
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !337

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !338
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.32, align 8, !dbg !338
  %0 = add i64 %gcov_ctr, 1, !dbg !338
  store i64 %0, ptr @__llvm_gcov_ctr.32, align 8, !dbg !338
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %str) #15, !dbg !338
  br label %cleanup, !dbg !339

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !340
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !340
  %1 = add i64 %gcov_ctr2, 1, !dbg !340
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !340
  br label %cleanup, !dbg !341

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -7, %if.then ], [ 0, %if.end ], !dbg !342
  ret i32 %retval.0, !dbg !343
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_buf_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dynevent_cmd_init(ptr nocapture noundef writeonly %cmd, ptr noundef %buf, i32 noundef %maxlen, i32 noundef %type, ptr noundef %run_command) local_unnamed_addr #6 align 64 !dbg !344 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !345
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.33, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.33, align 8
  %1 = getelementptr inbounds i8, ptr %cmd, i32 8, !dbg !346
  %2 = call ptr @memset(ptr %1, i32 0, i32 40), !dbg !346
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.34, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.34, align 8
  %4 = ptrtoint ptr %cmd to i32, !dbg !347
  call void @__asan_store4_noabort(i32 %4), !dbg !347
  store ptr %buf, ptr %cmd, align 8, !dbg !347
  %size1.i = getelementptr inbounds %struct.seq_buf, ptr %cmd, i32 0, i32 1, !dbg !351
  %5 = ptrtoint ptr %size1.i to i32, !dbg !352
  call void @__asan_store4_noabort(i32 %5), !dbg !352
  store i32 %maxlen, ptr %size1.i, align 4, !dbg !352
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.51, align 8
  %6 = add i64 %gcov_ctr.i.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.51, align 8
  %readpos.i.i = getelementptr inbounds %struct.seq_buf, ptr %cmd, i32 0, i32 3, !dbg !353
  %7 = ptrtoint ptr %readpos.i.i to i32, !dbg !356
  call void @__asan_store8_noabort(i32 %7), !dbg !356
  store i64 0, ptr %readpos.i.i, align 8, !dbg !356
  %type1 = getelementptr inbounds %struct.dynevent_cmd, ptr %cmd, i32 0, i32 3, !dbg !357
  %8 = ptrtoint ptr %type1 to i32, !dbg !358
  call void @__asan_store4_noabort(i32 %8), !dbg !358
  store i32 %type, ptr %type1, align 8, !dbg !358
  %run_command2 = getelementptr inbounds %struct.dynevent_cmd, ptr %cmd, i32 0, i32 4, !dbg !359
  %9 = ptrtoint ptr %run_command2 to i32, !dbg !360
  call void @__asan_store4_noabort(i32 %9), !dbg !360
  store ptr %run_command, ptr %run_command2, align 4, !dbg !360
  ret void, !dbg !361
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dynevent_arg_init(ptr nocapture noundef writeonly %arg, i8 noundef zeroext %separator) local_unnamed_addr #7 align 64 !dbg !362 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !363
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.35, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.35, align 8
  %1 = ptrtoint ptr %arg to i32, !dbg !364
  call void @__asan_storeN_noabort(i32 %1, i32 8), !dbg !364
  store i64 0, ptr %arg, align 4, !dbg !364
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %separator), !dbg !365
  %tobool.not = icmp eq i8 %separator, 0, !dbg !365
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !dbg !366

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !366
  br label %if.end, !dbg !366

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !367
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 1), align 8, !dbg !367
  %2 = add i64 %gcov_ctr2, 1, !dbg !367
  store i64 %2, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 1), align 8, !dbg !367
  br label %if.end, !dbg !368

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %separator.addr.0 = phi i8 [ %separator, %entry.if.end_crit_edge ], [ 32, %if.then ]
  %separator1 = getelementptr inbounds %struct.dynevent_arg, ptr %arg, i32 0, i32 1, !dbg !369
  %3 = ptrtoint ptr %separator1 to i32, !dbg !370
  call void @__asan_store1_noabort(i32 %3), !dbg !370
  store i8 %separator.addr.0, ptr %separator1, align 4, !dbg !370
  ret void, !dbg !371
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dynevent_arg_pair_init(ptr nocapture noundef writeonly %arg_pair, i8 noundef zeroext %operator, i8 noundef zeroext %separator) local_unnamed_addr #6 align 64 !dbg !372 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !373
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.36, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.36, align 16
  %1 = call ptr @memset(ptr %arg_pair, i32 0, i32 12), !dbg !374
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %operator), !dbg !375
  %tobool.not = icmp eq i8 %operator, 0, !dbg !375
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !dbg !376

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !376
  br label %if.end, !dbg !376

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !377
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !377
  %2 = add i64 %gcov_ctr6, 1, !dbg !377
  store i64 %2, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !377
  br label %if.end, !dbg !378

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %operator.addr.0 = phi i8 [ %operator, %entry.if.end_crit_edge ], [ 32, %if.then ]
  %operator1 = getelementptr inbounds %struct.dynevent_arg_pair, ptr %arg_pair, i32 0, i32 2, !dbg !379
  %3 = ptrtoint ptr %operator1 to i32, !dbg !380
  call void @__asan_store1_noabort(i32 %3), !dbg !380
  store i8 %operator.addr.0, ptr %operator1, align 4, !dbg !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %separator), !dbg !381
  %tobool2.not = icmp eq i8 %separator, 0, !dbg !381
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge, !dbg !382

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !382
  br label %if.end4, !dbg !382

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !383
  %gcov_ctr7 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !383
  %4 = add i64 %gcov_ctr7, 1, !dbg !383
  store i64 %4, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !383
  br label %if.end4, !dbg !384

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %separator.addr.0 = phi i8 [ %separator, %if.end.if.end4_crit_edge ], [ 32, %if.then3 ]
  %separator5 = getelementptr inbounds %struct.dynevent_arg_pair, ptr %arg_pair, i32 0, i32 3, !dbg !385
  %5 = ptrtoint ptr %separator5 to i32, !dbg !386
  call void @__asan_store1_noabort(i32 %5), !dbg !386
  store i8 %separator.addr.0, ptr %separator5, align 1, !dbg !386
  ret void, !dbg !387
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dynevent_create(ptr noundef %cmd) #0 align 64 !dbg !388 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !389
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.37, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.37, align 8
  %run_command = getelementptr inbounds %struct.dynevent_cmd, ptr %cmd, i32 0, i32 4, !dbg !390
  %1 = ptrtoint ptr %run_command to i32, !dbg !390
  call void @__asan_load4_noabort(i32 %1), !dbg !390
  %2 = load ptr, ptr %run_command, align 4, !dbg !390
  %call = tail call i32 %2(ptr noundef %cmd) #14, !dbg !391
  ret i32 %call, !dbg !392
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_init_dentry() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tracefs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dyn_event_write(ptr noundef %file, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 !dbg !393 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !394
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.47, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.47, align 8
  %call = tail call i32 @trace_parse_run_command(ptr noundef %file, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @create_dyn_event) #14, !dbg !395
  ret i32 %call, !dbg !396
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dyn_event_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 !dbg !397 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !398
  %call = tail call i32 @tracing_check_open_get_tr(ptr noundef null) #14, !dbg !399
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !400
  %tobool.not = icmp eq i32 %call, 0, !dbg !400
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !401
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.48, align 16, !dbg !401
  %0 = add i64 %gcov_ctr, 1, !dbg !401
  store i64 %0, ptr @__llvm_gcov_ctr.48, align 16, !dbg !401
  br label %cleanup, !dbg !402

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8, !dbg !403
  %1 = ptrtoint ptr %f_mode to i32, !dbg !403
  call void @__asan_load4_noabort(i32 %1), !dbg !403
  %2 = load i32, ptr %f_mode, align 8, !dbg !403
  %and = and i32 %2, 2, !dbg !404
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !404
  %tobool1.not = icmp eq i32 %and, 0, !dbg !404
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %land.lhs.true, !dbg !405

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !405
  br label %if.end8, !dbg !405

land.lhs.true:                                    ; preds = %if.end
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 1), align 8, !dbg !406
  %3 = add i64 %gcov_ctr10, 1, !dbg !406
  store i64 %3, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 1), align 8, !dbg !406
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7, !dbg !407
  %4 = ptrtoint ptr %f_flags to i32, !dbg !407
  call void @__asan_load4_noabort(i32 %4), !dbg !407
  %5 = load i32, ptr %f_flags, align 4, !dbg !407
  %and2 = and i32 %5, 512, !dbg !408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2), !dbg !408
  %tobool3.not = icmp eq i32 %and2, 0, !dbg !408
  br i1 %tobool3.not, label %land.lhs.true.if.end8_crit_edge, label %if.then4, !dbg !409

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13, !dbg !409
  br label %if.end8, !dbg !409

if.then4:                                         ; preds = %land.lhs.true
  tail call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #14, !dbg !410
  %ev.063.i = load ptr, ptr @dyn_event_list, align 4, !dbg !412
  %cmp.not64.i = icmp eq ptr %ev.063.i, @dyn_event_list, !dbg !412
  br i1 %cmp.not64.i, label %if.then4.dyn_events_release_all.exit_crit_edge, label %if.then4.for.body.i_crit_edge, !dbg !412

if.then4.for.body.i_crit_edge:                    ; preds = %if.then4
  br label %for.body.i, !dbg !412

if.then4.dyn_events_release_all.exit_crit_edge:   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13, !dbg !412
  br label %dyn_events_release_all.exit, !dbg !412

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then4.for.body.i_crit_edge
  %ev.065.i = phi ptr [ %ev.0.i, %for.inc.i.for.body.i_crit_edge ], [ %ev.063.i, %if.then4.for.body.i_crit_edge ]
  %ops3.i = getelementptr inbounds %struct.dyn_event, ptr %ev.065.i, i32 0, i32 1, !dbg !413
  %6 = ptrtoint ptr %ops3.i to i32, !dbg !413
  call void @__asan_load4_noabort(i32 %6), !dbg !413
  %7 = load ptr, ptr %ops3.i, align 4, !dbg !413
  %is_busy.i = getelementptr inbounds %struct.dyn_event_operations, ptr %7, i32 0, i32 3, !dbg !414
  %8 = ptrtoint ptr %is_busy.i to i32, !dbg !414
  call void @__asan_load4_noabort(i32 %8), !dbg !414
  %9 = load ptr, ptr %is_busy.i, align 4, !dbg !414
  %call.i = tail call zeroext i1 %9(ptr noundef %ev.065.i) #14, !dbg !415
  br i1 %call.i, label %for.body.i.dyn_events_release_all.exit_crit_edge, label %for.inc.i, !dbg !415

for.body.i.dyn_events_release_all.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !415
  br label %dyn_events_release_all.exit, !dbg !415

for.inc.i:                                        ; preds = %for.body.i
  %gcov_ctr43.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), align 8, !dbg !416
  %10 = add i64 %gcov_ctr43.i, 1, !dbg !416
  store i64 %10, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), align 8, !dbg !416
  %11 = ptrtoint ptr %ev.065.i to i32, !dbg !412
  call void @__asan_load4_noabort(i32 %11), !dbg !412
  %ev.0.i = load ptr, ptr %ev.065.i, align 4, !dbg !412
  %cmp.not.i = icmp eq ptr %ev.0.i, @dyn_event_list, !dbg !412
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge, !dbg !412, !llvm.loop !417

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !412
  br label %for.body.i, !dbg !412

for.end.i:                                        ; preds = %for.inc.i
  %.pr.i = load ptr, ptr @dyn_event_list, align 4, !dbg !419
  %cmp20.not67.i = icmp eq ptr %.pr.i, @dyn_event_list, !dbg !419
  br i1 %cmp20.not67.i, label %for.end.i.dyn_events_release_all.exit_crit_edge, label %for.end.i.for.body22.i_crit_edge, !dbg !419

for.end.i.for.body22.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body22.i, !dbg !419

for.end.i.dyn_events_release_all.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !419
  br label %dyn_events_release_all.exit, !dbg !419

for.body22.i:                                     ; preds = %for.inc34.i.for.body22.i_crit_edge, %for.end.i.for.body22.i_crit_edge
  %ev.168.i = phi ptr [ %tmp.069.i, %for.inc34.i.for.body22.i_crit_edge ], [ %.pr.i, %for.end.i.for.body22.i_crit_edge ]
  %12 = ptrtoint ptr %ev.168.i to i32, !dbg !419
  call void @__asan_load4_noabort(i32 %12), !dbg !419
  %tmp.069.i = load ptr, ptr %ev.168.i, align 4, !dbg !419
  %ops29.i = getelementptr inbounds %struct.dyn_event, ptr %ev.168.i, i32 0, i32 1, !dbg !420
  %13 = ptrtoint ptr %ops29.i to i32, !dbg !420
  call void @__asan_load4_noabort(i32 %13), !dbg !420
  %14 = load ptr, ptr %ops29.i, align 4, !dbg !420
  %free.i = getelementptr inbounds %struct.dyn_event_operations, ptr %14, i32 0, i32 4, !dbg !421
  %15 = ptrtoint ptr %free.i to i32, !dbg !421
  call void @__asan_load4_noabort(i32 %15), !dbg !421
  %16 = load ptr, ptr %free.i, align 4, !dbg !421
  %call30.i = tail call i32 %16(ptr noundef %ev.168.i) #14, !dbg !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i), !dbg !423
  %tobool31.not.i = icmp eq i32 %call30.i, 0, !dbg !423
  br i1 %tobool31.not.i, label %for.inc34.i, label %if.then32.i, !dbg !423

if.then32.i:                                      ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !424
  %gcov_ctr46.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 6), align 16, !dbg !424
  %17 = add i64 %gcov_ctr46.i, 1, !dbg !424
  store i64 %17, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 6), align 16, !dbg !424
  br label %dyn_events_release_all.exit, !dbg !424

for.inc34.i:                                      ; preds = %for.body22.i
  %gcov_ctr47.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 7), align 8, !dbg !416
  %18 = add i64 %gcov_ctr47.i, 1, !dbg !416
  store i64 %18, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 7), align 8, !dbg !416
  %cmp20.not.i = icmp eq ptr %tmp.069.i, @dyn_event_list, !dbg !419
  br i1 %cmp20.not.i, label %for.inc34.i.dyn_events_release_all.exit_crit_edge, label %for.inc34.i.for.body22.i_crit_edge, !dbg !419, !llvm.loop !425

for.inc34.i.for.body22.i_crit_edge:               ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !419
  br label %for.body22.i, !dbg !419

for.inc34.i.dyn_events_release_all.exit_crit_edge: ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #13, !dbg !419
  br label %dyn_events_release_all.exit, !dbg !419

dyn_events_release_all.exit:                      ; preds = %for.inc34.i.dyn_events_release_all.exit_crit_edge, %if.then32.i, %for.end.i.dyn_events_release_all.exit_crit_edge, %for.body.i.dyn_events_release_all.exit_crit_edge, %if.then4.dyn_events_release_all.exit_crit_edge
  %.sink77.i = phi ptr [ getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 8), %if.then4.dyn_events_release_all.exit_crit_edge ], [ getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 8), %for.end.i.dyn_events_release_all.exit_crit_edge ], [ getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 8), %if.then32.i ], [ getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 8), %for.inc34.i.dyn_events_release_all.exit_crit_edge ], [ getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 2), %for.body.i.dyn_events_release_all.exit_crit_edge ]
  %ret.3.i = phi i32 [ 0, %if.then4.dyn_events_release_all.exit_crit_edge ], [ 0, %for.end.i.dyn_events_release_all.exit_crit_edge ], [ %call30.i, %if.then32.i ], [ 0, %for.inc34.i.dyn_events_release_all.exit_crit_edge ], [ -16, %for.body.i.dyn_events_release_all.exit_crit_edge ], !dbg !416
  %19 = ptrtoint ptr %.sink77.i to i32, !dbg !416
  call void @__asan_load8_noabort(i32 %19), !dbg !416
  %gcov_ctr48.i = load i64, ptr %.sink77.i, align 16, !dbg !416
  %20 = add i64 %gcov_ctr48.i, 1, !dbg !416
  store i64 %20, ptr %.sink77.i, align 16, !dbg !416
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #14, !dbg !427
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i), !dbg !428
  %cmp = icmp slt i32 %ret.3.i, 0, !dbg !428
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !429

if.then6:                                         ; preds = %dyn_events_release_all.exit
  call void @__sanitizer_cov_trace_pc() #13, !dbg !430
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 2), align 16, !dbg !430
  %21 = add i64 %gcov_ctr11, 1, !dbg !430
  store i64 %21, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 2), align 16, !dbg !430
  br label %cleanup, !dbg !431

if.end7:                                          ; preds = %dyn_events_release_all.exit
  call void @__sanitizer_cov_trace_pc() #13, !dbg !432
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 3), align 8, !dbg !432
  %22 = add i64 %gcov_ctr12, 1, !dbg !432
  store i64 %22, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 3), align 8, !dbg !432
  br label %if.end8, !dbg !432

if.end8:                                          ; preds = %if.end7, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 4), align 16, !dbg !433
  %23 = add i64 %gcov_ctr13, 1, !dbg !433
  store i64 %23, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 4), align 16, !dbg !433
  %call9 = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @dyn_event_seq_op) #14, !dbg !434
  br label %cleanup, !dbg !435

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %ret.3.i, %if.then6 ], [ %call9, %if.end8 ], !dbg !436
  ret i32 %retval.0, !dbg !437
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_parse_run_command(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @create_dyn_event(ptr noundef %raw_command) #0 align 64 !dbg !438 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !439
  %0 = ptrtoint ptr %raw_command to i32, !dbg !440
  call void @__asan_load1_noabort(i32 %0), !dbg !440
  %1 = load i8, ptr %raw_command, align 1, !dbg !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %1), !dbg !441
  %cmp = icmp eq i8 %1, 45, !dbg !441
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false, !dbg !442

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !442
  br label %if.then, !dbg !442

lor.lhs.false:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.49, align 16, !dbg !443
  %2 = add i64 %gcov_ctr, 1, !dbg !443
  store i64 %2, ptr @__llvm_gcov_ctr.49, align 16, !dbg !443
  %3 = ptrtoint ptr %raw_command to i32, !dbg !443
  call void @__asan_load1_noabort(i32 %3), !dbg !443
  %4 = load i8, ptr %raw_command, align 1, !dbg !443
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %4), !dbg !444
  %cmp4 = icmp eq i8 %4, 33, !dbg !444
  br i1 %cmp4, label %lor.lhs.false.if.then_crit_edge, label %if.end, !dbg !440

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13, !dbg !440
  br label %if.then, !dbg !440

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 1), align 8, !dbg !445
  %5 = add i64 %gcov_ctr23, 1, !dbg !445
  store i64 %5, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 1), align 8, !dbg !445
  %call = tail call i32 @dyn_event_release(ptr noundef %raw_command, ptr noundef null), !dbg !446
  br label %cleanup, !dbg !447

if.end:                                           ; preds = %lor.lhs.false
  tail call void @mutex_lock_nested(ptr noundef nonnull @dyn_event_ops_mutex, i32 noundef 0) #14, !dbg !448
  %ops.038 = load ptr, ptr @dyn_event_ops_list, align 4, !dbg !449
  %cmp6.not39 = icmp eq ptr %ops.038, @dyn_event_ops_list, !dbg !449
  br i1 %cmp6.not39, label %for.end.thread44, label %if.end.for.body_crit_edge, !dbg !449

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body, !dbg !449

for.end.thread44:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !450
  tail call void @mutex_unlock(ptr noundef nonnull @dyn_event_ops_mutex) #14, !dbg !450
  br label %if.end21, !dbg !451

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %if.end.for.body_crit_edge
  %ops.040 = phi ptr [ %ops.0, %if.end13.for.body_crit_edge ], [ %ops.038, %if.end.for.body_crit_edge ]
  %create = getelementptr inbounds %struct.dyn_event_operations, ptr %ops.040, i32 0, i32 1, !dbg !452
  %6 = ptrtoint ptr %create to i32, !dbg !452
  call void @__asan_load4_noabort(i32 %6), !dbg !452
  %7 = load ptr, ptr %create, align 4, !dbg !452
  %call8 = tail call i32 %7(ptr noundef %raw_command) #14, !dbg !453
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8), !dbg !454
  %tobool.not = icmp eq i32 %call8, 0, !dbg !454
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %lor.lhs.false9, !dbg !455

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13, !dbg !455
  br label %for.end, !dbg !455

lor.lhs.false9:                                   ; preds = %for.body
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 2), align 16, !dbg !456
  %8 = add i64 %gcov_ctr24, 1, !dbg !456
  store i64 %8, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 2), align 16, !dbg !456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %call8), !dbg !457
  %cmp10.not = icmp eq i32 %call8, -125, !dbg !457
  br i1 %cmp10.not, label %if.end13, label %lor.lhs.false9.for.end_crit_edge, !dbg !458

lor.lhs.false9.for.end_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13, !dbg !458
  br label %for.end, !dbg !458

if.end13:                                         ; preds = %lor.lhs.false9
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 3), align 8, !dbg !459
  %9 = add i64 %gcov_ctr25, 1, !dbg !459
  store i64 %9, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 3), align 8, !dbg !459
  %10 = ptrtoint ptr %ops.040 to i32, !dbg !449
  call void @__asan_load4_noabort(i32 %10), !dbg !449
  %ops.0 = load ptr, ptr %ops.040, align 4, !dbg !449
  %cmp6.not = icmp eq ptr %ops.0, @dyn_event_ops_list, !dbg !449
  br i1 %cmp6.not, label %for.end.thread, label %if.end13.for.body_crit_edge, !dbg !449, !llvm.loop !460

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13, !dbg !449
  br label %for.body, !dbg !449

for.end.thread:                                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13, !dbg !450
  tail call void @mutex_unlock(ptr noundef nonnull @dyn_event_ops_mutex) #14, !dbg !450
  br label %if.then20, !dbg !451

for.end:                                          ; preds = %lor.lhs.false9.for.end_crit_edge, %for.body.for.end_crit_edge
  %gcov_ctr26 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 4), align 16, !dbg !461
  %11 = add i64 %gcov_ctr26, 1, !dbg !461
  store i64 %11, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 4), align 16, !dbg !461
  tail call void @mutex_unlock(ptr noundef nonnull @dyn_event_ops_mutex) #14, !dbg !450
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %call8), !dbg !462
  %cmp18 = icmp eq i32 %call8, -125, !dbg !462
  br i1 %cmp18, label %for.end.if.then20_crit_edge, label %for.end.if.end21_crit_edge, !dbg !451

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !451
  br label %if.end21, !dbg !451

for.end.if.then20_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13, !dbg !451
  br label %if.then20, !dbg !451

if.then20:                                        ; preds = %for.end.if.then20_crit_edge, %for.end.thread
  %gcov_ctr27 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 5), align 8, !dbg !463
  %12 = add i64 %gcov_ctr27, 1, !dbg !463
  store i64 %12, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 5), align 8, !dbg !463
  br label %if.end21, !dbg !464

if.end21:                                         ; preds = %if.then20, %for.end.if.end21_crit_edge, %for.end.thread44
  %ret.2 = phi i32 [ -22, %if.then20 ], [ %call8, %for.end.if.end21_crit_edge ], [ -19, %for.end.thread44 ], !dbg !465
  %gcov_ctr28 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 6), align 16, !dbg !466
  %13 = add i64 %gcov_ctr28, 1, !dbg !466
  store i64 %13, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 6), align 16, !dbg !466
  br label %cleanup, !dbg !467

cleanup:                                          ; preds = %if.end21, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %ret.2, %if.end21 ], !dbg !465
  ret i32 %retval.0, !dbg !468
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_check_open_get_tr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dyn_event_seq_show(ptr noundef %m, ptr noundef %v) #0 align 64 !dbg !469 {
entry:
  call void @__sanitizer_cov_trace_pc() #13, !dbg !470
  %tobool.not = icmp eq ptr %v, null, !dbg !471
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true, !dbg !472

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13, !dbg !472
  br label %if.end, !dbg !472

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.50, align 16, !dbg !473
  %0 = add i64 %gcov_ctr, 1, !dbg !473
  store i64 %0, ptr @__llvm_gcov_ctr.50, align 16, !dbg !473
  %ops = getelementptr inbounds %struct.dyn_event, ptr %v, i32 0, i32 1, !dbg !474
  %1 = ptrtoint ptr %ops to i32, !dbg !474
  call void @__asan_load4_noabort(i32 %1), !dbg !474
  %2 = load ptr, ptr %ops, align 4, !dbg !474
  %tobool1.not = icmp eq ptr %2, null, !dbg !473
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then, !dbg !471

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13, !dbg !471
  br label %if.end, !dbg !471

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13, !dbg !475
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 1), align 8, !dbg !475
  %3 = add i64 %gcov_ctr3, 1, !dbg !475
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 1), align 8, !dbg !475
  %4 = ptrtoint ptr %ops to i32, !dbg !476
  call void @__asan_load4_noabort(i32 %4), !dbg !476
  %5 = load ptr, ptr %ops, align 4, !dbg !476
  %show = getelementptr inbounds %struct.dyn_event_operations, ptr %5, i32 0, i32 2, !dbg !477
  %6 = ptrtoint ptr %show to i32, !dbg !477
  call void @__asan_load4_noabort(i32 %6), !dbg !477
  %7 = load ptr, ptr %show, align 4, !dbg !477
  %call = tail call i32 %7(ptr noundef %m, ptr noundef nonnull %v) #14, !dbg !475
  br label %cleanup, !dbg !478

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 2), align 16, !dbg !479
  %8 = add i64 %gcov_ctr4, 1, !dbg !479
  store i64 %8, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 2), align 16, !dbg !479
  br label %cleanup, !dbg !479

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ], !dbg !480
  ret i32 %retval.0, !dbg !481
}

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #9 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 -142739927) #14
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #14
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #14
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 38
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #13
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @llvm_gcda_summary_info() #14
  tail call void @llvm_gcda_end_file() #14
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #10 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.15, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.16, i8 0, i64 72, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.17, align 8
  store i64 0, ptr @__llvm_gcov_ctr.18, align 8
  store i64 0, ptr @__llvm_gcov_ctr.19, align 8
  store i64 0, ptr @__llvm_gcov_ctr.20, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.21, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.22, align 8
  store i64 0, ptr @__llvm_gcov_ctr.23, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) @__llvm_gcov_ctr.24, i8 0, i64 96, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.25, align 8
  store i64 0, ptr @__llvm_gcov_ctr.26, align 8
  store i64 0, ptr @__llvm_gcov_ctr.27, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.28, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.29, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.30, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.31, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.32, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.33, align 8
  store i64 0, ptr @__llvm_gcov_ctr.34, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.35, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.36, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.37, align 8
  store i64 0, ptr @__llvm_gcov_ctr.38, align 8
  store i64 0, ptr @__llvm_gcov_ctr.39, align 8
  store i64 0, ptr @__llvm_gcov_ctr.40, align 8
  store i64 0, ptr @__llvm_gcov_ctr.41, align 8
  store i64 0, ptr @__llvm_gcov_ctr.42, align 8
  store i64 0, ptr @__llvm_gcov_ctr.43, align 8
  store i64 0, ptr @__llvm_gcov_ctr.44, align 8
  store i64 0, ptr @__llvm_gcov_ctr.45, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.46, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.47, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.48, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.49, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.50, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.51, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #9 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #14
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { noinline nounwind uwtable(sync) }
attributes #10 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nounwind uwtable(sync) }
attributes #13 = { nomerge }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !36, !37, !38, !40, !42, !44, !45, !46, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.gcov = !{!59}
!llvm.ident = !{!60}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_dynevent.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_dynevent.c", i32 27, i32 6}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../kernel/trace/trace_dynevent.c", i32 43, i32 6}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../kernel/trace/trace_dynevent.c", i32 46, i32 6}
!9 = !{ptr @dyn_event_list, !10, !"dyn_event_list", i1 false, i1 false}
!10 = !{!"../kernel/trace/trace_dynevent.c", i32 149, i32 1}
!11 = !{ptr @__initcall__kmod_trace_dynevent__262_274_init_dynamic_event5, !12, !"__initcall__kmod_trace_dynevent__262_274_init_dynamic_event5", i1 false, i1 false}
!12 = !{!"../kernel/trace/trace_dynevent.c", i32 274, i32 1}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/trace/trace_dynevent.c", i32 306, i32 34}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../kernel/trace/trace_dynevent.c", i32 308, i32 3}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dynevent_arg_add._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @dynevent_arg_add._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/trace/trace_dynevent.c", i32 351, i32 34}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/trace/trace_dynevent.c", i32 355, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dynevent_arg_pair_add._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @dynevent_arg_pair_add._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/trace/trace_dynevent.c", i32 380, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @dynevent_str_add._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @dynevent_str_add._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__ksymtab_dynevent_create, !33, !"__ksymtab_dynevent_create", i1 false, i1 false}
!33 = !{!"../kernel/trace/trace_dynevent.c", i32 486, i32 1}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/trace/trace_dynevent.c", i32 19, i32 8}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @dyn_event_ops_mutex, !35, !"dyn_event_ops_mutex", i1 false, i1 false}
!38 = !{ptr @dyn_event_ops_list, !39, !"dyn_event_ops_list", i1 false, i1 false}
!39 = !{!"../kernel/trace/trace_dynevent.c", i32 20, i32 8}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/trace/trace_dynevent.c", i32 265, i32 30}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/trace/trace_dynevent.c", i32 270, i32 3}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @init_dynamic_event._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @init_dynamic_event._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @dynamic_events_ops, !48, !"dynamic_events_ops", i1 false, i1 false}
!48 = !{!"../kernel/trace/trace_dynevent.c", i32 246, i32 37}
!49 = !{ptr @dyn_event_seq_op, !50, !"dyn_event_seq_op", i1 false, i1 false}
!50 = !{!"../kernel/trace/trace_dynevent.c", i32 177, i32 36}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_dynevent.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_dynevent.gcda", !0}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = distinct !DISubprogram(name: "trace_event_dyn_try_get_ref", scope: !1, file: !1, line: 22, type: !62, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!62 = !DISubroutineType(types: !63)
!63 = !{}
!64 = !DILocation(line: 23, scope: !61)
!65 = !DILocation(line: 27, column: 6, scope: !61)
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !DILocation(line: 28, column: 3, scope: !61)
!68 = !DILocation(line: 30, column: 2, scope: !61)
!69 = !DILocation(line: 31, column: 2, scope: !61)
!70 = !DILocation(line: 32, column: 12, scope: !61)
!71 = !DILocation(line: 32, column: 7, scope: !61)
!72 = !DILocation(line: 33, column: 16, scope: !61)
!73 = !DILocation(line: 101, column: 2, scope: !74, inlinedAt: !76)
!74 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !75, file: !75, line: 99, type: !62, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!75 = !DIFile(filename: "../include/linux/instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!76 = distinct !DILocation(line: 190, column: 2, scope: !77, inlinedAt: !79)
!77 = distinct !DISubprogram(name: "atomic_inc", scope: !78, file: !78, line: 188, type: !62, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!78 = !DIFile(filename: "../include/linux/atomic/atomic-instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!79 = distinct !DILocation(line: 33, column: 4, scope: !61)
!80 = !DILocation(line: 223, column: 1, scope: !81, inlinedAt: !83)
!81 = distinct !DISubprogram(name: "arch_atomic_add", scope: !82, file: !82, line: 223, type: !62, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!82 = !DIFile(filename: "../arch/arm/include/asm/atomic.h", directory: "/llk/linux-5.17/build_arm_allyes")
!83 = distinct !DILocation(line: 340, column: 2, scope: !84, inlinedAt: !86)
!84 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !85, file: !85, line: 338, type: !62, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!85 = !DIFile(filename: "../include/linux/atomic/atomic-arch-fallback.h", directory: "/llk/linux-5.17/build_arm_allyes")
!86 = distinct !DILocation(line: 191, column: 2, scope: !77, inlinedAt: !79)
!87 = !{i64 2148675019, i64 2148675045, i64 2148675074, i64 2148675108, i64 2148675139, i64 2148675162}
!88 = !DILocation(line: 35, column: 3, scope: !61)
!89 = distinct !{!89, !69, !90}
!90 = !DILocation(line: 36, column: 2, scope: !61)
!91 = !DILocation(line: 37, column: 2, scope: !61)
!92 = !DILocation(line: 38, column: 2, scope: !61)
!93 = !DILocation(line: 0, scope: !61)
!94 = !DILocation(line: 39, column: 1, scope: !61)
!95 = distinct !DISubprogram(name: "trace_event_dyn_put_ref", scope: !1, file: !1, line: 41, type: !62, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!96 = !DILocation(line: 42, scope: !95)
!97 = !DILocation(line: 43, column: 6, scope: !95)
!98 = !DILocation(line: 44, column: 3, scope: !95)
!99 = !DILocation(line: 46, column: 6, scope: !95)
!100 = !DILocation(line: 71, column: 2, scope: !101, inlinedAt: !102)
!101 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !75, file: !75, line: 69, type: !62, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!102 = distinct !DILocation(line: 27, column: 2, scope: !103, inlinedAt: !104)
!103 = distinct !DISubprogram(name: "atomic_read", scope: !78, file: !78, line: 25, type: !62, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!104 = distinct !DILocation(line: 46, column: 6, scope: !95)
!105 = !DILocation(line: 28, column: 9, scope: !103, inlinedAt: !104)
!106 = !DILocation(line: 47, column: 15, scope: !95)
!107 = !DILocation(line: 86, column: 2, scope: !108, inlinedAt: !109)
!108 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !75, file: !75, line: 84, type: !62, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!109 = distinct !DILocation(line: 41, column: 2, scope: !110, inlinedAt: !111)
!110 = distinct !DISubprogram(name: "atomic_set", scope: !78, file: !78, line: 39, type: !62, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!111 = distinct !DILocation(line: 47, column: 3, scope: !95)
!112 = !DILocation(line: 42, column: 2, scope: !110, inlinedAt: !111)
!113 = !DILocation(line: 48, column: 3, scope: !95)
!114 = !DILocation(line: 51, column: 14, scope: !95)
!115 = !DILocation(line: 101, column: 2, scope: !74, inlinedAt: !116)
!116 = distinct !DILocation(line: 257, column: 2, scope: !117, inlinedAt: !118)
!117 = distinct !DISubprogram(name: "atomic_dec", scope: !78, file: !78, line: 255, type: !62, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!118 = distinct !DILocation(line: 51, column: 2, scope: !95)
!119 = !DILocation(line: 224, column: 1, scope: !120, inlinedAt: !121)
!120 = distinct !DISubprogram(name: "arch_atomic_sub", scope: !82, file: !82, line: 224, type: !62, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!121 = distinct !DILocation(line: 511, column: 2, scope: !122, inlinedAt: !123)
!122 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !85, file: !85, line: 509, type: !62, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!123 = distinct !DILocation(line: 258, column: 2, scope: !117, inlinedAt: !118)
!124 = !{i64 2148677484, i64 2148677510, i64 2148677539, i64 2148677573, i64 2148677604, i64 2148677627}
!125 = !DILocation(line: 52, column: 1, scope: !95)
!126 = distinct !DISubprogram(name: "trace_event_dyn_busy", scope: !1, file: !1, line: 54, type: !62, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!127 = !DILocation(line: 55, scope: !126)
!128 = !DILocation(line: 56, column: 28, scope: !126)
!129 = !DILocation(line: 71, column: 2, scope: !101, inlinedAt: !130)
!130 = distinct !DILocation(line: 27, column: 2, scope: !103, inlinedAt: !131)
!131 = distinct !DILocation(line: 56, column: 9, scope: !126)
!132 = !DILocation(line: 28, column: 9, scope: !103, inlinedAt: !131)
!133 = !DILocation(line: 56, column: 36, scope: !126)
!134 = !DILocation(line: 56, column: 2, scope: !126)
!135 = distinct !DISubprogram(name: "dyn_event_register", scope: !1, file: !1, line: 59, type: !62, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!136 = !DILocation(line: 60, scope: !135)
!137 = !DILocation(line: 61, column: 7, scope: !135)
!138 = !DILocation(line: 61, column: 11, scope: !135)
!139 = !DILocation(line: 61, column: 15, scope: !135)
!140 = !DILocation(line: 61, column: 20, scope: !135)
!141 = !DILocation(line: 61, column: 27, scope: !135)
!142 = !DILocation(line: 61, column: 31, scope: !135)
!143 = !DILocation(line: 61, column: 36, scope: !135)
!144 = !DILocation(line: 61, column: 41, scope: !135)
!145 = !DILocation(line: 61, column: 45, scope: !135)
!146 = !DILocation(line: 61, column: 50, scope: !135)
!147 = !DILocation(line: 61, column: 58, scope: !135)
!148 = !DILocation(line: 62, column: 7, scope: !135)
!149 = !DILocation(line: 62, column: 12, scope: !135)
!150 = !DILocation(line: 62, column: 17, scope: !135)
!151 = !DILocation(line: 62, column: 21, scope: !135)
!152 = !DILocation(line: 62, column: 26, scope: !135)
!153 = !DILocation(line: 61, column: 6, scope: !135)
!154 = !DILocation(line: 63, column: 3, scope: !135)
!155 = !DILocation(line: 65, column: 18, scope: !135)
!156 = !DILocation(line: 37, column: 2, scope: !157, inlinedAt: !159)
!157 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !158, file: !158, line: 35, type: !62, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!158 = !DIFile(filename: "../include/linux/list.h", directory: "/llk/linux-5.17/build_arm_allyes")
!159 = distinct !DILocation(line: 65, column: 2, scope: !135)
!160 = !DILocation(line: 38, column: 8, scope: !157, inlinedAt: !159)
!161 = !DILocation(line: 38, column: 13, scope: !157, inlinedAt: !159)
!162 = !DILocation(line: 66, column: 2, scope: !135)
!163 = !DILocation(line: 102, column: 24, scope: !164, inlinedAt: !165)
!164 = distinct !DISubprogram(name: "list_add_tail", scope: !158, file: !158, line: 100, type: !62, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!165 = distinct !DILocation(line: 67, column: 2, scope: !135)
!166 = !DILocation(line: 69, column: 7, scope: !167, inlinedAt: !168)
!167 = distinct !DISubprogram(name: "__list_add", scope: !158, file: !158, line: 65, type: !62, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!168 = distinct !DILocation(line: 102, column: 2, scope: !164, inlinedAt: !165)
!169 = !DILocation(line: 69, column: 6, scope: !167, inlinedAt: !168)
!170 = !DILocation(line: 72, column: 13, scope: !167, inlinedAt: !168)
!171 = !DILocation(line: 73, column: 12, scope: !167, inlinedAt: !168)
!172 = !DILocation(line: 74, column: 12, scope: !167, inlinedAt: !168)
!173 = !DILocation(line: 75, column: 2, scope: !167, inlinedAt: !168)
!174 = !DILocation(line: 0, scope: !167, inlinedAt: !168)
!175 = !DILocation(line: 68, column: 2, scope: !135)
!176 = !DILocation(line: 69, column: 2, scope: !135)
!177 = !DILocation(line: 0, scope: !135)
!178 = !DILocation(line: 70, column: 1, scope: !135)
!179 = distinct !DISubprogram(name: "dyn_event_release", scope: !1, file: !1, line: 72, type: !62, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!180 = !DILocation(line: 73, scope: !179)
!181 = !DILocation(line: 76, column: 2, scope: !179)
!182 = !DILocation(line: 76, column: 6, scope: !179)
!183 = !{!"auto-init"}
!184 = !DILocation(line: 79, column: 9, scope: !179)
!185 = !DILocation(line: 80, column: 7, scope: !179)
!186 = !DILocation(line: 80, column: 6, scope: !179)
!187 = !DILocation(line: 81, column: 3, scope: !179)
!188 = !DILocation(line: 83, column: 6, scope: !179)
!189 = !DILocation(line: 83, column: 17, scope: !179)
!190 = !DILocation(line: 84, column: 7, scope: !179)
!191 = !DILocation(line: 84, column: 18, scope: !179)
!192 = !DILocation(line: 85, column: 8, scope: !179)
!193 = !DILocation(line: 86, column: 4, scope: !179)
!194 = !DILocation(line: 88, column: 12, scope: !179)
!195 = !DILocation(line: 89, column: 2, scope: !179)
!196 = !DILocation(line: 90, column: 11, scope: !179)
!197 = !DILocation(line: 91, column: 8, scope: !179)
!198 = !DILocation(line: 91, column: 7, scope: !179)
!199 = !DILocation(line: 92, column: 8, scope: !179)
!200 = !DILocation(line: 93, column: 4, scope: !179)
!201 = !DILocation(line: 95, column: 8, scope: !179)
!202 = !DILocation(line: 0, scope: !179)
!203 = !DILocation(line: 98, column: 6, scope: !179)
!204 = !DILocation(line: 99, column: 6, scope: !179)
!205 = !DILocation(line: 100, column: 12, scope: !179)
!206 = !DILocation(line: 101, column: 13, scope: !179)
!207 = !DILocation(line: 102, column: 6, scope: !179)
!208 = !DILocation(line: 103, column: 2, scope: !179)
!209 = !DILocation(line: 104, column: 6, scope: !179)
!210 = !DILocation(line: 104, column: 15, scope: !179)
!211 = !DILocation(line: 105, column: 7, scope: !179)
!212 = !DILocation(line: 106, column: 3, scope: !179)
!213 = !DILocation(line: 109, column: 2, scope: !179)
!214 = !DILocation(line: 110, column: 2, scope: !179)
!215 = !DILocation(line: 111, column: 12, scope: !179)
!216 = !DILocation(line: 111, column: 15, scope: !179)
!217 = !DILocation(line: 111, column: 28, scope: !179)
!218 = !DILocation(line: 111, column: 20, scope: !179)
!219 = !DILocation(line: 111, column: 7, scope: !179)
!220 = !DILocation(line: 112, column: 4, scope: !179)
!221 = !DILocation(line: 113, column: 13, scope: !179)
!222 = !DILocation(line: 113, column: 18, scope: !179)
!223 = !DILocation(line: 114, column: 5, scope: !179)
!224 = !DILocation(line: 114, column: 10, scope: !179)
!225 = !DILocation(line: 113, column: 8, scope: !179)
!226 = !DILocation(line: 113, column: 7, scope: !179)
!227 = !DILocation(line: 115, column: 4, scope: !179)
!228 = !DILocation(line: 117, column: 14, scope: !179)
!229 = !DILocation(line: 117, column: 19, scope: !179)
!230 = !DILocation(line: 117, column: 9, scope: !179)
!231 = !DILocation(line: 118, column: 7, scope: !179)
!232 = !DILocation(line: 119, column: 4, scope: !179)
!233 = !DILocation(line: 120, column: 2, scope: !179)
!234 = distinct !{!234, !214, !233}
!235 = !DILocation(line: 121, column: 2, scope: !179)
!236 = !DILocation(line: 123, column: 2, scope: !179)
!237 = !DILocation(line: 124, column: 2, scope: !179)
!238 = !DILocation(line: 125, column: 1, scope: !179)
!239 = distinct !DISubprogram(name: "dyn_event_seq_start", scope: !1, file: !1, line: 151, type: !62, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!240 = !DILocation(line: 152, scope: !239)
!241 = !DILocation(line: 153, column: 2, scope: !239)
!242 = !DILocation(line: 154, column: 41, scope: !239)
!243 = !DILocation(line: 154, column: 9, scope: !239)
!244 = !DILocation(line: 154, column: 2, scope: !239)
!245 = distinct !DISubprogram(name: "dyn_event_seq_next", scope: !1, file: !1, line: 157, type: !62, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!246 = !DILocation(line: 158, scope: !245)
!247 = !DILocation(line: 159, column: 9, scope: !245)
!248 = !DILocation(line: 159, column: 2, scope: !245)
!249 = distinct !DISubprogram(name: "dyn_event_seq_stop", scope: !1, file: !1, line: 162, type: !62, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!250 = !DILocation(line: 163, scope: !249)
!251 = !DILocation(line: 164, column: 2, scope: !249)
!252 = !DILocation(line: 165, column: 1, scope: !249)
!253 = distinct !DISubprogram(name: "dyn_events_release_all", scope: !1, file: !1, line: 195, type: !62, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!254 = !DILocation(line: 196, scope: !253)
!255 = !DILocation(line: 200, column: 2, scope: !253)
!256 = !DILocation(line: 201, column: 2, scope: !253)
!257 = !DILocation(line: 202, column: 12, scope: !253)
!258 = !DILocation(line: 202, column: 15, scope: !253)
!259 = !DILocation(line: 202, column: 19, scope: !253)
!260 = !DILocation(line: 202, column: 23, scope: !253)
!261 = !DILocation(line: 202, column: 7, scope: !253)
!262 = !DILocation(line: 204, column: 11, scope: !253)
!263 = !DILocation(line: 204, column: 16, scope: !253)
!264 = !DILocation(line: 204, column: 7, scope: !253)
!265 = !DILocation(line: 0, scope: !253)
!266 = distinct !{!266, !256, !267}
!267 = !DILocation(line: 208, column: 2, scope: !253)
!268 = !DILocation(line: 209, column: 2, scope: !253)
!269 = !DILocation(line: 210, column: 12, scope: !253)
!270 = !DILocation(line: 210, column: 15, scope: !253)
!271 = !DILocation(line: 210, column: 19, scope: !253)
!272 = !DILocation(line: 210, column: 23, scope: !253)
!273 = !DILocation(line: 210, column: 7, scope: !253)
!274 = !DILocation(line: 212, column: 13, scope: !253)
!275 = !DILocation(line: 212, column: 18, scope: !253)
!276 = !DILocation(line: 212, column: 9, scope: !253)
!277 = !DILocation(line: 213, column: 7, scope: !253)
!278 = !DILocation(line: 214, column: 4, scope: !253)
!279 = distinct !{!279, !268, !280}
!280 = !DILocation(line: 215, column: 2, scope: !253)
!281 = !DILocation(line: 217, column: 2, scope: !253)
!282 = !DILocation(line: 219, column: 2, scope: !253)
!283 = distinct !DISubprogram(name: "init_dynamic_event", scope: !1, file: !1, line: 256, type: !62, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!284 = !DILocation(line: 257, scope: !283)
!285 = !DILocation(line: 261, column: 8, scope: !283)
!286 = !DILocation(line: 262, column: 6, scope: !283)
!287 = !DILocation(line: 263, column: 3, scope: !283)
!288 = !DILocation(line: 265, column: 10, scope: !283)
!289 = !DILocation(line: 269, column: 7, scope: !283)
!290 = !DILocation(line: 269, column: 6, scope: !283)
!291 = !DILocation(line: 270, column: 3, scope: !283)
!292 = !DILocation(line: 273, column: 1, scope: !283)
!293 = distinct !DISubprogram(name: "dynevent_arg_add", scope: !1, file: !1, line: 294, type: !62, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!294 = !DILocation(line: 297, scope: !293)
!295 = !DILocation(line: 300, column: 6, scope: !293)
!296 = !DILocation(line: 301, column: 9, scope: !293)
!297 = !DILocation(line: 302, column: 7, scope: !293)
!298 = !DILocation(line: 303, column: 11, scope: !293)
!299 = !DILocation(line: 303, column: 4, scope: !293)
!300 = !DILocation(line: 304, column: 2, scope: !293)
!301 = !DILocation(line: 306, column: 48, scope: !293)
!302 = !DILocation(line: 306, column: 58, scope: !293)
!303 = !DILocation(line: 306, column: 53, scope: !293)
!304 = !DILocation(line: 306, column: 8, scope: !293)
!305 = !DILocation(line: 307, column: 6, scope: !293)
!306 = !DILocation(line: 308, column: 3, scope: !293)
!307 = !DILocation(line: 309, column: 3, scope: !293)
!308 = !DILocation(line: 312, column: 9, scope: !293)
!309 = !DILocation(line: 312, column: 2, scope: !293)
!310 = !DILocation(line: 0, scope: !293)
!311 = !DILocation(line: 313, column: 1, scope: !293)
!312 = distinct !DISubprogram(name: "dynevent_arg_pair_add", scope: !1, file: !1, line: 339, type: !62, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!313 = !DILocation(line: 342, scope: !312)
!314 = !DILocation(line: 345, column: 6, scope: !312)
!315 = !DILocation(line: 346, column: 9, scope: !312)
!316 = !DILocation(line: 347, column: 7, scope: !312)
!317 = !DILocation(line: 348, column: 11, scope: !312)
!318 = !DILocation(line: 348, column: 4, scope: !312)
!319 = !DILocation(line: 349, column: 2, scope: !312)
!320 = !DILocation(line: 351, column: 57, scope: !312)
!321 = !DILocation(line: 352, column: 19, scope: !312)
!322 = !DILocation(line: 352, column: 9, scope: !312)
!323 = !DILocation(line: 352, column: 39, scope: !312)
!324 = !DILocation(line: 353, column: 19, scope: !312)
!325 = !DILocation(line: 353, column: 9, scope: !312)
!326 = !DILocation(line: 351, column: 8, scope: !312)
!327 = !DILocation(line: 354, column: 6, scope: !312)
!328 = !DILocation(line: 355, column: 3, scope: !312)
!329 = !DILocation(line: 358, column: 3, scope: !312)
!330 = !DILocation(line: 361, column: 9, scope: !312)
!331 = !DILocation(line: 361, column: 2, scope: !312)
!332 = !DILocation(line: 0, scope: !312)
!333 = !DILocation(line: 362, column: 1, scope: !312)
!334 = distinct !DISubprogram(name: "dynevent_str_add", scope: !1, file: !1, line: 374, type: !62, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!335 = !DILocation(line: 375, scope: !334)
!336 = !DILocation(line: 378, column: 8, scope: !334)
!337 = !DILocation(line: 379, column: 6, scope: !334)
!338 = !DILocation(line: 380, column: 3, scope: !334)
!339 = !DILocation(line: 381, column: 3, scope: !334)
!340 = !DILocation(line: 384, column: 9, scope: !334)
!341 = !DILocation(line: 384, column: 2, scope: !334)
!342 = !DILocation(line: 0, scope: !334)
!343 = !DILocation(line: 385, column: 1, scope: !334)
!344 = distinct !DISubprogram(name: "dynevent_cmd_init", scope: !1, file: !1, line: 407, type: !62, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!345 = !DILocation(line: 410, scope: !344)
!346 = !DILocation(line: 411, column: 2, scope: !344)
!347 = !DILocation(line: 35, column: 12, scope: !348, inlinedAt: !350)
!348 = distinct !DISubprogram(name: "seq_buf_init", scope: !349, file: !349, line: 33, type: !62, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!349 = !DIFile(filename: "../include/linux/seq_buf.h", directory: "/llk/linux-5.17/build_arm_allyes")
!350 = distinct !DILocation(line: 413, column: 2, scope: !344)
!351 = !DILocation(line: 36, column: 5, scope: !348, inlinedAt: !350)
!352 = !DILocation(line: 36, column: 10, scope: !348, inlinedAt: !350)
!353 = !DILocation(line: 29, column: 5, scope: !354, inlinedAt: !355)
!354 = distinct !DISubprogram(name: "seq_buf_clear", scope: !349, file: !349, line: 26, type: !62, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!355 = distinct !DILocation(line: 37, column: 2, scope: !348, inlinedAt: !350)
!356 = !DILocation(line: 29, column: 13, scope: !354, inlinedAt: !355)
!357 = !DILocation(line: 414, column: 7, scope: !344)
!358 = !DILocation(line: 414, column: 12, scope: !344)
!359 = !DILocation(line: 415, column: 7, scope: !344)
!360 = !DILocation(line: 415, column: 19, scope: !344)
!361 = !DILocation(line: 416, column: 1, scope: !344)
!362 = distinct !DISubprogram(name: "dynevent_arg_init", scope: !1, file: !1, line: 430, type: !62, scopeLine: 432, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!363 = !DILocation(line: 432, scope: !362)
!364 = !DILocation(line: 433, column: 2, scope: !362)
!365 = !DILocation(line: 435, column: 7, scope: !362)
!366 = !DILocation(line: 435, column: 6, scope: !362)
!367 = !DILocation(line: 436, column: 13, scope: !362)
!368 = !DILocation(line: 436, column: 3, scope: !362)
!369 = !DILocation(line: 437, column: 7, scope: !362)
!370 = !DILocation(line: 437, column: 17, scope: !362)
!371 = !DILocation(line: 438, column: 1, scope: !362)
!372 = distinct !DISubprogram(name: "dynevent_arg_pair_init", scope: !1, file: !1, line: 457, type: !62, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!373 = !DILocation(line: 459, scope: !372)
!374 = !DILocation(line: 460, column: 2, scope: !372)
!375 = !DILocation(line: 462, column: 7, scope: !372)
!376 = !DILocation(line: 462, column: 6, scope: !372)
!377 = !DILocation(line: 463, column: 12, scope: !372)
!378 = !DILocation(line: 463, column: 3, scope: !372)
!379 = !DILocation(line: 464, column: 12, scope: !372)
!380 = !DILocation(line: 464, column: 21, scope: !372)
!381 = !DILocation(line: 466, column: 7, scope: !372)
!382 = !DILocation(line: 466, column: 6, scope: !372)
!383 = !DILocation(line: 467, column: 13, scope: !372)
!384 = !DILocation(line: 467, column: 3, scope: !372)
!385 = !DILocation(line: 468, column: 12, scope: !372)
!386 = !DILocation(line: 468, column: 22, scope: !372)
!387 = !DILocation(line: 469, column: 1, scope: !372)
!388 = distinct !DISubprogram(name: "dynevent_create", scope: !1, file: !1, line: 482, type: !62, scopeLine: 483, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!389 = !DILocation(line: 483, scope: !388)
!390 = !DILocation(line: 484, column: 14, scope: !388)
!391 = !DILocation(line: 484, column: 9, scope: !388)
!392 = !DILocation(line: 484, column: 2, scope: !388)
!393 = distinct !DISubprogram(name: "dyn_event_write", scope: !1, file: !1, line: 239, type: !62, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!394 = !DILocation(line: 241, scope: !393)
!395 = !DILocation(line: 242, column: 9, scope: !393)
!396 = !DILocation(line: 242, column: 2, scope: !393)
!397 = distinct !DISubprogram(name: "dyn_event_open", scope: !1, file: !1, line: 222, type: !62, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!398 = !DILocation(line: 223, scope: !397)
!399 = !DILocation(line: 226, column: 8, scope: !397)
!400 = !DILocation(line: 227, column: 6, scope: !397)
!401 = !DILocation(line: 228, column: 10, scope: !397)
!402 = !DILocation(line: 228, column: 3, scope: !397)
!403 = !DILocation(line: 230, column: 13, scope: !397)
!404 = !DILocation(line: 230, column: 20, scope: !397)
!405 = !DILocation(line: 230, column: 35, scope: !397)
!406 = !DILocation(line: 230, column: 39, scope: !397)
!407 = !DILocation(line: 230, column: 45, scope: !397)
!408 = !DILocation(line: 230, column: 53, scope: !397)
!409 = !DILocation(line: 230, column: 6, scope: !397)
!410 = !DILocation(line: 200, column: 2, scope: !253, inlinedAt: !411)
!411 = distinct !DILocation(line: 231, column: 9, scope: !397)
!412 = !DILocation(line: 201, column: 2, scope: !253, inlinedAt: !411)
!413 = !DILocation(line: 204, column: 11, scope: !253, inlinedAt: !411)
!414 = !DILocation(line: 204, column: 16, scope: !253, inlinedAt: !411)
!415 = !DILocation(line: 204, column: 7, scope: !253, inlinedAt: !411)
!416 = !DILocation(line: 0, scope: !253, inlinedAt: !411)
!417 = distinct !{!417, !412, !418}
!418 = !DILocation(line: 208, column: 2, scope: !253, inlinedAt: !411)
!419 = !DILocation(line: 209, column: 2, scope: !253, inlinedAt: !411)
!420 = !DILocation(line: 212, column: 13, scope: !253, inlinedAt: !411)
!421 = !DILocation(line: 212, column: 18, scope: !253, inlinedAt: !411)
!422 = !DILocation(line: 212, column: 9, scope: !253, inlinedAt: !411)
!423 = !DILocation(line: 213, column: 7, scope: !253, inlinedAt: !411)
!424 = !DILocation(line: 214, column: 4, scope: !253, inlinedAt: !411)
!425 = distinct !{!425, !419, !426}
!426 = !DILocation(line: 215, column: 2, scope: !253, inlinedAt: !411)
!427 = !DILocation(line: 217, column: 2, scope: !253, inlinedAt: !411)
!428 = !DILocation(line: 232, column: 11, scope: !397)
!429 = !DILocation(line: 232, column: 7, scope: !397)
!430 = !DILocation(line: 233, column: 11, scope: !397)
!431 = !DILocation(line: 233, column: 4, scope: !397)
!432 = !DILocation(line: 234, column: 2, scope: !397)
!433 = !DILocation(line: 236, column: 18, scope: !397)
!434 = !DILocation(line: 236, column: 9, scope: !397)
!435 = !DILocation(line: 236, column: 2, scope: !397)
!436 = !DILocation(line: 0, scope: !397)
!437 = !DILocation(line: 237, column: 1, scope: !397)
!438 = distinct !DISubprogram(name: "create_dyn_event", scope: !1, file: !1, line: 127, type: !62, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!439 = !DILocation(line: 128, scope: !438)
!440 = !DILocation(line: 132, column: 6, scope: !438)
!441 = !DILocation(line: 132, column: 21, scope: !438)
!442 = !DILocation(line: 132, column: 28, scope: !438)
!443 = !DILocation(line: 132, column: 31, scope: !438)
!444 = !DILocation(line: 132, column: 46, scope: !438)
!445 = !DILocation(line: 133, column: 28, scope: !438)
!446 = !DILocation(line: 133, column: 10, scope: !438)
!447 = !DILocation(line: 133, column: 3, scope: !438)
!448 = !DILocation(line: 135, column: 2, scope: !438)
!449 = !DILocation(line: 136, column: 2, scope: !438)
!450 = !DILocation(line: 141, column: 2, scope: !438)
!451 = !DILocation(line: 142, column: 6, scope: !438)
!452 = !DILocation(line: 137, column: 14, scope: !438)
!453 = !DILocation(line: 137, column: 9, scope: !438)
!454 = !DILocation(line: 138, column: 8, scope: !438)
!455 = !DILocation(line: 138, column: 12, scope: !438)
!456 = !DILocation(line: 138, column: 15, scope: !438)
!457 = !DILocation(line: 138, column: 19, scope: !438)
!458 = !DILocation(line: 138, column: 7, scope: !438)
!459 = !DILocation(line: 140, column: 2, scope: !438)
!460 = distinct !{!460, !449, !459}
!461 = !DILocation(line: 139, column: 4, scope: !438)
!462 = !DILocation(line: 142, column: 10, scope: !438)
!463 = !DILocation(line: 143, column: 7, scope: !438)
!464 = !DILocation(line: 143, column: 3, scope: !438)
!465 = !DILocation(line: 0, scope: !438)
!466 = !DILocation(line: 145, column: 9, scope: !438)
!467 = !DILocation(line: 145, column: 2, scope: !438)
!468 = !DILocation(line: 146, column: 1, scope: !438)
!469 = distinct !DISubprogram(name: "dyn_event_seq_show", scope: !1, file: !1, line: 167, type: !62, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!470 = !DILocation(line: 168, scope: !469)
!471 = !DILocation(line: 171, column: 6, scope: !469)
!472 = !DILocation(line: 171, column: 9, scope: !469)
!473 = !DILocation(line: 171, column: 12, scope: !469)
!474 = !DILocation(line: 171, column: 16, scope: !469)
!475 = !DILocation(line: 172, column: 10, scope: !469)
!476 = !DILocation(line: 172, column: 14, scope: !469)
!477 = !DILocation(line: 172, column: 19, scope: !469)
!478 = !DILocation(line: 172, column: 3, scope: !469)
!479 = !DILocation(line: 174, column: 2, scope: !469)
!480 = !DILocation(line: 0, scope: !469)
!481 = !DILocation(line: 175, column: 1, scope: !469)
