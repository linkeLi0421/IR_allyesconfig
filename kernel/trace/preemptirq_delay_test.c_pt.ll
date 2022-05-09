; ModuleID = '/llk/IR_all_yes/kernel/trace/preemptirq_delay_test.c_pt.bc'
source_filename = "../kernel/trace/preemptirq_delay_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.24, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.24 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__this_module = external dso_local global %struct.module, align 128
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@delay = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_delay = internal constant %struct.kernel_param { ptr @___asan_gen_.48, ptr @__this_module, ptr @param_ops_ulong, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @delay } }, section "__param", align 4
@__UNIQUE_ID_delaytype177 = internal constant [21 x i8] c"parmtype=delay:ulong\00", section ".modinfo", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_test_mode = internal constant %struct.kparam_string { i32 12, ptr @test_mode }, align 4
@__param_test_mode = internal constant %struct.kernel_param { ptr @___asan_gen_.57, ptr @__this_module, ptr @param_ops_string, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @__param_string_test_mode } }, section "__param", align 4
@__UNIQUE_ID_test_modetype178 = internal constant [26 x i8] c"parmtype=test_mode:string\00", section ".modinfo", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@burst_size = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_burst_size = internal constant %struct.kernel_param { ptr @___asan_gen_.51, ptr @__this_module, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @burst_size } }, section "__param", align 4
@__UNIQUE_ID_burst_sizetype179 = internal constant [25 x i8] c"parmtype=burst_size:uint\00", section ".modinfo", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@cpu_affinity = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_cpu_affinity = internal constant %struct.kernel_param { ptr @___asan_gen_.54, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @cpu_affinity } }, section "__param", align 4
@__UNIQUE_ID_cpu_affinitytype180 = internal constant [26 x i8] c"parmtype=cpu_affinity:int\00", section ".modinfo", align 1
@__UNIQUE_ID_delay181 = internal constant [51 x i8] c"parm=delay:Period in microseconds (100 us default)\00", section ".modinfo", align 1
@__UNIQUE_ID_test_mode182 = internal constant [81 x i8] c"parm=test_mode:Mode of the test such as preempt, irq, or alternate (default irq)\00", section ".modinfo", align 1
@__UNIQUE_ID_burst_size183 = internal constant [48 x i8] c"parm=burst_size:The size of a burst (default 1)\00", section ".modinfo", align 1
@__UNIQUE_ID_cpu_affinity184 = internal constant [45 x i8] c"parm=cpu_affinity:Cpu num test is running on\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@test_mode = internal global { [12 x i8], [20 x i8] } { [12 x i8] c"irq\00\00\00\00\00\00\00\00\00", [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"preemptirq_delay_test\00", [42 x i8] zeroinitializer }, align 32
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@preemptirq_delay_kobj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@done = internal global { %struct.completion, [40 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s_test\00", [24 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@preemptirq_delay_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013cpu_affinity:%d, failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"preemptirq_delay_run\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"kernel/trace/preemptirq_delay_test.c\00", [59 x i8] zeroinitializer }, align 32
@preemptirq_delay_run._entry_ptr = internal global ptr @preemptirq_delay_run._entry, section ".printk_index", align 4
@testfuncs = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @preemptirqtest_0, ptr @preemptirqtest_1, ptr @preemptirqtest_2, ptr @preemptirqtest_3, ptr @preemptirqtest_4, ptr @preemptirqtest_5, ptr @preemptirqtest_6, ptr @preemptirqtest_7, ptr @preemptirqtest_8, ptr @preemptirqtest_9], [56 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"preempt\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alternate\00", [22 x i8] zeroinitializer }, align 32
@attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @trigger_attribute, ptr null], [24 x i8] zeroinitializer }, align 32
@trigger_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.12, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @trigger_store }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"trigger\00", [24 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.13 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.14 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.15 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.16 = internal global [17 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.27 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.28 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.29 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.33 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.34 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.35 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.37 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.38 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.39 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.40 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.41 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.42 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.43 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.44 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.45 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.46 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.47 = internal global [2 x i64] zeroinitializer
@0 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/preemptirq_delay_test.gcda\00", [55 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [36 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 1878460262, i32 390266750 }, %emit_function_args_ty { i32 1, i32 1579252225, i32 390266750 }, %emit_function_args_ty { i32 2, i32 -1285367801, i32 390266750 }, %emit_function_args_ty { i32 3, i32 147492095, i32 390266750 }, %emit_function_args_ty { i32 4, i32 -230584691, i32 390266750 }, %emit_function_args_ty { i32 5, i32 -10115036, i32 390266750 }, %emit_function_args_ty { i32 6, i32 1781672997, i32 390266750 }, %emit_function_args_ty { i32 7, i32 -1357815688, i32 390266750 }, %emit_function_args_ty { i32 8, i32 70852947, i32 390266750 }, %emit_function_args_ty { i32 9, i32 288547376, i32 390266750 }, %emit_function_args_ty { i32 10, i32 964162334, i32 390266750 }, %emit_function_args_ty { i32 11, i32 -601403593, i32 390266750 }, %emit_function_args_ty { i32 12, i32 -1247584631, i32 390266750 }, %emit_function_args_ty { i32 13, i32 1802078929, i32 390266750 }, %emit_function_args_ty { i32 14, i32 -979503365, i32 390266750 }, %emit_function_args_ty { i32 15, i32 1064817675, i32 390266750 }, %emit_function_args_ty { i32 16, i32 -1790056100, i32 390266750 }, %emit_function_args_ty { i32 17, i32 1598616218, i32 390266750 }, %emit_function_args_ty { i32 18, i32 -1814400677, i32 390266750 }, %emit_function_args_ty { i32 19, i32 1994502473, i32 390266750 }, %emit_function_args_ty { i32 20, i32 -1601745456, i32 390266750 }, %emit_function_args_ty { i32 21, i32 -1619063223, i32 390266750 }, %emit_function_args_ty { i32 22, i32 1086691226, i32 390266750 }, %emit_function_args_ty { i32 23, i32 -1047187801, i32 390266750 }, %emit_function_args_ty { i32 24, i32 655308963, i32 390266750 }, %emit_function_args_ty { i32 25, i32 1727793727, i32 390266750 }, %emit_function_args_ty { i32 26, i32 1403380823, i32 390266750 }, %emit_function_args_ty { i32 27, i32 81157262, i32 390266750 }, %emit_function_args_ty { i32 28, i32 -1017553642, i32 390266750 }, %emit_function_args_ty { i32 29, i32 -743251458, i32 390266750 }, %emit_function_args_ty { i32 30, i32 -1208743970, i32 390266750 }, %emit_function_args_ty { i32 31, i32 835031753, i32 390266750 }, %emit_function_args_ty { i32 32, i32 -1567486560, i32 390266750 }, %emit_function_args_ty { i32 33, i32 1333844298, i32 390266750 }, %emit_function_args_ty { i32 34, i32 -1111025999, i32 390266750 }, %emit_function_args_ty { i32 35, i32 -2072040705, i32 390266750 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [36 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.13 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.14 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.15 }, %emit_arcs_args_ty { i32 17, ptr @__llvm_gcov_ctr.16 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.17 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.18 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.20 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.21 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.22 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.23 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.24 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.25 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.26 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.27 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.28 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.29 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.30 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.31 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.32 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.33 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.34 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.35 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.36 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.37 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.38 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.39 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.40 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.41 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.42 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.43 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.44 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.45 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.46 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.47 }]
@___asan_gen_.48 = private constant [6 x i8] c"delay\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 21, i32 14 }
@___asan_gen_.51 = private constant [11 x i8] c"burst_size\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 23, i32 13 }
@___asan_gen_.54 = private constant [13 x i8] c"cpu_affinity\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 24, i32 13 }
@___asan_gen_.57 = private constant [10 x i8] c"test_mode\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 22, i32 13 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 199, i32 49 }
@___asan_gen_.63 = private unnamed_addr constant [22 x i8] c"preemptirq_delay_kobj\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 189, i32 24 }
@___asan_gen_.66 = private unnamed_addr constant [11 x i8] c"attr_group\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 185, i32 31 }
@___asan_gen_.69 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 35, i32 26 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 154, i32 41 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 87, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 128, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant [10 x i8] c"testfuncs\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 103, i32 15 }
@___asan_gen_.97 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 108, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 70, i32 25 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 72, i32 30 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 74, i32 30 }
@___asan_gen_.108 = private unnamed_addr constant [6 x i8] c"attrs\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 180, i32 26 }
@___asan_gen_.111 = private unnamed_addr constant [18 x i8] c"trigger_attribute\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 177, i32 30 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [40 x i8] c"../kernel/trace/preemptirq_delay_test.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 178, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_burst_size183, ptr @__UNIQUE_ID_burst_sizetype179, ptr @__UNIQUE_ID_cpu_affinity184, ptr @__UNIQUE_ID_cpu_affinitytype180, ptr @__UNIQUE_ID_delay181, ptr @__UNIQUE_ID_delaytype177, ptr @__UNIQUE_ID_license188, ptr @__UNIQUE_ID_test_mode182, ptr @__UNIQUE_ID_test_modetype178, ptr @__param_burst_size, ptr @__param_cpu_affinity, ptr @__param_delay, ptr @__param_test_mode, ptr @preemptirq_delay_run._entry, ptr @preemptirq_delay_run._entry_ptr, ptr @delay, ptr @burst_size, ptr @cpu_affinity, ptr @test_mode, ptr @.str, ptr @preemptirq_delay_kobj, ptr @attr_group, ptr @done, ptr @.str.1, ptr @init_completion.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @testfuncs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @attrs, ptr @trigger_attribute, ptr @.str.12], section "llvm.metadata"
@1 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @burst_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_affinity to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mode to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preemptirq_delay_kobj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @done to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preemptirq_delay_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfuncs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 !dbg !90 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !93
  %call = tail call fastcc i32 @preemptirq_run_test(), !dbg !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !95
  %cmp.not = icmp eq i32 %call, 0, !dbg !95
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !96

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !97
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 16, !dbg !97
  %0 = add i64 %gcov_ctr, 1, !dbg !97
  store i64 %0, ptr @__llvm_gcov_ctr, align 16, !dbg !97
  br label %cleanup, !dbg !98

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernel_kobj to i32)), !dbg !99
  %1 = load ptr, ptr @kernel_kobj, align 4, !dbg !99
  %call2 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str, ptr noundef %1) #13, !dbg !100
  store ptr %call2, ptr @preemptirq_delay_kobj, align 4, !dbg !101
  %tobool.not = icmp eq ptr %call2, null, !dbg !102
  br i1 %tobool.not, label %if.then3, label %if.end4, !dbg !103

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12, !dbg !104
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !104
  %2 = add i64 %gcov_ctr9, 1, !dbg !104
  store i64 %2, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !104
  br label %cleanup, !dbg !104

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @sysfs_create_group(ptr noundef nonnull %call2, ptr noundef nonnull @attr_group) #13, !dbg !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5), !dbg !106
  %tobool6.not = icmp eq i32 %call5, 0, !dbg !106
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7, !dbg !106

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12, !dbg !106
  br label %if.end8, !dbg !106

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12, !dbg !107
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !107
  %3 = add i64 %gcov_ctr10, 1, !dbg !107
  store i64 %3, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !107
  %4 = load ptr, ptr @preemptirq_delay_kobj, align 4, !dbg !107
  tail call void @kobject_put(ptr noundef %4) #13, !dbg !108
  br label %if.end8, !dbg !108

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !109
  %5 = add i64 %gcov_ctr11, 1, !dbg !109
  store i64 %5, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !109
  br label %cleanup, !dbg !110

cleanup:                                          ; preds = %if.end8, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call5, %if.end8 ], [ -12, %if.then3 ], !dbg !111
  ret i32 %retval.0, !dbg !112
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 !dbg !113 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !114
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !115
  %0 = add i64 %gcov_ctr, 1, !dbg !115
  store i64 %0, ptr @__llvm_gcov_ctr.13, align 8, !dbg !115
  %1 = load ptr, ptr @preemptirq_delay_kobj, align 4, !dbg !115
  tail call void @kobject_put(ptr noundef %1) #13, !dbg !116
  ret void, !dbg !117
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @preemptirq_run_test() unnamed_addr #2 align 64 !dbg !118 {
entry:
  %task_name = alloca [50 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12, !dbg !119
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %task_name) #13, !dbg !120
  %0 = call ptr @memset(ptr %task_name, i32 255, i32 50), !dbg !121
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.15, align 8
  store i32 0, ptr @done, align 4, !dbg !122
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.completion, ptr @done, i32 0, i32 1), ptr noundef nonnull @.str.2, ptr noundef nonnull @init_completion.__key) #13, !dbg !126
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %task_name, i32 noundef 50, ptr noundef nonnull @.str.1, ptr noundef nonnull @test_mode), !dbg !127
  %call2 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @preemptirq_delay_run, ptr noundef null, i32 noundef -1, ptr noundef nonnull %task_name) #13, !dbg !128
  %gcov_ctr.i21 = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %2 = add i64 %gcov_ctr.i21, 1
  store i64 %2, ptr @__llvm_gcov_ctr.17, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr), !dbg !129
  br i1 %cmp.i, label %if.then6, label %if.end8, !dbg !128

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !133
  %gcov_ctr.i2225 = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %3 = add i64 %gcov_ctr.i2225, 1
  store i64 %3, ptr @__llvm_gcov_ctr.17, align 8
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 1), align 8, !dbg !134
  %4 = add i64 %gcov_ctr13, 1, !dbg !134
  store i64 %4, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 1), align 8, !dbg !134
  %gcov_ctr.i24 = load i64, ptr @__llvm_gcov_ctr.18, align 8
  %5 = add i64 %gcov_ctr.i24, 1
  store i64 %5, ptr @__llvm_gcov_ctr.18, align 8
  %6 = ptrtoint ptr %call2 to i32, !dbg !135
  br label %cleanup, !dbg !138

if.end8:                                          ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.14, align 16, !dbg !128
  %7 = add i64 %gcov_ctr, 1, !dbg !128
  store i64 %7, ptr @__llvm_gcov_ctr.14, align 16, !dbg !128
  %call4 = call i32 @wake_up_process(ptr noundef %call2) #13, !dbg !128
  %gcov_ctr.i22 = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %8 = add i64 %gcov_ctr.i22, 1
  store i64 %8, ptr @__llvm_gcov_ctr.17, align 8
  %tobool.not = icmp eq ptr %call2, null, !dbg !139
  br i1 %tobool.not, label %if.end8.if.end11_crit_edge, label %if.then9, !dbg !139

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12, !dbg !139
  br label %if.end11, !dbg !139

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12, !dbg !140
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 2), align 16, !dbg !140
  %9 = add i64 %gcov_ctr14, 1, !dbg !140
  store i64 %9, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 2), align 16, !dbg !140
  call void @wait_for_completion(ptr noundef nonnull @done) #13, !dbg !140
  %call10 = call i32 @kthread_stop(ptr noundef nonnull %call2) #13, !dbg !141
  br label %if.end11, !dbg !142

if.end11:                                         ; preds = %if.then9, %if.end8.if.end11_crit_edge
  %gcov_ctr15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 3), align 8, !dbg !143
  %10 = add i64 %gcov_ctr15, 1, !dbg !143
  store i64 %10, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 3), align 8, !dbg !143
  br label %cleanup, !dbg !143

cleanup:                                          ; preds = %if.end11, %if.then6
  %retval.0 = phi i32 [ %6, %if.then6 ], [ 0, %if.end11 ], !dbg !133
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %task_name) #13, !dbg !144
  ret i32 %retval.0, !dbg !144
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @preemptirq_delay_run(ptr nocapture noundef readnone %data) #2 align 64 !dbg !145 {
entry:
  %cpu_mask = alloca %struct.cpumask, align 4
  call void @__sanitizer_cov_trace_pc() #12, !dbg !146
  %0 = load i32, ptr @burst_size, align 4, !dbg !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %0), !dbg !147
  %cmp = icmp ult i32 %0, 10, !dbg !147
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !147

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !147
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.16, align 16, !dbg !147
  %1 = add i64 %gcov_ctr, 1, !dbg !147
  store i64 %1, ptr @__llvm_gcov_ctr.16, align 16, !dbg !147
  br label %cond.end, !dbg !147

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !147
  %gcov_ctr231 = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !147
  %2 = add i64 %gcov_ctr231, 1, !dbg !147
  store i64 %2, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !147
  br label %cond.end, !dbg !147

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 10, %cond.false ], !dbg !147
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu_mask) #13, !dbg !148
  %3 = ptrtoint ptr %cpu_mask to i32, !dbg !149
  call void @__asan_store4_noabort(i32 %3), !dbg !149
  store i32 -1, ptr %cpu_mask, align 4, !dbg !149, !annotation !150
  %4 = load i32, ptr @cpu_affinity, align 4, !dbg !151
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4), !dbg !152
  %cmp1 = icmp sgt i32 %4, -1, !dbg !152
  br i1 %cmp1, label %if.then, label %cond.end.if.end5_crit_edge, !dbg !151

cond.end.if.end5_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12, !dbg !151
  br label %if.end5, !dbg !151

if.then:                                          ; preds = %cond.end
  %gcov_ctr232 = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 2), align 16, !dbg !153
  %5 = add i64 %gcov_ctr232, 1, !dbg !153
  store i64 %5, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 2), align 16, !dbg !153
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %6 = add i64 %gcov_ctr.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.19, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !154
  %7 = load i32, ptr @nr_cpu_ids, align 4, !dbg !154
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %8 = add i64 %gcov_ctr.i.i, 1
  store i64 %8, ptr @__llvm_gcov_ctr.22, align 8
  %sub.i.i = add i32 %7, 31, !dbg !158
  %9 = lshr i32 %sub.i.i, 3, !dbg !162
  %mul.i.i = and i32 %9, 536870908, !dbg !162
  %10 = call ptr @memset(ptr %cpu_mask, i32 0, i32 %mul.i.i), !dbg !163
  %gcov_ctr.i256 = load i64, ptr @__llvm_gcov_ctr.20, align 8
  %11 = add i64 %gcov_ctr.i256, 1
  store i64 %11, ptr @__llvm_gcov_ctr.20, align 8
  %gcov_ctr.i.i257 = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %12 = add i64 %gcov_ctr.i.i257, 1
  store i64 %12, ptr @__llvm_gcov_ctr.23, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.24, align 16
  %13 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %13, ptr @__llvm_gcov_ctr.24, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %4), !dbg !164
  %cmp.not.i.i.i = icmp ugt i32 %7, %4, !dbg !164
  br i1 %cmp.not.i.i.i, label %if.then.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i, !dbg !164

if.then.cpumask_set_cpu.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12, !dbg !164
  br label %cpumask_set_cpu.exit, !dbg !164

land.rhs.i.i.i:                                   ; preds = %if.then
  %gcov_ctr35.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), align 8, !dbg !164
  %14 = add i64 %gcov_ctr35.i.i.i, 1, !dbg !164
  store i64 %14, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), align 8, !dbg !164
  %.b40.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !164
  br i1 %.b40.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !dbg !164, !prof !171

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !164
  br label %cpumask_set_cpu.exit, !dbg !164

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !164
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !164
  %gcov_ctr36.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 2), align 16, !dbg !164
  %15 = add i64 %gcov_ctr36.i.i.i, 1, !dbg !164
  store i64 %15, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 2), align 16, !dbg !164
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #13, !dbg !164
  %gcov_ctr37.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 3), align 8, !dbg !164
  %16 = add i64 %gcov_ctr37.i.i.i, 1, !dbg !164
  store i64 %16, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 3), align 8, !dbg !164
  br label %cpumask_set_cpu.exit, !dbg !164

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %if.then.cpumask_set_cpu.exit_crit_edge
  call void @_set_bit(i32 noundef %4, ptr noundef nonnull %cpu_mask) #13, !dbg !172
  %gcov_ctr.i258 = load i64, ptr @__llvm_gcov_ctr.21, align 8, !dbg !173
  %17 = add i64 %gcov_ctr.i258, 1, !dbg !173
  store i64 %17, ptr @__llvm_gcov_ctr.21, align 8, !dbg !173
  %18 = call i32 @llvm.read_register.i32(metadata !79) #13, !dbg !173
  %and.i = and i32 %18, -16384, !dbg !177
  %19 = inttoptr i32 %and.i to ptr, !dbg !178
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2, !dbg !179
  %20 = ptrtoint ptr %task to i32, !dbg !179
  call void @__asan_load4_noabort(i32 %20), !dbg !179
  %21 = load ptr, ptr %task, align 8, !dbg !179
  %call2 = call i32 @set_cpus_allowed_ptr(ptr noundef %21, ptr noundef nonnull %cpu_mask) #13, !dbg !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !180
  %tobool.not = icmp eq i32 %call2, 0, !dbg !180
  br i1 %tobool.not, label %cpumask_set_cpu.exit.if.end5_crit_edge, label %if.then3, !dbg !180

cpumask_set_cpu.exit.if.end5_crit_edge:           ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12, !dbg !180
  br label %if.end5, !dbg !180

if.then3:                                         ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12, !dbg !181
  %gcov_ctr233 = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 3), align 8, !dbg !181
  %22 = add i64 %gcov_ctr233, 1, !dbg !181
  store i64 %22, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 3), align 8, !dbg !181
  %23 = load i32, ptr @cpu_affinity, align 4, !dbg !181
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %23) #14, !dbg !181
  br label %if.end5, !dbg !181

if.end5:                                          ; preds = %if.then3, %cpumask_set_cpu.exit.if.end5_crit_edge, %cond.end.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond), !dbg !182
  %cmp6261.not = icmp eq i32 %cond, 0, !dbg !182
  br i1 %cmp6261.not, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge, !dbg !183

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body, !dbg !183

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12, !dbg !183
  br label %for.end, !dbg !183

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end5.for.body_crit_edge
  %i.0262 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %arrayidx = getelementptr [10 x ptr], ptr @testfuncs, i32 0, i32 %i.0262, !dbg !184
  %24 = ptrtoint ptr %arrayidx to i32, !dbg !184
  call void @__asan_load4_noabort(i32 %24), !dbg !184
  %25 = load ptr, ptr %arrayidx, align 4, !dbg !184
  call void %25(i32 noundef %i.0262) #13, !dbg !185
  %gcov_ctr234 = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 4), align 16, !dbg !186
  %26 = add i64 %gcov_ctr234, 1, !dbg !186
  store i64 %26, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 4), align 16, !dbg !186
  %inc = add nuw nsw i32 %i.0262, 1, !dbg !186
  %exitcond.not = icmp eq i32 %inc, %cond, !dbg !182
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge, !dbg !183, !llvm.loop !187

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12, !dbg !183
  br label %for.body, !dbg !183

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12, !dbg !183
  br label %for.end, !dbg !183

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end5.for.end_crit_edge
  call void @complete(ptr noundef nonnull @done) #13, !dbg !189
  %gcov_ctr.i259 = load i64, ptr @__llvm_gcov_ctr.21, align 8, !dbg !190
  %27 = add i64 %gcov_ctr.i259, 1, !dbg !190
  store i64 %27, ptr @__llvm_gcov_ctr.21, align 8, !dbg !190
  %28 = call i32 @llvm.read_register.i32(metadata !79) #13, !dbg !190
  %and.i260 = and i32 %28, -16384, !dbg !192
  %29 = inttoptr i32 %and.i260 to ptr, !dbg !193
  %task50 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2, !dbg !194
  %30 = ptrtoint ptr %task50 to i32, !dbg !194
  call void @__asan_load4_noabort(i32 %30), !dbg !194
  %31 = load ptr, ptr %task50, align 8, !dbg !194
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 212, !dbg !194
  %32 = ptrtoint ptr %task_state_change to i32, !dbg !194
  call void @__asan_store4_noabort(i32 %32), !dbg !194
  store i32 1, ptr %task_state_change, align 4, !dbg !194
  %33 = load ptr, ptr %task50, align 8, !dbg !194
  %34 = ptrtoint ptr %33 to i32, !dbg !194
  call void @__asan_store4_noabort(i32 %34), !dbg !194
  store volatile i32 1, ptr %33, align 128, !dbg !194
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !dbg !194, !srcloc !195
  %call75263 = call zeroext i1 @kthread_should_stop() #13, !dbg !196
  br i1 %call75263, label %for.end.if.end200_crit_edge, label %for.end.while.body_crit_edge, !dbg !197

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body, !dbg !197

for.end.if.end200_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12, !dbg !197
  br label %if.end200, !dbg !197

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end.while.body_crit_edge
  call void @schedule() #13, !dbg !198
  %gcov_ctr246 = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 16), align 16, !dbg !199
  %35 = add i64 %gcov_ctr246, 1, !dbg !199
  store i64 %35, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 16), align 16, !dbg !199
  %36 = ptrtoint ptr %task50 to i32, !dbg !199
  call void @__asan_load4_noabort(i32 %36), !dbg !199
  %37 = load ptr, ptr %task50, align 8, !dbg !199
  %task_state_change132 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 212, !dbg !199
  %38 = ptrtoint ptr %task_state_change132 to i32, !dbg !199
  call void @__asan_store4_noabort(i32 %38), !dbg !199
  store i32 1, ptr %task_state_change132, align 4, !dbg !199
  %39 = load ptr, ptr %task50, align 8, !dbg !199
  %40 = ptrtoint ptr %39 to i32, !dbg !199
  call void @__asan_store4_noabort(i32 %40), !dbg !199
  store volatile i32 1, ptr %39, align 128, !dbg !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !dbg !199, !srcloc !200
  %call75 = call zeroext i1 @kthread_should_stop() #13, !dbg !196
  br i1 %call75, label %while.body.if.end200_crit_edge, label %while.body.while.body_crit_edge, !dbg !197, !llvm.loop !201

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12, !dbg !197
  br label %while.body, !dbg !197

while.body.if.end200_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12, !dbg !197
  br label %if.end200, !dbg !197

if.end200:                                        ; preds = %while.body.if.end200_crit_edge, %for.end.if.end200_crit_edge
  %41 = ptrtoint ptr %task50 to i32, !dbg !203
  call void @__asan_load4_noabort(i32 %41), !dbg !203
  %42 = load ptr, ptr %task50, align 8, !dbg !203
  %task_state_change212 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 212, !dbg !203
  %43 = ptrtoint ptr %task_state_change212 to i32, !dbg !203
  call void @__asan_store4_noabort(i32 %43), !dbg !203
  store i32 1, ptr %task_state_change212, align 4, !dbg !203
  %44 = load ptr, ptr %task50, align 8, !dbg !203
  %45 = ptrtoint ptr %44 to i32, !dbg !203
  call void @__asan_store4_noabort(i32 %45), !dbg !203
  store volatile i32 0, ptr %44, align 128, !dbg !203
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu_mask) #13, !dbg !204
  ret i32 0, !dbg !205
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preemptirqtest_0(i32 noundef %idx) #2 align 64 !dbg !206 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !207
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.25, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.25, align 8
  tail call fastcc void @execute_preemptirqtest(i32 noundef %idx), !dbg !208
  ret void, !dbg !208
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preemptirqtest_1(i32 noundef %idx) #2 align 64 !dbg !209 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !210
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.26, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.26, align 8
  tail call fastcc void @execute_preemptirqtest(i32 noundef %idx), !dbg !211
  ret void, !dbg !211
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preemptirqtest_2(i32 noundef %idx) #2 align 64 !dbg !212 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !213
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.27, align 8
  tail call fastcc void @execute_preemptirqtest(i32 noundef %idx), !dbg !214
  ret void, !dbg !214
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preemptirqtest_3(i32 noundef %idx) #2 align 64 !dbg !215 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !216
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.28, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.28, align 8
  tail call fastcc void @execute_preemptirqtest(i32 noundef %idx), !dbg !217
  ret void, !dbg !217
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preemptirqtest_4(i32 noundef %idx) #2 align 64 !dbg !218 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !219
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.29, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.29, align 8
  tail call fastcc void @execute_preemptirqtest(i32 noundef %idx), !dbg !220
  ret void, !dbg !220
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preemptirqtest_5(i32 noundef %idx) #2 align 64 !dbg !221 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !222
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.30, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.30, align 8
  tail call fastcc void @execute_preemptirqtest(i32 noundef %idx), !dbg !223
  ret void, !dbg !223
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preemptirqtest_6(i32 noundef %idx) #2 align 64 !dbg !224 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !225
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.31, align 8
  tail call fastcc void @execute_preemptirqtest(i32 noundef %idx), !dbg !226
  ret void, !dbg !226
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preemptirqtest_7(i32 noundef %idx) #2 align 64 !dbg !227 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !228
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.32, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.32, align 8
  tail call fastcc void @execute_preemptirqtest(i32 noundef %idx), !dbg !229
  ret void, !dbg !229
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preemptirqtest_8(i32 noundef %idx) #2 align 64 !dbg !230 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !231
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.33, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.33, align 8
  tail call fastcc void @execute_preemptirqtest(i32 noundef %idx), !dbg !232
  ret void, !dbg !232
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @preemptirqtest_9(i32 noundef %idx) #2 align 64 !dbg !233 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !234
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.34, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.34, align 8
  tail call fastcc void @execute_preemptirqtest(i32 noundef %idx), !dbg !235
  ret void, !dbg !235
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @execute_preemptirqtest(i32 noundef %idx) unnamed_addr #2 align 64 !dbg !236 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !237
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @test_mode, ptr noundef nonnull dereferenceable(4) @.str.9, i32 4) #15, !dbg !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp), !dbg !238
  %tobool.not = icmp eq i32 %bcmp, 0, !dbg !238
  br i1 %tobool.not, label %if.then, label %if.else, !dbg !239

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.35, align 16, !dbg !240
  %0 = add i64 %gcov_ctr, 1, !dbg !240
  store i64 %0, ptr @__llvm_gcov_ctr.35, align 16, !dbg !240
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %1 = add i64 %gcov_ctr.i.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.38, align 8
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !dbg !241, !srcloc !247
  %gcov_ctr.i49.i = load i64, ptr @__llvm_gcov_ctr.39, align 8
  %3 = add i64 %gcov_ctr.i49.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.39, align 8
  %and.i.i = and i32 %2, 128, !dbg !248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !251
  %tobool.not.i = icmp eq i32 %and.i.i, 0, !dbg !251
  br i1 %tobool.not.i, label %if.then.i, label %if.then.do.end11.i_crit_edge, !dbg !251

if.then.do.end11.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12, !dbg !251
  br label %do.end11.i, !dbg !251

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12, !dbg !251
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.36, align 16, !dbg !251
  %4 = add i64 %gcov_ctr.i, 1, !dbg !251
  store i64 %4, ptr @__llvm_gcov_ctr.36, align 16, !dbg !251
  tail call void @trace_hardirqs_off() #13, !dbg !251
  br label %do.end11.i, !dbg !251

do.end11.i:                                       ; preds = %if.then.i, %if.then.do.end11.i_crit_edge
  %5 = load i32, ptr @delay, align 4, !dbg !252
  %gcov_ctr.i50.i = load i64, ptr @__llvm_gcov_ctr.40, align 16
  %6 = add i64 %gcov_ctr.i50.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.40, align 16
  %call.i.i = tail call i64 @trace_clock_local() #13, !dbg !253
  %mul.i.i = mul i32 %5, 1000
  %conv.i.i = zext i32 %mul.i.i to i64
  br label %do.body.i.i, !dbg !256

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %do.end11.i
  %call1.i.i = tail call i64 @trace_clock_local() #13, !dbg !257
  %call2.i.i = tail call zeroext i1 @kthread_should_stop() #13, !dbg !258
  br i1 %call2.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !258

if.then.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !259
  %gcov_ctr4.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !259
  %7 = add i64 %gcov_ctr4.i.i, 1, !dbg !259
  store i64 %7, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !259
  br label %busy_wait.exit.i, !dbg !259

if.end.i.i:                                       ; preds = %do.body.i.i
  %gcov_ctr5.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 2), align 16, !dbg !260
  %8 = add i64 %gcov_ctr5.i.i, 1, !dbg !260
  store i64 %8, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 2), align 16, !dbg !260
  %sub.i.i = sub i64 %call1.i.i, %call.i.i, !dbg !261
  %cmp.i.i = icmp ult i64 %sub.i.i, %conv.i.i, !dbg !262
  br i1 %cmp.i.i, label %if.end.i.i.do.body.i.i_crit_edge, label %if.end.i.i.busy_wait.exit.i_crit_edge, !dbg !260, !llvm.loop !263

if.end.i.i.busy_wait.exit.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !260
  br label %busy_wait.exit.i, !dbg !260

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !260
  br label %do.body.i.i, !dbg !260

busy_wait.exit.i:                                 ; preds = %if.end.i.i.busy_wait.exit.i_crit_edge, %if.then.i.i
  %gcov_ctr.i51.i = load i64, ptr @__llvm_gcov_ctr.39, align 8
  %9 = add i64 %gcov_ctr.i51.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.39, align 8
  br i1 %tobool.not.i, label %if.then21.i, label %busy_wait.exit.i.do.body23.i_crit_edge, !dbg !265

busy_wait.exit.i.do.body23.i_crit_edge:           ; preds = %busy_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !265
  br label %do.body23.i, !dbg !265

if.then21.i:                                      ; preds = %busy_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !265
  %gcov_ctr44.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !265
  %10 = add i64 %gcov_ctr44.i, 1, !dbg !265
  store i64 %10, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !265
  tail call void @trace_hardirqs_on() #13, !dbg !265
  br label %do.body23.i, !dbg !265

do.body23.i:                                      ; preds = %if.then21.i, %busy_wait.exit.i.do.body23.i_crit_edge
  %gcov_ctr.i53.i = load i64, ptr @__llvm_gcov_ctr.41, align 8, !dbg !266
  %11 = add i64 %gcov_ctr.i53.i, 1, !dbg !266
  store i64 %11, ptr @__llvm_gcov_ctr.41, align 8, !dbg !266
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %12 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.43, align 8
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !dbg !270, !srcloc !273
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.39, align 8
  %14 = add i64 %gcov_ctr.i2.i.i, 1
  store i64 %14, ptr @__llvm_gcov_ctr.39, align 8
  %and.i.i.i = and i32 %13, 128, !dbg !274
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i), !dbg !265
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0, !dbg !265
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body23.i.irqoff_test.exit_crit_edge, !dbg !265, !prof !276

do.body23.i.irqoff_test.exit_crit_edge:           ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !265
  br label %irqoff_test.exit, !dbg !265

if.then36.i:                                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !265
  %gcov_ctr45.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !265
  %15 = add i64 %gcov_ctr45.i, 1, !dbg !265
  store i64 %15, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !265
  tail call void @warn_bogus_irq_restore() #13, !dbg !265
  br label %irqoff_test.exit, !dbg !265

irqoff_test.exit:                                 ; preds = %if.then36.i, %do.body23.i.irqoff_test.exit_crit_edge
  %gcov_ctr.i54.i = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %16 = add i64 %gcov_ctr.i54.i, 1
  store i64 %16, ptr @__llvm_gcov_ctr.42, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #13, !dbg !277, !srcloc !280
  %gcov_ctr46.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !265
  %17 = add i64 %gcov_ctr46.i, 1, !dbg !265
  store i64 %17, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !265
  br label %if.end12, !dbg !240

if.else:                                          ; preds = %entry
  %bcmp17 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) @test_mode, ptr noundef nonnull dereferenceable(8) @.str.10, i32 8) #15, !dbg !281
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp17), !dbg !281
  %tobool2.not = icmp eq i32 %bcmp17, 0, !dbg !281
  br i1 %tobool2.not, label %if.then3, label %if.else4, !dbg !282

if.then3:                                         ; preds = %if.else
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 1), align 8, !dbg !283
  %18 = add i64 %gcov_ctr13, 1, !dbg !283
  store i64 %18, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 1), align 8, !dbg !283
  %gcov_ctr.i.i19 = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %19 = add i64 %gcov_ctr.i.i19, 1
  store i64 %19, ptr @__llvm_gcov_ctr.44, align 8
  %gcov_ctr.i.i.i20 = load i64, ptr @__llvm_gcov_ctr.46, align 8, !dbg !284
  %20 = add i64 %gcov_ctr.i.i.i20, 1, !dbg !284
  store i64 %20, ptr @__llvm_gcov_ctr.46, align 8, !dbg !284
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.21, align 8, !dbg !292
  %21 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !292
  store i64 %21, ptr @__llvm_gcov_ctr.21, align 8, !dbg !292
  %22 = tail call i32 @llvm.read_register.i32(metadata !79) #13, !dbg !292
  %and.i.i.i.i = and i32 %22, -16384, !dbg !294
  %23 = inttoptr i32 %and.i.i.i.i to ptr, !dbg !295
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1, !dbg !296
  %24 = ptrtoint ptr %preempt_count.i.i.i to i32, !dbg !297
  call void @__asan_load4_noabort(i32 %24), !dbg !297
  %25 = load volatile i32, ptr %preempt_count.i.i.i, align 4, !dbg !297
  %add.i.i = add i32 %25, 1, !dbg !297
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4, !dbg !297
  tail call void asm sideeffect "", "~{memory}"() #13, !dbg !298, !srcloc !299
  %gcov_ctr.i21 = load i64, ptr @__llvm_gcov_ctr.37, align 8, !dbg !300
  %26 = add i64 %gcov_ctr.i21, 1, !dbg !300
  store i64 %26, ptr @__llvm_gcov_ctr.37, align 8, !dbg !300
  %27 = load i32, ptr @delay, align 4, !dbg !300
  %gcov_ctr.i8.i = load i64, ptr @__llvm_gcov_ctr.40, align 16
  %28 = add i64 %gcov_ctr.i8.i, 1
  store i64 %28, ptr @__llvm_gcov_ctr.40, align 16
  %call.i.i22 = tail call i64 @trace_clock_local() #13, !dbg !301
  %mul.i.i23 = mul i32 %27, 1000
  %conv.i.i24 = zext i32 %mul.i.i23 to i64
  br label %do.body.i.i27, !dbg !303

do.body.i.i27:                                    ; preds = %if.end.i.i32.do.body.i.i27_crit_edge, %if.then3
  %call1.i.i25 = tail call i64 @trace_clock_local() #13, !dbg !304
  %call2.i.i26 = tail call zeroext i1 @kthread_should_stop() #13, !dbg !305
  br i1 %call2.i.i26, label %if.then.i.i29, label %if.end.i.i32, !dbg !305

if.then.i.i29:                                    ; preds = %do.body.i.i27
  call void @__sanitizer_cov_trace_pc() #12, !dbg !306
  %gcov_ctr4.i.i28 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !306
  %29 = add i64 %gcov_ctr4.i.i28, 1, !dbg !306
  store i64 %29, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !306
  br label %preemptoff_test.exit, !dbg !306

if.end.i.i32:                                     ; preds = %do.body.i.i27
  %gcov_ctr5.i.i30 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 2), align 16, !dbg !307
  %30 = add i64 %gcov_ctr5.i.i30, 1, !dbg !307
  store i64 %30, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 2), align 16, !dbg !307
  %sub.i9.i = sub i64 %call1.i.i25, %call.i.i22, !dbg !308
  %cmp.i.i31 = icmp ult i64 %sub.i9.i, %conv.i.i24, !dbg !309
  br i1 %cmp.i.i31, label %if.end.i.i32.do.body.i.i27_crit_edge, label %if.end.i.i32.preemptoff_test.exit_crit_edge, !dbg !307, !llvm.loop !310

if.end.i.i32.preemptoff_test.exit_crit_edge:      ; preds = %if.end.i.i32
  call void @__sanitizer_cov_trace_pc() #12, !dbg !307
  br label %preemptoff_test.exit, !dbg !307

if.end.i.i32.do.body.i.i27_crit_edge:             ; preds = %if.end.i.i32
  call void @__sanitizer_cov_trace_pc() #12, !dbg !307
  br label %do.body.i.i27, !dbg !307

preemptoff_test.exit:                             ; preds = %if.end.i.i32.preemptoff_test.exit_crit_edge, %if.then.i.i29
  tail call void asm sideeffect "", "~{memory}"() #13, !dbg !312, !srcloc !313
  %gcov_ctr.i3.i = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %31 = add i64 %gcov_ctr.i3.i, 1
  store i64 %31, ptr @__llvm_gcov_ctr.45, align 8
  %gcov_ctr.i.i4.i = load i64, ptr @__llvm_gcov_ctr.46, align 8, !dbg !314
  %32 = add i64 %gcov_ctr.i.i4.i, 1, !dbg !314
  store i64 %32, ptr @__llvm_gcov_ctr.46, align 8, !dbg !314
  %gcov_ctr.i.i.i5.i = load i64, ptr @__llvm_gcov_ctr.21, align 8, !dbg !318
  %33 = add i64 %gcov_ctr.i.i.i5.i, 1, !dbg !318
  store i64 %33, ptr @__llvm_gcov_ctr.21, align 8, !dbg !318
  %34 = tail call i32 @llvm.read_register.i32(metadata !79) #13, !dbg !318
  %and.i.i.i6.i = and i32 %34, -16384, !dbg !320
  %35 = inttoptr i32 %and.i.i.i6.i to ptr, !dbg !321
  %preempt_count.i.i7.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1, !dbg !322
  %36 = ptrtoint ptr %preempt_count.i.i7.i to i32, !dbg !323
  call void @__asan_load4_noabort(i32 %36), !dbg !323
  %37 = load volatile i32, ptr %preempt_count.i.i7.i, align 4, !dbg !323
  %sub.i.i33 = add i32 %37, -1, !dbg !323
  store volatile i32 %sub.i.i33, ptr %preempt_count.i.i7.i, align 4, !dbg !323
  br label %if.end12, !dbg !283

if.else4:                                         ; preds = %if.else
  %bcmp18 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @test_mode, ptr noundef nonnull dereferenceable(10) @.str.11, i32 10) #15, !dbg !324
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp18), !dbg !324
  %tobool6.not = icmp eq i32 %bcmp18, 0, !dbg !324
  br i1 %tobool6.not, label %if.then7, label %if.else4.if.end10_crit_edge, !dbg !325

if.else4.if.end10_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #12, !dbg !325
  br label %if.end10, !dbg !325

if.then7:                                         ; preds = %if.else4
  %38 = and i32 %idx, 1, !dbg !326
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38), !dbg !326
  %cmp = icmp eq i32 %38, 0, !dbg !326
  br i1 %cmp, label %if.then8, label %if.else9, !dbg !327

if.then8:                                         ; preds = %if.then7
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 2), align 16, !dbg !328
  %39 = add i64 %gcov_ctr14, 1, !dbg !328
  store i64 %39, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 2), align 16, !dbg !328
  %gcov_ctr.i.i35 = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %40 = add i64 %gcov_ctr.i.i35, 1
  store i64 %40, ptr @__llvm_gcov_ctr.38, align 8
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !dbg !329, !srcloc !247
  %gcov_ctr.i49.i36 = load i64, ptr @__llvm_gcov_ctr.39, align 8
  %42 = add i64 %gcov_ctr.i49.i36, 1
  store i64 %42, ptr @__llvm_gcov_ctr.39, align 8
  %and.i.i37 = and i32 %41, 128, !dbg !332
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37), !dbg !334
  %tobool.not.i38 = icmp eq i32 %and.i.i37, 0, !dbg !334
  br i1 %tobool.not.i38, label %if.then.i40, label %if.then8.do.end11.i45_crit_edge, !dbg !334

if.then8.do.end11.i45_crit_edge:                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12, !dbg !334
  br label %do.end11.i45, !dbg !334

if.then.i40:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12, !dbg !334
  %gcov_ctr.i39 = load i64, ptr @__llvm_gcov_ctr.36, align 16, !dbg !334
  %43 = add i64 %gcov_ctr.i39, 1, !dbg !334
  store i64 %43, ptr @__llvm_gcov_ctr.36, align 16, !dbg !334
  tail call void @trace_hardirqs_off() #13, !dbg !334
  br label %do.end11.i45, !dbg !334

do.end11.i45:                                     ; preds = %if.then.i40, %if.then8.do.end11.i45_crit_edge
  %44 = load i32, ptr @delay, align 4, !dbg !335
  %gcov_ctr.i50.i41 = load i64, ptr @__llvm_gcov_ctr.40, align 16
  %45 = add i64 %gcov_ctr.i50.i41, 1
  store i64 %45, ptr @__llvm_gcov_ctr.40, align 16
  %call.i.i42 = tail call i64 @trace_clock_local() #13, !dbg !336
  %mul.i.i43 = mul i32 %44, 1000
  %conv.i.i44 = zext i32 %mul.i.i43 to i64
  br label %do.body.i.i48, !dbg !338

do.body.i.i48:                                    ; preds = %if.end.i.i54.do.body.i.i48_crit_edge, %do.end11.i45
  %call1.i.i46 = tail call i64 @trace_clock_local() #13, !dbg !339
  %call2.i.i47 = tail call zeroext i1 @kthread_should_stop() #13, !dbg !340
  br i1 %call2.i.i47, label %if.then.i.i50, label %if.end.i.i54, !dbg !340

if.then.i.i50:                                    ; preds = %do.body.i.i48
  call void @__sanitizer_cov_trace_pc() #12, !dbg !341
  %gcov_ctr4.i.i49 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !341
  %46 = add i64 %gcov_ctr4.i.i49, 1, !dbg !341
  store i64 %46, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !341
  br label %busy_wait.exit.i56, !dbg !341

if.end.i.i54:                                     ; preds = %do.body.i.i48
  %gcov_ctr5.i.i51 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 2), align 16, !dbg !342
  %47 = add i64 %gcov_ctr5.i.i51, 1, !dbg !342
  store i64 %47, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 2), align 16, !dbg !342
  %sub.i.i52 = sub i64 %call1.i.i46, %call.i.i42, !dbg !343
  %cmp.i.i53 = icmp ult i64 %sub.i.i52, %conv.i.i44, !dbg !344
  br i1 %cmp.i.i53, label %if.end.i.i54.do.body.i.i48_crit_edge, label %if.end.i.i54.busy_wait.exit.i56_crit_edge, !dbg !342, !llvm.loop !345

if.end.i.i54.busy_wait.exit.i56_crit_edge:        ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #12, !dbg !342
  br label %busy_wait.exit.i56, !dbg !342

if.end.i.i54.do.body.i.i48_crit_edge:             ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #12, !dbg !342
  br label %do.body.i.i48, !dbg !342

busy_wait.exit.i56:                               ; preds = %if.end.i.i54.busy_wait.exit.i56_crit_edge, %if.then.i.i50
  %gcov_ctr.i51.i55 = load i64, ptr @__llvm_gcov_ctr.39, align 8
  %48 = add i64 %gcov_ctr.i51.i55, 1
  store i64 %48, ptr @__llvm_gcov_ctr.39, align 8
  br i1 %tobool.not.i38, label %if.then21.i58, label %busy_wait.exit.i56.do.body23.i64_crit_edge, !dbg !347

busy_wait.exit.i56.do.body23.i64_crit_edge:       ; preds = %busy_wait.exit.i56
  call void @__sanitizer_cov_trace_pc() #12, !dbg !347
  br label %do.body23.i64, !dbg !347

if.then21.i58:                                    ; preds = %busy_wait.exit.i56
  call void @__sanitizer_cov_trace_pc() #12, !dbg !347
  %gcov_ctr44.i57 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !347
  %49 = add i64 %gcov_ctr44.i57, 1, !dbg !347
  store i64 %49, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !347
  tail call void @trace_hardirqs_on() #13, !dbg !347
  br label %do.body23.i64, !dbg !347

do.body23.i64:                                    ; preds = %if.then21.i58, %busy_wait.exit.i56.do.body23.i64_crit_edge
  %gcov_ctr.i53.i59 = load i64, ptr @__llvm_gcov_ctr.41, align 8, !dbg !348
  %50 = add i64 %gcov_ctr.i53.i59, 1, !dbg !348
  store i64 %50, ptr @__llvm_gcov_ctr.41, align 8, !dbg !348
  %gcov_ctr.i.i.i60 = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %51 = add i64 %gcov_ctr.i.i.i60, 1
  store i64 %51, ptr @__llvm_gcov_ctr.43, align 8
  %52 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !dbg !350, !srcloc !273
  %gcov_ctr.i2.i.i61 = load i64, ptr @__llvm_gcov_ctr.39, align 8
  %53 = add i64 %gcov_ctr.i2.i.i61, 1
  store i64 %53, ptr @__llvm_gcov_ctr.39, align 8
  %and.i.i.i62 = and i32 %52, 128, !dbg !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i62), !dbg !347
  %tobool32.not.i63 = icmp eq i32 %and.i.i.i62, 0, !dbg !347
  br i1 %tobool32.not.i63, label %if.then36.i66, label %do.body23.i64.irqoff_test.exit69_crit_edge, !dbg !347, !prof !276

do.body23.i64.irqoff_test.exit69_crit_edge:       ; preds = %do.body23.i64
  call void @__sanitizer_cov_trace_pc() #12, !dbg !347
  br label %irqoff_test.exit69, !dbg !347

if.then36.i66:                                    ; preds = %do.body23.i64
  call void @__sanitizer_cov_trace_pc() #12, !dbg !347
  %gcov_ctr45.i65 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !347
  %54 = add i64 %gcov_ctr45.i65, 1, !dbg !347
  store i64 %54, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !347
  tail call void @warn_bogus_irq_restore() #13, !dbg !347
  br label %irqoff_test.exit69, !dbg !347

irqoff_test.exit69:                               ; preds = %if.then36.i66, %do.body23.i64.irqoff_test.exit69_crit_edge
  %gcov_ctr.i54.i67 = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %55 = add i64 %gcov_ctr.i54.i67, 1
  store i64 %55, ptr @__llvm_gcov_ctr.42, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %41) #13, !dbg !354, !srcloc !280
  %gcov_ctr46.i68 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !347
  %56 = add i64 %gcov_ctr46.i68, 1, !dbg !347
  store i64 %56, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !347
  br label %if.end10, !dbg !328

if.else9:                                         ; preds = %if.then7
  %gcov_ctr15 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 3), align 8, !dbg !356
  %57 = add i64 %gcov_ctr15, 1, !dbg !356
  store i64 %57, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 3), align 8, !dbg !356
  %gcov_ctr.i.i70 = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %58 = add i64 %gcov_ctr.i.i70, 1
  store i64 %58, ptr @__llvm_gcov_ctr.44, align 8
  %gcov_ctr.i.i.i71 = load i64, ptr @__llvm_gcov_ctr.46, align 8, !dbg !357
  %59 = add i64 %gcov_ctr.i.i.i71, 1, !dbg !357
  store i64 %59, ptr @__llvm_gcov_ctr.46, align 8, !dbg !357
  %gcov_ctr.i.i.i.i72 = load i64, ptr @__llvm_gcov_ctr.21, align 8, !dbg !361
  %60 = add i64 %gcov_ctr.i.i.i.i72, 1, !dbg !361
  store i64 %60, ptr @__llvm_gcov_ctr.21, align 8, !dbg !361
  %61 = tail call i32 @llvm.read_register.i32(metadata !79) #13, !dbg !361
  %and.i.i.i.i73 = and i32 %61, -16384, !dbg !363
  %62 = inttoptr i32 %and.i.i.i.i73 to ptr, !dbg !364
  %preempt_count.i.i.i74 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1, !dbg !365
  %63 = ptrtoint ptr %preempt_count.i.i.i74 to i32, !dbg !366
  call void @__asan_load4_noabort(i32 %63), !dbg !366
  %64 = load volatile i32, ptr %preempt_count.i.i.i74, align 4, !dbg !366
  %add.i.i75 = add i32 %64, 1, !dbg !366
  store volatile i32 %add.i.i75, ptr %preempt_count.i.i.i74, align 4, !dbg !366
  tail call void asm sideeffect "", "~{memory}"() #13, !dbg !367, !srcloc !299
  %gcov_ctr.i76 = load i64, ptr @__llvm_gcov_ctr.37, align 8, !dbg !368
  %65 = add i64 %gcov_ctr.i76, 1, !dbg !368
  store i64 %65, ptr @__llvm_gcov_ctr.37, align 8, !dbg !368
  %66 = load i32, ptr @delay, align 4, !dbg !368
  %gcov_ctr.i8.i77 = load i64, ptr @__llvm_gcov_ctr.40, align 16
  %67 = add i64 %gcov_ctr.i8.i77, 1
  store i64 %67, ptr @__llvm_gcov_ctr.40, align 16
  %call.i.i78 = tail call i64 @trace_clock_local() #13, !dbg !369
  %mul.i.i79 = mul i32 %66, 1000
  %conv.i.i80 = zext i32 %mul.i.i79 to i64
  br label %do.body.i.i83, !dbg !371

do.body.i.i83:                                    ; preds = %if.end.i.i89.do.body.i.i83_crit_edge, %if.else9
  %call1.i.i81 = tail call i64 @trace_clock_local() #13, !dbg !372
  %call2.i.i82 = tail call zeroext i1 @kthread_should_stop() #13, !dbg !373
  br i1 %call2.i.i82, label %if.then.i.i85, label %if.end.i.i89, !dbg !373

if.then.i.i85:                                    ; preds = %do.body.i.i83
  call void @__sanitizer_cov_trace_pc() #12, !dbg !374
  %gcov_ctr4.i.i84 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !374
  %68 = add i64 %gcov_ctr4.i.i84, 1, !dbg !374
  store i64 %68, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !374
  br label %preemptoff_test.exit97, !dbg !374

if.end.i.i89:                                     ; preds = %do.body.i.i83
  %gcov_ctr5.i.i86 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 2), align 16, !dbg !375
  %69 = add i64 %gcov_ctr5.i.i86, 1, !dbg !375
  store i64 %69, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 2), align 16, !dbg !375
  %sub.i9.i87 = sub i64 %call1.i.i81, %call.i.i78, !dbg !376
  %cmp.i.i88 = icmp ult i64 %sub.i9.i87, %conv.i.i80, !dbg !377
  br i1 %cmp.i.i88, label %if.end.i.i89.do.body.i.i83_crit_edge, label %if.end.i.i89.preemptoff_test.exit97_crit_edge, !dbg !375, !llvm.loop !378

if.end.i.i89.preemptoff_test.exit97_crit_edge:    ; preds = %if.end.i.i89
  call void @__sanitizer_cov_trace_pc() #12, !dbg !375
  br label %preemptoff_test.exit97, !dbg !375

if.end.i.i89.do.body.i.i83_crit_edge:             ; preds = %if.end.i.i89
  call void @__sanitizer_cov_trace_pc() #12, !dbg !375
  br label %do.body.i.i83, !dbg !375

preemptoff_test.exit97:                           ; preds = %if.end.i.i89.preemptoff_test.exit97_crit_edge, %if.then.i.i85
  tail call void asm sideeffect "", "~{memory}"() #13, !dbg !380, !srcloc !313
  %gcov_ctr.i3.i90 = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %70 = add i64 %gcov_ctr.i3.i90, 1
  store i64 %70, ptr @__llvm_gcov_ctr.45, align 8
  %gcov_ctr.i.i4.i91 = load i64, ptr @__llvm_gcov_ctr.46, align 8, !dbg !381
  %71 = add i64 %gcov_ctr.i.i4.i91, 1, !dbg !381
  store i64 %71, ptr @__llvm_gcov_ctr.46, align 8, !dbg !381
  %gcov_ctr.i.i.i5.i92 = load i64, ptr @__llvm_gcov_ctr.21, align 8, !dbg !384
  %72 = add i64 %gcov_ctr.i.i.i5.i92, 1, !dbg !384
  store i64 %72, ptr @__llvm_gcov_ctr.21, align 8, !dbg !384
  %73 = tail call i32 @llvm.read_register.i32(metadata !79) #13, !dbg !384
  %and.i.i.i6.i93 = and i32 %73, -16384, !dbg !386
  %74 = inttoptr i32 %and.i.i.i6.i93 to ptr, !dbg !387
  %preempt_count.i.i7.i94 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1, !dbg !388
  %75 = ptrtoint ptr %preempt_count.i.i7.i94 to i32, !dbg !389
  call void @__asan_load4_noabort(i32 %75), !dbg !389
  %76 = load volatile i32, ptr %preempt_count.i.i7.i94, align 4, !dbg !389
  %sub.i.i95 = add i32 %76, -1, !dbg !389
  store volatile i32 %sub.i.i95, ptr %preempt_count.i.i7.i94, align 4, !dbg !389
  br label %if.end10

if.end10:                                         ; preds = %preemptoff_test.exit97, %irqoff_test.exit69, %if.else4.if.end10_crit_edge
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 4), align 16
  %77 = add i64 %gcov_ctr16, 1
  store i64 %77, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 4), align 16
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %preemptoff_test.exit, %irqoff_test.exit
  ret void, !dbg !390
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @trace_clock_local() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigger_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 !dbg !391 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !392
  %call = tail call fastcc i32 @preemptirq_run_test(), !dbg !393
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !394
  %tobool.not = icmp eq i32 %call, 0, !dbg !394
  %.__llvm_gcov_ctr.47 = select i1 %tobool.not, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 1), ptr @__llvm_gcov_ctr.47, !dbg !395
  %count.call = select i1 %tobool.not, i32 %count, i32 %call, !dbg !395
  %0 = ptrtoint ptr %.__llvm_gcov_ctr.47 to i32, !dbg !395
  call void @__asan_load8_noabort(i32 %0), !dbg !395
  %gcov_ctr1 = load i64, ptr %.__llvm_gcov_ctr.47, align 8, !dbg !395
  %1 = add i64 %gcov_ctr1, 1, !dbg !395
  store i64 %1, ptr %.__llvm_gcov_ctr.47, align 8, !dbg !395
  ret i32 %count.call, !dbg !396
}

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #7 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 390266750) #13
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #13
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #13
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 36
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #12
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llvm_gcda_summary_info() #13
  tail call void @llvm_gcda_end_file() #13
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
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.13, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.14, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.15, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) @__llvm_gcov_ctr.16, i8 0, i64 136, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.17, align 8
  store i64 0, ptr @__llvm_gcov_ctr.18, align 8
  store i64 0, ptr @__llvm_gcov_ctr.19, align 8
  store i64 0, ptr @__llvm_gcov_ctr.20, align 8
  store i64 0, ptr @__llvm_gcov_ctr.21, align 8
  store i64 0, ptr @__llvm_gcov_ctr.22, align 8
  store i64 0, ptr @__llvm_gcov_ctr.23, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.24, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.25, align 8
  store i64 0, ptr @__llvm_gcov_ctr.26, align 8
  store i64 0, ptr @__llvm_gcov_ctr.27, align 8
  store i64 0, ptr @__llvm_gcov_ctr.28, align 8
  store i64 0, ptr @__llvm_gcov_ctr.29, align 8
  store i64 0, ptr @__llvm_gcov_ctr.30, align 8
  store i64 0, ptr @__llvm_gcov_ctr.31, align 8
  store i64 0, ptr @__llvm_gcov_ctr.32, align 8
  store i64 0, ptr @__llvm_gcov_ctr.33, align 8
  store i64 0, ptr @__llvm_gcov_ctr.34, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.35, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.36, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.37, align 8
  store i64 0, ptr @__llvm_gcov_ctr.38, align 8
  store i64 0, ptr @__llvm_gcov_ctr.39, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.40, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.41, align 8
  store i64 0, ptr @__llvm_gcov_ctr.42, align 8
  store i64 0, ptr @__llvm_gcov_ctr.43, align 8
  store i64 0, ptr @__llvm_gcov_ctr.44, align 8
  store i64 0, ptr @__llvm_gcov_ctr.45, align 8
  store i64 0, ptr @__llvm_gcov_ctr.46, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.47, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #7 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #13
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { noinline nounwind uwtable(sync) }
attributes #8 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind uwtable(sync) }
attributes #12 = { nomerge }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !31, !32, !34, !35, !37, !39, !41, !43, !44, !46, !48, !49, !50, !51, !52, !54, !56, !58, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.gcov = !{!88}
!llvm.ident = !{!89}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/preemptirq_delay_test.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @__param_delay, !3, !"__param_delay", i1 false, i1 false}
!3 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_delaytype177, !3, !"__UNIQUE_ID_delaytype177", i1 false, i1 false}
!5 = !{ptr @__param_test_mode, !6, !"__param_test_mode", i1 false, i1 false}
!6 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 27, i32 1}
!7 = !{ptr @__UNIQUE_ID_test_modetype178, !6, !"__UNIQUE_ID_test_modetype178", i1 false, i1 false}
!8 = !{ptr @__param_burst_size, !9, !"__param_burst_size", i1 false, i1 false}
!9 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 28, i32 1}
!10 = !{ptr @__UNIQUE_ID_burst_sizetype179, !9, !"__UNIQUE_ID_burst_sizetype179", i1 false, i1 false}
!11 = !{ptr @__param_cpu_affinity, !12, !"__param_cpu_affinity", i1 false, i1 false}
!12 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 29, i32 1}
!13 = !{ptr @__UNIQUE_ID_cpu_affinitytype180, !12, !"__UNIQUE_ID_cpu_affinitytype180", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_delay181, !15, !"__UNIQUE_ID_delay181", i1 false, i1 false}
!15 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 30, i32 1}
!16 = !{ptr @__UNIQUE_ID_test_mode182, !17, !"__UNIQUE_ID_test_mode182", i1 false, i1 false}
!17 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 31, i32 1}
!18 = !{ptr @__UNIQUE_ID_burst_size183, !19, !"__UNIQUE_ID_burst_size183", i1 false, i1 false}
!19 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 32, i32 1}
!20 = !{ptr @__UNIQUE_ID_cpu_affinity184, !21, !"__UNIQUE_ID_cpu_affinity184", i1 false, i1 false}
!21 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 33, i32 1}
!22 = !{ptr @__UNIQUE_ID_license188, !23, !"__UNIQUE_ID_license188", i1 false, i1 false}
!23 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 218, i32 1}
!24 = !{ptr @___asan_gen_.48, !3, !"__param_str_delay", i1 false, i1 false}
!25 = !{ptr @delay, !26, !"delay", i1 false, i1 false}
!26 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 21, i32 14}
!27 = !{ptr @___asan_gen_.57, !6, !"__param_str_test_mode", i1 false, i1 false}
!28 = !{ptr @__param_string_test_mode, !6, !"__param_string_test_mode", i1 false, i1 false}
!29 = !{ptr @test_mode, !30, !"test_mode", i1 false, i1 false}
!30 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 22, i32 13}
!31 = !{ptr @___asan_gen_.51, !9, !"__param_str_burst_size", i1 false, i1 false}
!32 = !{ptr @burst_size, !33, !"burst_size", i1 false, i1 false}
!33 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 23, i32 13}
!34 = !{ptr @___asan_gen_.54, !12, !"__param_str_cpu_affinity", i1 false, i1 false}
!35 = !{ptr @cpu_affinity, !36, !"cpu_affinity", i1 false, i1 false}
!36 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 24, i32 13}
!37 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 199, i32 49}
!39 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 154, i32 41}
!41 = !{ptr @init_completion.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../include/linux/completion.h", i32 87, i32 2}
!43 = !{ptr @.str.2, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @done, !45, !"done", i1 false, i1 false}
!45 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 35, i32 26}
!46 = !{ptr @.str.3, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 128, i32 4}
!48 = !{ptr @.str.4, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.5, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @preemptirq_delay_run._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @preemptirq_delay_run._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 136, i32 2}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 139, i32 3}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 142, i32 2}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!60 = !{ptr @.str.8, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @testfuncs, !62, !"testfuncs", i1 false, i1 false}
!62 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 103, i32 15}
!63 = !{ptr @.str.9, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 70, i32 25}
!65 = !{ptr @.str.10, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 72, i32 30}
!67 = !{ptr @.str.11, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 74, i32 30}
!69 = !{ptr @preemptirq_delay_kobj, !70, !"preemptirq_delay_kobj", i1 false, i1 false}
!70 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 189, i32 24}
!71 = !{ptr @attr_group, !72, !"attr_group", i1 false, i1 false}
!72 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 185, i32 31}
!73 = !{ptr @attrs, !74, !"attrs", i1 false, i1 false}
!74 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 180, i32 26}
!75 = !{ptr @.str.12, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 178, i32 2}
!77 = !{ptr @trigger_attribute, !78, !"trigger_attribute", i1 false, i1 false}
!78 = !{!"../kernel/trace/preemptirq_delay_test.c", i32 177, i32 30}
!79 = !{!"sp"}
!80 = !{i32 2, !"Debug Info Version", i32 3}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/preemptirq_delay_test.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/preemptirq_delay_test.gcda", !0}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = distinct !DISubprogram(name: "preemptirq_delay_init", scope: !1, file: !1, line: 191, type: !91, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!91 = !DISubroutineType(types: !92)
!92 = !{}
!93 = !DILocation(line: 192, scope: !90)
!94 = !DILocation(line: 195, column: 11, scope: !90)
!95 = !DILocation(line: 196, column: 13, scope: !90)
!96 = !DILocation(line: 196, column: 6, scope: !90)
!97 = !DILocation(line: 197, column: 10, scope: !90)
!98 = !DILocation(line: 197, column: 3, scope: !90)
!99 = !DILocation(line: 200, column: 14, scope: !90)
!100 = !DILocation(line: 199, column: 26, scope: !90)
!101 = !DILocation(line: 199, column: 24, scope: !90)
!102 = !DILocation(line: 201, column: 7, scope: !90)
!103 = !DILocation(line: 201, column: 6, scope: !90)
!104 = !DILocation(line: 202, column: 3, scope: !90)
!105 = !DILocation(line: 204, column: 11, scope: !90)
!106 = !DILocation(line: 205, column: 6, scope: !90)
!107 = !DILocation(line: 206, column: 15, scope: !90)
!108 = !DILocation(line: 206, column: 3, scope: !90)
!109 = !DILocation(line: 208, column: 9, scope: !90)
!110 = !DILocation(line: 208, column: 2, scope: !90)
!111 = !DILocation(line: 0, scope: !90)
!112 = !DILocation(line: 209, column: 1, scope: !90)
!113 = distinct !DISubprogram(name: "preemptirq_delay_exit", scope: !1, file: !1, line: 211, type: !91, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!114 = !DILocation(line: 212, scope: !113)
!115 = !DILocation(line: 213, column: 14, scope: !113)
!116 = !DILocation(line: 213, column: 2, scope: !113)
!117 = !DILocation(line: 214, column: 1, scope: !113)
!118 = distinct !DISubprogram(name: "preemptirq_run_test", scope: !1, file: !1, line: 147, type: !91, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!119 = !DILocation(line: 148, scope: !118)
!120 = !DILocation(line: 150, column: 2, scope: !118)
!121 = !DILocation(line: 150, column: 7, scope: !118)
!122 = !DILocation(line: 86, column: 10, scope: !123, inlinedAt: !125)
!123 = distinct !DISubprogram(name: "init_completion", scope: !124, file: !124, line: 84, type: !91, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!124 = !DIFile(filename: "../include/linux/completion.h", directory: "/llk/linux-5.17/build_arm_allyes")
!125 = distinct !DILocation(line: 152, column: 2, scope: !118)
!126 = !DILocation(line: 87, column: 2, scope: !123, inlinedAt: !125)
!127 = !DILocation(line: 154, column: 2, scope: !118)
!128 = !DILocation(line: 155, column: 10, scope: !118)
!129 = !DILocation(line: 36, column: 9, scope: !130, inlinedAt: !132)
!130 = distinct !DISubprogram(name: "IS_ERR", scope: !131, file: !131, line: 34, type: !91, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!131 = !DIFile(filename: "../include/linux/err.h", directory: "/llk/linux-5.17/build_arm_allyes")
!132 = distinct !DILocation(line: 155, column: 10, scope: !118)
!133 = !DILocation(line: 0, scope: !118)
!134 = !DILocation(line: 157, column: 18, scope: !118)
!135 = !DILocation(line: 31, column: 9, scope: !136, inlinedAt: !137)
!136 = distinct !DISubprogram(name: "PTR_ERR", scope: !131, file: !131, line: 29, type: !91, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!137 = distinct !DILocation(line: 157, column: 10, scope: !118)
!138 = !DILocation(line: 157, column: 3, scope: !118)
!139 = !DILocation(line: 158, column: 6, scope: !118)
!140 = !DILocation(line: 159, column: 3, scope: !118)
!141 = !DILocation(line: 160, column: 3, scope: !118)
!142 = !DILocation(line: 161, column: 2, scope: !118)
!143 = !DILocation(line: 162, column: 2, scope: !118)
!144 = !DILocation(line: 163, column: 1, scope: !118)
!145 = distinct !DISubprogram(name: "preemptirq_delay_run", scope: !1, file: !1, line: 118, type: !91, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!146 = !DILocation(line: 119, scope: !145)
!147 = !DILocation(line: 121, column: 10, scope: !145)
!148 = !DILocation(line: 122, column: 2, scope: !145)
!149 = !DILocation(line: 122, column: 17, scope: !145)
!150 = !{!"auto-init"}
!151 = !DILocation(line: 124, column: 6, scope: !145)
!152 = !DILocation(line: 124, column: 19, scope: !145)
!153 = !DILocation(line: 125, column: 3, scope: !145)
!154 = !DILocation(line: 425, column: 34, scope: !155, inlinedAt: !157)
!155 = distinct !DISubprogram(name: "cpumask_clear", scope: !156, file: !156, line: 423, type: !91, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!156 = !DIFile(filename: "../include/linux/cpumask.h", directory: "/llk/linux-5.17/build_arm_allyes")
!157 = distinct !DILocation(line: 125, column: 3, scope: !145)
!158 = !DILocation(line: 238, column: 21, scope: !159, inlinedAt: !161)
!159 = distinct !DISubprogram(name: "bitmap_zero", scope: !160, file: !160, line: 236, type: !91, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!160 = !DIFile(filename: "../include/linux/bitmap.h", directory: "/llk/linux-5.17/build_arm_allyes")
!161 = distinct !DILocation(line: 425, column: 2, scope: !155, inlinedAt: !157)
!162 = !DILocation(line: 238, column: 42, scope: !159, inlinedAt: !161)
!163 = !DILocation(line: 239, column: 2, scope: !159, inlinedAt: !161)
!164 = !DILocation(line: 108, column: 2, scope: !165, inlinedAt: !166)
!165 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !156, file: !156, line: 105, type: !91, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!166 = distinct !DILocation(line: 115, column: 2, scope: !167, inlinedAt: !168)
!167 = distinct !DISubprogram(name: "cpumask_check", scope: !156, file: !156, line: 113, type: !91, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!168 = distinct !DILocation(line: 346, column: 2, scope: !169, inlinedAt: !170)
!169 = distinct !DISubprogram(name: "cpumask_set_cpu", scope: !156, file: !156, line: 344, type: !91, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!170 = distinct !DILocation(line: 126, column: 3, scope: !145)
!171 = !{!"branch_weights", i32 2000, i32 1}
!172 = !DILocation(line: 346, column: 2, scope: !169, inlinedAt: !170)
!173 = !DILocation(line: 104, column: 4, scope: !174, inlinedAt: !176)
!174 = distinct !DISubprogram(name: "current_thread_info", scope: !175, file: !175, line: 101, type: !91, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!175 = !DIFile(filename: "../arch/arm/include/asm/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!176 = distinct !DILocation(line: 127, column: 28, scope: !145)
!177 = !DILocation(line: 104, column: 26, scope: !174, inlinedAt: !176)
!178 = !DILocation(line: 103, column: 9, scope: !174, inlinedAt: !176)
!179 = !DILocation(line: 127, column: 28, scope: !145)
!180 = !DILocation(line: 127, column: 7, scope: !145)
!181 = !DILocation(line: 128, column: 4, scope: !145)
!182 = !DILocation(line: 131, column: 16, scope: !145)
!183 = !DILocation(line: 131, column: 2, scope: !145)
!184 = !DILocation(line: 132, column: 4, scope: !145)
!185 = !DILocation(line: 132, column: 3, scope: !145)
!186 = !DILocation(line: 131, column: 22, scope: !145)
!187 = distinct !{!187, !183, !188}
!188 = !DILocation(line: 132, column: 19, scope: !145)
!189 = !DILocation(line: 134, column: 2, scope: !145)
!190 = !DILocation(line: 104, column: 4, scope: !174, inlinedAt: !191)
!191 = distinct !DILocation(line: 136, column: 2, scope: !145)
!192 = !DILocation(line: 104, column: 26, scope: !174, inlinedAt: !191)
!193 = !DILocation(line: 103, column: 9, scope: !174, inlinedAt: !191)
!194 = !DILocation(line: 136, column: 2, scope: !145)
!195 = !{i64 2152770977}
!196 = !DILocation(line: 137, column: 10, scope: !145)
!197 = !DILocation(line: 137, column: 2, scope: !145)
!198 = !DILocation(line: 138, column: 3, scope: !145)
!199 = !DILocation(line: 139, column: 3, scope: !145)
!200 = !{i64 2152775718}
!201 = distinct !{!201, !197, !202}
!202 = !DILocation(line: 140, column: 2, scope: !145)
!203 = !DILocation(line: 142, column: 2, scope: !145)
!204 = !DILocation(line: 145, column: 1, scope: !145)
!205 = !DILocation(line: 144, column: 2, scope: !145)
!206 = distinct !DISubprogram(name: "preemptirqtest_0", scope: !1, file: !1, line: 92, type: !91, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!207 = !DILocation(line: 92, scope: !206)
!208 = !DILocation(line: 92, column: 1, scope: !206)
!209 = distinct !DISubprogram(name: "preemptirqtest_1", scope: !1, file: !1, line: 93, type: !91, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!210 = !DILocation(line: 93, scope: !209)
!211 = !DILocation(line: 93, column: 1, scope: !209)
!212 = distinct !DISubprogram(name: "preemptirqtest_2", scope: !1, file: !1, line: 94, type: !91, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!213 = !DILocation(line: 94, scope: !212)
!214 = !DILocation(line: 94, column: 1, scope: !212)
!215 = distinct !DISubprogram(name: "preemptirqtest_3", scope: !1, file: !1, line: 95, type: !91, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!216 = !DILocation(line: 95, scope: !215)
!217 = !DILocation(line: 95, column: 1, scope: !215)
!218 = distinct !DISubprogram(name: "preemptirqtest_4", scope: !1, file: !1, line: 96, type: !91, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!219 = !DILocation(line: 96, scope: !218)
!220 = !DILocation(line: 96, column: 1, scope: !218)
!221 = distinct !DISubprogram(name: "preemptirqtest_5", scope: !1, file: !1, line: 97, type: !91, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!222 = !DILocation(line: 97, scope: !221)
!223 = !DILocation(line: 97, column: 1, scope: !221)
!224 = distinct !DISubprogram(name: "preemptirqtest_6", scope: !1, file: !1, line: 98, type: !91, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!225 = !DILocation(line: 98, scope: !224)
!226 = !DILocation(line: 98, column: 1, scope: !224)
!227 = distinct !DISubprogram(name: "preemptirqtest_7", scope: !1, file: !1, line: 99, type: !91, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!228 = !DILocation(line: 99, scope: !227)
!229 = !DILocation(line: 99, column: 1, scope: !227)
!230 = distinct !DISubprogram(name: "preemptirqtest_8", scope: !1, file: !1, line: 100, type: !91, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!231 = !DILocation(line: 100, scope: !230)
!232 = !DILocation(line: 100, column: 1, scope: !230)
!233 = distinct !DISubprogram(name: "preemptirqtest_9", scope: !1, file: !1, line: 101, type: !91, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!234 = !DILocation(line: 101, scope: !233)
!235 = !DILocation(line: 101, column: 1, scope: !233)
!236 = distinct !DISubprogram(name: "execute_preemptirqtest", scope: !1, file: !1, line: 68, type: !91, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!237 = !DILocation(line: 69, scope: !236)
!238 = !DILocation(line: 70, column: 7, scope: !236)
!239 = !DILocation(line: 70, column: 6, scope: !236)
!240 = !DILocation(line: 71, column: 3, scope: !236)
!241 = !DILocation(line: 29, column: 2, scope: !242, inlinedAt: !244)
!242 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !243, file: !243, line: 25, type: !91, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!243 = !DIFile(filename: "../arch/arm/include/asm/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!244 = distinct !DILocation(line: 56, column: 2, scope: !245, inlinedAt: !246)
!245 = distinct !DISubprogram(name: "irqoff_test", scope: !1, file: !1, line: 52, type: !91, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!246 = distinct !DILocation(line: 71, column: 3, scope: !236)
!247 = !{i64 585524, i64 585585}
!248 = !DILocation(line: 181, column: 15, scope: !249, inlinedAt: !250)
!249 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !243, file: !243, line: 179, type: !91, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!250 = distinct !DILocation(line: 56, column: 2, scope: !245, inlinedAt: !246)
!251 = !DILocation(line: 56, column: 2, scope: !245, inlinedAt: !246)
!252 = !DILocation(line: 57, column: 12, scope: !245, inlinedAt: !246)
!253 = !DILocation(line: 43, column: 10, scope: !254, inlinedAt: !255)
!254 = distinct !DISubprogram(name: "busy_wait", scope: !1, file: !1, line: 39, type: !91, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!255 = distinct !DILocation(line: 57, column: 2, scope: !245, inlinedAt: !246)
!256 = !DILocation(line: 45, column: 2, scope: !254, inlinedAt: !255)
!257 = !DILocation(line: 46, column: 9, scope: !254, inlinedAt: !255)
!258 = !DILocation(line: 47, column: 7, scope: !254, inlinedAt: !255)
!259 = !DILocation(line: 48, column: 4, scope: !254, inlinedAt: !255)
!260 = !DILocation(line: 49, column: 2, scope: !254, inlinedAt: !255)
!261 = !DILocation(line: 49, column: 16, scope: !254, inlinedAt: !255)
!262 = !DILocation(line: 49, column: 25, scope: !254, inlinedAt: !255)
!263 = distinct !{!263, !256, !264}
!264 = !DILocation(line: 49, column: 40, scope: !254, inlinedAt: !255)
!265 = !DILocation(line: 58, column: 2, scope: !245, inlinedAt: !246)
!266 = !DILocation(line: 63, column: 34, scope: !267, inlinedAt: !269)
!267 = distinct !DISubprogram(name: "arch_irqs_disabled", scope: !268, file: !268, line: 61, type: !91, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!268 = !DIFile(filename: "../include/asm-generic/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!269 = distinct !DILocation(line: 58, column: 2, scope: !245, inlinedAt: !246)
!270 = !DILocation(line: 159, column: 2, scope: !271, inlinedAt: !272)
!271 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !243, file: !243, line: 156, type: !91, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!272 = distinct !DILocation(line: 63, column: 34, scope: !267, inlinedAt: !269)
!273 = !{i64 588256}
!274 = !DILocation(line: 181, column: 15, scope: !249, inlinedAt: !275)
!275 = distinct !DILocation(line: 63, column: 9, scope: !267, inlinedAt: !269)
!276 = !{!"branch_weights", i32 1, i32 2000}
!277 = !DILocation(line: 171, column: 2, scope: !278, inlinedAt: !279)
!278 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !243, file: !243, line: 169, type: !91, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!279 = distinct !DILocation(line: 58, column: 2, scope: !245, inlinedAt: !246)
!280 = !{i64 588541}
!281 = !DILocation(line: 72, column: 12, scope: !236)
!282 = !DILocation(line: 72, column: 11, scope: !236)
!283 = !DILocation(line: 73, column: 3, scope: !236)
!284 = !DILocation(line: 16, column: 10, scope: !285, inlinedAt: !287)
!285 = distinct !DISubprogram(name: "preempt_count_ptr", scope: !286, file: !286, line: 14, type: !91, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!286 = !DIFile(filename: "../include/asm-generic/preempt.h", directory: "/llk/linux-5.17/build_arm_allyes")
!287 = distinct !DILocation(line: 54, column: 3, scope: !288, inlinedAt: !289)
!288 = distinct !DISubprogram(name: "__preempt_count_add", scope: !286, file: !286, line: 52, type: !91, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!289 = distinct !DILocation(line: 63, column: 2, scope: !290, inlinedAt: !291)
!290 = distinct !DISubprogram(name: "preemptoff_test", scope: !1, file: !1, line: 61, type: !91, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!291 = distinct !DILocation(line: 73, column: 3, scope: !236)
!292 = !DILocation(line: 104, column: 4, scope: !174, inlinedAt: !293)
!293 = distinct !DILocation(line: 16, column: 10, scope: !285, inlinedAt: !287)
!294 = !DILocation(line: 104, column: 26, scope: !174, inlinedAt: !293)
!295 = !DILocation(line: 103, column: 9, scope: !174, inlinedAt: !293)
!296 = !DILocation(line: 16, column: 33, scope: !285, inlinedAt: !287)
!297 = !DILocation(line: 54, column: 23, scope: !288, inlinedAt: !289)
!298 = !DILocation(line: 63, column: 2, scope: !290, inlinedAt: !291)
!299 = !{i64 2152758541}
!300 = !DILocation(line: 64, column: 12, scope: !290, inlinedAt: !291)
!301 = !DILocation(line: 43, column: 10, scope: !254, inlinedAt: !302)
!302 = distinct !DILocation(line: 64, column: 2, scope: !290, inlinedAt: !291)
!303 = !DILocation(line: 45, column: 2, scope: !254, inlinedAt: !302)
!304 = !DILocation(line: 46, column: 9, scope: !254, inlinedAt: !302)
!305 = !DILocation(line: 47, column: 7, scope: !254, inlinedAt: !302)
!306 = !DILocation(line: 48, column: 4, scope: !254, inlinedAt: !302)
!307 = !DILocation(line: 49, column: 2, scope: !254, inlinedAt: !302)
!308 = !DILocation(line: 49, column: 16, scope: !254, inlinedAt: !302)
!309 = !DILocation(line: 49, column: 25, scope: !254, inlinedAt: !302)
!310 = distinct !{!310, !303, !311}
!311 = !DILocation(line: 49, column: 40, scope: !254, inlinedAt: !302)
!312 = !DILocation(line: 65, column: 2, scope: !290, inlinedAt: !291)
!313 = !{i64 2152758638}
!314 = !DILocation(line: 16, column: 10, scope: !285, inlinedAt: !315)
!315 = distinct !DILocation(line: 59, column: 3, scope: !316, inlinedAt: !317)
!316 = distinct !DISubprogram(name: "__preempt_count_sub", scope: !286, file: !286, line: 57, type: !91, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!317 = distinct !DILocation(line: 65, column: 2, scope: !290, inlinedAt: !291)
!318 = !DILocation(line: 104, column: 4, scope: !174, inlinedAt: !319)
!319 = distinct !DILocation(line: 16, column: 10, scope: !285, inlinedAt: !315)
!320 = !DILocation(line: 104, column: 26, scope: !174, inlinedAt: !319)
!321 = !DILocation(line: 103, column: 9, scope: !174, inlinedAt: !319)
!322 = !DILocation(line: 16, column: 33, scope: !285, inlinedAt: !315)
!323 = !DILocation(line: 59, column: 23, scope: !316, inlinedAt: !317)
!324 = !DILocation(line: 74, column: 12, scope: !236)
!325 = !DILocation(line: 74, column: 11, scope: !236)
!326 = !DILocation(line: 75, column: 15, scope: !236)
!327 = !DILocation(line: 75, column: 7, scope: !236)
!328 = !DILocation(line: 76, column: 4, scope: !236)
!329 = !DILocation(line: 29, column: 2, scope: !242, inlinedAt: !330)
!330 = distinct !DILocation(line: 56, column: 2, scope: !245, inlinedAt: !331)
!331 = distinct !DILocation(line: 76, column: 4, scope: !236)
!332 = !DILocation(line: 181, column: 15, scope: !249, inlinedAt: !333)
!333 = distinct !DILocation(line: 56, column: 2, scope: !245, inlinedAt: !331)
!334 = !DILocation(line: 56, column: 2, scope: !245, inlinedAt: !331)
!335 = !DILocation(line: 57, column: 12, scope: !245, inlinedAt: !331)
!336 = !DILocation(line: 43, column: 10, scope: !254, inlinedAt: !337)
!337 = distinct !DILocation(line: 57, column: 2, scope: !245, inlinedAt: !331)
!338 = !DILocation(line: 45, column: 2, scope: !254, inlinedAt: !337)
!339 = !DILocation(line: 46, column: 9, scope: !254, inlinedAt: !337)
!340 = !DILocation(line: 47, column: 7, scope: !254, inlinedAt: !337)
!341 = !DILocation(line: 48, column: 4, scope: !254, inlinedAt: !337)
!342 = !DILocation(line: 49, column: 2, scope: !254, inlinedAt: !337)
!343 = !DILocation(line: 49, column: 16, scope: !254, inlinedAt: !337)
!344 = !DILocation(line: 49, column: 25, scope: !254, inlinedAt: !337)
!345 = distinct !{!345, !338, !346}
!346 = !DILocation(line: 49, column: 40, scope: !254, inlinedAt: !337)
!347 = !DILocation(line: 58, column: 2, scope: !245, inlinedAt: !331)
!348 = !DILocation(line: 63, column: 34, scope: !267, inlinedAt: !349)
!349 = distinct !DILocation(line: 58, column: 2, scope: !245, inlinedAt: !331)
!350 = !DILocation(line: 159, column: 2, scope: !271, inlinedAt: !351)
!351 = distinct !DILocation(line: 63, column: 34, scope: !267, inlinedAt: !349)
!352 = !DILocation(line: 181, column: 15, scope: !249, inlinedAt: !353)
!353 = distinct !DILocation(line: 63, column: 9, scope: !267, inlinedAt: !349)
!354 = !DILocation(line: 171, column: 2, scope: !278, inlinedAt: !355)
!355 = distinct !DILocation(line: 58, column: 2, scope: !245, inlinedAt: !331)
!356 = !DILocation(line: 78, column: 4, scope: !236)
!357 = !DILocation(line: 16, column: 10, scope: !285, inlinedAt: !358)
!358 = distinct !DILocation(line: 54, column: 3, scope: !288, inlinedAt: !359)
!359 = distinct !DILocation(line: 63, column: 2, scope: !290, inlinedAt: !360)
!360 = distinct !DILocation(line: 78, column: 4, scope: !236)
!361 = !DILocation(line: 104, column: 4, scope: !174, inlinedAt: !362)
!362 = distinct !DILocation(line: 16, column: 10, scope: !285, inlinedAt: !358)
!363 = !DILocation(line: 104, column: 26, scope: !174, inlinedAt: !362)
!364 = !DILocation(line: 103, column: 9, scope: !174, inlinedAt: !362)
!365 = !DILocation(line: 16, column: 33, scope: !285, inlinedAt: !358)
!366 = !DILocation(line: 54, column: 23, scope: !288, inlinedAt: !359)
!367 = !DILocation(line: 63, column: 2, scope: !290, inlinedAt: !360)
!368 = !DILocation(line: 64, column: 12, scope: !290, inlinedAt: !360)
!369 = !DILocation(line: 43, column: 10, scope: !254, inlinedAt: !370)
!370 = distinct !DILocation(line: 64, column: 2, scope: !290, inlinedAt: !360)
!371 = !DILocation(line: 45, column: 2, scope: !254, inlinedAt: !370)
!372 = !DILocation(line: 46, column: 9, scope: !254, inlinedAt: !370)
!373 = !DILocation(line: 47, column: 7, scope: !254, inlinedAt: !370)
!374 = !DILocation(line: 48, column: 4, scope: !254, inlinedAt: !370)
!375 = !DILocation(line: 49, column: 2, scope: !254, inlinedAt: !370)
!376 = !DILocation(line: 49, column: 16, scope: !254, inlinedAt: !370)
!377 = !DILocation(line: 49, column: 25, scope: !254, inlinedAt: !370)
!378 = distinct !{!378, !371, !379}
!379 = !DILocation(line: 49, column: 40, scope: !254, inlinedAt: !370)
!380 = !DILocation(line: 65, column: 2, scope: !290, inlinedAt: !360)
!381 = !DILocation(line: 16, column: 10, scope: !285, inlinedAt: !382)
!382 = distinct !DILocation(line: 59, column: 3, scope: !316, inlinedAt: !383)
!383 = distinct !DILocation(line: 65, column: 2, scope: !290, inlinedAt: !360)
!384 = !DILocation(line: 104, column: 4, scope: !174, inlinedAt: !385)
!385 = distinct !DILocation(line: 16, column: 10, scope: !285, inlinedAt: !382)
!386 = !DILocation(line: 104, column: 26, scope: !174, inlinedAt: !385)
!387 = !DILocation(line: 103, column: 9, scope: !174, inlinedAt: !385)
!388 = !DILocation(line: 16, column: 33, scope: !285, inlinedAt: !382)
!389 = !DILocation(line: 59, column: 23, scope: !316, inlinedAt: !383)
!390 = !DILocation(line: 80, column: 1, scope: !236)
!391 = distinct !DISubprogram(name: "trigger_store", scope: !1, file: !1, line: 166, type: !91, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!392 = !DILocation(line: 168, scope: !391)
!393 = !DILocation(line: 171, column: 8, scope: !391)
!394 = !DILocation(line: 172, column: 6, scope: !391)
!395 = !DILocation(line: 0, scope: !391)
!396 = !DILocation(line: 175, column: 1, scope: !391)
