; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_eprobe.c_pt.bc'
source_filename = "../kernel/trace/trace_eprobe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dyn_event_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_fields = type { ptr, %union.anon.75 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, i32, i32, i32, i32 }
%struct.event_trigger_ops = type { ptr, ptr, ptr, ptr }
%struct.event_command = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.fetch_insn = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }
%struct.anon.0 = type { i8, i8, i8 }
%struct.ftrace_event_field = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32 }
%struct.trace_probe_event = type { i32, %struct.trace_event_class, %struct.trace_event_call, %struct.list_head, %struct.list_head, [0 x %struct.trace_uprobe_filter] }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.77, %struct.trace_event, ptr, ptr, %union.anon.79, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.77 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%union.anon.79 = type { ptr }
%struct.trace_uprobe_filter = type { %struct.rwlock_t, i32, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.probe_arg = type { ptr, i8, i32, i32, ptr, ptr, ptr, ptr }
%struct.trace_eprobe = type { ptr, ptr, ptr, %struct.dyn_event, %struct.trace_probe }
%struct.dyn_event = type { %struct.list_head, ptr }
%struct.trace_probe = type { %struct.list_head, ptr, i32, i32, [0 x %struct.probe_arg] }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.event_trigger_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, %struct.list_head, ptr }
%struct.eprobe_data = type { ptr, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.eprobe_trace_entry_head = type { %struct.trace_entry }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.fetch_type = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }

@_kbl_addr_process_fetch_insn = internal global i32 ptrtoint (ptr @process_fetch_insn to i32), section "_kprobe_blacklist", align 4
@__initcall__kmod_trace_eprobe__271_951_trace_events_eprobe_init_early1 = internal global ptr @trace_events_eprobe_init_early, section ".initcall1.init", align 4
@eprobe_dyn_event_ops = internal global { %struct.dyn_event_operations, [36 x i8] } { %struct.dyn_event_operations { %struct.list_head zeroinitializer, ptr @eprobe_dyn_event_create, ptr @eprobe_dyn_event_show, ptr @eprobe_dyn_event_is_busy, ptr @eprobe_dyn_event_release, ptr @eprobe_dyn_event_match }, [36 x i8] zeroinitializer }, align 32
@trace_events_eprobe_init_early._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014Could not register eprobe_dyn_event_ops\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"trace_events_eprobe_init_early\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"kernel/trace/trace_eprobe.c\00", [36 x i8] zeroinitializer }, align 32
@trace_events_eprobe_init_early._entry_ptr = internal global ptr @trace_events_eprobe_init_early._entry, section ".printk_index", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eprobes\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"event_probe\00", [20 x i8] zeroinitializer }, align 32
@event_mutex = external dso_local global %struct.mutex, align 4
@__trace_eprobe_create.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@ftrace_events = external dso_local global %struct.list_head, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@eprobe_funcs = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @print_eprobe_event, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_eprobe_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s: (\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%s\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %s=\00", [27 x i8] zeroinitializer }, align 32
@eprobe_fields_array = internal global { <{ { ptr, { ptr, [16 x i8] } }, %struct.trace_event_fields }>, [48 x i8] } { <{ { ptr, { ptr, [16 x i8] } }, %struct.trace_event_fields }> <{ { ptr, { ptr, [16 x i8] } } { ptr inttoptr (i32 -1 to ptr), { ptr, [16 x i8] } { ptr @eprobe_event_define_fields, [16 x i8] undef } }, %struct.trace_event_fields zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@eprobe_event_define_fields.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@enable_trace_eprobe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@eprobe_trigger_ops = internal global { %struct.event_trigger_ops, [16 x i8] } { %struct.event_trigger_ops { ptr @eprobe_trigger_func, ptr @eprobe_trigger_init, ptr @eprobe_trigger_free, ptr @eprobe_trigger_print }, [16 x i8] zeroinitializer }, align 32
@event_trigger_cmd = internal global { %struct.event_command, [52 x i8] } { %struct.event_command { %struct.list_head zeroinitializer, ptr @.str.10, i32 64, i32 2, ptr @eprobe_trigger_cmd_parse, ptr @eprobe_trigger_reg_func, ptr @eprobe_trigger_unreg_func, ptr null, ptr null, ptr @eprobe_trigger_get_ops }, [52 x i8] zeroinitializer }, align 32
@__eprobe_trace_func.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eprobe\00", [25 x i8] zeroinitializer }, align 32
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@disable_trace_eprobe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kernel/trace/trace_dynevent.h\00", [34 x i8] zeroinitializer }, align 32
@dyn_event_list = external dso_local global %struct.list_head, align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"e:%s/%s\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %s.%s\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %s=%s\00", [25 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.15 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.16 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [20 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.27 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.28 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.29 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.33 = internal global [22 x i64] zeroinitializer
@__llvm_gcov_ctr.34 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.35 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.37 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.38 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.39 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.40 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.41 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.42 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.43 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.44 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.45 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.46 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.47 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.48 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.49 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.50 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.51 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.52 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.53 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.54 = internal global [27 x i64] zeroinitializer
@__llvm_gcov_ctr.55 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.56 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.57 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.58 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.59 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.60 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.61 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.62 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.63 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.64 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.65 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.66 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.67 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.68 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.69 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.70 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.71 = internal global [13 x i64] zeroinitializer
@__llvm_gcov_ctr.72 = internal global [11 x i64] zeroinitializer
@__llvm_gcov_ctr.73 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.74 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.75 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.76 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.77 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.78 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.79 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.80 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.81 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.82 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.83 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.84 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.85 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.86 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.87 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.88 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.89 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.90 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.91 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.92 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.93 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.94 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.95 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.96 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.97 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.98 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.99 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.100 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.101 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.102 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.103 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.104 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.105 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.106 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.107 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.108 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.109 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.110 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.111 = internal global [1 x i64] zeroinitializer
@0 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_eprobe.gcda\00", [32 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [98 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 -33567190, i32 1923271580 }, %emit_function_args_ty { i32 1, i32 153026619, i32 1923271580 }, %emit_function_args_ty { i32 2, i32 -852214858, i32 1923271580 }, %emit_function_args_ty { i32 3, i32 1738962361, i32 1923271580 }, %emit_function_args_ty { i32 4, i32 -573564864, i32 1923271580 }, %emit_function_args_ty { i32 5, i32 -1582551344, i32 1923271580 }, %emit_function_args_ty { i32 6, i32 -1852443767, i32 1923271580 }, %emit_function_args_ty { i32 7, i32 -1054950066, i32 1923271580 }, %emit_function_args_ty { i32 8, i32 2074721563, i32 1923271580 }, %emit_function_args_ty { i32 9, i32 613444267, i32 1923271580 }, %emit_function_args_ty { i32 10, i32 123283659, i32 1923271580 }, %emit_function_args_ty { i32 11, i32 -686296810, i32 1923271580 }, %emit_function_args_ty { i32 12, i32 -171752578, i32 1923271580 }, %emit_function_args_ty { i32 13, i32 236810036, i32 1923271580 }, %emit_function_args_ty { i32 14, i32 -1806777587, i32 1923271580 }, %emit_function_args_ty { i32 15, i32 677077099, i32 1923271580 }, %emit_function_args_ty { i32 16, i32 -317831385, i32 1923271580 }, %emit_function_args_ty { i32 17, i32 -1773928987, i32 1923271580 }, %emit_function_args_ty { i32 18, i32 -1812692133, i32 1923271580 }, %emit_function_args_ty { i32 19, i32 -565564147, i32 1923271580 }, %emit_function_args_ty { i32 20, i32 2113903490, i32 1923271580 }, %emit_function_args_ty { i32 21, i32 -1901892572, i32 1923271580 }, %emit_function_args_ty { i32 22, i32 -1774797572, i32 1923271580 }, %emit_function_args_ty { i32 23, i32 -1037935138, i32 1923271580 }, %emit_function_args_ty { i32 24, i32 -10115036, i32 1923271580 }, %emit_function_args_ty { i32 25, i32 1781672997, i32 1923271580 }, %emit_function_args_ty { i32 26, i32 1319982215, i32 1923271580 }, %emit_function_args_ty { i32 27, i32 1060054691, i32 1923271580 }, %emit_function_args_ty { i32 28, i32 714452822, i32 1923271580 }, %emit_function_args_ty { i32 29, i32 -1024901086, i32 1923271580 }, %emit_function_args_ty { i32 30, i32 -923041819, i32 1923271580 }, %emit_function_args_ty { i32 31, i32 -567024349, i32 1923271580 }, %emit_function_args_ty { i32 32, i32 -207085681, i32 1923271580 }, %emit_function_args_ty { i32 33, i32 -1159899074, i32 1923271580 }, %emit_function_args_ty { i32 34, i32 436087400, i32 1923271580 }, %emit_function_args_ty { i32 35, i32 105093095, i32 1923271580 }, %emit_function_args_ty { i32 36, i32 -968807974, i32 1923271580 }, %emit_function_args_ty { i32 37, i32 -1679351620, i32 1923271580 }, %emit_function_args_ty { i32 38, i32 -400554785, i32 1923271580 }, %emit_function_args_ty { i32 39, i32 -1782918348, i32 1923271580 }, %emit_function_args_ty { i32 40, i32 795548855, i32 1923271580 }, %emit_function_args_ty { i32 41, i32 727036892, i32 1923271580 }, %emit_function_args_ty { i32 42, i32 1841983822, i32 1923271580 }, %emit_function_args_ty { i32 43, i32 1624494247, i32 1923271580 }, %emit_function_args_ty { i32 44, i32 -963894156, i32 1923271580 }, %emit_function_args_ty { i32 45, i32 1473378369, i32 1923271580 }, %emit_function_args_ty { i32 46, i32 -20435385, i32 1923271580 }, %emit_function_args_ty { i32 47, i32 1018668597, i32 1923271580 }, %emit_function_args_ty { i32 48, i32 1757908631, i32 1923271580 }, %emit_function_args_ty { i32 49, i32 2092244167, i32 1923271580 }, %emit_function_args_ty { i32 50, i32 174772300, i32 1923271580 }, %emit_function_args_ty { i32 51, i32 1983599169, i32 1923271580 }, %emit_function_args_ty { i32 52, i32 1957978722, i32 1923271580 }, %emit_function_args_ty { i32 53, i32 -443816403, i32 1923271580 }, %emit_function_args_ty { i32 54, i32 -1215624999, i32 1923271580 }, %emit_function_args_ty { i32 55, i32 -959788305, i32 1923271580 }, %emit_function_args_ty { i32 56, i32 921840851, i32 1923271580 }, %emit_function_args_ty { i32 57, i32 1966770364, i32 1923271580 }, %emit_function_args_ty { i32 58, i32 1930799548, i32 1923271580 }, %emit_function_args_ty { i32 59, i32 1392377819, i32 1923271580 }, %emit_function_args_ty { i32 60, i32 -2055431399, i32 1923271580 }, %emit_function_args_ty { i32 61, i32 -1856728879, i32 1923271580 }, %emit_function_args_ty { i32 62, i32 -1173772019, i32 1923271580 }, %emit_function_args_ty { i32 63, i32 270015218, i32 1923271580 }, %emit_function_args_ty { i32 64, i32 997484024, i32 1923271580 }, %emit_function_args_ty { i32 65, i32 -449730459, i32 1923271580 }, %emit_function_args_ty { i32 66, i32 1350351146, i32 1923271580 }, %emit_function_args_ty { i32 67, i32 -2011736816, i32 1923271580 }, %emit_function_args_ty { i32 68, i32 -1260238294, i32 1923271580 }, %emit_function_args_ty { i32 69, i32 -2021408252, i32 1923271580 }, %emit_function_args_ty { i32 70, i32 1198000821, i32 1923271580 }, %emit_function_args_ty { i32 71, i32 -1081634192, i32 1923271580 }, %emit_function_args_ty { i32 72, i32 361176900, i32 1923271580 }, %emit_function_args_ty { i32 73, i32 858041679, i32 1923271580 }, %emit_function_args_ty { i32 74, i32 -778590417, i32 1923271580 }, %emit_function_args_ty { i32 75, i32 -676942071, i32 1923271580 }, %emit_function_args_ty { i32 76, i32 1436616980, i32 1923271580 }, %emit_function_args_ty { i32 77, i32 106773377, i32 1923271580 }, %emit_function_args_ty { i32 78, i32 -1106982441, i32 1923271580 }, %emit_function_args_ty { i32 79, i32 -414221281, i32 1923271580 }, %emit_function_args_ty { i32 80, i32 1034924534, i32 1923271580 }, %emit_function_args_ty { i32 81, i32 -373966809, i32 1923271580 }, %emit_function_args_ty { i32 82, i32 1867579396, i32 1923271580 }, %emit_function_args_ty { i32 83, i32 -1342645549, i32 1923271580 }, %emit_function_args_ty { i32 84, i32 -1696498604, i32 1923271580 }, %emit_function_args_ty { i32 85, i32 1698397113, i32 1923271580 }, %emit_function_args_ty { i32 86, i32 -986448294, i32 1923271580 }, %emit_function_args_ty { i32 87, i32 181361786, i32 1923271580 }, %emit_function_args_ty { i32 88, i32 -1520414420, i32 1923271580 }, %emit_function_args_ty { i32 89, i32 -481620889, i32 1923271580 }, %emit_function_args_ty { i32 90, i32 1112388048, i32 1923271580 }, %emit_function_args_ty { i32 91, i32 -1972022590, i32 1923271580 }, %emit_function_args_ty { i32 92, i32 1062195387, i32 1923271580 }, %emit_function_args_ty { i32 93, i32 -1321714785, i32 1923271580 }, %emit_function_args_ty { i32 94, i32 201613120, i32 1923271580 }, %emit_function_args_ty { i32 95, i32 1902011389, i32 1923271580 }, %emit_function_args_ty { i32 96, i32 1991428617, i32 1923271580 }, %emit_function_args_ty { i32 97, i32 -1708490279, i32 1923271580 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [98 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.15 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.16 }, %emit_arcs_args_ty { i32 20, ptr @__llvm_gcov_ctr.17 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.18 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.20 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.21 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.22 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.23 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.24 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.25 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.26 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.27 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.28 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.29 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.30 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.31 }, %emit_arcs_args_ty { i32 10, ptr @__llvm_gcov_ctr.32 }, %emit_arcs_args_ty { i32 22, ptr @__llvm_gcov_ctr.33 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.34 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.35 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.36 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.37 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.38 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.39 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.40 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.41 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.42 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.43 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.44 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.45 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.46 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.47 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.48 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.49 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.50 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.51 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.52 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.53 }, %emit_arcs_args_ty { i32 27, ptr @__llvm_gcov_ctr.54 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.55 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.56 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.57 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.58 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.59 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.60 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.61 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.62 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.63 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.64 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.65 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.66 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.67 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.68 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.69 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.70 }, %emit_arcs_args_ty { i32 13, ptr @__llvm_gcov_ctr.71 }, %emit_arcs_args_ty { i32 11, ptr @__llvm_gcov_ctr.72 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.73 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.74 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.75 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.76 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.77 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.78 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.79 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.80 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.81 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.82 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.83 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.84 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.85 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.86 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.87 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.88 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.89 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.90 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.91 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.92 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.93 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.94 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.95 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.96 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.97 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.98 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.99 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.100 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.101 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.102 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.103 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.104 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.105 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.106 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.107 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.108 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.109 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.110 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.111 }]
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 15, i64 16]
@__sancov_gen_cov_switch_values.113 = internal global [7 x i64] [i64 5, i64 32, i64 12, i64 13, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.114 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.115 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.118 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 15, i64 16]
@__sancov_gen_cov_switch_values.121 = internal global [7 x i64] [i64 5, i64 32, i64 12, i64 13, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.122 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.123 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.124 = private unnamed_addr constant [21 x i8] c"eprobe_dyn_event_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 176, i32 36 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 947, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 855, i32 37 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 867, i32 23 }
@___asan_gen_.145 = private unnamed_addr constant [13 x i8] c"eprobe_funcs\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 646, i32 37 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 283, i32 22 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 288, i32 23 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 291, i32 23 }
@___asan_gen_.158 = private unnamed_addr constant [35 x i8] c"../kernel/trace/trace_probe_tmpl.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 226, i32 23 }
@___asan_gen_.160 = private unnamed_addr constant [20 x i8] c"eprobe_fields_array\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 255, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant [19 x i8] c"eprobe_trigger_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 543, i32 33 }
@___asan_gen_.166 = private unnamed_addr constant [18 x i8] c"event_trigger_cmd\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 577, i32 29 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 578, i32 12 }
@___asan_gen_.173 = private unnamed_addr constant [33 x i8] c"../kernel/trace/trace_dynevent.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 82, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 69, i32 16 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 71, i32 16 }
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [31 x i8] c"../kernel/trace/trace_eprobe.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 74, i32 17 }
@___asan_gen_.184 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @__initcall__kmod_trace_eprobe__271_951_trace_events_eprobe_init_early1, ptr @_kbl_addr_process_fetch_insn, ptr @trace_events_eprobe_init_early._entry, ptr @trace_events_eprobe_init_early._entry_ptr, ptr @eprobe_dyn_event_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @eprobe_funcs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @eprobe_fields_array, ptr @eprobe_trigger_ops, ptr @event_trigger_cmd, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@1 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eprobe_dyn_event_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_events_eprobe_init_early._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eprobe_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eprobe_fields_array to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eprobe_trigger_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_trigger_cmd to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @process_fetch_insn(ptr nocapture noundef readonly %code, ptr nocapture noundef readonly %rec, ptr noundef %dest, ptr noundef %base) #0 align 64 !dbg !66 {
entry:
  %c.i.i = alloca i8, align 1
  %val.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16, !dbg !69
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr, align 8
  %call = tail call fastcc i32 @get_event_field(ptr noundef %code, ptr noundef %rec), !dbg !70
  %add.ptr = getelementptr %struct.fetch_insn, ptr %code, i32 1, !dbg !71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i)
  %1 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %val.addr.i, align 4
  br label %stage2.i, !dbg !72

stage2.i:                                         ; preds = %if.end79.i, %entry
  %code.addr.0.i = phi ptr [ %add.ptr, %entry ], [ %incdec.ptr73.i, %if.end79.i ]
  %dest.addr.0.i = phi ptr [ %dest, %entry ], [ %dest.addr.2.i, %if.end79.i ]
  %total.0.i = phi i32 [ 0, %entry ], [ %add60.i, %if.end79.i ], !dbg !76
  %ret.0.i = phi i32 [ 0, %entry ], [ %ret.5.i, %if.end79.i ], !dbg !76
  %i.0.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end79.i ], !dbg !76
  %loc.0.i = phi i32 [ 0, %entry ], [ %loc.3.i, %if.end79.i ], !dbg !77
  %lval.0.i = phi i32 [ %call, %entry ], [ %lval.1.i, %if.end79.i ], !dbg !78
  br label %do.body.i, !dbg !79

do.body.i:                                        ; preds = %if.end10.i, %stage2.i
  %code.addr.1.i = phi ptr [ %code.addr.0.i, %stage2.i ], [ %incdec.ptr.i, %if.end10.i ]
  %ret.1.i = phi i32 [ %ret.0.i, %stage2.i ], [ 0, %if.end10.i ], !dbg !76
  %lval.1.i = phi i32 [ %lval.0.i, %stage2.i ], [ %lval.2.i, %if.end10.i ], !dbg !76
  %2 = ptrtoint ptr %code.addr.1.i to i32, !dbg !80
  call void @__asan_load4_noabort(i32 %2), !dbg !80
  %3 = load i32, ptr %code.addr.1.i, align 4, !dbg !80
  %4 = zext i32 %3 to i64, !dbg !81
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values), !dbg !81
  switch i32 %3, label %if.else7.i [
    i32 10, label %if.then.i
    i32 11, label %if.then3.i
  ], !dbg !81

if.then.i:                                        ; preds = %do.body.i
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.17, align 16, !dbg !82
  %5 = add i64 %gcov_ctr.i, 1, !dbg !82
  store i64 %5, ptr @__llvm_gcov_ctr.17, align 16, !dbg !82
  %6 = ptrtoint ptr %val.addr.i to i32, !dbg !82
  call void @__asan_load4_noabort(i32 %6), !dbg !82
  %7 = load i32, ptr %val.addr.i, align 4, !dbg !82
  %8 = inttoptr i32 %7 to ptr, !dbg !83
  %offset.i = getelementptr inbounds %struct.fetch_insn, ptr %code.addr.1.i, i32 0, i32 1, i32 0, i32 1, !dbg !84
  %9 = ptrtoint ptr %offset.i to i32, !dbg !84
  call void @__asan_load4_noabort(i32 %9), !dbg !84
  %10 = load i32, ptr %offset.i, align 4, !dbg !84
  %add.ptr.i = getelementptr i8, ptr %8, i32 %10, !dbg !85
  %cmp.i.i = icmp ult ptr %add.ptr.i, inttoptr (i32 -1226833920 to ptr), !dbg !86
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !89

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !90
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.18, align 8, !dbg !90
  %11 = add i64 %gcov_ctr.i.i, 1, !dbg !90
  store i64 %11, ptr @__llvm_gcov_ctr.18, align 8, !dbg !90
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %12 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.19, align 8
  %call.i.i.i = call i32 @copy_from_user_nofault(ptr noundef nonnull %val.addr.i, ptr noundef %add.ptr.i, i32 noundef 4) #17, !dbg !91
  br label %if.end8.i, !dbg !94

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !95
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !95
  %13 = add i64 %gcov_ctr2.i.i, 1, !dbg !95
  store i64 %13, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !95
  %call1.i.i = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %val.addr.i, ptr noundef %add.ptr.i, i32 noundef 4) #17, !dbg !96
  br label %if.end8.i, !dbg !97

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !98
  %14 = ptrtoint ptr %val.addr.i to i32, !dbg !98
  call void @__asan_load4_noabort(i32 %14), !dbg !98
  %15 = load i32, ptr %val.addr.i, align 4, !dbg !98
  %16 = inttoptr i32 %15 to ptr, !dbg !99
  %offset4.i = getelementptr inbounds %struct.fetch_insn, ptr %code.addr.1.i, i32 0, i32 1, i32 0, i32 1, !dbg !100
  %17 = ptrtoint ptr %offset4.i to i32, !dbg !100
  call void @__asan_load4_noabort(i32 %17), !dbg !100
  %18 = load i32, ptr %offset4.i, align 4, !dbg !100
  %add.ptr5.i = getelementptr i8, ptr %16, i32 %18, !dbg !101
  %gcov_ctr.i161.i = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %19 = add i64 %gcov_ctr.i161.i, 1
  store i64 %19, ptr @__llvm_gcov_ctr.19, align 8
  %call.i.i = call i32 @copy_from_user_nofault(ptr noundef nonnull %val.addr.i, ptr noundef %add.ptr5.i, i32 noundef 4) #17, !dbg !102
  %gcov_ctr91.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 2), align 16
  %20 = add i64 %gcov_ctr91.i, 1
  store i64 %20, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 2), align 16
  br label %if.end8.i

if.else7.i:                                       ; preds = %do.body.i
  %gcov_ctr90.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 1), align 8, !dbg !104
  %21 = add i64 %gcov_ctr90.i, 1, !dbg !104
  store i64 %21, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 1), align 8, !dbg !104
  %offset48.i = getelementptr inbounds %struct.fetch_insn, ptr %code.addr.1.i, i32 0, i32 1, i32 0, i32 1
  %22 = getelementptr inbounds %struct.fetch_insn, ptr %code.addr.1.i, i32 0, i32 1
  %incdec.ptr51.i = getelementptr %struct.fetch_insn, ptr %code.addr.1.i, i32 1
  %23 = getelementptr %struct.fetch_insn, ptr %code.addr.1.i, i32 1, i32 1
  %lshift26.i.i = getelementptr inbounds %struct.anon.0, ptr %23, i32 0, i32 1
  %rshift29.i.i = getelementptr inbounds %struct.anon.0, ptr %23, i32 0, i32 2
  %incdec.ptr55.i = getelementptr %struct.fetch_insn, ptr %code.addr.1.i, i32 2
  br label %stage3.i, !dbg !105

if.end8.i:                                        ; preds = %if.then3.i, %if.end.i.i, %if.then.i.i
  %ret.2.i = phi i32 [ %call.i.i, %if.then3.i ], [ %call.i.i.i, %if.then.i.i ], [ %call1.i.i, %if.end.i.i ], !dbg !76
  %lval.2.i = phi i32 [ %15, %if.then3.i ], [ %7, %if.then.i.i ], [ %7, %if.end.i.i ], !dbg !76
  %tobool.not.i = icmp eq i32 %ret.2.i, 0, !dbg !106
  br i1 %tobool.not.i, label %if.end10.i, label %if.then9.i, !dbg !106

if.then9.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !107
  %gcov_ctr92.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 3), align 8, !dbg !107
  %24 = add i64 %gcov_ctr92.i, 1, !dbg !107
  store i64 %24, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 3), align 8, !dbg !107
  br label %process_fetch_insn_bottom.exit, !dbg !108

if.end10.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !109
  %incdec.ptr.i = getelementptr %struct.fetch_insn, ptr %code.addr.1.i, i32 1, !dbg !109
  br label %do.body.i, !dbg !110, !llvm.loop !111

stage3.i:                                         ; preds = %if.then67.i, %if.else7.i
  %dest.addr.1.i = phi ptr [ %dest.addr.0.i, %if.else7.i ], [ %add.ptr69.i, %if.then67.i ]
  %total.1.i = phi i32 [ %total.0.i, %if.else7.i ], [ %add60.i, %if.then67.i ], !dbg !76
  %ret.3.i = phi i32 [ %ret.1.i, %if.else7.i ], [ %ret.5.i, %if.then67.i ], !dbg !76
  %i.1.i = phi i32 [ %i.0.i, %if.else7.i ], [ %inc.i, %if.then67.i ], !dbg !76
  %loc.1.i = phi i32 [ %loc.0.i, %if.else7.i ], [ %loc.3.i, %if.then67.i ], !dbg !77
  %tobool11.not.i = icmp eq ptr %dest.addr.1.i, null, !dbg !113
  %25 = ptrtoint ptr %code.addr.1.i to i32, !dbg !76
  call void @__asan_load4_noabort(i32 %25), !dbg !76
  %26 = load i32, ptr %code.addr.1.i, align 4, !dbg !76
  br i1 %tobool11.not.i, label %if.then15.i, label %if.end32.i, !dbg !113, !prof !114

if.then15.i:                                      ; preds = %stage3.i
  %27 = zext i32 %26 to i64, !dbg !115
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.112), !dbg !115
  switch i32 %26, label %if.else31.i [
    i32 15, label %if.then18.i
    i32 16, label %if.then25.i
  ], !dbg !115

if.then18.i:                                      ; preds = %if.then15.i
  %gcov_ctr93.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 4), align 16, !dbg !116
  %28 = add i64 %gcov_ctr93.i, 1, !dbg !116
  store i64 %28, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 4), align 16, !dbg !116
  %29 = ptrtoint ptr %val.addr.i to i32, !dbg !116
  call void @__asan_load4_noabort(i32 %29), !dbg !116
  %30 = load i32, ptr %val.addr.i, align 4, !dbg !116
  %31 = ptrtoint ptr %offset48.i to i32, !dbg !117
  call void @__asan_load4_noabort(i32 %31), !dbg !117
  %32 = load i32, ptr %offset48.i, align 4, !dbg !117
  %add.i = add i32 %32, %30, !dbg !118
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i.i) #17, !dbg !119
  %33 = ptrtoint ptr %c.i.i to i32, !dbg !122
  call void @__asan_store1_noabort(i32 %33), !dbg !122
  store i8 -1, ptr %c.i.i, align 1, !dbg !122, !annotation !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833920, i32 %add.i), !dbg !124
  %cmp.i162.i = icmp ult i32 %add.i, -1226833920, !dbg !124
  br i1 %cmp.i162.i, label %if.then.i166.i, label %do.body.preheader.i.i, !dbg !125

do.body.preheader.i.i:                            ; preds = %if.then18.i
  %34 = inttoptr i32 %add.i to ptr
  br label %do.body.i.i, !dbg !126

if.then.i166.i:                                   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !127
  %gcov_ctr.i163.i = load i64, ptr @__llvm_gcov_ctr.20, align 16, !dbg !127
  %35 = add i64 %gcov_ctr.i163.i, 1, !dbg !127
  store i64 %35, ptr @__llvm_gcov_ctr.20, align 16, !dbg !127
  %gcov_ctr.i.i164.i = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %36 = add i64 %gcov_ctr.i.i164.i, 1
  store i64 %36, ptr @__llvm_gcov_ctr.21, align 8
  %37 = inttoptr i32 %add.i to ptr, !dbg !128
  %call.i.i165.i = call i32 @strnlen_user_nofault(ptr noundef %37, i32 noundef 4096) #17, !dbg !131
  br label %fetch_store_strlen.exit.i, !dbg !132

do.body.i.i:                                      ; preds = %land.rhs.i.i.do.body.i.i_crit_edge, %do.body.preheader.i.i
  %len.0.i.i = phi i32 [ %inc.i.i, %land.rhs.i.i.do.body.i.i_crit_edge ], [ 0, %do.body.preheader.i.i ], !dbg !133
  %gcov_ctr10.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 1), align 8, !dbg !134
  %38 = add i64 %gcov_ctr10.i.i, 1, !dbg !134
  store i64 %38, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 1), align 8, !dbg !134
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %len.0.i.i, !dbg !135
  %call1.i167.i = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %c.i.i, ptr noundef %add.ptr.i.i, i32 noundef 1) #17, !dbg !136
  %inc.i.i = add nuw nsw i32 %len.0.i.i, 1, !dbg !137
  %39 = ptrtoint ptr %c.i.i to i32, !dbg !138
  call void @__asan_load1_noabort(i32 %39), !dbg !138
  %40 = load i8, ptr %c.i.i, align 1, !dbg !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40), !dbg !138
  %tobool.not.i.i = icmp eq i8 %40, 0, !dbg !138
  br i1 %tobool.not.i.i, label %do.body.i.i.do.end.i.i_crit_edge, label %land.lhs.true.i.i, !dbg !139

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !139
  br label %do.end.i.i, !dbg !139

land.lhs.true.i.i:                                ; preds = %do.body.i.i
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !140
  %41 = add i64 %gcov_ctr11.i.i, 1, !dbg !140
  store i64 %41, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i167.i), !dbg !141
  %cmp2.i.i = icmp eq i32 %call1.i167.i, 0, !dbg !141
  br i1 %cmp2.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, !dbg !142

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !142
  br label %do.end.i.i, !dbg !142

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %gcov_ctr12.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 3), align 8, !dbg !143
  %42 = add i64 %gcov_ctr12.i.i, 1, !dbg !143
  store i64 %42, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 3), align 8, !dbg !143
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 4096, !dbg !144
  br i1 %exitcond.not.i.i, label %land.rhs.i.i.cond.false.i.i_crit_edge, label %land.rhs.i.i.do.body.i.i_crit_edge, !dbg !145, !llvm.loop !146

land.rhs.i.i.do.body.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !145
  br label %do.body.i.i, !dbg !145

land.rhs.i.i.cond.false.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !145
  br label %cond.false.i.i, !dbg !145

do.end.i.i:                                       ; preds = %land.lhs.true.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i167.i), !dbg !148
  %cmp6.i.i = icmp slt i32 %call1.i167.i, 0, !dbg !148
  br i1 %cmp6.i.i, label %cond.true.i.i, label %do.end.i.i.cond.false.i.i_crit_edge, !dbg !149

do.end.i.i.cond.false.i.i_crit_edge:              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !149
  br label %cond.false.i.i, !dbg !149

cond.true.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !150
  %gcov_ctr13.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 4), align 16, !dbg !150
  %43 = add i64 %gcov_ctr13.i.i, 1, !dbg !150
  store i64 %43, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 4), align 16, !dbg !150
  br label %fetch_store_strlen.exit.i, !dbg !149

cond.false.i.i:                                   ; preds = %do.end.i.i.cond.false.i.i_crit_edge, %land.rhs.i.i.cond.false.i.i_crit_edge
  %inc28.i.i = phi i32 [ %inc.i.i, %do.end.i.i.cond.false.i.i_crit_edge ], [ 4096, %land.rhs.i.i.cond.false.i.i_crit_edge ]
  %gcov_ctr14.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 5), align 8, !dbg !151
  %44 = add i64 %gcov_ctr14.i.i, 1, !dbg !151
  store i64 %44, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 5), align 8, !dbg !151
  br label %fetch_store_strlen.exit.i, !dbg !149

fetch_store_strlen.exit.i:                        ; preds = %cond.false.i.i, %cond.true.i.i, %if.then.i166.i
  %retval.0.i168.i = phi i32 [ %call.i.i165.i, %if.then.i166.i ], [ %call1.i167.i, %cond.true.i.i ], [ %inc28.i.i, %cond.false.i.i ], !dbg !133
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i.i) #17, !dbg !152
  br label %arraythread-pre-split.i, !dbg !153

if.then25.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !154
  %gcov_ctr94.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 5), align 8, !dbg !154
  %45 = add i64 %gcov_ctr94.i, 1, !dbg !154
  store i64 %45, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 5), align 8, !dbg !154
  %46 = ptrtoint ptr %val.addr.i to i32, !dbg !154
  call void @__asan_load4_noabort(i32 %46), !dbg !154
  %47 = load i32, ptr %val.addr.i, align 4, !dbg !154
  %48 = ptrtoint ptr %offset48.i to i32, !dbg !155
  call void @__asan_load4_noabort(i32 %48), !dbg !155
  %49 = load i32, ptr %offset48.i, align 4, !dbg !155
  %add27.i = add i32 %49, %47, !dbg !156
  %gcov_ctr.i169.i = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %50 = add i64 %gcov_ctr.i169.i, 1
  store i64 %50, ptr @__llvm_gcov_ctr.21, align 8
  %51 = inttoptr i32 %add27.i to ptr, !dbg !157
  %call.i170.i = call i32 @strnlen_user_nofault(ptr noundef %51, i32 noundef 4096) #17, !dbg !159
  %add29.i = add i32 %call.i170.i, %ret.3.i, !dbg !160
  br label %arraythread-pre-split.i, !dbg !161

if.else31.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !162
  %gcov_ctr95.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 6), align 16, !dbg !162
  %52 = add i64 %gcov_ctr95.i, 1, !dbg !162
  store i64 %52, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 6), align 16, !dbg !162
  br label %process_fetch_insn_bottom.exit, !dbg !162

if.end32.i:                                       ; preds = %stage3.i
  %53 = zext i32 %26 to i64, !dbg !163
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.113), !dbg !163
  switch i32 %26, label %sw.default.i [
    i32 12, label %sw.bb.i
    i32 13, label %sw.bb34.i
    i32 14, label %sw.bb38.i
    i32 15, label %sw.bb43.i
    i32 16, label %sw.bb47.i
  ], !dbg !163

sw.bb.i:                                          ; preds = %if.end32.i
  %gcov_ctr96.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 7), align 8, !dbg !164
  %54 = add i64 %gcov_ctr96.i, 1, !dbg !164
  store i64 %54, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 7), align 8, !dbg !164
  %55 = ptrtoint ptr %val.addr.i to i32, !dbg !164
  call void @__asan_load4_noabort(i32 %55), !dbg !164
  %56 = load i32, ptr %val.addr.i, align 4, !dbg !164
  %57 = ptrtoint ptr %22 to i32, !dbg !165
  call void @__asan_load4_noabort(i32 %57), !dbg !165
  %58 = load i32, ptr %22, align 4, !dbg !165
  %59 = zext i32 %58 to i64, !dbg !168
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.114), !dbg !168
  switch i32 %58, label %sw.default.i.i [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb1.i.i
    i32 4, label %sw.bb3.i.i
    i32 8, label %sw.bb4.i.i
  ], !dbg !168

sw.bb.i.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !169
  %gcov_ctr.i171.i = load i64, ptr @__llvm_gcov_ctr.22, align 16, !dbg !169
  %60 = add i64 %gcov_ctr.i171.i, 1, !dbg !169
  store i64 %60, ptr @__llvm_gcov_ctr.22, align 16, !dbg !169
  %conv.i.i = trunc i32 %56 to i8, !dbg !170
  %61 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !171
  call void @__asan_store1_noabort(i32 %61), !dbg !171
  store i8 %conv.i.i, ptr %dest.addr.1.i, align 1, !dbg !171
  br label %sw.epilog.i, !dbg !172

sw.bb1.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !173
  %gcov_ctr6.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 1), align 8, !dbg !173
  %62 = add i64 %gcov_ctr6.i.i, 1, !dbg !173
  store i64 %62, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 1), align 8, !dbg !173
  %conv2.i.i = trunc i32 %56 to i16, !dbg !174
  %63 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !175
  call void @__asan_store2_noabort(i32 %63), !dbg !175
  store i16 %conv2.i.i, ptr %dest.addr.1.i, align 2, !dbg !175
  br label %sw.epilog.i, !dbg !176

sw.bb3.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !177
  %gcov_ctr7.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 2), align 16, !dbg !177
  %64 = add i64 %gcov_ctr7.i.i, 1, !dbg !177
  store i64 %64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 2), align 16, !dbg !177
  %65 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !178
  call void @__asan_store4_noabort(i32 %65), !dbg !178
  store i32 %56, ptr %dest.addr.1.i, align 4, !dbg !178
  br label %sw.epilog.i, !dbg !179

sw.bb4.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !180
  %gcov_ctr8.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 3), align 8, !dbg !180
  %66 = add i64 %gcov_ctr8.i.i, 1, !dbg !180
  store i64 %66, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 3), align 8, !dbg !180
  %conv5.i.i = zext i32 %56 to i64, !dbg !181
  %67 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !182
  call void @__asan_store8_noabort(i32 %67), !dbg !182
  store i64 %conv5.i.i, ptr %dest.addr.1.i, align 8, !dbg !182
  br label %sw.epilog.i, !dbg !183

sw.default.i.i:                                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !184
  %gcov_ctr9.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 4), align 16, !dbg !184
  %68 = add i64 %gcov_ctr9.i.i, 1, !dbg !184
  store i64 %68, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 4), align 16, !dbg !184
  %69 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !185
  call void @__asan_store4_noabort(i32 %69), !dbg !185
  store i32 %56, ptr %dest.addr.1.i, align 4, !dbg !185
  br label %sw.epilog.i, !dbg !186

sw.bb34.i:                                        ; preds = %if.end32.i
  %gcov_ctr97.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 8), align 16, !dbg !187
  %70 = add i64 %gcov_ctr97.i, 1, !dbg !187
  store i64 %70, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 8), align 16, !dbg !187
  %71 = ptrtoint ptr %val.addr.i to i32, !dbg !188
  call void @__asan_load4_noabort(i32 %71), !dbg !188
  %72 = load i32, ptr %val.addr.i, align 4, !dbg !188
  %73 = inttoptr i32 %72 to ptr, !dbg !189
  %74 = ptrtoint ptr %offset48.i to i32, !dbg !190
  call void @__asan_load4_noabort(i32 %74), !dbg !190
  %75 = load i32, ptr %offset48.i, align 4, !dbg !190
  %add.ptr36.i = getelementptr i8, ptr %73, i32 %75, !dbg !191
  %76 = ptrtoint ptr %22 to i32, !dbg !192
  call void @__asan_load4_noabort(i32 %76), !dbg !192
  %77 = load i32, ptr %22, align 4, !dbg !192
  %cmp.i172.i = icmp ult ptr %add.ptr36.i, inttoptr (i32 -1226833920 to ptr), !dbg !193
  br i1 %cmp.i172.i, label %if.then.i176.i, label %if.end.i179.i, !dbg !195

if.then.i176.i:                                   ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !196
  %gcov_ctr.i173.i = load i64, ptr @__llvm_gcov_ctr.18, align 8, !dbg !196
  %78 = add i64 %gcov_ctr.i173.i, 1, !dbg !196
  store i64 %78, ptr @__llvm_gcov_ctr.18, align 8, !dbg !196
  %gcov_ctr.i.i174.i = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %79 = add i64 %gcov_ctr.i.i174.i, 1
  store i64 %79, ptr @__llvm_gcov_ctr.19, align 8
  %call.i.i175.i = call i32 @copy_from_user_nofault(ptr noundef nonnull %dest.addr.1.i, ptr noundef %add.ptr36.i, i32 noundef %77) #17, !dbg !197
  br label %sw.epilog.i, !dbg !199

if.end.i179.i:                                    ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !200
  %gcov_ctr2.i177.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !200
  %80 = add i64 %gcov_ctr2.i177.i, 1, !dbg !200
  store i64 %80, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !200
  %call1.i178.i = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %dest.addr.1.i, ptr noundef %add.ptr36.i, i32 noundef %77) #17, !dbg !201
  br label %sw.epilog.i, !dbg !202

sw.bb38.i:                                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !203
  %gcov_ctr98.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 9), align 8, !dbg !203
  %81 = add i64 %gcov_ctr98.i, 1, !dbg !203
  store i64 %81, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 9), align 8, !dbg !203
  %82 = ptrtoint ptr %val.addr.i to i32, !dbg !204
  call void @__asan_load4_noabort(i32 %82), !dbg !204
  %83 = load i32, ptr %val.addr.i, align 4, !dbg !204
  %84 = inttoptr i32 %83 to ptr, !dbg !205
  %85 = ptrtoint ptr %offset48.i to i32, !dbg !206
  call void @__asan_load4_noabort(i32 %85), !dbg !206
  %86 = load i32, ptr %offset48.i, align 4, !dbg !206
  %add.ptr40.i = getelementptr i8, ptr %84, i32 %86, !dbg !207
  %87 = ptrtoint ptr %22 to i32, !dbg !208
  call void @__asan_load4_noabort(i32 %87), !dbg !208
  %88 = load i32, ptr %22, align 4, !dbg !208
  %gcov_ctr.i182.i = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %89 = add i64 %gcov_ctr.i182.i, 1
  store i64 %89, ptr @__llvm_gcov_ctr.19, align 8
  %call.i183.i = call i32 @copy_from_user_nofault(ptr noundef nonnull %dest.addr.1.i, ptr noundef %add.ptr40.i, i32 noundef %88) #17, !dbg !209
  br label %sw.epilog.i, !dbg !211

sw.bb43.i:                                        ; preds = %if.end32.i
  %gcov_ctr99.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 10), align 16, !dbg !212
  %90 = add i64 %gcov_ctr99.i, 1, !dbg !212
  store i64 %90, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 10), align 16, !dbg !212
  %91 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !213
  call void @__asan_load4_noabort(i32 %91), !dbg !213
  %92 = load i32, ptr %dest.addr.1.i, align 4, !dbg !213
  %93 = ptrtoint ptr %val.addr.i to i32, !dbg !214
  call void @__asan_load4_noabort(i32 %93), !dbg !214
  %94 = load i32, ptr %val.addr.i, align 4, !dbg !214
  %95 = ptrtoint ptr %offset48.i to i32, !dbg !215
  call void @__asan_load4_noabort(i32 %95), !dbg !215
  %96 = load i32, ptr %offset48.i, align 4, !dbg !215
  %add45.i = add i32 %96, %94, !dbg !216
  %shr.i.i = lshr i32 %92, 16, !dbg !217
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833920, i32 %add45.i), !dbg !220
  %cmp.i184.i = icmp ult i32 %add45.i, -1226833920, !dbg !220
  br i1 %cmp.i184.i, label %if.then.i186.i, label %if.end.i189.i, !dbg !221

if.then.i186.i:                                   ; preds = %sw.bb43.i
  %gcov_ctr.i185.i = load i64, ptr @__llvm_gcov_ctr.23, align 16, !dbg !222
  %97 = add i64 %gcov_ctr.i185.i, 1, !dbg !222
  store i64 %97, ptr @__llvm_gcov_ctr.23, align 16, !dbg !222
  %98 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !223
  call void @__asan_load4_noabort(i32 %98), !dbg !223
  %99 = load i32, ptr %dest.addr.1.i, align 4, !dbg !223
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %99), !dbg !226
  %tobool.not.i.i.i = icmp ult i32 %99, 65536, !dbg !226
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i, !dbg !226, !prof !114

if.then.i.i.i:                                    ; preds = %if.then.i186.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !227
  %gcov_ctr.i.i187.i = load i64, ptr @__llvm_gcov_ctr.24, align 16, !dbg !227
  %100 = add i64 %gcov_ctr.i.i187.i, 1, !dbg !227
  store i64 %100, ptr @__llvm_gcov_ctr.24, align 16, !dbg !227
  br label %sw.epilog.i, !dbg !227

if.end.i.i.i:                                     ; preds = %if.then.i186.i
  %shr.i.i.i = lshr i32 %99, 16, !dbg !223
  %101 = inttoptr i32 %add45.i to ptr, !dbg !228
  %gcov_ctr10.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), align 8, !dbg !229
  %102 = add i64 %gcov_ctr10.i.i.i, 1, !dbg !229
  store i64 %102, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), align 8, !dbg !229
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %103 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %103, ptr @__llvm_gcov_ctr.27, align 8
  %104 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !230
  call void @__asan_load4_noabort(i32 %104), !dbg !230
  %105 = load i32, ptr %dest.addr.1.i, align 4, !dbg !230
  %and.i.i.i.i = and i32 %105, 65535, !dbg !230
  %add.ptr.i.i.i.i = getelementptr i8, ptr %base, i32 %and.i.i.i.i, !dbg !234
  %call4.i.i.i = call i32 @strncpy_from_user_nofault(ptr noundef %add.ptr.i.i.i.i, ptr noundef %101, i32 noundef %shr.i.i.i) #17, !dbg !235
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i.i.i), !dbg !236
  %cmp.i.i.i = icmp sgt i32 %call4.i.i.i, -1, !dbg !236
  br i1 %cmp.i.i.i, label %if.then5.i.i.i, label %if.end.i.i.i.sw.epilog.i_crit_edge, !dbg !237

if.end.i.i.i.sw.epilog.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !237
  br label %sw.epilog.i, !dbg !237

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !238
  %gcov_ctr11.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 2), align 16, !dbg !238
  %106 = add i64 %gcov_ctr11.i.i.i, 1, !dbg !238
  store i64 %106, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 2), align 16, !dbg !238
  %shl.i.i.i = shl i32 %call4.i.i.i, 16, !dbg !238
  %or.i.i.i = or i32 %shl.i.i.i, %and.i.i.i.i, !dbg !238
  %107 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !239
  call void @__asan_store4_noabort(i32 %107), !dbg !239
  store i32 %or.i.i.i, ptr %dest.addr.1.i, align 4, !dbg !239
  br label %sw.epilog.i, !dbg !240

if.end.i189.i:                                    ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %92), !dbg !241
  %tobool.not.i188.i = icmp ult i32 %92, 65536, !dbg !241
  br i1 %tobool.not.i188.i, label %if.then4.i.i, label %if.end5.i.i, !dbg !241, !prof !114

if.then4.i.i:                                     ; preds = %if.end.i189.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !242
  %gcov_ctr14.i190.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 2), align 16, !dbg !242
  %108 = add i64 %gcov_ctr14.i190.i, 1, !dbg !242
  store i64 %108, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 2), align 16, !dbg !242
  br label %sw.epilog.i, !dbg !242

if.end5.i.i:                                      ; preds = %if.end.i189.i
  %gcov_ctr13.i191.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 1), align 8, !dbg !243
  %109 = add i64 %gcov_ctr13.i191.i, 1, !dbg !243
  store i64 %109, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 1), align 8, !dbg !243
  %gcov_ctr.i27.i.i = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %110 = add i64 %gcov_ctr.i27.i.i, 1
  store i64 %110, ptr @__llvm_gcov_ctr.27, align 8
  %111 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !244
  call void @__asan_load4_noabort(i32 %111), !dbg !244
  %112 = load i32, ptr %dest.addr.1.i, align 4, !dbg !244
  %and.i.i.i = and i32 %112, 65535, !dbg !244
  %add.ptr.i.i.i = getelementptr i8, ptr %base, i32 %and.i.i.i, !dbg !246
  %113 = inttoptr i32 %add45.i to ptr, !dbg !247
  %call7.i.i = call i32 @strncpy_from_kernel_nofault(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull %113, i32 noundef %shr.i.i) #17, !dbg !248
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7.i.i), !dbg !249
  %cmp8.i.i = icmp sgt i32 %call7.i.i, -1, !dbg !249
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.end5.i.i.sw.epilog.i_crit_edge, !dbg !250

if.end5.i.i.sw.epilog.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !250
  br label %sw.epilog.i, !dbg !250

if.then9.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !251
  %gcov_ctr15.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 3), align 8, !dbg !251
  %114 = add i64 %gcov_ctr15.i.i, 1, !dbg !251
  store i64 %114, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 3), align 8, !dbg !251
  %shl.i.i = shl i32 %call7.i.i, 16, !dbg !251
  %or.i.i = or i32 %shl.i.i, %and.i.i.i, !dbg !251
  %115 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !252
  call void @__asan_store4_noabort(i32 %115), !dbg !252
  store i32 %or.i.i, ptr %dest.addr.1.i, align 4, !dbg !252
  br label %sw.epilog.i, !dbg !253

sw.bb47.i:                                        ; preds = %if.end32.i
  %gcov_ctr100.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 11), align 8, !dbg !254
  %116 = add i64 %gcov_ctr100.i, 1, !dbg !254
  store i64 %116, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 11), align 8, !dbg !254
  %117 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !255
  call void @__asan_load4_noabort(i32 %117), !dbg !255
  %118 = load i32, ptr %dest.addr.1.i, align 4, !dbg !255
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %118), !dbg !256
  %tobool.not.i193.i = icmp ult i32 %118, 65536, !dbg !256
  br i1 %tobool.not.i193.i, label %if.then.i195.i, label %if.end.i202.i, !dbg !256, !prof !114

if.then.i195.i:                                   ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !258
  %gcov_ctr.i194.i = load i64, ptr @__llvm_gcov_ctr.24, align 16, !dbg !258
  %119 = add i64 %gcov_ctr.i194.i, 1, !dbg !258
  store i64 %119, ptr @__llvm_gcov_ctr.24, align 16, !dbg !258
  br label %sw.epilog.i, !dbg !258

if.end.i202.i:                                    ; preds = %sw.bb47.i
  %120 = ptrtoint ptr %val.addr.i to i32, !dbg !259
  call void @__asan_load4_noabort(i32 %120), !dbg !259
  %121 = load i32, ptr %val.addr.i, align 4, !dbg !259
  %122 = ptrtoint ptr %offset48.i to i32, !dbg !260
  call void @__asan_load4_noabort(i32 %122), !dbg !260
  %123 = load i32, ptr %offset48.i, align 4, !dbg !260
  %add49.i = add i32 %123, %121, !dbg !261
  %shr.i196.i = lshr i32 %118, 16, !dbg !262
  %124 = inttoptr i32 %add49.i to ptr, !dbg !263
  %gcov_ctr10.i197.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), align 8, !dbg !264
  %125 = add i64 %gcov_ctr10.i197.i, 1, !dbg !264
  store i64 %125, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), align 8, !dbg !264
  %gcov_ctr.i.i198.i = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %126 = add i64 %gcov_ctr.i.i198.i, 1
  store i64 %126, ptr @__llvm_gcov_ctr.27, align 8
  %127 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !265
  call void @__asan_load4_noabort(i32 %127), !dbg !265
  %128 = load i32, ptr %dest.addr.1.i, align 4, !dbg !265
  %and.i.i199.i = and i32 %128, 65535, !dbg !265
  %add.ptr.i.i200.i = getelementptr i8, ptr %base, i32 %and.i.i199.i, !dbg !267
  %call4.i.i = call i32 @strncpy_from_user_nofault(ptr noundef %add.ptr.i.i200.i, ptr noundef %124, i32 noundef %shr.i196.i) #17, !dbg !268
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i.i), !dbg !269
  %cmp.i201.i = icmp sgt i32 %call4.i.i, -1, !dbg !269
  br i1 %cmp.i201.i, label %if.then5.i.i, label %if.end.i202.i.sw.epilog.i_crit_edge, !dbg !270

if.end.i202.i.sw.epilog.i_crit_edge:              ; preds = %if.end.i202.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !270
  br label %sw.epilog.i, !dbg !270

if.then5.i.i:                                     ; preds = %if.end.i202.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !271
  %gcov_ctr11.i203.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 2), align 16, !dbg !271
  %129 = add i64 %gcov_ctr11.i203.i, 1, !dbg !271
  store i64 %129, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 2), align 16, !dbg !271
  %shl.i204.i = shl i32 %call4.i.i, 16, !dbg !271
  %or.i205.i = or i32 %shl.i204.i, %and.i.i199.i, !dbg !271
  %130 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !272
  call void @__asan_store4_noabort(i32 %130), !dbg !272
  store i32 %or.i205.i, ptr %dest.addr.1.i, align 4, !dbg !272
  br label %sw.epilog.i, !dbg !273

sw.default.i:                                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !274
  %gcov_ctr101.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 12), align 16, !dbg !274
  %131 = add i64 %gcov_ctr101.i, 1, !dbg !274
  store i64 %131, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 12), align 16, !dbg !274
  br label %process_fetch_insn_bottom.exit, !dbg !274

sw.epilog.i:                                      ; preds = %if.then5.i.i, %if.end.i202.i.sw.epilog.i_crit_edge, %if.then.i195.i, %if.then9.i.i, %if.end5.i.i.sw.epilog.i_crit_edge, %if.then4.i.i, %if.then5.i.i.i, %if.end.i.i.i.sw.epilog.i_crit_edge, %if.then.i.i.i, %sw.bb38.i, %if.end.i179.i, %if.then.i176.i, %sw.default.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %ret.4.i = phi i32 [ %ret.3.i, %sw.bb38.i ], [ %ret.3.i, %sw.bb.i.i ], [ %ret.3.i, %sw.bb1.i.i ], [ %ret.3.i, %sw.bb3.i.i ], [ %ret.3.i, %sw.bb4.i.i ], [ %ret.3.i, %sw.default.i.i ], [ %ret.3.i, %if.then.i176.i ], [ %ret.3.i, %if.end.i179.i ], [ -12, %if.then4.i.i ], [ %call7.i.i, %if.then9.i.i ], [ %call7.i.i, %if.end5.i.i.sw.epilog.i_crit_edge ], [ -12, %if.then.i.i.i ], [ %call4.i.i.i, %if.then5.i.i.i ], [ %call4.i.i.i, %if.end.i.i.i.sw.epilog.i_crit_edge ], [ -12, %if.then.i195.i ], [ %call4.i.i, %if.then5.i.i ], [ %call4.i.i, %if.end.i202.i.sw.epilog.i_crit_edge ], !dbg !76
  %loc.2.i = phi i32 [ %loc.1.i, %sw.bb38.i ], [ %loc.1.i, %sw.bb.i.i ], [ %loc.1.i, %sw.bb1.i.i ], [ %loc.1.i, %sw.bb3.i.i ], [ %loc.1.i, %sw.bb4.i.i ], [ %loc.1.i, %sw.default.i.i ], [ %loc.1.i, %if.then.i176.i ], [ %loc.1.i, %if.end.i179.i ], [ %92, %if.then4.i.i ], [ %92, %if.then9.i.i ], [ %92, %if.end5.i.i.sw.epilog.i_crit_edge ], [ %92, %if.then.i.i.i ], [ %92, %if.then5.i.i.i ], [ %92, %if.end.i.i.i.sw.epilog.i_crit_edge ], [ %118, %if.then.i195.i ], [ %118, %if.then5.i.i ], [ %118, %if.end.i202.i.sw.epilog.i_crit_edge ], !dbg !76
  %132 = ptrtoint ptr %incdec.ptr51.i to i32, !dbg !275
  call void @__asan_load4_noabort(i32 %132), !dbg !275
  %133 = load i32, ptr %incdec.ptr51.i, align 4, !dbg !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %133), !dbg !276
  %cmp53.i = icmp eq i32 %133, 17, !dbg !276
  br i1 %cmp53.i, label %if.then54.i, label %sw.epilog.i.array.i_crit_edge, !dbg !277

sw.epilog.i.array.i_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !277
  br label %array.i, !dbg !277

if.then54.i:                                      ; preds = %sw.epilog.i
  %gcov_ctr102.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 13), align 8, !dbg !278
  %134 = add i64 %gcov_ctr102.i, 1, !dbg !278
  store i64 %134, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 13), align 8, !dbg !278
  %gcov_ctr.i207.i = load i64, ptr @__llvm_gcov_ctr.25, align 16
  %135 = add i64 %gcov_ctr.i207.i, 1
  store i64 %135, ptr @__llvm_gcov_ctr.25, align 16
  %136 = ptrtoint ptr %23 to i32, !dbg !279
  call void @__asan_load1_noabort(i32 %136), !dbg !279
  %137 = load i8, ptr %23, align 4, !dbg !279
  %138 = zext i8 %137 to i64, !dbg !282
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.115), !dbg !282
  switch i8 %137, label %if.then54.i.arraythread-pre-split.i_crit_edge [
    i8 1, label %sw.bb.i212.i
    i8 2, label %sw.bb7.i.i
    i8 4, label %sw.bb18.i.i
    i8 8, label %sw.bb25.i.i
  ], !dbg !282

if.then54.i.arraythread-pre-split.i_crit_edge:    ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !282
  br label %arraythread-pre-split.i, !dbg !282

sw.bb.i212.i:                                     ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !283
  %gcov_ctr33.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 1), align 8, !dbg !283
  %139 = add i64 %gcov_ctr33.i.i, 1, !dbg !283
  store i64 %139, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 1), align 8, !dbg !283
  %140 = ptrtoint ptr %lshift26.i.i to i32, !dbg !284
  call void @__asan_load1_noabort(i32 %140), !dbg !284
  %141 = load i8, ptr %lshift26.i.i, align 1, !dbg !284
  %conv1.i.i = zext i8 %141 to i32, !dbg !283
  %142 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !285
  call void @__asan_load1_noabort(i32 %142), !dbg !285
  %143 = load i8, ptr %dest.addr.1.i, align 1, !dbg !285
  %conv2.i208.i = zext i8 %143 to i32, !dbg !285
  %shl.i209.i = shl i32 %conv2.i208.i, %conv1.i.i, !dbg !285
  %conv3.i.i = trunc i32 %shl.i209.i to i8, !dbg !285
  store i8 %conv3.i.i, ptr %dest.addr.1.i, align 1, !dbg !285
  %144 = ptrtoint ptr %rshift29.i.i to i32, !dbg !286
  call void @__asan_load1_noabort(i32 %144), !dbg !286
  %145 = load i8, ptr %rshift29.i.i, align 2, !dbg !286
  %conv4.i.i = zext i8 %145 to i32, !dbg !287
  %conv5.i210.i = and i32 %shl.i209.i, 255, !dbg !288
  %shr.i211.i = lshr i32 %conv5.i210.i, %conv4.i.i, !dbg !288
  %conv6.i.i = trunc i32 %shr.i211.i to i8, !dbg !288
  store i8 %conv6.i.i, ptr %dest.addr.1.i, align 1, !dbg !288
  br label %arraythread-pre-split.i, !dbg !289

sw.bb7.i.i:                                       ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !290
  %gcov_ctr34.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 2), align 16, !dbg !290
  %146 = add i64 %gcov_ctr34.i.i, 1, !dbg !290
  store i64 %146, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 2), align 16, !dbg !290
  %147 = ptrtoint ptr %lshift26.i.i to i32, !dbg !291
  call void @__asan_load1_noabort(i32 %147), !dbg !291
  %148 = load i8, ptr %lshift26.i.i, align 1, !dbg !291
  %conv9.i.i = zext i8 %148 to i32, !dbg !290
  %149 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !292
  call void @__asan_load2_noabort(i32 %149), !dbg !292
  %150 = load i16, ptr %dest.addr.1.i, align 2, !dbg !292
  %conv10.i.i = zext i16 %150 to i32, !dbg !292
  %shl11.i.i = shl i32 %conv10.i.i, %conv9.i.i, !dbg !292
  %conv12.i.i = trunc i32 %shl11.i.i to i16, !dbg !292
  store i16 %conv12.i.i, ptr %dest.addr.1.i, align 2, !dbg !292
  %151 = ptrtoint ptr %rshift29.i.i to i32, !dbg !293
  call void @__asan_load1_noabort(i32 %151), !dbg !293
  %152 = load i8, ptr %rshift29.i.i, align 2, !dbg !293
  %conv14.i.i = zext i8 %152 to i32, !dbg !294
  %conv15.i.i = and i32 %shl11.i.i, 65535, !dbg !295
  %shr16.i.i = lshr i32 %conv15.i.i, %conv14.i.i, !dbg !295
  %conv17.i.i = trunc i32 %shr16.i.i to i16, !dbg !295
  store i16 %conv17.i.i, ptr %dest.addr.1.i, align 2, !dbg !295
  br label %arraythread-pre-split.i, !dbg !296

sw.bb18.i.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !297
  %gcov_ctr35.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 3), align 8, !dbg !297
  %153 = add i64 %gcov_ctr35.i.i, 1, !dbg !297
  store i64 %153, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 3), align 8, !dbg !297
  %154 = ptrtoint ptr %lshift26.i.i to i32, !dbg !298
  call void @__asan_load1_noabort(i32 %154), !dbg !298
  %155 = load i8, ptr %lshift26.i.i, align 1, !dbg !298
  %conv20.i.i = zext i8 %155 to i32, !dbg !297
  %156 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !299
  call void @__asan_load4_noabort(i32 %156), !dbg !299
  %157 = load i32, ptr %dest.addr.1.i, align 4, !dbg !299
  %shl21.i.i = shl i32 %157, %conv20.i.i, !dbg !299
  store i32 %shl21.i.i, ptr %dest.addr.1.i, align 4, !dbg !299
  %158 = ptrtoint ptr %rshift29.i.i to i32, !dbg !300
  call void @__asan_load1_noabort(i32 %158), !dbg !300
  %159 = load i8, ptr %rshift29.i.i, align 2, !dbg !300
  %conv23.i.i = zext i8 %159 to i32, !dbg !301
  %shr24.i.i = lshr i32 %shl21.i.i, %conv23.i.i, !dbg !302
  store i32 %shr24.i.i, ptr %dest.addr.1.i, align 4, !dbg !302
  br label %arraythread-pre-split.i, !dbg !303

sw.bb25.i.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !304
  %gcov_ctr36.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 4), align 16, !dbg !304
  %160 = add i64 %gcov_ctr36.i.i, 1, !dbg !304
  store i64 %160, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 4), align 16, !dbg !304
  %161 = ptrtoint ptr %lshift26.i.i to i32, !dbg !305
  call void @__asan_load1_noabort(i32 %161), !dbg !305
  %162 = load i8, ptr %lshift26.i.i, align 1, !dbg !305
  %163 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !306
  call void @__asan_load8_noabort(i32 %163), !dbg !306
  %164 = load i64, ptr %dest.addr.1.i, align 8, !dbg !306
  %sh_prom.i.i = zext i8 %162 to i64, !dbg !306
  %shl28.i.i = shl i64 %164, %sh_prom.i.i, !dbg !306
  store i64 %shl28.i.i, ptr %dest.addr.1.i, align 8, !dbg !306
  %165 = ptrtoint ptr %rshift29.i.i to i32, !dbg !307
  call void @__asan_load1_noabort(i32 %165), !dbg !307
  %166 = load i8, ptr %rshift29.i.i, align 2, !dbg !307
  %sh_prom31.i.i = zext i8 %166 to i64, !dbg !308
  %shr32.i.i = lshr i64 %shl28.i.i, %sh_prom31.i.i, !dbg !308
  store i64 %shr32.i.i, ptr %dest.addr.1.i, align 8, !dbg !308
  br label %arraythread-pre-split.i, !dbg !309

arraythread-pre-split.i:                          ; preds = %sw.bb25.i.i, %sw.bb18.i.i, %sw.bb7.i.i, %sw.bb.i212.i, %if.then54.i.arraythread-pre-split.i_crit_edge, %if.then25.i, %fetch_store_strlen.exit.i
  %code.addr.3.ph.i = phi ptr [ %incdec.ptr51.i, %if.then25.i ], [ %incdec.ptr51.i, %fetch_store_strlen.exit.i ], [ %incdec.ptr55.i, %if.then54.i.arraythread-pre-split.i_crit_edge ], [ %incdec.ptr55.i, %sw.bb.i212.i ], [ %incdec.ptr55.i, %sw.bb7.i.i ], [ %incdec.ptr55.i, %sw.bb18.i.i ], [ %incdec.ptr55.i, %sw.bb25.i.i ]
  %ret.5.ph.i = phi i32 [ %add29.i, %if.then25.i ], [ %retval.0.i168.i, %fetch_store_strlen.exit.i ], [ %ret.4.i, %if.then54.i.arraythread-pre-split.i_crit_edge ], [ %ret.4.i, %sw.bb.i212.i ], [ %ret.4.i, %sw.bb7.i.i ], [ %ret.4.i, %sw.bb18.i.i ], [ %ret.4.i, %sw.bb25.i.i ]
  %loc.3.ph.i = phi i32 [ %loc.1.i, %if.then25.i ], [ %loc.1.i, %fetch_store_strlen.exit.i ], [ %loc.2.i, %if.then54.i.arraythread-pre-split.i_crit_edge ], [ %loc.2.i, %sw.bb.i212.i ], [ %loc.2.i, %sw.bb7.i.i ], [ %loc.2.i, %sw.bb18.i.i ], [ %loc.2.i, %sw.bb25.i.i ]
  %167 = ptrtoint ptr %code.addr.3.ph.i to i32, !dbg !310
  call void @__asan_load4_noabort(i32 %167), !dbg !310
  %.pr.i = load i32, ptr %code.addr.3.ph.i, align 4, !dbg !310
  br label %array.i, !dbg !310

array.i:                                          ; preds = %arraythread-pre-split.i, %sw.epilog.i.array.i_crit_edge
  %168 = phi i32 [ %.pr.i, %arraythread-pre-split.i ], [ %133, %sw.epilog.i.array.i_crit_edge ], !dbg !310
  %code.addr.3.i = phi ptr [ %code.addr.3.ph.i, %arraythread-pre-split.i ], [ %incdec.ptr51.i, %sw.epilog.i.array.i_crit_edge ], !dbg !76
  %ret.5.i = phi i32 [ %ret.5.ph.i, %arraythread-pre-split.i ], [ %ret.4.i, %sw.epilog.i.array.i_crit_edge ], !dbg !76
  %loc.3.i = phi i32 [ %loc.3.ph.i, %arraythread-pre-split.i ], [ %loc.2.i, %sw.epilog.i.array.i_crit_edge ], !dbg !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %168), !dbg !311
  %cmp58.i = icmp eq i32 %168, 18, !dbg !311
  br i1 %cmp58.i, label %if.then59.i, label %array.i.if.end82.i_crit_edge, !dbg !312

array.i.if.end82.i_crit_edge:                     ; preds = %array.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !312
  br label %if.end82.i, !dbg !312

if.then59.i:                                      ; preds = %array.i
  %add60.i = add i32 %ret.5.i, %total.1.i, !dbg !313
  %inc.i = add i32 %i.1.i, 1, !dbg !314
  %169 = getelementptr inbounds %struct.fetch_insn, ptr %code.addr.3.i, i32 0, i32 1, !dbg !315
  %170 = ptrtoint ptr %169 to i32, !dbg !315
  call void @__asan_load4_noabort(i32 %170), !dbg !315
  %171 = load i32, ptr %169, align 4, !dbg !315
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %171), !dbg !316
  %cmp61.i = icmp ult i32 %inc.i, %171, !dbg !316
  br i1 %cmp61.i, label %if.then62.i, label %if.end80.i, !dbg !314

if.then62.i:                                      ; preds = %if.then59.i
  %172 = ptrtoint ptr %code.addr.1.i to i32, !dbg !317
  call void @__asan_load4_noabort(i32 %172), !dbg !317
  %173 = load i32, ptr %code.addr.1.i, align 4, !dbg !317
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %173), !dbg !318
  %cmp64.not.i = icmp eq i32 %173, 15, !dbg !318
  br i1 %cmp64.not.i, label %if.then62.i.if.end72.i_crit_edge, label %land.lhs.true.i, !dbg !319

if.then62.i.if.end72.i_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !319
  br label %if.end72.i, !dbg !319

land.lhs.true.i:                                  ; preds = %if.then62.i
  %gcov_ctr103.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 14), align 16, !dbg !320
  %174 = add i64 %gcov_ctr103.i, 1, !dbg !320
  store i64 %174, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 14), align 16, !dbg !320
  %175 = ptrtoint ptr %code.addr.1.i to i32, !dbg !321
  call void @__asan_load4_noabort(i32 %175), !dbg !321
  %176 = load i32, ptr %code.addr.1.i, align 4, !dbg !321
  %cmp66.not.i = icmp eq i32 %176, 16, !dbg !322
  br i1 %cmp66.not.i, label %land.lhs.true.i.if.end72.i_crit_edge, label %if.then67.i, !dbg !323

land.lhs.true.i.if.end72.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !323
  br label %if.end72.i, !dbg !323

if.then67.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !324
  %177 = ptrtoint ptr %22 to i32, !dbg !324
  call void @__asan_load4_noabort(i32 %177), !dbg !324
  %178 = load i32, ptr %22, align 4, !dbg !324
  %add.ptr69.i = getelementptr i8, ptr %dest.addr.1.i, i32 %178, !dbg !325
  %179 = ptrtoint ptr %val.addr.i to i32, !dbg !326
  call void @__asan_load4_noabort(i32 %179), !dbg !326
  %180 = load i32, ptr %val.addr.i, align 4, !dbg !326
  %add71.i = add i32 %180, %178, !dbg !326
  store i32 %add71.i, ptr %val.addr.i, align 4, !dbg !326
  br label %stage3.i, !dbg !327

if.end72.i:                                       ; preds = %land.lhs.true.i.if.end72.i_crit_edge, %if.then62.i.if.end72.i_crit_edge
  %incdec.ptr73.i = getelementptr %struct.fetch_insn, ptr %code.addr.1.i, i32 -1, !dbg !328
  %add74.i = add i32 %lval.1.i, 4, !dbg !329
  %181 = ptrtoint ptr %val.addr.i to i32, !dbg !330
  call void @__asan_store4_noabort(i32 %181), !dbg !330
  store i32 %add74.i, ptr %val.addr.i, align 4, !dbg !330
  br i1 %tobool11.not.i, label %if.end72.i.if.end79.i_crit_edge, label %if.then76.i, !dbg !331

if.end72.i.if.end79.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !331
  br label %if.end79.i, !dbg !331

if.then76.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !332
  %gcov_ctr104.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 15), align 8, !dbg !332
  %182 = add i64 %gcov_ctr104.i, 1, !dbg !332
  store i64 %182, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 15), align 8, !dbg !332
  %add.ptr77.i = getelementptr i8, ptr %dest.addr.1.i, i32 4, !dbg !332
  %gcov_ctr.i213.i = load i64, ptr @__llvm_gcov_ctr.26, align 8
  %183 = add i64 %gcov_ctr.i213.i, 1
  store i64 %183, ptr @__llvm_gcov_ctr.26, align 8
  %sub4.neg.i.i = mul i32 %ret.5.i, -65536, !dbg !333
  %shr5.i.i = add i32 %sub4.neg.i.i, %loc.3.i, !dbg !333
  %shl.i214.i = and i32 %shr5.i.i, -65536, !dbg !333
  %add.i.i = add i32 %loc.3.i, %ret.5.i, !dbg !333
  %and1.i.i = and i32 %add.i.i, 65535, !dbg !333
  %or.i215.i = or i32 %shl.i214.i, %and1.i.i, !dbg !333
  %184 = ptrtoint ptr %add.ptr77.i to i32, !dbg !336
  call void @__asan_store4_noabort(i32 %184), !dbg !336
  store i32 %or.i215.i, ptr %add.ptr77.i, align 4, !dbg !336
  br label %if.end79.i, !dbg !337

if.end79.i:                                       ; preds = %if.then76.i, %if.end72.i.if.end79.i_crit_edge
  %dest.addr.2.i = phi ptr [ %add.ptr77.i, %if.then76.i ], [ null, %if.end72.i.if.end79.i_crit_edge ]
  %gcov_ctr105.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 16), align 16, !dbg !338
  %185 = add i64 %gcov_ctr105.i, 1, !dbg !338
  store i64 %185, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 16), align 16, !dbg !338
  br label %stage2.i, !dbg !338

if.end80.i:                                       ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !339
  %gcov_ctr106.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 17), align 8, !dbg !339
  %186 = add i64 %gcov_ctr106.i, 1, !dbg !339
  store i64 %186, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 17), align 8, !dbg !339
  %incdec.ptr81.i = getelementptr %struct.fetch_insn, ptr %code.addr.3.i, i32 1, !dbg !339
  br label %if.end82.i, !dbg !340

if.end82.i:                                       ; preds = %if.end80.i, %array.i.if.end82.i_crit_edge
  %code.addr.4.i = phi ptr [ %incdec.ptr81.i, %if.end80.i ], [ %code.addr.3.i, %array.i.if.end82.i_crit_edge ], !dbg !76
  %ret.6.i = phi i32 [ %add60.i, %if.end80.i ], [ %ret.5.i, %array.i.if.end82.i_crit_edge ], !dbg !76
  %187 = ptrtoint ptr %code.addr.4.i to i32, !dbg !341
  call void @__asan_load4_noabort(i32 %187), !dbg !341
  %188 = load i32, ptr %code.addr.4.i, align 4, !dbg !341
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %188), !dbg !342
  %cmp84.i = icmp eq i32 %188, 20, !dbg !342
  br i1 %cmp84.i, label %cond.true.i, label %cond.false.i, !dbg !343

cond.true.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !344
  %gcov_ctr107.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 18), align 16, !dbg !344
  %189 = add i64 %gcov_ctr107.i, 1, !dbg !344
  store i64 %189, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 18), align 16, !dbg !344
  br label %process_fetch_insn_bottom.exit, !dbg !343

cond.false.i:                                     ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !343
  %gcov_ctr108.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 19), align 8, !dbg !343
  %190 = add i64 %gcov_ctr108.i, 1, !dbg !343
  store i64 %190, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 19), align 8, !dbg !343
  br label %process_fetch_insn_bottom.exit, !dbg !343

process_fetch_insn_bottom.exit:                   ; preds = %cond.false.i, %cond.true.i, %sw.default.i, %if.else31.i, %if.then9.i
  %retval.0.i = phi i32 [ %ret.2.i, %if.then9.i ], [ -84, %if.else31.i ], [ -84, %sw.default.i ], [ %ret.6.i, %cond.true.i ], [ -84, %cond.false.i ], !dbg !76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i), !dbg !345
  ret i32 %retval.0.i, !dbg !346
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_events_eprobe_init_early() #1 section ".init.text" align 64 !dbg !347 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !348
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.15, align 8
  %call = tail call i32 @dyn_event_register(ptr noundef nonnull @eprobe_dyn_event_ops) #17, !dbg !349
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !350
  %tobool.not = icmp eq i32 %call, 0, !dbg !350
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !dbg !350

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !350
  br label %if.end, !dbg !350

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !351
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 1), align 8, !dbg !351
  %1 = add i64 %gcov_ctr2, 1, !dbg !351
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 1), align 8, !dbg !351
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #18, !dbg !351
  br label %if.end, !dbg !351

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call, !dbg !352
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @get_event_field(ptr nocapture noundef readonly %code, ptr nocapture noundef readonly %rec) unnamed_addr #3 align 64 !dbg !353 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !354
  %0 = getelementptr inbounds %struct.fetch_insn, ptr %code, i32 0, i32 1, !dbg !355
  %1 = ptrtoint ptr %0 to i32, !dbg !355
  call void @__asan_load4_noabort(i32 %1), !dbg !355
  %2 = load ptr, ptr %0, align 4, !dbg !355
  %offset = getelementptr inbounds %struct.ftrace_event_field, ptr %2, i32 0, i32 4, !dbg !356
  %3 = ptrtoint ptr %offset to i32, !dbg !356
  call void @__asan_load4_noabort(i32 %3), !dbg !356
  %4 = load i32, ptr %offset, align 4, !dbg !356
  %add.ptr = getelementptr i8, ptr %rec, i32 %4, !dbg !357
  %size = getelementptr inbounds %struct.ftrace_event_field, ptr %2, i32 0, i32 5, !dbg !358
  %5 = ptrtoint ptr %size to i32, !dbg !358
  call void @__asan_load4_noabort(i32 %5), !dbg !358
  %6 = load i32, ptr %size, align 4, !dbg !358
  %7 = zext i32 %6 to i64, !dbg !359
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.116), !dbg !359
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %sw.bb10
  ], !dbg !359

sw.bb:                                            ; preds = %entry
  %is_signed = getelementptr inbounds %struct.ftrace_event_field, ptr %2, i32 0, i32 6, !dbg !360
  %8 = ptrtoint ptr %is_signed to i32, !dbg !360
  call void @__asan_load4_noabort(i32 %8), !dbg !360
  %9 = load i32, ptr %is_signed, align 4, !dbg !360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9), !dbg !361
  %tobool.not = icmp eq i32 %9, 0, !dbg !361
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !361

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16, !dbg !362
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !362
  %10 = add i64 %gcov_ctr21, 1, !dbg !362
  store i64 %10, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !362
  %11 = ptrtoint ptr %add.ptr to i32, !dbg !363
  call void @__asan_load1_noabort(i32 %11), !dbg !363
  %12 = load i8, ptr %add.ptr, align 1, !dbg !363
  %conv = zext i8 %12 to i32, !dbg !363
  br label %sw.epilog, !dbg !364

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16, !dbg !365
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.16, align 16, !dbg !365
  %13 = add i64 %gcov_ctr, 1, !dbg !365
  store i64 %13, ptr @__llvm_gcov_ctr.16, align 16, !dbg !365
  %14 = ptrtoint ptr %add.ptr to i32, !dbg !366
  call void @__asan_load1_noabort(i32 %14), !dbg !366
  %15 = load i8, ptr %add.ptr, align 1, !dbg !366
  %conv1 = zext i8 %15 to i32, !dbg !366
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %is_signed3 = getelementptr inbounds %struct.ftrace_event_field, ptr %2, i32 0, i32 6, !dbg !367
  %16 = ptrtoint ptr %is_signed3 to i32, !dbg !367
  call void @__asan_load4_noabort(i32 %16), !dbg !367
  %17 = load i32, ptr %is_signed3, align 4, !dbg !367
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17), !dbg !368
  %tobool4.not = icmp eq i32 %17, 0, !dbg !368
  br i1 %tobool4.not, label %if.else7, label %if.then5, !dbg !368

if.then5:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #16, !dbg !369
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 3), align 8, !dbg !369
  %18 = add i64 %gcov_ctr23, 1, !dbg !369
  store i64 %18, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 3), align 8, !dbg !369
  %19 = ptrtoint ptr %add.ptr to i32, !dbg !370
  call void @__asan_load2_noabort(i32 %19), !dbg !370
  %20 = load i16, ptr %add.ptr, align 2, !dbg !370
  %conv6 = sext i16 %20 to i32, !dbg !370
  br label %sw.epilog, !dbg !371

if.else7:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #16, !dbg !372
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 2), align 16, !dbg !372
  %21 = add i64 %gcov_ctr22, 1, !dbg !372
  store i64 %21, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 2), align 16, !dbg !372
  %22 = ptrtoint ptr %add.ptr to i32, !dbg !373
  call void @__asan_load2_noabort(i32 %22), !dbg !373
  %23 = load i16, ptr %add.ptr, align 2, !dbg !373
  %conv8 = zext i16 %23 to i32, !dbg !373
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %is_signed11 = getelementptr inbounds %struct.ftrace_event_field, ptr %2, i32 0, i32 6, !dbg !374
  %24 = ptrtoint ptr %is_signed11 to i32, !dbg !374
  call void @__asan_load4_noabort(i32 %24), !dbg !374
  %25 = load i32, ptr %is_signed11, align 4, !dbg !374
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25), !dbg !375
  %tobool12.not = icmp eq i32 %25, 0, !dbg !375
  br i1 %tobool12.not, label %if.else14, label %if.then13, !dbg !375

if.then13:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #16, !dbg !376
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 5), align 8, !dbg !376
  %26 = add i64 %gcov_ctr25, 1, !dbg !376
  store i64 %26, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 5), align 8, !dbg !376
  %27 = ptrtoint ptr %add.ptr to i32, !dbg !377
  call void @__asan_load4_noabort(i32 %27), !dbg !377
  %28 = load i32, ptr %add.ptr, align 4, !dbg !377
  br label %sw.epilog, !dbg !378

if.else14:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #16, !dbg !379
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 4), align 16, !dbg !379
  %29 = add i64 %gcov_ctr24, 1, !dbg !379
  store i64 %29, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 4), align 16, !dbg !379
  %30 = ptrtoint ptr %add.ptr to i32, !dbg !380
  call void @__asan_load4_noabort(i32 %30), !dbg !380
  %31 = load i32, ptr %add.ptr, align 4, !dbg !380
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %is_signed16 = getelementptr inbounds %struct.ftrace_event_field, ptr %2, i32 0, i32 6, !dbg !381
  %32 = ptrtoint ptr %is_signed16 to i32, !dbg !381
  call void @__asan_load4_noabort(i32 %32), !dbg !381
  %33 = load i32, ptr %is_signed16, align 4, !dbg !381
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33), !dbg !382
  %tobool17.not = icmp eq i32 %33, 0, !dbg !382
  br i1 %tobool17.not, label %if.else19, label %if.then18, !dbg !382

if.then18:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16, !dbg !383
  %gcov_ctr27 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 7), align 8, !dbg !383
  %34 = add i64 %gcov_ctr27, 1, !dbg !383
  store i64 %34, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 7), align 8, !dbg !383
  %35 = ptrtoint ptr %add.ptr to i32, !dbg !384
  call void @__asan_load4_noabort(i32 %35), !dbg !384
  %36 = load i32, ptr %add.ptr, align 4, !dbg !384
  br label %sw.epilog, !dbg !385

if.else19:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16, !dbg !386
  %gcov_ctr26 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 6), align 16, !dbg !386
  %37 = add i64 %gcov_ctr26, 1, !dbg !386
  store i64 %37, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 6), align 16, !dbg !386
  %38 = ptrtoint ptr %add.ptr to i32, !dbg !387
  call void @__asan_load4_noabort(i32 %38), !dbg !387
  %39 = load i32, ptr %add.ptr, align 4, !dbg !387
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else19, %if.then18, %if.else14, %if.then13, %if.else7, %if.then5, %if.else, %if.then
  %val.0 = phi i32 [ %36, %if.then18 ], [ %39, %if.else19 ], [ %28, %if.then13 ], [ %31, %if.else14 ], [ %conv6, %if.then5 ], [ %conv8, %if.else7 ], [ %conv, %if.then ], [ %conv1, %if.else ], !dbg !388
  ret i32 %val.0, !dbg !389
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_user_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strnlen_user_nofault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dyn_event_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eprobe_dyn_event_create(ptr noundef %raw_command) #0 align 64 !dbg !390 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !391
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.28, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.28, align 8
  %call = tail call i32 @trace_probe_create(ptr noundef %raw_command, ptr noundef nonnull @__trace_eprobe_create) #17, !dbg !392
  ret i32 %call, !dbg !393
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eprobe_dyn_event_show(ptr noundef %m, ptr nocapture noundef readonly %ev) #0 align 64 !dbg !394 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !395
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.29, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.29, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.105, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.105, align 8
  %add.ptr.i = getelementptr i8, ptr %ev, i32 -12, !dbg !396
  %gcov_ctr.i22 = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %2 = add i64 %gcov_ctr.i22, 1
  store i64 %2, ptr @__llvm_gcov_ctr.106, align 8
  %event.i = getelementptr i8, ptr %ev, i32 20, !dbg !399
  %3 = ptrtoint ptr %event.i to i32, !dbg !399
  call void @__asan_load4_noabort(i32 %3), !dbg !399
  %4 = load ptr, ptr %event.i, align 4, !dbg !399
  %class.i = getelementptr inbounds %struct.trace_probe_event, ptr %4, i32 0, i32 2, i32 1, !dbg !402
  %5 = ptrtoint ptr %class.i to i32, !dbg !402
  call void @__asan_load4_noabort(i32 %5), !dbg !402
  %6 = load ptr, ptr %class.i, align 4, !dbg !402
  %7 = ptrtoint ptr %6 to i32, !dbg !403
  call void @__asan_load4_noabort(i32 %7), !dbg !403
  %8 = load ptr, ptr %6, align 4, !dbg !403
  %gcov_ctr.i23 = load i64, ptr @__llvm_gcov_ctr.67, align 8
  %9 = add i64 %gcov_ctr.i23, 1
  store i64 %9, ptr @__llvm_gcov_ctr.67, align 8
  %10 = load ptr, ptr %event.i, align 4, !dbg !404
  %flags.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %10, i32 0, i32 2, i32 8, !dbg !407
  %11 = ptrtoint ptr %flags.i.i to i32, !dbg !407
  call void @__asan_load4_noabort(i32 %11), !dbg !407
  %12 = load i32, ptr %flags.i.i, align 4, !dbg !407
  %and.i.i = and i32 %12, 16, !dbg !411
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !411
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !411
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !dbg !412

if.then.i.i:                                      ; preds = %entry
  %13 = getelementptr inbounds %struct.trace_probe_event, ptr %10, i32 0, i32 2, i32 2, !dbg !413
  %14 = ptrtoint ptr %13 to i32, !dbg !413
  call void @__asan_load4_noabort(i32 %14), !dbg !413
  %15 = load ptr, ptr %13, align 4, !dbg !413
  %tobool1.not.i.i = icmp eq ptr %15, null, !dbg !414
  br i1 %tobool1.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !dbg !414

cond.true.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !415
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !415
  %16 = add i64 %gcov_ctr2.i.i, 1, !dbg !415
  store i64 %16, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !415
  %17 = ptrtoint ptr %15 to i32, !dbg !416
  call void @__asan_load4_noabort(i32 %17), !dbg !416
  %18 = load ptr, ptr %15, align 4, !dbg !416
  br label %trace_probe_name.exit, !dbg !414

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !414
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.45, align 16, !dbg !414
  %19 = add i64 %gcov_ctr.i.i, 1, !dbg !414
  store i64 %19, ptr @__llvm_gcov_ctr.45, align 16, !dbg !414
  br label %trace_probe_name.exit, !dbg !414

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !417
  %gcov_ctr3.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 2), align 16, !dbg !417
  %20 = add i64 %gcov_ctr3.i.i, 1, !dbg !417
  store i64 %20, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 2), align 16, !dbg !417
  %21 = getelementptr inbounds %struct.trace_probe_event, ptr %10, i32 0, i32 2, i32 2, !dbg !418
  %22 = ptrtoint ptr %21 to i32, !dbg !418
  call void @__asan_load4_noabort(i32 %22), !dbg !418
  %23 = load ptr, ptr %21, align 4, !dbg !418
  br label %trace_probe_name.exit, !dbg !419

trace_probe_name.exit:                            ; preds = %if.else.i.i, %cond.false.i.i, %cond.true.i.i
  %retval.0.i.i = phi ptr [ %23, %if.else.i.i ], [ %18, %cond.true.i.i ], [ null, %cond.false.i.i ], !dbg !420
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, ptr noundef %8, ptr noundef %retval.0.i.i) #17, !dbg !421
  %24 = ptrtoint ptr %add.ptr.i to i32, !dbg !422
  call void @__asan_load4_noabort(i32 %24), !dbg !422
  %25 = load ptr, ptr %add.ptr.i, align 4, !dbg !422
  %event_name = getelementptr i8, ptr %ev, i32 -8, !dbg !423
  %26 = ptrtoint ptr %event_name to i32, !dbg !423
  call void @__asan_load4_noabort(i32 %26), !dbg !423
  %27 = load ptr, ptr %event_name, align 4, !dbg !423
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, ptr noundef %25, ptr noundef %27) #17, !dbg !424
  %nr_args = getelementptr i8, ptr %ev, i32 28
  %28 = ptrtoint ptr %nr_args to i32, !dbg !425
  call void @__asan_load4_noabort(i32 %28), !dbg !425
  %29 = load i32, ptr %nr_args, align 4, !dbg !425
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29), !dbg !426
  %cmp25.not = icmp eq i32 %29, 0, !dbg !426
  br i1 %cmp25.not, label %trace_probe_name.exit.for.end_crit_edge, label %for.body.lr.ph, !dbg !427

trace_probe_name.exit.for.end_crit_edge:          ; preds = %trace_probe_name.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !427
  br label %for.end, !dbg !427

for.body.lr.ph:                                   ; preds = %trace_probe_name.exit
  %args = getelementptr i8, ptr %ev, i32 32
  br label %for.body, !dbg !427

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.probe_arg], ptr %args, i32 0, i32 %i.026, !dbg !428
  %name = getelementptr inbounds %struct.probe_arg, ptr %arrayidx, i32 0, i32 4, !dbg !429
  %30 = ptrtoint ptr %name to i32, !dbg !429
  call void @__asan_load4_noabort(i32 %30), !dbg !429
  %31 = load ptr, ptr %name, align 4, !dbg !429
  %comm = getelementptr inbounds %struct.probe_arg, ptr %arrayidx, i32 0, i32 5, !dbg !430
  %32 = ptrtoint ptr %comm to i32, !dbg !430
  call void @__asan_load4_noabort(i32 %32), !dbg !430
  %33 = load ptr, ptr %comm, align 4, !dbg !430
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, ptr noundef %31, ptr noundef %33) #17, !dbg !431
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 1), align 8, !dbg !432
  %34 = add i64 %gcov_ctr9, 1, !dbg !432
  store i64 %34, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 1), align 8, !dbg !432
  %inc = add nuw i32 %i.026, 1, !dbg !432
  %35 = ptrtoint ptr %nr_args to i32, !dbg !425
  call void @__asan_load4_noabort(i32 %35), !dbg !425
  %36 = load i32, ptr %nr_args, align 4, !dbg !425
  %cmp = icmp ult i32 %inc, %36, !dbg !426
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge, !dbg !427, !llvm.loop !433

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !427
  br label %for.end, !dbg !427

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !427
  br label %for.body, !dbg !427

for.end:                                          ; preds = %for.body.for.end_crit_edge, %trace_probe_name.exit.for.end_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #17, !dbg !435
  ret i32 0, !dbg !436
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @eprobe_dyn_event_is_busy(ptr nocapture noundef readonly %ev) #3 align 64 !dbg !437 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !438
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.30, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.30, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.105, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.105, align 8
  %gcov_ctr.i2 = load i64, ptr @__llvm_gcov_ctr.73, align 8
  %2 = add i64 %gcov_ctr.i2, 1
  store i64 %2, ptr @__llvm_gcov_ctr.73, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.79, align 8
  %3 = add i64 %gcov_ctr.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.79, align 8
  %event.i.i = getelementptr i8, ptr %ev, i32 20, !dbg !439
  %4 = ptrtoint ptr %event.i.i to i32, !dbg !439
  call void @__asan_load4_noabort(i32 %4), !dbg !439
  %5 = load ptr, ptr %event.i.i, align 4, !dbg !439
  %6 = ptrtoint ptr %5 to i32, !dbg !444
  call void @__asan_load4_noabort(i32 %6), !dbg !444
  %7 = load i32, ptr %5, align 4, !dbg !444
  %and.i.i = and i32 %7, 3, !dbg !445
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !446
  %tobool.i.i = icmp ne i32 %and.i.i, 0, !dbg !446
  ret i1 %tobool.i.i, !dbg !447
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eprobe_dyn_event_release(ptr noundef %ev) #0 align 64 !dbg !448 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !449
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.31, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.105, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.105, align 8
  %add.ptr.i = getelementptr i8, ptr %ev, i32 -12, !dbg !450
  %tp.i = getelementptr i8, ptr %ev, i32 12, !dbg !452
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.108, align 8
  %2 = add i64 %gcov_ctr.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.108, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.75, align 8
  %3 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.75, align 8
  %event.i.i.i = getelementptr i8, ptr %ev, i32 20, !dbg !455
  %4 = ptrtoint ptr %event.i.i.i to i32, !dbg !455
  call void @__asan_load4_noabort(i32 %4), !dbg !455
  %5 = load ptr, ptr %event.i.i.i, align 4, !dbg !455
  %probes.i.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %5, i32 0, i32 4, !dbg !460
  %gcov_ctr.i6.i.i = load i64, ptr @__llvm_gcov_ctr.101, align 8
  %6 = add i64 %gcov_ctr.i6.i.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.101, align 8
  %7 = ptrtoint ptr %probes.i.i.i to i32, !dbg !461
  call void @__asan_load4_noabort(i32 %7), !dbg !461
  %8 = load volatile ptr, ptr %probes.i.i.i, align 4, !dbg !461
  %cmp.i.not.i.i = icmp eq ptr %8, %probes.i.i.i, !dbg !465
  br i1 %cmp.i.not.i.i, label %entry.if.end.i_crit_edge, label %land.rhs.i.i, !dbg !466

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !466
  br label %if.end.i, !dbg !466

land.rhs.i.i:                                     ; preds = %entry
  %gcov_ctr4.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 1), align 8, !dbg !467
  %9 = add i64 %gcov_ctr4.i.i, 1, !dbg !467
  store i64 %9, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 1), align 8, !dbg !467
  %gcov_ctr.i7.i.i = load i64, ptr @__llvm_gcov_ctr.100, align 8
  %10 = add i64 %gcov_ctr.i7.i.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.100, align 8
  %11 = add i64 %gcov_ctr.i6.i.i, 2
  store i64 %11, ptr @__llvm_gcov_ctr.101, align 8
  %12 = ptrtoint ptr %probes.i.i.i to i32, !dbg !468
  call void @__asan_load4_noabort(i32 %12), !dbg !468
  %13 = load volatile ptr, ptr %probes.i.i.i, align 4, !dbg !468
  %cmp.i.not.i.i.i = icmp eq ptr %13, %probes.i.i.i, !dbg !472
  br i1 %cmp.i.not.i.i.i, label %land.rhs.i.i.unreg.i_crit_edge, label %trace_probe_has_sibling.exit.i, !dbg !473

land.rhs.i.i.unreg.i_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !473
  br label %unreg.i, !dbg !473

trace_probe_has_sibling.exit.i:                   ; preds = %land.rhs.i.i
  %gcov_ctr1.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.100, i32 0, i32 1), align 8, !dbg !474
  %14 = add i64 %gcov_ctr1.i.i.i, 1, !dbg !474
  store i64 %14, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.100, i32 0, i32 1), align 8, !dbg !474
  %prev.i.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %5, i32 0, i32 4, i32 1, !dbg !475
  %15 = ptrtoint ptr %prev.i.i.i to i32, !dbg !475
  call void @__asan_load4_noabort(i32 %15), !dbg !475
  %16 = load ptr, ptr %prev.i.i.i, align 4, !dbg !475
  %cmp.i8.i.not.i = icmp eq ptr %13, %16, !dbg !476
  br i1 %cmp.i8.i.not.i, label %trace_probe_has_sibling.exit.i.if.end.i_crit_edge, label %trace_probe_has_sibling.exit.i.unreg.i_crit_edge, !dbg !477

trace_probe_has_sibling.exit.i.unreg.i_crit_edge: ; preds = %trace_probe_has_sibling.exit.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !477
  br label %unreg.i, !dbg !477

trace_probe_has_sibling.exit.i.if.end.i_crit_edge: ; preds = %trace_probe_has_sibling.exit.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !477
  br label %if.end.i, !dbg !477

if.end.i:                                         ; preds = %trace_probe_has_sibling.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %gcov_ctr.i17.i = load i64, ptr @__llvm_gcov_ctr.73, align 8
  %17 = add i64 %gcov_ctr.i17.i, 1
  store i64 %17, ptr @__llvm_gcov_ctr.73, align 8
  %gcov_ctr.i.i18.i = load i64, ptr @__llvm_gcov_ctr.79, align 8
  %18 = add i64 %gcov_ctr.i.i18.i, 1
  store i64 %18, ptr @__llvm_gcov_ctr.79, align 8
  %19 = ptrtoint ptr %5 to i32, !dbg !478
  call void @__asan_load4_noabort(i32 %19), !dbg !478
  %20 = load i32, ptr %5, align 4, !dbg !478
  %and.i.i.i = and i32 %20, 3, !dbg !481
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i), !dbg !482
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i, 0, !dbg !482
  br i1 %tobool.i.i.not.i, label %if.end4.i, label %if.then3.i, !dbg !483

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !484
  %gcov_ctr10.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 1), align 8, !dbg !484
  %21 = add i64 %gcov_ctr10.i, 1, !dbg !484
  store i64 %21, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 1), align 8, !dbg !484
  br label %if.end, !dbg !484

if.end4.i:                                        ; preds = %if.end.i
  %gcov_ctr.i20.i = load i64, ptr @__llvm_gcov_ctr.109, align 8
  %22 = add i64 %gcov_ctr.i20.i, 1
  store i64 %22, ptr @__llvm_gcov_ctr.109, align 8
  %call.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %5, i32 0, i32 2, !dbg !485
  %call1.i.i = tail call i32 @trace_remove_event_call(ptr noundef %call.i.i) #17, !dbg !488
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i), !dbg !489
  %tobool.not.i = icmp eq i32 %call1.i.i, 0, !dbg !489
  br i1 %tobool.not.i, label %if.end4.i.unreg.i_crit_edge, label %if.then7.i, !dbg !489

if.end4.i.unreg.i_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !489
  br label %unreg.i, !dbg !489

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !490
  %gcov_ctr12.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 3), align 8, !dbg !490
  %23 = add i64 %gcov_ctr12.i, 1, !dbg !490
  store i64 %23, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 3), align 8, !dbg !490
  br label %if.end, !dbg !490

unreg.i:                                          ; preds = %if.end4.i.unreg.i_crit_edge, %trace_probe_has_sibling.exit.i.unreg.i_crit_edge, %land.rhs.i.i.unreg.i_crit_edge
  %.sink.i = phi ptr [ @__llvm_gcov_ctr.107, %land.rhs.i.i.unreg.i_crit_edge ], [ @__llvm_gcov_ctr.107, %trace_probe_has_sibling.exit.i.unreg.i_crit_edge ], [ getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 2), %if.end4.i.unreg.i_crit_edge ]
  %24 = ptrtoint ptr %.sink.i to i32, !dbg !491
  call void @__asan_load8_noabort(i32 %24), !dbg !491
  %gcov_ctr11.i = load i64, ptr %.sink.i, align 16, !dbg !491
  %25 = add i64 %gcov_ctr11.i, 1, !dbg !491
  store i64 %25, ptr %.sink.i, align 16, !dbg !491
  %gcov_ctr.i21.i = load i64, ptr @__llvm_gcov_ctr.110, align 16
  %26 = add i64 %gcov_ctr.i21.i, 1
  store i64 %26, ptr @__llvm_gcov_ctr.110, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32)), !dbg !492
  %27 = load i32, ptr @debug_locks, align 4, !dbg !492
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27), !dbg !492
  %tobool.not.i.i = icmp eq i32 %27, 0, !dbg !492
  br i1 %tobool.not.i.i, label %unreg.i.if.end.i.i_crit_edge, label %land.rhs.i23.i, !dbg !492

unreg.i.if.end.i.i_crit_edge:                     ; preds = %unreg.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !492
  br label %if.end.i.i, !dbg !492

land.rhs.i23.i:                                   ; preds = %unreg.i
  %gcov_ctr24.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.110, i32 0, i32 1), align 8, !dbg !492
  %28 = add i64 %gcov_ctr24.i.i, 1, !dbg !492
  store i64 %28, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.110, i32 0, i32 1), align 8, !dbg !492
  %gcov_ctr.i.i22.i = load i64, ptr @__llvm_gcov_ctr.102, align 8
  %29 = add i64 %gcov_ctr.i.i22.i, 1
  store i64 %29, ptr @__llvm_gcov_ctr.102, align 8
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @event_mutex, i32 0, i32 5), i32 noundef -1) #17, !dbg !496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i), !dbg !492
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0, !dbg !492
  br i1 %cmp.not.i.i, label %if.then.i.i, label %land.rhs.i23.i.if.end.i.i_crit_edge, !dbg !492, !prof !114

land.rhs.i23.i.if.end.i.i_crit_edge:              ; preds = %land.rhs.i23.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !492
  br label %if.end.i.i, !dbg !492

if.then.i.i:                                      ; preds = %land.rhs.i23.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !492
  %gcov_ctr25.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.110, i32 0, i32 2), align 16, !dbg !492
  %30 = add i64 %gcov_ctr25.i.i, 1, !dbg !492
  store i64 %30, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.110, i32 0, i32 2), align 16, !dbg !492
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 94, i32 noundef 9, ptr noundef null) #17, !dbg !492
  br label %if.end.i.i, !dbg !492

if.end.i.i:                                       ; preds = %if.then.i.i, %land.rhs.i23.i.if.end.i.i_crit_edge, %unreg.i.if.end.i.i_crit_edge
  %gcov_ctr.i27.i.i = load i64, ptr @__llvm_gcov_ctr.111, align 8
  %31 = add i64 %gcov_ctr.i27.i.i, 1
  store i64 %31, ptr @__llvm_gcov_ctr.111, align 8
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ev) #17, !dbg !500
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !dbg !505

if.then.i.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !506
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.97, align 8, !dbg !506
  %32 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !506
  store i64 %32, ptr @__llvm_gcov_ctr.97, align 8, !dbg !506
  br label %if.then, !dbg !506

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !507
  %gcov_ctr2.i.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 1), align 8, !dbg !507
  %33 = add i64 %gcov_ctr2.i.i.i.i, 1, !dbg !507
  store i64 %33, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 1), align 8, !dbg !507
  %prev.i.i.i.i = getelementptr i8, ptr %ev, i32 4, !dbg !508
  %34 = ptrtoint ptr %prev.i.i.i.i to i32, !dbg !508
  call void @__asan_load4_noabort(i32 %34), !dbg !508
  %35 = load ptr, ptr %prev.i.i.i.i, align 4, !dbg !508
  %36 = ptrtoint ptr %ev to i32, !dbg !509
  call void @__asan_load4_noabort(i32 %36), !dbg !509
  %37 = load ptr, ptr %ev, align 4, !dbg !509
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1, !dbg !510
  %38 = ptrtoint ptr %prev1.i.i.i.i.i to i32, !dbg !513
  call void @__asan_store4_noabort(i32 %38), !dbg !513
  store ptr %35, ptr %prev1.i.i.i.i.i, align 4, !dbg !513
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.98, align 8, !dbg !514
  %39 = add i64 %gcov_ctr.i.i.i.i.i, 1, !dbg !514
  store i64 %39, ptr @__llvm_gcov_ctr.98, align 8, !dbg !514
  %40 = ptrtoint ptr %35 to i32, !dbg !514
  call void @__asan_store4_noabort(i32 %40), !dbg !514
  store volatile ptr %37, ptr %35, align 4, !dbg !514
  br label %if.then, !dbg !515

if.then:                                          ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %gcov_ctr.i3.i.i.i = load i64, ptr @__llvm_gcov_ctr.60, align 8, !dbg !516
  %41 = add i64 %gcov_ctr.i3.i.i.i, 1, !dbg !516
  store i64 %41, ptr @__llvm_gcov_ctr.60, align 8, !dbg !516
  %42 = ptrtoint ptr %ev to i32, !dbg !516
  call void @__asan_store4_noabort(i32 %42), !dbg !516
  store volatile ptr %ev, ptr %ev, align 4, !dbg !516
  %prev.i4.i.i.i = getelementptr i8, ptr %ev, i32 4, !dbg !519
  %43 = ptrtoint ptr %prev.i4.i.i.i to i32, !dbg !520
  call void @__asan_store4_noabort(i32 %43), !dbg !520
  store ptr %ev, ptr %prev.i4.i.i.i, align 4, !dbg !520
  tail call void @trace_probe_unlink(ptr noundef %tp.i) #17, !dbg !521
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.31, i32 0, i32 1), align 8, !dbg !522
  %44 = add i64 %gcov_ctr2, 1, !dbg !522
  store i64 %44, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.31, i32 0, i32 1), align 8, !dbg !522
  tail call fastcc void @trace_event_probe_cleanup(ptr noundef %add.ptr.i), !dbg !523
  br label %if.end, !dbg !523

if.end:                                           ; preds = %if.then, %if.then7.i, %if.then3.i
  %retval.0.i7 = phi i32 [ 0, %if.then ], [ -16, %if.then3.i ], [ -16, %if.then7.i ]
  ret i32 %retval.0.i7, !dbg !524
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @eprobe_dyn_event_match(ptr noundef readonly %system, ptr nocapture noundef readonly %event, i32 noundef %argc, ptr noundef %argv, ptr noundef %ev) #0 align 64 !dbg !525 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !526
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.105, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.105, align 8
  %add.ptr.i = getelementptr i8, ptr %ev, i32 -12, !dbg !527
  %tobool.not = icmp eq ptr %system, null, !dbg !529
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true, !dbg !530

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !530
  br label %if.end, !dbg !530

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.32, align 16, !dbg !531
  %1 = add i64 %gcov_ctr, 1, !dbg !531
  store i64 %1, ptr @__llvm_gcov_ctr.32, align 16, !dbg !531
  %gcov_ctr.i62 = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %2 = add i64 %gcov_ctr.i62, 1
  store i64 %2, ptr @__llvm_gcov_ctr.106, align 8
  %event.i = getelementptr i8, ptr %ev, i32 20, !dbg !532
  %3 = ptrtoint ptr %event.i to i32, !dbg !532
  call void @__asan_load4_noabort(i32 %3), !dbg !532
  %4 = load ptr, ptr %event.i, align 4, !dbg !532
  %class.i = getelementptr inbounds %struct.trace_probe_event, ptr %4, i32 0, i32 2, i32 1, !dbg !534
  %5 = ptrtoint ptr %class.i to i32, !dbg !534
  call void @__asan_load4_noabort(i32 %5), !dbg !534
  %6 = load ptr, ptr %class.i, align 4, !dbg !534
  %7 = ptrtoint ptr %6 to i32, !dbg !535
  call void @__asan_load4_noabort(i32 %7), !dbg !535
  %8 = load ptr, ptr %6, align 4, !dbg !535
  %call2 = tail call i32 @strcmp(ptr noundef %8, ptr noundef nonnull %system) #19, !dbg !536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !537
  %cmp.not = icmp eq i32 %call2, 0, !dbg !537
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then, !dbg !529

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16, !dbg !529
  br label %if.end, !dbg !529

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16, !dbg !538
  %gcov_ctr37 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !538
  %9 = add i64 %gcov_ctr37, 1, !dbg !538
  store i64 %9, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !538
  br label %cleanup, !dbg !538

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tp3 = getelementptr i8, ptr %ev, i32 12, !dbg !539
  %gcov_ctr.i63 = load i64, ptr @__llvm_gcov_ctr.67, align 8
  %10 = add i64 %gcov_ctr.i63, 1
  store i64 %10, ptr @__llvm_gcov_ctr.67, align 8
  %event.i64 = getelementptr i8, ptr %ev, i32 20, !dbg !540
  %11 = ptrtoint ptr %event.i64 to i32, !dbg !540
  call void @__asan_load4_noabort(i32 %11), !dbg !540
  %12 = load ptr, ptr %event.i64, align 4, !dbg !540
  %flags.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %12, i32 0, i32 2, i32 8, !dbg !542
  %13 = ptrtoint ptr %flags.i.i to i32, !dbg !542
  call void @__asan_load4_noabort(i32 %13), !dbg !542
  %14 = load i32, ptr %flags.i.i, align 4, !dbg !542
  %and.i.i = and i32 %14, 16, !dbg !544
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !544
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !544
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !dbg !545

if.then.i.i:                                      ; preds = %if.end
  %15 = getelementptr inbounds %struct.trace_probe_event, ptr %12, i32 0, i32 2, i32 2, !dbg !546
  %16 = ptrtoint ptr %15 to i32, !dbg !546
  call void @__asan_load4_noabort(i32 %16), !dbg !546
  %17 = load ptr, ptr %15, align 4, !dbg !546
  %tobool1.not.i.i = icmp eq ptr %17, null, !dbg !547
  br i1 %tobool1.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !dbg !547

cond.true.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !548
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !548
  %18 = add i64 %gcov_ctr2.i.i, 1, !dbg !548
  store i64 %18, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !548
  %19 = ptrtoint ptr %17 to i32, !dbg !549
  call void @__asan_load4_noabort(i32 %19), !dbg !549
  %20 = load ptr, ptr %17, align 4, !dbg !549
  br label %trace_probe_name.exit, !dbg !547

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !547
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.45, align 16, !dbg !547
  %21 = add i64 %gcov_ctr.i.i, 1, !dbg !547
  store i64 %21, ptr @__llvm_gcov_ctr.45, align 16, !dbg !547
  br label %trace_probe_name.exit, !dbg !547

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !550
  %gcov_ctr3.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 2), align 16, !dbg !550
  %22 = add i64 %gcov_ctr3.i.i, 1, !dbg !550
  store i64 %22, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 2), align 16, !dbg !550
  %23 = getelementptr inbounds %struct.trace_probe_event, ptr %12, i32 0, i32 2, i32 2, !dbg !551
  %24 = ptrtoint ptr %23 to i32, !dbg !551
  call void @__asan_load4_noabort(i32 %24), !dbg !551
  %25 = load ptr, ptr %23, align 4, !dbg !551
  br label %trace_probe_name.exit, !dbg !552

trace_probe_name.exit:                            ; preds = %if.else.i.i, %cond.false.i.i, %cond.true.i.i
  %retval.0.i.i = phi ptr [ %25, %if.else.i.i ], [ %20, %cond.true.i.i ], [ null, %cond.false.i.i ], !dbg !553
  %call5 = tail call i32 @strcmp(ptr noundef %retval.0.i.i, ptr noundef %event) #19, !dbg !554
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5), !dbg !555
  %cmp6.not = icmp eq i32 %call5, 0, !dbg !555
  br i1 %cmp6.not, label %if.end8, label %if.then7, !dbg !554

if.then7:                                         ; preds = %trace_probe_name.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !556
  %gcov_ctr38 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 2), align 16, !dbg !556
  %26 = add i64 %gcov_ctr38, 1, !dbg !556
  store i64 %26, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 2), align 16, !dbg !556
  br label %cleanup, !dbg !556

if.end8:                                          ; preds = %trace_probe_name.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc), !dbg !557
  %cmp9 = icmp slt i32 %argc, 1, !dbg !557
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !558

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16, !dbg !559
  %gcov_ctr39 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 3), align 8, !dbg !559
  %27 = add i64 %gcov_ctr39, 1, !dbg !559
  store i64 %27, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 3), align 8, !dbg !559
  br label %cleanup, !dbg !559

if.end11:                                         ; preds = %if.end8
  %28 = ptrtoint ptr %argv to i32, !dbg !560
  call void @__asan_load4_noabort(i32 %28), !dbg !560
  %29 = load ptr, ptr %argv, align 4, !dbg !560
  %call12 = tail call ptr @strchr(ptr noundef %29, i32 noundef 47), !dbg !561
  %tobool13.not = icmp eq ptr %call12, null, !dbg !562
  br i1 %tobool13.not, label %if.end17, label %if.end11.if.end20_crit_edge, !dbg !563

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16, !dbg !563
  br label %if.end20, !dbg !563

if.end17:                                         ; preds = %if.end11
  %gcov_ctr40 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 4), align 16, !dbg !564
  %30 = add i64 %gcov_ctr40, 1, !dbg !564
  store i64 %30, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 4), align 16, !dbg !564
  %31 = ptrtoint ptr %argv to i32, !dbg !564
  call void @__asan_load4_noabort(i32 %31), !dbg !564
  %32 = load ptr, ptr %argv, align 4, !dbg !564
  %call16 = tail call ptr @strchr(ptr noundef %32, i32 noundef 46), !dbg !565
  %tobool18.not = icmp eq ptr %call16, null, !dbg !566
  br i1 %tobool18.not, label %if.then19, label %if.end17.if.end20_crit_edge, !dbg !567

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16, !dbg !567
  br label %if.end20, !dbg !567

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16, !dbg !568
  %gcov_ctr41 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 5), align 8, !dbg !568
  %33 = add i64 %gcov_ctr41, 1, !dbg !568
  store i64 %33, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 5), align 8, !dbg !568
  br label %cleanup, !dbg !568

if.end20:                                         ; preds = %if.end17.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  %slash.067 = phi ptr [ %call16, %if.end17.if.end20_crit_edge ], [ %call12, %if.end11.if.end20_crit_edge ]
  %34 = ptrtoint ptr %add.ptr.i to i32, !dbg !569
  call void @__asan_load4_noabort(i32 %34), !dbg !569
  %35 = load ptr, ptr %add.ptr.i, align 4, !dbg !569
  %36 = ptrtoint ptr %argv to i32, !dbg !570
  call void @__asan_load4_noabort(i32 %36), !dbg !570
  %37 = load ptr, ptr %argv, align 4, !dbg !570
  %sub.ptr.lhs.cast = ptrtoint ptr %slash.067 to i32, !dbg !571
  %sub.ptr.rhs.cast = ptrtoint ptr %37 to i32, !dbg !571
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !571
  %call23 = tail call i32 @strncmp(ptr noundef %35, ptr noundef %37, i32 noundef %sub.ptr.sub), !dbg !572
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23), !dbg !572
  %tobool24.not = icmp eq i32 %call23, 0, !dbg !572
  br i1 %tobool24.not, label %if.end26, label %if.then25, !dbg !572

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16, !dbg !573
  %gcov_ctr42 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 6), align 16, !dbg !573
  %38 = add i64 %gcov_ctr42, 1, !dbg !573
  store i64 %38, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 6), align 16, !dbg !573
  br label %cleanup, !dbg !573

if.end26:                                         ; preds = %if.end20
  %event_name = getelementptr i8, ptr %ev, i32 -8, !dbg !574
  %39 = ptrtoint ptr %event_name to i32, !dbg !574
  call void @__asan_load4_noabort(i32 %39), !dbg !574
  %40 = load ptr, ptr %event_name, align 4, !dbg !574
  %add.ptr = getelementptr i8, ptr %slash.067, i32 1, !dbg !575
  %call27 = tail call i32 @strcmp(ptr noundef %40, ptr noundef %add.ptr) #19, !dbg !576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27), !dbg !576
  %tobool28.not = icmp eq i32 %call27, 0, !dbg !576
  br i1 %tobool28.not, label %if.end30, label %if.then29, !dbg !576

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16, !dbg !577
  %gcov_ctr43 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 7), align 8, !dbg !577
  %41 = add i64 %gcov_ctr43, 1, !dbg !577
  store i64 %41, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 7), align 8, !dbg !577
  br label %cleanup, !dbg !577

if.end30:                                         ; preds = %if.end26
  %dec = add nsw i32 %argc, -1, !dbg !578
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec), !dbg !579
  %cmp31 = icmp eq i32 %dec, 0, !dbg !579
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !580

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16, !dbg !581
  %gcov_ctr44 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 8), align 16, !dbg !581
  %42 = add i64 %gcov_ctr44, 1, !dbg !581
  store i64 %42, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 8), align 16, !dbg !581
  br label %cleanup, !dbg !581

if.end33:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16, !dbg !582
  %incdec.ptr = getelementptr ptr, ptr %argv, i32 1, !dbg !582
  %gcov_ctr45 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 9), align 8, !dbg !583
  %43 = add i64 %gcov_ctr45, 1, !dbg !583
  store i64 %43, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 9), align 8, !dbg !583
  %call35 = tail call zeroext i1 @trace_probe_match_command_args(ptr noundef %tp3, i32 noundef %dec, ptr noundef %incdec.ptr) #17, !dbg !584
  br label %cleanup, !dbg !585

cleanup:                                          ; preds = %if.end33, %if.then32, %if.then29, %if.then25, %if.then19, %if.then10, %if.then7, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then7 ], [ true, %if.then10 ], [ false, %if.then25 ], [ false, %if.then29 ], [ true, %if.then32 ], [ %call35, %if.end33 ], [ false, %if.then19 ], !dbg !586
  ret i1 %retval.0, !dbg !587
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_create(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__trace_eprobe_create(i32 noundef %argc, ptr noundef %argv) #0 align 64 !dbg !588 {
entry:
  %event = alloca ptr, align 4
  %group = alloca ptr, align 4
  %sys_event = alloca ptr, align 4
  %sys_name = alloca ptr, align 4
  %buf1 = alloca [64 x i8], align 1
  %buf2 = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16, !dbg !589
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %event) #17, !dbg !590
  %0 = ptrtoint ptr %event to i32, !dbg !591
  call void @__asan_store4_noabort(i32 %0), !dbg !591
  store ptr null, ptr %event, align 4, !dbg !591
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group) #17, !dbg !590
  %1 = ptrtoint ptr %group to i32, !dbg !592
  call void @__asan_store4_noabort(i32 %1), !dbg !592
  store ptr @.str.3, ptr %group, align 4, !dbg !592
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sys_event) #17, !dbg !593
  %2 = ptrtoint ptr %sys_event to i32, !dbg !594
  call void @__asan_store4_noabort(i32 %2), !dbg !594
  store ptr null, ptr %sys_event, align 4, !dbg !594
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sys_name) #17, !dbg !593
  %3 = ptrtoint ptr %sys_name to i32, !dbg !595
  call void @__asan_store4_noabort(i32 %3), !dbg !595
  store ptr null, ptr %sys_name, align 4, !dbg !595
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf1) #17, !dbg !596
  %4 = call ptr @memset(ptr %buf1, i32 255, i32 64), !dbg !597
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf2) #17, !dbg !598
  %5 = call ptr @memset(ptr %buf2, i32 255, i32 64), !dbg !599
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc), !dbg !600
  %cmp = icmp slt i32 %argc, 2, !dbg !600
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false, !dbg !601

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !601
  br label %if.then, !dbg !601

lor.lhs.false:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.33, align 16, !dbg !602
  %6 = add i64 %gcov_ctr, 1, !dbg !602
  store i64 %6, ptr @__llvm_gcov_ctr.33, align 16, !dbg !602
  %7 = ptrtoint ptr %argv to i32, !dbg !602
  call void @__asan_load4_noabort(i32 %7), !dbg !602
  %8 = load ptr, ptr %argv, align 4, !dbg !602
  %9 = ptrtoint ptr %8 to i32, !dbg !602
  call void @__asan_load1_noabort(i32 %9), !dbg !602
  %10 = load i8, ptr %8, align 1, !dbg !602
  call void @__sanitizer_cov_trace_const_cmp1(i8 101, i8 %10), !dbg !603
  %cmp2.not = icmp eq i8 %10, 101, !dbg !603
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.if.then_crit_edge, !dbg !604

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16, !dbg !604
  br label %if.then, !dbg !604

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %gcov_ctr128 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8, !dbg !605
  %11 = add i64 %gcov_ctr128, 1, !dbg !605
  store i64 %11, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8, !dbg !605
  br label %cleanup, !dbg !605

if.end:                                           ; preds = %lor.lhs.false
  tail call void @trace_probe_log_init(ptr noundef nonnull @.str.4, i32 noundef %argc, ptr noundef %argv) #17, !dbg !606
  %12 = ptrtoint ptr %argv to i32, !dbg !607
  call void @__asan_load4_noabort(i32 %12), !dbg !607
  %13 = load ptr, ptr %argv, align 4, !dbg !607
  %arrayidx5 = getelementptr i8, ptr %13, i32 1, !dbg !607
  %call = tail call ptr @strchr(ptr noundef %arrayidx5, i32 noundef 58), !dbg !608
  %14 = ptrtoint ptr %event to i32, !dbg !609
  call void @__asan_store4_noabort(i32 %14), !dbg !609
  store ptr %call, ptr %event, align 4, !dbg !609
  %tobool.not = icmp eq ptr %call, null, !dbg !610
  br i1 %tobool.not, label %if.else, label %if.then6, !dbg !610

if.then6:                                         ; preds = %if.end
  %incdec.ptr = getelementptr i8, ptr %call, i32 1, !dbg !611
  %15 = ptrtoint ptr %event to i32, !dbg !611
  call void @__asan_store4_noabort(i32 %15), !dbg !611
  store ptr %incdec.ptr, ptr %event, align 4, !dbg !611
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i32, !dbg !612
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i32, !dbg !612
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !612
  %call8 = call i32 @traceprobe_parse_event_name(ptr noundef nonnull %event, ptr noundef nonnull %group, ptr noundef nonnull %buf1, i32 noundef %sub.ptr.sub) #17, !dbg !613
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8), !dbg !614
  %tobool9.not = icmp eq i32 %call8, 0, !dbg !614
  br i1 %tobool9.not, label %if.end11, label %if.then10, !dbg !614

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16, !dbg !615
  %gcov_ctr129 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 2), align 16, !dbg !615
  %16 = add i64 %gcov_ctr129, 1, !dbg !615
  store i64 %16, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 2), align 16, !dbg !615
  br label %error, !dbg !615

if.end11:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16, !dbg !616
  %gcov_ctr130 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 3), align 8, !dbg !616
  %17 = add i64 %gcov_ctr130, 1, !dbg !616
  store i64 %17, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 3), align 8, !dbg !616
  br label %if.end17, !dbg !616

if.else:                                          ; preds = %if.end
  %gcov_ctr131 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 4), align 16, !dbg !617
  %18 = add i64 %gcov_ctr131, 1, !dbg !617
  store i64 %18, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 4), align 16, !dbg !617
  %arrayidx13 = getelementptr ptr, ptr %argv, i32 1, !dbg !618
  %19 = ptrtoint ptr %arrayidx13 to i32, !dbg !618
  call void @__asan_load4_noabort(i32 %19), !dbg !618
  %20 = load ptr, ptr %arrayidx13, align 4, !dbg !618
  %call14 = call i32 @strscpy(ptr noundef nonnull %buf1, ptr noundef %20, i32 noundef 64) #17, !dbg !619
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.34, align 16
  %21 = add i64 %gcov_ctr.i, 1
  store i64 %21, ptr @__llvm_gcov_ctr.34, align 16
  %22 = ptrtoint ptr %buf1 to i32, !dbg !620
  call void @__asan_load1_noabort(i32 %22), !dbg !620
  %23 = load i8, ptr %buf1, align 1, !dbg !620
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23), !dbg !624
  %cmp.not15.i = icmp eq i8 %23, 0, !dbg !624
  br i1 %cmp.not15.i, label %if.else.sanitize_event_name.exit_crit_edge, label %while.body.i.preheader, !dbg !625

if.else.sanitize_event_name.exit_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16, !dbg !625
  br label %sanitize_event_name.exit, !dbg !625

while.body.i.preheader:                           ; preds = %if.else
  %.promoted = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 1), align 8
  %.promoted233 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 2), align 16
  %.promoted234 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 3), align 8
  br label %while.body.i, !dbg !625

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.i.preheader
  %24 = phi i64 [ %37, %if.end.i.while.body.i_crit_edge ], [ %.promoted234, %while.body.i.preheader ]
  %25 = phi i64 [ %34, %if.end.i.while.body.i_crit_edge ], [ %.promoted233, %while.body.i.preheader ]
  %26 = phi i64 [ %35, %if.end.i.while.body.i_crit_edge ], [ %.promoted, %while.body.i.preheader ]
  %incdec.ptr16.pn.i = phi ptr [ %incdec.ptr16.i, %if.end.i.while.body.i_crit_edge ], [ %buf1, %while.body.i.preheader ]
  %incdec.ptr16.i = getelementptr i8, ptr %incdec.ptr16.pn.i, i32 1, !dbg !626
  %27 = ptrtoint ptr %incdec.ptr16.i to i32, !dbg !627
  call void @__asan_load1_noabort(i32 %27), !dbg !627
  %28 = load i8, ptr %incdec.ptr16.i, align 1, !dbg !627
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %28), !dbg !628
  %cmp3.i = icmp eq i8 %28, 58, !dbg !628
  br i1 %cmp3.i, label %while.body.i.if.then.i_crit_edge, label %lor.lhs.false.i, !dbg !629

while.body.i.if.then.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !629
  br label %if.then.i, !dbg !629

lor.lhs.false.i:                                  ; preds = %while.body.i
  %29 = add i64 %26, 1, !dbg !630
  store i64 %29, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 1), align 8, !dbg !630
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %28), !dbg !631
  %cmp6.i = icmp eq i8 %28, 46, !dbg !631
  br i1 %cmp6.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.ithread-pre-split, !dbg !627

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !627
  br label %if.then.i, !dbg !627

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %while.body.i.if.then.i_crit_edge
  %30 = phi i64 [ %29, %lor.lhs.false.i.if.then.i_crit_edge ], [ %26, %while.body.i.if.then.i_crit_edge ]
  %31 = add i64 %25, 1, !dbg !632
  store i64 %31, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 2), align 16, !dbg !632
  %32 = ptrtoint ptr %incdec.ptr16.i to i32, !dbg !633
  call void @__asan_store1_noabort(i32 %32), !dbg !633
  store i8 95, ptr %incdec.ptr16.i, align 1, !dbg !633
  br label %if.end.i, !dbg !634

if.end.ithread-pre-split:                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !620
  %33 = ptrtoint ptr %incdec.ptr16.i to i32, !dbg !620
  call void @__asan_load1_noabort(i32 %33), !dbg !620
  %.pr = load i8, ptr %incdec.ptr16.i, align 1, !dbg !620
  br label %if.end.i, !dbg !625

if.end.i:                                         ; preds = %if.end.ithread-pre-split, %if.then.i
  %34 = phi i64 [ %25, %if.end.ithread-pre-split ], [ %31, %if.then.i ]
  %35 = phi i64 [ %29, %if.end.ithread-pre-split ], [ %30, %if.then.i ]
  %36 = phi i8 [ %.pr, %if.end.ithread-pre-split ], [ 95, %if.then.i ], !dbg !620
  %37 = add i64 %24, 1, !dbg !625
  %cmp.not.i = icmp eq i8 %36, 0, !dbg !624
  br i1 %cmp.not.i, label %sanitize_event_name.exit.loopexit, label %if.end.i.while.body.i_crit_edge, !dbg !625, !llvm.loop !635

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !625
  br label %while.body.i, !dbg !625

sanitize_event_name.exit.loopexit:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !625
  store i64 %37, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 3), align 8, !dbg !625
  br label %sanitize_event_name.exit, !dbg !637

sanitize_event_name.exit:                         ; preds = %sanitize_event_name.exit.loopexit, %if.else.sanitize_event_name.exit_crit_edge
  %38 = ptrtoint ptr %event to i32, !dbg !637
  call void @__asan_store4_noabort(i32 %38), !dbg !637
  store ptr %buf1, ptr %event, align 4, !dbg !637
  br label %if.end17

if.end17:                                         ; preds = %sanitize_event_name.exit, %if.end11
  %39 = ptrtoint ptr %event to i32, !dbg !638
  call void @__asan_load4_noabort(i32 %39), !dbg !638
  %40 = load ptr, ptr %event, align 4, !dbg !638
  %41 = ptrtoint ptr %40 to i32, !dbg !639
  call void @__asan_load1_noabort(i32 %41), !dbg !639
  %42 = load i8, ptr %40, align 1, !dbg !639
  %conv.i = zext i8 %42 to i32, !dbg !639
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i, !dbg !639
  %43 = ptrtoint ptr %arrayidx.i to i32, !dbg !639
  call void @__asan_load1_noabort(i32 %43), !dbg !639
  %44 = load i8, ptr %arrayidx.i, align 1, !dbg !639
  %45 = and i8 %44, 3, !dbg !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45), !dbg !639
  %cmp.not.i186 = icmp eq i8 %45, 0, !dbg !639
  br i1 %cmp.not.i186, label %land.lhs.true.i, label %if.end17.if.end.i189_crit_edge, !dbg !642

if.end17.if.end.i189_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16, !dbg !642
  br label %if.end.i189, !dbg !642

land.lhs.true.i:                                  ; preds = %if.end17
  %gcov_ctr.i187 = load i64, ptr @__llvm_gcov_ctr.35, align 16, !dbg !643
  %46 = add i64 %gcov_ctr.i187, 1, !dbg !643
  store i64 %46, ptr @__llvm_gcov_ctr.35, align 16, !dbg !643
  %47 = ptrtoint ptr %40 to i32, !dbg !644
  call void @__asan_load1_noabort(i32 %47), !dbg !644
  %48 = load i8, ptr %40, align 1, !dbg !644
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %48), !dbg !645
  %cmp4.not.i = icmp eq i8 %48, 95, !dbg !645
  br i1 %cmp4.not.i, label %land.lhs.true.i.if.end.i189_crit_edge, label %if.then.i188, !dbg !646

land.lhs.true.i.if.end.i189_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !646
  br label %if.end.i189, !dbg !646

if.then.i188:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !647
  %gcov_ctr23.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 1), align 8, !dbg !647
  %49 = add i64 %gcov_ctr23.i, 1, !dbg !647
  store i64 %49, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 1), align 8, !dbg !647
  br label %error, !dbg !647

if.end.i189:                                      ; preds = %land.lhs.true.i.if.end.i189_crit_edge, %if.end17.if.end.i189_crit_edge
  %incdec.ptr35.i = getelementptr i8, ptr %40, i32 1, !dbg !648
  %50 = ptrtoint ptr %incdec.ptr35.i to i32, !dbg !649
  call void @__asan_load1_noabort(i32 %50), !dbg !649
  %51 = load i8, ptr %incdec.ptr35.i, align 1, !dbg !649
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51), !dbg !650
  %cmp7.not36.i = icmp eq i8 %51, 0, !dbg !650
  br i1 %cmp7.not36.i, label %if.end.i189.lor.lhs.false19_crit_edge, label %if.end.i189.while.body.i190_crit_edge, !dbg !651

if.end.i189.while.body.i190_crit_edge:            ; preds = %if.end.i189
  br label %while.body.i190, !dbg !651

if.end.i189.lor.lhs.false19_crit_edge:            ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #16, !dbg !651
  br label %lor.lhs.false19, !dbg !651

while.body.i190:                                  ; preds = %if.end22.i.while.body.i190_crit_edge, %if.end.i189.while.body.i190_crit_edge
  %52 = phi i8 [ %67, %if.end22.i.while.body.i190_crit_edge ], [ %51, %if.end.i189.while.body.i190_crit_edge ]
  %incdec.ptr37.i = phi ptr [ %incdec.ptr.i, %if.end22.i.while.body.i190_crit_edge ], [ %incdec.ptr35.i, %if.end.i189.while.body.i190_crit_edge ]
  %conv6.i = zext i8 %52 to i32, !dbg !649
  %arrayidx10.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv6.i, !dbg !652
  %53 = ptrtoint ptr %arrayidx10.i to i32, !dbg !652
  call void @__asan_load1_noabort(i32 %53), !dbg !652
  %54 = load i8, ptr %arrayidx10.i, align 1, !dbg !652
  %55 = and i8 %54, 3, !dbg !652
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55), !dbg !652
  %cmp13.not.i = icmp eq i8 %55, 0, !dbg !652
  br i1 %cmp13.not.i, label %land.lhs.true15.i, label %while.body.i190.if.end22.i_crit_edge, !dbg !653

while.body.i190.if.end22.i_crit_edge:             ; preds = %while.body.i190
  call void @__sanitizer_cov_trace_pc() #16, !dbg !653
  br label %if.end22.i, !dbg !653

land.lhs.true15.i:                                ; preds = %while.body.i190
  %gcov_ctr24.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 2), align 16, !dbg !654
  %56 = add i64 %gcov_ctr24.i, 1, !dbg !654
  store i64 %56, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 2), align 16, !dbg !654
  %57 = ptrtoint ptr %incdec.ptr37.i to i32, !dbg !655
  call void @__asan_load1_noabort(i32 %57), !dbg !655
  %58 = load i8, ptr %incdec.ptr37.i, align 1, !dbg !655
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %59 = add i64 %gcov_ctr.i.i, 1
  store i64 %59, ptr @__llvm_gcov_ctr.44, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %58), !dbg !656
  %cmp.i.i = icmp ugt i8 %58, 47, !dbg !656
  br i1 %cmp.i.i, label %isdigit.exit.i, label %land.lhs.true15.i.land.lhs.true17.i_crit_edge, !dbg !660

land.lhs.true15.i.land.lhs.true17.i_crit_edge:    ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !660
  br label %land.lhs.true17.i, !dbg !660

isdigit.exit.i:                                   ; preds = %land.lhs.true15.i
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !661
  %60 = add i64 %gcov_ctr2.i.i, 1, !dbg !661
  store i64 %60, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !661
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %58), !dbg !662
  %cmp1.i.i = icmp ugt i8 %58, 57, !dbg !662
  br i1 %cmp1.i.i, label %isdigit.exit.i.land.lhs.true17.i_crit_edge, label %isdigit.exit.i.if.end22.i_crit_edge, !dbg !663

isdigit.exit.i.if.end22.i_crit_edge:              ; preds = %isdigit.exit.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !663
  br label %if.end22.i, !dbg !663

isdigit.exit.i.land.lhs.true17.i_crit_edge:       ; preds = %isdigit.exit.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !663
  br label %land.lhs.true17.i, !dbg !663

land.lhs.true17.i:                                ; preds = %isdigit.exit.i.land.lhs.true17.i_crit_edge, %land.lhs.true15.i.land.lhs.true17.i_crit_edge
  %gcov_ctr25.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 3), align 8, !dbg !664
  %61 = add i64 %gcov_ctr25.i, 1, !dbg !664
  store i64 %61, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 3), align 8, !dbg !664
  %62 = ptrtoint ptr %incdec.ptr37.i to i32, !dbg !665
  call void @__asan_load1_noabort(i32 %62), !dbg !665
  %63 = load i8, ptr %incdec.ptr37.i, align 1, !dbg !665
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %63), !dbg !666
  %cmp19.not.i = icmp eq i8 %63, 95, !dbg !666
  br i1 %cmp19.not.i, label %land.lhs.true17.i.if.end22.i_crit_edge, label %if.then21.i, !dbg !667

land.lhs.true17.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !667
  br label %if.end22.i, !dbg !667

if.then21.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !668
  %gcov_ctr26.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 4), align 16, !dbg !668
  %64 = add i64 %gcov_ctr26.i, 1, !dbg !668
  store i64 %64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 4), align 16, !dbg !668
  br label %error, !dbg !668

if.end22.i:                                       ; preds = %land.lhs.true17.i.if.end22.i_crit_edge, %isdigit.exit.i.if.end22.i_crit_edge, %while.body.i190.if.end22.i_crit_edge
  %gcov_ctr27.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 5), align 8, !dbg !651
  %65 = add i64 %gcov_ctr27.i, 1, !dbg !651
  store i64 %65, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 5), align 8, !dbg !651
  %incdec.ptr.i = getelementptr i8, ptr %incdec.ptr37.i, i32 1, !dbg !648
  %66 = ptrtoint ptr %incdec.ptr.i to i32, !dbg !649
  call void @__asan_load1_noabort(i32 %66), !dbg !649
  %67 = load i8, ptr %incdec.ptr.i, align 1, !dbg !649
  %cmp7.not.i = icmp eq i8 %67, 0, !dbg !650
  br i1 %cmp7.not.i, label %if.end22.i.lor.lhs.false19_crit_edge, label %if.end22.i.while.body.i190_crit_edge, !dbg !651, !llvm.loop !669

if.end22.i.while.body.i190_crit_edge:             ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !651
  br label %while.body.i190, !dbg !651

if.end22.i.lor.lhs.false19_crit_edge:             ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !651
  br label %lor.lhs.false19, !dbg !651

lor.lhs.false19:                                  ; preds = %if.end22.i.lor.lhs.false19_crit_edge, %if.end.i189.lor.lhs.false19_crit_edge
  %gcov_ctr28.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 6), align 16, !dbg !671
  %68 = add i64 %gcov_ctr28.i, 1, !dbg !671
  store i64 %68, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 6), align 16, !dbg !671
  %gcov_ctr132 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 5), align 8, !dbg !672
  %69 = add i64 %gcov_ctr132, 1, !dbg !672
  store i64 %69, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 5), align 8, !dbg !672
  %70 = ptrtoint ptr %group to i32, !dbg !672
  call void @__asan_load4_noabort(i32 %70), !dbg !672
  %71 = load ptr, ptr %group, align 4, !dbg !672
  %72 = ptrtoint ptr %71 to i32, !dbg !673
  call void @__asan_load1_noabort(i32 %72), !dbg !673
  %73 = load i8, ptr %71, align 1, !dbg !673
  %conv.i191 = zext i8 %73 to i32, !dbg !673
  %arrayidx.i192 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i191, !dbg !673
  %74 = ptrtoint ptr %arrayidx.i192 to i32, !dbg !673
  call void @__asan_load1_noabort(i32 %74), !dbg !673
  %75 = load i8, ptr %arrayidx.i192, align 1, !dbg !673
  %76 = and i8 %75, 3, !dbg !673
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76), !dbg !673
  %cmp.not.i193 = icmp eq i8 %76, 0, !dbg !673
  br i1 %cmp.not.i193, label %land.lhs.true.i196, label %lor.lhs.false19.if.end.i201_crit_edge, !dbg !675

lor.lhs.false19.if.end.i201_crit_edge:            ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #16, !dbg !675
  br label %if.end.i201, !dbg !675

land.lhs.true.i196:                               ; preds = %lor.lhs.false19
  %gcov_ctr.i194 = load i64, ptr @__llvm_gcov_ctr.35, align 16, !dbg !676
  %77 = add i64 %gcov_ctr.i194, 1, !dbg !676
  store i64 %77, ptr @__llvm_gcov_ctr.35, align 16, !dbg !676
  %78 = ptrtoint ptr %71 to i32, !dbg !677
  call void @__asan_load1_noabort(i32 %78), !dbg !677
  %79 = load i8, ptr %71, align 1, !dbg !677
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %79), !dbg !678
  %cmp4.not.i195 = icmp eq i8 %79, 95, !dbg !678
  br i1 %cmp4.not.i195, label %land.lhs.true.i196.if.end.i201_crit_edge, label %if.then.i198, !dbg !679

land.lhs.true.i196.if.end.i201_crit_edge:         ; preds = %land.lhs.true.i196
  call void @__sanitizer_cov_trace_pc() #16, !dbg !679
  br label %if.end.i201, !dbg !679

if.then.i198:                                     ; preds = %land.lhs.true.i196
  call void @__sanitizer_cov_trace_pc() #16, !dbg !680
  %gcov_ctr23.i197 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 1), align 8, !dbg !680
  %80 = add i64 %gcov_ctr23.i197, 1, !dbg !680
  store i64 %80, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 1), align 8, !dbg !680
  br label %error, !dbg !680

if.end.i201:                                      ; preds = %land.lhs.true.i196.if.end.i201_crit_edge, %lor.lhs.false19.if.end.i201_crit_edge
  %incdec.ptr35.i199 = getelementptr i8, ptr %71, i32 1, !dbg !681
  %81 = ptrtoint ptr %incdec.ptr35.i199 to i32, !dbg !682
  call void @__asan_load1_noabort(i32 %81), !dbg !682
  %82 = load i8, ptr %incdec.ptr35.i199, align 1, !dbg !682
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82), !dbg !683
  %cmp7.not36.i200 = icmp eq i8 %82, 0, !dbg !683
  br i1 %cmp7.not36.i200, label %if.end.i201.if.end22_crit_edge, label %if.end.i201.while.body.i206_crit_edge, !dbg !684

if.end.i201.while.body.i206_crit_edge:            ; preds = %if.end.i201
  br label %while.body.i206, !dbg !684

if.end.i201.if.end22_crit_edge:                   ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #16, !dbg !684
  br label %if.end22, !dbg !684

while.body.i206:                                  ; preds = %if.end22.i222.while.body.i206_crit_edge, %if.end.i201.while.body.i206_crit_edge
  %83 = phi i8 [ %98, %if.end22.i222.while.body.i206_crit_edge ], [ %82, %if.end.i201.while.body.i206_crit_edge ]
  %incdec.ptr37.i202 = phi ptr [ %incdec.ptr.i220, %if.end22.i222.while.body.i206_crit_edge ], [ %incdec.ptr35.i199, %if.end.i201.while.body.i206_crit_edge ]
  %conv6.i203 = zext i8 %83 to i32, !dbg !682
  %arrayidx10.i204 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv6.i203, !dbg !685
  %84 = ptrtoint ptr %arrayidx10.i204 to i32, !dbg !685
  call void @__asan_load1_noabort(i32 %84), !dbg !685
  %85 = load i8, ptr %arrayidx10.i204, align 1, !dbg !685
  %86 = and i8 %85, 3, !dbg !685
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86), !dbg !685
  %cmp13.not.i205 = icmp eq i8 %86, 0, !dbg !685
  br i1 %cmp13.not.i205, label %land.lhs.true15.i210, label %while.body.i206.if.end22.i222_crit_edge, !dbg !686

while.body.i206.if.end22.i222_crit_edge:          ; preds = %while.body.i206
  call void @__sanitizer_cov_trace_pc() #16, !dbg !686
  br label %if.end22.i222, !dbg !686

land.lhs.true15.i210:                             ; preds = %while.body.i206
  %gcov_ctr24.i207 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 2), align 16, !dbg !687
  %87 = add i64 %gcov_ctr24.i207, 1, !dbg !687
  store i64 %87, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 2), align 16, !dbg !687
  %88 = ptrtoint ptr %incdec.ptr37.i202 to i32, !dbg !688
  call void @__asan_load1_noabort(i32 %88), !dbg !688
  %89 = load i8, ptr %incdec.ptr37.i202, align 1, !dbg !688
  %gcov_ctr.i.i208 = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %90 = add i64 %gcov_ctr.i.i208, 1
  store i64 %90, ptr @__llvm_gcov_ctr.44, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %89), !dbg !689
  %cmp.i.i209 = icmp ugt i8 %89, 47, !dbg !689
  br i1 %cmp.i.i209, label %isdigit.exit.i213, label %land.lhs.true15.i210.land.lhs.true17.i216_crit_edge, !dbg !691

land.lhs.true15.i210.land.lhs.true17.i216_crit_edge: ; preds = %land.lhs.true15.i210
  call void @__sanitizer_cov_trace_pc() #16, !dbg !691
  br label %land.lhs.true17.i216, !dbg !691

isdigit.exit.i213:                                ; preds = %land.lhs.true15.i210
  %gcov_ctr2.i.i211 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !692
  %91 = add i64 %gcov_ctr2.i.i211, 1, !dbg !692
  store i64 %91, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !692
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %89), !dbg !693
  %cmp1.i.i212 = icmp ugt i8 %89, 57, !dbg !693
  br i1 %cmp1.i.i212, label %isdigit.exit.i213.land.lhs.true17.i216_crit_edge, label %isdigit.exit.i213.if.end22.i222_crit_edge, !dbg !694

isdigit.exit.i213.if.end22.i222_crit_edge:        ; preds = %isdigit.exit.i213
  call void @__sanitizer_cov_trace_pc() #16, !dbg !694
  br label %if.end22.i222, !dbg !694

isdigit.exit.i213.land.lhs.true17.i216_crit_edge: ; preds = %isdigit.exit.i213
  call void @__sanitizer_cov_trace_pc() #16, !dbg !694
  br label %land.lhs.true17.i216, !dbg !694

land.lhs.true17.i216:                             ; preds = %isdigit.exit.i213.land.lhs.true17.i216_crit_edge, %land.lhs.true15.i210.land.lhs.true17.i216_crit_edge
  %gcov_ctr25.i214 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 3), align 8, !dbg !695
  %92 = add i64 %gcov_ctr25.i214, 1, !dbg !695
  store i64 %92, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 3), align 8, !dbg !695
  %93 = ptrtoint ptr %incdec.ptr37.i202 to i32, !dbg !696
  call void @__asan_load1_noabort(i32 %93), !dbg !696
  %94 = load i8, ptr %incdec.ptr37.i202, align 1, !dbg !696
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %94), !dbg !697
  %cmp19.not.i215 = icmp eq i8 %94, 95, !dbg !697
  br i1 %cmp19.not.i215, label %land.lhs.true17.i216.if.end22.i222_crit_edge, label %if.then21.i218, !dbg !698

land.lhs.true17.i216.if.end22.i222_crit_edge:     ; preds = %land.lhs.true17.i216
  call void @__sanitizer_cov_trace_pc() #16, !dbg !698
  br label %if.end22.i222, !dbg !698

if.then21.i218:                                   ; preds = %land.lhs.true17.i216
  call void @__sanitizer_cov_trace_pc() #16, !dbg !699
  %gcov_ctr26.i217 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 4), align 16, !dbg !699
  %95 = add i64 %gcov_ctr26.i217, 1, !dbg !699
  store i64 %95, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 4), align 16, !dbg !699
  br label %error, !dbg !699

if.end22.i222:                                    ; preds = %land.lhs.true17.i216.if.end22.i222_crit_edge, %isdigit.exit.i213.if.end22.i222_crit_edge, %while.body.i206.if.end22.i222_crit_edge
  %gcov_ctr27.i219 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 5), align 8, !dbg !684
  %96 = add i64 %gcov_ctr27.i219, 1, !dbg !684
  store i64 %96, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 5), align 8, !dbg !684
  %incdec.ptr.i220 = getelementptr i8, ptr %incdec.ptr37.i202, i32 1, !dbg !681
  %97 = ptrtoint ptr %incdec.ptr.i220 to i32, !dbg !682
  call void @__asan_load1_noabort(i32 %97), !dbg !682
  %98 = load i8, ptr %incdec.ptr.i220, align 1, !dbg !682
  %cmp7.not.i221 = icmp eq i8 %98, 0, !dbg !683
  br i1 %cmp7.not.i221, label %if.end22.i222.if.end22_crit_edge, label %if.end22.i222.while.body.i206_crit_edge, !dbg !684, !llvm.loop !700

if.end22.i222.while.body.i206_crit_edge:          ; preds = %if.end22.i222
  call void @__sanitizer_cov_trace_pc() #16, !dbg !684
  br label %while.body.i206, !dbg !684

if.end22.i222.if.end22_crit_edge:                 ; preds = %if.end22.i222
  call void @__sanitizer_cov_trace_pc() #16, !dbg !684
  br label %if.end22, !dbg !684

if.end22:                                         ; preds = %if.end22.i222.if.end22_crit_edge, %if.end.i201.if.end22_crit_edge
  %gcov_ctr28.i223 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 6), align 16, !dbg !702
  %99 = add i64 %gcov_ctr28.i223, 1, !dbg !702
  store i64 %99, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 6), align 16, !dbg !702
  %arrayidx23 = getelementptr ptr, ptr %argv, i32 1, !dbg !703
  %100 = ptrtoint ptr %arrayidx23 to i32, !dbg !703
  call void @__asan_load4_noabort(i32 %100), !dbg !703
  %101 = load ptr, ptr %arrayidx23, align 4, !dbg !703
  %102 = ptrtoint ptr %sys_event to i32, !dbg !704
  call void @__asan_store4_noabort(i32 %102), !dbg !704
  store ptr %101, ptr %sys_event, align 4, !dbg !704
  %call29 = call i32 @traceprobe_parse_event_name(ptr noundef nonnull %sys_event, ptr noundef nonnull %sys_name, ptr noundef nonnull %buf2, i32 noundef 0) #17, !dbg !705
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29), !dbg !706
  %tobool30.not = icmp eq i32 %call29, 0, !dbg !706
  br i1 %tobool30.not, label %lor.lhs.false31, label %if.end22.if.then33_crit_edge, !dbg !707

if.end22.if.then33_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16, !dbg !707
  br label %if.then33, !dbg !707

lor.lhs.false31:                                  ; preds = %if.end22
  %gcov_ctr133 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 6), align 16, !dbg !708
  %103 = add i64 %gcov_ctr133, 1, !dbg !708
  store i64 %103, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 6), align 16, !dbg !708
  %104 = ptrtoint ptr %sys_name to i32, !dbg !708
  call void @__asan_load4_noabort(i32 %104), !dbg !708
  %105 = load ptr, ptr %sys_name, align 4, !dbg !708
  %tobool32.not = icmp eq ptr %105, null, !dbg !708
  br i1 %tobool32.not, label %lor.lhs.false31.if.then33_crit_edge, label %if.end34, !dbg !706

lor.lhs.false31.if.then33_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #16, !dbg !706
  br label %if.then33, !dbg !706

if.then33:                                        ; preds = %lor.lhs.false31.if.then33_crit_edge, %if.end22.if.then33_crit_edge
  %gcov_ctr134 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 7), align 8, !dbg !709
  %106 = add i64 %gcov_ctr134, 1, !dbg !709
  store i64 %106, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 7), align 8, !dbg !709
  br label %error, !dbg !709

if.end34:                                         ; preds = %lor.lhs.false31
  %107 = ptrtoint ptr %sys_event to i32, !dbg !710
  call void @__asan_load4_noabort(i32 %107), !dbg !710
  %108 = load ptr, ptr %sys_event, align 4, !dbg !710
  %call35 = call fastcc zeroext i1 @is_good_name(ptr noundef %108), !dbg !711
  br i1 %call35, label %lor.lhs.false36, label %if.end34.if.then38_crit_edge, !dbg !712

if.end34.if.then38_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16, !dbg !712
  br label %if.then38, !dbg !712

lor.lhs.false36:                                  ; preds = %if.end34
  %gcov_ctr135 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 8), align 16, !dbg !713
  %109 = add i64 %gcov_ctr135, 1, !dbg !713
  store i64 %109, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 8), align 16, !dbg !713
  %110 = ptrtoint ptr %sys_name to i32, !dbg !713
  call void @__asan_load4_noabort(i32 %110), !dbg !713
  %111 = load ptr, ptr %sys_name, align 4, !dbg !713
  %call37 = call fastcc zeroext i1 @is_good_name(ptr noundef %111), !dbg !714
  br i1 %call37, label %if.end39, label %lor.lhs.false36.if.then38_crit_edge, !dbg !715

lor.lhs.false36.if.then38_crit_edge:              ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #16, !dbg !715
  br label %if.then38, !dbg !715

if.then38:                                        ; preds = %lor.lhs.false36.if.then38_crit_edge, %if.end34.if.then38_crit_edge
  %gcov_ctr136 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 9), align 8, !dbg !716
  %112 = add i64 %gcov_ctr136, 1, !dbg !716
  store i64 %112, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 9), align 8, !dbg !716
  br label %error, !dbg !716

if.end39:                                         ; preds = %lor.lhs.false36
  call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #17, !dbg !717
  %113 = ptrtoint ptr %sys_name to i32, !dbg !718
  call void @__asan_load4_noabort(i32 %113), !dbg !718
  %114 = load ptr, ptr %sys_name, align 4, !dbg !718
  %115 = ptrtoint ptr %sys_event to i32, !dbg !719
  call void @__asan_load4_noabort(i32 %115), !dbg !719
  %116 = load ptr, ptr %sys_event, align 4, !dbg !719
  %call40 = call fastcc ptr @find_and_get_event(ptr noundef %114, ptr noundef %116), !dbg !720
  %117 = ptrtoint ptr %group to i32, !dbg !721
  call void @__asan_load4_noabort(i32 %117), !dbg !721
  %118 = load ptr, ptr %group, align 4, !dbg !721
  %119 = ptrtoint ptr %event to i32, !dbg !722
  call void @__asan_load4_noabort(i32 %119), !dbg !722
  %120 = load ptr, ptr %event, align 4, !dbg !722
  %sub = add i32 %argc, -2, !dbg !723
  %call41 = call fastcc ptr @alloc_event_probe(ptr noundef %118, ptr noundef %120, ptr noundef %call40, i32 noundef %sub), !dbg !724
  call void @mutex_unlock(ptr noundef nonnull @event_mutex) #17, !dbg !725
  %gcov_ctr.i227 = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %121 = add i64 %gcov_ctr.i227, 1
  store i64 %121, ptr @__llvm_gcov_ctr.38, align 8
  %cmp.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr), !dbg !726
  br i1 %cmp.i, label %if.then43, label %if.end89, !dbg !730

if.then43:                                        ; preds = %if.end39
  %gcov_ctr.i228 = load i64, ptr @__llvm_gcov_ctr.39, align 8
  %122 = add i64 %gcov_ctr.i228, 1
  store i64 %122, ptr @__llvm_gcov_ctr.39, align 8
  %123 = ptrtoint ptr %call41 to i32, !dbg !731
  %cmp45.not = icmp eq ptr %call41, inttoptr (i32 -12 to ptr), !dbg !734
  br i1 %cmp45.not, label %if.then43.if.end81_crit_edge, label %land.rhs, !dbg !734

if.then43.if.end81_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16, !dbg !734
  br label %if.end81, !dbg !734

land.rhs:                                         ; preds = %if.then43
  %gcov_ctr137 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 10), align 16, !dbg !734
  %124 = add i64 %gcov_ctr137, 1, !dbg !734
  store i64 %124, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 10), align 16, !dbg !734
  %cmp47.not = icmp eq ptr %call41, inttoptr (i32 -19 to ptr), !dbg !734
  br i1 %cmp47.not, label %land.rhs.if.end81_crit_edge, label %land.rhs52, !dbg !734

land.rhs.if.end81_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !734
  br label %if.end81, !dbg !734

land.rhs52:                                       ; preds = %land.rhs
  %gcov_ctr138 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 11), align 8, !dbg !734
  %125 = add i64 %gcov_ctr138, 1, !dbg !734
  store i64 %125, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 11), align 8, !dbg !734
  %.b184 = load i1, ptr @__trace_eprobe_create.__already_done, align 1, !dbg !734
  br i1 %.b184, label %land.rhs52.if.end81_crit_edge, label %if.then59, !dbg !734, !prof !735

land.rhs52.if.end81_crit_edge:                    ; preds = %land.rhs52
  call void @__sanitizer_cov_trace_pc() #16, !dbg !734
  br label %if.end81, !dbg !734

if.then59:                                        ; preds = %land.rhs52
  call void @__sanitizer_cov_trace_pc() #16, !dbg !734
  store i1 true, ptr @__trace_eprobe_create.__already_done, align 1, !dbg !734
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 900, i32 noundef 9, ptr noundef null) #17, !dbg !734
  %gcov_ctr139 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 12), align 16, !dbg !734
  %126 = add i64 %gcov_ctr139, 1, !dbg !734
  store i64 %126, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 12), align 16, !dbg !734
  %gcov_ctr140 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 13), align 8, !dbg !734
  %127 = add i64 %gcov_ctr140, 1, !dbg !734
  store i64 %127, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 13), align 8, !dbg !734
  br label %if.end81, !dbg !734

if.end81:                                         ; preds = %if.then59, %land.rhs52.if.end81_crit_edge, %land.rhs.if.end81_crit_edge, %if.then43.if.end81_crit_edge
  %gcov_ctr141 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 14), align 16, !dbg !734
  %128 = add i64 %gcov_ctr141, 1, !dbg !734
  store i64 %128, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 14), align 16, !dbg !734
  br label %error, !dbg !736

if.end89:                                         ; preds = %if.end39
  %add.ptr = getelementptr ptr, ptr %argv, i32 2, !dbg !737
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub), !dbg !738
  %cmp91235 = icmp sgt i32 %sub, 0, !dbg !738
  br i1 %cmp91235, label %if.end89.land.rhs93_crit_edge, label %if.end89.for.end_crit_edge, !dbg !739

if.end89.for.end_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #16, !dbg !739
  br label %for.end, !dbg !739

if.end89.land.rhs93_crit_edge:                    ; preds = %if.end89
  br label %land.rhs93, !dbg !739

land.rhs93:                                       ; preds = %if.end100.land.rhs93_crit_edge, %if.end89.land.rhs93_crit_edge
  %i.0236 = phi i32 [ %inc, %if.end100.land.rhs93_crit_edge ], [ 0, %if.end89.land.rhs93_crit_edge ]
  %gcov_ctr142 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 15), align 8, !dbg !740
  %129 = add i64 %gcov_ctr142, 1, !dbg !740
  store i64 %129, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 15), align 8, !dbg !740
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %i.0236), !dbg !741
  %exitcond.not = icmp eq i32 %i.0236, 128, !dbg !741
  br i1 %exitcond.not, label %land.rhs93.for.end_crit_edge, label %for.body, !dbg !742

land.rhs93.for.end_crit_edge:                     ; preds = %land.rhs93
  call void @__sanitizer_cov_trace_pc() #16, !dbg !742
  br label %for.end, !dbg !742

for.body:                                         ; preds = %land.rhs93
  %add = add nuw nsw i32 %i.0236, 2, !dbg !743
  call void @trace_probe_log_set_index(i32 noundef %add) #17, !dbg !744
  %call97 = call fastcc i32 @trace_eprobe_tp_update_arg(ptr noundef %call41, ptr noundef %add.ptr, i32 noundef %i.0236), !dbg !745
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97), !dbg !746
  %tobool98.not = icmp eq i32 %call97, 0, !dbg !746
  br i1 %tobool98.not, label %if.end100, label %if.then99, !dbg !746

if.then99:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !747
  %gcov_ctr144 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 17), align 8, !dbg !747
  %130 = add i64 %gcov_ctr144, 1, !dbg !747
  store i64 %130, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 17), align 8, !dbg !747
  br label %error, !dbg !747

if.end100:                                        ; preds = %for.body
  %gcov_ctr143 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 16), align 16, !dbg !748
  %131 = add i64 %gcov_ctr143, 1, !dbg !748
  store i64 %131, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 16), align 16, !dbg !748
  %inc = add nuw nsw i32 %i.0236, 1, !dbg !749
  %exitcond237.not = icmp eq i32 %inc, %sub, !dbg !738
  br i1 %exitcond237.not, label %if.end100.for.end_crit_edge, label %if.end100.land.rhs93_crit_edge, !dbg !739, !llvm.loop !750

if.end100.land.rhs93_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16, !dbg !739
  br label %land.rhs93, !dbg !739

if.end100.for.end_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16, !dbg !739
  br label %for.end, !dbg !739

for.end:                                          ; preds = %if.end100.for.end_crit_edge, %land.rhs93.for.end_crit_edge, %if.end89.for.end_crit_edge
  %tp = getelementptr inbounds %struct.trace_eprobe, ptr %call41, i32 0, i32 4, !dbg !751
  %call101 = call i32 @traceprobe_set_print_fmt(ptr noundef %tp, i32 noundef 2) #17, !dbg !752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101), !dbg !753
  %cmp102 = icmp slt i32 %call101, 0, !dbg !753
  br i1 %cmp102, label %if.then104, label %if.end105, !dbg !754

if.then104:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !755
  %gcov_ctr145 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 18), align 16, !dbg !755
  %132 = add i64 %gcov_ctr145, 1, !dbg !755
  store i64 %132, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 18), align 16, !dbg !755
  br label %error, !dbg !755

if.end105:                                        ; preds = %for.end
  %gcov_ctr.i229 = load i64, ptr @__llvm_gcov_ctr.41, align 8
  %133 = add i64 %gcov_ctr.i229, 1
  store i64 %133, ptr @__llvm_gcov_ctr.41, align 8
  %gcov_ctr.i.i230 = load i64, ptr @__llvm_gcov_ctr.63, align 8
  %134 = add i64 %gcov_ctr.i.i230, 1
  store i64 %134, ptr @__llvm_gcov_ctr.63, align 8
  %event.i.i = getelementptr inbounds %struct.trace_eprobe, ptr %call41, i32 0, i32 4, i32 1, !dbg !756
  %135 = ptrtoint ptr %event.i.i to i32, !dbg !756
  call void @__asan_load4_noabort(i32 %135), !dbg !756
  %136 = load ptr, ptr %event.i.i, align 4, !dbg !756
  %flags.i = getelementptr inbounds %struct.trace_probe_event, ptr %136, i32 0, i32 2, i32 8, !dbg !761
  %137 = ptrtoint ptr %flags.i to i32, !dbg !762
  call void @__asan_store4_noabort(i32 %137), !dbg !762
  store i32 256, ptr %flags.i, align 4, !dbg !762
  %funcs.i = getelementptr inbounds %struct.trace_probe_event, ptr %136, i32 0, i32 2, i32 3, i32 3, !dbg !763
  %138 = ptrtoint ptr %funcs.i to i32, !dbg !764
  call void @__asan_store4_noabort(i32 %138), !dbg !764
  store ptr @eprobe_funcs, ptr %funcs.i, align 4, !dbg !764
  %class.i = getelementptr inbounds %struct.trace_probe_event, ptr %136, i32 0, i32 2, i32 1, !dbg !765
  %139 = ptrtoint ptr %class.i to i32, !dbg !765
  call void @__asan_load4_noabort(i32 %139), !dbg !765
  %140 = load ptr, ptr %class.i, align 4, !dbg !765
  %fields_array.i = getelementptr inbounds %struct.trace_event_class, ptr %140, i32 0, i32 4, !dbg !766
  %141 = ptrtoint ptr %fields_array.i to i32, !dbg !767
  call void @__asan_store4_noabort(i32 %141), !dbg !767
  store ptr @eprobe_fields_array, ptr %fields_array.i, align 4, !dbg !767
  %142 = load ptr, ptr %class.i, align 4, !dbg !768
  %reg.i = getelementptr inbounds %struct.trace_event_class, ptr %142, i32 0, i32 3, !dbg !769
  %143 = ptrtoint ptr %reg.i to i32, !dbg !770
  call void @__asan_store4_noabort(i32 %143), !dbg !770
  store ptr @eprobe_register, ptr %reg.i, align 4, !dbg !770
  call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #17, !dbg !771
  %call107 = call i32 @trace_probe_register_event_call(ptr noundef %tp) #17, !dbg !772
  %144 = zext i32 %call107 to i64, !dbg !773
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.117), !dbg !773
  switch i32 %call107, label %if.end105.if.end113_crit_edge [
    i32 0, label %if.end114
    i32 -17, label %if.then112
  ], !dbg !773

if.end105.if.end113_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16, !dbg !773
  br label %if.end113, !dbg !773

if.then112:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16, !dbg !774
  %gcov_ctr146 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 19), align 8, !dbg !774
  %145 = add i64 %gcov_ctr146, 1, !dbg !774
  store i64 %145, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 19), align 8, !dbg !774
  call void @trace_probe_log_set_index(i32 noundef 0) #17, !dbg !774
  call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 18) #17, !dbg !775
  br label %if.end113, !dbg !776

if.end113:                                        ; preds = %if.then112, %if.end105.if.end113_crit_edge
  %gcov_ctr147 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 20), align 16, !dbg !777
  %146 = add i64 %gcov_ctr147, 1, !dbg !777
  store i64 %146, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 20), align 16, !dbg !777
  call void @mutex_unlock(ptr noundef nonnull @event_mutex) #17, !dbg !777
  br label %error, !dbg !778

if.end114:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16, !dbg !779
  %gcov_ctr148 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 21), align 8, !dbg !779
  %147 = add i64 %gcov_ctr148, 1, !dbg !779
  store i64 %147, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 21), align 8, !dbg !779
  %devent = getelementptr inbounds %struct.trace_eprobe, ptr %call41, i32 0, i32 3, !dbg !780
  %148 = ptrtoint ptr %event.i.i to i32, !dbg !781
  call void @__asan_load4_noabort(i32 %148), !dbg !781
  %149 = load ptr, ptr %event.i.i, align 4, !dbg !781
  %call117 = getelementptr inbounds %struct.trace_probe_event, ptr %149, i32 0, i32 2, !dbg !782
  %call118 = call fastcc i32 @dyn_event_add(ptr noundef %devent, ptr noundef %call117), !dbg !783
  call void @mutex_unlock(ptr noundef nonnull @event_mutex) #17, !dbg !784
  br label %cleanup, !dbg !785

error:                                            ; preds = %if.end113, %if.then104, %if.then99, %if.end81, %if.then38, %if.then33, %if.then21.i218, %if.then.i198, %if.then21.i, %if.then.i188, %if.then10
  %ep.0 = phi ptr [ null, %if.end81 ], [ %call41, %if.then99 ], [ %call41, %if.then104 ], [ %call41, %if.end113 ], [ null, %if.then38 ], [ null, %if.then33 ], [ null, %if.then10 ], [ null, %if.then21.i ], [ null, %if.then.i188 ], [ null, %if.then21.i218 ], [ null, %if.then.i198 ], !dbg !786
  %ret.0 = phi i32 [ %123, %if.end81 ], [ %call97, %if.then99 ], [ %call101, %if.then104 ], [ %call107, %if.end113 ], [ -22, %if.then38 ], [ -22, %if.then33 ], [ -22, %if.then10 ], [ -22, %if.then21.i ], [ -22, %if.then.i188 ], [ -22, %if.then21.i218 ], [ -22, %if.then.i198 ], !dbg !786
  call fastcc void @trace_event_probe_cleanup(ptr noundef %ep.0), !dbg !787
  br label %cleanup, !dbg !788

cleanup:                                          ; preds = %error, %if.end114, %if.then
  %retval.0 = phi i32 [ -125, %if.then ], [ %ret.0, %error ], [ %call118, %if.end114 ], !dbg !786
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf2) #17, !dbg !789
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf1) #17, !dbg !789
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sys_name) #17, !dbg !789
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sys_event) #17, !dbg !789
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group) #17, !dbg !789
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %event) #17, !dbg !789
  ret i32 %retval.0, !dbg !789
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_probe_log_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @traceprobe_parse_event_name(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_good_name(ptr nocapture noundef readonly %name) unnamed_addr #7 align 64 !dbg !640 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !790
  %0 = ptrtoint ptr %name to i32, !dbg !791
  call void @__asan_load1_noabort(i32 %0), !dbg !791
  %1 = load i8, ptr %name, align 1, !dbg !791
  %conv = zext i8 %1 to i32, !dbg !791
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv, !dbg !791
  %2 = ptrtoint ptr %arrayidx to i32, !dbg !791
  call void @__asan_load1_noabort(i32 %2), !dbg !791
  %3 = load i8, ptr %arrayidx, align 1, !dbg !791
  %4 = and i8 %3, 3, !dbg !791
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4), !dbg !791
  %cmp.not = icmp eq i8 %4, 0, !dbg !791
  br i1 %cmp.not, label %land.lhs.true, label %entry.if.end_crit_edge, !dbg !792

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !792
  br label %if.end, !dbg !792

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.35, align 16, !dbg !793
  %5 = add i64 %gcov_ctr, 1, !dbg !793
  store i64 %5, ptr @__llvm_gcov_ctr.35, align 16, !dbg !793
  %6 = ptrtoint ptr %name to i32, !dbg !794
  call void @__asan_load1_noabort(i32 %6), !dbg !794
  %7 = load i8, ptr %name, align 1, !dbg !794
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %7), !dbg !795
  %cmp4.not = icmp eq i8 %7, 95, !dbg !795
  br i1 %cmp4.not, label %land.lhs.true.if.end_crit_edge, label %if.then, !dbg !796

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16, !dbg !796
  br label %if.end, !dbg !796

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16, !dbg !797
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 1), align 8, !dbg !797
  %8 = add i64 %gcov_ctr23, 1, !dbg !797
  store i64 %8, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 1), align 8, !dbg !797
  br label %return, !dbg !797

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %incdec.ptr35 = getelementptr i8, ptr %name, i32 1, !dbg !798
  %9 = ptrtoint ptr %incdec.ptr35 to i32, !dbg !799
  call void @__asan_load1_noabort(i32 %9), !dbg !799
  %10 = load i8, ptr %incdec.ptr35, align 1, !dbg !799
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10), !dbg !800
  %cmp7.not36 = icmp eq i8 %10, 0, !dbg !800
  br i1 %cmp7.not36, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge, !dbg !801

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body, !dbg !801

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !801
  br label %while.end, !dbg !801

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %if.end.while.body_crit_edge
  %11 = phi i8 [ %26, %if.end22.while.body_crit_edge ], [ %10, %if.end.while.body_crit_edge ]
  %incdec.ptr37 = phi ptr [ %incdec.ptr, %if.end22.while.body_crit_edge ], [ %incdec.ptr35, %if.end.while.body_crit_edge ]
  %conv6 = zext i8 %11 to i32, !dbg !799
  %arrayidx10 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv6, !dbg !802
  %12 = ptrtoint ptr %arrayidx10 to i32, !dbg !802
  call void @__asan_load1_noabort(i32 %12), !dbg !802
  %13 = load i8, ptr %arrayidx10, align 1, !dbg !802
  %14 = and i8 %13, 3, !dbg !802
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14), !dbg !802
  %cmp13.not = icmp eq i8 %14, 0, !dbg !802
  br i1 %cmp13.not, label %land.lhs.true15, label %while.body.if.end22_crit_edge, !dbg !803

while.body.if.end22_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !803
  br label %if.end22, !dbg !803

land.lhs.true15:                                  ; preds = %while.body
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 2), align 16, !dbg !804
  %15 = add i64 %gcov_ctr24, 1, !dbg !804
  store i64 %15, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 2), align 16, !dbg !804
  %16 = ptrtoint ptr %incdec.ptr37 to i32, !dbg !805
  call void @__asan_load1_noabort(i32 %16), !dbg !805
  %17 = load i8, ptr %incdec.ptr37, align 1, !dbg !805
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %18 = add i64 %gcov_ctr.i, 1
  store i64 %18, ptr @__llvm_gcov_ctr.44, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %17), !dbg !806
  %cmp.i = icmp ugt i8 %17, 47, !dbg !806
  br i1 %cmp.i, label %isdigit.exit, label %land.lhs.true15.land.lhs.true17_crit_edge, !dbg !808

land.lhs.true15.land.lhs.true17_crit_edge:        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16, !dbg !808
  br label %land.lhs.true17, !dbg !808

isdigit.exit:                                     ; preds = %land.lhs.true15
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !809
  %19 = add i64 %gcov_ctr2.i, 1, !dbg !809
  store i64 %19, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !809
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %17), !dbg !810
  %cmp1.i = icmp ugt i8 %17, 57, !dbg !810
  br i1 %cmp1.i, label %isdigit.exit.land.lhs.true17_crit_edge, label %isdigit.exit.if.end22_crit_edge, !dbg !811

isdigit.exit.if.end22_crit_edge:                  ; preds = %isdigit.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !811
  br label %if.end22, !dbg !811

isdigit.exit.land.lhs.true17_crit_edge:           ; preds = %isdigit.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !811
  br label %land.lhs.true17, !dbg !811

land.lhs.true17:                                  ; preds = %isdigit.exit.land.lhs.true17_crit_edge, %land.lhs.true15.land.lhs.true17_crit_edge
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 3), align 8, !dbg !812
  %20 = add i64 %gcov_ctr25, 1, !dbg !812
  store i64 %20, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 3), align 8, !dbg !812
  %21 = ptrtoint ptr %incdec.ptr37 to i32, !dbg !813
  call void @__asan_load1_noabort(i32 %21), !dbg !813
  %22 = load i8, ptr %incdec.ptr37, align 1, !dbg !813
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %22), !dbg !814
  %cmp19.not = icmp eq i8 %22, 95, !dbg !814
  br i1 %cmp19.not, label %land.lhs.true17.if.end22_crit_edge, label %if.then21, !dbg !815

land.lhs.true17.if.end22_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #16, !dbg !815
  br label %if.end22, !dbg !815

if.then21:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #16, !dbg !816
  %gcov_ctr26 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 4), align 16, !dbg !816
  %23 = add i64 %gcov_ctr26, 1, !dbg !816
  store i64 %23, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 4), align 16, !dbg !816
  br label %return, !dbg !816

if.end22:                                         ; preds = %land.lhs.true17.if.end22_crit_edge, %isdigit.exit.if.end22_crit_edge, %while.body.if.end22_crit_edge
  %gcov_ctr27 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 5), align 8, !dbg !801
  %24 = add i64 %gcov_ctr27, 1, !dbg !801
  store i64 %24, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 5), align 8, !dbg !801
  %incdec.ptr = getelementptr i8, ptr %incdec.ptr37, i32 1, !dbg !798
  %25 = ptrtoint ptr %incdec.ptr to i32, !dbg !799
  call void @__asan_load1_noabort(i32 %25), !dbg !799
  %26 = load i8, ptr %incdec.ptr, align 1, !dbg !799
  %cmp7.not = icmp eq i8 %26, 0, !dbg !800
  br i1 %cmp7.not, label %if.end22.while.end_crit_edge, label %if.end22.while.body_crit_edge, !dbg !801, !llvm.loop !817

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16, !dbg !801
  br label %while.body, !dbg !801

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16, !dbg !801
  br label %while.end, !dbg !801

while.end:                                        ; preds = %if.end22.while.end_crit_edge, %if.end.while.end_crit_edge
  %gcov_ctr28 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 6), align 16, !dbg !819
  %27 = add i64 %gcov_ctr28, 1, !dbg !819
  store i64 %27, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 6), align 16, !dbg !819
  br label %return, !dbg !819

return:                                           ; preds = %while.end, %if.then21, %if.then
  %retval.0 = phi i1 [ false, %if.then21 ], [ true, %while.end ], [ false, %if.then ], !dbg !820
  ret i1 %retval.0, !dbg !821
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_and_get_event(ptr nocapture noundef readonly %system, ptr nocapture noundef readonly %event_name) unnamed_addr #0 align 64 !dbg !822 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !823
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ftrace_events to i32)), !dbg !824
  %tp_event.050 = load ptr, ptr @ftrace_events, align 4, !dbg !824
  %cmp.not51 = icmp eq ptr %tp_event.050, @ftrace_events, !dbg !824
  br i1 %cmp.not51, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge, !dbg !824

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body, !dbg !824

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !824
  br label %for.end, !dbg !824

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %tp_event.052 = phi ptr [ %tp_event.0, %for.inc.for.body_crit_edge ], [ %tp_event.050, %entry.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.trace_event_call, ptr %tp_event.052, i32 0, i32 8, !dbg !825
  %0 = ptrtoint ptr %flags to i32, !dbg !825
  call void @__asan_load4_noabort(i32 %0), !dbg !825
  %1 = load i32, ptr %flags, align 4, !dbg !825
  %and = and i32 %1, 456, !dbg !826
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !826
  %tobool.not = icmp eq i32 %and, 0, !dbg !826
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge, !dbg !827

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !827
  br label %for.inc, !dbg !827

if.end:                                           ; preds = %for.body
  %class = getelementptr inbounds %struct.trace_event_call, ptr %tp_event.052, i32 0, i32 1, !dbg !828
  %2 = ptrtoint ptr %class to i32, !dbg !828
  call void @__asan_load4_noabort(i32 %2), !dbg !828
  %3 = load ptr, ptr %class, align 4, !dbg !828
  %4 = ptrtoint ptr %3 to i32, !dbg !829
  call void @__asan_load4_noabort(i32 %4), !dbg !829
  %5 = load ptr, ptr %3, align 4, !dbg !829
  %tobool2.not = icmp eq ptr %5, null, !dbg !830
  br i1 %tobool2.not, label %if.end.for.inc_crit_edge, label %lor.lhs.false, !dbg !831

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !831
  br label %for.inc, !dbg !831

lor.lhs.false:                                    ; preds = %if.end
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !832
  %6 = add i64 %gcov_ctr24, 1, !dbg !832
  store i64 %6, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !832
  %7 = ptrtoint ptr %class to i32, !dbg !833
  call void @__asan_load4_noabort(i32 %7), !dbg !833
  %8 = load ptr, ptr %class, align 4, !dbg !833
  %9 = ptrtoint ptr %8 to i32, !dbg !834
  call void @__asan_load4_noabort(i32 %9), !dbg !834
  %10 = load ptr, ptr %8, align 4, !dbg !834
  %call = tail call i32 @strcmp(ptr noundef %system, ptr noundef %10) #19, !dbg !835
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !835
  %tobool5.not = icmp eq i32 %call, 0, !dbg !835
  br i1 %tobool5.not, label %if.end7, label %lor.lhs.false.for.inc_crit_edge, !dbg !836

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16, !dbg !836
  br label %for.inc, !dbg !836

if.end7:                                          ; preds = %lor.lhs.false
  %and.i = and i32 %1, 16, !dbg !837
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !837
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !837
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !839

if.then.i:                                        ; preds = %if.end7
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %tp_event.052, i32 0, i32 2, !dbg !840
  %12 = ptrtoint ptr %11 to i32, !dbg !840
  call void @__asan_load4_noabort(i32 %12), !dbg !840
  %13 = load ptr, ptr %11, align 4, !dbg !840
  %tobool1.not.i = icmp eq ptr %13, null, !dbg !841
  br i1 %tobool1.not.i, label %trace_event_name.exit.thread, label %cond.true.i, !dbg !841

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !842
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !842
  %14 = add i64 %gcov_ctr2.i, 1, !dbg !842
  store i64 %14, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !842
  %15 = ptrtoint ptr %11 to i32, !dbg !843
  call void @__asan_load4_noabort(i32 %15), !dbg !843
  %16 = load ptr, ptr %11, align 4, !dbg !843
  br label %trace_event_name.exit, !dbg !841

trace_event_name.exit.thread:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !841
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.45, align 16, !dbg !841
  %17 = add i64 %gcov_ctr.i, 1, !dbg !841
  store i64 %17, ptr @__llvm_gcov_ctr.45, align 16, !dbg !841
  br label %for.inc, !dbg !844

if.else.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16, !dbg !845
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 2), align 16, !dbg !845
  %18 = add i64 %gcov_ctr3.i, 1, !dbg !845
  store i64 %18, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 2), align 16, !dbg !845
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %tp_event.052, i32 0, i32 2, !dbg !846
  br label %trace_event_name.exit, !dbg !847

trace_event_name.exit:                            ; preds = %if.else.i, %cond.true.i
  %retval.0.i.in = phi ptr [ %19, %if.else.i ], [ %16, %cond.true.i ]
  %20 = ptrtoint ptr %retval.0.i.in to i32, !dbg !848
  call void @__asan_load4_noabort(i32 %20), !dbg !848
  %retval.0.i = load ptr, ptr %retval.0.i.in, align 4, !dbg !848
  %tobool9.not = icmp eq ptr %retval.0.i, null, !dbg !849
  br i1 %tobool9.not, label %trace_event_name.exit.for.inc_crit_edge, label %lor.lhs.false10, !dbg !844

trace_event_name.exit.for.inc_crit_edge:          ; preds = %trace_event_name.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !844
  br label %for.inc, !dbg !844

lor.lhs.false10:                                  ; preds = %trace_event_name.exit
  %gcov_ctr26 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 4), align 16, !dbg !850
  %21 = add i64 %gcov_ctr26, 1, !dbg !850
  store i64 %21, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 4), align 16, !dbg !850
  %call11 = tail call i32 @strcmp(ptr noundef %event_name, ptr noundef nonnull %retval.0.i) #19, !dbg !851
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11), !dbg !851
  %tobool12.not = icmp eq i32 %call11, 0, !dbg !851
  br i1 %tobool12.not, label %if.end14, label %lor.lhs.false10.for.inc_crit_edge, !dbg !852

lor.lhs.false10.for.inc_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #16, !dbg !852
  br label %for.inc, !dbg !852

if.end14:                                         ; preds = %lor.lhs.false10
  %flags.le = getelementptr inbounds %struct.trace_event_call, ptr %tp_event.052, i32 0, i32 8, !dbg !825
  %22 = ptrtoint ptr %flags.le to i32, !dbg !853
  call void @__asan_load4_noabort(i32 %22), !dbg !853
  %23 = load i32, ptr %flags.le, align 4, !dbg !853
  %and.i39 = and i32 %23, 32, !dbg !856
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39), !dbg !856
  %tobool.not.i40 = icmp eq i32 %and.i39, 0, !dbg !856
  br i1 %tobool.not.i40, label %trace_event_try_get_ref.exit, label %if.then.i42, !dbg !857

if.then.i42:                                      ; preds = %if.end14
  %gcov_ctr.i41 = load i64, ptr @__llvm_gcov_ctr.46, align 8, !dbg !858
  %24 = add i64 %gcov_ctr.i41, 1, !dbg !858
  store i64 %24, ptr @__llvm_gcov_ctr.46, align 8, !dbg !858
  %call1.i = tail call zeroext i1 @trace_event_dyn_try_get_ref(ptr noundef %tp_event.052) #17, !dbg !859
  br i1 %call1.i, label %if.then.i42.if.end17_crit_edge, label %if.then.i42.if.then16_crit_edge, !dbg !860

if.then.i42.if.then16_crit_edge:                  ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #16, !dbg !860
  br label %if.then16, !dbg !860

if.then.i42.if.end17_crit_edge:                   ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #16, !dbg !860
  br label %if.end17, !dbg !860

trace_event_try_get_ref.exit:                     ; preds = %if.end14
  %gcov_ctr3.i43 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 1), align 8, !dbg !861
  %25 = add i64 %gcov_ctr3.i43, 1, !dbg !861
  store i64 %25, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 1), align 8, !dbg !861
  %26 = getelementptr inbounds %struct.trace_event_call, ptr %tp_event.052, i32 0, i32 6, !dbg !862
  %27 = ptrtoint ptr %26 to i32, !dbg !862
  call void @__asan_load4_noabort(i32 %27), !dbg !862
  %28 = load ptr, ptr %26, align 4, !dbg !862
  %call2.i = tail call zeroext i1 @try_module_get(ptr noundef %28) #17, !dbg !863
  br i1 %call2.i, label %trace_event_try_get_ref.exit.if.end17_crit_edge, label %trace_event_try_get_ref.exit.if.then16_crit_edge, !dbg !860

trace_event_try_get_ref.exit.if.then16_crit_edge: ; preds = %trace_event_try_get_ref.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !860
  br label %if.then16, !dbg !860

trace_event_try_get_ref.exit.if.end17_crit_edge:  ; preds = %trace_event_try_get_ref.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !860
  br label %if.end17, !dbg !860

if.then16:                                        ; preds = %trace_event_try_get_ref.exit.if.then16_crit_edge, %if.then.i42.if.then16_crit_edge
  %gcov_ctr28 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 6), align 16, !dbg !864
  %29 = add i64 %gcov_ctr28, 1, !dbg !864
  store i64 %29, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 6), align 16, !dbg !864
  br label %cleanup, !dbg !864

if.end17:                                         ; preds = %trace_event_try_get_ref.exit.if.end17_crit_edge, %if.then.i42.if.end17_crit_edge
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 7), align 8, !dbg !865
  %30 = add i64 %gcov_ctr29, 1, !dbg !865
  store i64 %30, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 7), align 8, !dbg !865
  br label %cleanup, !dbg !866

for.inc:                                          ; preds = %lor.lhs.false10.for.inc_crit_edge, %trace_event_name.exit.for.inc_crit_edge, %trace_event_name.exit.thread, %lor.lhs.false.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), %for.body.for.inc_crit_edge ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), %lor.lhs.false.for.inc_crit_edge ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), %if.end.for.inc_crit_edge ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 5), %trace_event_name.exit.thread ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 5), %lor.lhs.false10.for.inc_crit_edge ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 5), %trace_event_name.exit.for.inc_crit_edge ]
  %31 = ptrtoint ptr %.sink to i32, !dbg !867
  call void @__asan_load8_noabort(i32 %31), !dbg !867
  %gcov_ctr27 = load i64, ptr %.sink, align 8, !dbg !867
  %32 = add i64 %gcov_ctr27, 1, !dbg !867
  store i64 %32, ptr %.sink, align 8, !dbg !867
  %33 = ptrtoint ptr %tp_event.052 to i32, !dbg !824
  call void @__asan_load4_noabort(i32 %33), !dbg !824
  %tp_event.0 = load ptr, ptr %tp_event.052, align 4, !dbg !824
  %cmp.not = icmp eq ptr %tp_event.0, @ftrace_events, !dbg !824
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !824, !llvm.loop !868

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !824
  br label %for.body, !dbg !824

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !824
  br label %for.end, !dbg !824

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.36, align 16, !dbg !870
  %34 = add i64 %gcov_ctr, 1, !dbg !870
  store i64 %34, ptr @__llvm_gcov_ctr.36, align 16, !dbg !870
  br label %cleanup, !dbg !870

cleanup:                                          ; preds = %for.end, %if.end17, %if.then16
  %retval.0 = phi ptr [ %tp_event.052, %if.end17 ], [ null, %if.then16 ], [ null, %for.end ], !dbg !867
  ret ptr %retval.0, !dbg !871
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_event_probe(ptr noundef %group, ptr noundef %this_event, ptr noundef %event, i32 noundef %nargs) unnamed_addr #0 align 64 !dbg !872 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !873
  %tobool.not = icmp eq ptr %event, null, !dbg !874
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !875

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !876
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.37, align 16, !dbg !876
  %0 = add i64 %gcov_ctr, 1, !dbg !876
  store i64 %0, ptr @__llvm_gcov_ctr.37, align 16, !dbg !876
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.47, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.47, align 8
  br label %cleanup, !dbg !877

if.end:                                           ; preds = %entry
  %class = getelementptr inbounds %struct.trace_event_call, ptr %event, i32 0, i32 1, !dbg !878
  %2 = ptrtoint ptr %class to i32, !dbg !878
  call void @__asan_load4_noabort(i32 %2), !dbg !878
  %3 = load ptr, ptr %class, align 4, !dbg !878
  %4 = ptrtoint ptr %3 to i32, !dbg !879
  call void @__asan_load4_noabort(i32 %4), !dbg !879
  %5 = load ptr, ptr %3, align 4, !dbg !879
  %flags.i = getelementptr inbounds %struct.trace_event_call, ptr %event, i32 0, i32 8, !dbg !880
  %6 = ptrtoint ptr %flags.i to i32, !dbg !880
  call void @__asan_load4_noabort(i32 %6), !dbg !880
  %7 = load i32, ptr %flags.i, align 4, !dbg !880
  %and.i = and i32 %7, 16, !dbg !882
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !882
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !882
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !883

if.then.i:                                        ; preds = %if.end
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %event, i32 0, i32 2, !dbg !884
  %9 = ptrtoint ptr %8 to i32, !dbg !884
  call void @__asan_load4_noabort(i32 %9), !dbg !884
  %10 = load ptr, ptr %8, align 4, !dbg !884
  %tobool1.not.i = icmp eq ptr %10, null, !dbg !885
  br i1 %tobool1.not.i, label %cond.false.i, label %cond.true.i, !dbg !885

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !886
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !886
  %11 = add i64 %gcov_ctr2.i, 1, !dbg !886
  store i64 %11, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !886
  %12 = ptrtoint ptr %8 to i32, !dbg !887
  call void @__asan_load4_noabort(i32 %12), !dbg !887
  %13 = load ptr, ptr %8, align 4, !dbg !887
  %14 = ptrtoint ptr %13 to i32, !dbg !888
  call void @__asan_load4_noabort(i32 %14), !dbg !888
  %15 = load ptr, ptr %13, align 4, !dbg !888
  br label %trace_event_name.exit, !dbg !885

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !885
  %gcov_ctr.i46 = load i64, ptr @__llvm_gcov_ctr.45, align 16, !dbg !885
  %16 = add i64 %gcov_ctr.i46, 1, !dbg !885
  store i64 %16, ptr @__llvm_gcov_ctr.45, align 16, !dbg !885
  br label %trace_event_name.exit, !dbg !885

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !889
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 2), align 16, !dbg !889
  %17 = add i64 %gcov_ctr3.i, 1, !dbg !889
  store i64 %17, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 2), align 16, !dbg !889
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %event, i32 0, i32 2, !dbg !890
  %19 = ptrtoint ptr %18 to i32, !dbg !890
  call void @__asan_load4_noabort(i32 %19), !dbg !890
  %20 = load ptr, ptr %18, align 4, !dbg !890
  br label %trace_event_name.exit, !dbg !891

trace_event_name.exit:                            ; preds = %if.else.i, %cond.false.i, %cond.true.i
  %retval.0.i = phi ptr [ %20, %if.else.i ], [ %15, %cond.true.i ], [ null, %cond.false.i ], !dbg !892
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nargs, i32 32) #17, !dbg !893
  %22 = extractvalue { i32, i1 } %21, 1, !dbg !893
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.59, align 8
  %23 = add i64 %gcov_ctr.i.i, 1
  store i64 %23, ptr @__llvm_gcov_ctr.59, align 8
  br i1 %22, label %if.then.i48, label %if.end.i, !dbg !893

if.then.i48:                                      ; preds = %trace_event_name.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !897
  %gcov_ctr.i47 = load i64, ptr @__llvm_gcov_ctr.49, align 16, !dbg !897
  %24 = add i64 %gcov_ctr.i47, 1, !dbg !897
  store i64 %24, ptr @__llvm_gcov_ctr.49, align 16, !dbg !897
  br label %__ab_c_size.exit, !dbg !897

if.end.i:                                         ; preds = %trace_event_name.exit
  %25 = extractvalue { i32, i1 } %21, 0, !dbg !893
  %26 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %25, i32 44) #17, !dbg !898
  %27 = extractvalue { i32, i1 } %26, 1, !dbg !898
  %28 = add i64 %gcov_ctr.i.i, 2
  store i64 %28, ptr @__llvm_gcov_ctr.59, align 8
  br i1 %27, label %if.then14.i, label %if.end15.i, !dbg !898

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !899
  %gcov_ctr16.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 1), align 8, !dbg !899
  %29 = add i64 %gcov_ctr16.i, 1, !dbg !899
  store i64 %29, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 1), align 8, !dbg !899
  br label %__ab_c_size.exit, !dbg !899

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !898
  %30 = extractvalue { i32, i1 } %26, 0, !dbg !898
  %gcov_ctr17.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 2), align 16, !dbg !900
  %31 = add i64 %gcov_ctr17.i, 1, !dbg !900
  store i64 %31, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 2), align 16, !dbg !900
  br label %__ab_c_size.exit, !dbg !901

__ab_c_size.exit:                                 ; preds = %if.end15.i, %if.then14.i, %if.then.i48
  %retval.0.i49 = phi i32 [ -1, %if.then.i48 ], [ -1, %if.then14.i ], [ %30, %if.end15.i ], !dbg !902
  %gcov_ctr.i50 = load i64, ptr @__llvm_gcov_ctr.48, align 8
  %32 = add i64 %gcov_ctr.i50, 1
  store i64 %32, ptr @__llvm_gcov_ctr.48, align 8
  %gcov_ctr12.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 3), align 8, !dbg !903
  %33 = add i64 %gcov_ctr12.i.i, 1, !dbg !903
  store i64 %33, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 3), align 8, !dbg !903
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i49, i32 noundef 3520) #20, !dbg !909
  %tobool4.not = icmp eq ptr %call9.i.i, null, !dbg !910
  br i1 %tobool4.not, label %if.then5, label %if.end6, !dbg !911

if.then5:                                         ; preds = %__ab_c_size.exit
  %gcov_ctr27 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 1), align 8, !dbg !912
  %34 = add i64 %gcov_ctr27, 1, !dbg !912
  store i64 %34, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 1), align 8, !dbg !912
  %35 = ptrtoint ptr %flags.i to i32, !dbg !913
  call void @__asan_load4_noabort(i32 %35), !dbg !913
  %36 = load i32, ptr %flags.i, align 4, !dbg !913
  %and.i53 = and i32 %36, 32, !dbg !916
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53), !dbg !916
  %tobool.not.i54 = icmp eq i32 %and.i53, 0, !dbg !916
  br i1 %tobool.not.i54, label %if.else.i57, label %if.then.i56, !dbg !917

if.then.i56:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16, !dbg !918
  %gcov_ctr.i55 = load i64, ptr @__llvm_gcov_ctr.50, align 8, !dbg !918
  %37 = add i64 %gcov_ctr.i55, 1, !dbg !918
  store i64 %37, ptr @__llvm_gcov_ctr.50, align 8, !dbg !918
  tail call void @trace_event_dyn_put_ref(ptr noundef nonnull %event) #17, !dbg !919
  br label %error, !dbg !919

if.else.i57:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16, !dbg !920
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 1), align 8, !dbg !920
  %38 = add i64 %gcov_ctr1.i, 1, !dbg !920
  store i64 %38, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 1), align 8, !dbg !920
  %39 = getelementptr inbounds %struct.trace_event_call, ptr %event, i32 0, i32 6, !dbg !921
  %40 = ptrtoint ptr %39 to i32, !dbg !921
  call void @__asan_load4_noabort(i32 %40), !dbg !921
  %41 = load ptr, ptr %39, align 4, !dbg !921
  tail call void @module_put(ptr noundef %41) #17, !dbg !922
  br label %error

if.end6:                                          ; preds = %__ab_c_size.exit
  %event7 = getelementptr inbounds %struct.trace_eprobe, ptr %call9.i.i, i32 0, i32 2, !dbg !923
  %42 = ptrtoint ptr %event7 to i32, !dbg !924
  call void @__asan_store4_noabort(i32 %42), !dbg !924
  store ptr %event, ptr %event7, align 8, !dbg !924
  %call8 = tail call noalias ptr @kstrdup(ptr noundef %retval.0.i, i32 noundef 3264) #17, !dbg !925
  %event_name9 = getelementptr inbounds %struct.trace_eprobe, ptr %call9.i.i, i32 0, i32 1, !dbg !926
  %43 = ptrtoint ptr %event_name9 to i32, !dbg !927
  call void @__asan_store4_noabort(i32 %43), !dbg !927
  store ptr %call8, ptr %event_name9, align 4, !dbg !927
  %tobool11.not = icmp eq ptr %call8, null, !dbg !928
  br i1 %tobool11.not, label %if.then12, label %if.end13, !dbg !929

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16, !dbg !930
  %gcov_ctr28 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 2), align 16, !dbg !930
  %44 = add i64 %gcov_ctr28, 1, !dbg !930
  store i64 %44, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 2), align 16, !dbg !930
  br label %error, !dbg !930

if.end13:                                         ; preds = %if.end6
  %call14 = tail call noalias ptr @kstrdup(ptr noundef %5, i32 noundef 3264) #17, !dbg !931
  %45 = ptrtoint ptr %call9.i.i to i32, !dbg !932
  call void @__asan_store4_noabort(i32 %45), !dbg !932
  store ptr %call14, ptr %call9.i.i, align 128, !dbg !932
  %tobool16.not = icmp eq ptr %call14, null, !dbg !933
  br i1 %tobool16.not, label %if.then17, label %if.end18, !dbg !934

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16, !dbg !935
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 3), align 8, !dbg !935
  %46 = add i64 %gcov_ctr29, 1, !dbg !935
  store i64 %46, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 3), align 8, !dbg !935
  br label %error, !dbg !935

if.end18:                                         ; preds = %if.end13
  %tp = getelementptr inbounds %struct.trace_eprobe, ptr %call9.i.i, i32 0, i32 4, !dbg !936
  %call19 = tail call i32 @trace_probe_init(ptr noundef %tp, ptr noundef %this_event, ptr noundef %group, i1 noundef zeroext false) #17, !dbg !937
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19), !dbg !938
  %cmp = icmp slt i32 %call19, 0, !dbg !938
  br i1 %cmp, label %if.then20, label %if.end21, !dbg !939

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16, !dbg !940
  %gcov_ctr30 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 4), align 16, !dbg !940
  %47 = add i64 %gcov_ctr30, 1, !dbg !940
  store i64 %47, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 4), align 16, !dbg !940
  %phi.cast = inttoptr i32 %call19 to ptr, !dbg !940
  br label %error, !dbg !940

if.end21:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16, !dbg !941
  %gcov_ctr31 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 5), align 8, !dbg !941
  %48 = add i64 %gcov_ctr31, 1, !dbg !941
  store i64 %48, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 5), align 8, !dbg !941
  %devent = getelementptr inbounds %struct.trace_eprobe, ptr %call9.i.i, i32 0, i32 3, !dbg !942
  %gcov_ctr.i60 = load i64, ptr @__llvm_gcov_ctr.51, align 16, !dbg !943
  %49 = add i64 %gcov_ctr.i60, 1, !dbg !943
  store i64 %49, ptr @__llvm_gcov_ctr.51, align 16, !dbg !943
  %gcov_ctr3.i61 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 1), align 8, !dbg !946
  %50 = add i64 %gcov_ctr3.i61, 1, !dbg !946
  store i64 %50, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 1), align 8, !dbg !946
  %gcov_ctr.i.i62 = load i64, ptr @__llvm_gcov_ctr.60, align 8, !dbg !947
  %51 = add i64 %gcov_ctr.i.i62, 1, !dbg !947
  store i64 %51, ptr @__llvm_gcov_ctr.60, align 8, !dbg !947
  %52 = ptrtoint ptr %devent to i32, !dbg !947
  call void @__asan_store4_noabort(i32 %52), !dbg !947
  store volatile ptr %devent, ptr %devent, align 4, !dbg !947
  %prev.i.i = getelementptr inbounds %struct.trace_eprobe, ptr %call9.i.i, i32 0, i32 3, i32 0, i32 1, !dbg !949
  %53 = ptrtoint ptr %prev.i.i to i32, !dbg !950
  call void @__asan_store4_noabort(i32 %53), !dbg !950
  store ptr %devent, ptr %prev.i.i, align 16, !dbg !950
  %ops2.i = getelementptr inbounds %struct.trace_eprobe, ptr %call9.i.i, i32 0, i32 3, i32 1, !dbg !951
  %54 = ptrtoint ptr %ops2.i to i32, !dbg !952
  call void @__asan_store4_noabort(i32 %54), !dbg !952
  store ptr @eprobe_dyn_event_ops, ptr %ops2.i, align 4, !dbg !952
  br label %cleanup, !dbg !953

error:                                            ; preds = %if.then20, %if.then17, %if.then12, %if.else.i57, %if.then.i56
  %ret.0 = phi ptr [ %phi.cast, %if.then20 ], [ inttoptr (i32 -12 to ptr), %if.then17 ], [ inttoptr (i32 -12 to ptr), %if.then12 ], [ inttoptr (i32 -12 to ptr), %if.then.i56 ], [ inttoptr (i32 -12 to ptr), %if.else.i57 ]
  tail call fastcc void @trace_event_probe_cleanup(ptr noundef %call9.i.i), !dbg !954
  %gcov_ctr.i64 = load i64, ptr @__llvm_gcov_ctr.47, align 8
  %55 = add i64 %gcov_ctr.i64, 1
  store i64 %55, ptr @__llvm_gcov_ctr.47, align 8
  br label %cleanup, !dbg !955

cleanup:                                          ; preds = %error, %if.end21, %if.then
  %retval.0 = phi ptr [ %ret.0, %error ], [ inttoptr (i32 -19 to ptr), %if.then ], [ %call9.i.i, %if.end21 ], !dbg !956
  ret ptr %retval.0, !dbg !957
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_probe_log_set_index(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trace_eprobe_tp_update_arg(ptr noundef %ep, ptr nocapture noundef readonly %argv, i32 noundef %i) unnamed_addr #0 align 64 !dbg !958 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !959
  %tp = getelementptr inbounds %struct.trace_eprobe, ptr %ep, i32 0, i32 4, !dbg !960
  %arrayidx = getelementptr ptr, ptr %argv, i32 %i, !dbg !961
  %0 = ptrtoint ptr %arrayidx to i32, !dbg !961
  call void @__asan_load4_noabort(i32 %0), !dbg !961
  %1 = load ptr, ptr %arrayidx, align 4, !dbg !961
  %call = tail call i32 @traceprobe_parse_probe_arg(ptr noundef %tp, i32 noundef %i, ptr noundef %1, i32 noundef 10) #17, !dbg !962
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !963
  %tobool.not = icmp eq i32 %call, 0, !dbg !963
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !963

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !964
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.40, align 16, !dbg !964
  %2 = add i64 %gcov_ctr, 1, !dbg !964
  store i64 %2, ptr @__llvm_gcov_ctr.40, align 16, !dbg !964
  br label %cleanup, !dbg !965

if.end:                                           ; preds = %entry
  %gcov_ctr7 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !966
  %3 = add i64 %gcov_ctr7, 1, !dbg !966
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !966
  %args = getelementptr inbounds %struct.trace_eprobe, ptr %ep, i32 1, !dbg !967
  %arrayidx2 = getelementptr [0 x %struct.probe_arg], ptr %args, i32 0, i32 %i, !dbg !966
  %4 = ptrtoint ptr %arrayidx2 to i32, !dbg !968
  call void @__asan_load4_noabort(i32 %4), !dbg !968
  %5 = load ptr, ptr %arrayidx2, align 4, !dbg !968
  %6 = ptrtoint ptr %5 to i32, !dbg !969
  call void @__asan_load4_noabort(i32 %6), !dbg !969
  %7 = load i32, ptr %5, align 4, !dbg !969
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %7), !dbg !970
  %cmp = icmp eq i32 %7, 19, !dbg !970
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge, !dbg !966

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !966
  br label %cleanup, !dbg !966

if.then3:                                         ; preds = %if.end
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 2), align 16, !dbg !971
  %8 = add i64 %gcov_ctr8, 1, !dbg !971
  store i64 %8, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 2), align 16, !dbg !971
  %event.i = getelementptr inbounds %struct.trace_eprobe, ptr %ep, i32 0, i32 2, !dbg !972
  %9 = ptrtoint ptr %event.i to i32, !dbg !972
  call void @__asan_load4_noabort(i32 %9), !dbg !972
  %10 = load ptr, ptr %event.i, align 4, !dbg !972
  %class.i.i = getelementptr inbounds %struct.trace_event_call, ptr %10, i32 0, i32 1, !dbg !975
  %11 = ptrtoint ptr %class.i.i to i32, !dbg !975
  call void @__asan_load4_noabort(i32 %11), !dbg !975
  %12 = load ptr, ptr %class.i.i, align 4, !dbg !975
  %get_fields.i.i = getelementptr inbounds %struct.trace_event_class, ptr %12, i32 0, i32 5, !dbg !978
  %13 = ptrtoint ptr %get_fields.i.i to i32, !dbg !978
  call void @__asan_load4_noabort(i32 %13), !dbg !978
  %14 = load ptr, ptr %get_fields.i.i, align 4, !dbg !978
  %tobool.not.i.i = icmp eq ptr %14, null, !dbg !979
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !980

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16, !dbg !981
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.62, align 8, !dbg !981
  %15 = add i64 %gcov_ctr.i.i, 1, !dbg !981
  store i64 %15, ptr @__llvm_gcov_ctr.62, align 8, !dbg !981
  %fields.i.i = getelementptr inbounds %struct.trace_event_class, ptr %12, i32 0, i32 6, !dbg !982
  br label %trace_get_fields.exit.i, !dbg !983

if.end.i.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16, !dbg !984
  %gcov_ctr4.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.62, i32 0, i32 1), align 8, !dbg !984
  %16 = add i64 %gcov_ctr4.i.i, 1, !dbg !984
  store i64 %16, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.62, i32 0, i32 1), align 8, !dbg !984
  %17 = ptrtoint ptr %class.i.i to i32, !dbg !985
  call void @__asan_load4_noabort(i32 %17), !dbg !985
  %18 = load ptr, ptr %class.i.i, align 4, !dbg !985
  %get_fields3.i.i = getelementptr inbounds %struct.trace_event_class, ptr %18, i32 0, i32 5, !dbg !986
  %19 = ptrtoint ptr %get_fields3.i.i to i32, !dbg !986
  call void @__asan_load4_noabort(i32 %19), !dbg !986
  %20 = load ptr, ptr %get_fields3.i.i, align 4, !dbg !986
  %call.i.i = tail call ptr %20(ptr noundef %10) #17, !dbg !984
  br label %trace_get_fields.exit.i, !dbg !987

trace_get_fields.exit.i:                          ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %call.i.i, %if.end.i.i ], [ %fields.i.i, %if.then.i.i ], !dbg !988
  %21 = ptrtoint ptr %retval.0.i.i to i32, !dbg !989
  call void @__asan_load4_noabort(i32 %21), !dbg !989
  %field.025.i = load ptr, ptr %retval.0.i.i, align 4, !dbg !989
  %cmp.not26.i = icmp eq ptr %field.025.i, %retval.0.i.i, !dbg !989
  br i1 %cmp.not26.i, label %trace_get_fields.exit.i.trace_eprobe_tp_arg_update.exit_crit_edge, label %trace_get_fields.exit.i.for.body.i_crit_edge, !dbg !989

trace_get_fields.exit.i.for.body.i_crit_edge:     ; preds = %trace_get_fields.exit.i
  br label %for.body.i, !dbg !989

trace_get_fields.exit.i.trace_eprobe_tp_arg_update.exit_crit_edge: ; preds = %trace_get_fields.exit.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !989
  br label %trace_eprobe_tp_arg_update.exit, !dbg !989

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %trace_get_fields.exit.i.for.body.i_crit_edge
  %field.027.i = phi ptr [ %field.0.i, %for.inc.i.for.body.i_crit_edge ], [ %field.025.i, %trace_get_fields.exit.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %arrayidx2 to i32, !dbg !990
  call void @__asan_load4_noabort(i32 %22), !dbg !990
  %23 = load ptr, ptr %arrayidx2, align 4, !dbg !990
  %24 = getelementptr inbounds %struct.fetch_insn, ptr %23, i32 0, i32 1, !dbg !991
  %25 = ptrtoint ptr %24 to i32, !dbg !991
  call void @__asan_load4_noabort(i32 %25), !dbg !991
  %26 = load ptr, ptr %24, align 4, !dbg !991
  %name.i = getelementptr inbounds %struct.ftrace_event_field, ptr %field.027.i, i32 0, i32 1, !dbg !992
  %27 = ptrtoint ptr %name.i to i32, !dbg !992
  call void @__asan_load4_noabort(i32 %27), !dbg !992
  %28 = load ptr, ptr %name.i, align 4, !dbg !992
  %call1.i = tail call i32 @strcmp(ptr noundef %26, ptr noundef %28) #21, !dbg !993
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i), !dbg !993
  %tobool.not.i = icmp eq i32 %call1.i, 0, !dbg !993
  br i1 %tobool.not.i, label %for.body.i.trace_eprobe_tp_arg_update.exit_crit_edge, label %for.inc.i, !dbg !994

for.body.i.trace_eprobe_tp_arg_update.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !994
  br label %trace_eprobe_tp_arg_update.exit, !dbg !994

for.inc.i:                                        ; preds = %for.body.i
  %gcov_ctr13.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.61, i32 0, i32 1), align 8, !dbg !989
  %29 = add i64 %gcov_ctr13.i, 1, !dbg !989
  store i64 %29, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.61, i32 0, i32 1), align 8, !dbg !989
  %30 = ptrtoint ptr %field.027.i to i32, !dbg !989
  call void @__asan_load4_noabort(i32 %30), !dbg !989
  %field.0.i = load ptr, ptr %field.027.i, align 4, !dbg !989
  %cmp.not.i = icmp eq ptr %field.0.i, %retval.0.i.i, !dbg !989
  br i1 %cmp.not.i, label %for.inc.i.trace_eprobe_tp_arg_update.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge, !dbg !989, !llvm.loop !995

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !989
  br label %for.body.i, !dbg !989

for.inc.i.trace_eprobe_tp_arg_update.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !989
  br label %trace_eprobe_tp_arg_update.exit, !dbg !989

trace_eprobe_tp_arg_update.exit:                  ; preds = %for.inc.i.trace_eprobe_tp_arg_update.exit_crit_edge, %for.body.i.trace_eprobe_tp_arg_update.exit_crit_edge, %trace_get_fields.exit.i.trace_eprobe_tp_arg_update.exit_crit_edge
  %.sink37.i = phi ptr [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.61, i32 0, i32 2), %trace_get_fields.exit.i.trace_eprobe_tp_arg_update.exit_crit_edge ], [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.61, i32 0, i32 2), %for.inc.i.trace_eprobe_tp_arg_update.exit_crit_edge ], [ @__llvm_gcov_ctr.61, %for.body.i.trace_eprobe_tp_arg_update.exit_crit_edge ]
  %.sink.i = phi ptr [ null, %trace_get_fields.exit.i.trace_eprobe_tp_arg_update.exit_crit_edge ], [ null, %for.inc.i.trace_eprobe_tp_arg_update.exit_crit_edge ], [ %field.027.i, %for.body.i.trace_eprobe_tp_arg_update.exit_crit_edge ]
  %retval.0.i = phi i32 [ -2, %trace_get_fields.exit.i.trace_eprobe_tp_arg_update.exit_crit_edge ], [ -2, %for.inc.i.trace_eprobe_tp_arg_update.exit_crit_edge ], [ 0, %for.body.i.trace_eprobe_tp_arg_update.exit_crit_edge ], !dbg !997
  %31 = ptrtoint ptr %.sink37.i to i32, !dbg !997
  call void @__asan_load8_noabort(i32 %31), !dbg !997
  %gcov_ctr14.i = load i64, ptr %.sink37.i, align 16, !dbg !997
  %32 = add i64 %gcov_ctr14.i, 1, !dbg !997
  store i64 %32, ptr %.sink37.i, align 16, !dbg !997
  %33 = ptrtoint ptr %arrayidx2 to i32, !dbg !997
  call void @__asan_load4_noabort(i32 %33), !dbg !997
  %34 = load ptr, ptr %arrayidx2, align 4, !dbg !997
  %35 = getelementptr inbounds %struct.fetch_insn, ptr %34, i32 0, i32 1, !dbg !997
  %36 = ptrtoint ptr %35 to i32, !dbg !997
  call void @__asan_load4_noabort(i32 %36), !dbg !997
  %37 = load ptr, ptr %35, align 4, !dbg !997
  tail call void @kfree(ptr noundef %37) #17, !dbg !997
  %38 = ptrtoint ptr %arrayidx2 to i32, !dbg !997
  call void @__asan_load4_noabort(i32 %38), !dbg !997
  %39 = load ptr, ptr %arrayidx2, align 4, !dbg !997
  %40 = getelementptr inbounds %struct.fetch_insn, ptr %39, i32 0, i32 1, !dbg !997
  %41 = ptrtoint ptr %40 to i32, !dbg !997
  call void @__asan_store4_noabort(i32 %41), !dbg !997
  store ptr %.sink.i, ptr %40, align 4, !dbg !997
  br label %cleanup, !dbg !998

cleanup:                                          ; preds = %trace_eprobe_tp_arg_update.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %retval.0.i, %trace_eprobe_tp_arg_update.exit ], [ 0, %if.end.cleanup_crit_edge ], !dbg !999
  ret i32 %retval.0, !dbg !1000
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @traceprobe_set_print_fmt(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_register_event_call(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__trace_probe_log_err(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dyn_event_add(ptr noundef %ev, ptr nocapture noundef %call) unnamed_addr #8 align 64 !dbg !1001 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1002
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32)), !dbg !1003
  %0 = load i32, ptr @debug_locks, align 4, !dbg !1003
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0), !dbg !1003
  %tobool.not = icmp eq i32 %0, 0, !dbg !1003
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs, !dbg !1003

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1003
  br label %if.end, !dbg !1003

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.42, align 16, !dbg !1003
  %1 = add i64 %gcov_ctr, 1, !dbg !1003
  store i64 %1, ptr @__llvm_gcov_ctr.42, align 16, !dbg !1003
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.102, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.102, align 8
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @event_mutex, i32 0, i32 5), i32 noundef -1) #17, !dbg !1004
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !1003
  %cmp.not = icmp eq i32 %call.i, 0, !dbg !1003
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !dbg !1003, !prof !114

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1003
  br label %if.end, !dbg !1003

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1003
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 82, i32 noundef 9, ptr noundef null) #17, !dbg !1003
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !1003
  %3 = add i64 %gcov_ctr29, 1, !dbg !1003
  store i64 %3, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !1003
  br label %if.end, !dbg !1003

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool25.not = icmp eq ptr %ev, null, !dbg !1006
  br i1 %tobool25.not, label %if.end.if.then27_crit_edge, label %lor.lhs.false, !dbg !1007

if.end.if.then27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1007
  br label %if.then27, !dbg !1007

lor.lhs.false:                                    ; preds = %if.end
  %gcov_ctr30 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !1008
  %4 = add i64 %gcov_ctr30, 1, !dbg !1008
  store i64 %4, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !1008
  %ops = getelementptr inbounds %struct.dyn_event, ptr %ev, i32 0, i32 1, !dbg !1009
  %5 = ptrtoint ptr %ops to i32, !dbg !1009
  call void @__asan_load4_noabort(i32 %5), !dbg !1009
  %6 = load ptr, ptr %ops, align 4, !dbg !1009
  %tobool26.not = icmp eq ptr %6, null, !dbg !1008
  br i1 %tobool26.not, label %lor.lhs.false.if.then27_crit_edge, label %if.end28, !dbg !1010

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1010
  br label %if.then27, !dbg !1010

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.end.if.then27_crit_edge
  %gcov_ctr32 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 4), align 16, !dbg !1011
  %7 = add i64 %gcov_ctr32, 1, !dbg !1011
  store i64 %7, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 4), align 16, !dbg !1011
  br label %return, !dbg !1011

if.end28:                                         ; preds = %lor.lhs.false
  %gcov_ctr31 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 3), align 8, !dbg !1012
  %8 = add i64 %gcov_ctr31, 1, !dbg !1012
  store i64 %8, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 3), align 8, !dbg !1012
  %flags = getelementptr inbounds %struct.trace_event_call, ptr %call, i32 0, i32 8, !dbg !1013
  %9 = ptrtoint ptr %flags to i32, !dbg !1014
  call void @__asan_load4_noabort(i32 %9), !dbg !1014
  %10 = load i32, ptr %flags, align 4, !dbg !1014
  %or = or i32 %10, 32, !dbg !1014
  store i32 %or, ptr %flags, align 4, !dbg !1014
  %gcov_ctr.i36 = load i64, ptr @__llvm_gcov_ctr.103, align 8
  %11 = add i64 %gcov_ctr.i36, 1
  store i64 %11, ptr @__llvm_gcov_ctr.103, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_list, i32 0, i32 1) to i32)), !dbg !1015
  %12 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_list, i32 0, i32 1), align 4, !dbg !1015
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %ev, ptr noundef %12, ptr noundef nonnull @dyn_event_list) #17, !dbg !1018
  br i1 %call.i.i, label %if.end.i.i, label %if.end28.list_add_tail.exit_crit_edge, !dbg !1021

if.end28.list_add_tail.exit_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1021
  br label %list_add_tail.exit, !dbg !1021

if.end.i.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1022
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_list, i32 0, i32 1) to i32)), !dbg !1022
  store ptr %ev, ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_list, i32 0, i32 1), align 4, !dbg !1022
  %13 = ptrtoint ptr %ev to i32, !dbg !1023
  call void @__asan_store4_noabort(i32 %13), !dbg !1023
  store ptr @dyn_event_list, ptr %ev, align 4, !dbg !1023
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %ev, i32 0, i32 1, !dbg !1024
  %14 = ptrtoint ptr %prev3.i.i to i32, !dbg !1025
  call void @__asan_store4_noabort(i32 %14), !dbg !1025
  store ptr %12, ptr %prev3.i.i, align 4, !dbg !1025
  %15 = ptrtoint ptr %12 to i32, !dbg !1026
  call void @__asan_store4_noabort(i32 %15), !dbg !1026
  store volatile ptr %ev, ptr %12, align 4, !dbg !1026
  br label %list_add_tail.exit, !dbg !1026

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end28.list_add_tail.exit_crit_edge
  %__llvm_gcov_ctr.104.sink1.i.i = phi ptr [ getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.104, i32 0, i32 1), %if.end.i.i ], [ @__llvm_gcov_ctr.104, %if.end28.list_add_tail.exit_crit_edge ]
  %16 = ptrtoint ptr %__llvm_gcov_ctr.104.sink1.i.i to i32, !dbg !1027
  call void @__asan_load8_noabort(i32 %16), !dbg !1027
  %gcov_ctr.i.i = load i64, ptr %__llvm_gcov_ctr.104.sink1.i.i, align 8, !dbg !1027
  %17 = add i64 %gcov_ctr.i.i, 1, !dbg !1027
  store i64 %17, ptr %__llvm_gcov_ctr.104.sink1.i.i, align 8, !dbg !1027
  br label %return, !dbg !1028

return:                                           ; preds = %list_add_tail.exit, %if.then27
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -22, %if.then27 ], !dbg !1029
  ret i32 %retval.0, !dbg !1030
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_event_probe_cleanup(ptr noundef %ep) unnamed_addr #0 align 64 !dbg !1031 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1032
  %tobool.not = icmp eq ptr %ep, null, !dbg !1033
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1034

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1035
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.43, align 16, !dbg !1035
  %0 = add i64 %gcov_ctr, 1, !dbg !1035
  store i64 %0, ptr @__llvm_gcov_ctr.43, align 16, !dbg !1035
  br label %return, !dbg !1035

if.end:                                           ; preds = %entry
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 1), align 8, !dbg !1036
  %1 = add i64 %gcov_ctr5, 1, !dbg !1036
  store i64 %1, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 1), align 8, !dbg !1036
  %tp = getelementptr inbounds %struct.trace_eprobe, ptr %ep, i32 0, i32 4, !dbg !1037
  tail call void @trace_probe_cleanup(ptr noundef %tp) #17, !dbg !1038
  %event_name = getelementptr inbounds %struct.trace_eprobe, ptr %ep, i32 0, i32 1, !dbg !1039
  %2 = ptrtoint ptr %event_name to i32, !dbg !1039
  call void @__asan_load4_noabort(i32 %2), !dbg !1039
  %3 = load ptr, ptr %event_name, align 4, !dbg !1039
  tail call void @kfree(ptr noundef %3) #17, !dbg !1040
  %4 = ptrtoint ptr %ep to i32, !dbg !1041
  call void @__asan_load4_noabort(i32 %4), !dbg !1041
  %5 = load ptr, ptr %ep, align 4, !dbg !1041
  tail call void @kfree(ptr noundef %5) #17, !dbg !1042
  %event = getelementptr inbounds %struct.trace_eprobe, ptr %ep, i32 0, i32 2, !dbg !1043
  %6 = ptrtoint ptr %event to i32, !dbg !1043
  call void @__asan_load4_noabort(i32 %6), !dbg !1043
  %7 = load ptr, ptr %event, align 4, !dbg !1043
  %tobool1.not = icmp eq ptr %7, null, !dbg !1044
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2, !dbg !1044

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1044
  br label %if.end4, !dbg !1044

if.then2:                                         ; preds = %if.end
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 2), align 16, !dbg !1045
  %8 = add i64 %gcov_ctr6, 1, !dbg !1045
  store i64 %8, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 2), align 16, !dbg !1045
  %9 = ptrtoint ptr %event to i32, !dbg !1046
  call void @__asan_load4_noabort(i32 %9), !dbg !1046
  %10 = load ptr, ptr %event, align 4, !dbg !1046
  %flags.i = getelementptr inbounds %struct.trace_event_call, ptr %10, i32 0, i32 8, !dbg !1047
  %11 = ptrtoint ptr %flags.i to i32, !dbg !1047
  call void @__asan_load4_noabort(i32 %11), !dbg !1047
  %12 = load i32, ptr %flags.i, align 4, !dbg !1047
  %and.i = and i32 %12, 32, !dbg !1049
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !1049
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !1049
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !1050

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1051
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.50, align 8, !dbg !1051
  %13 = add i64 %gcov_ctr.i, 1, !dbg !1051
  store i64 %13, ptr @__llvm_gcov_ctr.50, align 8, !dbg !1051
  tail call void @trace_event_dyn_put_ref(ptr noundef %10) #17, !dbg !1052
  br label %if.end4, !dbg !1052

if.else.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1053
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 1), align 8, !dbg !1053
  %14 = add i64 %gcov_ctr1.i, 1, !dbg !1053
  store i64 %14, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 1), align 8, !dbg !1053
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %10, i32 0, i32 6, !dbg !1054
  %16 = ptrtoint ptr %15 to i32, !dbg !1054
  call void @__asan_load4_noabort(i32 %16), !dbg !1054
  %17 = load ptr, ptr %15, align 4, !dbg !1054
  tail call void @module_put(ptr noundef %17) #17, !dbg !1055
  br label %if.end4

if.end4:                                          ; preds = %if.else.i, %if.then.i, %if.end.if.end4_crit_edge
  tail call void @kfree(ptr noundef nonnull %ep) #17, !dbg !1056
  br label %return, !dbg !1057

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !1057
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_event_dyn_try_get_ref(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_init(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_dyn_put_ref(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @traceprobe_parse_probe_arg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eprobe_register(ptr nocapture noundef readonly %event, i32 noundef %type, ptr noundef %data) #0 align 64 !dbg !1058 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1059
  %0 = zext i32 %type to i64, !dbg !1060
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.118), !dbg !1060
  switch i32 %type, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %entry.sw.bb3_crit_edge
    i32 3, label %entry.sw.bb3_crit_edge108
    i32 4, label %entry.sw.bb3_crit_edge109
    i32 5, label %entry.sw.bb3_crit_edge110
    i32 6, label %entry.sw.bb3_crit_edge111
    i32 7, label %entry.sw.bb3_crit_edge112
  ], !dbg !1060

entry.sw.bb3_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1060
  br label %sw.bb3, !dbg !1060

entry.sw.bb3_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1060
  br label %sw.bb3, !dbg !1060

entry.sw.bb3_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1060
  br label %sw.bb3, !dbg !1060

entry.sw.bb3_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1060
  br label %sw.bb3, !dbg !1060

entry.sw.bb3_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1060
  br label %sw.bb3, !dbg !1060

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1060
  br label %sw.bb3, !dbg !1060

sw.bb:                                            ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.64, align 16, !dbg !1061
  %1 = add i64 %gcov_ctr, 1, !dbg !1061
  store i64 %1, ptr @__llvm_gcov_ctr.64, align 16, !dbg !1061
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.66, align 8
  %2 = add i64 %gcov_ctr.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.66, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.69, align 8
  %3 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.69, align 8
  %probes.i.i = getelementptr i8, ptr %event, i32 84, !dbg !1062
  %4 = ptrtoint ptr %probes.i.i to i32, !dbg !1062
  call void @__asan_load4_noabort(i32 %4), !dbg !1062
  %5 = load ptr, ptr %probes.i.i, align 4, !dbg !1062
  %tobool.not.i = icmp eq ptr %5, null, !dbg !1067
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end40.i, !dbg !1067

land.rhs.i:                                       ; preds = %sw.bb
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.71, align 16, !dbg !1067
  %6 = add i64 %gcov_ctr.i, 1, !dbg !1067
  store i64 %6, ptr @__llvm_gcov_ctr.71, align 16, !dbg !1067
  %.b120.i = load i1, ptr @enable_trace_eprobe.__already_done, align 1, !dbg !1067
  br i1 %.b120.i, label %land.rhs.i.if.then39.i_crit_edge, label %if.then.i, !dbg !1067, !prof !735

land.rhs.i.if.then39.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1067
  br label %if.then39.i, !dbg !1067

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1067
  store i1 true, ptr @enable_trace_eprobe.__already_done, align 1, !dbg !1067
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 694, i32 noundef 9, ptr noundef null) #17, !dbg !1067
  %gcov_ctr86.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 1), align 8, !dbg !1067
  %7 = add i64 %gcov_ctr86.i, 1, !dbg !1067
  store i64 %7, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 1), align 8, !dbg !1067
  %gcov_ctr87.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 2), align 16, !dbg !1067
  %8 = add i64 %gcov_ctr87.i, 1, !dbg !1067
  store i64 %8, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 2), align 16, !dbg !1067
  br label %if.then39.i, !dbg !1067

if.then39.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then39.i_crit_edge
  %gcov_ctr88.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 3), align 8, !dbg !1068
  %9 = add i64 %gcov_ctr88.i, 1, !dbg !1068
  store i64 %9, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 3), align 8, !dbg !1068
  br label %cleanup, !dbg !1068

if.end40.i:                                       ; preds = %sw.bb
  %gcov_ctr.i122.i = load i64, ptr @__llvm_gcov_ctr.73, align 8
  %10 = add i64 %gcov_ctr.i122.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.73, align 8
  %gcov_ctr.i.i123.i = load i64, ptr @__llvm_gcov_ctr.79, align 8
  %11 = add i64 %gcov_ctr.i.i123.i, 1
  store i64 %11, ptr @__llvm_gcov_ctr.79, align 8
  %event.i.i.i = getelementptr inbounds %struct.trace_probe, ptr %5, i32 0, i32 1, !dbg !1069
  %12 = ptrtoint ptr %event.i.i.i to i32, !dbg !1069
  call void @__asan_load4_noabort(i32 %12), !dbg !1069
  %13 = load ptr, ptr %event.i.i.i, align 4, !dbg !1069
  %14 = ptrtoint ptr %13 to i32, !dbg !1072
  call void @__asan_load4_noabort(i32 %14), !dbg !1072
  %15 = load i32, ptr %13, align 4, !dbg !1072
  %and.i.i.i = and i32 %15, 3, !dbg !1073
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i), !dbg !1074
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i, 0, !dbg !1074
  %tobool43.not.i = icmp eq ptr %data, null, !dbg !1075
  br i1 %tobool43.not.i, label %if.else.i, label %if.then44.i, !dbg !1075

if.then44.i:                                      ; preds = %if.end40.i
  %call45.i = tail call i32 @trace_probe_add_file(ptr noundef nonnull %5, ptr noundef nonnull %data) #17, !dbg !1076
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i), !dbg !1077
  %tobool46.not.i = icmp eq i32 %call45.i, 0, !dbg !1077
  br i1 %tobool46.not.i, label %if.end48.i, label %if.then47.i, !dbg !1077

if.then47.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1078
  %gcov_ctr89.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 4), align 16, !dbg !1078
  %16 = add i64 %gcov_ctr89.i, 1, !dbg !1078
  store i64 %16, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 4), align 16, !dbg !1078
  br label %cleanup, !dbg !1079

if.end48.i:                                       ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1080
  %gcov_ctr90.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 5), align 8, !dbg !1080
  %17 = add i64 %gcov_ctr90.i, 1, !dbg !1080
  store i64 %17, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 5), align 8, !dbg !1080
  br label %if.end49.i, !dbg !1080

if.else.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1081
  %gcov_ctr.i124.i = load i64, ptr @__llvm_gcov_ctr.74, align 8
  %18 = add i64 %gcov_ctr.i124.i, 1
  store i64 %18, ptr @__llvm_gcov_ctr.74, align 8
  %19 = ptrtoint ptr %13 to i32, !dbg !1082
  call void @__asan_load4_noabort(i32 %19), !dbg !1082
  %20 = load i32, ptr %13, align 4, !dbg !1082
  %or.i.i = or i32 %20, 2, !dbg !1082
  store i32 %or.i.i, ptr %13, align 4, !dbg !1082
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else.i, %if.end48.i
  br i1 %tobool.i.i.not.i, label %if.end52.i, label %if.then51.i, !dbg !1085

if.then51.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1086
  %gcov_ctr91.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 6), align 16, !dbg !1086
  %21 = add i64 %gcov_ctr91.i, 1, !dbg !1086
  store i64 %21, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 6), align 16, !dbg !1086
  br label %cleanup, !dbg !1086

if.end52.i:                                       ; preds = %if.end49.i
  %gcov_ctr.i125.i = load i64, ptr @__llvm_gcov_ctr.75, align 8
  %22 = ptrtoint ptr %event.i.i.i to i32, !dbg !1087
  call void @__asan_load4_noabort(i32 %22), !dbg !1087
  %23 = load ptr, ptr %event.i.i.i, align 4, !dbg !1087
  %probes.i127.i = getelementptr inbounds %struct.trace_probe_event, ptr %23, i32 0, i32 4, !dbg !1089
  %24 = ptrtoint ptr %probes.i127.i to i32, !dbg !1090
  call void @__asan_load4_noabort(i32 %24), !dbg !1090
  %pos.0156.i = load ptr, ptr %probes.i127.i, align 4, !dbg !1090
  %25 = add i64 %gcov_ctr.i125.i, 2
  store i64 %25, ptr @__llvm_gcov_ctr.75, align 8
  %cmp.not159.i = icmp eq ptr %pos.0156.i, %probes.i127.i, !dbg !1090
  br i1 %cmp.not159.i, label %if.end52.i.if.end81.i_crit_edge, label %for.body.lr.ph.i, !dbg !1090

if.end52.i.if.end81.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1090
  br label %if.end81.i, !dbg !1090

for.body.lr.ph.i:                                 ; preds = %if.end52.i
  %tr1.i.i = getelementptr inbounds %struct.trace_event_file, ptr %data, i32 0, i32 4
  br label %for.body.i, !dbg !1090

for.body.i:                                       ; preds = %enable_eprobe.exit.thread.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.0161.i = phi ptr [ %pos.0156.i, %for.body.lr.ph.i ], [ %pos.0.i, %enable_eprobe.exit.thread.i.for.body.i_crit_edge ]
  %enabled.0.off0160.i = phi i1 [ false, %for.body.lr.ph.i ], [ true, %enable_eprobe.exit.thread.i.for.body.i_crit_edge ]
  %add.ptr60.i = getelementptr i8, ptr %pos.0161.i, i32 -24, !dbg !1091
  %26 = ptrtoint ptr %tr1.i.i to i32, !dbg !1092
  call void @__asan_load4_noabort(i32 %26), !dbg !1092
  %27 = load ptr, ptr %tr1.i.i, align 4, !dbg !1092
  %28 = ptrtoint ptr %add.ptr60.i to i32, !dbg !1095
  call void @__asan_load4_noabort(i32 %28), !dbg !1095
  %29 = load ptr, ptr %add.ptr60.i, align 4, !dbg !1095
  %event_name.i.i = getelementptr i8, ptr %pos.0161.i, i32 -20, !dbg !1096
  %30 = ptrtoint ptr %event_name.i.i to i32, !dbg !1096
  call void @__asan_load4_noabort(i32 %30), !dbg !1096
  %31 = load ptr, ptr %event_name.i.i, align 4, !dbg !1096
  %call.i.i = tail call ptr @find_event_file(ptr noundef %27, ptr noundef %29, ptr noundef %31) #17, !dbg !1097
  %tobool.not.i.i = icmp eq ptr %call.i.i, null, !dbg !1098
  br i1 %tobool.not.i.i, label %enable_eprobe.exit.thread137.i, label %if.end.i.i, !dbg !1099

enable_eprobe.exit.thread137.i:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1100
  %gcov_ctr.i131.i = load i64, ptr @__llvm_gcov_ctr.76, align 16, !dbg !1100
  %32 = add i64 %gcov_ctr.i131.i, 1, !dbg !1100
  store i64 %32, ptr @__llvm_gcov_ctr.76, align 16, !dbg !1100
  br label %if.then71.i, !dbg !1101

if.end.i.i:                                       ; preds = %for.body.i
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.48, align 8
  %33 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %33, ptr @__llvm_gcov_ctr.48, align 8
  %gcov_ctr79.i.i.i.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 1), align 8, !dbg !1102
  %34 = add i64 %gcov_ctr79.i.i.i.i.i.i, 1, !dbg !1102
  store i64 %34, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 1), align 8, !dbg !1102
  %gcov_ctr11.i.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 2), align 16, !dbg !1109
  %35 = add i64 %gcov_ctr11.i.i.i.i.i, 1, !dbg !1109
  store i64 %35, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 2), align 16, !dbg !1109
  %gcov_ctr.i2.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.55, align 16, !dbg !1110
  %36 = add i64 %gcov_ctr.i2.i.i.i.i.i, 1, !dbg !1110
  store i64 %36, ptr @__llvm_gcov_ctr.55, align 16, !dbg !1110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32)), !dbg !1113
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4, !dbg !1113
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 8) #22, !dbg !1114
  %gcov_ctr.i31.i.i.i = load i64, ptr @__llvm_gcov_ctr.48, align 8
  %38 = add i64 %gcov_ctr.i31.i.i.i, 1
  store i64 %38, ptr @__llvm_gcov_ctr.48, align 8
  %gcov_ctr79.i.i.i32.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 1), align 8, !dbg !1115
  %39 = add i64 %gcov_ctr79.i.i.i32.i.i.i, 1, !dbg !1115
  store i64 %39, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 1), align 8, !dbg !1115
  %gcov_ctr11.i.i33.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 2), align 16, !dbg !1119
  %40 = add i64 %gcov_ctr11.i.i33.i.i.i, 1, !dbg !1119
  store i64 %40, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 2), align 16, !dbg !1119
  %gcov_ctr.i2.i.i34.i.i.i = load i64, ptr @__llvm_gcov_ctr.55, align 16, !dbg !1120
  %41 = add i64 %gcov_ctr.i2.i.i34.i.i.i, 1, !dbg !1120
  store i64 %41, ptr @__llvm_gcov_ctr.55, align 16, !dbg !1120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32)), !dbg !1122
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4, !dbg !1122
  %call7.i.i35.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 60) #22, !dbg !1123
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i35.i.i.i, null, !dbg !1124
  br i1 %tobool.not.i.i.i, label %if.end.i.i.new_eprobe_trigger.exit.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i, !dbg !1125

if.end.i.i.new_eprobe_trigger.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1125
  br label %new_eprobe_trigger.exit.thread.i.i, !dbg !1125

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i
  %gcov_ctr.i.i132.i = load i64, ptr @__llvm_gcov_ctr.80, align 16, !dbg !1126
  %43 = add i64 %gcov_ctr.i.i132.i, 1, !dbg !1126
  store i64 %43, ptr @__llvm_gcov_ctr.80, align 16, !dbg !1126
  %tobool2.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null, !dbg !1126
  br i1 %tobool2.not.i.i.i, label %lor.lhs.false.i.i.i.new_eprobe_trigger.exit.thread.i.i_crit_edge, label %new_eprobe_trigger.exit.i.i, !dbg !1127

lor.lhs.false.i.i.i.new_eprobe_trigger.exit.thread.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1127
  br label %new_eprobe_trigger.exit.thread.i.i, !dbg !1127

new_eprobe_trigger.exit.thread.i.i:               ; preds = %lor.lhs.false.i.i.i.new_eprobe_trigger.exit.thread.i.i_crit_edge, %if.end.i.i.new_eprobe_trigger.exit.thread.i.i_crit_edge
  %call7.i.i.i.i.lcssa.i = phi ptr [ null, %lor.lhs.false.i.i.i.new_eprobe_trigger.exit.thread.i.i_crit_edge ], [ %call7.i.i.i.i.i, %if.end.i.i.new_eprobe_trigger.exit.thread.i.i_crit_edge ], !dbg !1114
  %gcov_ctr17.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 2), align 16, !dbg !1128
  %44 = add i64 %gcov_ctr17.i.i.i, 1, !dbg !1128
  store i64 %44, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 2), align 16, !dbg !1128
  tail call void @kfree(ptr noundef %call7.i.i.i.i.lcssa.i) #17, !dbg !1129
  tail call void @kfree(ptr noundef %call7.i.i35.i.i.i) #17, !dbg !1130
  %gcov_ctr.i36.i.i.i = load i64, ptr @__llvm_gcov_ctr.47, align 8
  %45 = add i64 %gcov_ctr.i36.i.i.i, 1
  store i64 %45, ptr @__llvm_gcov_ctr.47, align 8
  %gcov_ctr.i2025.i.i = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %46 = add i64 %gcov_ctr.i2025.i.i, 1
  store i64 %46, ptr @__llvm_gcov_ctr.38, align 8
  br label %enable_eprobe.exit.i, !dbg !1131

new_eprobe_trigger.exit.i.i:                      ; preds = %lor.lhs.false.i.i.i
  %gcov_ctr16.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 1), align 8, !dbg !1132
  %47 = add i64 %gcov_ctr16.i.i.i, 1, !dbg !1132
  store i64 %47, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 1), align 8, !dbg !1132
  %flags.i.i.i = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i35.i.i.i, i32 0, i32 2, !dbg !1133
  %48 = ptrtoint ptr %flags.i.i.i to i32, !dbg !1134
  call void @__asan_store4_noabort(i32 %48), !dbg !1134
  store i32 1, ptr %flags.i.i.i, align 8, !dbg !1134
  %49 = ptrtoint ptr %call7.i.i35.i.i.i to i32, !dbg !1135
  call void @__asan_store4_noabort(i32 %49), !dbg !1135
  store i32 -1, ptr %call7.i.i35.i.i.i, align 8, !dbg !1135
  %ops.i.i.i = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i35.i.i.i, i32 0, i32 3, !dbg !1136
  %50 = ptrtoint ptr %ops.i.i.i to i32, !dbg !1137
  call void @__asan_store4_noabort(i32 %50), !dbg !1137
  store ptr @eprobe_trigger_ops, ptr %ops.i.i.i, align 4, !dbg !1137
  %cmd_ops.i.i.i = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i35.i.i.i, i32 0, i32 4, !dbg !1138
  %51 = ptrtoint ptr %cmd_ops.i.i.i to i32, !dbg !1139
  call void @__asan_store4_noabort(i32 %51), !dbg !1139
  store ptr @event_trigger_cmd, ptr %cmd_ops.i.i.i, align 8, !dbg !1139
  %list.i.i.i = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i35.i.i.i, i32 0, i32 10, !dbg !1140
  %gcov_ctr.i37.i.i.i = load i64, ptr @__llvm_gcov_ctr.60, align 8, !dbg !1141
  %52 = add i64 %gcov_ctr.i37.i.i.i, 1, !dbg !1141
  store i64 %52, ptr @__llvm_gcov_ctr.60, align 8, !dbg !1141
  %53 = ptrtoint ptr %list.i.i.i to i32, !dbg !1141
  call void @__asan_store4_noabort(i32 %53), !dbg !1141
  store volatile ptr %list.i.i.i, ptr %list.i.i.i, align 4, !dbg !1141
  %prev.i.i.i.i = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i35.i.i.i, i32 0, i32 10, i32 1, !dbg !1143
  %54 = ptrtoint ptr %prev.i.i.i.i to i32, !dbg !1144
  call void @__asan_store4_noabort(i32 %54), !dbg !1144
  store ptr %list.i.i.i, ptr %prev.i.i.i.i, align 8, !dbg !1144
  %filter.i.i.i = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i35.i.i.i, i32 0, i32 5, !dbg !1145
  %55 = ptrtoint ptr %filter.i.i.i to i32, !dbg !1145
  call void @__asan_store4_noabort(i32 %55), !dbg !1145
  store volatile ptr null, ptr %filter.i.i.i, align 4, !dbg !1145
  %56 = ptrtoint ptr %call7.i.i.i.i.i to i32, !dbg !1146
  call void @__asan_store4_noabort(i32 %56), !dbg !1146
  store ptr %data, ptr %call7.i.i.i.i.i, align 8, !dbg !1146
  %ep14.i.i.i = getelementptr inbounds %struct.eprobe_data, ptr %call7.i.i.i.i.i, i32 0, i32 1, !dbg !1147
  %57 = ptrtoint ptr %ep14.i.i.i to i32, !dbg !1148
  call void @__asan_store4_noabort(i32 %57), !dbg !1148
  store ptr %add.ptr60.i, ptr %ep14.i.i.i, align 4, !dbg !1148
  %private_data.i.i.i = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i35.i.i.i, i32 0, i32 7, !dbg !1149
  %58 = ptrtoint ptr %private_data.i.i.i to i32, !dbg !1150
  call void @__asan_store4_noabort(i32 %58), !dbg !1150
  store ptr %call7.i.i.i.i.i, ptr %private_data.i.i.i, align 4, !dbg !1150
  %gcov_ctr.i20.i.i = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %59 = add i64 %gcov_ctr.i20.i.i, 1
  store i64 %59, ptr @__llvm_gcov_ctr.38, align 8
  %cmp.i.i.i = icmp ugt ptr %call7.i.i35.i.i.i, inttoptr (i32 -4096 to ptr), !dbg !1151
  br i1 %cmp.i.i.i, label %new_eprobe_trigger.exit.i.i.enable_eprobe.exit.i_crit_edge, label %if.end6.i.i, !dbg !1131

new_eprobe_trigger.exit.i.i.enable_eprobe.exit.i_crit_edge: ; preds = %new_eprobe_trigger.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1131
  br label %enable_eprobe.exit.i, !dbg !1131

if.end6.i.i:                                      ; preds = %new_eprobe_trigger.exit.i.i
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 2), align 16, !dbg !1153
  %60 = add i64 %gcov_ctr11.i.i, 1, !dbg !1153
  store i64 %60, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 2), align 16, !dbg !1153
  %triggers.i.i = getelementptr inbounds %struct.trace_event_file, ptr %call.i.i, i32 0, i32 6, !dbg !1154
  %gcov_ctr.i22.i.i = load i64, ptr @__llvm_gcov_ctr.81, align 8
  %61 = add i64 %gcov_ctr.i22.i.i, 1
  store i64 %61, ptr @__llvm_gcov_ctr.81, align 8
  %prev.i.i.i = getelementptr inbounds %struct.trace_event_file, ptr %call.i.i, i32 0, i32 6, i32 1, !dbg !1155
  %62 = ptrtoint ptr %prev.i.i.i to i32, !dbg !1155
  call void @__asan_load4_noabort(i32 %62), !dbg !1155
  %63 = load ptr, ptr %prev.i.i.i, align 4, !dbg !1155
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i.i, ptr noundef %63, ptr noundef %triggers.i.i) #17, !dbg !1159
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !dbg !1162

if.then.i.i.i.i:                                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1163
  %gcov_ctr.i.i23.i.i = load i64, ptr @__llvm_gcov_ctr.94, align 16, !dbg !1163
  %64 = add i64 %gcov_ctr.i.i23.i.i, 1, !dbg !1163
  store i64 %64, ptr @__llvm_gcov_ctr.94, align 16, !dbg !1163
  br label %enable_eprobe.exit.thread.i, !dbg !1163

if.end.i.i.i.i:                                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1164
  %65 = ptrtoint ptr %list.i.i.i to i32, !dbg !1164
  call void @__asan_store4_noabort(i32 %65), !dbg !1164
  store ptr %triggers.i.i, ptr %list.i.i.i, align 4, !dbg !1164
  %66 = ptrtoint ptr %prev.i.i.i.i to i32, !dbg !1165
  call void @__asan_store4_noabort(i32 %66), !dbg !1165
  store ptr %63, ptr %prev.i.i.i.i, align 8, !dbg !1165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !dbg !1166, !srcloc !1167
  %67 = ptrtoint ptr %63 to i32, !dbg !1166
  call void @__asan_store4_noabort(i32 %67), !dbg !1166
  store volatile ptr %list.i.i.i, ptr %63, align 4, !dbg !1166
  %gcov_ctr40.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.94, i32 0, i32 3), align 8
  %68 = add i64 %gcov_ctr40.i.i.i.i, 1
  store i64 %68, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.94, i32 0, i32 3), align 8
  %69 = ptrtoint ptr %prev.i.i.i to i32, !dbg !1168
  call void @__asan_store4_noabort(i32 %69), !dbg !1168
  store ptr %list.i.i.i, ptr %prev.i.i.i, align 4, !dbg !1168
  br label %enable_eprobe.exit.thread.i, !dbg !1169

enable_eprobe.exit.thread.i:                      ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %call7.i.i = tail call i32 @trace_event_trigger_enable_disable(ptr noundef nonnull %call.i.i, i32 noundef 1) #17, !dbg !1170
  tail call void @update_cond_flag(ptr noundef nonnull %call.i.i) #17, !dbg !1171
  %gcov_ctr93.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 8), align 16, !dbg !1090
  %70 = add i64 %gcov_ctr93.i, 1, !dbg !1090
  store i64 %70, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 8), align 16, !dbg !1090
  %71 = ptrtoint ptr %pos.0161.i to i32, !dbg !1090
  call void @__asan_load4_noabort(i32 %71), !dbg !1090
  %pos.0.i = load ptr, ptr %pos.0161.i, align 4, !dbg !1090
  %gcov_ctr.i128.i = load i64, ptr @__llvm_gcov_ctr.75, align 8
  %72 = add i64 %gcov_ctr.i128.i, 1
  store i64 %72, ptr @__llvm_gcov_ctr.75, align 8
  %73 = ptrtoint ptr %event.i.i.i to i32, !dbg !1172
  call void @__asan_load4_noabort(i32 %73), !dbg !1172
  %74 = load ptr, ptr %event.i.i.i, align 4, !dbg !1172
  %probes.i130.i = getelementptr inbounds %struct.trace_probe_event, ptr %74, i32 0, i32 4, !dbg !1174
  %cmp.not.i = icmp eq ptr %pos.0.i, %probes.i130.i, !dbg !1090
  br i1 %cmp.not.i, label %enable_eprobe.exit.thread.i.if.end81.i_crit_edge, label %enable_eprobe.exit.thread.i.for.body.i_crit_edge, !dbg !1090, !llvm.loop !1175

enable_eprobe.exit.thread.i.for.body.i_crit_edge: ; preds = %enable_eprobe.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1090
  br label %for.body.i, !dbg !1090

enable_eprobe.exit.thread.i.if.end81.i_crit_edge: ; preds = %enable_eprobe.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1090
  br label %if.end81.i, !dbg !1090

enable_eprobe.exit.i:                             ; preds = %new_eprobe_trigger.exit.i.i.enable_eprobe.exit.i_crit_edge, %new_eprobe_trigger.exit.thread.i.i
  %retval.0.i27.i.i = phi ptr [ inttoptr (i32 -12 to ptr), %new_eprobe_trigger.exit.thread.i.i ], [ %call7.i.i35.i.i.i, %new_eprobe_trigger.exit.i.i.enable_eprobe.exit.i_crit_edge ]
  %gcov_ctr10.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 1), align 8, !dbg !1177
  %75 = add i64 %gcov_ctr10.i.i, 1, !dbg !1177
  store i64 %75, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 1), align 8, !dbg !1177
  %gcov_ctr.i21.i.i = load i64, ptr @__llvm_gcov_ctr.39, align 8
  %76 = add i64 %gcov_ctr.i21.i.i, 1
  store i64 %76, ptr @__llvm_gcov_ctr.39, align 8
  %77 = ptrtoint ptr %retval.0.i27.i.i to i32, !dbg !1178
  br label %if.then71.i, !dbg !1101

if.then71.i:                                      ; preds = %enable_eprobe.exit.i, %enable_eprobe.exit.thread137.i
  %retval.0.i140.i = phi i32 [ -2, %enable_eprobe.exit.thread137.i ], [ %77, %enable_eprobe.exit.i ]
  %gcov_ctr92.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 7), align 8, !dbg !1180
  %78 = add i64 %gcov_ctr92.i, 1, !dbg !1180
  store i64 %78, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 7), align 8, !dbg !1180
  br i1 %enabled.0.off0160.i, label %if.then73.i, label %if.then71.i.if.end75.i_crit_edge, !dbg !1181

if.then71.i.if.end75.i_crit_edge:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1181
  br label %if.end75.i, !dbg !1181

if.then73.i:                                      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1182
  %gcov_ctr94.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 9), align 8, !dbg !1182
  %79 = add i64 %gcov_ctr94.i, 1, !dbg !1182
  store i64 %79, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 9), align 8, !dbg !1182
  %80 = ptrtoint ptr %tr1.i.i to i32, !dbg !1183
  call void @__asan_load4_noabort(i32 %80), !dbg !1183
  %81 = load ptr, ptr %tr1.i.i, align 4, !dbg !1183
  tail call fastcc void @disable_eprobe(ptr noundef %add.ptr60.i, ptr noundef %81) #17, !dbg !1184
  br label %if.end75.i, !dbg !1184

if.end75.i:                                       ; preds = %if.then73.i, %if.then71.i.if.end75.i_crit_edge
  br i1 %tobool43.not.i, label %if.else79.i, label %if.then77.i, !dbg !1185

if.then77.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1186
  %gcov_ctr96.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 11), align 8, !dbg !1186
  %82 = add i64 %gcov_ctr96.i, 1, !dbg !1186
  store i64 %82, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 11), align 8, !dbg !1186
  %call78.i = tail call i32 @trace_probe_remove_file(ptr noundef nonnull %5, ptr noundef nonnull %data) #17, !dbg !1187
  br label %if.end81.i, !dbg !1187

if.else79.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1188
  %gcov_ctr95.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 10), align 16, !dbg !1188
  %83 = add i64 %gcov_ctr95.i, 1, !dbg !1188
  store i64 %83, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 10), align 16, !dbg !1188
  %gcov_ctr.i133.i = load i64, ptr @__llvm_gcov_ctr.78, align 8
  %84 = add i64 %gcov_ctr.i133.i, 1
  store i64 %84, ptr @__llvm_gcov_ctr.78, align 8
  %85 = ptrtoint ptr %event.i.i.i to i32, !dbg !1189
  call void @__asan_load4_noabort(i32 %85), !dbg !1189
  %86 = load ptr, ptr %event.i.i.i, align 4, !dbg !1189
  %87 = ptrtoint ptr %86 to i32, !dbg !1192
  call void @__asan_load4_noabort(i32 %87), !dbg !1192
  %88 = load i32, ptr %86, align 4, !dbg !1192
  %and.i.i = and i32 %88, -3, !dbg !1192
  store i32 %and.i.i, ptr %86, align 4, !dbg !1192
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.else79.i, %if.then77.i, %enable_eprobe.exit.thread.i.if.end81.i_crit_edge, %if.end52.i.if.end81.i_crit_edge
  %ret.2144.i = phi i32 [ %retval.0.i140.i, %if.then77.i ], [ %retval.0.i140.i, %if.else79.i ], [ 0, %if.end52.i.if.end81.i_crit_edge ], [ 0, %enable_eprobe.exit.thread.i.if.end81.i_crit_edge ]
  %gcov_ctr97.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 12), align 16, !dbg !1193
  %89 = add i64 %gcov_ctr97.i, 1, !dbg !1193
  store i64 %89, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 12), align 16, !dbg !1193
  br label %cleanup, !dbg !1194

sw.bb1:                                           ; preds = %entry
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 1), align 8, !dbg !1195
  %90 = add i64 %gcov_ctr8, 1, !dbg !1195
  store i64 %90, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 1), align 8, !dbg !1195
  %gcov_ctr.i.i13 = load i64, ptr @__llvm_gcov_ctr.66, align 8
  %91 = add i64 %gcov_ctr.i.i13, 1
  store i64 %91, ptr @__llvm_gcov_ctr.66, align 8
  %gcov_ctr.i.i.i14 = load i64, ptr @__llvm_gcov_ctr.69, align 8
  %92 = add i64 %gcov_ctr.i.i.i14, 1
  store i64 %92, ptr @__llvm_gcov_ctr.69, align 8
  %probes.i.i15 = getelementptr i8, ptr %event, i32 84, !dbg !1196
  %93 = ptrtoint ptr %probes.i.i15 to i32, !dbg !1196
  call void @__asan_load4_noabort(i32 %93), !dbg !1196
  %94 = load ptr, ptr %probes.i.i15, align 4, !dbg !1196
  %tobool.not.i16 = icmp eq ptr %94, null, !dbg !1200
  br i1 %tobool.not.i16, label %land.rhs.i18, label %if.end40.i21, !dbg !1200

land.rhs.i18:                                     ; preds = %sw.bb1
  %gcov_ctr.i17 = load i64, ptr @__llvm_gcov_ctr.72, align 16, !dbg !1200
  %95 = add i64 %gcov_ctr.i17, 1, !dbg !1200
  store i64 %95, ptr @__llvm_gcov_ctr.72, align 16, !dbg !1200
  %.b100.i = load i1, ptr @disable_trace_eprobe.__already_done, align 1, !dbg !1200
  br i1 %.b100.i, label %land.rhs.i18.if.then39.i20_crit_edge, label %if.then.i19, !dbg !1200, !prof !735

land.rhs.i18.if.then39.i20_crit_edge:             ; preds = %land.rhs.i18
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1200
  br label %if.then39.i20, !dbg !1200

if.then.i19:                                      ; preds = %land.rhs.i18
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1200
  store i1 true, ptr @disable_trace_eprobe.__already_done, align 1, !dbg !1200
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 737, i32 noundef 9, ptr noundef null) #17, !dbg !1200
  %gcov_ctr74.i = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 1), align 8, !dbg !1200
  %96 = add i64 %gcov_ctr74.i, 1, !dbg !1200
  store i64 %96, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 1), align 8, !dbg !1200
  %gcov_ctr75.i = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 2), align 16, !dbg !1200
  %97 = add i64 %gcov_ctr75.i, 1, !dbg !1200
  store i64 %97, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 2), align 16, !dbg !1200
  br label %if.then39.i20, !dbg !1200

if.then39.i20:                                    ; preds = %if.then.i19, %land.rhs.i18.if.then39.i20_crit_edge
  %gcov_ctr76.i = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 3), align 8, !dbg !1201
  %98 = add i64 %gcov_ctr76.i, 1, !dbg !1201
  store i64 %98, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 3), align 8, !dbg !1201
  br label %cleanup, !dbg !1201

if.end40.i21:                                     ; preds = %sw.bb1
  %tobool41.not.i = icmp eq ptr %data, null, !dbg !1202
  br i1 %tobool41.not.i, label %if.else.i26, label %if.then42.i, !dbg !1202

if.then42.i:                                      ; preds = %if.end40.i21
  %call43.i = tail call ptr @trace_probe_get_file_link(ptr noundef nonnull %94, ptr noundef nonnull %data) #17, !dbg !1203
  %tobool44.not.i = icmp eq ptr %call43.i, null, !dbg !1203
  br i1 %tobool44.not.i, label %if.then45.i, label %if.end46.i, !dbg !1204

if.then45.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1205
  %gcov_ctr77.i = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 4), align 16, !dbg !1205
  %99 = add i64 %gcov_ctr77.i, 1, !dbg !1205
  store i64 %99, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 4), align 16, !dbg !1205
  br label %cleanup, !dbg !1205

if.end46.i:                                       ; preds = %if.then42.i
  %gcov_ctr.i102.i = load i64, ptr @__llvm_gcov_ctr.99, align 8
  %100 = add i64 %gcov_ctr.i102.i, 1
  store i64 %100, ptr @__llvm_gcov_ctr.99, align 8
  %event.i.i = getelementptr inbounds %struct.trace_probe, ptr %94, i32 0, i32 1, !dbg !1206
  %101 = ptrtoint ptr %event.i.i to i32, !dbg !1206
  call void @__asan_load4_noabort(i32 %101), !dbg !1206
  %102 = load ptr, ptr %event.i.i, align 4, !dbg !1206
  %files.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %102, i32 0, i32 3, !dbg !1209
  %gcov_ctr.i.i103.i = load i64, ptr @__llvm_gcov_ctr.100, align 8
  %103 = add i64 %gcov_ctr.i.i103.i, 1
  store i64 %103, ptr @__llvm_gcov_ctr.100, align 8
  %gcov_ctr.i.i.i.i22 = load i64, ptr @__llvm_gcov_ctr.101, align 8
  %104 = add i64 %gcov_ctr.i.i.i.i22, 1
  store i64 %104, ptr @__llvm_gcov_ctr.101, align 8
  %105 = ptrtoint ptr %files.i.i to i32, !dbg !1210
  call void @__asan_load4_noabort(i32 %105), !dbg !1210
  %106 = load volatile ptr, ptr %files.i.i, align 4, !dbg !1210
  %cmp.i.not.i.i.i = icmp eq ptr %106, %files.i.i, !dbg !1213
  br i1 %cmp.i.not.i.i.i, label %if.end46.i.out.thread.i_crit_edge, label %trace_probe_has_single_file.exit.i, !dbg !1214

if.end46.i.out.thread.i_crit_edge:                ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1214
  br label %out.thread.i, !dbg !1214

trace_probe_has_single_file.exit.i:               ; preds = %if.end46.i
  %gcov_ctr1.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.100, i32 0, i32 1), align 8, !dbg !1215
  %107 = add i64 %gcov_ctr1.i.i.i, 1, !dbg !1215
  store i64 %107, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.100, i32 0, i32 1), align 8, !dbg !1215
  %prev.i.i.i23 = getelementptr inbounds %struct.trace_probe_event, ptr %102, i32 0, i32 3, i32 1, !dbg !1216
  %108 = ptrtoint ptr %prev.i.i.i23 to i32, !dbg !1216
  call void @__asan_load4_noabort(i32 %108), !dbg !1216
  %109 = load ptr, ptr %prev.i.i.i23, align 4, !dbg !1216
  %cmp.i.i.i24 = icmp eq ptr %106, %109, !dbg !1217
  br i1 %cmp.i.i.i24, label %if.end49.i25, label %trace_probe_has_single_file.exit.i.out.thread.i_crit_edge, !dbg !1218

trace_probe_has_single_file.exit.i.out.thread.i_crit_edge: ; preds = %trace_probe_has_single_file.exit.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1218
  br label %out.thread.i, !dbg !1218

out.thread.i:                                     ; preds = %trace_probe_has_single_file.exit.i.out.thread.i_crit_edge, %if.end46.i.out.thread.i_crit_edge
  %gcov_ctr78.i = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 5), align 8, !dbg !1219
  %110 = add i64 %gcov_ctr78.i, 1, !dbg !1219
  store i64 %110, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 5), align 8, !dbg !1219
  br label %if.then69.i, !dbg !1220

if.end49.i25:                                     ; preds = %trace_probe_has_single_file.exit.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1221
  %gcov_ctr79.i = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 6), align 16, !dbg !1221
  %111 = add i64 %gcov_ctr79.i, 1, !dbg !1221
  store i64 %111, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 6), align 16, !dbg !1221
  %gcov_ctr.i104.i = load i64, ptr @__llvm_gcov_ctr.78, align 8
  %112 = add i64 %gcov_ctr.i104.i, 1
  store i64 %112, ptr @__llvm_gcov_ctr.78, align 8
  br label %if.end50.i, !dbg !1222

if.else.i26:                                      ; preds = %if.end40.i21
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1223
  %gcov_ctr80.i = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 7), align 8, !dbg !1223
  %113 = add i64 %gcov_ctr80.i, 1, !dbg !1223
  store i64 %113, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 7), align 8, !dbg !1223
  %gcov_ctr.i106.i = load i64, ptr @__llvm_gcov_ctr.78, align 8
  %114 = add i64 %gcov_ctr.i106.i, 1
  store i64 %114, ptr @__llvm_gcov_ctr.78, align 8
  %event.i107.i = getelementptr inbounds %struct.trace_probe, ptr %94, i32 0, i32 1, !dbg !1224
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else.i26, %if.end49.i25
  %event.i107.sink.i = phi ptr [ %event.i107.i, %if.else.i26 ], [ %event.i.i, %if.end49.i25 ]
  %.sink123.i = phi i32 [ -3, %if.else.i26 ], [ -2, %if.end49.i25 ]
  %115 = ptrtoint ptr %event.i107.sink.i to i32, !dbg !1226
  call void @__asan_load4_noabort(i32 %115), !dbg !1226
  %116 = load ptr, ptr %event.i107.sink.i, align 4, !dbg !1226
  %117 = ptrtoint ptr %116 to i32, !dbg !1226
  call void @__asan_load4_noabort(i32 %117), !dbg !1226
  %118 = load i32, ptr %116, align 4, !dbg !1226
  %and.i108.i = and i32 %118, %.sink123.i, !dbg !1226
  store i32 %and.i108.i, ptr %116, align 4, !dbg !1226
  %gcov_ctr.i109.i = load i64, ptr @__llvm_gcov_ctr.73, align 8
  %119 = add i64 %gcov_ctr.i109.i, 1
  store i64 %119, ptr @__llvm_gcov_ctr.73, align 8
  %gcov_ctr.i.i110.i = load i64, ptr @__llvm_gcov_ctr.79, align 8
  %120 = add i64 %gcov_ctr.i.i110.i, 1
  store i64 %120, ptr @__llvm_gcov_ctr.79, align 8
  %event.i.i.i27 = getelementptr inbounds %struct.trace_probe, ptr %94, i32 0, i32 1, !dbg !1227
  %121 = ptrtoint ptr %event.i.i.i27 to i32, !dbg !1227
  call void @__asan_load4_noabort(i32 %121), !dbg !1227
  %122 = load ptr, ptr %event.i.i.i27, align 4, !dbg !1227
  %123 = ptrtoint ptr %122 to i32, !dbg !1230
  call void @__asan_load4_noabort(i32 %123), !dbg !1230
  %124 = load i32, ptr %122, align 4, !dbg !1230
  %and.i.i.i28 = and i32 %124, 3, !dbg !1231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i28), !dbg !1232
  %tobool.i.i.not.i29 = icmp eq i32 %and.i.i.i28, 0, !dbg !1232
  br i1 %tobool.i.i.not.i29, label %if.then52.i, label %if.end50.i.out.i_crit_edge, !dbg !1233

if.end50.i.out.i_crit_edge:                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1233
  br label %out.i, !dbg !1233

if.then52.i:                                      ; preds = %if.end50.i
  %gcov_ctr.i111.i = load i64, ptr @__llvm_gcov_ctr.75, align 8
  %probes.i113.i = getelementptr inbounds %struct.trace_probe_event, ptr %122, i32 0, i32 4, !dbg !1234
  %125 = ptrtoint ptr %probes.i113.i to i32, !dbg !1236
  call void @__asan_load4_noabort(i32 %125), !dbg !1236
  %pos.0117.i = load ptr, ptr %probes.i113.i, align 4, !dbg !1236
  %126 = add i64 %gcov_ctr.i111.i, 2
  store i64 %126, ptr @__llvm_gcov_ctr.75, align 8
  %cmp.not120.i = icmp eq ptr %pos.0117.i, %probes.i113.i, !dbg !1236
  br i1 %cmp.not120.i, label %if.then52.i.for.end.i_crit_edge, label %for.body.lr.ph.i30, !dbg !1236

if.then52.i.for.end.i_crit_edge:                  ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1236
  br label %for.end.i, !dbg !1236

for.body.lr.ph.i30:                               ; preds = %if.then52.i
  %tr.i = getelementptr inbounds %struct.trace_event_file, ptr %data, i32 0, i32 4
  br label %for.body.i34, !dbg !1236

for.body.i34:                                     ; preds = %for.body.i34.for.body.i34_crit_edge, %for.body.lr.ph.i30
  %pos.0121.i = phi ptr [ %pos.0117.i, %for.body.lr.ph.i30 ], [ %pos.0.i32, %for.body.i34.for.body.i34_crit_edge ]
  %gcov_ctr81.i = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 8), align 16, !dbg !1237
  %127 = add i64 %gcov_ctr81.i, 1, !dbg !1237
  store i64 %127, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 8), align 16, !dbg !1237
  %add.ptr60.i31 = getelementptr i8, ptr %pos.0121.i, i32 -24, !dbg !1237
  %128 = ptrtoint ptr %tr.i to i32, !dbg !1238
  call void @__asan_load4_noabort(i32 %128), !dbg !1238
  %129 = load ptr, ptr %tr.i, align 4, !dbg !1238
  tail call fastcc void @disable_eprobe(ptr noundef %add.ptr60.i31, ptr noundef %129) #17, !dbg !1239
  %130 = ptrtoint ptr %pos.0121.i to i32, !dbg !1236
  call void @__asan_load4_noabort(i32 %130), !dbg !1236
  %pos.0.i32 = load ptr, ptr %pos.0121.i, align 4, !dbg !1236
  %gcov_ctr.i114.i = load i64, ptr @__llvm_gcov_ctr.75, align 8
  %131 = add i64 %gcov_ctr.i114.i, 1
  store i64 %131, ptr @__llvm_gcov_ctr.75, align 8
  %132 = ptrtoint ptr %event.i.i.i27 to i32, !dbg !1240
  call void @__asan_load4_noabort(i32 %132), !dbg !1240
  %133 = load ptr, ptr %event.i.i.i27, align 4, !dbg !1240
  %probes.i116.i = getelementptr inbounds %struct.trace_probe_event, ptr %133, i32 0, i32 4, !dbg !1242
  %cmp.not.i33 = icmp eq ptr %pos.0.i32, %probes.i116.i, !dbg !1236
  br i1 %cmp.not.i33, label %for.body.i34.for.end.i_crit_edge, label %for.body.i34.for.body.i34_crit_edge, !dbg !1236, !llvm.loop !1243

for.body.i34.for.body.i34_crit_edge:              ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1236
  br label %for.body.i34, !dbg !1236

for.body.i34.for.end.i_crit_edge:                 ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1236
  br label %for.end.i, !dbg !1236

for.end.i:                                        ; preds = %for.body.i34.for.end.i_crit_edge, %if.then52.i.for.end.i_crit_edge
  %gcov_ctr82.i = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 9), align 8, !dbg !1245
  %134 = add i64 %gcov_ctr82.i, 1, !dbg !1245
  store i64 %134, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 9), align 8, !dbg !1245
  br label %out.i, !dbg !1245

out.i:                                            ; preds = %for.end.i, %if.end50.i.out.i_crit_edge
  br i1 %tobool41.not.i, label %out.i.cleanup_crit_edge, label %out.i.if.then69.i_crit_edge, !dbg !1220

out.i.if.then69.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1220
  br label %if.then69.i, !dbg !1220

out.i.cleanup_crit_edge:                          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1220
  br label %cleanup, !dbg !1220

if.then69.i:                                      ; preds = %out.i.if.then69.i_crit_edge, %out.thread.i
  %gcov_ctr83.i = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 10), align 16, !dbg !1246
  %135 = add i64 %gcov_ctr83.i, 1, !dbg !1246
  store i64 %135, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 10), align 16, !dbg !1246
  %call70.i = tail call i32 @trace_probe_remove_file(ptr noundef nonnull %94, ptr noundef nonnull %data) #17, !dbg !1247
  br label %cleanup, !dbg !1247

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge108, %entry.sw.bb3_crit_edge109, %entry.sw.bb3_crit_edge110, %entry.sw.bb3_crit_edge111, %entry.sw.bb3_crit_edge112
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 3), align 8, !dbg !1248
  %136 = add i64 %gcov_ctr10, 1, !dbg !1248
  store i64 %136, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 3), align 8, !dbg !1248
  br label %cleanup, !dbg !1248

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1249
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 2), align 16, !dbg !1249
  %137 = add i64 %gcov_ctr9, 1, !dbg !1249
  store i64 %137, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 2), align 16, !dbg !1249
  br label %cleanup, !dbg !1249

cleanup:                                          ; preds = %sw.epilog, %sw.bb3, %if.then69.i, %out.i.cleanup_crit_edge, %if.then45.i, %if.then39.i20, %if.end81.i, %if.then51.i, %if.then47.i, %if.then39.i
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 0, %sw.bb3 ], [ -19, %if.then39.i ], [ %call45.i, %if.then47.i ], [ 0, %if.then51.i ], [ %ret.2144.i, %if.end81.i ], [ -19, %if.then39.i20 ], [ -2, %if.then45.i ], [ 0, %if.then69.i ], [ 0, %out.i.cleanup_crit_edge ], !dbg !1081
  ret i32 %retval.0, !dbg !1250
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @print_eprobe_event(ptr noundef %iter, i32 noundef %flags, ptr nocapture noundef readonly %event) #0 align 64 !dbg !1251 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1252
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15, !dbg !1253
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16, !dbg !1254
  %0 = ptrtoint ptr %ent to i32, !dbg !1254
  call void @__asan_load4_noabort(i32 %0), !dbg !1254
  %1 = load ptr, ptr %ent, align 8, !dbg !1254
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.66, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.66, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.69, align 8
  %3 = add i64 %gcov_ctr.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.69, align 8
  %probes.i = getelementptr i8, ptr %event, i32 68, !dbg !1255
  %4 = ptrtoint ptr %probes.i to i32, !dbg !1255
  call void @__asan_load4_noabort(i32 %4), !dbg !1255
  %5 = load ptr, ptr %probes.i, align 4, !dbg !1255
  %tobool.not = icmp eq ptr %5, null, !dbg !1257
  br i1 %tobool.not, label %land.rhs, label %if.end40, !dbg !1257

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.65, align 16, !dbg !1257
  %6 = add i64 %gcov_ctr, 1, !dbg !1257
  store i64 %6, ptr @__llvm_gcov_ctr.65, align 16, !dbg !1257
  %.b83 = load i1, ptr @print_eprobe_event.__already_done, align 1, !dbg !1257
  br i1 %.b83, label %land.rhs.if.then39_crit_edge, label %if.then, !dbg !1257, !prof !735

land.rhs.if.then39_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1257
  br label %if.then39, !dbg !1257

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1257
  store i1 true, ptr @print_eprobe_event.__already_done, align 1, !dbg !1257
  %gcov_ctr60 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 1), align 8, !dbg !1257
  %7 = add i64 %gcov_ctr60, 1, !dbg !1257
  store i64 %7, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 1), align 8, !dbg !1257
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 277, i32 noundef 9, ptr noundef null) #17, !dbg !1257
  %gcov_ctr61 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 2), align 16, !dbg !1257
  %8 = add i64 %gcov_ctr61, 1, !dbg !1257
  store i64 %8, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 2), align 16, !dbg !1257
  br label %if.then39, !dbg !1257

if.then39:                                        ; preds = %if.then, %land.rhs.if.then39_crit_edge
  %gcov_ctr62 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 3), align 8, !dbg !1258
  %9 = add i64 %gcov_ctr62, 1, !dbg !1258
  store i64 %9, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 3), align 8, !dbg !1258
  br label %out, !dbg !1258

if.end40:                                         ; preds = %entry
  %event44 = getelementptr i8, ptr %5, i32 -16, !dbg !1259
  %10 = ptrtoint ptr %event44 to i32, !dbg !1259
  call void @__asan_load4_noabort(i32 %10), !dbg !1259
  %11 = load ptr, ptr %event44, align 4, !dbg !1259
  %type46 = getelementptr inbounds %struct.trace_event_call, ptr %11, i32 0, i32 3, i32 2, !dbg !1260
  %12 = ptrtoint ptr %type46 to i32, !dbg !1260
  call void @__asan_load4_noabort(i32 %12), !dbg !1260
  %13 = load i32, ptr %type46, align 4, !dbg !1260
  %gcov_ctr.i85 = load i64, ptr @__llvm_gcov_ctr.67, align 8
  %14 = add i64 %gcov_ctr.i85, 1
  store i64 %14, ptr @__llvm_gcov_ctr.67, align 8
  %event.i = getelementptr inbounds %struct.trace_probe, ptr %5, i32 0, i32 1, !dbg !1261
  %15 = ptrtoint ptr %event.i to i32, !dbg !1261
  call void @__asan_load4_noabort(i32 %15), !dbg !1261
  %16 = load ptr, ptr %event.i, align 4, !dbg !1261
  %flags.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %16, i32 0, i32 2, i32 8, !dbg !1263
  %17 = ptrtoint ptr %flags.i.i to i32, !dbg !1263
  call void @__asan_load4_noabort(i32 %17), !dbg !1263
  %18 = load i32, ptr %flags.i.i, align 4, !dbg !1263
  %and.i.i = and i32 %18, 16, !dbg !1265
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !1265
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !1265
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !dbg !1266

if.then.i.i:                                      ; preds = %if.end40
  %19 = getelementptr inbounds %struct.trace_probe_event, ptr %16, i32 0, i32 2, i32 2, !dbg !1267
  %20 = ptrtoint ptr %19 to i32, !dbg !1267
  call void @__asan_load4_noabort(i32 %20), !dbg !1267
  %21 = load ptr, ptr %19, align 4, !dbg !1267
  %tobool1.not.i.i = icmp eq ptr %21, null, !dbg !1268
  br i1 %tobool1.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !dbg !1268

cond.true.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1269
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !1269
  %22 = add i64 %gcov_ctr2.i.i, 1, !dbg !1269
  store i64 %22, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !1269
  %23 = ptrtoint ptr %21 to i32, !dbg !1270
  call void @__asan_load4_noabort(i32 %23), !dbg !1270
  %24 = load ptr, ptr %21, align 4, !dbg !1270
  br label %trace_probe_name.exit, !dbg !1268

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1268
  %gcov_ctr.i.i86 = load i64, ptr @__llvm_gcov_ctr.45, align 16, !dbg !1268
  %25 = add i64 %gcov_ctr.i.i86, 1, !dbg !1268
  store i64 %25, ptr @__llvm_gcov_ctr.45, align 16, !dbg !1268
  br label %trace_probe_name.exit, !dbg !1268

if.else.i.i:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1271
  %gcov_ctr3.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 2), align 16, !dbg !1271
  %26 = add i64 %gcov_ctr3.i.i, 1, !dbg !1271
  store i64 %26, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 2), align 16, !dbg !1271
  %27 = getelementptr inbounds %struct.trace_probe_event, ptr %16, i32 0, i32 2, i32 2, !dbg !1272
  %28 = ptrtoint ptr %27 to i32, !dbg !1272
  call void @__asan_load4_noabort(i32 %28), !dbg !1272
  %29 = load ptr, ptr %27, align 4, !dbg !1272
  br label %trace_probe_name.exit, !dbg !1273

trace_probe_name.exit:                            ; preds = %if.else.i.i, %cond.false.i.i, %cond.true.i.i
  %retval.0.i.i = phi ptr [ %29, %if.else.i.i ], [ %24, %cond.true.i.i ], [ null, %cond.false.i.i ], !dbg !1274
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i.i) #17, !dbg !1275
  %call48 = tail call ptr @ftrace_find_event(i32 noundef %13) #17, !dbg !1276
  %tobool49.not = icmp eq ptr %call48, null, !dbg !1277
  br i1 %tobool49.not, label %if.else, label %if.then50, !dbg !1277

if.then50:                                        ; preds = %trace_probe_name.exit
  %class = getelementptr i8, ptr %call48, i32 -8, !dbg !1278
  %30 = ptrtoint ptr %class to i32, !dbg !1278
  call void @__asan_load4_noabort(i32 %30), !dbg !1278
  %31 = load ptr, ptr %class, align 4, !dbg !1278
  %32 = ptrtoint ptr %31 to i32, !dbg !1279
  call void @__asan_load4_noabort(i32 %32), !dbg !1279
  %33 = load ptr, ptr %31, align 4, !dbg !1279
  %flags.i = getelementptr i8, ptr %call48, i32 40, !dbg !1280
  %34 = ptrtoint ptr %flags.i to i32, !dbg !1280
  call void @__asan_load4_noabort(i32 %34), !dbg !1280
  %35 = load i32, ptr %flags.i, align 4, !dbg !1280
  %and.i = and i32 %35, 16, !dbg !1282
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !1282
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !1282
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !1283

if.then.i:                                        ; preds = %if.then50
  %36 = getelementptr i8, ptr %call48, i32 -4, !dbg !1284
  %37 = ptrtoint ptr %36 to i32, !dbg !1284
  call void @__asan_load4_noabort(i32 %37), !dbg !1284
  %38 = load ptr, ptr %36, align 4, !dbg !1284
  %tobool1.not.i = icmp eq ptr %38, null, !dbg !1285
  br i1 %tobool1.not.i, label %cond.false.i, label %cond.true.i, !dbg !1285

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1286
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !1286
  %39 = add i64 %gcov_ctr2.i, 1, !dbg !1286
  store i64 %39, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !1286
  %40 = ptrtoint ptr %36 to i32, !dbg !1287
  call void @__asan_load4_noabort(i32 %40), !dbg !1287
  %41 = load ptr, ptr %36, align 4, !dbg !1287
  %42 = ptrtoint ptr %41 to i32, !dbg !1288
  call void @__asan_load4_noabort(i32 %42), !dbg !1288
  %43 = load ptr, ptr %41, align 4, !dbg !1288
  br label %trace_event_name.exit, !dbg !1285

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1285
  %gcov_ctr.i87 = load i64, ptr @__llvm_gcov_ctr.45, align 16, !dbg !1285
  %44 = add i64 %gcov_ctr.i87, 1, !dbg !1285
  store i64 %44, ptr @__llvm_gcov_ctr.45, align 16, !dbg !1285
  br label %trace_event_name.exit, !dbg !1285

if.else.i:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1289
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 2), align 16, !dbg !1289
  %45 = add i64 %gcov_ctr3.i, 1, !dbg !1289
  store i64 %45, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 2), align 16, !dbg !1289
  %46 = getelementptr i8, ptr %call48, i32 -4, !dbg !1290
  %47 = ptrtoint ptr %46 to i32, !dbg !1290
  call void @__asan_load4_noabort(i32 %47), !dbg !1290
  %48 = load ptr, ptr %46, align 4, !dbg !1290
  br label %trace_event_name.exit, !dbg !1291

trace_event_name.exit:                            ; preds = %if.else.i, %cond.false.i, %cond.true.i
  %retval.0.i = phi ptr [ %48, %if.else.i ], [ %43, %cond.true.i ], [ null, %cond.false.i ], !dbg !1292
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.6, ptr noundef %33, ptr noundef %retval.0.i) #17, !dbg !1293
  br label %if.end55, !dbg !1294

if.else:                                          ; preds = %trace_probe_name.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1295
  %gcov_ctr63 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 4), align 16, !dbg !1295
  %49 = add i64 %gcov_ctr63, 1, !dbg !1295
  store i64 %49, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 4), align 16, !dbg !1295
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.7, i32 noundef %13) #17, !dbg !1296
  br label %if.end55

if.end55:                                         ; preds = %if.else, %trace_event_name.exit
  tail call void @trace_seq_putc(ptr noundef %seq, i8 noundef zeroext 41) #17, !dbg !1297
  %args = getelementptr inbounds %struct.trace_probe, ptr %5, i32 0, i32 4, !dbg !1298
  %nr_args = getelementptr inbounds %struct.trace_probe, ptr %5, i32 0, i32 3, !dbg !1299
  %50 = ptrtoint ptr %nr_args to i32, !dbg !1299
  call void @__asan_load4_noabort(i32 %50), !dbg !1299
  %51 = load i32, ptr %nr_args, align 4, !dbg !1299
  %arrayidx = getelementptr %struct.eprobe_trace_entry_head, ptr %1, i32 1, !dbg !1300
  %gcov_ctr.i88 = load i64, ptr @__llvm_gcov_ctr.68, align 16
  %52 = add i64 %gcov_ctr.i88, 1
  store i64 %52, ptr @__llvm_gcov_ctr.68, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51), !dbg !1301
  %cmp62.i = icmp sgt i32 %51, 0, !dbg !1301
  br i1 %cmp62.i, label %if.end55.for.body.i_crit_edge, label %if.end55.if.end58_crit_edge, !dbg !1304

if.end55.if.end58_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1304
  br label %if.end58, !dbg !1304

if.end55.for.body.i_crit_edge:                    ; preds = %if.end55
  br label %for.body.i, !dbg !1304

for.body.i:                                       ; preds = %for.inc24.i.for.body.i_crit_edge, %if.end55.for.body.i_crit_edge
  %i.063.i = phi i32 [ %inc25.i, %for.inc24.i.for.body.i_crit_edge ], [ 0, %if.end55.for.body.i_crit_edge ]
  %name.i = getelementptr %struct.probe_arg, ptr %args, i32 %i.063.i, i32 4, !dbg !1305
  %53 = ptrtoint ptr %name.i to i32, !dbg !1305
  call void @__asan_load4_noabort(i32 %53), !dbg !1305
  %54 = load ptr, ptr %name.i, align 4, !dbg !1305
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.8, ptr noundef %54) #17, !dbg !1306
  %count.i = getelementptr %struct.probe_arg, ptr %args, i32 %i.063.i, i32 3, !dbg !1307
  %55 = ptrtoint ptr %count.i to i32, !dbg !1307
  call void @__asan_load4_noabort(i32 %55), !dbg !1307
  %56 = load i32, ptr %count.i, align 4, !dbg !1307
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56), !dbg !1307
  %tobool.not.i89 = icmp eq i32 %56, 0, !dbg !1307
  br i1 %tobool.not.i89, label %if.then.i90, label %if.end7.i, !dbg !1307, !prof !735

if.then.i90:                                      ; preds = %for.body.i
  %type.i = getelementptr %struct.probe_arg, ptr %args, i32 %i.063.i, i32 7, !dbg !1308
  %57 = ptrtoint ptr %type.i to i32, !dbg !1308
  call void @__asan_load4_noabort(i32 %57), !dbg !1308
  %58 = load ptr, ptr %type.i, align 4, !dbg !1308
  %print.i = getelementptr inbounds %struct.fetch_type, ptr %58, i32 0, i32 3, !dbg !1309
  %59 = ptrtoint ptr %print.i to i32, !dbg !1309
  call void @__asan_load4_noabort(i32 %59), !dbg !1309
  %60 = load ptr, ptr %print.i, align 4, !dbg !1309
  %offset.i = getelementptr %struct.probe_arg, ptr %args, i32 %i.063.i, i32 2, !dbg !1310
  %61 = ptrtoint ptr %offset.i to i32, !dbg !1310
  call void @__asan_load4_noabort(i32 %61), !dbg !1310
  %62 = load i32, ptr %offset.i, align 4, !dbg !1310
  %add.ptr4.i = getelementptr i8, ptr %arrayidx, i32 %62, !dbg !1311
  %call.i = tail call i32 %60(ptr noundef %seq, ptr noundef %add.ptr4.i, ptr noundef %1) #17, !dbg !1312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !1312
  %tobool5.not.i = icmp eq i32 %call.i, 0, !dbg !1312
  br i1 %tobool5.not.i, label %if.then.i90.if.then57_crit_edge, label %if.then.i90.for.inc24.i_crit_edge, !dbg !1313

if.then.i90.for.inc24.i_crit_edge:                ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1313
  br label %for.inc24.i, !dbg !1313

if.then.i90.if.then57_crit_edge:                  ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1313
  br label %if.then57, !dbg !1313

if.end7.i:                                        ; preds = %for.body.i
  tail call void @trace_seq_putc(ptr noundef %seq, i8 noundef zeroext 123) #17, !dbg !1314
  %63 = ptrtoint ptr %count.i to i32, !dbg !1315
  call void @__asan_load4_noabort(i32 %63), !dbg !1315
  %64 = load i32, ptr %count.i, align 4, !dbg !1315
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64), !dbg !1316
  %cmp1259.not.i = icmp eq i32 %64, 0, !dbg !1316
  br i1 %cmp1259.not.i, label %if.end7.i.cleanup.cont.i_crit_edge, label %for.body13.lr.ph.i, !dbg !1317

if.end7.i.cleanup.cont.i_crit_edge:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1317
  br label %cleanup.cont.i, !dbg !1317

for.body13.lr.ph.i:                               ; preds = %if.end7.i
  %offset8.i = getelementptr %struct.probe_arg, ptr %args, i32 %i.063.i, i32 2, !dbg !1318
  %65 = ptrtoint ptr %offset8.i to i32, !dbg !1318
  call void @__asan_load4_noabort(i32 %65), !dbg !1318
  %66 = load i32, ptr %offset8.i, align 4, !dbg !1318
  %add.ptr9.i = getelementptr i8, ptr %arrayidx, i32 %66, !dbg !1319
  %type14.i = getelementptr %struct.probe_arg, ptr %args, i32 %i.063.i, i32 7
  br label %for.body13.i, !dbg !1317

for.body13.i:                                     ; preds = %if.end19.i.for.body13.i_crit_edge, %for.body13.lr.ph.i
  %j.061.i = phi i32 [ 0, %for.body13.lr.ph.i ], [ %inc.i, %if.end19.i.for.body13.i_crit_edge ]
  %p.060.i = phi ptr [ %add.ptr9.i, %for.body13.lr.ph.i ], [ %add.ptr23.i, %if.end19.i.for.body13.i_crit_edge ]
  %67 = ptrtoint ptr %type14.i to i32, !dbg !1320
  call void @__asan_load4_noabort(i32 %67), !dbg !1320
  %68 = load ptr, ptr %type14.i, align 4, !dbg !1320
  %print15.i = getelementptr inbounds %struct.fetch_type, ptr %68, i32 0, i32 3, !dbg !1321
  %69 = ptrtoint ptr %print15.i to i32, !dbg !1321
  call void @__asan_load4_noabort(i32 %69), !dbg !1321
  %70 = load ptr, ptr %print15.i, align 4, !dbg !1321
  %call16.i = tail call i32 %70(ptr noundef %seq, ptr noundef %p.060.i, ptr noundef %1) #17, !dbg !1322
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i), !dbg !1322
  %tobool17.not.i = icmp eq i32 %call16.i, 0, !dbg !1322
  br i1 %tobool17.not.i, label %for.body13.i.if.then57_crit_edge, label %if.end19.i, !dbg !1323

for.body13.i.if.then57_crit_edge:                 ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1323
  br label %if.then57, !dbg !1323

if.end19.i:                                       ; preds = %for.body13.i
  %71 = ptrtoint ptr %count.i to i32, !dbg !1324
  call void @__asan_load4_noabort(i32 %71), !dbg !1324
  %72 = load i32, ptr %count.i, align 4, !dbg !1324
  %sub.i = add i32 %72, -1, !dbg !1325
  call void @__sanitizer_cov_trace_cmp4(i32 %j.061.i, i32 %sub.i), !dbg !1326
  %cmp21.i = icmp eq i32 %j.061.i, %sub.i, !dbg !1326
  %conv.i = select i1 %cmp21.i, i8 125, i8 44, !dbg !1327
  tail call void @trace_seq_putc(ptr noundef %seq, i8 noundef zeroext %conv.i) #17, !dbg !1328
  %73 = ptrtoint ptr %type14.i to i32, !dbg !1329
  call void @__asan_load4_noabort(i32 %73), !dbg !1329
  %74 = load ptr, ptr %type14.i, align 4, !dbg !1329
  %size.i = getelementptr inbounds %struct.fetch_type, ptr %74, i32 0, i32 1, !dbg !1330
  %75 = ptrtoint ptr %size.i to i32, !dbg !1330
  call void @__asan_load4_noabort(i32 %75), !dbg !1330
  %76 = load i32, ptr %size.i, align 4, !dbg !1330
  %add.ptr23.i = getelementptr i8, ptr %p.060.i, i32 %76, !dbg !1331
  %gcov_ctr34.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 5), align 8, !dbg !1332
  %77 = add i64 %gcov_ctr34.i, 1, !dbg !1332
  store i64 %77, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 5), align 8, !dbg !1332
  %inc.i = add nuw i32 %j.061.i, 1, !dbg !1332
  %78 = ptrtoint ptr %count.i to i32, !dbg !1315
  call void @__asan_load4_noabort(i32 %78), !dbg !1315
  %79 = load i32, ptr %count.i, align 4, !dbg !1315
  %cmp12.i = icmp ult i32 %inc.i, %79, !dbg !1316
  br i1 %cmp12.i, label %if.end19.i.for.body13.i_crit_edge, label %if.end19.i.cleanup.cont.i_crit_edge, !dbg !1317, !llvm.loop !1333

if.end19.i.cleanup.cont.i_crit_edge:              ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1317
  br label %cleanup.cont.i, !dbg !1317

if.end19.i.for.body13.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1317
  br label %for.body13.i, !dbg !1317

cleanup.cont.i:                                   ; preds = %if.end19.i.cleanup.cont.i_crit_edge, %if.end7.i.cleanup.cont.i_crit_edge
  %gcov_ctr35.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 6), align 16, !dbg !1335
  %80 = add i64 %gcov_ctr35.i, 1, !dbg !1335
  store i64 %80, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 6), align 16, !dbg !1335
  br label %for.inc24.i, !dbg !1335

for.inc24.i:                                      ; preds = %cleanup.cont.i, %if.then.i90.for.inc24.i_crit_edge
  %.sink.i = phi ptr [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 7), %cleanup.cont.i ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 3), %if.then.i90.for.inc24.i_crit_edge ]
  %81 = ptrtoint ptr %.sink.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %gcov_ctr32.i = load i64, ptr %.sink.i, align 8
  %82 = add i64 %gcov_ctr32.i, 1
  store i64 %82, ptr %.sink.i, align 8
  %inc25.i = add nuw nsw i32 %i.063.i, 1, !dbg !1336
  %exitcond.not.i = icmp eq i32 %inc25.i, %51, !dbg !1301
  br i1 %exitcond.not.i, label %for.inc24.i.if.end58_crit_edge, label %for.inc24.i.for.body.i_crit_edge, !dbg !1304, !llvm.loop !1337

for.inc24.i.for.body.i_crit_edge:                 ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1304
  br label %for.body.i, !dbg !1304

for.inc24.i.if.end58_crit_edge:                   ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1304
  br label %if.end58, !dbg !1304

if.then57:                                        ; preds = %for.body13.i.if.then57_crit_edge, %if.then.i90.if.then57_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 4), %for.body13.i.if.then57_crit_edge ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 2), %if.then.i90.if.then57_crit_edge ]
  %83 = ptrtoint ptr %.sink to i32, !dbg !1338
  call void @__asan_load8_noabort(i32 %83), !dbg !1338
  %gcov_ctr31.i = load i64, ptr %.sink, align 16, !dbg !1338
  %84 = add i64 %gcov_ctr31.i, 1, !dbg !1338
  store i64 %84, ptr %.sink, align 16, !dbg !1338
  %gcov_ctr64 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 5), align 8, !dbg !1339
  %85 = add i64 %gcov_ctr64, 1, !dbg !1339
  store i64 %85, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 5), align 8, !dbg !1339
  br label %out, !dbg !1339

if.end58:                                         ; preds = %for.inc24.i.if.end58_crit_edge, %if.end55.if.end58_crit_edge
  %gcov_ctr30.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 1), align 8, !dbg !1340
  %86 = add i64 %gcov_ctr30.i, 1, !dbg !1340
  store i64 %86, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.68, i32 0, i32 1), align 8, !dbg !1340
  %gcov_ctr65 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 6), align 16, !dbg !1341
  %87 = add i64 %gcov_ctr65, 1, !dbg !1341
  store i64 %87, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 6), align 16, !dbg !1341
  tail call void @trace_seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #17, !dbg !1342
  br label %out, !dbg !1342

out:                                              ; preds = %if.end58, %if.then57, %if.then39
  %call59 = tail call i32 @trace_handle_return(ptr noundef %seq) #17, !dbg !1343
  ret i32 %call59, !dbg !1344
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ftrace_find_event(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eprobe_event_define_fields(ptr noundef %event_call) #0 align 64 !dbg !1345 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1346
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.66, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.66, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.69, align 8
  %1 = add i64 %gcov_ctr.i.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.69, align 8
  %probes.i = getelementptr i8, ptr %event_call, i32 84, !dbg !1347
  %2 = ptrtoint ptr %probes.i to i32, !dbg !1347
  call void @__asan_load4_noabort(i32 %2), !dbg !1347
  %3 = load ptr, ptr %probes.i, align 4, !dbg !1347
  %tobool.not = icmp eq ptr %3, null, !dbg !1349
  br i1 %tobool.not, label %land.rhs, label %if.end39, !dbg !1349

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.70, align 16, !dbg !1349
  %4 = add i64 %gcov_ctr, 1, !dbg !1349
  store i64 %4, ptr @__llvm_gcov_ctr.70, align 16, !dbg !1349
  %.b50 = load i1, ptr @eprobe_event_define_fields.__already_done, align 1, !dbg !1349
  br i1 %.b50, label %land.rhs.if.then38_crit_edge, label %if.then, !dbg !1349, !prof !735

land.rhs.if.then38_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1349
  br label %if.then38, !dbg !1349

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1349
  store i1 true, ptr @eprobe_event_define_fields.__already_done, align 1, !dbg !1349
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 9, ptr noundef null) #17, !dbg !1349
  %gcov_ctr42 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 1), align 8, !dbg !1349
  %5 = add i64 %gcov_ctr42, 1, !dbg !1349
  store i64 %5, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 1), align 8, !dbg !1349
  %gcov_ctr43 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 2), align 16, !dbg !1349
  %6 = add i64 %gcov_ctr43, 1, !dbg !1349
  store i64 %6, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 2), align 16, !dbg !1349
  br label %if.then38, !dbg !1349

if.then38:                                        ; preds = %if.then, %land.rhs.if.then38_crit_edge
  %gcov_ctr45 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 4), align 16, !dbg !1350
  %7 = add i64 %gcov_ctr45, 1, !dbg !1350
  store i64 %7, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 4), align 16, !dbg !1350
  br label %cleanup, !dbg !1350

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1351
  %gcov_ctr44 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 3), align 8, !dbg !1351
  %8 = add i64 %gcov_ctr44, 1, !dbg !1351
  store i64 %8, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 3), align 8, !dbg !1351
  %call40 = tail call i32 @traceprobe_define_arg_fields(ptr noundef %event_call, i32 noundef 8, ptr noundef nonnull %3) #17, !dbg !1352
  br label %cleanup, !dbg !1353

cleanup:                                          ; preds = %if.end39, %if.then38
  %retval.0 = phi i32 [ -2, %if.then38 ], [ %call40, %if.end39 ], !dbg !1354
  ret i32 %retval.0, !dbg !1355
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @traceprobe_define_arg_fields(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_add_file(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @disable_eprobe(ptr noundef readonly %ep, ptr noundef %tr) unnamed_addr #0 align 64 !dbg !1356 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1357
  %0 = ptrtoint ptr %ep to i32, !dbg !1358
  call void @__asan_load4_noabort(i32 %0), !dbg !1358
  %1 = load ptr, ptr %ep, align 4, !dbg !1358
  %event_name = getelementptr inbounds %struct.trace_eprobe, ptr %ep, i32 0, i32 1, !dbg !1359
  %2 = ptrtoint ptr %event_name to i32, !dbg !1359
  call void @__asan_load4_noabort(i32 %2), !dbg !1359
  %3 = load ptr, ptr %event_name, align 4, !dbg !1359
  %call = tail call ptr @find_event_file(ptr noundef %tr, ptr noundef %1, ptr noundef %3) #17, !dbg !1360
  %tobool.not = icmp eq ptr %call, null, !dbg !1361
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1362

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1363
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.77, align 16, !dbg !1363
  %4 = add i64 %gcov_ctr, 1, !dbg !1363
  store i64 %4, ptr @__llvm_gcov_ctr.77, align 16, !dbg !1363
  br label %cleanup, !dbg !1363

if.end:                                           ; preds = %entry
  %triggers = getelementptr inbounds %struct.trace_event_file, ptr %call, i32 0, i32 6, !dbg !1364
  %5 = ptrtoint ptr %triggers to i32, !dbg !1364
  call void @__asan_load4_noabort(i32 %5), !dbg !1364
  %.pn6 = load ptr, ptr %triggers, align 4, !dbg !1364
  %cmp7 = icmp eq ptr %.pn6, %triggers, !dbg !1364
  br i1 %cmp7, label %if.end.if.then17_crit_edge, label %if.end.for.body_crit_edge, !dbg !1364

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body, !dbg !1364

if.end.if.then17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1364
  br label %if.then17, !dbg !1364

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn8 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn6, %if.end.for.body_crit_edge ]
  %flags = getelementptr i8, ptr %.pn8, i32 -28, !dbg !1365
  %6 = ptrtoint ptr %flags to i32, !dbg !1365
  call void @__asan_load4_noabort(i32 %6), !dbg !1365
  %7 = load i32, ptr %flags, align 4, !dbg !1365
  %and = and i32 %7, 1, !dbg !1366
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !1366
  %tobool2.not = icmp eq i32 %and, 0, !dbg !1366
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.end4, !dbg !1367

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1367
  br label %for.inc, !dbg !1367

if.end4:                                          ; preds = %for.body
  %private_data = getelementptr i8, ptr %.pn8, i32 -8, !dbg !1368
  %8 = ptrtoint ptr %private_data to i32, !dbg !1368
  call void @__asan_load4_noabort(i32 %8), !dbg !1368
  %9 = load ptr, ptr %private_data, align 4, !dbg !1368
  %ep5 = getelementptr inbounds %struct.eprobe_data, ptr %9, i32 0, i32 1, !dbg !1369
  %10 = ptrtoint ptr %ep5 to i32, !dbg !1369
  call void @__asan_load4_noabort(i32 %10), !dbg !1369
  %11 = load ptr, ptr %ep5, align 4, !dbg !1369
  %cmp6 = icmp eq ptr %11, %ep, !dbg !1370
  br i1 %cmp6, label %if.end18, label %if.end4.for.inc_crit_edge, !dbg !1371

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1371
  br label %for.inc, !dbg !1371

for.inc:                                          ; preds = %if.end4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 1), %for.body.for.inc_crit_edge ], [ getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 3), %if.end4.for.inc_crit_edge ]
  %12 = ptrtoint ptr %.sink to i32, !dbg !1372
  call void @__asan_load8_noabort(i32 %12), !dbg !1372
  %gcov_ctr25 = load i64, ptr %.sink, align 8, !dbg !1372
  %13 = add i64 %gcov_ctr25, 1, !dbg !1372
  store i64 %13, ptr %.sink, align 8, !dbg !1372
  %14 = ptrtoint ptr %.pn8 to i32, !dbg !1364
  call void @__asan_load4_noabort(i32 %14), !dbg !1364
  %.pn = load ptr, ptr %.pn8, align 4, !dbg !1364
  %cmp = icmp eq ptr %.pn, %triggers, !dbg !1364
  br i1 %cmp, label %for.inc.if.then17_crit_edge, label %for.inc.for.body_crit_edge, !dbg !1364, !llvm.loop !1373

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1364
  br label %for.body, !dbg !1364

for.inc.if.then17_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1364
  br label %if.then17, !dbg !1364

if.then17:                                        ; preds = %for.inc.if.then17_crit_edge, %if.end.if.then17_crit_edge
  %gcov_ctr26 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 4), align 16, !dbg !1375
  %15 = add i64 %gcov_ctr26, 1, !dbg !1375
  store i64 %15, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 4), align 16, !dbg !1375
  br label %cleanup, !dbg !1375

if.end18:                                         ; preds = %if.end4
  %trigger.0.le = getelementptr i8, ptr %.pn8, i32 -36, !dbg !1364
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 2), align 16, !dbg !1376
  %16 = add i64 %gcov_ctr24, 1, !dbg !1376
  store i64 %16, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 2), align 16, !dbg !1376
  %gcov_ctr27 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 5), align 8, !dbg !1377
  %17 = add i64 %gcov_ctr27, 1, !dbg !1377
  store i64 %17, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 5), align 8, !dbg !1377
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.95, align 8
  %18 = add i64 %gcov_ctr.i, 1
  store i64 %18, ptr @__llvm_gcov_ctr.95, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn8) #17, !dbg !1378
  br i1 %call.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1382

if.then.i.i:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1383
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.97, align 8, !dbg !1383
  %19 = add i64 %gcov_ctr.i.i, 1, !dbg !1383
  store i64 %19, ptr @__llvm_gcov_ctr.97, align 8, !dbg !1383
  br label %list_del_rcu.exit, !dbg !1383

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1384
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 1), align 8, !dbg !1384
  %20 = add i64 %gcov_ctr2.i.i, 1, !dbg !1384
  store i64 %20, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 1), align 8, !dbg !1384
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn8, i32 0, i32 1, !dbg !1385
  %21 = ptrtoint ptr %prev.i.i to i32, !dbg !1385
  call void @__asan_load4_noabort(i32 %21), !dbg !1385
  %22 = load ptr, ptr %prev.i.i, align 4, !dbg !1385
  %23 = ptrtoint ptr %.pn8 to i32, !dbg !1386
  call void @__asan_load4_noabort(i32 %23), !dbg !1386
  %24 = load ptr, ptr %.pn8, align 4, !dbg !1386
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1, !dbg !1387
  %25 = ptrtoint ptr %prev1.i.i.i to i32, !dbg !1389
  call void @__asan_store4_noabort(i32 %25), !dbg !1389
  store ptr %22, ptr %prev1.i.i.i, align 4, !dbg !1389
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.98, align 8, !dbg !1390
  %26 = add i64 %gcov_ctr.i.i.i, 1, !dbg !1390
  store i64 %26, ptr @__llvm_gcov_ctr.98, align 8, !dbg !1390
  %27 = ptrtoint ptr %22 to i32, !dbg !1390
  call void @__asan_store4_noabort(i32 %27), !dbg !1390
  store volatile ptr %24, ptr %22, align 4, !dbg !1390
  br label %list_del_rcu.exit, !dbg !1391

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then.i.i
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn8, i32 0, i32 1, !dbg !1392
  %28 = ptrtoint ptr %prev.i to i32, !dbg !1393
  call void @__asan_store4_noabort(i32 %28), !dbg !1393
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4, !dbg !1393
  %call20 = tail call i32 @trace_event_trigger_enable_disable(ptr noundef nonnull %call, i32 noundef 0) #17, !dbg !1394
  tail call void @update_cond_flag(ptr noundef nonnull %call) #17, !dbg !1395
  %gcov_ctr.i1 = load i64, ptr @__llvm_gcov_ctr.96, align 8, !dbg !1396
  %29 = add i64 %gcov_ctr.i1, 1, !dbg !1396
  store i64 %29, ptr @__llvm_gcov_ctr.96, align 8, !dbg !1396
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #17, !dbg !1396
  tail call void @synchronize_rcu() #17, !dbg !1400
  tail call void @kfree(ptr noundef %9) #17, !dbg !1401
  tail call void @kfree(ptr noundef %trigger.0.le) #17, !dbg !1402
  br label %cleanup, !dbg !1403

cleanup:                                          ; preds = %list_del_rcu.exit, %if.then17, %if.then
  ret void, !dbg !1404
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_event_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_trigger_enable_disable(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_cond_flag(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eprobe_trigger_func(ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %buffer, ptr nocapture noundef readonly %rec, ptr nocapture noundef readnone %rbe) #0 align 64 !dbg !1405 {
entry:
  %c.i.i.i.i = alloca i8, align 1
  %val.addr.i.i.i = alloca i32, align 4
  %fbuffer.i = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1406
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.82, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.82, align 8
  %private_data = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 7, !dbg !1407
  %1 = ptrtoint ptr %private_data to i32, !dbg !1407
  call void @__asan_load4_noabort(i32 %1), !dbg !1407
  %2 = load ptr, ptr %private_data, align 4, !dbg !1407
  %ep.i = getelementptr inbounds %struct.eprobe_data, ptr %2, i32 0, i32 1, !dbg !1408
  %3 = ptrtoint ptr %ep.i to i32, !dbg !1408
  call void @__asan_load4_noabort(i32 %3), !dbg !1408
  %4 = load ptr, ptr %ep.i, align 4, !dbg !1408
  %gcov_ctr.i88.i = load i64, ptr @__llvm_gcov_ctr.63, align 8
  %5 = add i64 %gcov_ctr.i88.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.63, align 8
  %event.i.i = getelementptr inbounds %struct.trace_eprobe, ptr %4, i32 0, i32 4, i32 1, !dbg !1411
  %6 = ptrtoint ptr %event.i.i to i32, !dbg !1411
  call void @__asan_load4_noabort(i32 %6), !dbg !1411
  %7 = load ptr, ptr %event.i.i, align 4, !dbg !1411
  %call.i89.i = getelementptr inbounds %struct.trace_probe_event, ptr %7, i32 0, i32 2, !dbg !1413
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer.i) #17, !dbg !1414
  %8 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer.i, i32 0, i32 1, !dbg !1415
  %9 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer.i, i32 0, i32 3, !dbg !1415
  %10 = call ptr @memset(ptr %fbuffer.i, i32 255, i32 24), !dbg !1415
  %11 = ptrtoint ptr %2 to i32, !dbg !1416
  call void @__asan_load4_noabort(i32 %11), !dbg !1416
  %12 = load ptr, ptr %2, align 4, !dbg !1416
  %event_call.i = getelementptr inbounds %struct.trace_event_file, ptr %12, i32 0, i32 1, !dbg !1416
  %13 = ptrtoint ptr %event_call.i to i32, !dbg !1416
  call void @__asan_load4_noabort(i32 %13), !dbg !1416
  %14 = load ptr, ptr %event_call.i, align 4, !dbg !1416
  %cmp.not.i = icmp eq ptr %call.i89.i, %14, !dbg !1416
  br i1 %cmp.not.i, label %if.end39.i, label %land.rhs.i, !dbg !1416

land.rhs.i:                                       ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.86, align 16, !dbg !1416
  %15 = add i64 %gcov_ctr.i, 1, !dbg !1416
  store i64 %15, ptr @__llvm_gcov_ctr.86, align 16, !dbg !1416
  %.b80.i = load i1, ptr @__eprobe_trace_func.__already_done, align 1, !dbg !1416
  br i1 %.b80.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then.i, !dbg !1416, !prof !735

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1416
  br label %if.then38.i, !dbg !1416

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1416
  store i1 true, ptr @__eprobe_trace_func.__already_done, align 1, !dbg !1416
  %gcov_ctr62.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.86, i32 0, i32 1), align 8, !dbg !1416
  %16 = add i64 %gcov_ctr62.i, 1, !dbg !1416
  store i64 %16, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.86, i32 0, i32 1), align 8, !dbg !1416
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 488, i32 noundef 9, ptr noundef null) #17, !dbg !1416
  %gcov_ctr63.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.86, i32 0, i32 2), align 16, !dbg !1416
  %17 = add i64 %gcov_ctr63.i, 1, !dbg !1416
  store i64 %17, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.86, i32 0, i32 2), align 16, !dbg !1416
  br label %if.then38.i, !dbg !1416

if.then38.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then38.i_crit_edge
  %gcov_ctr64.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.86, i32 0, i32 3), align 8
  %18 = add i64 %gcov_ctr64.i, 1
  store i64 %18, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.86, i32 0, i32 3), align 8
  br label %__eprobe_trace_func.exit, !dbg !1417

if.end39.i:                                       ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.trace_event_file, ptr %12, i32 0, i32 7, !dbg !1418
  %19 = ptrtoint ptr %flags.i.i to i32, !dbg !1418
  call void @__asan_load4_noabort(i32 %19), !dbg !1418
  %20 = load i32, ptr %flags.i.i, align 4, !dbg !1418
  %and.i.i = and i32 %20, 704, !dbg !1421
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !1421
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !1421
  br i1 %tobool.not.i.i, label %if.end39.i.if.end43.sink.split.i_crit_edge, label %if.end.i.i, !dbg !1421, !prof !735

if.end39.i.if.end43.sink.split.i_crit_edge:       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1421
  br label %if.end43.sink.split.i, !dbg !1421

if.end.i.i:                                       ; preds = %if.end39.i
  %and4.i.i = and i32 %20, 256, !dbg !1422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i), !dbg !1422
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0, !dbg !1422
  br i1 %tobool5.not.i.i, label %trace_trigger_soft_disabled.exit.i, label %if.end.i.i.if.end43.sink.split.i_crit_edge, !dbg !1422, !prof !114

if.end.i.i.if.end43.sink.split.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1422
  br label %if.end43.sink.split.i, !dbg !1422

trace_trigger_soft_disabled.exit.i:               ; preds = %if.end.i.i
  %gcov_ctr14.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.87, i32 0, i32 1), align 8, !dbg !1423
  %21 = add i64 %gcov_ctr14.i.i, 1, !dbg !1423
  store i64 %21, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.87, i32 0, i32 1), align 8, !dbg !1423
  %call.i.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %12) #17, !dbg !1424
  br i1 %call.i.i, label %if.then42.i, label %trace_trigger_soft_disabled.exit.i.if.end43.i_crit_edge, !dbg !1425

trace_trigger_soft_disabled.exit.i.if.end43.i_crit_edge: ; preds = %trace_trigger_soft_disabled.exit.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1425
  br label %if.end43.i, !dbg !1425

if.then42.i:                                      ; preds = %trace_trigger_soft_disabled.exit.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1426
  %gcov_ctr65.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.86, i32 0, i32 4), align 16
  %22 = add i64 %gcov_ctr65.i, 1
  store i64 %22, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.86, i32 0, i32 4), align 16
  br label %__eprobe_trace_func.exit, !dbg !1427

if.end43.sink.split.i:                            ; preds = %if.end.i.i.if.end43.sink.split.i_crit_edge, %if.end39.i.if.end43.sink.split.i_crit_edge
  %.sink.i = phi ptr [ @__llvm_gcov_ctr.87, %if.end39.i.if.end43.sink.split.i_crit_edge ], [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.87, i32 0, i32 2), %if.end.i.i.if.end43.sink.split.i_crit_edge ]
  %23 = ptrtoint ptr %.sink.i to i32, !dbg !1428
  call void @__asan_load8_noabort(i32 %23), !dbg !1428
  %gcov_ctr15.i.i = load i64, ptr %.sink.i, align 16, !dbg !1428
  %24 = add i64 %gcov_ctr15.i.i, 1, !dbg !1428
  store i64 %24, ptr %.sink.i, align 16, !dbg !1428
  br label %if.end43.i, !dbg !1429

if.end43.i:                                       ; preds = %if.end43.sink.split.i, %trace_trigger_soft_disabled.exit.i.if.end43.i_crit_edge
  %25 = ptrtoint ptr %ep.i to i32, !dbg !1429
  call void @__asan_load4_noabort(i32 %25), !dbg !1429
  %26 = load ptr, ptr %ep.i, align 4, !dbg !1429
  %gcov_ctr.i90.i = load i64, ptr @__llvm_gcov_ctr.88, align 16
  %27 = add i64 %gcov_ctr.i90.i, 1
  store i64 %27, ptr @__llvm_gcov_ctr.88, align 16
  %nr_args.i91.i = getelementptr inbounds %struct.trace_eprobe, ptr %26, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %nr_args.i91.i to i32, !dbg !1430
  call void @__asan_load4_noabort(i32 %28), !dbg !1430
  %29 = load i32, ptr %nr_args.i91.i, align 4, !dbg !1430
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29), !dbg !1433
  %cmp42.not.i.i = icmp eq i32 %29, 0, !dbg !1433
  br i1 %cmp42.not.i.i, label %if.end43.i.get_eprobe_size.exit.i_crit_edge, label %for.body.lr.ph.i93.i, !dbg !1434

if.end43.i.get_eprobe_size.exit.i_crit_edge:      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1434
  br label %get_eprobe_size.exit.i, !dbg !1434

for.body.lr.ph.i93.i:                             ; preds = %if.end43.i
  %args.i92.i = getelementptr inbounds %struct.trace_eprobe, ptr %26, i32 1
  br label %for.body.i96.i, !dbg !1434

for.body.i96.i:                                   ; preds = %for.inc.i104.i.for.body.i96.i_crit_edge, %for.body.lr.ph.i93.i
  %ret.045.i.i = phi i32 [ 0, %for.body.lr.ph.i93.i ], [ %ret.2.i.i, %for.inc.i104.i.for.body.i96.i_crit_edge ]
  %i.043.i.i = phi i32 [ 0, %for.body.lr.ph.i93.i ], [ %inc.i102.i, %for.inc.i104.i.for.body.i96.i_crit_edge ]
  %dynamic.i94.i = getelementptr %struct.probe_arg, ptr %args.i92.i, i32 %i.043.i.i, i32 1, !dbg !1435
  %30 = ptrtoint ptr %dynamic.i94.i to i32, !dbg !1435
  call void @__asan_load1_noabort(i32 %30), !dbg !1435
  %31 = load i8, ptr %dynamic.i94.i, align 4, !dbg !1435, !range !1436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31), !dbg !1435
  %tobool.not.i95.i = icmp eq i8 %31, 0, !dbg !1435
  br i1 %tobool.not.i95.i, label %for.body.i96.i.for.inc.i104.i_crit_edge, label %if.then.i99.i, !dbg !1435, !prof !735

for.body.i96.i.for.inc.i104.i_crit_edge:          ; preds = %for.body.i96.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1435
  br label %for.inc.i104.i, !dbg !1435

if.then.i99.i:                                    ; preds = %for.body.i96.i
  %add.ptr.i97.i = getelementptr %struct.probe_arg, ptr %args.i92.i, i32 %i.043.i.i, !dbg !1437
  %32 = ptrtoint ptr %add.ptr.i97.i to i32, !dbg !1438
  call void @__asan_load4_noabort(i32 %32), !dbg !1438
  %33 = load ptr, ptr %add.ptr.i97.i, align 4, !dbg !1438
  %call.i98.i = call fastcc i32 @get_event_field(ptr noundef %33, ptr noundef %rec) #17, !dbg !1439
  %34 = ptrtoint ptr %add.ptr.i97.i to i32, !dbg !1440
  call void @__asan_load4_noabort(i32 %34), !dbg !1440
  %35 = load ptr, ptr %add.ptr.i97.i, align 4, !dbg !1440
  %add.ptr4.i.i = getelementptr %struct.fetch_insn, ptr %35, i32 1, !dbg !1441
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i.i.i) #17
  %36 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call.i98.i, ptr %val.addr.i.i.i, align 4
  br label %stage2.i.i.i, !dbg !1442

stage2.i.i.i:                                     ; preds = %if.end79.i.i.i, %if.then.i99.i
  %code.addr.0.i.i.i = phi ptr [ %add.ptr4.i.i, %if.then.i99.i ], [ %incdec.ptr73.i.i.i, %if.end79.i.i.i ]
  %dest.addr.0.i.i.i = phi ptr [ null, %if.then.i99.i ], [ %dest.addr.2.i.i.i, %if.end79.i.i.i ]
  %total.0.i.i.i = phi i32 [ 0, %if.then.i99.i ], [ %add60.i.i.i, %if.end79.i.i.i ], !dbg !1444
  %ret.0.i.i.i = phi i32 [ 0, %if.then.i99.i ], [ %ret.5.i.i.i, %if.end79.i.i.i ], !dbg !1444
  %i.0.i.i.i = phi i32 [ 0, %if.then.i99.i ], [ %inc.i.i.i, %if.end79.i.i.i ], !dbg !1444
  %loc.0.i.i.i = phi i32 [ 0, %if.then.i99.i ], [ %loc.3.i.i.i, %if.end79.i.i.i ], !dbg !1445
  %lval.0.i.i.i = phi i32 [ %call.i98.i, %if.then.i99.i ], [ %lval.1.i.i.i, %if.end79.i.i.i ], !dbg !1446
  br label %do.body.i.i.i, !dbg !1447

do.body.i.i.i:                                    ; preds = %if.end10.i.i.i, %stage2.i.i.i
  %code.addr.1.i.i.i = phi ptr [ %code.addr.0.i.i.i, %stage2.i.i.i ], [ %incdec.ptr.i.i.i, %if.end10.i.i.i ]
  %ret.1.i.i.i = phi i32 [ %ret.0.i.i.i, %stage2.i.i.i ], [ 0, %if.end10.i.i.i ], !dbg !1444
  %lval.1.i.i.i = phi i32 [ %lval.0.i.i.i, %stage2.i.i.i ], [ %lval.2.i.i.i, %if.end10.i.i.i ], !dbg !1444
  %37 = ptrtoint ptr %code.addr.1.i.i.i to i32, !dbg !1448
  call void @__asan_load4_noabort(i32 %37), !dbg !1448
  %38 = load i32, ptr %code.addr.1.i.i.i, align 4, !dbg !1448
  %39 = zext i32 %38 to i64, !dbg !1449
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.119), !dbg !1449
  switch i32 %38, label %if.else7.i.i.i [
    i32 10, label %if.then.i.i.i
    i32 11, label %if.then3.i.i.i
  ], !dbg !1449

if.then.i.i.i:                                    ; preds = %do.body.i.i.i
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.17, align 16, !dbg !1450
  %40 = add i64 %gcov_ctr.i.i.i, 1, !dbg !1450
  store i64 %40, ptr @__llvm_gcov_ctr.17, align 16, !dbg !1450
  %41 = ptrtoint ptr %val.addr.i.i.i to i32, !dbg !1450
  call void @__asan_load4_noabort(i32 %41), !dbg !1450
  %42 = load i32, ptr %val.addr.i.i.i, align 4, !dbg !1450
  %43 = inttoptr i32 %42 to ptr, !dbg !1451
  %offset.i.i.i = getelementptr inbounds %struct.fetch_insn, ptr %code.addr.1.i.i.i, i32 0, i32 1, i32 0, i32 1, !dbg !1452
  %44 = ptrtoint ptr %offset.i.i.i to i32, !dbg !1452
  call void @__asan_load4_noabort(i32 %44), !dbg !1452
  %45 = load i32, ptr %offset.i.i.i, align 4, !dbg !1452
  %add.ptr.i.i.i = getelementptr i8, ptr %43, i32 %45, !dbg !1453
  %cmp.i.i.i.i = icmp ult ptr %add.ptr.i.i.i, inttoptr (i32 -1226833920 to ptr), !dbg !1454
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i, !dbg !1456

if.then.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1457
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.18, align 8, !dbg !1457
  %46 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !1457
  store i64 %46, ptr @__llvm_gcov_ctr.18, align 8, !dbg !1457
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %47 = add i64 %gcov_ctr.i.i.i.i.i, 1
  store i64 %47, ptr @__llvm_gcov_ctr.19, align 8
  %call.i.i.i.i.i = call i32 @copy_from_user_nofault(ptr noundef nonnull %val.addr.i.i.i, ptr noundef %add.ptr.i.i.i, i32 noundef 4) #17, !dbg !1458
  br label %if.end8.i.i.i, !dbg !1460

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1461
  %gcov_ctr2.i.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !1461
  %48 = add i64 %gcov_ctr2.i.i.i.i, 1, !dbg !1461
  store i64 %48, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !1461
  %call1.i.i.i.i = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %val.addr.i.i.i, ptr noundef %add.ptr.i.i.i, i32 noundef 4) #17, !dbg !1462
  br label %if.end8.i.i.i, !dbg !1463

if.then3.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1464
  %49 = ptrtoint ptr %val.addr.i.i.i to i32, !dbg !1464
  call void @__asan_load4_noabort(i32 %49), !dbg !1464
  %50 = load i32, ptr %val.addr.i.i.i, align 4, !dbg !1464
  %51 = inttoptr i32 %50 to ptr, !dbg !1465
  %offset4.i.i.i = getelementptr inbounds %struct.fetch_insn, ptr %code.addr.1.i.i.i, i32 0, i32 1, i32 0, i32 1, !dbg !1466
  %52 = ptrtoint ptr %offset4.i.i.i to i32, !dbg !1466
  call void @__asan_load4_noabort(i32 %52), !dbg !1466
  %53 = load i32, ptr %offset4.i.i.i, align 4, !dbg !1466
  %add.ptr5.i.i.i = getelementptr i8, ptr %51, i32 %53, !dbg !1467
  %gcov_ctr.i161.i.i.i = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %54 = add i64 %gcov_ctr.i161.i.i.i, 1
  store i64 %54, ptr @__llvm_gcov_ctr.19, align 8
  %call.i.i.i.i = call i32 @copy_from_user_nofault(ptr noundef nonnull %val.addr.i.i.i, ptr noundef %add.ptr5.i.i.i, i32 noundef 4) #17, !dbg !1468
  %gcov_ctr91.i.i.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 2), align 16
  %55 = add i64 %gcov_ctr91.i.i.i, 1
  store i64 %55, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 2), align 16
  br label %if.end8.i.i.i

if.else7.i.i.i:                                   ; preds = %do.body.i.i.i
  %gcov_ctr90.i.i.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 1), align 8, !dbg !1470
  %56 = add i64 %gcov_ctr90.i.i.i, 1, !dbg !1470
  store i64 %56, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 1), align 8, !dbg !1470
  %offset48.i.i.i = getelementptr inbounds %struct.fetch_insn, ptr %code.addr.1.i.i.i, i32 0, i32 1, i32 0, i32 1
  %57 = getelementptr inbounds %struct.fetch_insn, ptr %code.addr.1.i.i.i, i32 0, i32 1
  %incdec.ptr51.i.i.i = getelementptr %struct.fetch_insn, ptr %code.addr.1.i.i.i, i32 1
  %58 = getelementptr %struct.fetch_insn, ptr %code.addr.1.i.i.i, i32 1, i32 1
  %lshift26.i.i.i.i = getelementptr inbounds %struct.anon.0, ptr %58, i32 0, i32 1
  %rshift29.i.i.i.i = getelementptr inbounds %struct.anon.0, ptr %58, i32 0, i32 2
  %incdec.ptr55.i.i.i = getelementptr %struct.fetch_insn, ptr %code.addr.1.i.i.i, i32 2
  br label %stage3.i.i.i, !dbg !1471

if.end8.i.i.i:                                    ; preds = %if.then3.i.i.i, %if.end.i.i.i.i, %if.then.i.i.i.i
  %ret.2.i.i.i = phi i32 [ %call.i.i.i.i, %if.then3.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i ], [ %call1.i.i.i.i, %if.end.i.i.i.i ], !dbg !1444
  %lval.2.i.i.i = phi i32 [ %50, %if.then3.i.i.i ], [ %42, %if.then.i.i.i.i ], [ %42, %if.end.i.i.i.i ], !dbg !1444
  %tobool.not.i.i.i = icmp eq i32 %ret.2.i.i.i, 0, !dbg !1472
  br i1 %tobool.not.i.i.i, label %if.end10.i.i.i, label %if.then9.i.i.i, !dbg !1472

if.then9.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1473
  %gcov_ctr92.i.i.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 3), align 8, !dbg !1473
  %59 = add i64 %gcov_ctr92.i.i.i, 1, !dbg !1473
  store i64 %59, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 3), align 8, !dbg !1473
  br label %process_fetch_insn_bottom.exit.i.i, !dbg !1474

if.end10.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1475
  %incdec.ptr.i.i.i = getelementptr %struct.fetch_insn, ptr %code.addr.1.i.i.i, i32 1, !dbg !1475
  br label %do.body.i.i.i, !dbg !1476, !llvm.loop !1477

stage3.i.i.i:                                     ; preds = %if.then67.i.i.i, %if.else7.i.i.i
  %dest.addr.1.i.i.i = phi ptr [ %dest.addr.0.i.i.i, %if.else7.i.i.i ], [ %add.ptr69.i.i.i, %if.then67.i.i.i ]
  %total.1.i.i.i = phi i32 [ %total.0.i.i.i, %if.else7.i.i.i ], [ %add60.i.i.i, %if.then67.i.i.i ], !dbg !1444
  %ret.3.i.i.i = phi i32 [ %ret.1.i.i.i, %if.else7.i.i.i ], [ %ret.5.i.i.i, %if.then67.i.i.i ], !dbg !1444
  %i.1.i.i.i = phi i32 [ %i.0.i.i.i, %if.else7.i.i.i ], [ %inc.i.i.i, %if.then67.i.i.i ], !dbg !1444
  %loc.1.i.i.i = phi i32 [ %loc.0.i.i.i, %if.else7.i.i.i ], [ %loc.3.i.i.i, %if.then67.i.i.i ], !dbg !1445
  %tobool11.not.i.i.i = icmp eq ptr %dest.addr.1.i.i.i, null, !dbg !1479
  %60 = ptrtoint ptr %code.addr.1.i.i.i to i32, !dbg !1444
  call void @__asan_load4_noabort(i32 %60), !dbg !1444
  %61 = load i32, ptr %code.addr.1.i.i.i, align 4, !dbg !1444
  br i1 %tobool11.not.i.i.i, label %if.then15.i.i.i, label %if.end32.i.i.i, !dbg !1479, !prof !114

if.then15.i.i.i:                                  ; preds = %stage3.i.i.i
  %62 = zext i32 %61 to i64, !dbg !1480
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.120), !dbg !1480
  switch i32 %61, label %if.else31.i.i.i [
    i32 15, label %if.then18.i.i.i
    i32 16, label %if.then25.i.i.i
  ], !dbg !1480

if.then18.i.i.i:                                  ; preds = %if.then15.i.i.i
  %gcov_ctr93.i.i.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 4), align 16, !dbg !1481
  %63 = add i64 %gcov_ctr93.i.i.i, 1, !dbg !1481
  store i64 %63, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 4), align 16, !dbg !1481
  %64 = ptrtoint ptr %val.addr.i.i.i to i32, !dbg !1481
  call void @__asan_load4_noabort(i32 %64), !dbg !1481
  %65 = load i32, ptr %val.addr.i.i.i, align 4, !dbg !1481
  %66 = ptrtoint ptr %offset48.i.i.i to i32, !dbg !1482
  call void @__asan_load4_noabort(i32 %66), !dbg !1482
  %67 = load i32, ptr %offset48.i.i.i, align 4, !dbg !1482
  %add.i.i.i = add i32 %67, %65, !dbg !1483
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i.i.i.i) #17, !dbg !1484
  %68 = ptrtoint ptr %c.i.i.i.i to i32, !dbg !1486
  call void @__asan_store1_noabort(i32 %68), !dbg !1486
  store i8 -1, ptr %c.i.i.i.i, align 1, !dbg !1486, !annotation !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833920, i32 %add.i.i.i), !dbg !1487
  %cmp.i162.i.i.i = icmp ult i32 %add.i.i.i, -1226833920, !dbg !1487
  br i1 %cmp.i162.i.i.i, label %if.then.i166.i.i.i, label %do.body.preheader.i.i.i.i, !dbg !1488

do.body.preheader.i.i.i.i:                        ; preds = %if.then18.i.i.i
  %69 = inttoptr i32 %add.i.i.i to ptr
  br label %do.body.i.i.i.i, !dbg !1489

if.then.i166.i.i.i:                               ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1490
  %gcov_ctr.i163.i.i.i = load i64, ptr @__llvm_gcov_ctr.20, align 16, !dbg !1490
  %70 = add i64 %gcov_ctr.i163.i.i.i, 1, !dbg !1490
  store i64 %70, ptr @__llvm_gcov_ctr.20, align 16, !dbg !1490
  %gcov_ctr.i.i164.i.i.i = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %71 = add i64 %gcov_ctr.i.i164.i.i.i, 1
  store i64 %71, ptr @__llvm_gcov_ctr.21, align 8
  %72 = inttoptr i32 %add.i.i.i to ptr, !dbg !1491
  %call.i.i165.i.i.i = call i32 @strnlen_user_nofault(ptr noundef %72, i32 noundef 4096) #17, !dbg !1493
  br label %fetch_store_strlen.exit.i.i.i, !dbg !1494

do.body.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.body.preheader.i.i.i.i
  %len.0.i.i.i.i = phi i32 [ %inc.i.i.i.i, %land.rhs.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ 0, %do.body.preheader.i.i.i.i ], !dbg !1495
  %gcov_ctr10.i.i.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 1), align 8, !dbg !1496
  %73 = add i64 %gcov_ctr10.i.i.i.i, 1, !dbg !1496
  store i64 %73, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 1), align 8, !dbg !1496
  %add.ptr.i.i.i.i = getelementptr i8, ptr %69, i32 %len.0.i.i.i.i, !dbg !1497
  %call1.i167.i.i.i = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %c.i.i.i.i, ptr noundef %add.ptr.i.i.i.i, i32 noundef 1) #17, !dbg !1498
  %inc.i.i.i.i = add nuw nsw i32 %len.0.i.i.i.i, 1, !dbg !1499
  %74 = ptrtoint ptr %c.i.i.i.i to i32, !dbg !1500
  call void @__asan_load1_noabort(i32 %74), !dbg !1500
  %75 = load i8, ptr %c.i.i.i.i, align 1, !dbg !1500
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75), !dbg !1500
  %tobool.not.i.i.i.i = icmp eq i8 %75, 0, !dbg !1500
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.do.end.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i, !dbg !1501

do.body.i.i.i.i.do.end.i.i.i.i_crit_edge:         ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1501
  br label %do.end.i.i.i.i, !dbg !1501

land.lhs.true.i.i.i.i:                            ; preds = %do.body.i.i.i.i
  %gcov_ctr11.i.i.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !1502
  %76 = add i64 %gcov_ctr11.i.i.i.i, 1, !dbg !1502
  store i64 %76, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !1502
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i167.i.i.i), !dbg !1503
  %cmp2.i.i.i.i = icmp eq i32 %call1.i167.i.i.i, 0, !dbg !1503
  br i1 %cmp2.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.do.end.i.i.i.i_crit_edge, !dbg !1504

land.lhs.true.i.i.i.i.do.end.i.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1504
  br label %do.end.i.i.i.i, !dbg !1504

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %gcov_ctr12.i.i.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 3), align 8, !dbg !1505
  %77 = add i64 %gcov_ctr12.i.i.i.i, 1, !dbg !1505
  store i64 %77, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 3), align 8, !dbg !1505
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 4096, !dbg !1506
  br i1 %exitcond.not.i.i.i.i, label %land.rhs.i.i.i.i.cond.false.i.i.i.i_crit_edge, label %land.rhs.i.i.i.i.do.body.i.i.i.i_crit_edge, !dbg !1507, !llvm.loop !1508

land.rhs.i.i.i.i.do.body.i.i.i.i_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1507
  br label %do.body.i.i.i.i, !dbg !1507

land.rhs.i.i.i.i.cond.false.i.i.i.i_crit_edge:    ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1507
  br label %cond.false.i.i.i.i, !dbg !1507

do.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i.do.end.i.i.i.i_crit_edge, %do.body.i.i.i.i.do.end.i.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i167.i.i.i), !dbg !1510
  %cmp6.i.i.i.i = icmp slt i32 %call1.i167.i.i.i, 0, !dbg !1510
  br i1 %cmp6.i.i.i.i, label %cond.true.i.i.i.i, label %do.end.i.i.i.i.cond.false.i.i.i.i_crit_edge, !dbg !1511

do.end.i.i.i.i.cond.false.i.i.i.i_crit_edge:      ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1511
  br label %cond.false.i.i.i.i, !dbg !1511

cond.true.i.i.i.i:                                ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1512
  %gcov_ctr13.i.i.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 4), align 16, !dbg !1512
  %78 = add i64 %gcov_ctr13.i.i.i.i, 1, !dbg !1512
  store i64 %78, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 4), align 16, !dbg !1512
  br label %fetch_store_strlen.exit.i.i.i, !dbg !1511

cond.false.i.i.i.i:                               ; preds = %do.end.i.i.i.i.cond.false.i.i.i.i_crit_edge, %land.rhs.i.i.i.i.cond.false.i.i.i.i_crit_edge
  %inc28.i.i.i.i = phi i32 [ %inc.i.i.i.i, %do.end.i.i.i.i.cond.false.i.i.i.i_crit_edge ], [ 4096, %land.rhs.i.i.i.i.cond.false.i.i.i.i_crit_edge ]
  %gcov_ctr14.i.i.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 5), align 8, !dbg !1513
  %79 = add i64 %gcov_ctr14.i.i.i.i, 1, !dbg !1513
  store i64 %79, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 5), align 8, !dbg !1513
  br label %fetch_store_strlen.exit.i.i.i, !dbg !1511

fetch_store_strlen.exit.i.i.i:                    ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i, %if.then.i166.i.i.i
  %retval.0.i168.i.i.i = phi i32 [ %call.i.i165.i.i.i, %if.then.i166.i.i.i ], [ %call1.i167.i.i.i, %cond.true.i.i.i.i ], [ %inc28.i.i.i.i, %cond.false.i.i.i.i ], !dbg !1495
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i.i.i.i) #17, !dbg !1514
  br label %arraythread-pre-split.i.i.i, !dbg !1515

if.then25.i.i.i:                                  ; preds = %if.then15.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1516
  %gcov_ctr94.i.i.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 5), align 8, !dbg !1516
  %80 = add i64 %gcov_ctr94.i.i.i, 1, !dbg !1516
  store i64 %80, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 5), align 8, !dbg !1516
  %81 = ptrtoint ptr %val.addr.i.i.i to i32, !dbg !1516
  call void @__asan_load4_noabort(i32 %81), !dbg !1516
  %82 = load i32, ptr %val.addr.i.i.i, align 4, !dbg !1516
  %83 = ptrtoint ptr %offset48.i.i.i to i32, !dbg !1517
  call void @__asan_load4_noabort(i32 %83), !dbg !1517
  %84 = load i32, ptr %offset48.i.i.i, align 4, !dbg !1517
  %add27.i.i.i = add i32 %84, %82, !dbg !1518
  %gcov_ctr.i169.i.i.i = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %85 = add i64 %gcov_ctr.i169.i.i.i, 1
  store i64 %85, ptr @__llvm_gcov_ctr.21, align 8
  %86 = inttoptr i32 %add27.i.i.i to ptr, !dbg !1519
  %call.i170.i.i.i = call i32 @strnlen_user_nofault(ptr noundef %86, i32 noundef 4096) #17, !dbg !1521
  %add29.i.i.i = add i32 %call.i170.i.i.i, %ret.3.i.i.i, !dbg !1522
  br label %arraythread-pre-split.i.i.i, !dbg !1523

if.else31.i.i.i:                                  ; preds = %if.then15.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1524
  %gcov_ctr95.i.i.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 6), align 16, !dbg !1524
  %87 = add i64 %gcov_ctr95.i.i.i, 1, !dbg !1524
  store i64 %87, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 6), align 16, !dbg !1524
  br label %process_fetch_insn_bottom.exit.thread.i.i, !dbg !1524

if.end32.i.i.i:                                   ; preds = %stage3.i.i.i
  %88 = zext i32 %61 to i64, !dbg !1525
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.121), !dbg !1525
  switch i32 %61, label %sw.default.i.i.i [
    i32 12, label %sw.bb.i.i.i
    i32 13, label %sw.bb34.i.i.i
    i32 14, label %sw.bb38.i.i.i
    i32 15, label %sw.bb43.i.i.i
    i32 16, label %sw.bb47.i.i.i
  ], !dbg !1525

sw.bb.i.i.i:                                      ; preds = %if.end32.i.i.i
  %gcov_ctr96.i.i.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 7), align 8, !dbg !1526
  %89 = add i64 %gcov_ctr96.i.i.i, 1, !dbg !1526
  store i64 %89, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 7), align 8, !dbg !1526
  %90 = ptrtoint ptr %val.addr.i.i.i to i32, !dbg !1526
  call void @__asan_load4_noabort(i32 %90), !dbg !1526
  %91 = load i32, ptr %val.addr.i.i.i, align 4, !dbg !1526
  %92 = ptrtoint ptr %57 to i32, !dbg !1527
  call void @__asan_load4_noabort(i32 %92), !dbg !1527
  %93 = load i32, ptr %57, align 4, !dbg !1527
  %94 = zext i32 %93 to i64, !dbg !1529
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.122), !dbg !1529
  switch i32 %93, label %sw.default.i.i.i.i [
    i32 1, label %sw.bb.i.i.i.i
    i32 2, label %sw.bb1.i.i.i.i
    i32 4, label %sw.bb3.i.i.i.i
    i32 8, label %sw.bb4.i.i.i.i
  ], !dbg !1529

sw.bb.i.i.i.i:                                    ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1530
  %gcov_ctr.i171.i.i.i = load i64, ptr @__llvm_gcov_ctr.22, align 16, !dbg !1530
  %95 = add i64 %gcov_ctr.i171.i.i.i, 1, !dbg !1530
  store i64 %95, ptr @__llvm_gcov_ctr.22, align 16, !dbg !1530
  %conv.i.i.i.i = trunc i32 %91 to i8, !dbg !1531
  %96 = ptrtoint ptr %dest.addr.1.i.i.i to i32, !dbg !1532
  call void @__asan_store1_noabort(i32 %96), !dbg !1532
  store i8 %conv.i.i.i.i, ptr %dest.addr.1.i.i.i, align 1, !dbg !1532
  br label %sw.epilog.i.i.i, !dbg !1533

sw.bb1.i.i.i.i:                                   ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1534
  %gcov_ctr6.i.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 1), align 8, !dbg !1534
  %97 = add i64 %gcov_ctr6.i.i.i.i, 1, !dbg !1534
  store i64 %97, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 1), align 8, !dbg !1534
  %conv2.i.i.i.i = trunc i32 %91 to i16, !dbg !1535
  %98 = ptrtoint ptr %dest.addr.1.i.i.i to i32, !dbg !1536
  call void @__asan_store2_noabort(i32 %98), !dbg !1536
  store i16 %conv2.i.i.i.i, ptr %dest.addr.1.i.i.i, align 2, !dbg !1536
  br label %sw.epilog.i.i.i, !dbg !1537

sw.bb3.i.i.i.i:                                   ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1538
  %gcov_ctr7.i.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 2), align 16, !dbg !1538
  %99 = add i64 %gcov_ctr7.i.i.i.i, 1, !dbg !1538
  store i64 %99, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 2), align 16, !dbg !1538
  %100 = ptrtoint ptr %dest.addr.1.i.i.i to i32, !dbg !1539
  call void @__asan_store4_noabort(i32 %100), !dbg !1539
  store i32 %91, ptr %dest.addr.1.i.i.i, align 4, !dbg !1539
  br label %sw.epilog.i.i.i, !dbg !1540

sw.bb4.i.i.i.i:                                   ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1541
  %gcov_ctr8.i.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 3), align 8, !dbg !1541
  %101 = add i64 %gcov_ctr8.i.i.i.i, 1, !dbg !1541
  store i64 %101, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 3), align 8, !dbg !1541
  %conv5.i.i.i.i = zext i32 %91 to i64, !dbg !1542
  %102 = ptrtoint ptr %dest.addr.1.i.i.i to i32, !dbg !1543
  call void @__asan_store8_noabort(i32 %102), !dbg !1543
  store i64 %conv5.i.i.i.i, ptr %dest.addr.1.i.i.i, align 8, !dbg !1543
  br label %sw.epilog.i.i.i, !dbg !1544

sw.default.i.i.i.i:                               ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1545
  %gcov_ctr9.i.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 4), align 16, !dbg !1545
  %103 = add i64 %gcov_ctr9.i.i.i.i, 1, !dbg !1545
  store i64 %103, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 4), align 16, !dbg !1545
  %104 = ptrtoint ptr %dest.addr.1.i.i.i to i32, !dbg !1546
  call void @__asan_store4_noabort(i32 %104), !dbg !1546
  store i32 %91, ptr %dest.addr.1.i.i.i, align 4, !dbg !1546
  br label %sw.epilog.i.i.i, !dbg !1547

sw.bb34.i.i.i:                                    ; preds = %if.end32.i.i.i
  %gcov_ctr97.i.i.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 8), align 16, !dbg !1548
  %105 = add i64 %gcov_ctr97.i.i.i, 1, !dbg !1548
  store i64 %105, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 8), align 16, !dbg !1548
  %106 = ptrtoint ptr %val.addr.i.i.i to i32, !dbg !1549
  call void @__asan_load4_noabort(i32 %106), !dbg !1549
  %107 = load i32, ptr %val.addr.i.i.i, align 4, !dbg !1549
  %108 = inttoptr i32 %107 to ptr, !dbg !1550
  %109 = ptrtoint ptr %offset48.i.i.i to i32, !dbg !1551
  call void @__asan_load4_noabort(i32 %109), !dbg !1551
  %110 = load i32, ptr %offset48.i.i.i, align 4, !dbg !1551
  %add.ptr36.i.i.i = getelementptr i8, ptr %108, i32 %110, !dbg !1552
  %111 = ptrtoint ptr %57 to i32, !dbg !1553
  call void @__asan_load4_noabort(i32 %111), !dbg !1553
  %112 = load i32, ptr %57, align 4, !dbg !1553
  %cmp.i172.i.i.i = icmp ult ptr %add.ptr36.i.i.i, inttoptr (i32 -1226833920 to ptr), !dbg !1554
  br i1 %cmp.i172.i.i.i, label %if.then.i176.i.i.i, label %if.end.i179.i.i.i, !dbg !1556

if.then.i176.i.i.i:                               ; preds = %sw.bb34.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1557
  %gcov_ctr.i173.i.i.i = load i64, ptr @__llvm_gcov_ctr.18, align 8, !dbg !1557
  %113 = add i64 %gcov_ctr.i173.i.i.i, 1, !dbg !1557
  store i64 %113, ptr @__llvm_gcov_ctr.18, align 8, !dbg !1557
  %gcov_ctr.i.i174.i.i.i = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %114 = add i64 %gcov_ctr.i.i174.i.i.i, 1
  store i64 %114, ptr @__llvm_gcov_ctr.19, align 8
  %call.i.i175.i.i.i = call i32 @copy_from_user_nofault(ptr noundef nonnull %dest.addr.1.i.i.i, ptr noundef %add.ptr36.i.i.i, i32 noundef %112) #17, !dbg !1558
  br label %sw.epilog.i.i.i, !dbg !1560

if.end.i179.i.i.i:                                ; preds = %sw.bb34.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1561
  %gcov_ctr2.i177.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !1561
  %115 = add i64 %gcov_ctr2.i177.i.i.i, 1, !dbg !1561
  store i64 %115, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !1561
  %call1.i178.i.i.i = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %dest.addr.1.i.i.i, ptr noundef %add.ptr36.i.i.i, i32 noundef %112) #17, !dbg !1562
  br label %sw.epilog.i.i.i, !dbg !1563

sw.bb38.i.i.i:                                    ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1564
  %gcov_ctr98.i.i.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 9), align 8, !dbg !1564
  %116 = add i64 %gcov_ctr98.i.i.i, 1, !dbg !1564
  store i64 %116, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 9), align 8, !dbg !1564
  %117 = ptrtoint ptr %val.addr.i.i.i to i32, !dbg !1565
  call void @__asan_load4_noabort(i32 %117), !dbg !1565
  %118 = load i32, ptr %val.addr.i.i.i, align 4, !dbg !1565
  %119 = inttoptr i32 %118 to ptr, !dbg !1566
  %120 = ptrtoint ptr %offset48.i.i.i to i32, !dbg !1567
  call void @__asan_load4_noabort(i32 %120), !dbg !1567
  %121 = load i32, ptr %offset48.i.i.i, align 4, !dbg !1567
  %add.ptr40.i.i.i = getelementptr i8, ptr %119, i32 %121, !dbg !1568
  %122 = ptrtoint ptr %57 to i32, !dbg !1569
  call void @__asan_load4_noabort(i32 %122), !dbg !1569
  %123 = load i32, ptr %57, align 4, !dbg !1569
  %gcov_ctr.i182.i.i.i = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %124 = add i64 %gcov_ctr.i182.i.i.i, 1
  store i64 %124, ptr @__llvm_gcov_ctr.19, align 8
  %call.i183.i.i.i = call i32 @copy_from_user_nofault(ptr noundef nonnull %dest.addr.1.i.i.i, ptr noundef %add.ptr40.i.i.i, i32 noundef %123) #17, !dbg !1570
  br label %sw.epilog.i.i.i, !dbg !1572

sw.bb43.i.i.i:                                    ; preds = %if.end32.i.i.i
  %gcov_ctr99.i.i.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 10), align 16, !dbg !1573
  %125 = add i64 %gcov_ctr99.i.i.i, 1, !dbg !1573
  store i64 %125, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 10), align 16, !dbg !1573
  %126 = ptrtoint ptr %dest.addr.1.i.i.i to i32, !dbg !1574
  call void @__asan_load4_noabort(i32 %126), !dbg !1574
  %127 = load i32, ptr %dest.addr.1.i.i.i, align 4, !dbg !1574
  %128 = ptrtoint ptr %val.addr.i.i.i to i32, !dbg !1575
  call void @__asan_load4_noabort(i32 %128), !dbg !1575
  %129 = load i32, ptr %val.addr.i.i.i, align 4, !dbg !1575
  %130 = ptrtoint ptr %offset48.i.i.i to i32, !dbg !1576
  call void @__asan_load4_noabort(i32 %130), !dbg !1576
  %131 = load i32, ptr %offset48.i.i.i, align 4, !dbg !1576
  %add45.i.i.i = add i32 %131, %129, !dbg !1577
  %shr.i.i.i.i = lshr i32 %127, 16, !dbg !1578
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833920, i32 %add45.i.i.i), !dbg !1580
  %cmp.i184.i.i.i = icmp ult i32 %add45.i.i.i, -1226833920, !dbg !1580
  br i1 %cmp.i184.i.i.i, label %if.then.i186.i.i.i, label %if.end.i189.i.i.i, !dbg !1581

if.then.i186.i.i.i:                               ; preds = %sw.bb43.i.i.i
  %gcov_ctr.i185.i.i.i = load i64, ptr @__llvm_gcov_ctr.23, align 16, !dbg !1582
  %132 = add i64 %gcov_ctr.i185.i.i.i, 1, !dbg !1582
  store i64 %132, ptr @__llvm_gcov_ctr.23, align 16, !dbg !1582
  %133 = ptrtoint ptr %dest.addr.1.i.i.i to i32, !dbg !1583
  call void @__asan_load4_noabort(i32 %133), !dbg !1583
  %134 = load i32, ptr %dest.addr.1.i.i.i, align 4, !dbg !1583
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %134), !dbg !1585
  %tobool.not.i.i.i.i.i = icmp ult i32 %134, 65536, !dbg !1585
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !dbg !1585, !prof !114

if.then.i.i.i.i.i:                                ; preds = %if.then.i186.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1586
  %gcov_ctr.i.i187.i.i.i = load i64, ptr @__llvm_gcov_ctr.24, align 16, !dbg !1586
  %135 = add i64 %gcov_ctr.i.i187.i.i.i, 1, !dbg !1586
  store i64 %135, ptr @__llvm_gcov_ctr.24, align 16, !dbg !1586
  br label %sw.epilog.i.i.i, !dbg !1586

if.end.i.i.i.i.i:                                 ; preds = %if.then.i186.i.i.i
  %shr.i.i.i.i.i = lshr i32 %134, 16, !dbg !1583
  %136 = inttoptr i32 %add45.i.i.i to ptr, !dbg !1587
  %gcov_ctr10.i.i.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), align 8, !dbg !1588
  %137 = add i64 %gcov_ctr10.i.i.i.i.i, 1, !dbg !1588
  store i64 %137, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), align 8, !dbg !1588
  %gcov_ctr.i.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %138 = add i64 %gcov_ctr.i.i.i.i.i.i, 1
  store i64 %138, ptr @__llvm_gcov_ctr.27, align 8
  %139 = ptrtoint ptr %dest.addr.1.i.i.i to i32, !dbg !1589
  call void @__asan_load4_noabort(i32 %139), !dbg !1589
  %140 = load i32, ptr %dest.addr.1.i.i.i, align 4, !dbg !1589
  %and.i.i.i.i.i.i = and i32 %140, 65535, !dbg !1589
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr null, i32 %and.i.i.i.i.i.i, !dbg !1591
  %call4.i.i.i.i.i = call i32 @strncpy_from_user_nofault(ptr noundef %add.ptr.i.i.i.i.i.i, ptr noundef %136, i32 noundef %shr.i.i.i.i.i) #17, !dbg !1592
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i.i.i.i.i), !dbg !1593
  %cmp.i.i.i.i.i = icmp sgt i32 %call4.i.i.i.i.i, -1, !dbg !1593
  br i1 %cmp.i.i.i.i.i, label %if.then5.i.i.i.i.i, label %if.end.i.i.i.i.i.sw.epilog.i.i.i_crit_edge, !dbg !1594

if.end.i.i.i.i.i.sw.epilog.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1594
  br label %sw.epilog.i.i.i, !dbg !1594

if.then5.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1595
  %gcov_ctr11.i.i.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 2), align 16, !dbg !1595
  %141 = add i64 %gcov_ctr11.i.i.i.i.i, 1, !dbg !1595
  store i64 %141, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 2), align 16, !dbg !1595
  %shl.i.i.i.i.i = shl i32 %call4.i.i.i.i.i, 16, !dbg !1595
  %or.i.i.i.i.i = or i32 %shl.i.i.i.i.i, %and.i.i.i.i.i.i, !dbg !1595
  %142 = ptrtoint ptr %dest.addr.1.i.i.i to i32, !dbg !1596
  call void @__asan_store4_noabort(i32 %142), !dbg !1596
  store i32 %or.i.i.i.i.i, ptr %dest.addr.1.i.i.i, align 4, !dbg !1596
  br label %sw.epilog.i.i.i, !dbg !1597

if.end.i189.i.i.i:                                ; preds = %sw.bb43.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %127), !dbg !1598
  %tobool.not.i188.i.i.i = icmp ult i32 %127, 65536, !dbg !1598
  br i1 %tobool.not.i188.i.i.i, label %if.then4.i.i.i.i, label %if.end5.i.i.i.i, !dbg !1598, !prof !114

if.then4.i.i.i.i:                                 ; preds = %if.end.i189.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1599
  %gcov_ctr14.i190.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 2), align 16, !dbg !1599
  %143 = add i64 %gcov_ctr14.i190.i.i.i, 1, !dbg !1599
  store i64 %143, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 2), align 16, !dbg !1599
  br label %sw.epilog.i.i.i, !dbg !1599

if.end5.i.i.i.i:                                  ; preds = %if.end.i189.i.i.i
  %gcov_ctr13.i191.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 1), align 8, !dbg !1600
  %144 = add i64 %gcov_ctr13.i191.i.i.i, 1, !dbg !1600
  store i64 %144, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 1), align 8, !dbg !1600
  %gcov_ctr.i27.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %145 = add i64 %gcov_ctr.i27.i.i.i.i, 1
  store i64 %145, ptr @__llvm_gcov_ctr.27, align 8
  %146 = ptrtoint ptr %dest.addr.1.i.i.i to i32, !dbg !1601
  call void @__asan_load4_noabort(i32 %146), !dbg !1601
  %147 = load i32, ptr %dest.addr.1.i.i.i, align 4, !dbg !1601
  %and.i.i.i.i.i = and i32 %147, 65535, !dbg !1601
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr null, i32 %and.i.i.i.i.i, !dbg !1603
  %148 = inttoptr i32 %add45.i.i.i to ptr, !dbg !1604
  %call7.i.i.i.i = call i32 @strncpy_from_kernel_nofault(ptr noundef %add.ptr.i.i.i.i.i, ptr noundef nonnull %148, i32 noundef %shr.i.i.i.i) #17, !dbg !1605
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7.i.i.i.i), !dbg !1606
  %cmp8.i.i.i.i = icmp sgt i32 %call7.i.i.i.i, -1, !dbg !1606
  br i1 %cmp8.i.i.i.i, label %if.then9.i.i.i.i, label %if.end5.i.i.i.i.sw.epilog.i.i.i_crit_edge, !dbg !1607

if.end5.i.i.i.i.sw.epilog.i.i.i_crit_edge:        ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1607
  br label %sw.epilog.i.i.i, !dbg !1607

if.then9.i.i.i.i:                                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1608
  %gcov_ctr15.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 3), align 8, !dbg !1608
  %149 = add i64 %gcov_ctr15.i.i.i.i, 1, !dbg !1608
  store i64 %149, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 3), align 8, !dbg !1608
  %shl.i.i.i.i = shl i32 %call7.i.i.i.i, 16, !dbg !1608
  %or.i.i.i.i = or i32 %shl.i.i.i.i, %and.i.i.i.i.i, !dbg !1608
  %150 = ptrtoint ptr %dest.addr.1.i.i.i to i32, !dbg !1609
  call void @__asan_store4_noabort(i32 %150), !dbg !1609
  store i32 %or.i.i.i.i, ptr %dest.addr.1.i.i.i, align 4, !dbg !1609
  br label %sw.epilog.i.i.i, !dbg !1610

sw.bb47.i.i.i:                                    ; preds = %if.end32.i.i.i
  %gcov_ctr100.i.i.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 11), align 8, !dbg !1611
  %151 = add i64 %gcov_ctr100.i.i.i, 1, !dbg !1611
  store i64 %151, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 11), align 8, !dbg !1611
  %152 = ptrtoint ptr %dest.addr.1.i.i.i to i32, !dbg !1612
  call void @__asan_load4_noabort(i32 %152), !dbg !1612
  %153 = load i32, ptr %dest.addr.1.i.i.i, align 4, !dbg !1612
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %153), !dbg !1613
  %tobool.not.i193.i.i.i = icmp ult i32 %153, 65536, !dbg !1613
  br i1 %tobool.not.i193.i.i.i, label %if.then.i195.i.i.i, label %if.end.i202.i.i.i, !dbg !1613, !prof !114

if.then.i195.i.i.i:                               ; preds = %sw.bb47.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1615
  %gcov_ctr.i194.i.i.i = load i64, ptr @__llvm_gcov_ctr.24, align 16, !dbg !1615
  %154 = add i64 %gcov_ctr.i194.i.i.i, 1, !dbg !1615
  store i64 %154, ptr @__llvm_gcov_ctr.24, align 16, !dbg !1615
  br label %sw.epilog.i.i.i, !dbg !1615

if.end.i202.i.i.i:                                ; preds = %sw.bb47.i.i.i
  %155 = ptrtoint ptr %val.addr.i.i.i to i32, !dbg !1616
  call void @__asan_load4_noabort(i32 %155), !dbg !1616
  %156 = load i32, ptr %val.addr.i.i.i, align 4, !dbg !1616
  %157 = ptrtoint ptr %offset48.i.i.i to i32, !dbg !1617
  call void @__asan_load4_noabort(i32 %157), !dbg !1617
  %158 = load i32, ptr %offset48.i.i.i, align 4, !dbg !1617
  %add49.i.i.i = add i32 %158, %156, !dbg !1618
  %shr.i196.i.i.i = lshr i32 %153, 16, !dbg !1619
  %159 = inttoptr i32 %add49.i.i.i to ptr, !dbg !1620
  %gcov_ctr10.i197.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), align 8, !dbg !1621
  %160 = add i64 %gcov_ctr10.i197.i.i.i, 1, !dbg !1621
  store i64 %160, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), align 8, !dbg !1621
  %gcov_ctr.i.i198.i.i.i = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %161 = add i64 %gcov_ctr.i.i198.i.i.i, 1
  store i64 %161, ptr @__llvm_gcov_ctr.27, align 8
  %162 = ptrtoint ptr %dest.addr.1.i.i.i to i32, !dbg !1622
  call void @__asan_load4_noabort(i32 %162), !dbg !1622
  %163 = load i32, ptr %dest.addr.1.i.i.i, align 4, !dbg !1622
  %and.i.i199.i.i.i = and i32 %163, 65535, !dbg !1622
  %add.ptr.i.i200.i.i.i = getelementptr i8, ptr null, i32 %and.i.i199.i.i.i, !dbg !1624
  %call4.i.i.i.i = call i32 @strncpy_from_user_nofault(ptr noundef %add.ptr.i.i200.i.i.i, ptr noundef %159, i32 noundef %shr.i196.i.i.i) #17, !dbg !1625
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i.i.i.i), !dbg !1626
  %cmp.i201.i.i.i = icmp sgt i32 %call4.i.i.i.i, -1, !dbg !1626
  br i1 %cmp.i201.i.i.i, label %if.then5.i.i.i.i, label %if.end.i202.i.i.i.sw.epilog.i.i.i_crit_edge, !dbg !1627

if.end.i202.i.i.i.sw.epilog.i.i.i_crit_edge:      ; preds = %if.end.i202.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1627
  br label %sw.epilog.i.i.i, !dbg !1627

if.then5.i.i.i.i:                                 ; preds = %if.end.i202.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1628
  %gcov_ctr11.i203.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 2), align 16, !dbg !1628
  %164 = add i64 %gcov_ctr11.i203.i.i.i, 1, !dbg !1628
  store i64 %164, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 2), align 16, !dbg !1628
  %shl.i204.i.i.i = shl i32 %call4.i.i.i.i, 16, !dbg !1628
  %or.i205.i.i.i = or i32 %shl.i204.i.i.i, %and.i.i199.i.i.i, !dbg !1628
  %165 = ptrtoint ptr %dest.addr.1.i.i.i to i32, !dbg !1629
  call void @__asan_store4_noabort(i32 %165), !dbg !1629
  store i32 %or.i205.i.i.i, ptr %dest.addr.1.i.i.i, align 4, !dbg !1629
  br label %sw.epilog.i.i.i, !dbg !1630

sw.default.i.i.i:                                 ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1631
  %gcov_ctr101.i.i.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 12), align 16, !dbg !1631
  %166 = add i64 %gcov_ctr101.i.i.i, 1, !dbg !1631
  store i64 %166, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 12), align 16, !dbg !1631
  br label %process_fetch_insn_bottom.exit.thread.i.i, !dbg !1631

sw.epilog.i.i.i:                                  ; preds = %if.then5.i.i.i.i, %if.end.i202.i.i.i.sw.epilog.i.i.i_crit_edge, %if.then.i195.i.i.i, %if.then9.i.i.i.i, %if.end5.i.i.i.i.sw.epilog.i.i.i_crit_edge, %if.then4.i.i.i.i, %if.then5.i.i.i.i.i, %if.end.i.i.i.i.i.sw.epilog.i.i.i_crit_edge, %if.then.i.i.i.i.i, %sw.bb38.i.i.i, %if.end.i179.i.i.i, %if.then.i176.i.i.i, %sw.default.i.i.i.i, %sw.bb4.i.i.i.i, %sw.bb3.i.i.i.i, %sw.bb1.i.i.i.i, %sw.bb.i.i.i.i
  %ret.4.i.i.i = phi i32 [ %ret.3.i.i.i, %sw.bb38.i.i.i ], [ %ret.3.i.i.i, %sw.bb.i.i.i.i ], [ %ret.3.i.i.i, %sw.bb1.i.i.i.i ], [ %ret.3.i.i.i, %sw.bb3.i.i.i.i ], [ %ret.3.i.i.i, %sw.bb4.i.i.i.i ], [ %ret.3.i.i.i, %sw.default.i.i.i.i ], [ %ret.3.i.i.i, %if.then.i176.i.i.i ], [ %ret.3.i.i.i, %if.end.i179.i.i.i ], [ -12, %if.then4.i.i.i.i ], [ %call7.i.i.i.i, %if.then9.i.i.i.i ], [ %call7.i.i.i.i, %if.end5.i.i.i.i.sw.epilog.i.i.i_crit_edge ], [ -12, %if.then.i.i.i.i.i ], [ %call4.i.i.i.i.i, %if.then5.i.i.i.i.i ], [ %call4.i.i.i.i.i, %if.end.i.i.i.i.i.sw.epilog.i.i.i_crit_edge ], [ -12, %if.then.i195.i.i.i ], [ %call4.i.i.i.i, %if.then5.i.i.i.i ], [ %call4.i.i.i.i, %if.end.i202.i.i.i.sw.epilog.i.i.i_crit_edge ], !dbg !1444
  %loc.2.i.i.i = phi i32 [ %loc.1.i.i.i, %sw.bb38.i.i.i ], [ %loc.1.i.i.i, %sw.bb.i.i.i.i ], [ %loc.1.i.i.i, %sw.bb1.i.i.i.i ], [ %loc.1.i.i.i, %sw.bb3.i.i.i.i ], [ %loc.1.i.i.i, %sw.bb4.i.i.i.i ], [ %loc.1.i.i.i, %sw.default.i.i.i.i ], [ %loc.1.i.i.i, %if.then.i176.i.i.i ], [ %loc.1.i.i.i, %if.end.i179.i.i.i ], [ %127, %if.then4.i.i.i.i ], [ %127, %if.then9.i.i.i.i ], [ %127, %if.end5.i.i.i.i.sw.epilog.i.i.i_crit_edge ], [ %127, %if.then.i.i.i.i.i ], [ %127, %if.then5.i.i.i.i.i ], [ %127, %if.end.i.i.i.i.i.sw.epilog.i.i.i_crit_edge ], [ %153, %if.then.i195.i.i.i ], [ %153, %if.then5.i.i.i.i ], [ %153, %if.end.i202.i.i.i.sw.epilog.i.i.i_crit_edge ], !dbg !1444
  %167 = ptrtoint ptr %incdec.ptr51.i.i.i to i32, !dbg !1632
  call void @__asan_load4_noabort(i32 %167), !dbg !1632
  %168 = load i32, ptr %incdec.ptr51.i.i.i, align 4, !dbg !1632
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %168), !dbg !1633
  %cmp53.i.i.i = icmp eq i32 %168, 17, !dbg !1633
  br i1 %cmp53.i.i.i, label %if.then54.i.i.i, label %sw.epilog.i.i.i.array.i.i.i_crit_edge, !dbg !1634

sw.epilog.i.i.i.array.i.i.i_crit_edge:            ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1634
  br label %array.i.i.i, !dbg !1634

if.then54.i.i.i:                                  ; preds = %sw.epilog.i.i.i
  %gcov_ctr102.i.i.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 13), align 8, !dbg !1635
  %169 = add i64 %gcov_ctr102.i.i.i, 1, !dbg !1635
  store i64 %169, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 13), align 8, !dbg !1635
  %gcov_ctr.i207.i.i.i = load i64, ptr @__llvm_gcov_ctr.25, align 16
  %170 = add i64 %gcov_ctr.i207.i.i.i, 1
  store i64 %170, ptr @__llvm_gcov_ctr.25, align 16
  %171 = ptrtoint ptr %58 to i32, !dbg !1636
  call void @__asan_load1_noabort(i32 %171), !dbg !1636
  %172 = load i8, ptr %58, align 4, !dbg !1636
  %173 = zext i8 %172 to i64, !dbg !1638
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.123), !dbg !1638
  switch i8 %172, label %if.then54.i.i.i.arraythread-pre-split.i.i.i_crit_edge [
    i8 1, label %sw.bb.i212.i.i.i
    i8 2, label %sw.bb7.i.i.i.i
    i8 4, label %sw.bb18.i.i.i.i
    i8 8, label %sw.bb25.i.i.i.i
  ], !dbg !1638

if.then54.i.i.i.arraythread-pre-split.i.i.i_crit_edge: ; preds = %if.then54.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1638
  br label %arraythread-pre-split.i.i.i, !dbg !1638

sw.bb.i212.i.i.i:                                 ; preds = %if.then54.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1639
  %gcov_ctr33.i.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 1), align 8, !dbg !1639
  %174 = add i64 %gcov_ctr33.i.i.i.i, 1, !dbg !1639
  store i64 %174, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 1), align 8, !dbg !1639
  %175 = ptrtoint ptr %lshift26.i.i.i.i to i32, !dbg !1640
  call void @__asan_load1_noabort(i32 %175), !dbg !1640
  %176 = load i8, ptr %lshift26.i.i.i.i, align 1, !dbg !1640
  %conv1.i.i.i.i = zext i8 %176 to i32, !dbg !1639
  %177 = ptrtoint ptr %dest.addr.1.i.i.i to i32, !dbg !1641
  call void @__asan_load1_noabort(i32 %177), !dbg !1641
  %178 = load i8, ptr %dest.addr.1.i.i.i, align 1, !dbg !1641
  %conv2.i208.i.i.i = zext i8 %178 to i32, !dbg !1641
  %shl.i209.i.i.i = shl i32 %conv2.i208.i.i.i, %conv1.i.i.i.i, !dbg !1641
  %conv3.i.i.i.i = trunc i32 %shl.i209.i.i.i to i8, !dbg !1641
  store i8 %conv3.i.i.i.i, ptr %dest.addr.1.i.i.i, align 1, !dbg !1641
  %179 = ptrtoint ptr %rshift29.i.i.i.i to i32, !dbg !1642
  call void @__asan_load1_noabort(i32 %179), !dbg !1642
  %180 = load i8, ptr %rshift29.i.i.i.i, align 2, !dbg !1642
  %conv4.i.i.i.i = zext i8 %180 to i32, !dbg !1643
  %conv5.i210.i.i.i = and i32 %shl.i209.i.i.i, 255, !dbg !1644
  %shr.i211.i.i.i = lshr i32 %conv5.i210.i.i.i, %conv4.i.i.i.i, !dbg !1644
  %conv6.i.i.i.i = trunc i32 %shr.i211.i.i.i to i8, !dbg !1644
  store i8 %conv6.i.i.i.i, ptr %dest.addr.1.i.i.i, align 1, !dbg !1644
  br label %arraythread-pre-split.i.i.i, !dbg !1645

sw.bb7.i.i.i.i:                                   ; preds = %if.then54.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1646
  %gcov_ctr34.i.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 2), align 16, !dbg !1646
  %181 = add i64 %gcov_ctr34.i.i.i.i, 1, !dbg !1646
  store i64 %181, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 2), align 16, !dbg !1646
  %182 = ptrtoint ptr %lshift26.i.i.i.i to i32, !dbg !1647
  call void @__asan_load1_noabort(i32 %182), !dbg !1647
  %183 = load i8, ptr %lshift26.i.i.i.i, align 1, !dbg !1647
  %conv9.i.i.i.i = zext i8 %183 to i32, !dbg !1646
  %184 = ptrtoint ptr %dest.addr.1.i.i.i to i32, !dbg !1648
  call void @__asan_load2_noabort(i32 %184), !dbg !1648
  %185 = load i16, ptr %dest.addr.1.i.i.i, align 2, !dbg !1648
  %conv10.i.i.i.i = zext i16 %185 to i32, !dbg !1648
  %shl11.i.i.i.i = shl i32 %conv10.i.i.i.i, %conv9.i.i.i.i, !dbg !1648
  %conv12.i.i.i.i = trunc i32 %shl11.i.i.i.i to i16, !dbg !1648
  store i16 %conv12.i.i.i.i, ptr %dest.addr.1.i.i.i, align 2, !dbg !1648
  %186 = ptrtoint ptr %rshift29.i.i.i.i to i32, !dbg !1649
  call void @__asan_load1_noabort(i32 %186), !dbg !1649
  %187 = load i8, ptr %rshift29.i.i.i.i, align 2, !dbg !1649
  %conv14.i.i.i.i = zext i8 %187 to i32, !dbg !1650
  %conv15.i.i.i.i = and i32 %shl11.i.i.i.i, 65535, !dbg !1651
  %shr16.i.i.i.i = lshr i32 %conv15.i.i.i.i, %conv14.i.i.i.i, !dbg !1651
  %conv17.i.i.i.i = trunc i32 %shr16.i.i.i.i to i16, !dbg !1651
  store i16 %conv17.i.i.i.i, ptr %dest.addr.1.i.i.i, align 2, !dbg !1651
  br label %arraythread-pre-split.i.i.i, !dbg !1652

sw.bb18.i.i.i.i:                                  ; preds = %if.then54.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1653
  %gcov_ctr35.i.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 3), align 8, !dbg !1653
  %188 = add i64 %gcov_ctr35.i.i.i.i, 1, !dbg !1653
  store i64 %188, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 3), align 8, !dbg !1653
  %189 = ptrtoint ptr %lshift26.i.i.i.i to i32, !dbg !1654
  call void @__asan_load1_noabort(i32 %189), !dbg !1654
  %190 = load i8, ptr %lshift26.i.i.i.i, align 1, !dbg !1654
  %conv20.i.i.i.i = zext i8 %190 to i32, !dbg !1653
  %191 = ptrtoint ptr %dest.addr.1.i.i.i to i32, !dbg !1655
  call void @__asan_load4_noabort(i32 %191), !dbg !1655
  %192 = load i32, ptr %dest.addr.1.i.i.i, align 4, !dbg !1655
  %shl21.i.i.i.i = shl i32 %192, %conv20.i.i.i.i, !dbg !1655
  store i32 %shl21.i.i.i.i, ptr %dest.addr.1.i.i.i, align 4, !dbg !1655
  %193 = ptrtoint ptr %rshift29.i.i.i.i to i32, !dbg !1656
  call void @__asan_load1_noabort(i32 %193), !dbg !1656
  %194 = load i8, ptr %rshift29.i.i.i.i, align 2, !dbg !1656
  %conv23.i.i.i.i = zext i8 %194 to i32, !dbg !1657
  %shr24.i.i.i.i = lshr i32 %shl21.i.i.i.i, %conv23.i.i.i.i, !dbg !1658
  store i32 %shr24.i.i.i.i, ptr %dest.addr.1.i.i.i, align 4, !dbg !1658
  br label %arraythread-pre-split.i.i.i, !dbg !1659

sw.bb25.i.i.i.i:                                  ; preds = %if.then54.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1660
  %gcov_ctr36.i.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 4), align 16, !dbg !1660
  %195 = add i64 %gcov_ctr36.i.i.i.i, 1, !dbg !1660
  store i64 %195, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 4), align 16, !dbg !1660
  %196 = ptrtoint ptr %lshift26.i.i.i.i to i32, !dbg !1661
  call void @__asan_load1_noabort(i32 %196), !dbg !1661
  %197 = load i8, ptr %lshift26.i.i.i.i, align 1, !dbg !1661
  %198 = ptrtoint ptr %dest.addr.1.i.i.i to i32, !dbg !1662
  call void @__asan_load8_noabort(i32 %198), !dbg !1662
  %199 = load i64, ptr %dest.addr.1.i.i.i, align 8, !dbg !1662
  %sh_prom.i.i.i.i = zext i8 %197 to i64, !dbg !1662
  %shl28.i.i.i.i = shl i64 %199, %sh_prom.i.i.i.i, !dbg !1662
  store i64 %shl28.i.i.i.i, ptr %dest.addr.1.i.i.i, align 8, !dbg !1662
  %200 = ptrtoint ptr %rshift29.i.i.i.i to i32, !dbg !1663
  call void @__asan_load1_noabort(i32 %200), !dbg !1663
  %201 = load i8, ptr %rshift29.i.i.i.i, align 2, !dbg !1663
  %sh_prom31.i.i.i.i = zext i8 %201 to i64, !dbg !1664
  %shr32.i.i.i.i = lshr i64 %shl28.i.i.i.i, %sh_prom31.i.i.i.i, !dbg !1664
  store i64 %shr32.i.i.i.i, ptr %dest.addr.1.i.i.i, align 8, !dbg !1664
  br label %arraythread-pre-split.i.i.i, !dbg !1665

arraythread-pre-split.i.i.i:                      ; preds = %sw.bb25.i.i.i.i, %sw.bb18.i.i.i.i, %sw.bb7.i.i.i.i, %sw.bb.i212.i.i.i, %if.then54.i.i.i.arraythread-pre-split.i.i.i_crit_edge, %if.then25.i.i.i, %fetch_store_strlen.exit.i.i.i
  %code.addr.3.ph.i.i.i = phi ptr [ %incdec.ptr51.i.i.i, %if.then25.i.i.i ], [ %incdec.ptr51.i.i.i, %fetch_store_strlen.exit.i.i.i ], [ %incdec.ptr55.i.i.i, %if.then54.i.i.i.arraythread-pre-split.i.i.i_crit_edge ], [ %incdec.ptr55.i.i.i, %sw.bb.i212.i.i.i ], [ %incdec.ptr55.i.i.i, %sw.bb7.i.i.i.i ], [ %incdec.ptr55.i.i.i, %sw.bb18.i.i.i.i ], [ %incdec.ptr55.i.i.i, %sw.bb25.i.i.i.i ]
  %ret.5.ph.i.i.i = phi i32 [ %add29.i.i.i, %if.then25.i.i.i ], [ %retval.0.i168.i.i.i, %fetch_store_strlen.exit.i.i.i ], [ %ret.4.i.i.i, %if.then54.i.i.i.arraythread-pre-split.i.i.i_crit_edge ], [ %ret.4.i.i.i, %sw.bb.i212.i.i.i ], [ %ret.4.i.i.i, %sw.bb7.i.i.i.i ], [ %ret.4.i.i.i, %sw.bb18.i.i.i.i ], [ %ret.4.i.i.i, %sw.bb25.i.i.i.i ]
  %loc.3.ph.i.i.i = phi i32 [ %loc.1.i.i.i, %if.then25.i.i.i ], [ %loc.1.i.i.i, %fetch_store_strlen.exit.i.i.i ], [ %loc.2.i.i.i, %if.then54.i.i.i.arraythread-pre-split.i.i.i_crit_edge ], [ %loc.2.i.i.i, %sw.bb.i212.i.i.i ], [ %loc.2.i.i.i, %sw.bb7.i.i.i.i ], [ %loc.2.i.i.i, %sw.bb18.i.i.i.i ], [ %loc.2.i.i.i, %sw.bb25.i.i.i.i ]
  %202 = ptrtoint ptr %code.addr.3.ph.i.i.i to i32, !dbg !1666
  call void @__asan_load4_noabort(i32 %202), !dbg !1666
  %.pr.i.i.i = load i32, ptr %code.addr.3.ph.i.i.i, align 4, !dbg !1666
  br label %array.i.i.i, !dbg !1666

array.i.i.i:                                      ; preds = %arraythread-pre-split.i.i.i, %sw.epilog.i.i.i.array.i.i.i_crit_edge
  %203 = phi i32 [ %.pr.i.i.i, %arraythread-pre-split.i.i.i ], [ %168, %sw.epilog.i.i.i.array.i.i.i_crit_edge ], !dbg !1666
  %code.addr.3.i.i.i = phi ptr [ %code.addr.3.ph.i.i.i, %arraythread-pre-split.i.i.i ], [ %incdec.ptr51.i.i.i, %sw.epilog.i.i.i.array.i.i.i_crit_edge ], !dbg !1444
  %ret.5.i.i.i = phi i32 [ %ret.5.ph.i.i.i, %arraythread-pre-split.i.i.i ], [ %ret.4.i.i.i, %sw.epilog.i.i.i.array.i.i.i_crit_edge ], !dbg !1444
  %loc.3.i.i.i = phi i32 [ %loc.3.ph.i.i.i, %arraythread-pre-split.i.i.i ], [ %loc.2.i.i.i, %sw.epilog.i.i.i.array.i.i.i_crit_edge ], !dbg !1444
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %203), !dbg !1667
  %cmp58.i.i.i = icmp eq i32 %203, 18, !dbg !1667
  br i1 %cmp58.i.i.i, label %if.then59.i.i.i, label %array.i.i.i.if.end82.i.i.i_crit_edge, !dbg !1668

array.i.i.i.if.end82.i.i.i_crit_edge:             ; preds = %array.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1668
  br label %if.end82.i.i.i, !dbg !1668

if.then59.i.i.i:                                  ; preds = %array.i.i.i
  %add60.i.i.i = add i32 %ret.5.i.i.i, %total.1.i.i.i, !dbg !1669
  %inc.i.i.i = add i32 %i.1.i.i.i, 1, !dbg !1670
  %204 = getelementptr inbounds %struct.fetch_insn, ptr %code.addr.3.i.i.i, i32 0, i32 1, !dbg !1671
  %205 = ptrtoint ptr %204 to i32, !dbg !1671
  call void @__asan_load4_noabort(i32 %205), !dbg !1671
  %206 = load i32, ptr %204, align 4, !dbg !1671
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %206), !dbg !1672
  %cmp61.i.i.i = icmp ult i32 %inc.i.i.i, %206, !dbg !1672
  br i1 %cmp61.i.i.i, label %if.then62.i.i.i, label %if.end80.i.i.i, !dbg !1670

if.then62.i.i.i:                                  ; preds = %if.then59.i.i.i
  %207 = ptrtoint ptr %code.addr.1.i.i.i to i32, !dbg !1673
  call void @__asan_load4_noabort(i32 %207), !dbg !1673
  %208 = load i32, ptr %code.addr.1.i.i.i, align 4, !dbg !1673
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %208), !dbg !1674
  %cmp64.not.i.i.i = icmp eq i32 %208, 15, !dbg !1674
  br i1 %cmp64.not.i.i.i, label %if.then62.i.i.i.if.end72.i.i.i_crit_edge, label %land.lhs.true.i.i.i, !dbg !1675

if.then62.i.i.i.if.end72.i.i.i_crit_edge:         ; preds = %if.then62.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1675
  br label %if.end72.i.i.i, !dbg !1675

land.lhs.true.i.i.i:                              ; preds = %if.then62.i.i.i
  %gcov_ctr103.i.i.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 14), align 16, !dbg !1676
  %209 = add i64 %gcov_ctr103.i.i.i, 1, !dbg !1676
  store i64 %209, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 14), align 16, !dbg !1676
  %210 = ptrtoint ptr %code.addr.1.i.i.i to i32, !dbg !1677
  call void @__asan_load4_noabort(i32 %210), !dbg !1677
  %211 = load i32, ptr %code.addr.1.i.i.i, align 4, !dbg !1677
  %cmp66.not.i.i.i = icmp eq i32 %211, 16, !dbg !1678
  br i1 %cmp66.not.i.i.i, label %land.lhs.true.i.i.i.if.end72.i.i.i_crit_edge, label %if.then67.i.i.i, !dbg !1679

land.lhs.true.i.i.i.if.end72.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1679
  br label %if.end72.i.i.i, !dbg !1679

if.then67.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1680
  %212 = ptrtoint ptr %57 to i32, !dbg !1680
  call void @__asan_load4_noabort(i32 %212), !dbg !1680
  %213 = load i32, ptr %57, align 4, !dbg !1680
  %add.ptr69.i.i.i = getelementptr i8, ptr %dest.addr.1.i.i.i, i32 %213, !dbg !1681
  %214 = ptrtoint ptr %val.addr.i.i.i to i32, !dbg !1682
  call void @__asan_load4_noabort(i32 %214), !dbg !1682
  %215 = load i32, ptr %val.addr.i.i.i, align 4, !dbg !1682
  %add71.i.i.i = add i32 %215, %213, !dbg !1682
  store i32 %add71.i.i.i, ptr %val.addr.i.i.i, align 4, !dbg !1682
  br label %stage3.i.i.i, !dbg !1683

if.end72.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.if.end72.i.i.i_crit_edge, %if.then62.i.i.i.if.end72.i.i.i_crit_edge
  %incdec.ptr73.i.i.i = getelementptr %struct.fetch_insn, ptr %code.addr.1.i.i.i, i32 -1, !dbg !1684
  %add74.i.i.i = add i32 %lval.1.i.i.i, 4, !dbg !1685
  %216 = ptrtoint ptr %val.addr.i.i.i to i32, !dbg !1686
  call void @__asan_store4_noabort(i32 %216), !dbg !1686
  store i32 %add74.i.i.i, ptr %val.addr.i.i.i, align 4, !dbg !1686
  br i1 %tobool11.not.i.i.i, label %if.end72.i.i.i.if.end79.i.i.i_crit_edge, label %if.then76.i.i.i, !dbg !1687

if.end72.i.i.i.if.end79.i.i.i_crit_edge:          ; preds = %if.end72.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1687
  br label %if.end79.i.i.i, !dbg !1687

if.then76.i.i.i:                                  ; preds = %if.end72.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1688
  %gcov_ctr104.i.i.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 15), align 8, !dbg !1688
  %217 = add i64 %gcov_ctr104.i.i.i, 1, !dbg !1688
  store i64 %217, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 15), align 8, !dbg !1688
  %add.ptr77.i.i.i = getelementptr i8, ptr %dest.addr.1.i.i.i, i32 4, !dbg !1688
  %gcov_ctr.i213.i.i.i = load i64, ptr @__llvm_gcov_ctr.26, align 8
  %218 = add i64 %gcov_ctr.i213.i.i.i, 1
  store i64 %218, ptr @__llvm_gcov_ctr.26, align 8
  %sub4.neg.i.i.i.i = mul i32 %ret.5.i.i.i, -65536, !dbg !1689
  %shr5.i.i.i.i = add i32 %sub4.neg.i.i.i.i, %loc.3.i.i.i, !dbg !1689
  %shl.i214.i.i.i = and i32 %shr5.i.i.i.i, -65536, !dbg !1689
  %add.i.i.i.i = add i32 %loc.3.i.i.i, %ret.5.i.i.i, !dbg !1689
  %and1.i.i.i.i = and i32 %add.i.i.i.i, 65535, !dbg !1689
  %or.i215.i.i.i = or i32 %shl.i214.i.i.i, %and1.i.i.i.i, !dbg !1689
  %219 = ptrtoint ptr %add.ptr77.i.i.i to i32, !dbg !1691
  call void @__asan_store4_noabort(i32 %219), !dbg !1691
  store i32 %or.i215.i.i.i, ptr %add.ptr77.i.i.i, align 4, !dbg !1691
  br label %if.end79.i.i.i, !dbg !1692

if.end79.i.i.i:                                   ; preds = %if.then76.i.i.i, %if.end72.i.i.i.if.end79.i.i.i_crit_edge
  %dest.addr.2.i.i.i = phi ptr [ %add.ptr77.i.i.i, %if.then76.i.i.i ], [ null, %if.end72.i.i.i.if.end79.i.i.i_crit_edge ]
  %gcov_ctr105.i.i.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 16), align 16, !dbg !1693
  %220 = add i64 %gcov_ctr105.i.i.i, 1, !dbg !1693
  store i64 %220, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 16), align 16, !dbg !1693
  br label %stage2.i.i.i, !dbg !1693

if.end80.i.i.i:                                   ; preds = %if.then59.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1694
  %gcov_ctr106.i.i.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 17), align 8, !dbg !1694
  %221 = add i64 %gcov_ctr106.i.i.i, 1, !dbg !1694
  store i64 %221, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 17), align 8, !dbg !1694
  %incdec.ptr81.i.i.i = getelementptr %struct.fetch_insn, ptr %code.addr.3.i.i.i, i32 1, !dbg !1694
  br label %if.end82.i.i.i, !dbg !1695

if.end82.i.i.i:                                   ; preds = %if.end80.i.i.i, %array.i.i.i.if.end82.i.i.i_crit_edge
  %code.addr.4.i.i.i = phi ptr [ %incdec.ptr81.i.i.i, %if.end80.i.i.i ], [ %code.addr.3.i.i.i, %array.i.i.i.if.end82.i.i.i_crit_edge ], !dbg !1444
  %ret.6.i.i.i = phi i32 [ %add60.i.i.i, %if.end80.i.i.i ], [ %ret.5.i.i.i, %array.i.i.i.if.end82.i.i.i_crit_edge ], !dbg !1444
  %222 = ptrtoint ptr %code.addr.4.i.i.i to i32, !dbg !1696
  call void @__asan_load4_noabort(i32 %222), !dbg !1696
  %223 = load i32, ptr %code.addr.4.i.i.i, align 4, !dbg !1696
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %223), !dbg !1697
  %cmp84.i.i.i = icmp eq i32 %223, 20, !dbg !1697
  br i1 %cmp84.i.i.i, label %cond.true.i.i.i, label %cond.false.i.i.i, !dbg !1698

cond.true.i.i.i:                                  ; preds = %if.end82.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1699
  %gcov_ctr107.i.i.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 18), align 16, !dbg !1699
  %224 = add i64 %gcov_ctr107.i.i.i, 1, !dbg !1699
  store i64 %224, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 18), align 16, !dbg !1699
  br label %process_fetch_insn_bottom.exit.i.i, !dbg !1698

cond.false.i.i.i:                                 ; preds = %if.end82.i.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1698
  %gcov_ctr108.i.i.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 19), align 8, !dbg !1698
  %225 = add i64 %gcov_ctr108.i.i.i, 1, !dbg !1698
  store i64 %225, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 19), align 8, !dbg !1698
  br label %process_fetch_insn_bottom.exit.thread.i.i, !dbg !1698

process_fetch_insn_bottom.exit.thread.i.i:        ; preds = %cond.false.i.i.i, %sw.default.i.i.i, %if.else31.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i.i.i) #17, !dbg !1700
  br label %if.end.i101.i, !dbg !1701

process_fetch_insn_bottom.exit.i.i:               ; preds = %cond.true.i.i.i, %if.then9.i.i.i
  %retval.0.i.i.i = phi i32 [ %ret.2.i.i.i, %if.then9.i.i.i ], [ %ret.6.i.i.i, %cond.true.i.i.i ], !dbg !1444
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i.i.i) #17, !dbg !1700
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i), !dbg !1702
  %cmp6.i100.i = icmp sgt i32 %retval.0.i.i.i, 0, !dbg !1702
  br i1 %cmp6.i100.i, label %if.then7.i.i, label %process_fetch_insn_bottom.exit.i.i.if.end.i101.i_crit_edge, !dbg !1701

process_fetch_insn_bottom.exit.i.i.if.end.i101.i_crit_edge: ; preds = %process_fetch_insn_bottom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1701
  br label %if.end.i101.i, !dbg !1701

if.then7.i.i:                                     ; preds = %process_fetch_insn_bottom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1703
  %gcov_ctr9.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.88, i32 0, i32 1), align 8, !dbg !1703
  %226 = add i64 %gcov_ctr9.i.i, 1, !dbg !1703
  store i64 %226, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.88, i32 0, i32 1), align 8, !dbg !1703
  %add.i.i = add i32 %retval.0.i.i.i, %ret.045.i.i, !dbg !1704
  br label %if.end.i101.i, !dbg !1705

if.end.i101.i:                                    ; preds = %if.then7.i.i, %process_fetch_insn_bottom.exit.i.i.if.end.i101.i_crit_edge, %process_fetch_insn_bottom.exit.thread.i.i
  %ret.1.i.i = phi i32 [ %add.i.i, %if.then7.i.i ], [ %ret.045.i.i, %process_fetch_insn_bottom.exit.i.i.if.end.i101.i_crit_edge ], [ %ret.045.i.i, %process_fetch_insn_bottom.exit.thread.i.i ], !dbg !1706
  %gcov_ctr10.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.88, i32 0, i32 2), align 16, !dbg !1707
  %227 = add i64 %gcov_ctr10.i.i, 1, !dbg !1707
  store i64 %227, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.88, i32 0, i32 2), align 16, !dbg !1707
  br label %for.inc.i104.i, !dbg !1707

for.inc.i104.i:                                   ; preds = %if.end.i101.i, %for.body.i96.i.for.inc.i104.i_crit_edge
  %ret.2.i.i = phi i32 [ %ret.1.i.i, %if.end.i101.i ], [ %ret.045.i.i, %for.body.i96.i.for.inc.i104.i_crit_edge ], !dbg !1706
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.88, i32 0, i32 3), align 8, !dbg !1708
  %228 = add i64 %gcov_ctr11.i.i, 1, !dbg !1708
  store i64 %228, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.88, i32 0, i32 3), align 8, !dbg !1708
  %inc.i102.i = add nuw i32 %i.043.i.i, 1, !dbg !1708
  %229 = ptrtoint ptr %nr_args.i91.i to i32, !dbg !1430
  call void @__asan_load4_noabort(i32 %229), !dbg !1430
  %230 = load i32, ptr %nr_args.i91.i, align 4, !dbg !1430
  %cmp.i103.i = icmp ult i32 %inc.i102.i, %230, !dbg !1433
  br i1 %cmp.i103.i, label %for.inc.i104.i.for.body.i96.i_crit_edge, label %for.inc.i104.i.get_eprobe_size.exit.i_crit_edge, !dbg !1434, !llvm.loop !1709

for.inc.i104.i.get_eprobe_size.exit.i_crit_edge:  ; preds = %for.inc.i104.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1434
  br label %get_eprobe_size.exit.i, !dbg !1434

for.inc.i104.i.for.body.i96.i_crit_edge:          ; preds = %for.inc.i104.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1434
  br label %for.body.i96.i, !dbg !1434

get_eprobe_size.exit.i:                           ; preds = %for.inc.i104.i.get_eprobe_size.exit.i_crit_edge, %if.end43.i.get_eprobe_size.exit.i_crit_edge
  %ret.0.lcssa.i.i = phi i32 [ 0, %if.end43.i.get_eprobe_size.exit.i_crit_edge ], [ %ret.2.i.i, %for.inc.i104.i.get_eprobe_size.exit.i_crit_edge ], !dbg !1706
  %231 = ptrtoint ptr %2 to i32, !dbg !1711
  call void @__asan_load4_noabort(i32 %231), !dbg !1711
  %232 = load ptr, ptr %2, align 4, !dbg !1711
  %233 = ptrtoint ptr %ep.i to i32, !dbg !1712
  call void @__asan_load4_noabort(i32 %233), !dbg !1712
  %234 = load ptr, ptr %ep.i, align 4, !dbg !1712
  %size.i = getelementptr inbounds %struct.trace_eprobe, ptr %234, i32 0, i32 4, i32 2, !dbg !1713
  %235 = ptrtoint ptr %size.i to i32, !dbg !1713
  call void @__asan_load4_noabort(i32 %235), !dbg !1713
  %236 = load i32, ptr %size.i, align 4, !dbg !1713
  %add.i = add i32 %ret.0.lcssa.i.i, 8, !dbg !1714
  %add50.i = add i32 %add.i, %236, !dbg !1715
  %call51.i = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer.i, ptr noundef %232, i32 noundef %add50.i) #17, !dbg !1716
  %tobool52.not.i = icmp eq ptr %call51.i, null, !dbg !1717
  br i1 %tobool52.not.i, label %if.then53.i, label %if.end54.i, !dbg !1718

if.then53.i:                                      ; preds = %get_eprobe_size.exit.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1426
  %gcov_ctr66.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.86, i32 0, i32 5), align 8
  %237 = add i64 %gcov_ctr66.i, 1
  store i64 %237, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.86, i32 0, i32 5), align 8
  br label %__eprobe_trace_func.exit, !dbg !1719

if.end54.i:                                       ; preds = %get_eprobe_size.exit.i
  %gcov_ctr67.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.86, i32 0, i32 6), align 16, !dbg !1720
  %238 = add i64 %gcov_ctr67.i, 1, !dbg !1720
  store i64 %238, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.86, i32 0, i32 6), align 16, !dbg !1720
  %239 = ptrtoint ptr %8 to i32, !dbg !1720
  call void @__asan_load4_noabort(i32 %239), !dbg !1720
  %240 = load ptr, ptr %8, align 4, !dbg !1720
  %call55.i = call ptr @ring_buffer_event_data(ptr noundef %240) #17, !dbg !1721
  %241 = ptrtoint ptr %9 to i32, !dbg !1722
  call void @__asan_store4_noabort(i32 %241), !dbg !1722
  store ptr %call55.i, ptr %9, align 4, !dbg !1722
  %arrayidx.i = getelementptr %struct.eprobe_trace_entry_head, ptr %call55.i, i32 1, !dbg !1723
  %242 = ptrtoint ptr %ep.i to i32, !dbg !1724
  call void @__asan_load4_noabort(i32 %242), !dbg !1724
  %243 = load ptr, ptr %ep.i, align 4, !dbg !1724
  %gcov_ctr.i82.i = load i64, ptr @__llvm_gcov_ctr.89, align 16
  %244 = add i64 %gcov_ctr.i82.i, 1
  store i64 %244, ptr @__llvm_gcov_ctr.89, align 16
  %nr_args.i.i = getelementptr inbounds %struct.trace_eprobe, ptr %243, i32 0, i32 4, i32 3
  %245 = ptrtoint ptr %nr_args.i.i to i32, !dbg !1725
  call void @__asan_load4_noabort(i32 %245), !dbg !1725
  %246 = load i32, ptr %nr_args.i.i, align 4, !dbg !1725
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246), !dbg !1728
  %cmp1.not.i.i = icmp eq i32 %246, 0, !dbg !1728
  br i1 %cmp1.not.i.i, label %if.end54.i.store_trace_args.exit.i_crit_edge, label %for.body.lr.ph.i.i, !dbg !1729

if.end54.i.store_trace_args.exit.i_crit_edge:     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1729
  br label %store_trace_args.exit.i, !dbg !1729

for.body.lr.ph.i.i:                               ; preds = %if.end54.i
  %size.i.i = getelementptr inbounds %struct.trace_eprobe, ptr %243, i32 0, i32 4, i32 2, !dbg !1730
  %247 = ptrtoint ptr %size.i.i to i32, !dbg !1730
  call void @__asan_load4_noabort(i32 %247), !dbg !1730
  %248 = load i32, ptr %size.i.i, align 4, !dbg !1730
  %add.ptr1.i.i = getelementptr i8, ptr %arrayidx.i, i32 %248, !dbg !1731
  %args.i.i = getelementptr inbounds %struct.trace_eprobe, ptr %243, i32 1
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call55.i to i32
  br label %for.body.i.i, !dbg !1729

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.04.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %dyndata.03.i.i = phi ptr [ %add.ptr1.i.i, %for.body.lr.ph.i.i ], [ %dyndata.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %maxlen.addr.02.i.i = phi i32 [ %ret.0.lcssa.i.i, %for.body.lr.ph.i.i ], [ %maxlen.addr.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add.ptr2.i.i = getelementptr %struct.probe_arg, ptr %args.i.i, i32 %i.04.i.i, !dbg !1732
  %offset.i.i = getelementptr %struct.probe_arg, ptr %args.i.i, i32 %i.04.i.i, i32 2, !dbg !1733
  %249 = ptrtoint ptr %offset.i.i to i32, !dbg !1733
  call void @__asan_load4_noabort(i32 %249), !dbg !1733
  %250 = load i32, ptr %offset.i.i, align 4, !dbg !1733
  %add.ptr3.i.i = getelementptr i8, ptr %arrayidx.i, i32 %250, !dbg !1734
  %dynamic.i.i = getelementptr %struct.probe_arg, ptr %args.i.i, i32 %i.04.i.i, i32 1, !dbg !1735
  %251 = ptrtoint ptr %dynamic.i.i to i32, !dbg !1735
  call void @__asan_load1_noabort(i32 %251), !dbg !1735
  %252 = load i8, ptr %dynamic.i.i, align 4, !dbg !1735, !range !1436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252), !dbg !1735
  %tobool.not.i83.i = icmp eq i8 %252, 0, !dbg !1735
  br i1 %tobool.not.i83.i, label %for.body.i.i.if.end.i87.i_crit_edge, label %if.then.i85.i, !dbg !1735, !prof !735

for.body.i.i.if.end.i87.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1735
  br label %if.end.i87.i, !dbg !1735

if.then.i85.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1736
  %gcov_ctr23.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.89, i32 0, i32 1), align 8, !dbg !1736
  %253 = add i64 %gcov_ctr23.i.i, 1, !dbg !1736
  store i64 %253, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.89, i32 0, i32 1), align 8, !dbg !1736
  %shl.i.i = shl i32 %maxlen.addr.02.i.i, 16, !dbg !1736
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %dyndata.03.i.i to i32, !dbg !1736
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i, !dbg !1736
  %and.i84.i = and i32 %sub.ptr.sub.i.i, 65535, !dbg !1736
  %or.i.i = or i32 %and.i84.i, %shl.i.i, !dbg !1736
  %254 = ptrtoint ptr %add.ptr3.i.i to i32, !dbg !1737
  call void @__asan_store4_noabort(i32 %254), !dbg !1737
  store i32 %or.i.i, ptr %add.ptr3.i.i, align 4, !dbg !1737
  br label %if.end.i87.i, !dbg !1738

if.end.i87.i:                                     ; preds = %if.then.i85.i, %for.body.i.i.if.end.i87.i_crit_edge
  %255 = ptrtoint ptr %add.ptr2.i.i to i32, !dbg !1739
  call void @__asan_load4_noabort(i32 %255), !dbg !1739
  %256 = load ptr, ptr %add.ptr2.i.i, align 4, !dbg !1739
  %call.i86.i = call i32 @process_fetch_insn(ptr noundef %256, ptr noundef %rec, ptr noundef %add.ptr3.i.i, ptr noundef %call55.i) #17, !dbg !1740
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86.i), !dbg !1741
  %cmp6.i.i = icmp slt i32 %call.i86.i, 0, !dbg !1741
  br i1 %cmp6.i.i, label %land.rhs.i.i, label %if.end.i87.i.if.else.i.i_crit_edge, !dbg !1741

if.end.i87.i.if.else.i.i_crit_edge:               ; preds = %if.end.i87.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1741
  br label %if.else.i.i, !dbg !1741

land.rhs.i.i:                                     ; preds = %if.end.i87.i
  %gcov_ctr24.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.89, i32 0, i32 2), align 16, !dbg !1741
  %257 = add i64 %gcov_ctr24.i.i, 1, !dbg !1741
  store i64 %257, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.89, i32 0, i32 2), align 16, !dbg !1741
  %258 = ptrtoint ptr %dynamic.i.i to i32, !dbg !1741
  call void @__asan_load1_noabort(i32 %258), !dbg !1741
  %259 = load i8, ptr %dynamic.i.i, align 4, !dbg !1741, !range !1436
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259), !dbg !1741
  %tobool8.not.i.i = icmp eq i8 %259, 0, !dbg !1741
  br i1 %tobool8.not.i.i, label %land.rhs.i.i.if.else.i.i_crit_edge, label %if.then15.i.i, !dbg !1741, !prof !735

land.rhs.i.i.if.else.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1741
  br label %if.else.i.i, !dbg !1741

if.then15.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1742
  %gcov_ctr25.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.89, i32 0, i32 3), align 8, !dbg !1742
  %260 = add i64 %gcov_ctr25.i.i, 1, !dbg !1742
  store i64 %260, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.89, i32 0, i32 3), align 8, !dbg !1742
  %sub.ptr.lhs.cast16.i.i = ptrtoint ptr %dyndata.03.i.i to i32, !dbg !1742
  %sub.ptr.sub18.i.i = sub i32 %sub.ptr.lhs.cast16.i.i, %sub.ptr.rhs.cast.i.i, !dbg !1742
  %and19.i.i = and i32 %sub.ptr.sub18.i.i, 65535, !dbg !1742
  %261 = ptrtoint ptr %add.ptr3.i.i to i32, !dbg !1743
  call void @__asan_store4_noabort(i32 %261), !dbg !1743
  store i32 %and19.i.i, ptr %add.ptr3.i.i, align 4, !dbg !1743
  br label %for.inc.i.i, !dbg !1744

if.else.i.i:                                      ; preds = %land.rhs.i.i.if.else.i.i_crit_edge, %if.end.i87.i.if.else.i.i_crit_edge
  %gcov_ctr26.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.89, i32 0, i32 4), align 16, !dbg !1745
  %262 = add i64 %gcov_ctr26.i.i, 1, !dbg !1745
  store i64 %262, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.89, i32 0, i32 4), align 16, !dbg !1745
  %add.ptr21.i.i = getelementptr i8, ptr %dyndata.03.i.i, i32 %call.i86.i, !dbg !1746
  %sub.i.i = sub i32 %maxlen.addr.02.i.i, %call.i86.i, !dbg !1747
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.then15.i.i
  %maxlen.addr.1.i.i = phi i32 [ %maxlen.addr.02.i.i, %if.then15.i.i ], [ %sub.i.i, %if.else.i.i ]
  %dyndata.1.i.i = phi ptr [ %dyndata.03.i.i, %if.then15.i.i ], [ %add.ptr21.i.i, %if.else.i.i ], !dbg !1748
  %inc.i.i = add nuw i32 %i.04.i.i, 1, !dbg !1749
  %263 = ptrtoint ptr %nr_args.i.i to i32, !dbg !1725
  call void @__asan_load4_noabort(i32 %263), !dbg !1725
  %264 = load i32, ptr %nr_args.i.i, align 4, !dbg !1725
  %cmp.i.i = icmp ult i32 %inc.i.i, %264, !dbg !1728
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.store_trace_args.exit.i_crit_edge, !dbg !1729, !llvm.loop !1750

for.inc.i.i.store_trace_args.exit.i_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1729
  br label %store_trace_args.exit.i, !dbg !1729

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1729
  br label %for.body.i.i, !dbg !1729

store_trace_args.exit.i:                          ; preds = %for.inc.i.i.store_trace_args.exit.i_crit_edge, %if.end54.i.store_trace_args.exit.i_crit_edge
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer.i) #17, !dbg !1752
  br label %__eprobe_trace_func.exit, !dbg !1753

__eprobe_trace_func.exit:                         ; preds = %store_trace_args.exit.i, %if.then53.i, %if.then42.i, %if.then38.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer.i) #17, !dbg !1753
  ret void, !dbg !1754
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @eprobe_trigger_init(ptr nocapture noundef readnone %ops, ptr nocapture noundef readnone %data) #3 align 64 !dbg !1755 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1756
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.83, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.83, align 8
  ret i32 0, !dbg !1757
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @eprobe_trigger_free(ptr nocapture noundef readnone %ops, ptr nocapture noundef readnone %data) #3 align 64 !dbg !1758 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1759
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.84, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.84, align 8
  ret void, !dbg !1760
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @eprobe_trigger_print(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %ops, ptr nocapture noundef readnone %data) #3 align 64 !dbg !1761 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1762
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.85, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.85, align 8
  ret i32 0, !dbg !1763
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_event_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @eprobe_trigger_cmd_parse(ptr nocapture noundef readnone %cmd_ops, ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %glob, ptr nocapture noundef readnone %cmd, ptr nocapture noundef readnone %param) #3 align 64 !dbg !1764 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1765
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.90, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.90, align 8
  ret i32 -1, !dbg !1766
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @eprobe_trigger_reg_func(ptr nocapture noundef readnone %glob, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %file) #3 align 64 !dbg !1767 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1768
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.91, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.91, align 8
  ret i32 -1, !dbg !1769
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @eprobe_trigger_unreg_func(ptr nocapture noundef readnone %glob, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %file) #3 align 64 !dbg !1770 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1771
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.92, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.92, align 8
  ret void, !dbg !1772
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @eprobe_trigger_get_ops(ptr nocapture noundef readnone %cmd, ptr nocapture noundef readnone %param) #3 align 64 !dbg !1773 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1774
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.93, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.93, align 8
  ret ptr @eprobe_trigger_ops, !dbg !1775
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_probe_get_file_link(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_probe_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_probe_unlink(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_remove_event_call(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_probe_match_command_args(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #12 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 1923271580) #17
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
  %exitcond.not = icmp eq i32 %5, 98
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.15, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.16, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @__llvm_gcov_ctr.17, i8 0, i64 160, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.18, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.19, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.20, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.21, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.22, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.23, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.24, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.25, i8 0, i64 40, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.26, align 8
  store i64 0, ptr @__llvm_gcov_ctr.27, align 8
  store i64 0, ptr @__llvm_gcov_ctr.28, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.29, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.30, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.31, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @__llvm_gcov_ctr.32, i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) @__llvm_gcov_ctr.33, i8 0, i64 176, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.34, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.35, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.36, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.37, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.38, align 8
  store i64 0, ptr @__llvm_gcov_ctr.39, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.40, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.41, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.42, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.43, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.44, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.45, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.46, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.47, align 8
  store i64 0, ptr @__llvm_gcov_ctr.48, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.49, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.50, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.51, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.52, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.53, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @__llvm_gcov_ctr.54, i8 0, i64 216, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.55, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.56, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.57, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.58, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.59, align 8
  store i64 0, ptr @__llvm_gcov_ctr.60, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.61, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.62, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.63, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.64, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.65, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.66, align 8
  store i64 0, ptr @__llvm_gcov_ctr.67, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.68, i8 0, i64 64, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.69, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.70, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) @__llvm_gcov_ctr.71, i8 0, i64 104, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) @__llvm_gcov_ctr.72, i8 0, i64 88, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.73, align 8
  store i64 0, ptr @__llvm_gcov_ctr.74, align 8
  store i64 0, ptr @__llvm_gcov_ctr.75, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.76, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.77, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.78, align 8
  store i64 0, ptr @__llvm_gcov_ctr.79, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.80, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.81, align 8
  store i64 0, ptr @__llvm_gcov_ctr.82, align 8
  store i64 0, ptr @__llvm_gcov_ctr.83, align 8
  store i64 0, ptr @__llvm_gcov_ctr.84, align 8
  store i64 0, ptr @__llvm_gcov_ctr.85, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.86, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.87, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.88, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.89, i8 0, i64 40, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.90, align 8
  store i64 0, ptr @__llvm_gcov_ctr.91, align 8
  store i64 0, ptr @__llvm_gcov_ctr.92, align 8
  store i64 0, ptr @__llvm_gcov_ctr.93, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.94, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.95, align 8
  store i64 0, ptr @__llvm_gcov_ctr.96, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.97, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.98, align 8
  store i64 0, ptr @__llvm_gcov_ctr.99, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.100, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.101, align 8
  store i64 0, ptr @__llvm_gcov_ctr.102, align 8
  store i64 0, ptr @__llvm_gcov_ctr.103, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.104, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.105, align 8
  store i64 0, ptr @__llvm_gcov_ctr.106, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.107, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.108, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.109, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.110, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.111, align 8
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

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { noinline nounwind uwtable(sync) }
attributes #13 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #14 = { argmemonly nofree nounwind willreturn writeonly }
attributes #15 = { nounwind uwtable(sync) }
attributes #16 = { nomerge }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { nounwind allocsize(2) }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.gcov = !{!64}
!llvm.ident = !{!65}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_eprobe.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @_kbl_addr_process_fetch_insn, !3, !"_kbl_addr_process_fetch_insn", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_eprobe.c", i32 374, i32 1}
!4 = !{ptr @__initcall__kmod_trace_eprobe__271_951_trace_events_eprobe_init_early1, !5, !"__initcall__kmod_trace_eprobe__271_951_trace_events_eprobe_init_early1", i1 false, i1 false}
!5 = !{!"../kernel/trace/trace_eprobe.c", i32 951, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/trace/trace_eprobe.c", i32 947, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @trace_events_eprobe_init_early._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @trace_events_eprobe_init_early._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @eprobe_dyn_event_ops, !13, !"eprobe_dyn_event_ops", i1 false, i1 false}
!13 = !{!"../kernel/trace/trace_eprobe.c", i32 176, i32 36}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/trace/trace_eprobe.c", i32 855, i32 37}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/trace/trace_eprobe.c", i32 867, i32 23}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../kernel/trace/trace_eprobe.c", i32 900, i32 3}
!20 = !{ptr @eprobe_funcs, !21, !"eprobe_funcs", i1 false, i1 false}
!21 = !{!"../kernel/trace/trace_eprobe.c", i32 646, i32 37}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../kernel/trace/trace_eprobe.c", i32 277, i32 6}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/trace/trace_eprobe.c", i32 283, i32 22}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/trace/trace_eprobe.c", i32 288, i32 23}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/trace/trace_eprobe.c", i32 291, i32 23}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/trace/trace_probe_tmpl.h", i32 226, i32 23}
!32 = !{ptr @eprobe_fields_array, !33, !"eprobe_fields_array", i1 false, i1 false}
!33 = !{!"../kernel/trace/trace_eprobe.c", i32 255, i32 34}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../kernel/trace/trace_eprobe.c", i32 249, i32 6}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../kernel/trace/trace_eprobe.c", i32 694, i32 6}
!38 = !{ptr @eprobe_trigger_ops, !39, !"eprobe_trigger_ops", i1 false, i1 false}
!39 = !{!"../kernel/trace/trace_eprobe.c", i32 543, i32 33}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../kernel/trace/trace_eprobe.c", i32 488, i32 6}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/trace/trace_eprobe.c", i32 578, i32 12}
!44 = !{ptr @event_trigger_cmd, !45, !"event_trigger_cmd", i1 false, i1 false}
!45 = !{!"../kernel/trace/trace_eprobe.c", i32 577, i32 29}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../kernel/trace/trace_eprobe.c", i32 737, i32 6}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../kernel/trace/trace_dynevent.h", i32 82, i32 2}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../kernel/trace/trace_eprobe.c", i32 69, i32 16}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../kernel/trace/trace_eprobe.c", i32 71, i32 16}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../kernel/trace/trace_eprobe.c", i32 74, i32 17}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_eprobe.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_eprobe.gcda", !0}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = distinct !DISubprogram(name: "process_fetch_insn", scope: !1, file: !1, line: 366, type: !67, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!67 = !DISubroutineType(types: !68)
!68 = !{}
!69 = !DILocation(line: 368, scope: !66)
!70 = !DILocation(line: 371, column: 8, scope: !66)
!71 = !DILocation(line: 372, column: 40, scope: !66)
!72 = !DILocation(line: 78, column: 2, scope: !73, inlinedAt: !75)
!73 = distinct !DISubprogram(name: "process_fetch_insn_bottom", scope: !74, file: !74, line: 72, type: !67, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!74 = !DIFile(filename: "../kernel/trace/trace_probe_tmpl.h", directory: "/llk/linux-5.17/build_arm_allyes")
!75 = distinct !DILocation(line: 372, column: 9, scope: !66)
!76 = !DILocation(line: 0, scope: !73, inlinedAt: !75)
!77 = !DILocation(line: 77, column: 6, scope: !73, inlinedAt: !75)
!78 = !DILocation(line: 78, column: 16, scope: !73, inlinedAt: !75)
!79 = !DILocation(line: 82, column: 2, scope: !73, inlinedAt: !75)
!80 = !DILocation(line: 83, column: 13, scope: !73, inlinedAt: !75)
!81 = !DILocation(line: 83, column: 7, scope: !73, inlinedAt: !75)
!82 = !DILocation(line: 84, column: 11, scope: !73, inlinedAt: !75)
!83 = !DILocation(line: 85, column: 31, scope: !73, inlinedAt: !75)
!84 = !DILocation(line: 85, column: 51, scope: !73, inlinedAt: !75)
!85 = !DILocation(line: 85, column: 43, scope: !73, inlinedAt: !75)
!86 = !DILocation(line: 473, column: 25, scope: !87, inlinedAt: !88)
!87 = distinct !DISubprogram(name: "probe_mem_read", scope: !1, file: !1, line: 470, type: !67, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!88 = distinct !DILocation(line: 85, column: 10, scope: !73, inlinedAt: !75)
!89 = !DILocation(line: 473, column: 6, scope: !87, inlinedAt: !88)
!90 = !DILocation(line: 474, column: 30, scope: !87, inlinedAt: !88)
!91 = !DILocation(line: 466, column: 9, scope: !92, inlinedAt: !93)
!92 = distinct !DISubprogram(name: "probe_mem_read_user", scope: !1, file: !1, line: 462, type: !67, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!93 = distinct !DILocation(line: 474, column: 10, scope: !87, inlinedAt: !88)
!94 = !DILocation(line: 474, column: 3, scope: !87, inlinedAt: !88)
!95 = !DILocation(line: 476, column: 34, scope: !87, inlinedAt: !88)
!96 = !DILocation(line: 476, column: 9, scope: !87, inlinedAt: !88)
!97 = !DILocation(line: 476, column: 2, scope: !87, inlinedAt: !88)
!98 = !DILocation(line: 88, column: 11, scope: !73, inlinedAt: !75)
!99 = !DILocation(line: 90, column: 6, scope: !73, inlinedAt: !75)
!100 = !DILocation(line: 90, column: 26, scope: !73, inlinedAt: !75)
!101 = !DILocation(line: 90, column: 18, scope: !73, inlinedAt: !75)
!102 = !DILocation(line: 466, column: 9, scope: !92, inlinedAt: !103)
!103 = distinct !DILocation(line: 89, column: 10, scope: !73, inlinedAt: !75)
!104 = !DILocation(line: 92, column: 4, scope: !73, inlinedAt: !75)
!105 = !DILocation(line: 98, column: 2, scope: !73, inlinedAt: !75)
!106 = !DILocation(line: 93, column: 7, scope: !73, inlinedAt: !75)
!107 = !DILocation(line: 94, column: 11, scope: !73, inlinedAt: !75)
!108 = !DILocation(line: 94, column: 4, scope: !73, inlinedAt: !75)
!109 = !DILocation(line: 95, column: 7, scope: !73, inlinedAt: !75)
!110 = !DILocation(line: 96, column: 2, scope: !73, inlinedAt: !75)
!111 = distinct !{!111, !79, !112}
!112 = !DILocation(line: 96, column: 12, scope: !73, inlinedAt: !75)
!113 = !DILocation(line: 101, column: 6, scope: !73, inlinedAt: !75)
!114 = !{!"branch_weights", i32 1, i32 2000}
!115 = !DILocation(line: 102, column: 7, scope: !73, inlinedAt: !75)
!116 = !DILocation(line: 103, column: 29, scope: !73, inlinedAt: !75)
!117 = !DILocation(line: 103, column: 41, scope: !73, inlinedAt: !75)
!118 = !DILocation(line: 103, column: 33, scope: !73, inlinedAt: !75)
!119 = !DILocation(line: 390, column: 2, scope: !120, inlinedAt: !121)
!120 = distinct !DISubprogram(name: "fetch_store_strlen", scope: !1, file: !1, line: 387, type: !67, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!121 = distinct !DILocation(line: 103, column: 10, scope: !73, inlinedAt: !75)
!122 = !DILocation(line: 390, column: 5, scope: !120, inlinedAt: !121)
!123 = !{!"auto-init"}
!124 = !DILocation(line: 393, column: 11, scope: !120, inlinedAt: !121)
!125 = !DILocation(line: 393, column: 6, scope: !120, inlinedAt: !121)
!126 = !DILocation(line: 397, column: 2, scope: !120, inlinedAt: !121)
!127 = !DILocation(line: 394, column: 34, scope: !120, inlinedAt: !121)
!128 = !DILocation(line: 380, column: 30, scope: !129, inlinedAt: !130)
!129 = distinct !DISubprogram(name: "fetch_store_strlen_user", scope: !1, file: !1, line: 378, type: !67, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!130 = distinct !DILocation(line: 394, column: 10, scope: !120, inlinedAt: !121)
!131 = !DILocation(line: 382, column: 9, scope: !129, inlinedAt: !130)
!132 = !DILocation(line: 394, column: 3, scope: !120, inlinedAt: !121)
!133 = !DILocation(line: 0, scope: !120, inlinedAt: !121)
!134 = !DILocation(line: 398, column: 44, scope: !120, inlinedAt: !121)
!135 = !DILocation(line: 398, column: 49, scope: !120, inlinedAt: !121)
!136 = !DILocation(line: 398, column: 9, scope: !120, inlinedAt: !121)
!137 = !DILocation(line: 399, column: 6, scope: !120, inlinedAt: !121)
!138 = !DILocation(line: 400, column: 11, scope: !120, inlinedAt: !121)
!139 = !DILocation(line: 400, column: 13, scope: !120, inlinedAt: !121)
!140 = !DILocation(line: 400, column: 16, scope: !120, inlinedAt: !121)
!141 = !DILocation(line: 400, column: 20, scope: !120, inlinedAt: !121)
!142 = !DILocation(line: 400, column: 25, scope: !120, inlinedAt: !121)
!143 = !DILocation(line: 400, column: 28, scope: !120, inlinedAt: !121)
!144 = !DILocation(line: 400, column: 32, scope: !120, inlinedAt: !121)
!145 = !DILocation(line: 400, column: 2, scope: !120, inlinedAt: !121)
!146 = distinct !{!146, !126, !147}
!147 = !DILocation(line: 400, column: 49, scope: !120, inlinedAt: !121)
!148 = !DILocation(line: 402, column: 14, scope: !120, inlinedAt: !121)
!149 = !DILocation(line: 402, column: 9, scope: !120, inlinedAt: !121)
!150 = !DILocation(line: 402, column: 21, scope: !120, inlinedAt: !121)
!151 = !DILocation(line: 402, column: 27, scope: !120, inlinedAt: !121)
!152 = !DILocation(line: 403, column: 1, scope: !120, inlinedAt: !121)
!153 = !DILocation(line: 105, column: 4, scope: !73, inlinedAt: !75)
!154 = !DILocation(line: 107, column: 35, scope: !73, inlinedAt: !75)
!155 = !DILocation(line: 107, column: 47, scope: !73, inlinedAt: !75)
!156 = !DILocation(line: 107, column: 39, scope: !73, inlinedAt: !75)
!157 = !DILocation(line: 380, column: 30, scope: !129, inlinedAt: !158)
!158 = distinct !DILocation(line: 107, column: 11, scope: !73, inlinedAt: !75)
!159 = !DILocation(line: 382, column: 9, scope: !129, inlinedAt: !158)
!160 = !DILocation(line: 107, column: 8, scope: !73, inlinedAt: !75)
!161 = !DILocation(line: 109, column: 4, scope: !73, inlinedAt: !75)
!162 = !DILocation(line: 111, column: 4, scope: !73, inlinedAt: !75)
!163 = !DILocation(line: 114, column: 2, scope: !73, inlinedAt: !75)
!164 = !DILocation(line: 116, column: 19, scope: !73, inlinedAt: !75)
!165 = !DILocation(line: 9, column: 16, scope: !166, inlinedAt: !167)
!166 = distinct !DISubprogram(name: "fetch_store_raw", scope: !74, file: !74, line: 7, type: !67, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!167 = distinct !DILocation(line: 116, column: 3, scope: !73, inlinedAt: !75)
!168 = !DILocation(line: 9, column: 2, scope: !166, inlinedAt: !167)
!169 = !DILocation(line: 11, column: 20, scope: !166, inlinedAt: !167)
!170 = !DILocation(line: 11, column: 16, scope: !166, inlinedAt: !167)
!171 = !DILocation(line: 11, column: 14, scope: !166, inlinedAt: !167)
!172 = !DILocation(line: 12, column: 3, scope: !166, inlinedAt: !167)
!173 = !DILocation(line: 14, column: 22, scope: !166, inlinedAt: !167)
!174 = !DILocation(line: 14, column: 17, scope: !166, inlinedAt: !167)
!175 = !DILocation(line: 14, column: 15, scope: !166, inlinedAt: !167)
!176 = !DILocation(line: 15, column: 3, scope: !166, inlinedAt: !167)
!177 = !DILocation(line: 17, column: 22, scope: !166, inlinedAt: !167)
!178 = !DILocation(line: 17, column: 15, scope: !166, inlinedAt: !167)
!179 = !DILocation(line: 18, column: 3, scope: !166, inlinedAt: !167)
!180 = !DILocation(line: 21, column: 22, scope: !166, inlinedAt: !167)
!181 = !DILocation(line: 21, column: 17, scope: !166, inlinedAt: !167)
!182 = !DILocation(line: 21, column: 15, scope: !166, inlinedAt: !167)
!183 = !DILocation(line: 22, column: 3, scope: !166, inlinedAt: !167)
!184 = !DILocation(line: 24, column: 27, scope: !166, inlinedAt: !167)
!185 = !DILocation(line: 24, column: 25, scope: !166, inlinedAt: !167)
!186 = !DILocation(line: 25, column: 2, scope: !166, inlinedAt: !167)
!187 = !DILocation(line: 119, column: 18, scope: !73, inlinedAt: !75)
!188 = !DILocation(line: 119, column: 32, scope: !73, inlinedAt: !75)
!189 = !DILocation(line: 119, column: 24, scope: !73, inlinedAt: !75)
!190 = !DILocation(line: 119, column: 44, scope: !73, inlinedAt: !75)
!191 = !DILocation(line: 119, column: 36, scope: !73, inlinedAt: !75)
!192 = !DILocation(line: 119, column: 58, scope: !73, inlinedAt: !75)
!193 = !DILocation(line: 473, column: 25, scope: !87, inlinedAt: !194)
!194 = distinct !DILocation(line: 119, column: 3, scope: !73, inlinedAt: !75)
!195 = !DILocation(line: 473, column: 6, scope: !87, inlinedAt: !194)
!196 = !DILocation(line: 474, column: 30, scope: !87, inlinedAt: !194)
!197 = !DILocation(line: 466, column: 9, scope: !92, inlinedAt: !198)
!198 = distinct !DILocation(line: 474, column: 10, scope: !87, inlinedAt: !194)
!199 = !DILocation(line: 474, column: 3, scope: !87, inlinedAt: !194)
!200 = !DILocation(line: 476, column: 34, scope: !87, inlinedAt: !194)
!201 = !DILocation(line: 476, column: 9, scope: !87, inlinedAt: !194)
!202 = !DILocation(line: 476, column: 2, scope: !87, inlinedAt: !194)
!203 = !DILocation(line: 122, column: 23, scope: !73, inlinedAt: !75)
!204 = !DILocation(line: 122, column: 37, scope: !73, inlinedAt: !75)
!205 = !DILocation(line: 122, column: 29, scope: !73, inlinedAt: !75)
!206 = !DILocation(line: 122, column: 49, scope: !73, inlinedAt: !75)
!207 = !DILocation(line: 122, column: 41, scope: !73, inlinedAt: !75)
!208 = !DILocation(line: 122, column: 63, scope: !73, inlinedAt: !75)
!209 = !DILocation(line: 466, column: 9, scope: !92, inlinedAt: !210)
!210 = distinct !DILocation(line: 122, column: 3, scope: !73, inlinedAt: !75)
!211 = !DILocation(line: 123, column: 3, scope: !73, inlinedAt: !75)
!212 = !DILocation(line: 125, column: 17, scope: !73, inlinedAt: !75)
!213 = !DILocation(line: 125, column: 9, scope: !73, inlinedAt: !75)
!214 = !DILocation(line: 126, column: 28, scope: !73, inlinedAt: !75)
!215 = !DILocation(line: 126, column: 40, scope: !73, inlinedAt: !75)
!216 = !DILocation(line: 126, column: 32, scope: !73, inlinedAt: !75)
!217 = !DILocation(line: 436, column: 15, scope: !218, inlinedAt: !219)
!218 = distinct !DISubprogram(name: "fetch_store_string", scope: !1, file: !1, line: 434, type: !67, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!219 = distinct !DILocation(line: 126, column: 9, scope: !73, inlinedAt: !75)
!220 = !DILocation(line: 441, column: 26, scope: !218, inlinedAt: !219)
!221 = !DILocation(line: 441, column: 6, scope: !218, inlinedAt: !219)
!222 = !DILocation(line: 442, column: 34, scope: !218, inlinedAt: !219)
!223 = !DILocation(line: 413, column: 15, scope: !224, inlinedAt: !225)
!224 = distinct !DISubprogram(name: "fetch_store_string_user", scope: !1, file: !1, line: 410, type: !67, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!225 = distinct !DILocation(line: 442, column: 10, scope: !218, inlinedAt: !219)
!226 = !DILocation(line: 417, column: 6, scope: !224, inlinedAt: !225)
!227 = !DILocation(line: 418, column: 3, scope: !224, inlinedAt: !225)
!228 = !DILocation(line: 412, column: 30, scope: !224, inlinedAt: !225)
!229 = !DILocation(line: 420, column: 24, scope: !224, inlinedAt: !225)
!230 = !DILocation(line: 66, column: 21, scope: !231, inlinedAt: !233)
!231 = distinct !DISubprogram(name: "get_loc_data", scope: !232, file: !232, line: 64, type: !67, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!232 = !DIFile(filename: "../kernel/trace/trace_probe.h", directory: "/llk/linux-5.17/build_arm_allyes")
!233 = distinct !DILocation(line: 420, column: 11, scope: !224, inlinedAt: !225)
!234 = !DILocation(line: 66, column: 19, scope: !231, inlinedAt: !233)
!235 = !DILocation(line: 422, column: 8, scope: !224, inlinedAt: !225)
!236 = !DILocation(line: 423, column: 10, scope: !224, inlinedAt: !225)
!237 = !DILocation(line: 423, column: 6, scope: !224, inlinedAt: !225)
!238 = !DILocation(line: 424, column: 18, scope: !224, inlinedAt: !225)
!239 = !DILocation(line: 424, column: 16, scope: !224, inlinedAt: !225)
!240 = !DILocation(line: 424, column: 3, scope: !224, inlinedAt: !225)
!241 = !DILocation(line: 445, column: 6, scope: !218, inlinedAt: !219)
!242 = !DILocation(line: 446, column: 3, scope: !218, inlinedAt: !219)
!243 = !DILocation(line: 448, column: 24, scope: !218, inlinedAt: !219)
!244 = !DILocation(line: 66, column: 21, scope: !231, inlinedAt: !245)
!245 = distinct !DILocation(line: 448, column: 11, scope: !218, inlinedAt: !219)
!246 = !DILocation(line: 66, column: 19, scope: !231, inlinedAt: !245)
!247 = !DILocation(line: 454, column: 44, scope: !218, inlinedAt: !219)
!248 = !DILocation(line: 454, column: 8, scope: !218, inlinedAt: !219)
!249 = !DILocation(line: 455, column: 10, scope: !218, inlinedAt: !219)
!250 = !DILocation(line: 455, column: 6, scope: !218, inlinedAt: !219)
!251 = !DILocation(line: 456, column: 18, scope: !218, inlinedAt: !219)
!252 = !DILocation(line: 456, column: 16, scope: !218, inlinedAt: !219)
!253 = !DILocation(line: 456, column: 3, scope: !218, inlinedAt: !219)
!254 = !DILocation(line: 129, column: 17, scope: !73, inlinedAt: !75)
!255 = !DILocation(line: 129, column: 9, scope: !73, inlinedAt: !75)
!256 = !DILocation(line: 417, column: 6, scope: !224, inlinedAt: !257)
!257 = distinct !DILocation(line: 130, column: 9, scope: !73, inlinedAt: !75)
!258 = !DILocation(line: 418, column: 3, scope: !224, inlinedAt: !257)
!259 = !DILocation(line: 130, column: 33, scope: !73, inlinedAt: !75)
!260 = !DILocation(line: 130, column: 45, scope: !73, inlinedAt: !75)
!261 = !DILocation(line: 130, column: 37, scope: !73, inlinedAt: !75)
!262 = !DILocation(line: 413, column: 15, scope: !224, inlinedAt: !257)
!263 = !DILocation(line: 412, column: 30, scope: !224, inlinedAt: !257)
!264 = !DILocation(line: 420, column: 24, scope: !224, inlinedAt: !257)
!265 = !DILocation(line: 66, column: 21, scope: !231, inlinedAt: !266)
!266 = distinct !DILocation(line: 420, column: 11, scope: !224, inlinedAt: !257)
!267 = !DILocation(line: 66, column: 19, scope: !231, inlinedAt: !266)
!268 = !DILocation(line: 422, column: 8, scope: !224, inlinedAt: !257)
!269 = !DILocation(line: 423, column: 10, scope: !224, inlinedAt: !257)
!270 = !DILocation(line: 423, column: 6, scope: !224, inlinedAt: !257)
!271 = !DILocation(line: 424, column: 18, scope: !224, inlinedAt: !257)
!272 = !DILocation(line: 424, column: 16, scope: !224, inlinedAt: !257)
!273 = !DILocation(line: 424, column: 3, scope: !224, inlinedAt: !257)
!274 = !DILocation(line: 133, column: 3, scope: !73, inlinedAt: !75)
!275 = !DILocation(line: 138, column: 12, scope: !73, inlinedAt: !75)
!276 = !DILocation(line: 138, column: 15, scope: !73, inlinedAt: !75)
!277 = !DILocation(line: 138, column: 6, scope: !73, inlinedAt: !75)
!278 = !DILocation(line: 139, column: 24, scope: !73, inlinedAt: !75)
!279 = !DILocation(line: 31, column: 16, scope: !280, inlinedAt: !281)
!280 = distinct !DISubprogram(name: "fetch_apply_bitfield", scope: !74, file: !74, line: 29, type: !67, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!281 = distinct !DILocation(line: 139, column: 3, scope: !73, inlinedAt: !75)
!282 = !DILocation(line: 31, column: 2, scope: !280, inlinedAt: !281)
!283 = !DILocation(line: 33, column: 18, scope: !280, inlinedAt: !281)
!284 = !DILocation(line: 33, column: 24, scope: !280, inlinedAt: !281)
!285 = !DILocation(line: 33, column: 14, scope: !280, inlinedAt: !281)
!286 = !DILocation(line: 34, column: 24, scope: !280, inlinedAt: !281)
!287 = !DILocation(line: 34, column: 18, scope: !280, inlinedAt: !281)
!288 = !DILocation(line: 34, column: 14, scope: !280, inlinedAt: !281)
!289 = !DILocation(line: 35, column: 3, scope: !280, inlinedAt: !281)
!290 = !DILocation(line: 37, column: 19, scope: !280, inlinedAt: !281)
!291 = !DILocation(line: 37, column: 25, scope: !280, inlinedAt: !281)
!292 = !DILocation(line: 37, column: 15, scope: !280, inlinedAt: !281)
!293 = !DILocation(line: 38, column: 25, scope: !280, inlinedAt: !281)
!294 = !DILocation(line: 38, column: 19, scope: !280, inlinedAt: !281)
!295 = !DILocation(line: 38, column: 15, scope: !280, inlinedAt: !281)
!296 = !DILocation(line: 39, column: 3, scope: !280, inlinedAt: !281)
!297 = !DILocation(line: 41, column: 19, scope: !280, inlinedAt: !281)
!298 = !DILocation(line: 41, column: 25, scope: !280, inlinedAt: !281)
!299 = !DILocation(line: 41, column: 15, scope: !280, inlinedAt: !281)
!300 = !DILocation(line: 42, column: 25, scope: !280, inlinedAt: !281)
!301 = !DILocation(line: 42, column: 19, scope: !280, inlinedAt: !281)
!302 = !DILocation(line: 42, column: 15, scope: !280, inlinedAt: !281)
!303 = !DILocation(line: 43, column: 3, scope: !280, inlinedAt: !281)
!304 = !DILocation(line: 45, column: 19, scope: !280, inlinedAt: !281)
!305 = !DILocation(line: 45, column: 25, scope: !280, inlinedAt: !281)
!306 = !DILocation(line: 45, column: 15, scope: !280, inlinedAt: !281)
!307 = !DILocation(line: 46, column: 25, scope: !280, inlinedAt: !281)
!308 = !DILocation(line: 46, column: 15, scope: !280, inlinedAt: !281)
!309 = !DILocation(line: 47, column: 3, scope: !280, inlinedAt: !281)
!310 = !DILocation(line: 145, column: 12, scope: !73, inlinedAt: !75)
!311 = !DILocation(line: 145, column: 15, scope: !73, inlinedAt: !75)
!312 = !DILocation(line: 145, column: 6, scope: !73, inlinedAt: !75)
!313 = !DILocation(line: 146, column: 9, scope: !73, inlinedAt: !75)
!314 = !DILocation(line: 147, column: 7, scope: !73, inlinedAt: !75)
!315 = !DILocation(line: 147, column: 19, scope: !73, inlinedAt: !75)
!316 = !DILocation(line: 147, column: 11, scope: !73, inlinedAt: !75)
!317 = !DILocation(line: 149, column: 12, scope: !73, inlinedAt: !75)
!318 = !DILocation(line: 149, column: 15, scope: !73, inlinedAt: !75)
!319 = !DILocation(line: 149, column: 37, scope: !73, inlinedAt: !75)
!320 = !DILocation(line: 150, column: 8, scope: !73, inlinedAt: !75)
!321 = !DILocation(line: 150, column: 12, scope: !73, inlinedAt: !75)
!322 = !DILocation(line: 150, column: 15, scope: !73, inlinedAt: !75)
!323 = !DILocation(line: 149, column: 8, scope: !73, inlinedAt: !75)
!324 = !DILocation(line: 151, column: 17, scope: !73, inlinedAt: !75)
!325 = !DILocation(line: 151, column: 10, scope: !73, inlinedAt: !75)
!326 = !DILocation(line: 152, column: 9, scope: !73, inlinedAt: !75)
!327 = !DILocation(line: 153, column: 5, scope: !73, inlinedAt: !75)
!328 = !DILocation(line: 155, column: 8, scope: !73, inlinedAt: !75)
!329 = !DILocation(line: 156, column: 15, scope: !73, inlinedAt: !75)
!330 = !DILocation(line: 156, column: 8, scope: !73, inlinedAt: !75)
!331 = !DILocation(line: 157, column: 8, scope: !73, inlinedAt: !75)
!332 = !DILocation(line: 158, column: 10, scope: !73, inlinedAt: !75)
!333 = !DILocation(line: 74, column: 9, scope: !334, inlinedAt: !335)
!334 = distinct !DISubprogram(name: "update_data_loc", scope: !232, file: !232, line: 69, type: !67, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!335 = distinct !DILocation(line: 159, column: 20, scope: !73, inlinedAt: !75)
!336 = !DILocation(line: 159, column: 18, scope: !73, inlinedAt: !75)
!337 = !DILocation(line: 160, column: 4, scope: !73, inlinedAt: !75)
!338 = !DILocation(line: 161, column: 4, scope: !73, inlinedAt: !75)
!339 = !DILocation(line: 163, column: 7, scope: !73, inlinedAt: !75)
!340 = !DILocation(line: 165, column: 2, scope: !73, inlinedAt: !75)
!341 = !DILocation(line: 167, column: 15, scope: !73, inlinedAt: !75)
!342 = !DILocation(line: 167, column: 18, scope: !73, inlinedAt: !75)
!343 = !DILocation(line: 167, column: 9, scope: !73, inlinedAt: !75)
!344 = !DILocation(line: 167, column: 36, scope: !73, inlinedAt: !75)
!345 = !DILocation(line: 168, column: 1, scope: !73, inlinedAt: !75)
!346 = !DILocation(line: 372, column: 2, scope: !66)
!347 = distinct !DISubprogram(name: "trace_events_eprobe_init_early", scope: !1, file: !1, line: 941, type: !67, scopeLine: 942, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!348 = !DILocation(line: 942, scope: !347)
!349 = !DILocation(line: 945, column: 8, scope: !347)
!350 = !DILocation(line: 946, column: 6, scope: !347)
!351 = !DILocation(line: 947, column: 3, scope: !347)
!352 = !DILocation(line: 949, column: 2, scope: !347)
!353 = distinct !DISubprogram(name: "get_event_field", scope: !1, file: !1, line: 305, type: !67, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!354 = !DILocation(line: 306, scope: !353)
!355 = !DILocation(line: 307, column: 43, scope: !353)
!356 = !DILocation(line: 311, column: 22, scope: !353)
!357 = !DILocation(line: 311, column: 13, scope: !353)
!358 = !DILocation(line: 313, column: 17, scope: !353)
!359 = !DILocation(line: 313, column: 2, scope: !353)
!360 = !DILocation(line: 315, column: 14, scope: !353)
!361 = !DILocation(line: 315, column: 7, scope: !353)
!362 = !DILocation(line: 316, column: 19, scope: !353)
!363 = !DILocation(line: 316, column: 10, scope: !353)
!364 = !DILocation(line: 316, column: 4, scope: !353)
!365 = !DILocation(line: 318, column: 28, scope: !353)
!366 = !DILocation(line: 318, column: 10, scope: !353)
!367 = !DILocation(line: 321, column: 14, scope: !353)
!368 = !DILocation(line: 321, column: 7, scope: !353)
!369 = !DILocation(line: 322, column: 20, scope: !353)
!370 = !DILocation(line: 322, column: 10, scope: !353)
!371 = !DILocation(line: 322, column: 4, scope: !353)
!372 = !DILocation(line: 324, column: 29, scope: !353)
!373 = !DILocation(line: 324, column: 10, scope: !353)
!374 = !DILocation(line: 327, column: 14, scope: !353)
!375 = !DILocation(line: 327, column: 7, scope: !353)
!376 = !DILocation(line: 328, column: 18, scope: !353)
!377 = !DILocation(line: 328, column: 10, scope: !353)
!378 = !DILocation(line: 328, column: 4, scope: !353)
!379 = !DILocation(line: 330, column: 27, scope: !353)
!380 = !DILocation(line: 330, column: 10, scope: !353)
!381 = !DILocation(line: 333, column: 14, scope: !353)
!382 = !DILocation(line: 333, column: 7, scope: !353)
!383 = !DILocation(line: 334, column: 19, scope: !353)
!384 = !DILocation(line: 334, column: 10, scope: !353)
!385 = !DILocation(line: 334, column: 4, scope: !353)
!386 = !DILocation(line: 336, column: 28, scope: !353)
!387 = !DILocation(line: 336, column: 10, scope: !353)
!388 = !DILocation(line: 0, scope: !353)
!389 = !DILocation(line: 339, column: 2, scope: !353)
!390 = distinct !DISubprogram(name: "eprobe_dyn_event_create", scope: !1, file: !1, line: 59, type: !67, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!391 = !DILocation(line: 60, scope: !390)
!392 = !DILocation(line: 61, column: 9, scope: !390)
!393 = !DILocation(line: 61, column: 2, scope: !390)
!394 = distinct !DISubprogram(name: "eprobe_dyn_event_show", scope: !1, file: !1, line: 64, type: !67, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!395 = !DILocation(line: 65, scope: !394)
!396 = !DILocation(line: 56, column: 9, scope: !397, inlinedAt: !398)
!397 = distinct !DISubprogram(name: "to_trace_eprobe", scope: !1, file: !1, line: 54, type: !67, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!398 = distinct !DILocation(line: 66, column: 28, scope: !394)
!399 = !DILocation(line: 285, column: 13, scope: !400, inlinedAt: !401)
!400 = distinct !DISubprogram(name: "trace_probe_group_name", scope: !232, file: !232, line: 283, type: !67, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!401 = distinct !DILocation(line: 69, column: 27, scope: !394)
!402 = !DILocation(line: 285, column: 25, scope: !400, inlinedAt: !401)
!403 = !DILocation(line: 285, column: 32, scope: !400, inlinedAt: !401)
!404 = !DILocation(line: 280, column: 31, scope: !405, inlinedAt: !406)
!405 = distinct !DISubprogram(name: "trace_probe_name", scope: !232, file: !232, line: 278, type: !67, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!406 = distinct !DILocation(line: 70, column: 5, scope: !394)
!407 = !DILocation(line: 443, column: 12, scope: !408, inlinedAt: !410)
!408 = distinct !DISubprogram(name: "trace_event_name", scope: !409, file: !409, line: 441, type: !67, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!409 = !DIFile(filename: "../include/linux/trace_events.h", directory: "/llk/linux-5.17/build_arm_allyes")
!410 = distinct !DILocation(line: 280, column: 9, scope: !405, inlinedAt: !406)
!411 = !DILocation(line: 443, column: 18, scope: !408, inlinedAt: !410)
!412 = !DILocation(line: 443, column: 6, scope: !408, inlinedAt: !410)
!413 = !DILocation(line: 444, column: 16, scope: !408, inlinedAt: !410)
!414 = !DILocation(line: 444, column: 10, scope: !408, inlinedAt: !410)
!415 = !DILocation(line: 444, column: 21, scope: !408, inlinedAt: !410)
!416 = !DILocation(line: 444, column: 31, scope: !408, inlinedAt: !410)
!417 = !DILocation(line: 446, column: 10, scope: !408, inlinedAt: !410)
!418 = !DILocation(line: 446, column: 16, scope: !408, inlinedAt: !410)
!419 = !DILocation(line: 446, column: 3, scope: !408, inlinedAt: !410)
!420 = !DILocation(line: 0, scope: !408, inlinedAt: !410)
!421 = !DILocation(line: 69, column: 2, scope: !394)
!422 = !DILocation(line: 71, column: 30, scope: !394)
!423 = !DILocation(line: 71, column: 48, scope: !394)
!424 = !DILocation(line: 71, column: 2, scope: !394)
!425 = !DILocation(line: 73, column: 25, scope: !394)
!426 = !DILocation(line: 73, column: 16, scope: !394)
!427 = !DILocation(line: 73, column: 2, scope: !394)
!428 = !DILocation(line: 74, column: 27, scope: !394)
!429 = !DILocation(line: 74, column: 42, scope: !394)
!430 = !DILocation(line: 74, column: 63, scope: !394)
!431 = !DILocation(line: 74, column: 3, scope: !394)
!432 = !DILocation(line: 73, column: 35, scope: !394)
!433 = distinct !{!433, !427, !434}
!434 = !DILocation(line: 74, column: 67, scope: !394)
!435 = !DILocation(line: 75, column: 2, scope: !394)
!436 = !DILocation(line: 77, column: 2, scope: !394)
!437 = distinct !DISubprogram(name: "eprobe_dyn_event_is_busy", scope: !1, file: !1, line: 111, type: !67, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!438 = !DILocation(line: 112, scope: !437)
!439 = !DILocation(line: 258, column: 16, scope: !440, inlinedAt: !441)
!440 = distinct !DISubprogram(name: "trace_probe_test_flag", scope: !232, file: !232, line: 255, type: !67, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!441 = distinct !DILocation(line: 275, column: 9, scope: !442, inlinedAt: !443)
!442 = distinct !DISubprogram(name: "trace_probe_is_enabled", scope: !232, file: !232, line: 273, type: !67, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!443 = distinct !DILocation(line: 115, column: 9, scope: !437)
!444 = !DILocation(line: 258, column: 23, scope: !440, inlinedAt: !441)
!445 = !DILocation(line: 258, column: 29, scope: !440, inlinedAt: !441)
!446 = !DILocation(line: 258, column: 10, scope: !440, inlinedAt: !441)
!447 = !DILocation(line: 115, column: 2, scope: !437)
!448 = distinct !DISubprogram(name: "eprobe_dyn_event_release", scope: !1, file: !1, line: 101, type: !67, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!449 = !DILocation(line: 102, scope: !448)
!450 = !DILocation(line: 56, column: 9, scope: !397, inlinedAt: !451)
!451 = distinct !DILocation(line: 103, column: 28, scope: !448)
!452 = !DILocation(line: 83, column: 35, scope: !453, inlinedAt: !454)
!453 = distinct !DISubprogram(name: "unregister_trace_eprobe", scope: !1, file: !1, line: 80, type: !67, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!454 = distinct !DILocation(line: 104, column: 12, scope: !448)
!455 = !DILocation(line: 310, column: 14, scope: !456, inlinedAt: !457)
!456 = distinct !DISubprogram(name: "trace_probe_probe_list", scope: !232, file: !232, line: 308, type: !67, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!457 = distinct !DILocation(line: 315, column: 27, scope: !458, inlinedAt: !459)
!458 = distinct !DISubprogram(name: "trace_probe_has_sibling", scope: !232, file: !232, line: 313, type: !67, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!459 = distinct !DILocation(line: 83, column: 6, scope: !453, inlinedAt: !454)
!460 = !DILocation(line: 310, column: 21, scope: !456, inlinedAt: !457)
!461 = !DILocation(line: 292, column: 9, scope: !462, inlinedAt: !464)
!462 = distinct !DISubprogram(name: "list_empty", scope: !463, file: !463, line: 290, type: !67, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!463 = !DIFile(filename: "../include/linux/list.h", directory: "/llk/linux-5.17/build_arm_allyes")
!464 = distinct !DILocation(line: 317, column: 10, scope: !458, inlinedAt: !459)
!465 = !DILocation(line: 292, column: 31, scope: !462, inlinedAt: !464)
!466 = !DILocation(line: 317, column: 27, scope: !458, inlinedAt: !459)
!467 = !DILocation(line: 317, column: 48, scope: !458, inlinedAt: !459)
!468 = !DILocation(line: 292, column: 9, scope: !462, inlinedAt: !469)
!469 = distinct !DILocation(line: 370, column: 10, scope: !470, inlinedAt: !471)
!470 = distinct !DISubprogram(name: "list_is_singular", scope: !463, file: !463, line: 368, type: !67, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!471 = distinct !DILocation(line: 317, column: 31, scope: !458, inlinedAt: !459)
!472 = !DILocation(line: 292, column: 31, scope: !462, inlinedAt: !469)
!473 = !DILocation(line: 370, column: 27, scope: !470, inlinedAt: !471)
!474 = !DILocation(line: 370, column: 31, scope: !470, inlinedAt: !471)
!475 = !DILocation(line: 370, column: 51, scope: !470, inlinedAt: !471)
!476 = !DILocation(line: 370, column: 42, scope: !470, inlinedAt: !471)
!477 = !DILocation(line: 83, column: 6, scope: !453, inlinedAt: !454)
!478 = !DILocation(line: 258, column: 23, scope: !440, inlinedAt: !479)
!479 = distinct !DILocation(line: 275, column: 9, scope: !442, inlinedAt: !480)
!480 = distinct !DILocation(line: 87, column: 6, scope: !453, inlinedAt: !454)
!481 = !DILocation(line: 258, column: 29, scope: !440, inlinedAt: !479)
!482 = !DILocation(line: 258, column: 10, scope: !440, inlinedAt: !479)
!483 = !DILocation(line: 87, column: 6, scope: !453, inlinedAt: !454)
!484 = !DILocation(line: 88, column: 3, scope: !453, inlinedAt: !454)
!485 = !DILocation(line: 323, column: 45, scope: !486, inlinedAt: !487)
!486 = distinct !DISubprogram(name: "trace_probe_unregister_event_call", scope: !232, file: !232, line: 320, type: !67, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!487 = distinct !DILocation(line: 91, column: 6, scope: !453, inlinedAt: !454)
!488 = !DILocation(line: 323, column: 9, scope: !486, inlinedAt: !487)
!489 = !DILocation(line: 91, column: 6, scope: !453, inlinedAt: !454)
!490 = !DILocation(line: 92, column: 3, scope: !453, inlinedAt: !454)
!491 = !DILocation(line: 0, scope: !453, inlinedAt: !454)
!492 = !DILocation(line: 94, column: 2, scope: !493, inlinedAt: !495)
!493 = distinct !DISubprogram(name: "dyn_event_remove", scope: !494, file: !494, line: 92, type: !67, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!494 = !DIFile(filename: "../kernel/trace/trace_dynevent.h", directory: "/llk/linux-5.17/build_arm_allyes")
!495 = distinct !DILocation(line: 95, column: 2, scope: !453, inlinedAt: !454)
!496 = !DILocation(line: 283, column: 9, scope: !497, inlinedAt: !499)
!497 = distinct !DISubprogram(name: "lock_is_held", scope: !498, file: !498, line: 281, type: !67, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!498 = !DIFile(filename: "../include/linux/lockdep.h", directory: "/llk/linux-5.17/build_arm_allyes")
!499 = distinct !DILocation(line: 94, column: 2, scope: !493, inlinedAt: !495)
!500 = !DILocation(line: 134, column: 7, scope: !501, inlinedAt: !502)
!501 = distinct !DISubprogram(name: "__list_del_entry", scope: !463, file: !463, line: 132, type: !67, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!502 = distinct !DILocation(line: 206, column: 2, scope: !503, inlinedAt: !504)
!503 = distinct !DISubprogram(name: "list_del_init", scope: !463, file: !463, line: 204, type: !67, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!504 = distinct !DILocation(line: 95, column: 2, scope: !493, inlinedAt: !495)
!505 = !DILocation(line: 134, column: 6, scope: !501, inlinedAt: !502)
!506 = !DILocation(line: 135, column: 3, scope: !501, inlinedAt: !502)
!507 = !DILocation(line: 137, column: 13, scope: !501, inlinedAt: !502)
!508 = !DILocation(line: 137, column: 20, scope: !501, inlinedAt: !502)
!509 = !DILocation(line: 137, column: 33, scope: !501, inlinedAt: !502)
!510 = !DILocation(line: 114, column: 8, scope: !511, inlinedAt: !512)
!511 = distinct !DISubprogram(name: "__list_del", scope: !463, file: !463, line: 112, type: !67, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!512 = distinct !DILocation(line: 137, column: 2, scope: !501, inlinedAt: !502)
!513 = !DILocation(line: 114, column: 13, scope: !511, inlinedAt: !512)
!514 = !DILocation(line: 115, column: 2, scope: !511, inlinedAt: !512)
!515 = !DILocation(line: 138, column: 1, scope: !501, inlinedAt: !502)
!516 = !DILocation(line: 37, column: 2, scope: !517, inlinedAt: !518)
!517 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !463, file: !463, line: 35, type: !67, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!518 = distinct !DILocation(line: 207, column: 2, scope: !503, inlinedAt: !504)
!519 = !DILocation(line: 38, column: 8, scope: !517, inlinedAt: !518)
!520 = !DILocation(line: 38, column: 13, scope: !517, inlinedAt: !518)
!521 = !DILocation(line: 96, column: 2, scope: !453, inlinedAt: !454)
!522 = !DILocation(line: 107, column: 29, scope: !448)
!523 = !DILocation(line: 107, column: 3, scope: !448)
!524 = !DILocation(line: 108, column: 2, scope: !448)
!525 = distinct !DISubprogram(name: "eprobe_dyn_event_match", scope: !1, file: !1, line: 118, type: !67, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!526 = !DILocation(line: 120, scope: !525)
!527 = !DILocation(line: 56, column: 9, scope: !397, inlinedAt: !528)
!528 = distinct !DILocation(line: 121, column: 28, scope: !525)
!529 = !DILocation(line: 142, column: 6, scope: !525)
!530 = !DILocation(line: 142, column: 13, scope: !525)
!531 = !DILocation(line: 142, column: 47, scope: !525)
!532 = !DILocation(line: 285, column: 13, scope: !400, inlinedAt: !533)
!533 = distinct !DILocation(line: 142, column: 23, scope: !525)
!534 = !DILocation(line: 285, column: 25, scope: !400, inlinedAt: !533)
!535 = !DILocation(line: 285, column: 32, scope: !400, inlinedAt: !533)
!536 = !DILocation(line: 142, column: 16, scope: !525)
!537 = !DILocation(line: 142, column: 64, scope: !525)
!538 = !DILocation(line: 143, column: 3, scope: !525)
!539 = !DILocation(line: 146, column: 35, scope: !525)
!540 = !DILocation(line: 280, column: 31, scope: !405, inlinedAt: !541)
!541 = distinct !DILocation(line: 146, column: 13, scope: !525)
!542 = !DILocation(line: 443, column: 12, scope: !408, inlinedAt: !543)
!543 = distinct !DILocation(line: 280, column: 9, scope: !405, inlinedAt: !541)
!544 = !DILocation(line: 443, column: 18, scope: !408, inlinedAt: !543)
!545 = !DILocation(line: 443, column: 6, scope: !408, inlinedAt: !543)
!546 = !DILocation(line: 444, column: 16, scope: !408, inlinedAt: !543)
!547 = !DILocation(line: 444, column: 10, scope: !408, inlinedAt: !543)
!548 = !DILocation(line: 444, column: 21, scope: !408, inlinedAt: !543)
!549 = !DILocation(line: 444, column: 31, scope: !408, inlinedAt: !543)
!550 = !DILocation(line: 446, column: 10, scope: !408, inlinedAt: !543)
!551 = !DILocation(line: 446, column: 16, scope: !408, inlinedAt: !543)
!552 = !DILocation(line: 446, column: 3, scope: !408, inlinedAt: !543)
!553 = !DILocation(line: 0, scope: !408, inlinedAt: !543)
!554 = !DILocation(line: 146, column: 6, scope: !525)
!555 = !DILocation(line: 146, column: 47, scope: !525)
!556 = !DILocation(line: 147, column: 3, scope: !525)
!557 = !DILocation(line: 150, column: 11, scope: !525)
!558 = !DILocation(line: 150, column: 6, scope: !525)
!559 = !DILocation(line: 151, column: 3, scope: !525)
!560 = !DILocation(line: 155, column: 17, scope: !525)
!561 = !DILocation(line: 155, column: 10, scope: !525)
!562 = !DILocation(line: 156, column: 7, scope: !525)
!563 = !DILocation(line: 156, column: 6, scope: !525)
!564 = !DILocation(line: 157, column: 18, scope: !525)
!565 = !DILocation(line: 157, column: 11, scope: !525)
!566 = !DILocation(line: 158, column: 7, scope: !525)
!567 = !DILocation(line: 158, column: 6, scope: !525)
!568 = !DILocation(line: 159, column: 3, scope: !525)
!569 = !DILocation(line: 161, column: 18, scope: !525)
!570 = !DILocation(line: 161, column: 32, scope: !525)
!571 = !DILocation(line: 161, column: 47, scope: !525)
!572 = !DILocation(line: 161, column: 6, scope: !525)
!573 = !DILocation(line: 162, column: 3, scope: !525)
!574 = !DILocation(line: 163, column: 17, scope: !525)
!575 = !DILocation(line: 163, column: 35, scope: !525)
!576 = !DILocation(line: 163, column: 6, scope: !525)
!577 = !DILocation(line: 164, column: 3, scope: !525)
!578 = !DILocation(line: 166, column: 6, scope: !525)
!579 = !DILocation(line: 170, column: 11, scope: !525)
!580 = !DILocation(line: 170, column: 6, scope: !525)
!581 = !DILocation(line: 171, column: 3, scope: !525)
!582 = !DILocation(line: 167, column: 6, scope: !525)
!583 = !DILocation(line: 173, column: 41, scope: !525)
!584 = !DILocation(line: 173, column: 9, scope: !525)
!585 = !DILocation(line: 173, column: 2, scope: !525)
!586 = !DILocation(line: 0, scope: !525)
!587 = !DILocation(line: 174, column: 1, scope: !525)
!588 = distinct !DISubprogram(name: "__trace_eprobe_create", scope: !1, file: !1, line: 847, type: !67, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!589 = !DILocation(line: 848, scope: !588)
!590 = !DILocation(line: 855, column: 2, scope: !588)
!591 = !DILocation(line: 855, column: 14, scope: !588)
!592 = !DILocation(line: 855, column: 29, scope: !588)
!593 = !DILocation(line: 856, column: 2, scope: !588)
!594 = !DILocation(line: 856, column: 14, scope: !588)
!595 = !DILocation(line: 856, column: 33, scope: !588)
!596 = !DILocation(line: 859, column: 2, scope: !588)
!597 = !DILocation(line: 859, column: 7, scope: !588)
!598 = !DILocation(line: 860, column: 2, scope: !588)
!599 = !DILocation(line: 860, column: 7, scope: !588)
!600 = !DILocation(line: 864, column: 11, scope: !588)
!601 = !DILocation(line: 864, column: 15, scope: !588)
!602 = !DILocation(line: 864, column: 18, scope: !588)
!603 = !DILocation(line: 864, column: 29, scope: !588)
!604 = !DILocation(line: 864, column: 6, scope: !588)
!605 = !DILocation(line: 865, column: 3, scope: !588)
!606 = !DILocation(line: 867, column: 2, scope: !588)
!607 = !DILocation(line: 869, column: 18, scope: !588)
!608 = !DILocation(line: 869, column: 10, scope: !588)
!609 = !DILocation(line: 869, column: 8, scope: !588)
!610 = !DILocation(line: 870, column: 6, scope: !588)
!611 = !DILocation(line: 871, column: 8, scope: !588)
!612 = !DILocation(line: 873, column: 15, scope: !588)
!613 = !DILocation(line: 872, column: 9, scope: !588)
!614 = !DILocation(line: 874, column: 7, scope: !588)
!615 = !DILocation(line: 875, column: 4, scope: !588)
!616 = !DILocation(line: 876, column: 2, scope: !588)
!617 = !DILocation(line: 877, column: 11, scope: !588)
!618 = !DILocation(line: 877, column: 17, scope: !588)
!619 = !DILocation(line: 877, column: 3, scope: !588)
!620 = !DILocation(line: 1989, column: 9, scope: !621, inlinedAt: !623)
!621 = distinct !DISubprogram(name: "sanitize_event_name", scope: !622, file: !622, line: 1987, type: !67, scopeLine: 1988, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!622 = !DIFile(filename: "../kernel/trace/trace.h", directory: "/llk/linux-5.17/build_arm_allyes")
!623 = distinct !DILocation(line: 878, column: 3, scope: !588)
!624 = !DILocation(line: 1989, column: 17, scope: !621, inlinedAt: !623)
!625 = !DILocation(line: 1989, column: 2, scope: !621, inlinedAt: !623)
!626 = !DILocation(line: 1989, column: 14, scope: !621, inlinedAt: !623)
!627 = !DILocation(line: 1990, column: 7, scope: !621, inlinedAt: !623)
!628 = !DILocation(line: 1990, column: 13, scope: !621, inlinedAt: !623)
!629 = !DILocation(line: 1990, column: 20, scope: !621, inlinedAt: !623)
!630 = !DILocation(line: 1990, column: 24, scope: !621, inlinedAt: !623)
!631 = !DILocation(line: 1990, column: 29, scope: !621, inlinedAt: !623)
!632 = !DILocation(line: 1991, column: 5, scope: !621, inlinedAt: !623)
!633 = !DILocation(line: 1991, column: 10, scope: !621, inlinedAt: !623)
!634 = !DILocation(line: 1991, column: 4, scope: !621, inlinedAt: !623)
!635 = distinct !{!635, !625, !636}
!636 = !DILocation(line: 1991, column: 12, scope: !621, inlinedAt: !623)
!637 = !DILocation(line: 879, column: 9, scope: !588)
!638 = !DILocation(line: 881, column: 20, scope: !588)
!639 = !DILocation(line: 1977, column: 7, scope: !640, inlinedAt: !641)
!640 = distinct !DISubprogram(name: "is_good_name", scope: !622, file: !622, line: 1975, type: !67, scopeLine: 1976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!641 = distinct !DILocation(line: 881, column: 7, scope: !588)
!642 = !DILocation(line: 1977, column: 22, scope: !640, inlinedAt: !641)
!643 = !DILocation(line: 1977, column: 26, scope: !640, inlinedAt: !641)
!644 = !DILocation(line: 1977, column: 25, scope: !640, inlinedAt: !641)
!645 = !DILocation(line: 1977, column: 31, scope: !640, inlinedAt: !641)
!646 = !DILocation(line: 1977, column: 6, scope: !640, inlinedAt: !641)
!647 = !DILocation(line: 1978, column: 3, scope: !640, inlinedAt: !641)
!648 = !DILocation(line: 1979, column: 10, scope: !640, inlinedAt: !641)
!649 = !DILocation(line: 1979, column: 9, scope: !640, inlinedAt: !641)
!650 = !DILocation(line: 1979, column: 17, scope: !640, inlinedAt: !641)
!651 = !DILocation(line: 1979, column: 2, scope: !640, inlinedAt: !641)
!652 = !DILocation(line: 1980, column: 8, scope: !640, inlinedAt: !641)
!653 = !DILocation(line: 1980, column: 23, scope: !640, inlinedAt: !641)
!654 = !DILocation(line: 1980, column: 36, scope: !640, inlinedAt: !641)
!655 = !DILocation(line: 1980, column: 35, scope: !640, inlinedAt: !641)
!656 = !DILocation(line: 45, column: 13, scope: !657, inlinedAt: !659)
!657 = distinct !DISubprogram(name: "isdigit", scope: !658, file: !658, line: 43, type: !67, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!658 = !DIFile(filename: "../include/linux/ctype.h", directory: "/llk/linux-5.17/build_arm_allyes")
!659 = distinct !DILocation(line: 1980, column: 27, scope: !640, inlinedAt: !641)
!660 = !DILocation(line: 45, column: 18, scope: !657, inlinedAt: !659)
!661 = !DILocation(line: 45, column: 21, scope: !657, inlinedAt: !659)
!662 = !DILocation(line: 45, column: 23, scope: !657, inlinedAt: !659)
!663 = !DILocation(line: 1980, column: 42, scope: !640, inlinedAt: !641)
!664 = !DILocation(line: 1980, column: 46, scope: !640, inlinedAt: !641)
!665 = !DILocation(line: 1980, column: 45, scope: !640, inlinedAt: !641)
!666 = !DILocation(line: 1980, column: 51, scope: !640, inlinedAt: !641)
!667 = !DILocation(line: 1980, column: 7, scope: !640, inlinedAt: !641)
!668 = !DILocation(line: 1981, column: 4, scope: !640, inlinedAt: !641)
!669 = distinct !{!669, !651, !670}
!670 = !DILocation(line: 1982, column: 2, scope: !640, inlinedAt: !641)
!671 = !DILocation(line: 1983, column: 2, scope: !640, inlinedAt: !641)
!672 = !DILocation(line: 881, column: 44, scope: !588)
!673 = !DILocation(line: 1977, column: 7, scope: !640, inlinedAt: !674)
!674 = distinct !DILocation(line: 881, column: 31, scope: !588)
!675 = !DILocation(line: 1977, column: 22, scope: !640, inlinedAt: !674)
!676 = !DILocation(line: 1977, column: 26, scope: !640, inlinedAt: !674)
!677 = !DILocation(line: 1977, column: 25, scope: !640, inlinedAt: !674)
!678 = !DILocation(line: 1977, column: 31, scope: !640, inlinedAt: !674)
!679 = !DILocation(line: 1977, column: 6, scope: !640, inlinedAt: !674)
!680 = !DILocation(line: 1978, column: 3, scope: !640, inlinedAt: !674)
!681 = !DILocation(line: 1979, column: 10, scope: !640, inlinedAt: !674)
!682 = !DILocation(line: 1979, column: 9, scope: !640, inlinedAt: !674)
!683 = !DILocation(line: 1979, column: 17, scope: !640, inlinedAt: !674)
!684 = !DILocation(line: 1979, column: 2, scope: !640, inlinedAt: !674)
!685 = !DILocation(line: 1980, column: 8, scope: !640, inlinedAt: !674)
!686 = !DILocation(line: 1980, column: 23, scope: !640, inlinedAt: !674)
!687 = !DILocation(line: 1980, column: 36, scope: !640, inlinedAt: !674)
!688 = !DILocation(line: 1980, column: 35, scope: !640, inlinedAt: !674)
!689 = !DILocation(line: 45, column: 13, scope: !657, inlinedAt: !690)
!690 = distinct !DILocation(line: 1980, column: 27, scope: !640, inlinedAt: !674)
!691 = !DILocation(line: 45, column: 18, scope: !657, inlinedAt: !690)
!692 = !DILocation(line: 45, column: 21, scope: !657, inlinedAt: !690)
!693 = !DILocation(line: 45, column: 23, scope: !657, inlinedAt: !690)
!694 = !DILocation(line: 1980, column: 42, scope: !640, inlinedAt: !674)
!695 = !DILocation(line: 1980, column: 46, scope: !640, inlinedAt: !674)
!696 = !DILocation(line: 1980, column: 45, scope: !640, inlinedAt: !674)
!697 = !DILocation(line: 1980, column: 51, scope: !640, inlinedAt: !674)
!698 = !DILocation(line: 1980, column: 7, scope: !640, inlinedAt: !674)
!699 = !DILocation(line: 1981, column: 4, scope: !640, inlinedAt: !674)
!700 = distinct !{!700, !684, !701}
!701 = !DILocation(line: 1982, column: 2, scope: !640, inlinedAt: !674)
!702 = !DILocation(line: 1983, column: 2, scope: !640, inlinedAt: !674)
!703 = !DILocation(line: 884, column: 14, scope: !588)
!704 = !DILocation(line: 884, column: 12, scope: !588)
!705 = !DILocation(line: 885, column: 8, scope: !588)
!706 = !DILocation(line: 887, column: 6, scope: !588)
!707 = !DILocation(line: 887, column: 10, scope: !588)
!708 = !DILocation(line: 887, column: 14, scope: !588)
!709 = !DILocation(line: 888, column: 3, scope: !588)
!710 = !DILocation(line: 889, column: 20, scope: !588)
!711 = !DILocation(line: 889, column: 7, scope: !588)
!712 = !DILocation(line: 889, column: 31, scope: !588)
!713 = !DILocation(line: 889, column: 48, scope: !588)
!714 = !DILocation(line: 889, column: 35, scope: !588)
!715 = !DILocation(line: 889, column: 6, scope: !588)
!716 = !DILocation(line: 890, column: 3, scope: !588)
!717 = !DILocation(line: 892, column: 2, scope: !588)
!718 = !DILocation(line: 893, column: 34, scope: !588)
!719 = !DILocation(line: 893, column: 44, scope: !588)
!720 = !DILocation(line: 893, column: 15, scope: !588)
!721 = !DILocation(line: 894, column: 25, scope: !588)
!722 = !DILocation(line: 894, column: 32, scope: !588)
!723 = !DILocation(line: 894, column: 56, scope: !588)
!724 = !DILocation(line: 894, column: 7, scope: !588)
!725 = !DILocation(line: 895, column: 2, scope: !588)
!726 = !DILocation(line: 36, column: 9, scope: !727, inlinedAt: !729)
!727 = distinct !DISubprogram(name: "IS_ERR", scope: !728, file: !728, line: 34, type: !67, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!728 = !DIFile(filename: "../include/linux/err.h", directory: "/llk/linux-5.17/build_arm_allyes")
!729 = distinct !DILocation(line: 897, column: 6, scope: !588)
!730 = !DILocation(line: 897, column: 6, scope: !588)
!731 = !DILocation(line: 31, column: 9, scope: !732, inlinedAt: !733)
!732 = distinct !DISubprogram(name: "PTR_ERR", scope: !728, file: !728, line: 29, type: !67, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!733 = distinct !DILocation(line: 898, column: 9, scope: !588)
!734 = !DILocation(line: 900, column: 3, scope: !588)
!735 = !{!"branch_weights", i32 2000, i32 1}
!736 = !DILocation(line: 902, column: 3, scope: !588)
!737 = !DILocation(line: 905, column: 18, scope: !588)
!738 = !DILocation(line: 907, column: 16, scope: !588)
!739 = !DILocation(line: 907, column: 23, scope: !588)
!740 = !DILocation(line: 907, column: 26, scope: !588)
!741 = !DILocation(line: 907, column: 28, scope: !588)
!742 = !DILocation(line: 907, column: 2, scope: !588)
!743 = !DILocation(line: 908, column: 31, scope: !588)
!744 = !DILocation(line: 908, column: 3, scope: !588)
!745 = !DILocation(line: 909, column: 9, scope: !588)
!746 = !DILocation(line: 910, column: 7, scope: !588)
!747 = !DILocation(line: 911, column: 4, scope: !588)
!748 = !DILocation(line: 912, column: 2, scope: !588)
!749 = !DILocation(line: 907, column: 47, scope: !588)
!750 = distinct !{!750, !742, !748}
!751 = !DILocation(line: 913, column: 38, scope: !588)
!752 = !DILocation(line: 913, column: 8, scope: !588)
!753 = !DILocation(line: 914, column: 10, scope: !588)
!754 = !DILocation(line: 914, column: 6, scope: !588)
!755 = !DILocation(line: 915, column: 3, scope: !588)
!756 = !DILocation(line: 291, column: 14, scope: !757, inlinedAt: !758)
!757 = distinct !DISubprogram(name: "trace_probe_event_call", scope: !232, file: !232, line: 289, type: !67, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!758 = distinct !DILocation(line: 794, column: 34, scope: !759, inlinedAt: !760)
!759 = distinct !DISubprogram(name: "init_trace_eprobe_call", scope: !1, file: !1, line: 792, type: !67, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!760 = distinct !DILocation(line: 916, column: 2, scope: !588)
!761 = !DILocation(line: 796, column: 8, scope: !759, inlinedAt: !760)
!762 = !DILocation(line: 796, column: 14, scope: !759, inlinedAt: !760)
!763 = !DILocation(line: 797, column: 14, scope: !759, inlinedAt: !760)
!764 = !DILocation(line: 797, column: 20, scope: !759, inlinedAt: !760)
!765 = !DILocation(line: 798, column: 8, scope: !759, inlinedAt: !760)
!766 = !DILocation(line: 798, column: 15, scope: !759, inlinedAt: !760)
!767 = !DILocation(line: 798, column: 28, scope: !759, inlinedAt: !760)
!768 = !DILocation(line: 799, column: 8, scope: !759, inlinedAt: !760)
!769 = !DILocation(line: 799, column: 15, scope: !759, inlinedAt: !760)
!770 = !DILocation(line: 799, column: 19, scope: !759, inlinedAt: !760)
!771 = !DILocation(line: 917, column: 2, scope: !588)
!772 = !DILocation(line: 918, column: 8, scope: !588)
!773 = !DILocation(line: 919, column: 6, scope: !588)
!774 = !DILocation(line: 921, column: 4, scope: !588)
!775 = !DILocation(line: 922, column: 4, scope: !588)
!776 = !DILocation(line: 923, column: 3, scope: !588)
!777 = !DILocation(line: 924, column: 3, scope: !588)
!778 = !DILocation(line: 925, column: 3, scope: !588)
!779 = !DILocation(line: 927, column: 23, scope: !588)
!780 = !DILocation(line: 927, column: 27, scope: !588)
!781 = !DILocation(line: 927, column: 43, scope: !588)
!782 = !DILocation(line: 927, column: 50, scope: !588)
!783 = !DILocation(line: 927, column: 8, scope: !588)
!784 = !DILocation(line: 928, column: 2, scope: !588)
!785 = !DILocation(line: 929, column: 2, scope: !588)
!786 = !DILocation(line: 0, scope: !588)
!787 = !DILocation(line: 933, column: 2, scope: !588)
!788 = !DILocation(line: 934, column: 2, scope: !588)
!789 = !DILocation(line: 935, column: 1, scope: !588)
!790 = !DILocation(line: 1976, scope: !640)
!791 = !DILocation(line: 1977, column: 7, scope: !640)
!792 = !DILocation(line: 1977, column: 22, scope: !640)
!793 = !DILocation(line: 1977, column: 26, scope: !640)
!794 = !DILocation(line: 1977, column: 25, scope: !640)
!795 = !DILocation(line: 1977, column: 31, scope: !640)
!796 = !DILocation(line: 1977, column: 6, scope: !640)
!797 = !DILocation(line: 1978, column: 3, scope: !640)
!798 = !DILocation(line: 1979, column: 10, scope: !640)
!799 = !DILocation(line: 1979, column: 9, scope: !640)
!800 = !DILocation(line: 1979, column: 17, scope: !640)
!801 = !DILocation(line: 1979, column: 2, scope: !640)
!802 = !DILocation(line: 1980, column: 8, scope: !640)
!803 = !DILocation(line: 1980, column: 23, scope: !640)
!804 = !DILocation(line: 1980, column: 36, scope: !640)
!805 = !DILocation(line: 1980, column: 35, scope: !640)
!806 = !DILocation(line: 45, column: 13, scope: !657, inlinedAt: !807)
!807 = distinct !DILocation(line: 1980, column: 27, scope: !640)
!808 = !DILocation(line: 45, column: 18, scope: !657, inlinedAt: !807)
!809 = !DILocation(line: 45, column: 21, scope: !657, inlinedAt: !807)
!810 = !DILocation(line: 45, column: 23, scope: !657, inlinedAt: !807)
!811 = !DILocation(line: 1980, column: 42, scope: !640)
!812 = !DILocation(line: 1980, column: 46, scope: !640)
!813 = !DILocation(line: 1980, column: 45, scope: !640)
!814 = !DILocation(line: 1980, column: 51, scope: !640)
!815 = !DILocation(line: 1980, column: 7, scope: !640)
!816 = !DILocation(line: 1981, column: 4, scope: !640)
!817 = distinct !{!817, !801, !818}
!818 = !DILocation(line: 1982, column: 2, scope: !640)
!819 = !DILocation(line: 1983, column: 2, scope: !640)
!820 = !DILocation(line: 0, scope: !640)
!821 = !DILocation(line: 1984, column: 1, scope: !640)
!822 = distinct !DISubprogram(name: "find_and_get_event", scope: !1, file: !1, line: 803, type: !67, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!823 = !DILocation(line: 804, scope: !822)
!824 = !DILocation(line: 808, column: 2, scope: !822)
!825 = !DILocation(line: 810, column: 17, scope: !822)
!826 = !DILocation(line: 810, column: 23, scope: !822)
!827 = !DILocation(line: 810, column: 7, scope: !822)
!828 = !DILocation(line: 816, column: 18, scope: !822)
!829 = !DILocation(line: 816, column: 25, scope: !822)
!830 = !DILocation(line: 816, column: 8, scope: !822)
!831 = !DILocation(line: 816, column: 32, scope: !822)
!832 = !DILocation(line: 817, column: 14, scope: !822)
!833 = !DILocation(line: 817, column: 32, scope: !822)
!834 = !DILocation(line: 817, column: 39, scope: !822)
!835 = !DILocation(line: 817, column: 7, scope: !822)
!836 = !DILocation(line: 816, column: 7, scope: !822)
!837 = !DILocation(line: 443, column: 18, scope: !408, inlinedAt: !838)
!838 = distinct !DILocation(line: 819, column: 10, scope: !822)
!839 = !DILocation(line: 443, column: 6, scope: !408, inlinedAt: !838)
!840 = !DILocation(line: 444, column: 16, scope: !408, inlinedAt: !838)
!841 = !DILocation(line: 444, column: 10, scope: !408, inlinedAt: !838)
!842 = !DILocation(line: 444, column: 21, scope: !408, inlinedAt: !838)
!843 = !DILocation(line: 444, column: 27, scope: !408, inlinedAt: !838)
!844 = !DILocation(line: 820, column: 13, scope: !822)
!845 = !DILocation(line: 446, column: 10, scope: !408, inlinedAt: !838)
!846 = !DILocation(line: 446, column: 16, scope: !408, inlinedAt: !838)
!847 = !DILocation(line: 446, column: 3, scope: !408, inlinedAt: !838)
!848 = !DILocation(line: 0, scope: !408, inlinedAt: !838)
!849 = !DILocation(line: 820, column: 8, scope: !822)
!850 = !DILocation(line: 820, column: 23, scope: !822)
!851 = !DILocation(line: 820, column: 16, scope: !822)
!852 = !DILocation(line: 820, column: 7, scope: !822)
!853 = !DILocation(line: 402, column: 12, scope: !854, inlinedAt: !855)
!854 = distinct !DISubprogram(name: "trace_event_try_get_ref", scope: !409, file: !409, line: 400, type: !67, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!855 = distinct !DILocation(line: 822, column: 8, scope: !822)
!856 = !DILocation(line: 402, column: 18, scope: !854, inlinedAt: !855)
!857 = !DILocation(line: 402, column: 6, scope: !854, inlinedAt: !855)
!858 = !DILocation(line: 403, column: 38, scope: !854, inlinedAt: !855)
!859 = !DILocation(line: 403, column: 10, scope: !854, inlinedAt: !855)
!860 = !DILocation(line: 822, column: 7, scope: !822)
!861 = !DILocation(line: 405, column: 25, scope: !854, inlinedAt: !855)
!862 = !DILocation(line: 405, column: 31, scope: !854, inlinedAt: !855)
!863 = !DILocation(line: 405, column: 10, scope: !854, inlinedAt: !855)
!864 = !DILocation(line: 823, column: 4, scope: !822)
!865 = !DILocation(line: 826, column: 10, scope: !822)
!866 = !DILocation(line: 826, column: 3, scope: !822)
!867 = !DILocation(line: 0, scope: !822)
!868 = distinct !{!868, !824, !869}
!869 = !DILocation(line: 828, column: 2, scope: !822)
!870 = !DILocation(line: 829, column: 2, scope: !822)
!871 = !DILocation(line: 830, column: 1, scope: !822)
!872 = distinct !DISubprogram(name: "alloc_event_probe", scope: !1, file: !1, line: 184, type: !67, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!873 = !DILocation(line: 188, scope: !872)
!874 = !DILocation(line: 194, column: 7, scope: !872)
!875 = !DILocation(line: 194, column: 6, scope: !872)
!876 = !DILocation(line: 195, column: 10, scope: !872)
!877 = !DILocation(line: 195, column: 3, scope: !872)
!878 = !DILocation(line: 197, column: 20, scope: !872)
!879 = !DILocation(line: 197, column: 27, scope: !872)
!880 = !DILocation(line: 443, column: 12, scope: !408, inlinedAt: !881)
!881 = distinct !DILocation(line: 198, column: 15, scope: !872)
!882 = !DILocation(line: 443, column: 18, scope: !408, inlinedAt: !881)
!883 = !DILocation(line: 443, column: 6, scope: !408, inlinedAt: !881)
!884 = !DILocation(line: 444, column: 16, scope: !408, inlinedAt: !881)
!885 = !DILocation(line: 444, column: 10, scope: !408, inlinedAt: !881)
!886 = !DILocation(line: 444, column: 21, scope: !408, inlinedAt: !881)
!887 = !DILocation(line: 444, column: 27, scope: !408, inlinedAt: !881)
!888 = !DILocation(line: 444, column: 31, scope: !408, inlinedAt: !881)
!889 = !DILocation(line: 446, column: 10, scope: !408, inlinedAt: !881)
!890 = !DILocation(line: 446, column: 16, scope: !408, inlinedAt: !881)
!891 = !DILocation(line: 446, column: 3, scope: !408, inlinedAt: !881)
!892 = !DILocation(line: 0, scope: !408, inlinedAt: !881)
!893 = !DILocation(line: 173, column: 6, scope: !894, inlinedAt: !896)
!894 = distinct !DISubprogram(name: "__ab_c_size", scope: !895, file: !895, line: 169, type: !67, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!895 = !DIFile(filename: "../include/linux/overflow.h", directory: "/llk/linux-5.17/build_arm_allyes")
!896 = distinct !DILocation(line: 200, column: 15, scope: !872)
!897 = !DILocation(line: 174, column: 3, scope: !894, inlinedAt: !896)
!898 = !DILocation(line: 175, column: 6, scope: !894, inlinedAt: !896)
!899 = !DILocation(line: 176, column: 3, scope: !894, inlinedAt: !896)
!900 = !DILocation(line: 178, column: 9, scope: !894, inlinedAt: !896)
!901 = !DILocation(line: 178, column: 2, scope: !894, inlinedAt: !896)
!902 = !DILocation(line: 0, scope: !894, inlinedAt: !896)
!903 = !DILocation(line: 586, column: 19, scope: !904, inlinedAt: !906)
!904 = distinct !DISubprogram(name: "kmalloc", scope: !905, file: !905, line: 567, type: !67, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!905 = !DIFile(filename: "../include/linux/slab.h", directory: "/llk/linux-5.17/build_arm_allyes")
!906 = distinct !DILocation(line: 714, column: 9, scope: !907, inlinedAt: !908)
!907 = distinct !DISubprogram(name: "kzalloc", scope: !905, file: !905, line: 712, type: !67, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!908 = distinct !DILocation(line: 200, column: 7, scope: !872)
!909 = !DILocation(line: 586, column: 9, scope: !904, inlinedAt: !906)
!910 = !DILocation(line: 201, column: 7, scope: !872)
!911 = !DILocation(line: 201, column: 6, scope: !872)
!912 = !DILocation(line: 202, column: 23, scope: !872)
!913 = !DILocation(line: 410, column: 12, scope: !914, inlinedAt: !915)
!914 = distinct !DISubprogram(name: "trace_event_put_ref", scope: !409, file: !409, line: 408, type: !67, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!915 = distinct !DILocation(line: 202, column: 3, scope: !872)
!916 = !DILocation(line: 410, column: 18, scope: !914, inlinedAt: !915)
!917 = !DILocation(line: 410, column: 6, scope: !914, inlinedAt: !915)
!918 = !DILocation(line: 411, column: 27, scope: !914, inlinedAt: !915)
!919 = !DILocation(line: 411, column: 3, scope: !914, inlinedAt: !915)
!920 = !DILocation(line: 413, column: 14, scope: !914, inlinedAt: !915)
!921 = !DILocation(line: 413, column: 20, scope: !914, inlinedAt: !915)
!922 = !DILocation(line: 413, column: 3, scope: !914, inlinedAt: !915)
!923 = !DILocation(line: 205, column: 6, scope: !872)
!924 = !DILocation(line: 205, column: 12, scope: !872)
!925 = !DILocation(line: 206, column: 19, scope: !872)
!926 = !DILocation(line: 206, column: 6, scope: !872)
!927 = !DILocation(line: 206, column: 17, scope: !872)
!928 = !DILocation(line: 207, column: 7, scope: !872)
!929 = !DILocation(line: 207, column: 6, scope: !872)
!930 = !DILocation(line: 208, column: 3, scope: !872)
!931 = !DILocation(line: 209, column: 21, scope: !872)
!932 = !DILocation(line: 209, column: 19, scope: !872)
!933 = !DILocation(line: 210, column: 7, scope: !872)
!934 = !DILocation(line: 210, column: 6, scope: !872)
!935 = !DILocation(line: 211, column: 3, scope: !872)
!936 = !DILocation(line: 213, column: 30, scope: !872)
!937 = !DILocation(line: 213, column: 8, scope: !872)
!938 = !DILocation(line: 214, column: 10, scope: !872)
!939 = !DILocation(line: 214, column: 6, scope: !872)
!940 = !DILocation(line: 215, column: 3, scope: !872)
!941 = !DILocation(line: 217, column: 18, scope: !872)
!942 = !DILocation(line: 217, column: 22, scope: !872)
!943 = !DILocation(line: 71, column: 14, scope: !944, inlinedAt: !945)
!944 = distinct !DISubprogram(name: "dyn_event_init", scope: !494, file: !494, line: 69, type: !67, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!945 = distinct !DILocation(line: 217, column: 2, scope: !872)
!946 = !DILocation(line: 74, column: 18, scope: !944, inlinedAt: !945)
!947 = !DILocation(line: 37, column: 2, scope: !517, inlinedAt: !948)
!948 = distinct !DILocation(line: 74, column: 2, scope: !944, inlinedAt: !945)
!949 = !DILocation(line: 38, column: 8, scope: !517, inlinedAt: !948)
!950 = !DILocation(line: 38, column: 13, scope: !517, inlinedAt: !948)
!951 = !DILocation(line: 75, column: 6, scope: !944, inlinedAt: !945)
!952 = !DILocation(line: 75, column: 10, scope: !944, inlinedAt: !945)
!953 = !DILocation(line: 76, column: 2, scope: !944, inlinedAt: !945)
!954 = !DILocation(line: 220, column: 2, scope: !872)
!955 = !DILocation(line: 221, column: 2, scope: !872)
!956 = !DILocation(line: 0, scope: !872)
!957 = !DILocation(line: 222, column: 1, scope: !872)
!958 = distinct !DISubprogram(name: "trace_eprobe_tp_update_arg", scope: !1, file: !1, line: 832, type: !67, scopeLine: 833, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!959 = !DILocation(line: 833, scope: !958)
!960 = !DILocation(line: 837, column: 40, scope: !958)
!961 = !DILocation(line: 837, column: 47, scope: !958)
!962 = !DILocation(line: 837, column: 8, scope: !958)
!963 = !DILocation(line: 838, column: 6, scope: !958)
!964 = !DILocation(line: 839, column: 10, scope: !958)
!965 = !DILocation(line: 839, column: 3, scope: !958)
!966 = !DILocation(line: 841, column: 6, scope: !958)
!967 = !DILocation(line: 841, column: 13, scope: !958)
!968 = !DILocation(line: 841, column: 21, scope: !958)
!969 = !DILocation(line: 841, column: 27, scope: !958)
!970 = !DILocation(line: 841, column: 30, scope: !958)
!971 = !DILocation(line: 842, column: 36, scope: !958)
!972 = !DILocation(line: 230, column: 30, scope: !973, inlinedAt: !974)
!973 = distinct !DISubprogram(name: "trace_eprobe_tp_arg_update", scope: !1, file: !1, line: 224, type: !67, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!974 = distinct !DILocation(line: 842, column: 9, scope: !958)
!975 = !DILocation(line: 452, column: 19, scope: !976, inlinedAt: !977)
!976 = distinct !DISubprogram(name: "trace_get_fields", scope: !409, file: !409, line: 450, type: !67, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!977 = distinct !DILocation(line: 230, column: 9, scope: !973, inlinedAt: !974)
!978 = !DILocation(line: 452, column: 26, scope: !976, inlinedAt: !977)
!979 = !DILocation(line: 452, column: 7, scope: !976, inlinedAt: !977)
!980 = !DILocation(line: 452, column: 6, scope: !976, inlinedAt: !977)
!981 = !DILocation(line: 453, column: 11, scope: !976, inlinedAt: !977)
!982 = !DILocation(line: 453, column: 30, scope: !976, inlinedAt: !977)
!983 = !DILocation(line: 453, column: 3, scope: !976, inlinedAt: !977)
!984 = !DILocation(line: 454, column: 9, scope: !976, inlinedAt: !977)
!985 = !DILocation(line: 454, column: 21, scope: !976, inlinedAt: !977)
!986 = !DILocation(line: 454, column: 28, scope: !976, inlinedAt: !977)
!987 = !DILocation(line: 454, column: 2, scope: !976, inlinedAt: !977)
!988 = !DILocation(line: 0, scope: !976, inlinedAt: !977)
!989 = !DILocation(line: 231, column: 2, scope: !973, inlinedAt: !974)
!990 = !DILocation(line: 232, column: 21, scope: !973, inlinedAt: !974)
!991 = !DILocation(line: 232, column: 27, scope: !973, inlinedAt: !974)
!992 = !DILocation(line: 232, column: 40, scope: !973, inlinedAt: !974)
!993 = !DILocation(line: 232, column: 8, scope: !973, inlinedAt: !974)
!994 = !DILocation(line: 232, column: 7, scope: !973, inlinedAt: !974)
!995 = distinct !{!995, !989, !996}
!996 = !DILocation(line: 237, column: 2, scope: !973, inlinedAt: !974)
!997 = !DILocation(line: 0, scope: !973, inlinedAt: !974)
!998 = !DILocation(line: 842, column: 3, scope: !958)
!999 = !DILocation(line: 0, scope: !958)
!1000 = !DILocation(line: 845, column: 1, scope: !958)
!1001 = distinct !DISubprogram(name: "dyn_event_add", scope: !494, file: !494, line: 79, type: !67, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1002 = !DILocation(line: 81, scope: !1001)
!1003 = !DILocation(line: 82, column: 2, scope: !1001)
!1004 = !DILocation(line: 283, column: 9, scope: !497, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 82, column: 2, scope: !1001)
!1006 = !DILocation(line: 84, column: 7, scope: !1001)
!1007 = !DILocation(line: 84, column: 10, scope: !1001)
!1008 = !DILocation(line: 84, column: 14, scope: !1001)
!1009 = !DILocation(line: 84, column: 18, scope: !1001)
!1010 = !DILocation(line: 84, column: 6, scope: !1001)
!1011 = !DILocation(line: 85, column: 3, scope: !1001)
!1012 = !DILocation(line: 87, column: 2, scope: !1001)
!1013 = !DILocation(line: 87, column: 8, scope: !1001)
!1014 = !DILocation(line: 87, column: 14, scope: !1001)
!1015 = !DILocation(line: 102, column: 24, scope: !1016, inlinedAt: !1017)
!1016 = distinct !DISubprogram(name: "list_add_tail", scope: !463, file: !463, line: 100, type: !67, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1017 = distinct !DILocation(line: 88, column: 2, scope: !1001)
!1018 = !DILocation(line: 69, column: 7, scope: !1019, inlinedAt: !1020)
!1019 = distinct !DISubprogram(name: "__list_add", scope: !463, file: !463, line: 65, type: !67, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1020 = distinct !DILocation(line: 102, column: 2, scope: !1016, inlinedAt: !1017)
!1021 = !DILocation(line: 69, column: 6, scope: !1019, inlinedAt: !1020)
!1022 = !DILocation(line: 72, column: 13, scope: !1019, inlinedAt: !1020)
!1023 = !DILocation(line: 73, column: 12, scope: !1019, inlinedAt: !1020)
!1024 = !DILocation(line: 74, column: 7, scope: !1019, inlinedAt: !1020)
!1025 = !DILocation(line: 74, column: 12, scope: !1019, inlinedAt: !1020)
!1026 = !DILocation(line: 75, column: 2, scope: !1019, inlinedAt: !1020)
!1027 = !DILocation(line: 0, scope: !1019, inlinedAt: !1020)
!1028 = !DILocation(line: 89, column: 2, scope: !1001)
!1029 = !DILocation(line: 0, scope: !1001)
!1030 = !DILocation(line: 90, column: 1, scope: !1001)
!1031 = distinct !DISubprogram(name: "trace_event_probe_cleanup", scope: !1, file: !1, line: 42, type: !67, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1032 = !DILocation(line: 43, scope: !1031)
!1033 = !DILocation(line: 44, column: 7, scope: !1031)
!1034 = !DILocation(line: 44, column: 6, scope: !1031)
!1035 = !DILocation(line: 45, column: 3, scope: !1031)
!1036 = !DILocation(line: 46, column: 23, scope: !1031)
!1037 = !DILocation(line: 46, column: 27, scope: !1031)
!1038 = !DILocation(line: 46, column: 2, scope: !1031)
!1039 = !DILocation(line: 47, column: 12, scope: !1031)
!1040 = !DILocation(line: 47, column: 2, scope: !1031)
!1041 = !DILocation(line: 48, column: 12, scope: !1031)
!1042 = !DILocation(line: 48, column: 2, scope: !1031)
!1043 = !DILocation(line: 49, column: 10, scope: !1031)
!1044 = !DILocation(line: 49, column: 6, scope: !1031)
!1045 = !DILocation(line: 50, column: 23, scope: !1031)
!1046 = !DILocation(line: 50, column: 27, scope: !1031)
!1047 = !DILocation(line: 410, column: 12, scope: !914, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 50, column: 3, scope: !1031)
!1049 = !DILocation(line: 410, column: 18, scope: !914, inlinedAt: !1048)
!1050 = !DILocation(line: 410, column: 6, scope: !914, inlinedAt: !1048)
!1051 = !DILocation(line: 411, column: 27, scope: !914, inlinedAt: !1048)
!1052 = !DILocation(line: 411, column: 3, scope: !914, inlinedAt: !1048)
!1053 = !DILocation(line: 413, column: 14, scope: !914, inlinedAt: !1048)
!1054 = !DILocation(line: 413, column: 20, scope: !914, inlinedAt: !1048)
!1055 = !DILocation(line: 413, column: 3, scope: !914, inlinedAt: !1048)
!1056 = !DILocation(line: 51, column: 2, scope: !1031)
!1057 = !DILocation(line: 52, column: 1, scope: !1031)
!1058 = distinct !DISubprogram(name: "eprobe_register", scope: !1, file: !1, line: 769, type: !67, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1059 = !DILocation(line: 771, scope: !1058)
!1060 = !DILocation(line: 774, column: 2, scope: !1058)
!1061 = !DILocation(line: 776, column: 30, scope: !1058)
!1062 = !DILocation(line: 305, column: 9, scope: !1063, inlinedAt: !1064)
!1063 = distinct !DISubprogram(name: "trace_probe_primary_from_call", scope: !232, file: !232, line: 301, type: !67, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1064 = distinct !DILocation(line: 693, column: 7, scope: !1065, inlinedAt: !1066)
!1065 = distinct !DISubprogram(name: "enable_trace_eprobe", scope: !1, file: !1, line: 685, type: !67, scopeLine: 687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1066 = distinct !DILocation(line: 776, column: 10, scope: !1058)
!1067 = !DILocation(line: 694, column: 6, scope: !1065, inlinedAt: !1066)
!1068 = !DILocation(line: 695, column: 3, scope: !1065, inlinedAt: !1066)
!1069 = !DILocation(line: 258, column: 16, scope: !440, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 275, column: 9, scope: !442, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 696, column: 12, scope: !1065, inlinedAt: !1066)
!1072 = !DILocation(line: 258, column: 23, scope: !440, inlinedAt: !1070)
!1073 = !DILocation(line: 258, column: 29, scope: !440, inlinedAt: !1070)
!1074 = !DILocation(line: 258, column: 10, scope: !440, inlinedAt: !1070)
!1075 = !DILocation(line: 699, column: 6, scope: !1065, inlinedAt: !1066)
!1076 = !DILocation(line: 700, column: 9, scope: !1065, inlinedAt: !1066)
!1077 = !DILocation(line: 701, column: 7, scope: !1065, inlinedAt: !1066)
!1078 = !DILocation(line: 702, column: 11, scope: !1065, inlinedAt: !1066)
!1079 = !DILocation(line: 702, column: 4, scope: !1065, inlinedAt: !1066)
!1080 = !DILocation(line: 703, column: 2, scope: !1065, inlinedAt: !1066)
!1081 = !DILocation(line: 0, scope: !1058)
!1082 = !DILocation(line: 264, column: 19, scope: !1083, inlinedAt: !1084)
!1083 = distinct !DISubprogram(name: "trace_probe_set_flag", scope: !232, file: !232, line: 261, type: !67, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1084 = distinct !DILocation(line: 704, column: 3, scope: !1065, inlinedAt: !1066)
!1085 = !DILocation(line: 706, column: 6, scope: !1065, inlinedAt: !1066)
!1086 = !DILocation(line: 707, column: 3, scope: !1065, inlinedAt: !1066)
!1087 = !DILocation(line: 310, column: 14, scope: !456, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 709, column: 2, scope: !1065, inlinedAt: !1066)
!1089 = !DILocation(line: 310, column: 21, scope: !456, inlinedAt: !1088)
!1090 = !DILocation(line: 709, column: 2, scope: !1065, inlinedAt: !1066)
!1091 = !DILocation(line: 710, column: 8, scope: !1065, inlinedAt: !1066)
!1092 = !DILocation(line: 629, column: 40, scope: !1093, inlinedAt: !1094)
!1093 = distinct !DISubprogram(name: "enable_eprobe", scope: !1, file: !1, line: 624, type: !67, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1094 = distinct !DILocation(line: 711, column: 9, scope: !1065, inlinedAt: !1066)
!1095 = !DILocation(line: 631, column: 33, scope: !1093, inlinedAt: !1094)
!1096 = !DILocation(line: 631, column: 51, scope: !1093, inlinedAt: !1094)
!1097 = !DILocation(line: 631, column: 9, scope: !1093, inlinedAt: !1094)
!1098 = !DILocation(line: 632, column: 7, scope: !1093, inlinedAt: !1094)
!1099 = !DILocation(line: 632, column: 6, scope: !1093, inlinedAt: !1094)
!1100 = !DILocation(line: 633, column: 3, scope: !1093, inlinedAt: !1094)
!1101 = !DILocation(line: 712, column: 7, scope: !1065, inlinedAt: !1066)
!1102 = !DILocation(line: 376, column: 3, scope: !1103, inlinedAt: !1104)
!1103 = distinct !DISubprogram(name: "__kmalloc_index", scope: !905, file: !905, line: 369, type: !67, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1104 = distinct !DILocation(line: 576, column: 11, scope: !904, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 714, column: 9, scope: !907, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 595, column: 10, scope: !1107, inlinedAt: !1108)
!1107 = distinct !DISubprogram(name: "new_eprobe_trigger", scope: !1, file: !1, line: 590, type: !67, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1108 = distinct !DILocation(line: 634, column: 12, scope: !1093, inlinedAt: !1094)
!1109 = !DILocation(line: 582, column: 33, scope: !904, inlinedAt: !1105)
!1110 = !DILocation(line: 339, column: 3, scope: !1111, inlinedAt: !1112)
!1111 = distinct !DISubprogram(name: "kmalloc_type", scope: !905, file: !905, line: 332, type: !67, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1112 = distinct !DILocation(line: 582, column: 20, scope: !904, inlinedAt: !1105)
!1113 = !DILocation(line: 582, column: 5, scope: !904, inlinedAt: !1105)
!1114 = !DILocation(line: 581, column: 10, scope: !904, inlinedAt: !1105)
!1115 = !DILocation(line: 376, column: 3, scope: !1103, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 576, column: 11, scope: !904, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 714, column: 9, scope: !907, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 596, column: 12, scope: !1107, inlinedAt: !1108)
!1119 = !DILocation(line: 582, column: 33, scope: !904, inlinedAt: !1117)
!1120 = !DILocation(line: 339, column: 3, scope: !1111, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 582, column: 20, scope: !904, inlinedAt: !1117)
!1122 = !DILocation(line: 582, column: 5, scope: !904, inlinedAt: !1117)
!1123 = !DILocation(line: 581, column: 10, scope: !904, inlinedAt: !1117)
!1124 = !DILocation(line: 597, column: 7, scope: !1107, inlinedAt: !1108)
!1125 = !DILocation(line: 597, column: 15, scope: !1107, inlinedAt: !1108)
!1126 = !DILocation(line: 597, column: 19, scope: !1107, inlinedAt: !1108)
!1127 = !DILocation(line: 597, column: 6, scope: !1107, inlinedAt: !1108)
!1128 = !DILocation(line: 598, column: 9, scope: !1107, inlinedAt: !1108)
!1129 = !DILocation(line: 598, column: 3, scope: !1107, inlinedAt: !1108)
!1130 = !DILocation(line: 599, column: 3, scope: !1107, inlinedAt: !1108)
!1131 = !DILocation(line: 635, column: 6, scope: !1093, inlinedAt: !1094)
!1132 = !DILocation(line: 603, column: 2, scope: !1107, inlinedAt: !1108)
!1133 = !DILocation(line: 603, column: 11, scope: !1107, inlinedAt: !1108)
!1134 = !DILocation(line: 603, column: 17, scope: !1107, inlinedAt: !1108)
!1135 = !DILocation(line: 604, column: 17, scope: !1107, inlinedAt: !1108)
!1136 = !DILocation(line: 605, column: 11, scope: !1107, inlinedAt: !1108)
!1137 = !DILocation(line: 605, column: 15, scope: !1107, inlinedAt: !1108)
!1138 = !DILocation(line: 612, column: 11, scope: !1107, inlinedAt: !1108)
!1139 = !DILocation(line: 612, column: 19, scope: !1107, inlinedAt: !1108)
!1140 = !DILocation(line: 614, column: 27, scope: !1107, inlinedAt: !1108)
!1141 = !DILocation(line: 37, column: 2, scope: !517, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 614, column: 2, scope: !1107, inlinedAt: !1108)
!1143 = !DILocation(line: 38, column: 8, scope: !517, inlinedAt: !1142)
!1144 = !DILocation(line: 38, column: 13, scope: !517, inlinedAt: !1142)
!1145 = !DILocation(line: 615, column: 2, scope: !1107, inlinedAt: !1108)
!1146 = !DILocation(line: 617, column: 14, scope: !1107, inlinedAt: !1108)
!1147 = !DILocation(line: 618, column: 9, scope: !1107, inlinedAt: !1108)
!1148 = !DILocation(line: 618, column: 12, scope: !1107, inlinedAt: !1108)
!1149 = !DILocation(line: 619, column: 11, scope: !1107, inlinedAt: !1108)
!1150 = !DILocation(line: 619, column: 24, scope: !1107, inlinedAt: !1108)
!1151 = !DILocation(line: 36, column: 9, scope: !727, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 635, column: 6, scope: !1093, inlinedAt: !1094)
!1153 = !DILocation(line: 638, column: 21, scope: !1093, inlinedAt: !1094)
!1154 = !DILocation(line: 638, column: 43, scope: !1093, inlinedAt: !1094)
!1155 = !DILocation(line: 128, column: 28, scope: !1156, inlinedAt: !1158)
!1156 = distinct !DISubprogram(name: "list_add_tail_rcu", scope: !1157, file: !1157, line: 125, type: !67, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1157 = !DIFile(filename: "../include/linux/rculist.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1158 = distinct !DILocation(line: 638, column: 2, scope: !1093, inlinedAt: !1094)
!1159 = !DILocation(line: 79, column: 7, scope: !1160, inlinedAt: !1161)
!1160 = distinct !DISubprogram(name: "__list_add_rcu", scope: !1157, file: !1157, line: 76, type: !67, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1161 = distinct !DILocation(line: 128, column: 2, scope: !1156, inlinedAt: !1158)
!1162 = !DILocation(line: 79, column: 6, scope: !1160, inlinedAt: !1161)
!1163 = !DILocation(line: 80, column: 3, scope: !1160, inlinedAt: !1161)
!1164 = !DILocation(line: 82, column: 12, scope: !1160, inlinedAt: !1161)
!1165 = !DILocation(line: 83, column: 12, scope: !1160, inlinedAt: !1161)
!1166 = !DILocation(line: 84, column: 2, scope: !1160, inlinedAt: !1161)
!1167 = !{i64 2151729608}
!1168 = !DILocation(line: 85, column: 13, scope: !1160, inlinedAt: !1161)
!1169 = !DILocation(line: 86, column: 1, scope: !1160, inlinedAt: !1161)
!1170 = !DILocation(line: 640, column: 2, scope: !1093, inlinedAt: !1094)
!1171 = !DILocation(line: 641, column: 2, scope: !1093, inlinedAt: !1094)
!1172 = !DILocation(line: 310, column: 14, scope: !456, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 709, column: 2, scope: !1065, inlinedAt: !1066)
!1174 = !DILocation(line: 310, column: 21, scope: !456, inlinedAt: !1173)
!1175 = distinct !{!1175, !1090, !1176}
!1176 = !DILocation(line: 715, column: 2, scope: !1065, inlinedAt: !1066)
!1177 = !DILocation(line: 636, column: 18, scope: !1093, inlinedAt: !1094)
!1178 = !DILocation(line: 31, column: 9, scope: !732, inlinedAt: !1179)
!1179 = distinct !DILocation(line: 636, column: 10, scope: !1093, inlinedAt: !1094)
!1180 = !DILocation(line: 713, column: 4, scope: !1065, inlinedAt: !1066)
!1181 = !DILocation(line: 719, column: 7, scope: !1065, inlinedAt: !1066)
!1182 = !DILocation(line: 720, column: 19, scope: !1065, inlinedAt: !1066)
!1183 = !DILocation(line: 720, column: 29, scope: !1065, inlinedAt: !1066)
!1184 = !DILocation(line: 720, column: 4, scope: !1065, inlinedAt: !1066)
!1185 = !DILocation(line: 721, column: 7, scope: !1065, inlinedAt: !1066)
!1186 = !DILocation(line: 722, column: 28, scope: !1065, inlinedAt: !1066)
!1187 = !DILocation(line: 722, column: 4, scope: !1065, inlinedAt: !1066)
!1188 = !DILocation(line: 724, column: 27, scope: !1065, inlinedAt: !1066)
!1189 = !DILocation(line: 270, column: 6, scope: !1190, inlinedAt: !1191)
!1190 = distinct !DISubprogram(name: "trace_probe_clear_flag", scope: !232, file: !232, line: 267, type: !67, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1191 = distinct !DILocation(line: 724, column: 4, scope: !1065, inlinedAt: !1066)
!1192 = !DILocation(line: 270, column: 19, scope: !1190, inlinedAt: !1191)
!1193 = !DILocation(line: 727, column: 9, scope: !1065, inlinedAt: !1066)
!1194 = !DILocation(line: 727, column: 2, scope: !1065, inlinedAt: !1066)
!1195 = !DILocation(line: 778, column: 31, scope: !1058)
!1196 = !DILocation(line: 305, column: 9, scope: !1063, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 736, column: 7, scope: !1198, inlinedAt: !1199)
!1198 = distinct !DISubprogram(name: "disable_trace_eprobe", scope: !1, file: !1, line: 730, type: !67, scopeLine: 732, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1199 = distinct !DILocation(line: 778, column: 10, scope: !1058)
!1200 = !DILocation(line: 737, column: 6, scope: !1198, inlinedAt: !1199)
!1201 = !DILocation(line: 738, column: 3, scope: !1198, inlinedAt: !1199)
!1202 = !DILocation(line: 740, column: 6, scope: !1198, inlinedAt: !1199)
!1203 = !DILocation(line: 741, column: 8, scope: !1198, inlinedAt: !1199)
!1204 = !DILocation(line: 741, column: 7, scope: !1198, inlinedAt: !1199)
!1205 = !DILocation(line: 742, column: 4, scope: !1198, inlinedAt: !1199)
!1206 = !DILocation(line: 328, column: 33, scope: !1207, inlinedAt: !1208)
!1207 = distinct !DISubprogram(name: "trace_probe_has_single_file", scope: !232, file: !232, line: 326, type: !67, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1208 = distinct !DILocation(line: 743, column: 8, scope: !1198, inlinedAt: !1199)
!1209 = !DILocation(line: 328, column: 40, scope: !1207, inlinedAt: !1208)
!1210 = !DILocation(line: 292, column: 9, scope: !462, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 370, column: 10, scope: !470, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 328, column: 11, scope: !1207, inlinedAt: !1208)
!1213 = !DILocation(line: 292, column: 31, scope: !462, inlinedAt: !1211)
!1214 = !DILocation(line: 370, column: 27, scope: !470, inlinedAt: !1212)
!1215 = !DILocation(line: 370, column: 31, scope: !470, inlinedAt: !1212)
!1216 = !DILocation(line: 370, column: 51, scope: !470, inlinedAt: !1212)
!1217 = !DILocation(line: 370, column: 42, scope: !470, inlinedAt: !1212)
!1218 = !DILocation(line: 743, column: 7, scope: !1198, inlinedAt: !1199)
!1219 = !DILocation(line: 744, column: 4, scope: !1198, inlinedAt: !1199)
!1220 = !DILocation(line: 757, column: 6, scope: !1198, inlinedAt: !1199)
!1221 = !DILocation(line: 745, column: 26, scope: !1198, inlinedAt: !1199)
!1222 = !DILocation(line: 746, column: 2, scope: !1198, inlinedAt: !1199)
!1223 = !DILocation(line: 747, column: 26, scope: !1198, inlinedAt: !1199)
!1224 = !DILocation(line: 270, column: 6, scope: !1190, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 747, column: 3, scope: !1198, inlinedAt: !1199)
!1226 = !DILocation(line: 0, scope: !1198, inlinedAt: !1199)
!1227 = !DILocation(line: 258, column: 16, scope: !440, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 275, column: 9, scope: !442, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 749, column: 7, scope: !1198, inlinedAt: !1199)
!1230 = !DILocation(line: 258, column: 23, scope: !440, inlinedAt: !1228)
!1231 = !DILocation(line: 258, column: 29, scope: !440, inlinedAt: !1228)
!1232 = !DILocation(line: 258, column: 10, scope: !440, inlinedAt: !1228)
!1233 = !DILocation(line: 749, column: 6, scope: !1198, inlinedAt: !1199)
!1234 = !DILocation(line: 310, column: 21, scope: !456, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 750, column: 3, scope: !1198, inlinedAt: !1199)
!1236 = !DILocation(line: 750, column: 3, scope: !1198, inlinedAt: !1199)
!1237 = !DILocation(line: 751, column: 9, scope: !1198, inlinedAt: !1199)
!1238 = !DILocation(line: 752, column: 29, scope: !1198, inlinedAt: !1199)
!1239 = !DILocation(line: 752, column: 4, scope: !1198, inlinedAt: !1199)
!1240 = !DILocation(line: 310, column: 14, scope: !456, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 750, column: 3, scope: !1198, inlinedAt: !1199)
!1242 = !DILocation(line: 310, column: 21, scope: !456, inlinedAt: !1241)
!1243 = distinct !{!1243, !1236, !1244}
!1244 = !DILocation(line: 753, column: 3, scope: !1198, inlinedAt: !1199)
!1245 = !DILocation(line: 754, column: 2, scope: !1198, inlinedAt: !1199)
!1246 = !DILocation(line: 764, column: 27, scope: !1198, inlinedAt: !1199)
!1247 = !DILocation(line: 764, column: 3, scope: !1198, inlinedAt: !1199)
!1248 = !DILocation(line: 786, column: 3, scope: !1058)
!1249 = !DILocation(line: 789, column: 2, scope: !1058)
!1250 = !DILocation(line: 790, column: 1, scope: !1058)
!1251 = distinct !DISubprogram(name: "print_eprobe_event", scope: !1, file: !1, line: 263, type: !67, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1252 = !DILocation(line: 265, scope: !1251)
!1253 = !DILocation(line: 269, column: 31, scope: !1251)
!1254 = !DILocation(line: 274, column: 50, scope: !1251)
!1255 = !DILocation(line: 305, column: 9, scope: !1063, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 275, column: 7, scope: !1251)
!1257 = !DILocation(line: 277, column: 6, scope: !1251)
!1258 = !DILocation(line: 278, column: 3, scope: !1251)
!1259 = !DILocation(line: 281, column: 13, scope: !1251)
!1260 = !DILocation(line: 281, column: 26, scope: !1251)
!1261 = !DILocation(line: 280, column: 31, scope: !405, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 283, column: 31, scope: !1251)
!1263 = !DILocation(line: 443, column: 12, scope: !408, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 280, column: 9, scope: !405, inlinedAt: !1262)
!1265 = !DILocation(line: 443, column: 18, scope: !408, inlinedAt: !1264)
!1266 = !DILocation(line: 443, column: 6, scope: !408, inlinedAt: !1264)
!1267 = !DILocation(line: 444, column: 16, scope: !408, inlinedAt: !1264)
!1268 = !DILocation(line: 444, column: 10, scope: !408, inlinedAt: !1264)
!1269 = !DILocation(line: 444, column: 21, scope: !408, inlinedAt: !1264)
!1270 = !DILocation(line: 444, column: 31, scope: !408, inlinedAt: !1264)
!1271 = !DILocation(line: 446, column: 10, scope: !408, inlinedAt: !1264)
!1272 = !DILocation(line: 446, column: 16, scope: !408, inlinedAt: !1264)
!1273 = !DILocation(line: 446, column: 3, scope: !408, inlinedAt: !1264)
!1274 = !DILocation(line: 0, scope: !408, inlinedAt: !1264)
!1275 = !DILocation(line: 283, column: 2, scope: !1251)
!1276 = !DILocation(line: 285, column: 17, scope: !1251)
!1277 = !DILocation(line: 286, column: 6, scope: !1251)
!1278 = !DILocation(line: 288, column: 40, scope: !1251)
!1279 = !DILocation(line: 288, column: 47, scope: !1251)
!1280 = !DILocation(line: 443, column: 12, scope: !408, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 289, column: 6, scope: !1251)
!1282 = !DILocation(line: 443, column: 18, scope: !408, inlinedAt: !1281)
!1283 = !DILocation(line: 443, column: 6, scope: !408, inlinedAt: !1281)
!1284 = !DILocation(line: 444, column: 16, scope: !408, inlinedAt: !1281)
!1285 = !DILocation(line: 444, column: 10, scope: !408, inlinedAt: !1281)
!1286 = !DILocation(line: 444, column: 21, scope: !408, inlinedAt: !1281)
!1287 = !DILocation(line: 444, column: 27, scope: !408, inlinedAt: !1281)
!1288 = !DILocation(line: 444, column: 31, scope: !408, inlinedAt: !1281)
!1289 = !DILocation(line: 446, column: 10, scope: !408, inlinedAt: !1281)
!1290 = !DILocation(line: 446, column: 16, scope: !408, inlinedAt: !1281)
!1291 = !DILocation(line: 446, column: 3, scope: !408, inlinedAt: !1281)
!1292 = !DILocation(line: 0, scope: !408, inlinedAt: !1281)
!1293 = !DILocation(line: 288, column: 3, scope: !1251)
!1294 = !DILocation(line: 290, column: 2, scope: !1251)
!1295 = !DILocation(line: 291, column: 20, scope: !1251)
!1296 = !DILocation(line: 291, column: 3, scope: !1251)
!1297 = !DILocation(line: 294, column: 2, scope: !1251)
!1298 = !DILocation(line: 296, column: 30, scope: !1251)
!1299 = !DILocation(line: 296, column: 40, scope: !1251)
!1300 = !DILocation(line: 297, column: 16, scope: !1251)
!1301 = !DILocation(line: 223, column: 16, scope: !1302, inlinedAt: !1303)
!1302 = distinct !DISubprogram(name: "print_probe_args", scope: !74, file: !74, line: 217, type: !67, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1303 = distinct !DILocation(line: 296, column: 6, scope: !1251)
!1304 = !DILocation(line: 223, column: 2, scope: !1302, inlinedAt: !1303)
!1305 = !DILocation(line: 226, column: 34, scope: !1302, inlinedAt: !1303)
!1306 = !DILocation(line: 226, column: 3, scope: !1302, inlinedAt: !1303)
!1307 = !DILocation(line: 227, column: 7, scope: !1302, inlinedAt: !1303)
!1308 = !DILocation(line: 228, column: 12, scope: !1302, inlinedAt: !1303)
!1309 = !DILocation(line: 228, column: 18, scope: !1302, inlinedAt: !1303)
!1310 = !DILocation(line: 228, column: 37, scope: !1302, inlinedAt: !1303)
!1311 = !DILocation(line: 228, column: 32, scope: !1302, inlinedAt: !1303)
!1312 = !DILocation(line: 228, column: 9, scope: !1302, inlinedAt: !1303)
!1313 = !DILocation(line: 228, column: 8, scope: !1302, inlinedAt: !1303)
!1314 = !DILocation(line: 232, column: 3, scope: !1302, inlinedAt: !1303)
!1315 = !DILocation(line: 234, column: 22, scope: !1302, inlinedAt: !1303)
!1316 = !DILocation(line: 234, column: 17, scope: !1302, inlinedAt: !1303)
!1317 = !DILocation(line: 234, column: 3, scope: !1302, inlinedAt: !1303)
!1318 = !DILocation(line: 233, column: 17, scope: !1302, inlinedAt: !1303)
!1319 = !DILocation(line: 233, column: 12, scope: !1302, inlinedAt: !1303)
!1320 = !DILocation(line: 235, column: 12, scope: !1302, inlinedAt: !1303)
!1321 = !DILocation(line: 235, column: 18, scope: !1302, inlinedAt: !1303)
!1322 = !DILocation(line: 235, column: 9, scope: !1302, inlinedAt: !1303)
!1323 = !DILocation(line: 235, column: 8, scope: !1302, inlinedAt: !1303)
!1324 = !DILocation(line: 237, column: 30, scope: !1302, inlinedAt: !1303)
!1325 = !DILocation(line: 237, column: 36, scope: !1302, inlinedAt: !1303)
!1326 = !DILocation(line: 237, column: 24, scope: !1302, inlinedAt: !1303)
!1327 = !DILocation(line: 237, column: 22, scope: !1302, inlinedAt: !1303)
!1328 = !DILocation(line: 237, column: 4, scope: !1302, inlinedAt: !1303)
!1329 = !DILocation(line: 238, column: 12, scope: !1302, inlinedAt: !1303)
!1330 = !DILocation(line: 238, column: 18, scope: !1302, inlinedAt: !1303)
!1331 = !DILocation(line: 238, column: 6, scope: !1302, inlinedAt: !1303)
!1332 = !DILocation(line: 234, column: 30, scope: !1302, inlinedAt: !1303)
!1333 = distinct !{!1333, !1317, !1334}
!1334 = !DILocation(line: 239, column: 3, scope: !1302, inlinedAt: !1303)
!1335 = !DILocation(line: 240, column: 2, scope: !1302, inlinedAt: !1303)
!1336 = !DILocation(line: 223, column: 28, scope: !1302, inlinedAt: !1303)
!1337 = distinct !{!1337, !1304, !1335}
!1338 = !DILocation(line: 0, scope: !1302, inlinedAt: !1303)
!1339 = !DILocation(line: 298, column: 3, scope: !1251)
!1340 = !DILocation(line: 241, column: 2, scope: !1302, inlinedAt: !1303)
!1341 = !DILocation(line: 300, column: 17, scope: !1251)
!1342 = !DILocation(line: 300, column: 2, scope: !1251)
!1343 = !DILocation(line: 302, column: 9, scope: !1251)
!1344 = !DILocation(line: 302, column: 2, scope: !1251)
!1345 = distinct !DISubprogram(name: "eprobe_event_define_fields", scope: !1, file: !1, line: 243, type: !67, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1346 = !DILocation(line: 244, scope: !1345)
!1347 = !DILocation(line: 305, column: 9, scope: !1063, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 248, column: 7, scope: !1345)
!1349 = !DILocation(line: 249, column: 6, scope: !1345)
!1350 = !DILocation(line: 250, column: 3, scope: !1345)
!1351 = !DILocation(line: 252, column: 38, scope: !1345)
!1352 = !DILocation(line: 252, column: 9, scope: !1345)
!1353 = !DILocation(line: 252, column: 2, scope: !1345)
!1354 = !DILocation(line: 0, scope: !1345)
!1355 = !DILocation(line: 253, column: 1, scope: !1345)
!1356 = distinct !DISubprogram(name: "disable_eprobe", scope: !1, file: !1, line: 650, type: !67, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1357 = !DILocation(line: 652, scope: !1356)
!1358 = !DILocation(line: 657, column: 33, scope: !1356)
!1359 = !DILocation(line: 657, column: 51, scope: !1356)
!1360 = !DILocation(line: 657, column: 9, scope: !1356)
!1361 = !DILocation(line: 658, column: 7, scope: !1356)
!1362 = !DILocation(line: 658, column: 6, scope: !1356)
!1363 = !DILocation(line: 659, column: 3, scope: !1356)
!1364 = !DILocation(line: 661, column: 2, scope: !1356)
!1365 = !DILocation(line: 662, column: 18, scope: !1356)
!1366 = !DILocation(line: 662, column: 24, scope: !1356)
!1367 = !DILocation(line: 662, column: 7, scope: !1356)
!1368 = !DILocation(line: 664, column: 20, scope: !1356)
!1369 = !DILocation(line: 665, column: 14, scope: !1356)
!1370 = !DILocation(line: 665, column: 17, scope: !1356)
!1371 = !DILocation(line: 665, column: 7, scope: !1356)
!1372 = !DILocation(line: 0, scope: !1356)
!1373 = distinct !{!1373, !1364, !1374}
!1374 = !DILocation(line: 667, column: 2, scope: !1356)
!1375 = !DILocation(line: 669, column: 3, scope: !1356)
!1376 = !DILocation(line: 666, column: 4, scope: !1356)
!1377 = !DILocation(line: 671, column: 16, scope: !1356)
!1378 = !DILocation(line: 134, column: 7, scope: !501, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 157, column: 2, scope: !1380, inlinedAt: !1381)
!1380 = distinct !DISubprogram(name: "list_del_rcu", scope: !1157, file: !1157, line: 155, type: !67, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1381 = distinct !DILocation(line: 671, column: 2, scope: !1356)
!1382 = !DILocation(line: 134, column: 6, scope: !501, inlinedAt: !1379)
!1383 = !DILocation(line: 135, column: 3, scope: !501, inlinedAt: !1379)
!1384 = !DILocation(line: 137, column: 13, scope: !501, inlinedAt: !1379)
!1385 = !DILocation(line: 137, column: 20, scope: !501, inlinedAt: !1379)
!1386 = !DILocation(line: 137, column: 33, scope: !501, inlinedAt: !1379)
!1387 = !DILocation(line: 114, column: 8, scope: !511, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 137, column: 2, scope: !501, inlinedAt: !1379)
!1389 = !DILocation(line: 114, column: 13, scope: !511, inlinedAt: !1388)
!1390 = !DILocation(line: 115, column: 2, scope: !511, inlinedAt: !1388)
!1391 = !DILocation(line: 138, column: 1, scope: !501, inlinedAt: !1379)
!1392 = !DILocation(line: 158, column: 9, scope: !1380, inlinedAt: !1381)
!1393 = !DILocation(line: 158, column: 14, scope: !1380, inlinedAt: !1381)
!1394 = !DILocation(line: 673, column: 2, scope: !1356)
!1395 = !DILocation(line: 674, column: 2, scope: !1356)
!1396 = !DILocation(line: 93, column: 2, scope: !1397, inlinedAt: !1399)
!1397 = distinct !DISubprogram(name: "tracepoint_synchronize_unregister", scope: !1398, file: !1398, line: 91, type: !67, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1398 = !DIFile(filename: "../include/linux/tracepoint.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1399 = distinct !DILocation(line: 677, column: 2, scope: !1356)
!1400 = !DILocation(line: 94, column: 2, scope: !1397, inlinedAt: !1399)
!1401 = !DILocation(line: 679, column: 2, scope: !1356)
!1402 = !DILocation(line: 680, column: 2, scope: !1356)
!1403 = !DILocation(line: 682, column: 2, scope: !1356)
!1404 = !DILocation(line: 683, column: 1, scope: !1356)
!1405 = distinct !DISubprogram(name: "eprobe_trigger_func", scope: !1, file: !1, line: 534, type: !67, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1406 = !DILocation(line: 537, scope: !1405)
!1407 = !DILocation(line: 538, column: 36, scope: !1405)
!1408 = !DILocation(line: 484, column: 65, scope: !1409, inlinedAt: !1410)
!1409 = distinct !DISubprogram(name: "__eprobe_trace_func", scope: !1, file: !1, line: 481, type: !67, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1410 = distinct !DILocation(line: 540, column: 2, scope: !1405)
!1411 = !DILocation(line: 291, column: 14, scope: !757, inlinedAt: !1412)
!1412 = distinct !DILocation(line: 484, column: 34, scope: !1409, inlinedAt: !1410)
!1413 = !DILocation(line: 291, column: 21, scope: !757, inlinedAt: !1412)
!1414 = !DILocation(line: 485, column: 2, scope: !1409, inlinedAt: !1410)
!1415 = !DILocation(line: 485, column: 28, scope: !1409, inlinedAt: !1410)
!1416 = !DILocation(line: 488, column: 6, scope: !1409, inlinedAt: !1410)
!1417 = !DILocation(line: 489, column: 3, scope: !1409, inlinedAt: !1410)
!1418 = !DILocation(line: 716, column: 31, scope: !1419, inlinedAt: !1420)
!1419 = distinct !DISubprogram(name: "trace_trigger_soft_disabled", scope: !409, file: !409, line: 714, type: !67, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1420 = distinct !DILocation(line: 491, column: 6, scope: !1409, inlinedAt: !1410)
!1421 = !DILocation(line: 718, column: 6, scope: !1419, inlinedAt: !1420)
!1422 = !DILocation(line: 723, column: 6, scope: !1419, inlinedAt: !1420)
!1423 = !DILocation(line: 726, column: 39, scope: !1419, inlinedAt: !1420)
!1424 = !DILocation(line: 726, column: 9, scope: !1419, inlinedAt: !1420)
!1425 = !DILocation(line: 491, column: 6, scope: !1409, inlinedAt: !1410)
!1426 = !DILocation(line: 0, scope: !1405)
!1427 = !DILocation(line: 492, column: 3, scope: !1409, inlinedAt: !1410)
!1428 = !DILocation(line: 0, scope: !1419, inlinedAt: !1420)
!1429 = !DILocation(line: 494, column: 34, scope: !1409, inlinedAt: !1410)
!1430 = !DILocation(line: 347, column: 22, scope: !1431, inlinedAt: !1432)
!1431 = distinct !DISubprogram(name: "get_eprobe_size", scope: !1, file: !1, line: 342, type: !67, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1432 = distinct !DILocation(line: 494, column: 10, scope: !1409, inlinedAt: !1410)
!1433 = !DILocation(line: 347, column: 16, scope: !1431, inlinedAt: !1432)
!1434 = !DILocation(line: 347, column: 2, scope: !1431, inlinedAt: !1432)
!1435 = !DILocation(line: 349, column: 7, scope: !1431, inlinedAt: !1432)
!1436 = !{i8 0, i8 2}
!1437 = !DILocation(line: 348, column: 18, scope: !1431, inlinedAt: !1432)
!1438 = !DILocation(line: 352, column: 31, scope: !1431, inlinedAt: !1432)
!1439 = !DILocation(line: 352, column: 10, scope: !1431, inlinedAt: !1432)
!1440 = !DILocation(line: 353, column: 41, scope: !1431, inlinedAt: !1432)
!1441 = !DILocation(line: 353, column: 46, scope: !1431, inlinedAt: !1432)
!1442 = !DILocation(line: 78, column: 2, scope: !73, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 353, column: 10, scope: !1431, inlinedAt: !1432)
!1444 = !DILocation(line: 0, scope: !73, inlinedAt: !1443)
!1445 = !DILocation(line: 77, column: 6, scope: !73, inlinedAt: !1443)
!1446 = !DILocation(line: 78, column: 16, scope: !73, inlinedAt: !1443)
!1447 = !DILocation(line: 82, column: 2, scope: !73, inlinedAt: !1443)
!1448 = !DILocation(line: 83, column: 13, scope: !73, inlinedAt: !1443)
!1449 = !DILocation(line: 83, column: 7, scope: !73, inlinedAt: !1443)
!1450 = !DILocation(line: 84, column: 11, scope: !73, inlinedAt: !1443)
!1451 = !DILocation(line: 85, column: 31, scope: !73, inlinedAt: !1443)
!1452 = !DILocation(line: 85, column: 51, scope: !73, inlinedAt: !1443)
!1453 = !DILocation(line: 85, column: 43, scope: !73, inlinedAt: !1443)
!1454 = !DILocation(line: 473, column: 25, scope: !87, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 85, column: 10, scope: !73, inlinedAt: !1443)
!1456 = !DILocation(line: 473, column: 6, scope: !87, inlinedAt: !1455)
!1457 = !DILocation(line: 474, column: 30, scope: !87, inlinedAt: !1455)
!1458 = !DILocation(line: 466, column: 9, scope: !92, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 474, column: 10, scope: !87, inlinedAt: !1455)
!1460 = !DILocation(line: 474, column: 3, scope: !87, inlinedAt: !1455)
!1461 = !DILocation(line: 476, column: 34, scope: !87, inlinedAt: !1455)
!1462 = !DILocation(line: 476, column: 9, scope: !87, inlinedAt: !1455)
!1463 = !DILocation(line: 476, column: 2, scope: !87, inlinedAt: !1455)
!1464 = !DILocation(line: 88, column: 11, scope: !73, inlinedAt: !1443)
!1465 = !DILocation(line: 90, column: 6, scope: !73, inlinedAt: !1443)
!1466 = !DILocation(line: 90, column: 26, scope: !73, inlinedAt: !1443)
!1467 = !DILocation(line: 90, column: 18, scope: !73, inlinedAt: !1443)
!1468 = !DILocation(line: 466, column: 9, scope: !92, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 89, column: 10, scope: !73, inlinedAt: !1443)
!1470 = !DILocation(line: 92, column: 4, scope: !73, inlinedAt: !1443)
!1471 = !DILocation(line: 98, column: 2, scope: !73, inlinedAt: !1443)
!1472 = !DILocation(line: 93, column: 7, scope: !73, inlinedAt: !1443)
!1473 = !DILocation(line: 94, column: 11, scope: !73, inlinedAt: !1443)
!1474 = !DILocation(line: 94, column: 4, scope: !73, inlinedAt: !1443)
!1475 = !DILocation(line: 95, column: 7, scope: !73, inlinedAt: !1443)
!1476 = !DILocation(line: 96, column: 2, scope: !73, inlinedAt: !1443)
!1477 = distinct !{!1477, !1447, !1478}
!1478 = !DILocation(line: 96, column: 12, scope: !73, inlinedAt: !1443)
!1479 = !DILocation(line: 101, column: 6, scope: !73, inlinedAt: !1443)
!1480 = !DILocation(line: 102, column: 7, scope: !73, inlinedAt: !1443)
!1481 = !DILocation(line: 103, column: 29, scope: !73, inlinedAt: !1443)
!1482 = !DILocation(line: 103, column: 41, scope: !73, inlinedAt: !1443)
!1483 = !DILocation(line: 103, column: 33, scope: !73, inlinedAt: !1443)
!1484 = !DILocation(line: 390, column: 2, scope: !120, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 103, column: 10, scope: !73, inlinedAt: !1443)
!1486 = !DILocation(line: 390, column: 5, scope: !120, inlinedAt: !1485)
!1487 = !DILocation(line: 393, column: 11, scope: !120, inlinedAt: !1485)
!1488 = !DILocation(line: 393, column: 6, scope: !120, inlinedAt: !1485)
!1489 = !DILocation(line: 397, column: 2, scope: !120, inlinedAt: !1485)
!1490 = !DILocation(line: 394, column: 34, scope: !120, inlinedAt: !1485)
!1491 = !DILocation(line: 380, column: 30, scope: !129, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 394, column: 10, scope: !120, inlinedAt: !1485)
!1493 = !DILocation(line: 382, column: 9, scope: !129, inlinedAt: !1492)
!1494 = !DILocation(line: 394, column: 3, scope: !120, inlinedAt: !1485)
!1495 = !DILocation(line: 0, scope: !120, inlinedAt: !1485)
!1496 = !DILocation(line: 398, column: 44, scope: !120, inlinedAt: !1485)
!1497 = !DILocation(line: 398, column: 49, scope: !120, inlinedAt: !1485)
!1498 = !DILocation(line: 398, column: 9, scope: !120, inlinedAt: !1485)
!1499 = !DILocation(line: 399, column: 6, scope: !120, inlinedAt: !1485)
!1500 = !DILocation(line: 400, column: 11, scope: !120, inlinedAt: !1485)
!1501 = !DILocation(line: 400, column: 13, scope: !120, inlinedAt: !1485)
!1502 = !DILocation(line: 400, column: 16, scope: !120, inlinedAt: !1485)
!1503 = !DILocation(line: 400, column: 20, scope: !120, inlinedAt: !1485)
!1504 = !DILocation(line: 400, column: 25, scope: !120, inlinedAt: !1485)
!1505 = !DILocation(line: 400, column: 28, scope: !120, inlinedAt: !1485)
!1506 = !DILocation(line: 400, column: 32, scope: !120, inlinedAt: !1485)
!1507 = !DILocation(line: 400, column: 2, scope: !120, inlinedAt: !1485)
!1508 = distinct !{!1508, !1489, !1509}
!1509 = !DILocation(line: 400, column: 49, scope: !120, inlinedAt: !1485)
!1510 = !DILocation(line: 402, column: 14, scope: !120, inlinedAt: !1485)
!1511 = !DILocation(line: 402, column: 9, scope: !120, inlinedAt: !1485)
!1512 = !DILocation(line: 402, column: 21, scope: !120, inlinedAt: !1485)
!1513 = !DILocation(line: 402, column: 27, scope: !120, inlinedAt: !1485)
!1514 = !DILocation(line: 403, column: 1, scope: !120, inlinedAt: !1485)
!1515 = !DILocation(line: 105, column: 4, scope: !73, inlinedAt: !1443)
!1516 = !DILocation(line: 107, column: 35, scope: !73, inlinedAt: !1443)
!1517 = !DILocation(line: 107, column: 47, scope: !73, inlinedAt: !1443)
!1518 = !DILocation(line: 107, column: 39, scope: !73, inlinedAt: !1443)
!1519 = !DILocation(line: 380, column: 30, scope: !129, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 107, column: 11, scope: !73, inlinedAt: !1443)
!1521 = !DILocation(line: 382, column: 9, scope: !129, inlinedAt: !1520)
!1522 = !DILocation(line: 107, column: 8, scope: !73, inlinedAt: !1443)
!1523 = !DILocation(line: 109, column: 4, scope: !73, inlinedAt: !1443)
!1524 = !DILocation(line: 111, column: 4, scope: !73, inlinedAt: !1443)
!1525 = !DILocation(line: 114, column: 2, scope: !73, inlinedAt: !1443)
!1526 = !DILocation(line: 116, column: 19, scope: !73, inlinedAt: !1443)
!1527 = !DILocation(line: 9, column: 16, scope: !166, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 116, column: 3, scope: !73, inlinedAt: !1443)
!1529 = !DILocation(line: 9, column: 2, scope: !166, inlinedAt: !1528)
!1530 = !DILocation(line: 11, column: 20, scope: !166, inlinedAt: !1528)
!1531 = !DILocation(line: 11, column: 16, scope: !166, inlinedAt: !1528)
!1532 = !DILocation(line: 11, column: 14, scope: !166, inlinedAt: !1528)
!1533 = !DILocation(line: 12, column: 3, scope: !166, inlinedAt: !1528)
!1534 = !DILocation(line: 14, column: 22, scope: !166, inlinedAt: !1528)
!1535 = !DILocation(line: 14, column: 17, scope: !166, inlinedAt: !1528)
!1536 = !DILocation(line: 14, column: 15, scope: !166, inlinedAt: !1528)
!1537 = !DILocation(line: 15, column: 3, scope: !166, inlinedAt: !1528)
!1538 = !DILocation(line: 17, column: 22, scope: !166, inlinedAt: !1528)
!1539 = !DILocation(line: 17, column: 15, scope: !166, inlinedAt: !1528)
!1540 = !DILocation(line: 18, column: 3, scope: !166, inlinedAt: !1528)
!1541 = !DILocation(line: 21, column: 22, scope: !166, inlinedAt: !1528)
!1542 = !DILocation(line: 21, column: 17, scope: !166, inlinedAt: !1528)
!1543 = !DILocation(line: 21, column: 15, scope: !166, inlinedAt: !1528)
!1544 = !DILocation(line: 22, column: 3, scope: !166, inlinedAt: !1528)
!1545 = !DILocation(line: 24, column: 27, scope: !166, inlinedAt: !1528)
!1546 = !DILocation(line: 24, column: 25, scope: !166, inlinedAt: !1528)
!1547 = !DILocation(line: 25, column: 2, scope: !166, inlinedAt: !1528)
!1548 = !DILocation(line: 119, column: 18, scope: !73, inlinedAt: !1443)
!1549 = !DILocation(line: 119, column: 32, scope: !73, inlinedAt: !1443)
!1550 = !DILocation(line: 119, column: 24, scope: !73, inlinedAt: !1443)
!1551 = !DILocation(line: 119, column: 44, scope: !73, inlinedAt: !1443)
!1552 = !DILocation(line: 119, column: 36, scope: !73, inlinedAt: !1443)
!1553 = !DILocation(line: 119, column: 58, scope: !73, inlinedAt: !1443)
!1554 = !DILocation(line: 473, column: 25, scope: !87, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 119, column: 3, scope: !73, inlinedAt: !1443)
!1556 = !DILocation(line: 473, column: 6, scope: !87, inlinedAt: !1555)
!1557 = !DILocation(line: 474, column: 30, scope: !87, inlinedAt: !1555)
!1558 = !DILocation(line: 466, column: 9, scope: !92, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 474, column: 10, scope: !87, inlinedAt: !1555)
!1560 = !DILocation(line: 474, column: 3, scope: !87, inlinedAt: !1555)
!1561 = !DILocation(line: 476, column: 34, scope: !87, inlinedAt: !1555)
!1562 = !DILocation(line: 476, column: 9, scope: !87, inlinedAt: !1555)
!1563 = !DILocation(line: 476, column: 2, scope: !87, inlinedAt: !1555)
!1564 = !DILocation(line: 122, column: 23, scope: !73, inlinedAt: !1443)
!1565 = !DILocation(line: 122, column: 37, scope: !73, inlinedAt: !1443)
!1566 = !DILocation(line: 122, column: 29, scope: !73, inlinedAt: !1443)
!1567 = !DILocation(line: 122, column: 49, scope: !73, inlinedAt: !1443)
!1568 = !DILocation(line: 122, column: 41, scope: !73, inlinedAt: !1443)
!1569 = !DILocation(line: 122, column: 63, scope: !73, inlinedAt: !1443)
!1570 = !DILocation(line: 466, column: 9, scope: !92, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 122, column: 3, scope: !73, inlinedAt: !1443)
!1572 = !DILocation(line: 123, column: 3, scope: !73, inlinedAt: !1443)
!1573 = !DILocation(line: 125, column: 17, scope: !73, inlinedAt: !1443)
!1574 = !DILocation(line: 125, column: 9, scope: !73, inlinedAt: !1443)
!1575 = !DILocation(line: 126, column: 28, scope: !73, inlinedAt: !1443)
!1576 = !DILocation(line: 126, column: 40, scope: !73, inlinedAt: !1443)
!1577 = !DILocation(line: 126, column: 32, scope: !73, inlinedAt: !1443)
!1578 = !DILocation(line: 436, column: 15, scope: !218, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 126, column: 9, scope: !73, inlinedAt: !1443)
!1580 = !DILocation(line: 441, column: 26, scope: !218, inlinedAt: !1579)
!1581 = !DILocation(line: 441, column: 6, scope: !218, inlinedAt: !1579)
!1582 = !DILocation(line: 442, column: 34, scope: !218, inlinedAt: !1579)
!1583 = !DILocation(line: 413, column: 15, scope: !224, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 442, column: 10, scope: !218, inlinedAt: !1579)
!1585 = !DILocation(line: 417, column: 6, scope: !224, inlinedAt: !1584)
!1586 = !DILocation(line: 418, column: 3, scope: !224, inlinedAt: !1584)
!1587 = !DILocation(line: 412, column: 30, scope: !224, inlinedAt: !1584)
!1588 = !DILocation(line: 420, column: 24, scope: !224, inlinedAt: !1584)
!1589 = !DILocation(line: 66, column: 21, scope: !231, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 420, column: 11, scope: !224, inlinedAt: !1584)
!1591 = !DILocation(line: 66, column: 19, scope: !231, inlinedAt: !1590)
!1592 = !DILocation(line: 422, column: 8, scope: !224, inlinedAt: !1584)
!1593 = !DILocation(line: 423, column: 10, scope: !224, inlinedAt: !1584)
!1594 = !DILocation(line: 423, column: 6, scope: !224, inlinedAt: !1584)
!1595 = !DILocation(line: 424, column: 18, scope: !224, inlinedAt: !1584)
!1596 = !DILocation(line: 424, column: 16, scope: !224, inlinedAt: !1584)
!1597 = !DILocation(line: 424, column: 3, scope: !224, inlinedAt: !1584)
!1598 = !DILocation(line: 445, column: 6, scope: !218, inlinedAt: !1579)
!1599 = !DILocation(line: 446, column: 3, scope: !218, inlinedAt: !1579)
!1600 = !DILocation(line: 448, column: 24, scope: !218, inlinedAt: !1579)
!1601 = !DILocation(line: 66, column: 21, scope: !231, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 448, column: 11, scope: !218, inlinedAt: !1579)
!1603 = !DILocation(line: 66, column: 19, scope: !231, inlinedAt: !1602)
!1604 = !DILocation(line: 454, column: 44, scope: !218, inlinedAt: !1579)
!1605 = !DILocation(line: 454, column: 8, scope: !218, inlinedAt: !1579)
!1606 = !DILocation(line: 455, column: 10, scope: !218, inlinedAt: !1579)
!1607 = !DILocation(line: 455, column: 6, scope: !218, inlinedAt: !1579)
!1608 = !DILocation(line: 456, column: 18, scope: !218, inlinedAt: !1579)
!1609 = !DILocation(line: 456, column: 16, scope: !218, inlinedAt: !1579)
!1610 = !DILocation(line: 456, column: 3, scope: !218, inlinedAt: !1579)
!1611 = !DILocation(line: 129, column: 17, scope: !73, inlinedAt: !1443)
!1612 = !DILocation(line: 129, column: 9, scope: !73, inlinedAt: !1443)
!1613 = !DILocation(line: 417, column: 6, scope: !224, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 130, column: 9, scope: !73, inlinedAt: !1443)
!1615 = !DILocation(line: 418, column: 3, scope: !224, inlinedAt: !1614)
!1616 = !DILocation(line: 130, column: 33, scope: !73, inlinedAt: !1443)
!1617 = !DILocation(line: 130, column: 45, scope: !73, inlinedAt: !1443)
!1618 = !DILocation(line: 130, column: 37, scope: !73, inlinedAt: !1443)
!1619 = !DILocation(line: 413, column: 15, scope: !224, inlinedAt: !1614)
!1620 = !DILocation(line: 412, column: 30, scope: !224, inlinedAt: !1614)
!1621 = !DILocation(line: 420, column: 24, scope: !224, inlinedAt: !1614)
!1622 = !DILocation(line: 66, column: 21, scope: !231, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 420, column: 11, scope: !224, inlinedAt: !1614)
!1624 = !DILocation(line: 66, column: 19, scope: !231, inlinedAt: !1623)
!1625 = !DILocation(line: 422, column: 8, scope: !224, inlinedAt: !1614)
!1626 = !DILocation(line: 423, column: 10, scope: !224, inlinedAt: !1614)
!1627 = !DILocation(line: 423, column: 6, scope: !224, inlinedAt: !1614)
!1628 = !DILocation(line: 424, column: 18, scope: !224, inlinedAt: !1614)
!1629 = !DILocation(line: 424, column: 16, scope: !224, inlinedAt: !1614)
!1630 = !DILocation(line: 424, column: 3, scope: !224, inlinedAt: !1614)
!1631 = !DILocation(line: 133, column: 3, scope: !73, inlinedAt: !1443)
!1632 = !DILocation(line: 138, column: 12, scope: !73, inlinedAt: !1443)
!1633 = !DILocation(line: 138, column: 15, scope: !73, inlinedAt: !1443)
!1634 = !DILocation(line: 138, column: 6, scope: !73, inlinedAt: !1443)
!1635 = !DILocation(line: 139, column: 24, scope: !73, inlinedAt: !1443)
!1636 = !DILocation(line: 31, column: 16, scope: !280, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 139, column: 3, scope: !73, inlinedAt: !1443)
!1638 = !DILocation(line: 31, column: 2, scope: !280, inlinedAt: !1637)
!1639 = !DILocation(line: 33, column: 18, scope: !280, inlinedAt: !1637)
!1640 = !DILocation(line: 33, column: 24, scope: !280, inlinedAt: !1637)
!1641 = !DILocation(line: 33, column: 14, scope: !280, inlinedAt: !1637)
!1642 = !DILocation(line: 34, column: 24, scope: !280, inlinedAt: !1637)
!1643 = !DILocation(line: 34, column: 18, scope: !280, inlinedAt: !1637)
!1644 = !DILocation(line: 34, column: 14, scope: !280, inlinedAt: !1637)
!1645 = !DILocation(line: 35, column: 3, scope: !280, inlinedAt: !1637)
!1646 = !DILocation(line: 37, column: 19, scope: !280, inlinedAt: !1637)
!1647 = !DILocation(line: 37, column: 25, scope: !280, inlinedAt: !1637)
!1648 = !DILocation(line: 37, column: 15, scope: !280, inlinedAt: !1637)
!1649 = !DILocation(line: 38, column: 25, scope: !280, inlinedAt: !1637)
!1650 = !DILocation(line: 38, column: 19, scope: !280, inlinedAt: !1637)
!1651 = !DILocation(line: 38, column: 15, scope: !280, inlinedAt: !1637)
!1652 = !DILocation(line: 39, column: 3, scope: !280, inlinedAt: !1637)
!1653 = !DILocation(line: 41, column: 19, scope: !280, inlinedAt: !1637)
!1654 = !DILocation(line: 41, column: 25, scope: !280, inlinedAt: !1637)
!1655 = !DILocation(line: 41, column: 15, scope: !280, inlinedAt: !1637)
!1656 = !DILocation(line: 42, column: 25, scope: !280, inlinedAt: !1637)
!1657 = !DILocation(line: 42, column: 19, scope: !280, inlinedAt: !1637)
!1658 = !DILocation(line: 42, column: 15, scope: !280, inlinedAt: !1637)
!1659 = !DILocation(line: 43, column: 3, scope: !280, inlinedAt: !1637)
!1660 = !DILocation(line: 45, column: 19, scope: !280, inlinedAt: !1637)
!1661 = !DILocation(line: 45, column: 25, scope: !280, inlinedAt: !1637)
!1662 = !DILocation(line: 45, column: 15, scope: !280, inlinedAt: !1637)
!1663 = !DILocation(line: 46, column: 25, scope: !280, inlinedAt: !1637)
!1664 = !DILocation(line: 46, column: 15, scope: !280, inlinedAt: !1637)
!1665 = !DILocation(line: 47, column: 3, scope: !280, inlinedAt: !1637)
!1666 = !DILocation(line: 145, column: 12, scope: !73, inlinedAt: !1443)
!1667 = !DILocation(line: 145, column: 15, scope: !73, inlinedAt: !1443)
!1668 = !DILocation(line: 145, column: 6, scope: !73, inlinedAt: !1443)
!1669 = !DILocation(line: 146, column: 9, scope: !73, inlinedAt: !1443)
!1670 = !DILocation(line: 147, column: 7, scope: !73, inlinedAt: !1443)
!1671 = !DILocation(line: 147, column: 19, scope: !73, inlinedAt: !1443)
!1672 = !DILocation(line: 147, column: 11, scope: !73, inlinedAt: !1443)
!1673 = !DILocation(line: 149, column: 12, scope: !73, inlinedAt: !1443)
!1674 = !DILocation(line: 149, column: 15, scope: !73, inlinedAt: !1443)
!1675 = !DILocation(line: 149, column: 37, scope: !73, inlinedAt: !1443)
!1676 = !DILocation(line: 150, column: 8, scope: !73, inlinedAt: !1443)
!1677 = !DILocation(line: 150, column: 12, scope: !73, inlinedAt: !1443)
!1678 = !DILocation(line: 150, column: 15, scope: !73, inlinedAt: !1443)
!1679 = !DILocation(line: 149, column: 8, scope: !73, inlinedAt: !1443)
!1680 = !DILocation(line: 151, column: 17, scope: !73, inlinedAt: !1443)
!1681 = !DILocation(line: 151, column: 10, scope: !73, inlinedAt: !1443)
!1682 = !DILocation(line: 152, column: 9, scope: !73, inlinedAt: !1443)
!1683 = !DILocation(line: 153, column: 5, scope: !73, inlinedAt: !1443)
!1684 = !DILocation(line: 155, column: 8, scope: !73, inlinedAt: !1443)
!1685 = !DILocation(line: 156, column: 15, scope: !73, inlinedAt: !1443)
!1686 = !DILocation(line: 156, column: 8, scope: !73, inlinedAt: !1443)
!1687 = !DILocation(line: 157, column: 8, scope: !73, inlinedAt: !1443)
!1688 = !DILocation(line: 158, column: 10, scope: !73, inlinedAt: !1443)
!1689 = !DILocation(line: 74, column: 9, scope: !334, inlinedAt: !1690)
!1690 = distinct !DILocation(line: 159, column: 20, scope: !73, inlinedAt: !1443)
!1691 = !DILocation(line: 159, column: 18, scope: !73, inlinedAt: !1443)
!1692 = !DILocation(line: 160, column: 4, scope: !73, inlinedAt: !1443)
!1693 = !DILocation(line: 161, column: 4, scope: !73, inlinedAt: !1443)
!1694 = !DILocation(line: 163, column: 7, scope: !73, inlinedAt: !1443)
!1695 = !DILocation(line: 165, column: 2, scope: !73, inlinedAt: !1443)
!1696 = !DILocation(line: 167, column: 15, scope: !73, inlinedAt: !1443)
!1697 = !DILocation(line: 167, column: 18, scope: !73, inlinedAt: !1443)
!1698 = !DILocation(line: 167, column: 9, scope: !73, inlinedAt: !1443)
!1699 = !DILocation(line: 167, column: 36, scope: !73, inlinedAt: !1443)
!1700 = !DILocation(line: 168, column: 1, scope: !73, inlinedAt: !1443)
!1701 = !DILocation(line: 354, column: 8, scope: !1431, inlinedAt: !1432)
!1702 = !DILocation(line: 354, column: 12, scope: !1431, inlinedAt: !1432)
!1703 = !DILocation(line: 355, column: 12, scope: !1431, inlinedAt: !1432)
!1704 = !DILocation(line: 355, column: 9, scope: !1431, inlinedAt: !1432)
!1705 = !DILocation(line: 355, column: 5, scope: !1431, inlinedAt: !1432)
!1706 = !DILocation(line: 0, scope: !1431, inlinedAt: !1432)
!1707 = !DILocation(line: 356, column: 3, scope: !1431, inlinedAt: !1432)
!1708 = !DILocation(line: 347, column: 32, scope: !1431, inlinedAt: !1432)
!1709 = distinct !{!1709, !1434, !1710}
!1710 = !DILocation(line: 357, column: 2, scope: !1431, inlinedAt: !1432)
!1711 = !DILocation(line: 496, column: 54, scope: !1409, inlinedAt: !1410)
!1712 = !DILocation(line: 497, column: 33, scope: !1409, inlinedAt: !1410)
!1713 = !DILocation(line: 497, column: 40, scope: !1409, inlinedAt: !1410)
!1714 = !DILocation(line: 497, column: 24, scope: !1409, inlinedAt: !1410)
!1715 = !DILocation(line: 497, column: 45, scope: !1409, inlinedAt: !1410)
!1716 = !DILocation(line: 496, column: 10, scope: !1409, inlinedAt: !1410)
!1717 = !DILocation(line: 499, column: 7, scope: !1409, inlinedAt: !1410)
!1718 = !DILocation(line: 499, column: 6, scope: !1409, inlinedAt: !1410)
!1719 = !DILocation(line: 500, column: 3, scope: !1409, inlinedAt: !1410)
!1720 = !DILocation(line: 502, column: 57, scope: !1409, inlinedAt: !1410)
!1721 = !DILocation(line: 502, column: 26, scope: !1409, inlinedAt: !1410)
!1722 = !DILocation(line: 502, column: 24, scope: !1409, inlinedAt: !1410)
!1723 = !DILocation(line: 503, column: 20, scope: !1409, inlinedAt: !1410)
!1724 = !DILocation(line: 503, column: 38, scope: !1409, inlinedAt: !1410)
!1725 = !DILocation(line: 200, column: 22, scope: !1726, inlinedAt: !1727)
!1726 = distinct !DISubprogram(name: "store_trace_args", scope: !74, file: !74, line: 191, type: !67, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1727 = distinct !DILocation(line: 503, column: 2, scope: !1409, inlinedAt: !1410)
!1728 = !DILocation(line: 200, column: 16, scope: !1726, inlinedAt: !1727)
!1729 = !DILocation(line: 200, column: 2, scope: !1726, inlinedAt: !1727)
!1730 = !DILocation(line: 196, column: 29, scope: !1726, inlinedAt: !1727)
!1731 = !DILocation(line: 196, column: 23, scope: !1726, inlinedAt: !1727)
!1732 = !DILocation(line: 201, column: 18, scope: !1726, inlinedAt: !1727)
!1733 = !DILocation(line: 202, column: 20, scope: !1726, inlinedAt: !1727)
!1734 = !DILocation(line: 202, column: 13, scope: !1726, inlinedAt: !1727)
!1735 = !DILocation(line: 204, column: 7, scope: !1726, inlinedAt: !1727)
!1736 = !DILocation(line: 205, column: 10, scope: !1726, inlinedAt: !1727)
!1737 = !DILocation(line: 205, column: 8, scope: !1726, inlinedAt: !1727)
!1738 = !DILocation(line: 205, column: 4, scope: !1726, inlinedAt: !1727)
!1739 = !DILocation(line: 206, column: 33, scope: !1726, inlinedAt: !1727)
!1740 = !DILocation(line: 206, column: 9, scope: !1726, inlinedAt: !1727)
!1741 = !DILocation(line: 207, column: 7, scope: !1726, inlinedAt: !1727)
!1742 = !DILocation(line: 208, column: 10, scope: !1726, inlinedAt: !1727)
!1743 = !DILocation(line: 208, column: 8, scope: !1726, inlinedAt: !1727)
!1744 = !DILocation(line: 209, column: 3, scope: !1726, inlinedAt: !1727)
!1745 = !DILocation(line: 210, column: 15, scope: !1726, inlinedAt: !1727)
!1746 = !DILocation(line: 210, column: 12, scope: !1726, inlinedAt: !1727)
!1747 = !DILocation(line: 211, column: 11, scope: !1726, inlinedAt: !1727)
!1748 = !DILocation(line: 0, scope: !1726, inlinedAt: !1727)
!1749 = !DILocation(line: 200, column: 32, scope: !1726, inlinedAt: !1727)
!1750 = distinct !{!1750, !1729, !1751}
!1751 = !DILocation(line: 213, column: 2, scope: !1726, inlinedAt: !1727)
!1752 = !DILocation(line: 505, column: 2, scope: !1409, inlinedAt: !1410)
!1753 = !DILocation(line: 506, column: 1, scope: !1409, inlinedAt: !1410)
!1754 = !DILocation(line: 541, column: 1, scope: !1405)
!1755 = distinct !DISubprogram(name: "eprobe_trigger_init", scope: !1, file: !1, line: 514, type: !67, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1756 = !DILocation(line: 516, scope: !1755)
!1757 = !DILocation(line: 517, column: 2, scope: !1755)
!1758 = distinct !DISubprogram(name: "eprobe_trigger_free", scope: !1, file: !1, line: 520, type: !67, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1759 = !DILocation(line: 522, scope: !1758)
!1760 = !DILocation(line: 524, column: 1, scope: !1758)
!1761 = distinct !DISubprogram(name: "eprobe_trigger_print", scope: !1, file: !1, line: 526, type: !67, scopeLine: 529, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1762 = !DILocation(line: 529, scope: !1761)
!1763 = !DILocation(line: 531, column: 2, scope: !1761)
!1764 = distinct !DISubprogram(name: "eprobe_trigger_cmd_parse", scope: !1, file: !1, line: 550, type: !67, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1765 = !DILocation(line: 553, scope: !1764)
!1766 = !DILocation(line: 554, column: 2, scope: !1764)
!1767 = distinct !DISubprogram(name: "eprobe_trigger_reg_func", scope: !1, file: !1, line: 557, type: !67, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1768 = !DILocation(line: 560, scope: !1767)
!1769 = !DILocation(line: 561, column: 2, scope: !1767)
!1770 = distinct !DISubprogram(name: "eprobe_trigger_unreg_func", scope: !1, file: !1, line: 564, type: !67, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1771 = !DILocation(line: 567, scope: !1770)
!1772 = !DILocation(line: 569, column: 1, scope: !1770)
!1773 = distinct !DISubprogram(name: "eprobe_trigger_get_ops", scope: !1, file: !1, line: 571, type: !67, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!1774 = !DILocation(line: 573, scope: !1773)
!1775 = !DILocation(line: 574, column: 2, scope: !1773)
