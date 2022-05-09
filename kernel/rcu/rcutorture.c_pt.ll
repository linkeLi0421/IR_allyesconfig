; ModuleID = '/llk/IR_all_yes/kernel/rcu/rcutorture.c_pt.bc'
source_filename = "../kernel/rcu/rcutorture.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.srcu_data = type { [2 x i32], [2 x i32], [112 x i8], %struct.spinlock, %struct.rcu_segcblist, i32, i32, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, ptr, i32, i32, ptr, [24 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], %struct.atomic_t, [4 x i32], i8 }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.torture_random_state = type { i32, i32 }
%struct.rcu_torture_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rcu_torture = type { %struct.callback_head, i32, %struct.list_head, i32, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.rt_read_seg = type { i32, i32, i32, i32, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sched_param = type { i32 }
%struct.rcu_torture_reader_check = type { i32, i32, i32, i32, ptr, [108 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rcu_fwd = type { %struct.spinlock, ptr, ptr, i32, i32, [160 x %struct.rcu_launder_hist], i32, i32 }
%struct.rcu_launder_hist = type { i32, i32 }
%struct.rcu_synchronize = type { %struct.callback_head, %struct.completion }
%struct.anon.30 = type { i8, i8, i8, i8 }
%struct.fwd_cb_state = type { %struct.callback_head, i32 }
%struct.rcu_fwd_cb = type { %struct.callback_head, ptr, ptr, i32 }

@__UNIQUE_ID_file292 = internal constant [38 x i8] c"rcutorture.file=kernel/rcu/rcutorture\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [23 x i8] c"rcutorture.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [101 x i8] c"rcutorture.author=Paul E. McKenney <paulmck@linux.ibm.com> and Josh Triplett <josh@joshtriplett.org>\00", section ".modinfo", align 1
@__param_str_extendables = internal constant [23 x i8] c"rcutorture.extendables\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@extendables = internal global { i32, [28 x i8] } { i32 31, [28 x i8] zeroinitializer }, align 32
@__param_extendables = internal constant %struct.kernel_param { ptr @__param_str_extendables, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @extendables } }, section "__param", align 4
@__UNIQUE_ID_extendablestype295 = internal constant [36 x i8] c"rcutorture.parmtype=extendables:int\00", section ".modinfo", align 1
@__UNIQUE_ID_extendables296 = internal constant [89 x i8] c"rcutorture.parm=extendables:Extend readers by disabling bh (1), irqs (2), or preempt (4)\00", section ".modinfo", align 1
@__param_str_fqs_duration = internal constant [24 x i8] c"rcutorture.fqs_duration\00", align 1
@fqs_duration = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_fqs_duration = internal constant %struct.kernel_param { ptr @__param_str_fqs_duration, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @fqs_duration } }, section "__param", align 4
@__UNIQUE_ID_fqs_durationtype297 = internal constant [37 x i8] c"rcutorture.parmtype=fqs_duration:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fqs_duration298 = internal constant [71 x i8] c"rcutorture.parm=fqs_duration:Duration of fqs bursts (us), 0 to disable\00", section ".modinfo", align 1
@__param_str_fqs_holdoff = internal constant [23 x i8] c"rcutorture.fqs_holdoff\00", align 1
@fqs_holdoff = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_fqs_holdoff = internal constant %struct.kernel_param { ptr @__param_str_fqs_holdoff, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @fqs_holdoff } }, section "__param", align 4
@__UNIQUE_ID_fqs_holdofftype299 = internal constant [36 x i8] c"rcutorture.parmtype=fqs_holdoff:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fqs_holdoff300 = internal constant [64 x i8] c"rcutorture.parm=fqs_holdoff:Holdoff time within fqs bursts (us)\00", section ".modinfo", align 1
@__param_str_fqs_stutter = internal constant [23 x i8] c"rcutorture.fqs_stutter\00", align 1
@fqs_stutter = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_fqs_stutter = internal constant %struct.kernel_param { ptr @__param_str_fqs_stutter, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @fqs_stutter } }, section "__param", align 4
@__UNIQUE_ID_fqs_stuttertype301 = internal constant [36 x i8] c"rcutorture.parmtype=fqs_stutter:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fqs_stutter302 = internal constant [61 x i8] c"rcutorture.parm=fqs_stutter:Wait time between fqs bursts (s)\00", section ".modinfo", align 1
@__param_str_fwd_progress = internal constant [24 x i8] c"rcutorture.fwd_progress\00", align 1
@fwd_progress = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_fwd_progress = internal constant %struct.kernel_param { ptr @__param_str_fwd_progress, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @fwd_progress } }, section "__param", align 4
@__UNIQUE_ID_fwd_progresstype303 = internal constant [37 x i8] c"rcutorture.parmtype=fwd_progress:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fwd_progress304 = internal constant [64 x i8] c"rcutorture.parm=fwd_progress:Test grace-period forward progress\00", section ".modinfo", align 1
@__param_str_fwd_progress_div = internal constant [28 x i8] c"rcutorture.fwd_progress_div\00", align 1
@fwd_progress_div = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_fwd_progress_div = internal constant %struct.kernel_param { ptr @__param_str_fwd_progress_div, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @fwd_progress_div } }, section "__param", align 4
@__UNIQUE_ID_fwd_progress_divtype305 = internal constant [41 x i8] c"rcutorture.parmtype=fwd_progress_div:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fwd_progress_div306 = internal constant [63 x i8] c"rcutorture.parm=fwd_progress_div:Fraction of CPU stall to wait\00", section ".modinfo", align 1
@__param_str_fwd_progress_holdoff = internal constant [32 x i8] c"rcutorture.fwd_progress_holdoff\00", align 1
@fwd_progress_holdoff = internal global { i32, [28 x i8] } { i32 60, [28 x i8] zeroinitializer }, align 32
@__param_fwd_progress_holdoff = internal constant %struct.kernel_param { ptr @__param_str_fwd_progress_holdoff, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @fwd_progress_holdoff } }, section "__param", align 4
@__UNIQUE_ID_fwd_progress_holdofftype307 = internal constant [45 x i8] c"rcutorture.parmtype=fwd_progress_holdoff:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fwd_progress_holdoff308 = internal constant [77 x i8] c"rcutorture.parm=fwd_progress_holdoff:Time between forward-progress tests (s)\00", section ".modinfo", align 1
@__param_str_fwd_progress_need_resched = internal constant [37 x i8] c"rcutorture.fwd_progress_need_resched\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@fwd_progress_need_resched = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_fwd_progress_need_resched = internal constant %struct.kernel_param { ptr @__param_str_fwd_progress_need_resched, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @fwd_progress_need_resched } }, section "__param", align 4
@__UNIQUE_ID_fwd_progress_need_reschedtype309 = internal constant [51 x i8] c"rcutorture.parmtype=fwd_progress_need_resched:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_fwd_progress_need_resched310 = internal constant [84 x i8] c"rcutorture.parm=fwd_progress_need_resched:Hide cond_resched() behind need_resched()\00", section ".modinfo", align 1
@__param_str_gp_cond = internal constant [19 x i8] c"rcutorture.gp_cond\00", align 1
@gp_cond = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_gp_cond = internal constant %struct.kernel_param { ptr @__param_str_gp_cond, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @gp_cond } }, section "__param", align 4
@__UNIQUE_ID_gp_condtype311 = internal constant [33 x i8] c"rcutorture.parmtype=gp_cond:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_gp_cond312 = internal constant [65 x i8] c"rcutorture.parm=gp_cond:Use conditional/async GP wait primitives\00", section ".modinfo", align 1
@__param_str_gp_exp = internal constant [18 x i8] c"rcutorture.gp_exp\00", align 1
@gp_exp = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_gp_exp = internal constant %struct.kernel_param { ptr @__param_str_gp_exp, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @gp_exp } }, section "__param", align 4
@__UNIQUE_ID_gp_exptype313 = internal constant [32 x i8] c"rcutorture.parmtype=gp_exp:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_gp_exp314 = internal constant [56 x i8] c"rcutorture.parm=gp_exp:Use expedited GP wait primitives\00", section ".modinfo", align 1
@__param_str_gp_normal = internal constant [21 x i8] c"rcutorture.gp_normal\00", align 1
@gp_normal = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_gp_normal = internal constant %struct.kernel_param { ptr @__param_str_gp_normal, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @gp_normal } }, section "__param", align 4
@__UNIQUE_ID_gp_normaltype315 = internal constant [35 x i8] c"rcutorture.parmtype=gp_normal:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_gp_normal316 = internal constant [72 x i8] c"rcutorture.parm=gp_normal:Use normal (non-expedited) GP wait primitives\00", section ".modinfo", align 1
@__param_str_gp_poll = internal constant [19 x i8] c"rcutorture.gp_poll\00", align 1
@gp_poll = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_gp_poll = internal constant %struct.kernel_param { ptr @__param_str_gp_poll, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @gp_poll } }, section "__param", align 4
@__UNIQUE_ID_gp_polltype317 = internal constant [33 x i8] c"rcutorture.parmtype=gp_poll:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_gp_poll318 = internal constant [55 x i8] c"rcutorture.parm=gp_poll:Use polling GP wait primitives\00", section ".modinfo", align 1
@__param_str_gp_sync = internal constant [19 x i8] c"rcutorture.gp_sync\00", align 1
@gp_sync = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_gp_sync = internal constant %struct.kernel_param { ptr @__param_str_gp_sync, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @gp_sync } }, section "__param", align 4
@__UNIQUE_ID_gp_synctype319 = internal constant [33 x i8] c"rcutorture.parmtype=gp_sync:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_gp_sync320 = internal constant [59 x i8] c"rcutorture.parm=gp_sync:Use synchronous GP wait primitives\00", section ".modinfo", align 1
@__param_str_irqreader = internal constant [21 x i8] c"rcutorture.irqreader\00", align 1
@irqreader = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_irqreader = internal constant %struct.kernel_param { ptr @__param_str_irqreader, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @irqreader } }, section "__param", align 4
@__UNIQUE_ID_irqreadertype321 = internal constant [34 x i8] c"rcutorture.parmtype=irqreader:int\00", section ".modinfo", align 1
@__UNIQUE_ID_irqreader322 = internal constant [62 x i8] c"rcutorture.parm=irqreader:Allow RCU readers from irq handlers\00", section ".modinfo", align 1
@__param_str_leakpointer = internal constant [23 x i8] c"rcutorture.leakpointer\00", align 1
@leakpointer = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_leakpointer = internal constant %struct.kernel_param { ptr @__param_str_leakpointer, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @leakpointer } }, section "__param", align 4
@__UNIQUE_ID_leakpointertype323 = internal constant [36 x i8] c"rcutorture.parmtype=leakpointer:int\00", section ".modinfo", align 1
@__UNIQUE_ID_leakpointer324 = internal constant [67 x i8] c"rcutorture.parm=leakpointer:Leak pointer dereferences from readers\00", section ".modinfo", align 1
@__param_str_n_barrier_cbs = internal constant [25 x i8] c"rcutorture.n_barrier_cbs\00", align 1
@n_barrier_cbs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_n_barrier_cbs = internal constant %struct.kernel_param { ptr @__param_str_n_barrier_cbs, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @n_barrier_cbs } }, section "__param", align 4
@__UNIQUE_ID_n_barrier_cbstype325 = internal constant [38 x i8] c"rcutorture.parmtype=n_barrier_cbs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_n_barrier_cbs326 = internal constant [74 x i8] c"rcutorture.parm=n_barrier_cbs:# of callbacks/kthreads for barrier testing\00", section ".modinfo", align 1
@__param_str_nfakewriters = internal constant [24 x i8] c"rcutorture.nfakewriters\00", align 1
@nfakewriters = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_nfakewriters = internal constant %struct.kernel_param { ptr @__param_str_nfakewriters, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @nfakewriters } }, section "__param", align 4
@__UNIQUE_ID_nfakewriterstype327 = internal constant [37 x i8] c"rcutorture.parmtype=nfakewriters:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nfakewriters328 = internal constant [63 x i8] c"rcutorture.parm=nfakewriters:Number of RCU fake writer threads\00", section ".modinfo", align 1
@__param_str_nreaders = internal constant [20 x i8] c"rcutorture.nreaders\00", align 1
@nreaders = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_nreaders = internal constant %struct.kernel_param { ptr @__param_str_nreaders, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @nreaders } }, section "__param", align 4
@__UNIQUE_ID_nreaderstype329 = internal constant [33 x i8] c"rcutorture.parmtype=nreaders:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nreaders330 = internal constant [54 x i8] c"rcutorture.parm=nreaders:Number of RCU reader threads\00", section ".modinfo", align 1
@__param_str_object_debug = internal constant [24 x i8] c"rcutorture.object_debug\00", align 1
@object_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_object_debug = internal constant %struct.kernel_param { ptr @__param_str_object_debug, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @object_debug } }, section "__param", align 4
@__UNIQUE_ID_object_debugtype331 = internal constant [37 x i8] c"rcutorture.parmtype=object_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_object_debug332 = internal constant [75 x i8] c"rcutorture.parm=object_debug:Enable debug-object double call_rcu() testing\00", section ".modinfo", align 1
@__param_str_onoff_holdoff = internal constant [25 x i8] c"rcutorture.onoff_holdoff\00", align 1
@onoff_holdoff = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_onoff_holdoff = internal constant %struct.kernel_param { ptr @__param_str_onoff_holdoff, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @onoff_holdoff } }, section "__param", align 4
@__UNIQUE_ID_onoff_holdofftype333 = internal constant [38 x i8] c"rcutorture.parmtype=onoff_holdoff:int\00", section ".modinfo", align 1
@__UNIQUE_ID_onoff_holdoff334 = internal constant [70 x i8] c"rcutorture.parm=onoff_holdoff:Time after boot before CPU hotplugs (s)\00", section ".modinfo", align 1
@__param_str_onoff_interval = internal constant [26 x i8] c"rcutorture.onoff_interval\00", align 1
@onoff_interval = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_onoff_interval = internal constant %struct.kernel_param { ptr @__param_str_onoff_interval, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @onoff_interval } }, section "__param", align 4
@__UNIQUE_ID_onoff_intervaltype335 = internal constant [39 x i8] c"rcutorture.parmtype=onoff_interval:int\00", section ".modinfo", align 1
@__UNIQUE_ID_onoff_interval336 = internal constant [78 x i8] c"rcutorture.parm=onoff_interval:Time between CPU hotplugs (jiffies), 0=disable\00", section ".modinfo", align 1
@__param_str_nocbs_nthreads = internal constant [26 x i8] c"rcutorture.nocbs_nthreads\00", align 1
@nocbs_nthreads = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_nocbs_nthreads = internal constant %struct.kernel_param { ptr @__param_str_nocbs_nthreads, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @nocbs_nthreads } }, section "__param", align 4
@__UNIQUE_ID_nocbs_nthreadstype337 = internal constant [39 x i8] c"rcutorture.parmtype=nocbs_nthreads:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nocbs_nthreads338 = internal constant [75 x i8] c"rcutorture.parm=nocbs_nthreads:Number of NOCB toggle threads, 0 to disable\00", section ".modinfo", align 1
@__param_str_nocbs_toggle = internal constant [24 x i8] c"rcutorture.nocbs_toggle\00", align 1
@nocbs_toggle = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@__param_nocbs_toggle = internal constant %struct.kernel_param { ptr @__param_str_nocbs_toggle, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @nocbs_toggle } }, section "__param", align 4
@__UNIQUE_ID_nocbs_toggletype339 = internal constant [37 x i8] c"rcutorture.parmtype=nocbs_toggle:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nocbs_toggle340 = internal constant [67 x i8] c"rcutorture.parm=nocbs_toggle:Time between toggling nocb state (ms)\00", section ".modinfo", align 1
@__param_str_read_exit_delay = internal constant [27 x i8] c"rcutorture.read_exit_delay\00", align 1
@read_exit_delay = internal global { i32, [28 x i8] } { i32 13, [28 x i8] zeroinitializer }, align 32
@__param_read_exit_delay = internal constant %struct.kernel_param { ptr @__param_str_read_exit_delay, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @read_exit_delay } }, section "__param", align 4
@__UNIQUE_ID_read_exit_delaytype341 = internal constant [40 x i8] c"rcutorture.parmtype=read_exit_delay:int\00", section ".modinfo", align 1
@__UNIQUE_ID_read_exit_delay342 = internal constant [74 x i8] c"rcutorture.parm=read_exit_delay:Delay between read-then-exit episodes (s)\00", section ".modinfo", align 1
@__param_str_read_exit_burst = internal constant [27 x i8] c"rcutorture.read_exit_burst\00", align 1
@read_exit_burst = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_read_exit_burst = internal constant %struct.kernel_param { ptr @__param_str_read_exit_burst, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @read_exit_burst } }, section "__param", align 4
@__UNIQUE_ID_read_exit_bursttype343 = internal constant [40 x i8] c"rcutorture.parmtype=read_exit_burst:int\00", section ".modinfo", align 1
@__UNIQUE_ID_read_exit_burst344 = internal constant [88 x i8] c"rcutorture.parm=read_exit_burst:# of read-then-exit bursts per episode, zero to disable\00", section ".modinfo", align 1
@__param_str_shuffle_interval = internal constant [28 x i8] c"rcutorture.shuffle_interval\00", align 1
@shuffle_interval = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_shuffle_interval = internal constant %struct.kernel_param { ptr @__param_str_shuffle_interval, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @shuffle_interval } }, section "__param", align 4
@__UNIQUE_ID_shuffle_intervaltype345 = internal constant [41 x i8] c"rcutorture.parmtype=shuffle_interval:int\00", section ".modinfo", align 1
@__UNIQUE_ID_shuffle_interval346 = internal constant [68 x i8] c"rcutorture.parm=shuffle_interval:Number of seconds between shuffles\00", section ".modinfo", align 1
@__param_str_shutdown_secs = internal constant [25 x i8] c"rcutorture.shutdown_secs\00", align 1
@shutdown_secs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_shutdown_secs = internal constant %struct.kernel_param { ptr @__param_str_shutdown_secs, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @shutdown_secs } }, section "__param", align 4
@__UNIQUE_ID_shutdown_secstype347 = internal constant [38 x i8] c"rcutorture.parmtype=shutdown_secs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_shutdown_secs348 = internal constant [69 x i8] c"rcutorture.parm=shutdown_secs:Shutdown time (s), <= zero to disable.\00", section ".modinfo", align 1
@__param_str_stall_cpu = internal constant [21 x i8] c"rcutorture.stall_cpu\00", align 1
@stall_cpu = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_stall_cpu = internal constant %struct.kernel_param { ptr @__param_str_stall_cpu, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @stall_cpu } }, section "__param", align 4
@__UNIQUE_ID_stall_cputype349 = internal constant [34 x i8] c"rcutorture.parmtype=stall_cpu:int\00", section ".modinfo", align 1
@__UNIQUE_ID_stall_cpu350 = internal constant [63 x i8] c"rcutorture.parm=stall_cpu:Stall duration (s), zero to disable.\00", section ".modinfo", align 1
@__param_str_stall_cpu_holdoff = internal constant [29 x i8] c"rcutorture.stall_cpu_holdoff\00", align 1
@stall_cpu_holdoff = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_stall_cpu_holdoff = internal constant %struct.kernel_param { ptr @__param_str_stall_cpu_holdoff, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @stall_cpu_holdoff } }, section "__param", align 4
@__UNIQUE_ID_stall_cpu_holdofftype351 = internal constant [42 x i8] c"rcutorture.parmtype=stall_cpu_holdoff:int\00", section ".modinfo", align 1
@__UNIQUE_ID_stall_cpu_holdoff352 = internal constant [74 x i8] c"rcutorture.parm=stall_cpu_holdoff:Time to wait before starting stall (s).\00", section ".modinfo", align 1
@__param_str_stall_no_softlockup = internal constant [31 x i8] c"rcutorture.stall_no_softlockup\00", align 1
@stall_no_softlockup = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_stall_no_softlockup = internal constant %struct.kernel_param { ptr @__param_str_stall_no_softlockup, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @stall_no_softlockup } }, section "__param", align 4
@__UNIQUE_ID_stall_no_softlockuptype353 = internal constant [45 x i8] c"rcutorture.parmtype=stall_no_softlockup:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_stall_no_softlockup354 = internal constant [79 x i8] c"rcutorture.parm=stall_no_softlockup:Avoid softlockup warning during cpu stall.\00", section ".modinfo", align 1
@__param_str_stall_cpu_irqsoff = internal constant [29 x i8] c"rcutorture.stall_cpu_irqsoff\00", align 1
@stall_cpu_irqsoff = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_stall_cpu_irqsoff = internal constant %struct.kernel_param { ptr @__param_str_stall_cpu_irqsoff, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @stall_cpu_irqsoff } }, section "__param", align 4
@__UNIQUE_ID_stall_cpu_irqsofftype355 = internal constant [42 x i8] c"rcutorture.parmtype=stall_cpu_irqsoff:int\00", section ".modinfo", align 1
@__UNIQUE_ID_stall_cpu_irqsoff356 = internal constant [69 x i8] c"rcutorture.parm=stall_cpu_irqsoff:Disable interrupts while stalling.\00", section ".modinfo", align 1
@__param_str_stall_cpu_block = internal constant [27 x i8] c"rcutorture.stall_cpu_block\00", align 1
@stall_cpu_block = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_stall_cpu_block = internal constant %struct.kernel_param { ptr @__param_str_stall_cpu_block, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @stall_cpu_block } }, section "__param", align 4
@__UNIQUE_ID_stall_cpu_blocktype357 = internal constant [40 x i8] c"rcutorture.parmtype=stall_cpu_block:int\00", section ".modinfo", align 1
@__UNIQUE_ID_stall_cpu_block358 = internal constant [54 x i8] c"rcutorture.parm=stall_cpu_block:Sleep while stalling.\00", section ".modinfo", align 1
@__param_str_stall_gp_kthread = internal constant [28 x i8] c"rcutorture.stall_gp_kthread\00", align 1
@stall_gp_kthread = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_stall_gp_kthread = internal constant %struct.kernel_param { ptr @__param_str_stall_gp_kthread, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @stall_gp_kthread } }, section "__param", align 4
@__UNIQUE_ID_stall_gp_kthreadtype359 = internal constant [41 x i8] c"rcutorture.parmtype=stall_gp_kthread:int\00", section ".modinfo", align 1
@__UNIQUE_ID_stall_gp_kthread360 = internal constant [74 x i8] c"rcutorture.parm=stall_gp_kthread:Grace-period kthread stall duration (s).\00", section ".modinfo", align 1
@__param_str_stat_interval = internal constant [25 x i8] c"rcutorture.stat_interval\00", align 1
@stat_interval = internal global { i32, [28 x i8] } { i32 60, [28 x i8] zeroinitializer }, align 32
@__param_stat_interval = internal constant %struct.kernel_param { ptr @__param_str_stat_interval, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @stat_interval } }, section "__param", align 4
@__UNIQUE_ID_stat_intervaltype361 = internal constant [38 x i8] c"rcutorture.parmtype=stat_interval:int\00", section ".modinfo", align 1
@__UNIQUE_ID_stat_interval362 = internal constant [72 x i8] c"rcutorture.parm=stat_interval:Number of seconds between stats printk()s\00", section ".modinfo", align 1
@__param_str_stutter = internal constant [19 x i8] c"rcutorture.stutter\00", align 1
@stutter = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_stutter = internal constant %struct.kernel_param { ptr @__param_str_stutter, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @stutter } }, section "__param", align 4
@__UNIQUE_ID_stuttertype363 = internal constant [32 x i8] c"rcutorture.parmtype=stutter:int\00", section ".modinfo", align 1
@__UNIQUE_ID_stutter364 = internal constant [59 x i8] c"rcutorture.parm=stutter:Number of seconds to run/halt test\00", section ".modinfo", align 1
@__param_str_test_boost = internal constant [22 x i8] c"rcutorture.test_boost\00", align 1
@test_boost = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_test_boost = internal constant %struct.kernel_param { ptr @__param_str_test_boost, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @test_boost } }, section "__param", align 4
@__UNIQUE_ID_test_boosttype365 = internal constant [35 x i8] c"rcutorture.parmtype=test_boost:int\00", section ".modinfo", align 1
@__UNIQUE_ID_test_boost366 = internal constant [70 x i8] c"rcutorture.parm=test_boost:Test RCU prio boost: 0=no, 1=maybe, 2=yes.\00", section ".modinfo", align 1
@__param_str_test_boost_duration = internal constant [31 x i8] c"rcutorture.test_boost_duration\00", align 1
@test_boost_duration = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_test_boost_duration = internal constant %struct.kernel_param { ptr @__param_str_test_boost_duration, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @test_boost_duration } }, section "__param", align 4
@__UNIQUE_ID_test_boost_durationtype367 = internal constant [44 x i8] c"rcutorture.parmtype=test_boost_duration:int\00", section ".modinfo", align 1
@__UNIQUE_ID_test_boost_duration368 = internal constant [74 x i8] c"rcutorture.parm=test_boost_duration:Duration of each boost test, seconds.\00", section ".modinfo", align 1
@__param_str_test_boost_interval = internal constant [31 x i8] c"rcutorture.test_boost_interval\00", align 1
@test_boost_interval = internal global { i32, [28 x i8] } { i32 7, [28 x i8] zeroinitializer }, align 32
@__param_test_boost_interval = internal constant %struct.kernel_param { ptr @__param_str_test_boost_interval, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @test_boost_interval } }, section "__param", align 4
@__UNIQUE_ID_test_boost_intervaltype369 = internal constant [44 x i8] c"rcutorture.parmtype=test_boost_interval:int\00", section ".modinfo", align 1
@__UNIQUE_ID_test_boost_interval370 = internal constant [75 x i8] c"rcutorture.parm=test_boost_interval:Interval between boost tests, seconds.\00", section ".modinfo", align 1
@__param_str_test_no_idle_hz = internal constant [27 x i8] c"rcutorture.test_no_idle_hz\00", align 1
@test_no_idle_hz = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_test_no_idle_hz = internal constant %struct.kernel_param { ptr @__param_str_test_no_idle_hz, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @test_no_idle_hz } }, section "__param", align 4
@__UNIQUE_ID_test_no_idle_hztype371 = internal constant [41 x i8] c"rcutorture.parmtype=test_no_idle_hz:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_test_no_idle_hz372 = internal constant [68 x i8] c"rcutorture.parm=test_no_idle_hz:Test support for tickless idle CPUs\00", section ".modinfo", align 1
@__param_str_verbose = internal constant [19 x i8] c"rcutorture.verbose\00", align 1
@verbose = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype373 = internal constant [32 x i8] c"rcutorture.parmtype=verbose:int\00", section ".modinfo", align 1
@__UNIQUE_ID_verbose374 = internal constant [59 x i8] c"rcutorture.parm=verbose:Enable verbose debugging printk()s\00", section ".modinfo", align 1
@__param_str_torture_type = internal constant [24 x i8] c"rcutorture.torture_type\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@torture_type = internal global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@__param_torture_type = internal constant %struct.kernel_param { ptr @__param_str_torture_type, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @torture_type } }, section "__param", align 4
@__UNIQUE_ID_torture_typetype375 = internal constant [39 x i8] c"rcutorture.parmtype=torture_type:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_torture_type376 = internal constant [69 x i8] c"rcutorture.parm=torture_type:Type of RCU to torture (rcu, srcu, ...)\00", section ".modinfo", align 1
@__initcall__kmod_rcutorture__468_3324_rcu_torture_init6 = internal global ptr @rcu_torture_init, section ".initcall6.init", align 4
@__exitcall_rcu_torture_cleanup = internal global ptr @rcu_torture_cleanup, section ".exitcall.exit", align 4
@__pcpu_unique_rcu_torture_count = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@rcu_torture_count = weak dso_local global [11 x i32] zeroinitializer, section ".data..percpu", align 4
@__pcpu_unique_rcu_torture_batch = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@rcu_torture_batch = weak dso_local global [11 x i32] zeroinitializer, section ".data..percpu", align 4
@__pcpu_unique_srcu_ctl_srcu_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@srcu_ctl_srcu_data = weak dso_local global %struct.srcu_data zeroinitializer, section ".data..percpu", align 128
@__pcpu_unique_rcu_torture_timer_rand = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@rcu_torture_timer_rand = weak dso_local global %struct.torture_random_state zeroinitializer, section ".data..percpu", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rcu\00", [28 x i8] zeroinitializer }, align 32
@rcu_torture_init.torture_ops = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @rcu_ops, ptr @rcu_busted_ops, ptr @srcu_ops, ptr @srcud_ops, ptr @busted_srcud_ops, ptr @tasks_ops, ptr @tasks_rude_ops, ptr @tasks_tracing_ops, ptr @trivial_ops], [60 x i8] zeroinitializer }, align 32
@rcu_ops = internal global { %struct.rcu_torture_ops, [40 x i8] } { %struct.rcu_torture_ops { i32 0, ptr @rcu_sync_torture_init, ptr null, ptr @rcu_torture_read_lock, ptr @rcu_read_delay, ptr @rcu_torture_read_unlock, ptr @torture_readlock_not_held, ptr @rcu_get_gp_seq, ptr @rcu_seq_diff, ptr @rcu_torture_deferred_free, ptr @synchronize_rcu, ptr @synchronize_rcu_expedited, ptr @get_state_synchronize_rcu, ptr @start_poll_synchronize_rcu, ptr @poll_state_synchronize_rcu, ptr @cond_synchronize_rcu, ptr @call_rcu, ptr @rcu_barrier, ptr @rcu_force_quiescent_state, ptr null, ptr @show_rcu_gp_kthreads, ptr @rcu_check_boost_fail, ptr @rcu_jiffies_till_stall_check, i32 0, i32 1, i32 0, i32 31, i32 0, i32 0, ptr @.str }, [40 x i8] zeroinitializer }, align 32
@rcu_busted_ops = internal global { %struct.rcu_torture_ops, [40 x i8] } { %struct.rcu_torture_ops { i32 6, ptr @rcu_sync_torture_init, ptr null, ptr @rcu_torture_read_lock, ptr @rcu_read_delay, ptr @rcu_torture_read_unlock, ptr @torture_readlock_not_held, ptr @rcu_no_completed, ptr null, ptr @rcu_busted_torture_deferred_free, ptr @synchronize_rcu_busted, ptr @synchronize_rcu_busted, ptr null, ptr null, ptr null, ptr null, ptr @call_rcu_busted, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, ptr @.str.67 }, [40 x i8] zeroinitializer }, align 32
@srcu_ops = internal global { %struct.rcu_torture_ops, [40 x i8] } { %struct.rcu_torture_ops { i32 5, ptr @rcu_sync_torture_init, ptr null, ptr @srcu_torture_read_lock, ptr @srcu_read_delay, ptr @srcu_torture_read_unlock, ptr @torture_srcu_read_lock_held, ptr @srcu_torture_completed, ptr null, ptr @srcu_torture_deferred_free, ptr @srcu_torture_synchronize, ptr @srcu_torture_synchronize_expedited, ptr @srcu_torture_get_gp_state, ptr @srcu_torture_start_gp_poll, ptr @srcu_torture_poll_gp_state, ptr null, ptr @srcu_torture_call, ptr @srcu_torture_barrier, ptr null, ptr @srcu_torture_stats, ptr null, ptr null, ptr null, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, ptr @.str.68 }, [40 x i8] zeroinitializer }, align 32
@srcud_ops = internal global { %struct.rcu_torture_ops, [40 x i8] } { %struct.rcu_torture_ops { i32 5, ptr @srcu_torture_init, ptr @srcu_torture_cleanup, ptr @srcu_torture_read_lock, ptr @srcu_read_delay, ptr @srcu_torture_read_unlock, ptr @torture_srcu_read_lock_held, ptr @srcu_torture_completed, ptr null, ptr @srcu_torture_deferred_free, ptr @srcu_torture_synchronize, ptr @srcu_torture_synchronize_expedited, ptr null, ptr null, ptr null, ptr null, ptr @srcu_torture_call, ptr @srcu_torture_barrier, ptr null, ptr @srcu_torture_stats, ptr null, ptr null, ptr null, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, ptr @.str.71 }, [40 x i8] zeroinitializer }, align 32
@busted_srcud_ops = internal global { %struct.rcu_torture_ops, [40 x i8] } { %struct.rcu_torture_ops { i32 5, ptr @srcu_torture_init, ptr @srcu_torture_cleanup, ptr @srcu_torture_read_lock, ptr @rcu_read_delay, ptr @srcu_torture_read_unlock, ptr @torture_srcu_read_lock_held, ptr @srcu_torture_completed, ptr null, ptr @srcu_torture_deferred_free, ptr @srcu_torture_synchronize, ptr @srcu_torture_synchronize_expedited, ptr null, ptr null, ptr null, ptr null, ptr @srcu_torture_call, ptr @srcu_torture_barrier, ptr null, ptr @srcu_torture_stats, ptr null, ptr null, ptr null, i32 0, i32 1, i32 0, i32 31, i32 0, i32 0, ptr @.str.77 }, [40 x i8] zeroinitializer }, align 32
@tasks_ops = internal global { %struct.rcu_torture_ops, [40 x i8] } { %struct.rcu_torture_ops { i32 1, ptr @rcu_sync_torture_init, ptr null, ptr @tasks_torture_read_lock, ptr @rcu_read_delay, ptr @tasks_torture_read_unlock, ptr null, ptr @rcu_no_completed, ptr null, ptr @rcu_tasks_torture_deferred_free, ptr @synchronize_rcu_tasks, ptr @synchronize_rcu_mult_test, ptr null, ptr null, ptr null, ptr null, ptr @call_rcu_tasks, ptr @rcu_barrier_tasks, ptr null, ptr null, ptr @show_rcu_tasks_classic_gp_kthread, ptr null, ptr null, i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, ptr @.str.78 }, [40 x i8] zeroinitializer }, align 32
@tasks_rude_ops = internal global { %struct.rcu_torture_ops, [40 x i8] } { %struct.rcu_torture_ops { i32 2, ptr @rcu_sync_torture_init, ptr null, ptr @rcu_torture_read_lock_trivial, ptr @rcu_read_delay, ptr @rcu_torture_read_unlock_trivial, ptr null, ptr @rcu_no_completed, ptr null, ptr @rcu_tasks_rude_torture_deferred_free, ptr @synchronize_rcu_tasks_rude, ptr @synchronize_rcu_tasks_rude, ptr null, ptr null, ptr null, ptr null, ptr @call_rcu_tasks_rude, ptr @rcu_barrier_tasks_rude, ptr null, ptr null, ptr @show_rcu_tasks_rude_gp_kthread, ptr null, ptr null, i32 50000, i32 1, i32 0, i32 0, i32 0, i32 0, ptr @.str.79 }, [40 x i8] zeroinitializer }, align 32
@tasks_tracing_ops = internal global { %struct.rcu_torture_ops, [40 x i8] } { %struct.rcu_torture_ops { i32 3, ptr @rcu_sync_torture_init, ptr null, ptr @tasks_tracing_torture_read_lock, ptr @srcu_read_delay, ptr @tasks_tracing_torture_read_unlock, ptr @rcu_read_lock_trace_held, ptr @rcu_no_completed, ptr null, ptr @rcu_tasks_tracing_torture_deferred_free, ptr @synchronize_rcu_tasks_trace, ptr @synchronize_rcu_tasks_trace, ptr null, ptr null, ptr null, ptr null, ptr @call_rcu_tasks_trace, ptr @rcu_barrier_tasks_trace, ptr null, ptr null, ptr @show_rcu_tasks_trace_gp_kthread, ptr null, ptr null, i32 50000, i32 1, i32 0, i32 0, i32 1, i32 0, ptr @.str.80 }, [40 x i8] zeroinitializer }, align 32
@trivial_ops = internal global { %struct.rcu_torture_ops, [40 x i8] } { %struct.rcu_torture_ops { i32 4, ptr @rcu_sync_torture_init, ptr null, ptr @rcu_torture_read_lock_trivial, ptr @rcu_read_delay, ptr @rcu_torture_read_unlock_trivial, ptr @torture_readlock_not_held, ptr @rcu_no_completed, ptr null, ptr null, ptr @synchronize_rcu_trivial, ptr @synchronize_rcu_trivial, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, ptr @.str.82 }, [40 x i8] zeroinitializer }, align 32
@cur_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_torture_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 3104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\011rcu-torture: invalid torture type: \22%s\22\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rcu_torture_init\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kernel/rcu/rcutorture.c\00", [40 x i8] zeroinitializer }, align 32
@rcu_torture_init._entry_ptr = internal global ptr @rcu_torture_init._entry, section ".printk_index", align 4
@rcu_torture_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 3105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\011rcu-torture types:\00", [43 x i8] zeroinitializer }, align 32
@rcu_torture_init._entry_ptr.6 = internal global ptr @rcu_torture_init._entry.4, section ".printk_index", align 4
@rcu_torture_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 3107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c %s\00", [26 x i8] zeroinitializer }, align 32
@rcu_torture_init._entry_ptr.9 = internal global ptr @rcu_torture_init._entry.7, section ".printk_index", align 4
@rcu_torture_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 3108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@rcu_torture_init._entry_ptr.12 = internal global ptr @rcu_torture_init._entry.10, section ".printk_index", align 4
@rcu_torture_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 3114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\011rcu-torture: ->fqs NULL and non-zero fqs_duration, fqs disabled.\0A\00", [60 x i8] zeroinitializer }, align 32
@rcu_torture_init._entry_ptr.15 = internal global ptr @rcu_torture_init._entry.13, section ".printk_index", align 4
@nrealreaders = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Start of test\00", [18 x i8] zeroinitializer }, align 32
@srcu_ctlp = internal global { ptr, [28 x i8] } { ptr @srcu_ctl, [28 x i8] zeroinitializer }, align 32
@start_gp_seq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rcu_torture_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 3132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\011%s:  Start-test grace-period state: g%ld f%#x\0A\00", [47 x i8] zeroinitializer }, align 32
@rcu_torture_init._entry_ptr.19 = internal global ptr @rcu_torture_init._entry.17, section ".printk_index", align 4
@rcu_torture_freelist = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @rcu_torture_freelist, ptr @rcu_torture_freelist }, [24 x i8] zeroinitializer }, align 32
@rcu_tortures = internal global { [100 x %struct.rcu_torture], [688 x i8] } zeroinitializer, align 32
@rcu_torture_current = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_torture_current_version = internal global { i32, [28 x i8] } zeroinitializer, align 32
@n_rcu_torture_alloc = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@n_rcu_torture_alloc_fail = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@n_rcu_torture_free = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@n_rcu_torture_mberror = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@n_rcu_torture_mbchk_fail = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@n_rcu_torture_mbchk_tries = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@n_rcu_torture_error = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@n_rcu_torture_barrier_error = internal global { i32, [28 x i8] } zeroinitializer, align 32
@n_rcu_torture_boost_ktrerror = internal global { i32, [28 x i8] } zeroinitializer, align 32
@n_rcu_torture_boost_failure = internal global { i32, [28 x i8] } zeroinitializer, align 32
@n_rcu_torture_boosts = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rcu_torture_wcount = internal global { [11 x %struct.atomic_t], [52 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@err_segs_recorded = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rt_read_nsegs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rcu_torture_writer\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Creating rcu_torture_writer task\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to create rcu_torture_writer\00", [60 x i8] zeroinitializer }, align 32
@writer_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_torture_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Torture-test initialization failed with error code %d\0A\00", [41 x i8] zeroinitializer }, align 32
@fakewriter_tasks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_torture_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 3182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\011%s-torture:!!! %s\0A\00", [43 x i8] zeroinitializer }, align 32
@rcu_torture_init._entry_ptr.26 = internal global ptr @rcu_torture_init._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"out of memory\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rcu_torture_fakewriter\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Creating rcu_torture_fakewriter task\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to create rcu_torture_fakewriter\00", [56 x i8] zeroinitializer }, align 32
@rcu_torture_init.__already_done.31 = internal unnamed_addr global i1 false, section ".data.once", align 1
@reader_tasks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_torture_reader_mbchk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_torture_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 3198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_init._entry_ptr.33 = internal global ptr @rcu_torture_init._entry.32, section ".printk_index", align 4
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rcu_torture_reader\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Creating rcu_torture_reader task\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to create rcu_torture_reader\00", [60 x i8] zeroinitializer }, align 32
@rcu_torture_init.__already_done.37 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nrealnocbers = internal global { i32, [28 x i8] } zeroinitializer, align 32
@nocb_tasks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_torture_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 3217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_init._entry_ptr.39 = internal global ptr @rcu_torture_init._entry.38, section ".printk_index", align 4
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rcu_nocb_toggle\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Creating rcu_nocb_toggle task\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to create rcu_nocb_toggle\00", [63 x i8] zeroinitializer }, align 32
@rcu_torture_init.__already_done.43 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rcu_torture_stats\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Creating rcu_torture_stats task\00", [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to create rcu_torture_stats\00", [61 x i8] zeroinitializer }, align 32
@stats_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_torture_init.__already_done.47 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_init.__already_done.48 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_init.__already_done.49 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rcu_torture_fqs\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Creating rcu_torture_fqs task\00", [34 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to create rcu_torture_fqs\00", [63 x i8] zeroinitializer }, align 32
@fqs_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_torture_init.__already_done.53 = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@boost_starttime = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RCU_TORTURE\00", [20 x i8] zeroinitializer }, align 32
@rcutor_hp = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rcu_torture_init.__already_done.55 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@ksoftirqd = external dso_local global ptr, section ".data..percpu", align 4
@rcu_torture_init.__already_done.56 = internal unnamed_addr global i1 false, section ".data.once", align 1
@shutdown_jiffies = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rcu_torture_init.__already_done.57 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_init.__already_done.58 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_init.__already_done.59 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_init.__already_done.60 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_init.__already_done.61 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_init.__already_done.62 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_removed = internal global { %struct.list_head, [24 x i8] } zeroinitializer, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_fwd_cb_nodelay = internal global { i8, [31 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rcu_torture_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.66, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rcu_torture_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"busted\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"srcu\00", [27 x i8] zeroinitializer }, align 32
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"-torture:\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"srcud\00", [26 x i8] zeroinitializer }, align 32
@srcu_torture_init.__srcu_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@srcu_ctld = internal global { %struct.srcu_struct, [200 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&srcu_ctld\00", [21 x i8] zeroinitializer }, align 32
@srcu_ctl = internal global { %struct.srcu_struct, [200 x i8] } { %struct.srcu_struct { [3 x %struct.srcu_node] zeroinitializer, [3 x ptr] zeroinitializer, %struct.mutex zeroinitializer, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.73, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.mutex zeroinitializer, i32 0, i32 0, i32 -1, i32 0, i32 0, ptr @srcu_ctl_srcu_data, i32 0, %struct.mutex zeroinitializer, %struct.completion zeroinitializer, %struct.atomic_t zeroinitializer, %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @srcu_ctl, i64 700), ptr getelementptr (i8, ptr @srcu_ctl, i64 700) }, ptr null, %struct.lockdep_map { ptr getelementptr (i8, ptr @srcu_ctl, i64 696), [2 x ptr] zeroinitializer, ptr @.str.74, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.75, [2 x ptr] zeroinitializer, ptr @.str.75, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.76, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [200 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"srcu_ctl.lock\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(srcu_ctl.work).work\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"kernel/rcu/rcutorture.c:571\00", [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"srcu_ctl\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"busted_srcud\00", [19 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tasks\00", [26 x i8] zeroinitializer }, align 32
@__const.synchronize_rcu_mult_test.__crcu_array = private unnamed_addr constant [2 x ptr] [ptr @call_rcu_tasks, ptr @call_rcu], align 8
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tasks-rude\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tasks-tracing\00", [18 x i8] zeroinitializer }, align 32
@rcu_trace_lock_map = external dso_local global %struct.lockdep_map, align 4
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"trivial\00", [24 x i8] zeroinitializer }, align 32
@synchronize_rcu_trivial.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@rcu_torture_print_module_parms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 2003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [465 x i8], [111 x i8] } { [465 x i8] c"\011%s-torture:--- %s: nreaders=%d nfakewriters=%d stat_interval=%d verbose=%d test_no_idle_hz=%d shuffle_interval=%d stutter=%d irqreader=%d fqs_duration=%d fqs_holdoff=%d fqs_stutter=%d test_boost=%d/%d test_boost_interval=%d test_boost_duration=%d shutdown_secs=%d stall_cpu=%d stall_cpu_holdoff=%d stall_cpu_irqsoff=%d stall_cpu_block=%d n_barrier_cbs=%d onoff_interval=%d onoff_holdoff=%d read_exit_delay=%d read_exit_burst=%d nocbs_nthreads=%d nocbs_toggle=%d\0A\00", [111 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rcu_torture_print_module_parms\00", [33 x i8] zeroinitializer }, align 32
@rcu_torture_print_module_parms._entry_ptr = internal global ptr @rcu_torture_print_module_parms._entry, section ".printk_index", align 4
@synctype = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 3, i32 4, i32 5, i32 7, i32 9], [44 x i8] zeroinitializer }, align 32
@nsynctypes = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rcu_torture_write_types._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 1121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: Testing conditional GPs.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcu_torture_write_types\00", [40 x i8] zeroinitializer }, align 32
@rcu_torture_write_types._entry_ptr = internal global ptr @rcu_torture_write_types._entry, section ".printk_index", align 4
@rcu_torture_write_types._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.3, i32 1123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\011%s: gp_cond without primitives.\0A\00", [61 x i8] zeroinitializer }, align 32
@rcu_torture_write_types._entry_ptr.89 = internal global ptr @rcu_torture_write_types._entry.87, section ".printk_index", align 4
@rcu_torture_write_types._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.3, i32 1127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: Testing expedited GPs.\0A\00", [34 x i8] zeroinitializer }, align 32
@rcu_torture_write_types._entry_ptr.92 = internal global ptr @rcu_torture_write_types._entry.90, section ".printk_index", align 4
@rcu_torture_write_types._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.86, ptr @.str.3, i32 1129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\011%s: gp_exp without primitives.\0A\00", [62 x i8] zeroinitializer }, align 32
@rcu_torture_write_types._entry_ptr.95 = internal global ptr @rcu_torture_write_types._entry.93, section ".printk_index", align 4
@rcu_torture_write_types._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.86, ptr @.str.3, i32 1133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: Testing asynchronous GPs.\0A\00", [63 x i8] zeroinitializer }, align 32
@rcu_torture_write_types._entry_ptr.98 = internal global ptr @rcu_torture_write_types._entry.96, section ".printk_index", align 4
@rcu_torture_write_types._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.86, ptr @.str.3, i32 1135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\011%s: gp_normal without primitives.\0A\00", [59 x i8] zeroinitializer }, align 32
@rcu_torture_write_types._entry_ptr.101 = internal global ptr @rcu_torture_write_types._entry.99, section ".printk_index", align 4
@rcu_torture_write_types._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.86, ptr @.str.3, i32 1139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: Testing polling GPs.\0A\00", [36 x i8] zeroinitializer }, align 32
@rcu_torture_write_types._entry_ptr.104 = internal global ptr @rcu_torture_write_types._entry.102, section ".printk_index", align 4
@rcu_torture_write_types._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.86, ptr @.str.3, i32 1141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\011%s: gp_poll without primitives.\0A\00", [61 x i8] zeroinitializer }, align 32
@rcu_torture_write_types._entry_ptr.107 = internal global ptr @rcu_torture_write_types._entry.105, section ".printk_index", align 4
@rcu_torture_write_types._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.86, ptr @.str.3, i32 1145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: Testing normal GPs.\0A\00", [37 x i8] zeroinitializer }, align 32
@rcu_torture_write_types._entry_ptr.110 = internal global ptr @rcu_torture_write_types._entry.108, section ".printk_index", align 4
@rcu_torture_write_types._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.86, ptr @.str.3, i32 1147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\011%s: gp_sync without primitives.\0A\00", [61 x i8] zeroinitializer }, align 32
@rcu_torture_write_types._entry_ptr.113 = internal global ptr @rcu_torture_write_types._entry.111, section ".printk_index", align 4
@rcu_torture_writer.rand = internal global { %struct.torture_random_state, [24 x i8] } zeroinitializer, align 32
@rcu_torture_writer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.20, ptr @.str.3, i32 1172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\011%s-torture: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@rcu_torture_writer._entry_ptr = internal global ptr @rcu_torture_writer._entry, section ".printk_index", align 4
@.str.115 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rcu_torture_writer task started\00", [32 x i8] zeroinitializer }, align 32
@rcu_torture_writer._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.20, ptr @.str.3, i32 1176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\011%s-torture: GP expediting controlled from boot/sysfs for %s.\0A\00", [32 x i8] zeroinitializer }, align 32
@rcu_torture_writer._entry_ptr.118 = internal global ptr @rcu_torture_writer._entry.116, section ".printk_index", align 4
@rcu_torture_writer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.119 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"rcu_torture_writer: No update-side primitives.\0A\00", [48 x i8] zeroinitializer }, align 32
@rcu_torture_writer_state = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rcu_torture_writer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.120 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_torture_writer.__already_done.121 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.122 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Cookie check 1 failed %s(%d) %lu->%lu\0A\00", [53 x i8] zeroinitializer }, align 32
@rcu_torture_writer.__already_done.123 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_writer.__already_done.124 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_writer.___rfd_beenhere = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@rcu_cpu_stall_suppress = external dso_local local_unnamed_addr global i32, align 4
@.str.125 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: rtort_pipe_count: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rcu_torture_writer.__already_done.126 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_writer._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.20, ptr @.str.3, i32 1303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\011%s-torture: Dynamic grace-period expediting was disabled.\0A\00", [35 x i8] zeroinitializer }, align 32
@rcu_torture_writer._entry_ptr.129 = internal global ptr @rcu_torture_writer._entry.127, section ".printk_index", align 4
@.str.130 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@rcu_torture_writer_state_names = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142], [48 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RTWS_FIXED_DELAY\00", [47 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RTWS_DELAY\00", [21 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RTWS_REPLACE\00", [19 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RTWS_DEF_FREE\00", [18 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RTWS_EXP_SYNC\00", [18 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RTWS_COND_GET\00", [18 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RTWS_COND_SYNC\00", [17 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RTWS_POLL_GET\00", [18 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RTWS_POLL_WAIT\00", [17 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RTWS_SYNC\00", [22 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RTWS_STUTTER\00", [19 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RTWS_STOPPING\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_torture_fakewriter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.28, ptr @.str.3, i32 1319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_fakewriter._entry_ptr = internal global ptr @rcu_torture_fakewriter._entry, section ".printk_index", align 4
@.str.143 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rcu_torture_fakewriter task started\00", [60 x i8] zeroinitializer }, align 32
@rcu_torture_fakewriter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_reader._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.34, ptr @.str.3, i32 1721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_reader._entry_ptr = internal global ptr @rcu_torture_reader._entry, section ".printk_index", align 4
@.str.144 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rcu_torture_reader task started\00", [32 x i8] zeroinitializer }, align 32
@rcu_torture_reader.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.145 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"(&t)\00", [27 x i8] zeroinitializer }, align 32
@n_rcu_torture_timers = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@rcu_torture_one_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_one_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_torture_one_read.___rfd_beenhere = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@rcu_torture_one_read.__already_done.147 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.148 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Cookie check 2 failed %s(%d) %lu->%lu\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.rcu_torture_one_read = private unnamed_addr constant [21 x i8] c"rcu_torture_one_read\00", align 1
@rcu_torture_one_read.__already_done.149 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_one_read.__already_done.150 = internal unnamed_addr global i1 false, section ".data.once", align 1
@err_segs = internal global { [10 x %struct.rt_read_seg], [56 x i8] } zeroinitializer, align 32
@rcutorture_extend_mask_max.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcutorture_one_extend.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcutorture_one_extend.__already_done.151 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcutorture_one_extend.__already_done.152 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcutorture_one_extend.__already_done.153 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcutorture_one_extend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.3, i32 1507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016Unexpected idxnew1 value of %#x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rcutorture_one_extend\00", [42 x i8] zeroinitializer }, align 32
@rcutorture_one_extend._entry_ptr = internal global ptr @rcutorture_one_extend._entry, section ".printk_index", align 4
@rcutorture_one_extend.__already_done.160 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcutorture_one_extend.__already_done.161 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcutorture_one_extend._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.157, ptr @.str.3, i32 1515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016Unexpected idxnew2 value of %#x\0A\00", [61 x i8] zeroinitializer }, align 32
@rcutorture_one_extend._entry_ptr.164 = internal global ptr @rcutorture_one_extend._entry.162, section ".printk_index", align 4
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.165 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@rcu_sched_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_sched.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.166 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"rcu_read_lock_sched() used illegally while idle\00", [48 x i8] zeroinitializer }, align 32
@rcu_read_unlock_sched.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.167 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"rcu_read_unlock_sched() used illegally while idle\00", [46 x i8] zeroinitializer }, align 32
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.168 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@rcu_torture_reader_do_mbchk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_reader_do_mbchk.__already_done.169 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_reader_do_mbchk.__already_done.170 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcutorture_loop_extend.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_nocb_toggle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.40, ptr @.str.3, i32 1765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_nocb_toggle._entry_ptr = internal global ptr @rcu_nocb_toggle._entry, section ".printk_index", align 4
@.str.171 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rcu_nocb_toggle task started\00", [35 x i8] zeroinitializer }, align 32
@n_nocb_offload = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@n_nocb_deoffload = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@rcu_torture_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.44, ptr @.str.3, i32 1927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_stats._entry_ptr = internal global ptr @rcu_torture_stats._entry, section ".printk_index", align 4
@.str.172 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rcu_torture_stats task started\00", [33 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print.rtcv_snap = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print.splatted = internal global { i1, [31 x i8] } zeroinitializer, align 32
@rcu_torture_stats_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.3, i32 1828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\011%s%s \00", [24 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcu_torture_stats_print\00", [40 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr = internal global ptr @rcu_torture_stats_print._entry, section ".printk_index", align 4
@rcu_torture_stats_print._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.174, ptr @.str.3, i32 1837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\01crtc: %p %s: %lu tfle: %d rta: %d rtaf: %d rtf: %d \00", [43 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr.177 = internal global ptr @rcu_torture_stats_print._entry.175, section ".printk_index", align 4
@.str.178 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ver\00", [28 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VER\00", [28 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.174, ptr @.str.3, i32 1843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\01crtmbe: %d rtmbkf: %d/%d rtbe: %ld rtbke: %ld rtbre: %ld \00", [37 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr.182 = internal global ptr @rcu_torture_stats_print._entry.180, section ".printk_index", align 4
@rcu_torture_stats_print._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.174, ptr @.str.3, i32 1847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\01crtbf: %ld rtb: %ld nt: %ld \00", [34 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr.185 = internal global ptr @rcu_torture_stats_print._entry.183, section ".printk_index", align 4
@rcu_torture_stats_print._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.174, ptr @.str.3, i32 1852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\01cbarrier: %ld/%ld:%ld \00", [40 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr.188 = internal global ptr @rcu_torture_stats_print._entry.186, section ".printk_index", align 4
@n_barrier_successes = internal global { i32, [28 x i8] } zeroinitializer, align 32
@n_barrier_attempts = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rcu_torture_stats_print._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.174, ptr @.str.3, i32 1853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\01cread-exits: %ld \00", [45 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr.191 = internal global ptr @rcu_torture_stats_print._entry.189, section ".printk_index", align 4
@n_read_exits = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rcu_torture_stats_print._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.174, ptr @.str.3, i32 1855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\01cnocb-toggles: %ld:%ld\0A\00", [39 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr.194 = internal global ptr @rcu_torture_stats_print._entry.192, section ".printk_index", align 4
@rcu_torture_stats_print._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.3, i32 1857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr.196 = internal global ptr @rcu_torture_stats_print._entry.195, section ".printk_index", align 4
@rcu_torture_stats_print._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.174, ptr @.str.3, i32 1863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c%s\00", [27 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr.199 = internal global ptr @rcu_torture_stats_print._entry.197, section ".printk_index", align 4
@.str.200 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"!!! \00", [27 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_stats_print.__already_done.201 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_stats_print.__already_done.202 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_stats_print.__already_done.203 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_stats_print.__already_done.205 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_stats_print.__already_done.206 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_stats_print._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.174, ptr @.str.3, i32 1873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01cReader Pipe: \00", [16 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr.209 = internal global ptr @rcu_torture_stats_print._entry.207, section ".printk_index", align 4
@rcu_torture_stats_print._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.174, ptr @.str.3, i32 1875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c %ld\00", [25 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr.212 = internal global ptr @rcu_torture_stats_print._entry.210, section ".printk_index", align 4
@rcu_torture_stats_print._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.174, ptr @.str.3, i32 1876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr.214 = internal global ptr @rcu_torture_stats_print._entry.213, section ".printk_index", align 4
@rcu_torture_stats_print._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.3, i32 1878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr.216 = internal global ptr @rcu_torture_stats_print._entry.215, section ".printk_index", align 4
@rcu_torture_stats_print._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.174, ptr @.str.3, i32 1879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\01cReader Batch: \00", [47 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr.219 = internal global ptr @rcu_torture_stats_print._entry.217, section ".printk_index", align 4
@rcu_torture_stats_print._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.174, ptr @.str.3, i32 1881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr.221 = internal global ptr @rcu_torture_stats_print._entry.220, section ".printk_index", align 4
@rcu_torture_stats_print._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.174, ptr @.str.3, i32 1882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr.223 = internal global ptr @rcu_torture_stats_print._entry.222, section ".printk_index", align 4
@rcu_torture_stats_print._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.3, i32 1884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr.225 = internal global ptr @rcu_torture_stats_print._entry.224, section ".printk_index", align 4
@rcu_torture_stats_print._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.174, ptr @.str.3, i32 1885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\01cFree-Block Circulation: \00", [37 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr.228 = internal global ptr @rcu_torture_stats_print._entry.226, section ".printk_index", align 4
@rcu_torture_stats_print._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.174, ptr @.str.3, i32 1887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c %d\00", [26 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr.231 = internal global ptr @rcu_torture_stats_print._entry.229, section ".printk_index", align 4
@rcu_torture_stats_print._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.174, ptr @.str.3, i32 1889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr.233 = internal global ptr @rcu_torture_stats_print._entry.232, section ".printk_index", align 4
@rcu_torture_stats_print._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.174, ptr @.str.3, i32 1908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\011??? Writer stall state %s(%d) g%lu f%#x ->state %#x cpu %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rcu_torture_stats_print._entry_ptr.236 = internal global ptr @rcu_torture_stats_print._entry.234, section ".printk_index", align 4
@rcu_torture_stats_print.___rfd_beenhere = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@rcu_cpu_stall_suppress_at_boot = external dso_local local_unnamed_addr global i32, align 4
@rcu_torture_fqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.50, ptr @.str.3, i32 1082, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_fqs._entry_ptr = internal global ptr @rcu_torture_fqs._entry, section ".printk_index", align 4
@.str.237 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rcu_torture_fqs task started\00", [35 x i8] zeroinitializer }, align 32
@rcu_torture_can_boost.boost_warn_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@rcu_torture_can_boost._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.239, ptr @.str.3, i32 2796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [151 x i8], [41 x i8] } { [151 x i8] c"\011%s: WARN: RCU kthread priority too low to test boosting.  Skipping RCU boost test. Try passing rcutree.kthread_prio > 1 on the kernel command line.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rcu_torture_can_boost\00", [42 x i8] zeroinitializer }, align 32
@rcu_torture_can_boost._entry_ptr = internal global ptr @rcu_torture_can_boost._entry, section ".printk_index", align 4
@.str.240 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rcutorture\00", [21 x i8] zeroinitializer }, align 32
@boost_tasks = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@boost_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.247, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @boost_mutex, i64 52), ptr getelementptr (i8, ptr @boost_mutex, i64 52) }, ptr @boost_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.248, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@rcutorture_booster_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.241, ptr @.str.3, i32 2033, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcutorture_booster_init\00", [40 x i8] zeroinitializer }, align 32
@rcutorture_booster_init._entry_ptr = internal global ptr @rcutorture_booster_init._entry, section ".printk_index", align 4
@.str.242 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Creating rcu_torture_boost task\00", [32 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rcu_torture_boost_%u\00", [43 x i8] zeroinitializer }, align 32
@rcutorture_booster_init._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.241, ptr @.str.3, i32 2038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcutorture_booster_init._entry_ptr.245 = internal global ptr @rcutorture_booster_init._entry.244, section ".printk_index", align 4
@.str.246 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rcu_torture_boost task create failed\00", [59 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"boost_mutex.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"boost_mutex\00", [20 x i8] zeroinitializer }, align 32
@old_rt_runtime = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@sysctl_sched_rt_runtime = external dso_local local_unnamed_addr global i32, align 4
@rcu_torture_boost._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.249, ptr @.str.3, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rcu_torture_boost\00", [46 x i8] zeroinitializer }, align 32
@rcu_torture_boost._entry_ptr = internal global ptr @rcu_torture_boost._entry, section ".printk_index", align 4
@.str.250 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rcu_torture_boost started\00", [38 x i8] zeroinitializer }, align 32
@rcu_torture_boost_failed.dbg_done = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rcu_torture_boost_failed.last_persist = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rcu_torture_boost_failed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.252, ptr @.str.3, i32 955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016Boost inversion persisted: No QS from CPU %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rcu_torture_boost_failed\00", [39 x i8] zeroinitializer }, align 32
@rcu_torture_boost_failed._entry_ptr = internal global ptr @rcu_torture_boost_failed._entry, section ".printk_index", align 4
@rcu_torture_boost_failed._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.252, ptr @.str.3, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_boost_failed._entry_ptr.254 = internal global ptr @rcu_torture_boost_failed._entry.253, section ".printk_index", align 4
@.str.255 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rcu_torture_boost boosting failed\00", [62 x i8] zeroinitializer }, align 32
@rcu_torture_boost_failed._entry.256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.252, ptr @.str.3, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016Boost inversion thread ->rt_priority %u gp_state %lu jiffies %lu\0A\00", [60 x i8] zeroinitializer }, align 32
@rcu_torture_boost_failed._entry_ptr.258 = internal global ptr @rcu_torture_boost_failed._entry.256, section ".printk_index", align 4
@rcu_torture_boost_failed._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.252, ptr @.str.3, i32 967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016Boost inversion: GP %lu %s.\0A\00", [33 x i8] zeroinitializer }, align 32
@rcu_torture_boost_failed._entry_ptr.261 = internal global ptr @rcu_torture_boost_failed._entry.259, section ".printk_index", align 4
@.str.262 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ended already\00", [18 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"still pending\00", [18 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Stopping rcu_torture_boost task\00", [32 x i8] zeroinitializer }, align 32
@rcutorture_sync.n = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.265 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rcu_torture_stall\00", [46 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Creating rcu_torture_stall task\00", [32 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to create rcu_torture_stall\00", [61 x i8] zeroinitializer }, align 32
@stall_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_torture_stall._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.265, ptr @.str.3, i32 2057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_stall._entry_ptr = internal global ptr @rcu_torture_stall._entry, section ".printk_index", align 4
@.str.268 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rcu_torture_stall task started\00", [33 x i8] zeroinitializer }, align 32
@rcu_torture_stall._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.265, ptr @.str.3, i32 2059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_stall._entry_ptr.270 = internal global ptr @rcu_torture_stall._entry.269, section ".printk_index", align 4
@.str.271 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rcu_torture_stall begin holdoff\00", [32 x i8] zeroinitializer }, align 32
@rcu_torture_stall._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.265, ptr @.str.3, i32 2061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_stall._entry_ptr.273 = internal global ptr @rcu_torture_stall._entry.272, section ".printk_index", align 4
@.str.274 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rcu_torture_stall end holdoff\00", [34 x i8] zeroinitializer }, align 32
@rcu_torture_stall._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.265, ptr @.str.3, i32 2064, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_stall._entry_ptr.276 = internal global ptr @rcu_torture_stall._entry.275, section ".printk_index", align 4
@.str.277 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rcu_torture_stall begin GP stall\00", [63 x i8] zeroinitializer }, align 32
@rcu_torture_stall._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.265, ptr @.str.3, i32 2073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_stall._entry_ptr.279 = internal global ptr @rcu_torture_stall._entry.278, section ".printk_index", align 4
@.str.280 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rcu_torture_stall begin CPU stall\00", [62 x i8] zeroinitializer }, align 32
@rcu_torture_stall._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.265, ptr @.str.3, i32 2082, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\011%s start on CPU %d.\0A\00", [41 x i8] zeroinitializer }, align 32
@rcu_torture_stall._entry_ptr.283 = internal global ptr @rcu_torture_stall._entry.281, section ".printk_index", align 4
@rcu_torture_stall._entry.284 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.285, ptr @.str.265, ptr @.str.3, i32 2100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\011%s end.\0A\00", [21 x i8] zeroinitializer }, align 32
@rcu_torture_stall._entry_ptr.286 = internal global ptr @rcu_torture_stall._entry.284, section ".printk_index", align 4
@rcu_torture_fwd_prog_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.287, ptr @.str.3, i32 2550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rcu_torture_fwd_prog_init\00", [38 x i8] zeroinitializer }, align 32
@rcu_torture_fwd_prog_init._entry_ptr = internal global ptr @rcu_torture_fwd_prog_init._entry, section ".printk_index", align 4
@.str.288 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"rcu_torture_fwd_prog_init: Limiting fwd_progress to # CPUs.\0A\00", [35 x i8] zeroinitializer }, align 32
@rcu_torture_fwd_prog_init._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.287, ptr @.str.3, i32 2558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_fwd_prog_init._entry_ptr.290 = internal global ptr @rcu_torture_fwd_prog_init._entry.289, section ".printk_index", align 4
@.str.291 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"rcu_torture_fwd_prog_init: Disabled, unsupported by RCU flavor under test\00", [54 x i8] zeroinitializer }, align 32
@rcu_torture_fwd_prog_init._entry.292 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.287, ptr @.str.3, i32 2563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_fwd_prog_init._entry_ptr.293 = internal global ptr @rcu_torture_fwd_prog_init._entry.292, section ".printk_index", align 4
@.str.294 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"rcu_torture_fwd_prog_init: Disabled, conflicts with CPU-stall testing\00", [58 x i8] zeroinitializer }, align 32
@fwd_prog_tasks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_torture_fwd_prog_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.295 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&rfp[i].rcu_fwd_lock\00", [43 x i8] zeroinitializer }, align 32
@rcu_fwd_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.299, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rcu_fwd_mutex, i64 52), ptr getelementptr (i8, ptr @rcu_fwd_mutex, i64 52) }, ptr @rcu_fwd_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.300, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@rcu_fwds = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcutorture_oom_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @rcutorture_oom_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rcu_torture_fwd_prog\00", [43 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Creating rcu_torture_fwd_prog task\00", [61 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to create rcu_torture_fwd_prog\00", [58 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcu_fwd_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rcu_fwd_mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s invoked upon OOM during forward-progress testing.\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.rcutorture_oom_notify = private unnamed_addr constant [22 x i8] c"rcutorture_oom_notify\00", align 1
@rcu_fwd_emergency_stop = internal global { i8, [31 x i8] } zeroinitializer, align 32
@rcutorture_oom_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @__func__.rcutorture_oom_notify, ptr @.str.3, i32 2466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: Freed %lu RCU callbacks.\0A\00", [32 x i8] zeroinitializer }, align 32
@rcutorture_oom_notify._entry_ptr = internal global ptr @rcutorture_oom_notify._entry, section ".printk_index", align 4
@rcutorture_oom_notify._entry.303 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @__func__.rcutorture_oom_notify, ptr @.str.3, i32 2471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcutorture_oom_notify._entry_ptr.304 = internal global ptr @rcutorture_oom_notify._entry.303, section ".printk_index", align 4
@rcutorture_oom_notify._entry.305 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @__func__.rcutorture_oom_notify, ptr @.str.3, i32 2476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcutorture_oom_notify._entry_ptr.306 = internal global ptr @rcutorture_oom_notify._entry.305, section ".printk_index", align 4
@rcutorture_oom_notify._entry.307 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.308, ptr @__func__.rcutorture_oom_notify, ptr @.str.3, i32 2479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s returning after OOM processing.\0A\00", [58 x i8] zeroinitializer }, align 32
@rcutorture_oom_notify._entry_ptr.309 = internal global ptr @rcutorture_oom_notify._entry.307, section ".printk_index", align 4
@rcu_torture_fwd_cb_hist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.310, ptr @.str.311, ptr @.str.3, i32 2185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\011%s: Callback-invocation histogram %d (duration %lu jiffies):\00", [33 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcu_torture_fwd_cb_hist\00", [40 x i8] zeroinitializer }, align 32
@rcu_torture_fwd_cb_hist._entry_ptr = internal global ptr @rcu_torture_fwd_cb_hist._entry, section ".printk_index", align 4
@rcu_torture_fwd_cb_hist._entry.312 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.313, ptr @.str.311, ptr @.str.3, i32 2192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\01c %ds/%d: %ld:%ld\00", [45 x i8] zeroinitializer }, align 32
@rcu_torture_fwd_cb_hist._entry_ptr.314 = internal global ptr @rcu_torture_fwd_cb_hist._entry.312, section ".printk_index", align 4
@rcu_torture_fwd_cb_hist._entry.315 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.311, ptr @.str.3, i32 2195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_fwd_cb_hist._entry_ptr.316 = internal global ptr @rcu_torture_fwd_cb_hist._entry.315, section ".printk_index", align 4
@rcu_fwd_seq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rcu_torture_fwd_prog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.296, ptr @.str.3, i32 2499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_fwd_prog._entry_ptr = internal global ptr @rcu_torture_fwd_prog._entry, section ".printk_index", align 4
@.str.317 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rcu_torture_fwd_progress task started\00", [58 x i8] zeroinitializer }, align 32
@rcu_fwd_max_cbs = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@rcu_torture_fwd_prog._entry.318 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.319, ptr @.str.296, ptr @.str.3, i32 2509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\011%s n_max_cbs: %ld\0A\00", [43 x i8] zeroinitializer }, align 32
@rcu_torture_fwd_prog._entry_ptr.320 = internal global ptr @rcu_torture_fwd_prog._entry.318, section ".printk_index", align 4
@rcu_torture_fwd_prog._entry.321 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.322, ptr @.str.296, ptr @.str.3, i32 2518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\011%s: Starting forward-progress test %d\0A\00", [55 x i8] zeroinitializer }, align 32
@rcu_torture_fwd_prog._entry_ptr.323 = internal global ptr @rcu_torture_fwd_prog._entry.321, section ".printk_index", align 4
@rcu_torture_fwd_prog._entry.324 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.325, ptr @.str.296, ptr @.str.3, i32 2534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\011%s: tested %d tested_tries %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rcu_torture_fwd_prog._entry_ptr.326 = internal global ptr @rcu_torture_fwd_prog._entry.324, section ".printk_index", align 4
@rcu_torture_fwd_prog_cr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_torture_fwd_prog_cr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.327, ptr @.str.328, ptr @.str.3, i32 2428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [126 x i8], [34 x i8] } { [126 x i8] c"\011%s Duration %lu barrier: %lu pending %ld n_launders: %ld n_launders_sa: %ld n_max_gps: %ld n_max_cbs: %ld cver %ld gps %ld\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcu_torture_fwd_prog_cr\00", [40 x i8] zeroinitializer }, align 32
@rcu_torture_fwd_prog_cr._entry_ptr = internal global ptr @rcu_torture_fwd_prog_cr._entry, section ".printk_index", align 4
@rcu_torture_fwd_prog_nr.trs = internal global { %struct.torture_random_state, [24 x i8] } zeroinitializer, align 32
@rcu_torture_fwd_prog_nr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.329, ptr @.str.330, ptr @.str.3, i32 2323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\011%s: %d Duration %ld cver %ld gps %ld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcu_torture_fwd_prog_nr\00", [40 x i8] zeroinitializer }, align 32
@rcu_torture_fwd_prog_nr._entry_ptr = internal global ptr @rcu_torture_fwd_prog_nr._entry, section ".printk_index", align 4
@rcu_torture_barrier_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.331, ptr @.str.332, ptr @.str.3, i32 2733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\011%s-torture: Call or barrier ops missing for %s,\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rcu_torture_barrier_init\00", [39 x i8] zeroinitializer }, align 32
@rcu_torture_barrier_init._entry_ptr = internal global ptr @rcu_torture_barrier_init._entry, section ".printk_index", align 4
@rcu_torture_barrier_init._entry.333 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.332, ptr @.str.3, i32 2736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\011%s-torture: RCU barrier testing omitted from run.\0A\00", [43 x i8] zeroinitializer }, align 32
@rcu_torture_barrier_init._entry_ptr.335 = internal global ptr @rcu_torture_barrier_init._entry.333, section ".printk_index", align 4
@barrier_cbs_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@barrier_cbs_invoked = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@barrier_cbs_tasks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@barrier_cbs_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_torture_barrier_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.336 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&barrier_cbs_wq[i]\00", [45 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcu_torture_barrier_cbs\00", [40 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Creating rcu_torture_barrier_cbs task\00", [58 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to create rcu_torture_barrier_cbs\00", [55 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rcu_torture_barrier\00", [44 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Creating rcu_torture_barrier task\00", [62 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to create rcu_torture_barrier\00", [59 x i8] zeroinitializer }, align 32
@barrier_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_torture_barrier_cbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.337, ptr @.str.3, i32 2644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_barrier_cbs._entry_ptr = internal global ptr @rcu_torture_barrier_cbs._entry, section ".printk_index", align 4
@.str.343 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rcu_torture_barrier_cbs task started\00", [59 x i8] zeroinitializer }, align 32
@barrier_phase = internal global { i8, [31 x i8] } zeroinitializer, align 32
@barrier_wq = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.344, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @barrier_wq, i64 44), ptr getelementptr (i8, ptr @barrier_wq, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"barrier_wq.lock\00", [16 x i8] zeroinitializer }, align 32
@rcu_torture_barrier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.340, ptr @.str.3, i32 2678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_barrier._entry_ptr = internal global ptr @rcu_torture_barrier._entry, section ".printk_index", align 4
@.str.345 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rcu_torture_barrier task starting\00", [62 x i8] zeroinitializer }, align 32
@rcu_torture_barrier._entry.346 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.347, ptr @.str.340, ptr @.str.3, i32 2697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013barrier_cbs_invoked = %d, n_barrier_cbs = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@rcu_torture_barrier._entry_ptr.348 = internal global ptr @rcu_torture_barrier._entry.346, section ".printk_index", align 4
@rcu_torture_barrier._entry.349 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.350, ptr @.str.340, ptr @.str.3, i32 2712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Recovered: barrier_cbs_invoked = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@rcu_torture_barrier._entry_ptr.351 = internal global ptr @rcu_torture_barrier._entry.349, section ".printk_index", align 4
@rcu_torture_read_exit_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@read_exit_wq = internal global { %struct.wait_queue_head, [44 x i8] } zeroinitializer, align 32
@.str.352 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&read_exit_wq\00", [18 x i8] zeroinitializer }, align 32
@read_exit_child_stop = internal global { i8, [31 x i8] } zeroinitializer, align 32
@read_exit_child_stopped = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str.353 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rcu_torture_read_exit\00", [42 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Creating rcu_torture_read_exit task\00", [60 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to create rcu_torture_read_exit\00", [57 x i8] zeroinitializer }, align 32
@read_exit_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_torture_read_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.353, ptr @.str.3, i32 2832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_read_exit._entry_ptr = internal global ptr @rcu_torture_read_exit._entry, section ".printk_index", align 4
@.str.356 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rcu_torture_read_exit: Start of test\00", [59 x i8] zeroinitializer }, align 32
@rcu_torture_read_exit._entry.357 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.353, ptr @.str.3, i32 2837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_read_exit._entry_ptr.358 = internal global ptr @rcu_torture_read_exit._entry.357, section ".printk_index", align 4
@.str.359 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rcu_torture_read_exit: End of episode\00", [58 x i8] zeroinitializer }, align 32
@rcu_torture_read_exit._entry.360 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.353, ptr @.str.3, i32 2845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_read_exit._entry_ptr.361 = internal global ptr @rcu_torture_read_exit._entry.360, section ".printk_index", align 4
@.str.362 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"rcu_torture_read_exit: Start of episode\00", [56 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rcu_torture_read_exit_child\00", [36 x i8] zeroinitializer }, align 32
@rcu_torture_read_exit._entry.365 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.353, ptr @.str.3, i32 2855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_read_exit._entry_ptr.366 = internal global ptr @rcu_torture_read_exit._entry.365, section ".printk_index", align 4
@rcu_test_debug_objects._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.367, ptr @.str.368, ptr @.str.3, i32 3044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\011%s: WARN: Duplicate call_rcu() test starting.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rcu_test_debug_objects\00", [41 x i8] zeroinitializer }, align 32
@rcu_test_debug_objects._entry_ptr = internal global ptr @rcu_test_debug_objects._entry, section ".printk_index", align 4
@rcu_test_debug_objects._entry.369 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.370, ptr @.str.368, ptr @.str.3, i32 3063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\011%s: WARN: Duplicate call_rcu() test complete.\0A\00", [47 x i8] zeroinitializer }, align 32
@rcu_test_debug_objects._entry_ptr.371 = internal global ptr @rcu_test_debug_objects._entry.369, section ".printk_index", align 4
@rcu_torture_err_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.372, ptr @.str.373, ptr @.str.3, i32 3026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\011%s: duplicated callback was invoked.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.373 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rcu_torture_err_cb\00", [45 x i8] zeroinitializer }, align 32
@rcu_torture_err_cb._entry_ptr = internal global ptr @rcu_torture_err_cb._entry, section ".printk_index", align 4
@.str.374 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Stopping rcu_torture_stall task\00", [32 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Stopping rcu_torture_writer task\00", [63 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Stopping rcu_nocb_toggle task\00", [34 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Stopping rcu_torture_reader task\00", [63 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Stopping rcu_torture_fakewriter task\00", [59 x i8] zeroinitializer }, align 32
@rcu_torture_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.379, ptr @.str.380, ptr @.str.3, i32 2954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\011%s:  End-test grace-period state: g%ld f%#x total-gps=%ld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rcu_torture_cleanup\00", [44 x i8] zeroinitializer }, align 32
@rcu_torture_cleanup._entry_ptr = internal global ptr @rcu_torture_cleanup._entry, section ".printk_index", align 4
@.str.381 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Stopping rcu_torture_stats task\00", [32 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Stopping rcu_torture_fqs task\00", [34 x i8] zeroinitializer }, align 32
@rcu_torture_cleanup._entry.383 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.384, ptr @.str.380, ptr @.str.3, i32 2974, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\011Failure/close-call rcutorture reader segments:\0A\00", [46 x i8] zeroinitializer }, align 32
@rcu_torture_cleanup._entry_ptr.385 = internal global ptr @rcu_torture_cleanup._entry.383, section ".printk_index", align 4
@rcu_torture_cleanup._entry.386 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.387, ptr @.str.380, ptr @.str.3, i32 2976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\011\09: No segments recorded!!!\0A\00", [34 x i8] zeroinitializer }, align 32
@rcu_torture_cleanup._entry_ptr.388 = internal global ptr @rcu_torture_cleanup._entry.386, section ".printk_index", align 4
@rcu_torture_cleanup._entry.389 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.390, ptr @.str.380, ptr @.str.3, i32 2979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\011\09%d: %#x \00", [20 x i8] zeroinitializer }, align 32
@rcu_torture_cleanup._entry_ptr.391 = internal global ptr @rcu_torture_cleanup._entry.389, section ".printk_index", align 4
@rcu_torture_cleanup._entry.392 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.393, ptr @.str.380, ptr @.str.3, i32 2982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.393 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c%s%ldjiffies\00", [17 x i8] zeroinitializer }, align 32
@rcu_torture_cleanup._entry_ptr.394 = internal global ptr @rcu_torture_cleanup._entry.392, section ".printk_index", align 4
@.str.395 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.396 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"+\00", [30 x i8] zeroinitializer }, align 32
@rcu_torture_cleanup._entry.397 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.398, ptr @.str.380, ptr @.str.3, i32 2987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.398 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c%s%ldms\00", [22 x i8] zeroinitializer }, align 32
@rcu_torture_cleanup._entry_ptr.399 = internal global ptr @rcu_torture_cleanup._entry.397, section ".printk_index", align 4
@rcu_torture_cleanup._entry.400 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.401, ptr @.str.380, ptr @.str.3, i32 2992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c%s%ldus\00", [22 x i8] zeroinitializer }, align 32
@rcu_torture_cleanup._entry_ptr.402 = internal global ptr @rcu_torture_cleanup._entry.400, section ".printk_index", align 4
@rcu_torture_cleanup._entry.403 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.404, ptr @.str.380, ptr @.str.3, i32 2996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c%s\0A\00", [26 x i8] zeroinitializer }, align 32
@rcu_torture_cleanup._entry_ptr.405 = internal global ptr @rcu_torture_cleanup._entry.403, section ".printk_index", align 4
@.str.406 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"preempted\00", [22 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"End of test: FAILURE\00", [43 x i8] zeroinitializer }, align 32
@.str.408 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"End of test: RCU_HOTPLUG\00", [39 x i8] zeroinitializer }, align 32
@.str.409 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"End of test: SUCCESS\00", [43 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Stopping rcutorture_read_exit task\00", [61 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Stopping rcu_torture_barrier task\00", [62 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Stopping rcu_torture_barrier_cbs task\00", [58 x i8] zeroinitializer }, align 32
@.str.413 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Stopping rcu_torture_fwd_prog task\00", [61 x i8] zeroinitializer }, align 32
@rcu_torture_mem_dump_obj.z = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.414 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rcuscale\00", [23 x i8] zeroinitializer }, align 32
@rcu_torture_mem_dump_obj._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.415, ptr @.str.416, ptr @.str.3, i32 1946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.415 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\011mem_dump_obj() slab test: rcu_torture_stats = %px, &rhp = %px, rhp = %px, &z = %px\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.416 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rcu_torture_mem_dump_obj\00", [39 x i8] zeroinitializer }, align 32
@rcu_torture_mem_dump_obj._entry_ptr = internal global ptr @rcu_torture_mem_dump_obj._entry, section ".printk_index", align 4
@rcu_torture_mem_dump_obj._entry.417 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.418, ptr @.str.416, ptr @.str.3, i32 1947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.418 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\011mem_dump_obj(ZERO_SIZE_PTR):\00", [33 x i8] zeroinitializer }, align 32
@rcu_torture_mem_dump_obj._entry_ptr.419 = internal global ptr @rcu_torture_mem_dump_obj._entry.417, section ".printk_index", align 4
@rcu_torture_mem_dump_obj._entry.420 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.421, ptr @.str.416, ptr @.str.3, i32 1949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.421 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\011mem_dump_obj(NULL):\00", [42 x i8] zeroinitializer }, align 32
@rcu_torture_mem_dump_obj._entry_ptr.422 = internal global ptr @rcu_torture_mem_dump_obj._entry.420, section ".printk_index", align 4
@rcu_torture_mem_dump_obj._entry.423 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.424, ptr @.str.416, ptr @.str.3, i32 1951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.424 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\011mem_dump_obj(%px):\00", [43 x i8] zeroinitializer }, align 32
@rcu_torture_mem_dump_obj._entry_ptr.425 = internal global ptr @rcu_torture_mem_dump_obj._entry.423, section ".printk_index", align 4
@rcu_torture_mem_dump_obj._entry.426 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.424, ptr @.str.416, ptr @.str.3, i32 1953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_mem_dump_obj._entry_ptr.427 = internal global ptr @rcu_torture_mem_dump_obj._entry.426, section ".printk_index", align 4
@rcu_torture_mem_dump_obj._entry.428 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.424, ptr @.str.416, ptr @.str.3, i32 1955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_mem_dump_obj._entry_ptr.429 = internal global ptr @rcu_torture_mem_dump_obj._entry.428, section ".printk_index", align 4
@rcu_torture_mem_dump_obj._entry.430 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.424, ptr @.str.416, ptr @.str.3, i32 1957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_mem_dump_obj._entry_ptr.431 = internal global ptr @rcu_torture_mem_dump_obj._entry.430, section ".printk_index", align 4
@rcu_torture_mem_dump_obj._entry.432 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.433, ptr @.str.416, ptr @.str.3, i32 1962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.433 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\011mem_dump_obj() kmalloc test: rcu_torture_stats = %px, &rhp = %px, rhp = %px\0A\00", [49 x i8] zeroinitializer }, align 32
@rcu_torture_mem_dump_obj._entry_ptr.434 = internal global ptr @rcu_torture_mem_dump_obj._entry.432, section ".printk_index", align 4
@rcu_torture_mem_dump_obj._entry.435 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.436, ptr @.str.416, ptr @.str.3, i32 1963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.436 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\011mem_dump_obj(kmalloc %px):\00", [35 x i8] zeroinitializer }, align 32
@rcu_torture_mem_dump_obj._entry_ptr.437 = internal global ptr @rcu_torture_mem_dump_obj._entry.435, section ".printk_index", align 4
@rcu_torture_mem_dump_obj._entry.438 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.436, ptr @.str.416, ptr @.str.3, i32 1965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_mem_dump_obj._entry_ptr.439 = internal global ptr @rcu_torture_mem_dump_obj._entry.438, section ".printk_index", align 4
@rcu_torture_mem_dump_obj._entry.440 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.441, ptr @.str.416, ptr @.str.3, i32 1969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.441 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\011mem_dump_obj() vmalloc test: rcu_torture_stats = %px, &rhp = %px, rhp = %px\0A\00", [49 x i8] zeroinitializer }, align 32
@rcu_torture_mem_dump_obj._entry_ptr.442 = internal global ptr @rcu_torture_mem_dump_obj._entry.440, section ".printk_index", align 4
@rcu_torture_mem_dump_obj._entry.443 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.444, ptr @.str.416, ptr @.str.3, i32 1970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.444 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\011mem_dump_obj(vmalloc %px):\00", [35 x i8] zeroinitializer }, align 32
@rcu_torture_mem_dump_obj._entry_ptr.445 = internal global ptr @rcu_torture_mem_dump_obj._entry.443, section ".printk_index", align 4
@rcu_torture_mem_dump_obj._entry.446 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.444, ptr @.str.416, ptr @.str.3, i32 1972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_torture_mem_dump_obj._entry_ptr.447 = internal global ptr @rcu_torture_mem_dump_obj._entry.446, section ".printk_index", align 4
@___asan_gen_.448 = private unnamed_addr constant [12 x i8] c"extendables\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 76, i32 1 }
@___asan_gen_.451 = private unnamed_addr constant [13 x i8] c"fqs_duration\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 78, i32 1 }
@___asan_gen_.454 = private unnamed_addr constant [12 x i8] c"fqs_holdoff\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 80, i32 1 }
@___asan_gen_.457 = private unnamed_addr constant [12 x i8] c"fqs_stutter\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 81, i32 1 }
@___asan_gen_.460 = private unnamed_addr constant [13 x i8] c"fwd_progress\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 82, i32 1 }
@___asan_gen_.463 = private unnamed_addr constant [17 x i8] c"fwd_progress_div\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 83, i32 1 }
@___asan_gen_.466 = private unnamed_addr constant [21 x i8] c"fwd_progress_holdoff\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 84, i32 1 }
@___asan_gen_.469 = private unnamed_addr constant [26 x i8] c"fwd_progress_need_resched\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 86, i32 1 }
@___asan_gen_.472 = private unnamed_addr constant [8 x i8] c"gp_cond\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 88, i32 1 }
@___asan_gen_.475 = private unnamed_addr constant [7 x i8] c"gp_exp\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 89, i32 1 }
@___asan_gen_.478 = private unnamed_addr constant [10 x i8] c"gp_normal\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 90, i32 1 }
@___asan_gen_.481 = private unnamed_addr constant [8 x i8] c"gp_poll\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 92, i32 1 }
@___asan_gen_.484 = private unnamed_addr constant [8 x i8] c"gp_sync\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 93, i32 1 }
@___asan_gen_.487 = private unnamed_addr constant [10 x i8] c"irqreader\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 94, i32 1 }
@___asan_gen_.490 = private unnamed_addr constant [12 x i8] c"leakpointer\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 95, i32 1 }
@___asan_gen_.493 = private unnamed_addr constant [14 x i8] c"n_barrier_cbs\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 96, i32 1 }
@___asan_gen_.496 = private unnamed_addr constant [13 x i8] c"nfakewriters\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 98, i32 1 }
@___asan_gen_.499 = private unnamed_addr constant [9 x i8] c"nreaders\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 99, i32 1 }
@___asan_gen_.502 = private unnamed_addr constant [13 x i8] c"object_debug\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 100, i32 1 }
@___asan_gen_.505 = private unnamed_addr constant [14 x i8] c"onoff_holdoff\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 102, i32 1 }
@___asan_gen_.508 = private unnamed_addr constant [15 x i8] c"onoff_interval\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 103, i32 1 }
@___asan_gen_.511 = private unnamed_addr constant [15 x i8] c"nocbs_nthreads\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 105, i32 1 }
@___asan_gen_.514 = private unnamed_addr constant [13 x i8] c"nocbs_toggle\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 106, i32 1 }
@___asan_gen_.517 = private unnamed_addr constant [16 x i8] c"read_exit_delay\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 107, i32 1 }
@___asan_gen_.520 = private unnamed_addr constant [16 x i8] c"read_exit_burst\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 109, i32 1 }
@___asan_gen_.523 = private unnamed_addr constant [17 x i8] c"shuffle_interval\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 111, i32 1 }
@___asan_gen_.526 = private unnamed_addr constant [14 x i8] c"shutdown_secs\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 112, i32 1 }
@___asan_gen_.529 = private unnamed_addr constant [10 x i8] c"stall_cpu\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 113, i32 1 }
@___asan_gen_.532 = private unnamed_addr constant [18 x i8] c"stall_cpu_holdoff\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 114, i32 1 }
@___asan_gen_.535 = private unnamed_addr constant [20 x i8] c"stall_no_softlockup\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 116, i32 1 }
@___asan_gen_.538 = private unnamed_addr constant [18 x i8] c"stall_cpu_irqsoff\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 118, i32 1 }
@___asan_gen_.541 = private unnamed_addr constant [16 x i8] c"stall_cpu_block\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 119, i32 1 }
@___asan_gen_.544 = private unnamed_addr constant [17 x i8] c"stall_gp_kthread\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 120, i32 1 }
@___asan_gen_.547 = private unnamed_addr constant [14 x i8] c"stat_interval\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 122, i32 1 }
@___asan_gen_.550 = private unnamed_addr constant [8 x i8] c"stutter\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 124, i32 1 }
@___asan_gen_.553 = private unnamed_addr constant [11 x i8] c"test_boost\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 125, i32 1 }
@___asan_gen_.556 = private unnamed_addr constant [20 x i8] c"test_boost_duration\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 126, i32 1 }
@___asan_gen_.559 = private unnamed_addr constant [20 x i8] c"test_boost_interval\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 128, i32 1 }
@___asan_gen_.562 = private unnamed_addr constant [16 x i8] c"test_no_idle_hz\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 130, i32 1 }
@___asan_gen_.565 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 132, i32 1 }
@___asan_gen_.568 = private unnamed_addr constant [13 x i8] c"torture_type\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 135, i32 14 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 135, i32 29 }
@___asan_gen_.574 = private unnamed_addr constant [12 x i8] c"torture_ops\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3087, i32 33 }
@___asan_gen_.577 = private unnamed_addr constant [8 x i8] c"rcu_ops\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 494, i32 31 }
@___asan_gen_.580 = private unnamed_addr constant [15 x i8] c"rcu_busted_ops\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 548, i32 31 }
@___asan_gen_.583 = private unnamed_addr constant [9 x i8] c"srcu_ops\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 660, i32 31 }
@___asan_gen_.586 = private unnamed_addr constant [10 x i8] c"srcud_ops\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 696, i32 31 }
@___asan_gen_.589 = private unnamed_addr constant [17 x i8] c"busted_srcud_ops\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 717, i32 31 }
@___asan_gen_.592 = private unnamed_addr constant [10 x i8] c"tasks_ops\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 761, i32 31 }
@___asan_gen_.595 = private unnamed_addr constant [15 x i8] c"tasks_rude_ops\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 832, i32 31 }
@___asan_gen_.598 = private unnamed_addr constant [18 x i8] c"tasks_tracing_ops\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 872, i32 31 }
@___asan_gen_.601 = private unnamed_addr constant [12 x i8] c"trivial_ops\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 807, i32 31 }
@___asan_gen_.604 = private unnamed_addr constant [8 x i8] c"cur_ops\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 360, i32 32 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3103, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3105, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3107, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3108, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3114, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant [13 x i8] c"nrealreaders\00", align 1
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 140, i32 12 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3127, i32 42 }
@___asan_gen_.649 = private unnamed_addr constant [10 x i8] c"srcu_ctlp\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 573, i32 28 }
@___asan_gen_.652 = private unnamed_addr constant [13 x i8] c"start_gp_seq\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 201, i32 22 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3131, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant [21 x i8] c"rcu_torture_freelist\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 174, i32 8 }
@___asan_gen_.664 = private unnamed_addr constant [13 x i8] c"rcu_tortures\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 177, i32 27 }
@___asan_gen_.667 = private unnamed_addr constant [20 x i8] c"rcu_torture_current\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 175, i32 34 }
@___asan_gen_.670 = private unnamed_addr constant [28 x i8] c"rcu_torture_current_version\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 176, i32 22 }
@___asan_gen_.673 = private unnamed_addr constant [20 x i8] c"n_rcu_torture_alloc\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 183, i32 17 }
@___asan_gen_.676 = private unnamed_addr constant [25 x i8] c"n_rcu_torture_alloc_fail\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 184, i32 17 }
@___asan_gen_.679 = private unnamed_addr constant [19 x i8] c"n_rcu_torture_free\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 185, i32 17 }
@___asan_gen_.682 = private unnamed_addr constant [22 x i8] c"n_rcu_torture_mberror\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 186, i32 17 }
@___asan_gen_.685 = private unnamed_addr constant [25 x i8] c"n_rcu_torture_mbchk_fail\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 187, i32 17 }
@___asan_gen_.688 = private unnamed_addr constant [26 x i8] c"n_rcu_torture_mbchk_tries\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 188, i32 17 }
@___asan_gen_.691 = private unnamed_addr constant [20 x i8] c"n_rcu_torture_error\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 189, i32 17 }
@___asan_gen_.694 = private unnamed_addr constant [28 x i8] c"n_rcu_torture_barrier_error\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 190, i32 13 }
@___asan_gen_.697 = private unnamed_addr constant [29 x i8] c"n_rcu_torture_boost_ktrerror\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 191, i32 13 }
@___asan_gen_.700 = private unnamed_addr constant [28 x i8] c"n_rcu_torture_boost_failure\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 193, i32 13 }
@___asan_gen_.703 = private unnamed_addr constant [21 x i8] c"n_rcu_torture_boosts\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 194, i32 13 }
@___asan_gen_.706 = private unnamed_addr constant [19 x i8] c"rcu_torture_wcount\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 181, i32 17 }
@___asan_gen_.709 = private unnamed_addr constant [18 x i8] c"err_segs_recorded\00", align 1
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 241, i32 12 }
@___asan_gen_.712 = private unnamed_addr constant [14 x i8] c"rt_read_nsegs\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 243, i32 12 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3173, i32 13 }
@___asan_gen_.724 = private unnamed_addr constant [12 x i8] c"writer_task\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 141, i32 28 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3175, i32 6 }
@___asan_gen_.730 = private unnamed_addr constant [17 x i8] c"fakewriter_tasks\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 142, i32 29 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3182, i32 4 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3188, i32 14 }
@___asan_gen_.751 = private unnamed_addr constant [13 x i8] c"reader_tasks\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 143, i32 29 }
@___asan_gen_.754 = private unnamed_addr constant [25 x i8] c"rcu_torture_reader_mbchk\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 182, i32 41 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3198, i32 3 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3204, i32 14 }
@___asan_gen_.769 = private unnamed_addr constant [13 x i8] c"nrealnocbers\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 139, i32 12 }
@___asan_gen_.772 = private unnamed_addr constant [11 x i8] c"nocb_tasks\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 144, i32 29 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3217, i32 4 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3225, i32 14 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3230, i32 14 }
@___asan_gen_.796 = private unnamed_addr constant [11 x i8] c"stats_task\00", align 1
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 145, i32 28 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3254, i32 14 }
@___asan_gen_.808 = private unnamed_addr constant [9 x i8] c"fqs_task\00", align 1
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 146, i32 28 }
@___asan_gen_.811 = private unnamed_addr constant [16 x i8] c"boost_starttime\00", align 1
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 278, i32 22 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3267, i32 53 }
@___asan_gen_.817 = private unnamed_addr constant [10 x i8] c"rcutor_hp\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2897, i32 25 }
@___asan_gen_.820 = private unnamed_addr constant [17 x i8] c"shutdown_jiffies\00", align 1
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 200, i32 22 }
@___asan_gen_.823 = private unnamed_addr constant [20 x i8] c"rcu_torture_removed\00", align 1
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 199, i32 25 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1115, i32 695, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant [19 x i8] c"rcu_fwd_cb_nodelay\00", align 1
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 287, i32 13 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1115, i32 723, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant [17 x i8] c"rcu_torture_lock\00", align 1
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 178, i32 8 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 564, i32 11 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 679, i32 11 }
@___asan_gen_.851 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.851, i32 189, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 652, i32 52 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 713, i32 11 }
@___asan_gen_.859 = private unnamed_addr constant [11 x i8] c"__srcu_key\00", align 1
@___asan_gen_.862 = private unnamed_addr constant [10 x i8] c"srcu_ctld\00", align 1
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 572, i32 27 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 685, i32 2 }
@___asan_gen_.868 = private unnamed_addr constant [9 x i8] c"srcu_ctl\00", align 1
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 571, i32 1 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 735, i32 11 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 778, i32 11 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 849, i32 11 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 891, i32 11 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 820, i32 11 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1980, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant [9 x i8] c"synctype\00", align 1
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1105, i32 12 }
@___asan_gen_.910 = private unnamed_addr constant [11 x i8] c"nsynctypes\00", align 1
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1106, i32 12 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1121, i32 3 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1123, i32 3 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1127, i32 3 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1129, i32 3 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1133, i32 3 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1135, i32 3 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1139, i32 3 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1141, i32 3 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1145, i32 3 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1147, i32 3 }
@___asan_gen_.976 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1169, i32 9 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1172, i32 2 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1174, i32 3 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1177, i32 6 }
@___asan_gen_.997 = private unnamed_addr constant [25 x i8] c"rcu_torture_writer_state\00", align 1
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 205, i32 12 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1198, i32 12 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1213, i32 5 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1287, i32 6 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1288, i32 6 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1301, i32 3 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 250, i32 10 }
@___asan_gen_.1021 = private unnamed_addr constant [31 x i8] c"rcu_torture_writer_state_names\00", align 1
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 218, i32 27 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 219, i32 2 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 220, i32 2 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 221, i32 2 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 222, i32 2 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 223, i32 2 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 224, i32 2 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 225, i32 2 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 226, i32 2 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 227, i32 2 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 228, i32 2 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 229, i32 2 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 230, i32 2 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1319, i32 2 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1721, i32 2 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1724, i32 3 }
@___asan_gen_.1078 = private unnamed_addr constant [21 x i8] c"n_rcu_torture_timers\00", align 1
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 195, i32 22 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1650, i32 3 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1661, i32 3 }
@___asan_gen_.1087 = private unnamed_addr constant [9 x i8] c"err_segs\00", align 1
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 242, i32 27 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1507, i32 3 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1515, i32 3 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1115, i32 749, i32 2 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1115, i32 787, i32 2 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1115, i32 805, i32 2 }
@___asan_gen_.1115 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1115, i32 760, i32 2 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1765, i32 2 }
@___asan_gen_.1123 = private unnamed_addr constant [15 x i8] c"n_nocb_offload\00", align 1
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 202, i32 22 }
@___asan_gen_.1126 = private unnamed_addr constant [17 x i8] c"n_nocb_deoffload\00", align 1
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 203, i32 22 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1927, i32 2 }
@___asan_gen_.1135 = private unnamed_addr constant [10 x i8] c"rtcv_snap\00", align 1
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1813, i32 23 }
@___asan_gen_.1138 = private unnamed_addr constant [33 x i8] c"rcu_torture_stats_print.splatted\00", align 1
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1828, i32 2 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1830, i32 2 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1838, i32 2 }
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1844, i32 2 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1849, i32 2 }
@___asan_gen_.1178 = private unnamed_addr constant [20 x i8] c"n_barrier_successes\00", align 1
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 197, i32 13 }
@___asan_gen_.1181 = private unnamed_addr constant [19 x i8] c"n_barrier_attempts\00", align 1
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 196, i32 13 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1853, i32 2 }
@___asan_gen_.1190 = private unnamed_addr constant [13 x i8] c"n_read_exits\00", align 1
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 198, i32 22 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1854, i32 2 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1857, i32 2 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1863, i32 3 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1873, i32 2 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1875, i32 3 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1876, i32 2 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1878, i32 2 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1879, i32 2 }
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1881, i32 3 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1882, i32 2 }
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1884, i32 2 }
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1885, i32 2 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1887, i32 3 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1889, i32 2 }
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1904, i32 3 }
@___asan_gen_.1265 = private unnamed_addr constant [16 x i8] c"___rfd_beenhere\00", align 1
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1915, i32 3 }
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1082, i32 2 }
@___asan_gen_.1274 = private unnamed_addr constant [38 x i8] c"rcu_torture_can_boost.boost_warn_once\00", align 1
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2796, i32 3 }
@___asan_gen_.1287 = private unnamed_addr constant [12 x i8] c"boost_tasks\00", align 1
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 147, i32 28 }
@___asan_gen_.1290 = private unnamed_addr constant [12 x i8] c"boost_mutex\00", align 1
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2033, i32 2 }
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2035, i32 17 }
@___asan_gen_.1310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2038, i32 3 }
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 279, i32 8 }
@___asan_gen_.1317 = private unnamed_addr constant [15 x i8] c"old_rt_runtime\00", align 1
@___asan_gen_.1319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 908, i32 12 }
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 986, i32 2 }
@___asan_gen_.1329 = private unnamed_addr constant [9 x i8] c"dbg_done\00", align 1
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 937, i32 13 }
@___asan_gen_.1332 = private unnamed_addr constant [13 x i8] c"last_persist\00", align 1
@___asan_gen_.1334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 941, i32 23 }
@___asan_gen_.1343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 955, i32 5 }
@___asan_gen_.1349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 958, i32 3 }
@___asan_gen_.1355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 961, i32 4 }
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 966, i32 4 }
@___asan_gen_.1370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2019, i32 2 }
@___asan_gen_.1371 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@___asan_gen_.1373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3073, i32 23 }
@___asan_gen_.1382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2112, i32 9 }
@___asan_gen_.1383 = private unnamed_addr constant [11 x i8] c"stall_task\00", align 1
@___asan_gen_.1385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 148, i32 28 }
@___asan_gen_.1391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2057, i32 2 }
@___asan_gen_.1397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2059, i32 3 }
@___asan_gen_.1403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2061, i32 3 }
@___asan_gen_.1409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2064, i32 3 }
@___asan_gen_.1415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2073, i32 3 }
@___asan_gen_.1421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2081, i32 3 }
@___asan_gen_.1427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2100, i32 2 }
@___asan_gen_.1436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2550, i32 3 }
@___asan_gen_.1442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2558, i32 3 }
@___asan_gen_.1448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2563, i32 3 }
@___asan_gen_.1449 = private unnamed_addr constant [15 x i8] c"fwd_prog_tasks\00", align 1
@___asan_gen_.1451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 149, i32 29 }
@___asan_gen_.1457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2584, i32 3 }
@___asan_gen_.1458 = private unnamed_addr constant [14 x i8] c"rcu_fwd_mutex\00", align 1
@___asan_gen_.1461 = private unnamed_addr constant [9 x i8] c"rcu_fwds\00", align 1
@___asan_gen_.1463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2168, i32 24 }
@___asan_gen_.1464 = private unnamed_addr constant [18 x i8] c"rcutorture_oom_nb\00", align 1
@___asan_gen_.1466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2484, i32 30 }
@___asan_gen_.1475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2593, i32 9 }
@___asan_gen_.1481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2167, i32 8 }
@___asan_gen_.1484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2455, i32 2 }
@___asan_gen_.1485 = private unnamed_addr constant [23 x i8] c"rcu_fwd_emergency_stop\00", align 1
@___asan_gen_.1487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2171, i32 13 }
@___asan_gen_.1493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2466, i32 2 }
@___asan_gen_.1496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2471, i32 2 }
@___asan_gen_.1499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2476, i32 2 }
@___asan_gen_.1505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2479, i32 2 }
@___asan_gen_.1514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2184, i32 2 }
@___asan_gen_.1520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2189, i32 3 }
@___asan_gen_.1523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2195, i32 2 }
@___asan_gen_.1524 = private unnamed_addr constant [12 x i8] c"rcu_fwd_seq\00", align 1
@___asan_gen_.1526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2169, i32 22 }
@___asan_gen_.1532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2499, i32 2 }
@___asan_gen_.1533 = private unnamed_addr constant [16 x i8] c"rcu_fwd_max_cbs\00", align 1
@___asan_gen_.1535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2170, i32 22 }
@___asan_gen_.1541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2509, i32 5 }
@___asan_gen_.1547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2518, i32 3 }
@___asan_gen_.1553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2534, i32 3 }
@___asan_gen_.1562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2423, i32 3 }
@___asan_gen_.1563 = private unnamed_addr constant [4 x i8] c"trs\00", align 1
@___asan_gen_.1565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2282, i32 9 }
@___asan_gen_.1574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2322, i32 3 }
@___asan_gen_.1583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2731, i32 3 }
@___asan_gen_.1589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2734, i32 3 }
@___asan_gen_.1590 = private unnamed_addr constant [18 x i8] c"barrier_cbs_count\00", align 1
@___asan_gen_.1592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 281, i32 17 }
@___asan_gen_.1593 = private unnamed_addr constant [20 x i8] c"barrier_cbs_invoked\00", align 1
@___asan_gen_.1595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 283, i32 17 }
@___asan_gen_.1596 = private unnamed_addr constant [18 x i8] c"barrier_cbs_tasks\00", align 1
@___asan_gen_.1598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 150, i32 29 }
@___asan_gen_.1599 = private unnamed_addr constant [15 x i8] c"barrier_cbs_wq\00", align 1
@___asan_gen_.1601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 284, i32 27 }
@___asan_gen_.1607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2749, i32 3 }
@___asan_gen_.1616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2750, i32 9 }
@___asan_gen_.1625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2756, i32 9 }
@___asan_gen_.1626 = private unnamed_addr constant [13 x i8] c"barrier_task\00", align 1
@___asan_gen_.1628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 151, i32 28 }
@___asan_gen_.1634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2644, i32 2 }
@___asan_gen_.1635 = private unnamed_addr constant [14 x i8] c"barrier_phase\00", align 1
@___asan_gen_.1637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 282, i32 13 }
@___asan_gen_.1638 = private unnamed_addr constant [11 x i8] c"barrier_wq\00", align 1
@___asan_gen_.1643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 285, i32 8 }
@___asan_gen_.1649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2678, i32 2 }
@___asan_gen_.1655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2695, i32 4 }
@___asan_gen_.1661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2711, i32 5 }
@___asan_gen_.1662 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1665 = private unnamed_addr constant [13 x i8] c"read_exit_wq\00", align 1
@___asan_gen_.1667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2806, i32 26 }
@___asan_gen_.1670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2880, i32 2 }
@___asan_gen_.1671 = private unnamed_addr constant [21 x i8] c"read_exit_child_stop\00", align 1
@___asan_gen_.1673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2804, i32 13 }
@___asan_gen_.1674 = private unnamed_addr constant [24 x i8] c"read_exit_child_stopped\00", align 1
@___asan_gen_.1676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2805, i32 13 }
@___asan_gen_.1685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2883, i32 9 }
@___asan_gen_.1686 = private unnamed_addr constant [15 x i8] c"read_exit_task\00", align 1
@___asan_gen_.1688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 152, i32 28 }
@___asan_gen_.1694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2832, i32 2 }
@___asan_gen_.1700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2837, i32 4 }
@___asan_gen_.1706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2845, i32 5 }
@___asan_gen_.1712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2851, i32 9 }
@___asan_gen_.1715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2855, i32 4 }
@___asan_gen_.1724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3044, i32 2 }
@___asan_gen_.1730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3063, i32 2 }
@___asan_gen_.1739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3026, i32 2 }
@___asan_gen_.1742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2922, i32 2 }
@___asan_gen_.1745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2923, i32 2 }
@___asan_gen_.1748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2927, i32 4 }
@___asan_gen_.1751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2934, i32 4 }
@___asan_gen_.1754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2944, i32 4 }
@___asan_gen_.1763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2952, i32 2 }
@___asan_gen_.1766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2955, i32 2 }
@___asan_gen_.1769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2956, i32 2 }
@___asan_gen_.1775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2974, i32 3 }
@___asan_gen_.1781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2976, i32 4 }
@___asan_gen_.1787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2979, i32 4 }
@___asan_gen_.1799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2981, i32 5 }
@___asan_gen_.1805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2986, i32 5 }
@___asan_gen_.1811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2991, i32 5 }
@___asan_gen_.1820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2995, i32 4 }
@___asan_gen_.1823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3001, i32 43 }
@___asan_gen_.1826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3004, i32 13 }
@___asan_gen_.1829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 3006, i32 43 }
@___asan_gen_.1832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2894, i32 2 }
@___asan_gen_.1835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2764, i32 2 }
@___asan_gen_.1838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2767, i32 4 }
@___asan_gen_.1841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 2610, i32 3 }
@___asan_gen_.1842 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@___asan_gen_.1844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1942, i32 13 }
@___asan_gen_.1847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1944, i32 26 }
@___asan_gen_.1856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1946, i32 2 }
@___asan_gen_.1862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1947, i32 2 }
@___asan_gen_.1868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1949, i32 2 }
@___asan_gen_.1874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1951, i32 2 }
@___asan_gen_.1877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1953, i32 2 }
@___asan_gen_.1880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1955, i32 2 }
@___asan_gen_.1883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1957, i32 2 }
@___asan_gen_.1889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1962, i32 2 }
@___asan_gen_.1895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1963, i32 2 }
@___asan_gen_.1898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1965, i32 2 }
@___asan_gen_.1904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1969, i32 2 }
@___asan_gen_.1908 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1970, i32 2 }
@___asan_gen_.1911 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1912 = private constant [27 x i8] c"../kernel/rcu/rcutorture.c\00", align 1
@___asan_gen_.1913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1912, i32 1972, i32 2 }
@llvm.compiler.used = appending global [734 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_extendables296, ptr @__UNIQUE_ID_extendablestype295, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_fqs_duration298, ptr @__UNIQUE_ID_fqs_durationtype297, ptr @__UNIQUE_ID_fqs_holdoff300, ptr @__UNIQUE_ID_fqs_holdofftype299, ptr @__UNIQUE_ID_fqs_stutter302, ptr @__UNIQUE_ID_fqs_stuttertype301, ptr @__UNIQUE_ID_fwd_progress304, ptr @__UNIQUE_ID_fwd_progress_div306, ptr @__UNIQUE_ID_fwd_progress_divtype305, ptr @__UNIQUE_ID_fwd_progress_holdoff308, ptr @__UNIQUE_ID_fwd_progress_holdofftype307, ptr @__UNIQUE_ID_fwd_progress_need_resched310, ptr @__UNIQUE_ID_fwd_progress_need_reschedtype309, ptr @__UNIQUE_ID_fwd_progresstype303, ptr @__UNIQUE_ID_gp_cond312, ptr @__UNIQUE_ID_gp_condtype311, ptr @__UNIQUE_ID_gp_exp314, ptr @__UNIQUE_ID_gp_exptype313, ptr @__UNIQUE_ID_gp_normal316, ptr @__UNIQUE_ID_gp_normaltype315, ptr @__UNIQUE_ID_gp_poll318, ptr @__UNIQUE_ID_gp_polltype317, ptr @__UNIQUE_ID_gp_sync320, ptr @__UNIQUE_ID_gp_synctype319, ptr @__UNIQUE_ID_irqreader322, ptr @__UNIQUE_ID_irqreadertype321, ptr @__UNIQUE_ID_leakpointer324, ptr @__UNIQUE_ID_leakpointertype323, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_n_barrier_cbs326, ptr @__UNIQUE_ID_n_barrier_cbstype325, ptr @__UNIQUE_ID_nfakewriters328, ptr @__UNIQUE_ID_nfakewriterstype327, ptr @__UNIQUE_ID_nocbs_nthreads338, ptr @__UNIQUE_ID_nocbs_nthreadstype337, ptr @__UNIQUE_ID_nocbs_toggle340, ptr @__UNIQUE_ID_nocbs_toggletype339, ptr @__UNIQUE_ID_nreaders330, ptr @__UNIQUE_ID_nreaderstype329, ptr @__UNIQUE_ID_object_debug332, ptr @__UNIQUE_ID_object_debugtype331, ptr @__UNIQUE_ID_onoff_holdoff334, ptr @__UNIQUE_ID_onoff_holdofftype333, ptr @__UNIQUE_ID_onoff_interval336, ptr @__UNIQUE_ID_onoff_intervaltype335, ptr @__UNIQUE_ID_read_exit_burst344, ptr @__UNIQUE_ID_read_exit_bursttype343, ptr @__UNIQUE_ID_read_exit_delay342, ptr @__UNIQUE_ID_read_exit_delaytype341, ptr @__UNIQUE_ID_shuffle_interval346, ptr @__UNIQUE_ID_shuffle_intervaltype345, ptr @__UNIQUE_ID_shutdown_secs348, ptr @__UNIQUE_ID_shutdown_secstype347, ptr @__UNIQUE_ID_stall_cpu350, ptr @__UNIQUE_ID_stall_cpu_block358, ptr @__UNIQUE_ID_stall_cpu_blocktype357, ptr @__UNIQUE_ID_stall_cpu_holdoff352, ptr @__UNIQUE_ID_stall_cpu_holdofftype351, ptr @__UNIQUE_ID_stall_cpu_irqsoff356, ptr @__UNIQUE_ID_stall_cpu_irqsofftype355, ptr @__UNIQUE_ID_stall_cputype349, ptr @__UNIQUE_ID_stall_gp_kthread360, ptr @__UNIQUE_ID_stall_gp_kthreadtype359, ptr @__UNIQUE_ID_stall_no_softlockup354, ptr @__UNIQUE_ID_stall_no_softlockuptype353, ptr @__UNIQUE_ID_stat_interval362, ptr @__UNIQUE_ID_stat_intervaltype361, ptr @__UNIQUE_ID_stutter364, ptr @__UNIQUE_ID_stuttertype363, ptr @__UNIQUE_ID_test_boost366, ptr @__UNIQUE_ID_test_boost_duration368, ptr @__UNIQUE_ID_test_boost_durationtype367, ptr @__UNIQUE_ID_test_boost_interval370, ptr @__UNIQUE_ID_test_boost_intervaltype369, ptr @__UNIQUE_ID_test_boosttype365, ptr @__UNIQUE_ID_test_no_idle_hz372, ptr @__UNIQUE_ID_test_no_idle_hztype371, ptr @__UNIQUE_ID_torture_type376, ptr @__UNIQUE_ID_torture_typetype375, ptr @__UNIQUE_ID_verbose374, ptr @__UNIQUE_ID_verbosetype373, ptr @__exitcall_rcu_torture_cleanup, ptr @__initcall__kmod_rcutorture__468_3324_rcu_torture_init6, ptr @__param_extendables, ptr @__param_fqs_duration, ptr @__param_fqs_holdoff, ptr @__param_fqs_stutter, ptr @__param_fwd_progress, ptr @__param_fwd_progress_div, ptr @__param_fwd_progress_holdoff, ptr @__param_fwd_progress_need_resched, ptr @__param_gp_cond, ptr @__param_gp_exp, ptr @__param_gp_normal, ptr @__param_gp_poll, ptr @__param_gp_sync, ptr @__param_irqreader, ptr @__param_leakpointer, ptr @__param_n_barrier_cbs, ptr @__param_nfakewriters, ptr @__param_nocbs_nthreads, ptr @__param_nocbs_toggle, ptr @__param_nreaders, ptr @__param_object_debug, ptr @__param_onoff_holdoff, ptr @__param_onoff_interval, ptr @__param_read_exit_burst, ptr @__param_read_exit_delay, ptr @__param_shuffle_interval, ptr @__param_shutdown_secs, ptr @__param_stall_cpu, ptr @__param_stall_cpu_block, ptr @__param_stall_cpu_holdoff, ptr @__param_stall_cpu_irqsoff, ptr @__param_stall_gp_kthread, ptr @__param_stall_no_softlockup, ptr @__param_stat_interval, ptr @__param_stutter, ptr @__param_test_boost, ptr @__param_test_boost_duration, ptr @__param_test_boost_interval, ptr @__param_test_no_idle_hz, ptr @__param_torture_type, ptr @__param_verbose, ptr @rcu_nocb_toggle._entry, ptr @rcu_nocb_toggle._entry_ptr, ptr @rcu_test_debug_objects._entry, ptr @rcu_test_debug_objects._entry.369, ptr @rcu_test_debug_objects._entry_ptr, ptr @rcu_test_debug_objects._entry_ptr.371, ptr @rcu_torture_barrier._entry, ptr @rcu_torture_barrier._entry.346, ptr @rcu_torture_barrier._entry.349, ptr @rcu_torture_barrier._entry_ptr, ptr @rcu_torture_barrier._entry_ptr.348, ptr @rcu_torture_barrier._entry_ptr.351, ptr @rcu_torture_barrier_cbs._entry, ptr @rcu_torture_barrier_cbs._entry_ptr, ptr @rcu_torture_barrier_init._entry, ptr @rcu_torture_barrier_init._entry.333, ptr @rcu_torture_barrier_init._entry_ptr, ptr @rcu_torture_barrier_init._entry_ptr.335, ptr @rcu_torture_boost._entry, ptr @rcu_torture_boost._entry_ptr, ptr @rcu_torture_boost_failed._entry, ptr @rcu_torture_boost_failed._entry.253, ptr @rcu_torture_boost_failed._entry.256, ptr @rcu_torture_boost_failed._entry.259, ptr @rcu_torture_boost_failed._entry_ptr, ptr @rcu_torture_boost_failed._entry_ptr.254, ptr @rcu_torture_boost_failed._entry_ptr.258, ptr @rcu_torture_boost_failed._entry_ptr.261, ptr @rcu_torture_can_boost._entry, ptr @rcu_torture_can_boost._entry_ptr, ptr @rcu_torture_cleanup._entry, ptr @rcu_torture_cleanup._entry.383, ptr @rcu_torture_cleanup._entry.386, ptr @rcu_torture_cleanup._entry.389, ptr @rcu_torture_cleanup._entry.392, ptr @rcu_torture_cleanup._entry.397, ptr @rcu_torture_cleanup._entry.400, ptr @rcu_torture_cleanup._entry.403, ptr @rcu_torture_cleanup._entry_ptr, ptr @rcu_torture_cleanup._entry_ptr.385, ptr @rcu_torture_cleanup._entry_ptr.388, ptr @rcu_torture_cleanup._entry_ptr.391, ptr @rcu_torture_cleanup._entry_ptr.394, ptr @rcu_torture_cleanup._entry_ptr.399, ptr @rcu_torture_cleanup._entry_ptr.402, ptr @rcu_torture_cleanup._entry_ptr.405, ptr @rcu_torture_err_cb._entry, ptr @rcu_torture_err_cb._entry_ptr, ptr @rcu_torture_fakewriter._entry, ptr @rcu_torture_fakewriter._entry_ptr, ptr @rcu_torture_fqs._entry, ptr @rcu_torture_fqs._entry_ptr, ptr @rcu_torture_fwd_cb_hist._entry, ptr @rcu_torture_fwd_cb_hist._entry.312, ptr @rcu_torture_fwd_cb_hist._entry.315, ptr @rcu_torture_fwd_cb_hist._entry_ptr, ptr @rcu_torture_fwd_cb_hist._entry_ptr.314, ptr @rcu_torture_fwd_cb_hist._entry_ptr.316, ptr @rcu_torture_fwd_prog._entry, ptr @rcu_torture_fwd_prog._entry.318, ptr @rcu_torture_fwd_prog._entry.321, ptr @rcu_torture_fwd_prog._entry.324, ptr @rcu_torture_fwd_prog._entry_ptr, ptr @rcu_torture_fwd_prog._entry_ptr.320, ptr @rcu_torture_fwd_prog._entry_ptr.323, ptr @rcu_torture_fwd_prog._entry_ptr.326, ptr @rcu_torture_fwd_prog_cr._entry, ptr @rcu_torture_fwd_prog_cr._entry_ptr, ptr @rcu_torture_fwd_prog_init._entry, ptr @rcu_torture_fwd_prog_init._entry.289, ptr @rcu_torture_fwd_prog_init._entry.292, ptr @rcu_torture_fwd_prog_init._entry_ptr, ptr @rcu_torture_fwd_prog_init._entry_ptr.290, ptr @rcu_torture_fwd_prog_init._entry_ptr.293, ptr @rcu_torture_fwd_prog_nr._entry, ptr @rcu_torture_fwd_prog_nr._entry_ptr, ptr @rcu_torture_init._entry, ptr @rcu_torture_init._entry.10, ptr @rcu_torture_init._entry.13, ptr @rcu_torture_init._entry.17, ptr @rcu_torture_init._entry.24, ptr @rcu_torture_init._entry.32, ptr @rcu_torture_init._entry.38, ptr @rcu_torture_init._entry.4, ptr @rcu_torture_init._entry.7, ptr @rcu_torture_init._entry_ptr, ptr @rcu_torture_init._entry_ptr.12, ptr @rcu_torture_init._entry_ptr.15, ptr @rcu_torture_init._entry_ptr.19, ptr @rcu_torture_init._entry_ptr.26, ptr @rcu_torture_init._entry_ptr.33, ptr @rcu_torture_init._entry_ptr.39, ptr @rcu_torture_init._entry_ptr.6, ptr @rcu_torture_init._entry_ptr.9, ptr @rcu_torture_mem_dump_obj._entry, ptr @rcu_torture_mem_dump_obj._entry.417, ptr @rcu_torture_mem_dump_obj._entry.420, ptr @rcu_torture_mem_dump_obj._entry.423, ptr @rcu_torture_mem_dump_obj._entry.426, ptr @rcu_torture_mem_dump_obj._entry.428, ptr @rcu_torture_mem_dump_obj._entry.430, ptr @rcu_torture_mem_dump_obj._entry.432, ptr @rcu_torture_mem_dump_obj._entry.435, ptr @rcu_torture_mem_dump_obj._entry.438, ptr @rcu_torture_mem_dump_obj._entry.440, ptr @rcu_torture_mem_dump_obj._entry.443, ptr @rcu_torture_mem_dump_obj._entry.446, ptr @rcu_torture_mem_dump_obj._entry_ptr, ptr @rcu_torture_mem_dump_obj._entry_ptr.419, ptr @rcu_torture_mem_dump_obj._entry_ptr.422, ptr @rcu_torture_mem_dump_obj._entry_ptr.425, ptr @rcu_torture_mem_dump_obj._entry_ptr.427, ptr @rcu_torture_mem_dump_obj._entry_ptr.429, ptr @rcu_torture_mem_dump_obj._entry_ptr.431, ptr @rcu_torture_mem_dump_obj._entry_ptr.434, ptr @rcu_torture_mem_dump_obj._entry_ptr.437, ptr @rcu_torture_mem_dump_obj._entry_ptr.439, ptr @rcu_torture_mem_dump_obj._entry_ptr.442, ptr @rcu_torture_mem_dump_obj._entry_ptr.445, ptr @rcu_torture_mem_dump_obj._entry_ptr.447, ptr @rcu_torture_print_module_parms._entry, ptr @rcu_torture_print_module_parms._entry_ptr, ptr @rcu_torture_read_exit._entry, ptr @rcu_torture_read_exit._entry.357, ptr @rcu_torture_read_exit._entry.360, ptr @rcu_torture_read_exit._entry.365, ptr @rcu_torture_read_exit._entry_ptr, ptr @rcu_torture_read_exit._entry_ptr.358, ptr @rcu_torture_read_exit._entry_ptr.361, ptr @rcu_torture_read_exit._entry_ptr.366, ptr @rcu_torture_reader._entry, ptr @rcu_torture_reader._entry_ptr, ptr @rcu_torture_stall._entry, ptr @rcu_torture_stall._entry.269, ptr @rcu_torture_stall._entry.272, ptr @rcu_torture_stall._entry.275, ptr @rcu_torture_stall._entry.278, ptr @rcu_torture_stall._entry.281, ptr @rcu_torture_stall._entry.284, ptr @rcu_torture_stall._entry_ptr, ptr @rcu_torture_stall._entry_ptr.270, ptr @rcu_torture_stall._entry_ptr.273, ptr @rcu_torture_stall._entry_ptr.276, ptr @rcu_torture_stall._entry_ptr.279, ptr @rcu_torture_stall._entry_ptr.283, ptr @rcu_torture_stall._entry_ptr.286, ptr @rcu_torture_stats._entry, ptr @rcu_torture_stats._entry_ptr, ptr @rcu_torture_stats_print._entry, ptr @rcu_torture_stats_print._entry.175, ptr @rcu_torture_stats_print._entry.180, ptr @rcu_torture_stats_print._entry.183, ptr @rcu_torture_stats_print._entry.186, ptr @rcu_torture_stats_print._entry.189, ptr @rcu_torture_stats_print._entry.192, ptr @rcu_torture_stats_print._entry.195, ptr @rcu_torture_stats_print._entry.197, ptr @rcu_torture_stats_print._entry.207, ptr @rcu_torture_stats_print._entry.210, ptr @rcu_torture_stats_print._entry.213, ptr @rcu_torture_stats_print._entry.215, ptr @rcu_torture_stats_print._entry.217, ptr @rcu_torture_stats_print._entry.220, ptr @rcu_torture_stats_print._entry.222, ptr @rcu_torture_stats_print._entry.224, ptr @rcu_torture_stats_print._entry.226, ptr @rcu_torture_stats_print._entry.229, ptr @rcu_torture_stats_print._entry.232, ptr @rcu_torture_stats_print._entry.234, ptr @rcu_torture_stats_print._entry_ptr, ptr @rcu_torture_stats_print._entry_ptr.177, ptr @rcu_torture_stats_print._entry_ptr.182, ptr @rcu_torture_stats_print._entry_ptr.185, ptr @rcu_torture_stats_print._entry_ptr.188, ptr @rcu_torture_stats_print._entry_ptr.191, ptr @rcu_torture_stats_print._entry_ptr.194, ptr @rcu_torture_stats_print._entry_ptr.196, ptr @rcu_torture_stats_print._entry_ptr.199, ptr @rcu_torture_stats_print._entry_ptr.209, ptr @rcu_torture_stats_print._entry_ptr.212, ptr @rcu_torture_stats_print._entry_ptr.214, ptr @rcu_torture_stats_print._entry_ptr.216, ptr @rcu_torture_stats_print._entry_ptr.219, ptr @rcu_torture_stats_print._entry_ptr.221, ptr @rcu_torture_stats_print._entry_ptr.223, ptr @rcu_torture_stats_print._entry_ptr.225, ptr @rcu_torture_stats_print._entry_ptr.228, ptr @rcu_torture_stats_print._entry_ptr.231, ptr @rcu_torture_stats_print._entry_ptr.233, ptr @rcu_torture_stats_print._entry_ptr.236, ptr @rcu_torture_write_types._entry, ptr @rcu_torture_write_types._entry.102, ptr @rcu_torture_write_types._entry.105, ptr @rcu_torture_write_types._entry.108, ptr @rcu_torture_write_types._entry.111, ptr @rcu_torture_write_types._entry.87, ptr @rcu_torture_write_types._entry.90, ptr @rcu_torture_write_types._entry.93, ptr @rcu_torture_write_types._entry.96, ptr @rcu_torture_write_types._entry.99, ptr @rcu_torture_write_types._entry_ptr, ptr @rcu_torture_write_types._entry_ptr.101, ptr @rcu_torture_write_types._entry_ptr.104, ptr @rcu_torture_write_types._entry_ptr.107, ptr @rcu_torture_write_types._entry_ptr.110, ptr @rcu_torture_write_types._entry_ptr.113, ptr @rcu_torture_write_types._entry_ptr.89, ptr @rcu_torture_write_types._entry_ptr.92, ptr @rcu_torture_write_types._entry_ptr.95, ptr @rcu_torture_write_types._entry_ptr.98, ptr @rcu_torture_writer._entry, ptr @rcu_torture_writer._entry.116, ptr @rcu_torture_writer._entry.127, ptr @rcu_torture_writer._entry_ptr, ptr @rcu_torture_writer._entry_ptr.118, ptr @rcu_torture_writer._entry_ptr.129, ptr @rcutorture_booster_init._entry, ptr @rcutorture_booster_init._entry.244, ptr @rcutorture_booster_init._entry_ptr, ptr @rcutorture_booster_init._entry_ptr.245, ptr @rcutorture_one_extend._entry, ptr @rcutorture_one_extend._entry.162, ptr @rcutorture_one_extend._entry_ptr, ptr @rcutorture_one_extend._entry_ptr.164, ptr @rcutorture_oom_notify._entry, ptr @rcutorture_oom_notify._entry.303, ptr @rcutorture_oom_notify._entry.305, ptr @rcutorture_oom_notify._entry.307, ptr @rcutorture_oom_notify._entry_ptr, ptr @rcutorture_oom_notify._entry_ptr.304, ptr @rcutorture_oom_notify._entry_ptr.306, ptr @rcutorture_oom_notify._entry_ptr.309, ptr @extendables, ptr @fqs_duration, ptr @fqs_holdoff, ptr @fqs_stutter, ptr @fwd_progress, ptr @fwd_progress_div, ptr @fwd_progress_holdoff, ptr @fwd_progress_need_resched, ptr @gp_cond, ptr @gp_exp, ptr @gp_normal, ptr @gp_poll, ptr @gp_sync, ptr @irqreader, ptr @leakpointer, ptr @n_barrier_cbs, ptr @nfakewriters, ptr @nreaders, ptr @object_debug, ptr @onoff_holdoff, ptr @onoff_interval, ptr @nocbs_nthreads, ptr @nocbs_toggle, ptr @read_exit_delay, ptr @read_exit_burst, ptr @shuffle_interval, ptr @shutdown_secs, ptr @stall_cpu, ptr @stall_cpu_holdoff, ptr @stall_no_softlockup, ptr @stall_cpu_irqsoff, ptr @stall_cpu_block, ptr @stall_gp_kthread, ptr @stat_interval, ptr @stutter, ptr @test_boost, ptr @test_boost_duration, ptr @test_boost_interval, ptr @test_no_idle_hz, ptr @verbose, ptr @torture_type, ptr @.str, ptr @rcu_torture_init.torture_ops, ptr @rcu_ops, ptr @rcu_busted_ops, ptr @srcu_ops, ptr @srcud_ops, ptr @busted_srcud_ops, ptr @tasks_ops, ptr @tasks_rude_ops, ptr @tasks_tracing_ops, ptr @trivial_ops, ptr @cur_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @nrealreaders, ptr @.str.16, ptr @srcu_ctlp, ptr @start_gp_seq, ptr @.str.18, ptr @rcu_torture_freelist, ptr @rcu_tortures, ptr @rcu_torture_current, ptr @rcu_torture_current_version, ptr @n_rcu_torture_alloc, ptr @n_rcu_torture_alloc_fail, ptr @n_rcu_torture_free, ptr @n_rcu_torture_mberror, ptr @n_rcu_torture_mbchk_fail, ptr @n_rcu_torture_mbchk_tries, ptr @n_rcu_torture_error, ptr @n_rcu_torture_barrier_error, ptr @n_rcu_torture_boost_ktrerror, ptr @n_rcu_torture_boost_failure, ptr @n_rcu_torture_boosts, ptr @rcu_torture_wcount, ptr @err_segs_recorded, ptr @rt_read_nsegs, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @writer_task, ptr @.str.23, ptr @fakewriter_tasks, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @reader_tasks, ptr @rcu_torture_reader_mbchk, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @nrealnocbers, ptr @nocb_tasks, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @stats_task, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @fqs_task, ptr @boost_starttime, ptr @.str.54, ptr @rcutor_hp, ptr @shutdown_jiffies, ptr @rcu_torture_removed, ptr @.str.63, ptr @.str.64, ptr @rcu_fwd_cb_nodelay, ptr @.str.65, ptr @rcu_torture_lock, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @srcu_torture_init.__srcu_key, ptr @srcu_ctld, ptr @.str.72, ptr @srcu_ctl, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @synctype, ptr @nsynctypes, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @rcu_torture_writer.rand, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.119, ptr @rcu_torture_writer_state, ptr @.str.120, ptr @.str.122, ptr @rcu_torture_writer.___rfd_beenhere, ptr @.str.125, ptr @.str.128, ptr @.str.130, ptr @rcu_torture_writer_state_names, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @rcu_torture_reader.__key, ptr @.str.145, ptr @n_rcu_torture_timers, ptr @rcu_torture_one_read.___rfd_beenhere, ptr @.str.148, ptr @err_segs, ptr @.str.156, ptr @.str.157, ptr @.str.163, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.171, ptr @n_nocb_offload, ptr @n_nocb_deoffload, ptr @.str.172, ptr @rcu_torture_stats_print.rtcv_snap, ptr @rcu_torture_stats_print.splatted, ptr @.str.173, ptr @.str.174, ptr @.str.176, ptr @.str.178, ptr @.str.179, ptr @.str.181, ptr @.str.184, ptr @.str.187, ptr @n_barrier_successes, ptr @n_barrier_attempts, ptr @.str.190, ptr @n_read_exits, ptr @.str.193, ptr @.str.198, ptr @.str.200, ptr @.str.208, ptr @.str.211, ptr @.str.218, ptr @.str.227, ptr @.str.230, ptr @.str.235, ptr @rcu_torture_stats_print.___rfd_beenhere, ptr @.str.237, ptr @rcu_torture_can_boost.boost_warn_once, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @boost_tasks, ptr @boost_mutex, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @old_rt_runtime, ptr @.str.249, ptr @.str.250, ptr @rcu_torture_boost_failed.dbg_done, ptr @rcu_torture_boost_failed.last_persist, ptr @.str.251, ptr @.str.252, ptr @.str.255, ptr @.str.257, ptr @.str.260, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @rcutorture_sync.n, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @stall_task, ptr @.str.268, ptr @.str.271, ptr @.str.274, ptr @.str.277, ptr @.str.280, ptr @.str.282, ptr @.str.285, ptr @.str.287, ptr @.str.288, ptr @.str.291, ptr @.str.294, ptr @fwd_prog_tasks, ptr @rcu_torture_fwd_prog_init.__key, ptr @.str.295, ptr @rcu_fwd_mutex, ptr @rcu_fwds, ptr @rcutorture_oom_nb, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @rcu_fwd_emergency_stop, ptr @.str.302, ptr @.str.308, ptr @.str.310, ptr @.str.311, ptr @.str.313, ptr @rcu_fwd_seq, ptr @.str.317, ptr @rcu_fwd_max_cbs, ptr @.str.319, ptr @.str.322, ptr @.str.325, ptr @.str.327, ptr @.str.328, ptr @rcu_torture_fwd_prog_nr.trs, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.334, ptr @barrier_cbs_count, ptr @barrier_cbs_invoked, ptr @barrier_cbs_tasks, ptr @barrier_cbs_wq, ptr @rcu_torture_barrier_init.__key, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @barrier_task, ptr @.str.343, ptr @barrier_phase, ptr @barrier_wq, ptr @.str.344, ptr @.str.345, ptr @.str.347, ptr @.str.350, ptr @rcu_torture_read_exit_init.__key, ptr @read_exit_wq, ptr @.str.352, ptr @read_exit_child_stop, ptr @read_exit_child_stopped, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @read_exit_task, ptr @.str.356, ptr @.str.359, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.367, ptr @.str.368, ptr @.str.370, ptr @.str.372, ptr @.str.373, ptr @.str.374, ptr @.str.375, ptr @.str.376, ptr @.str.377, ptr @.str.378, ptr @.str.379, ptr @.str.380, ptr @.str.381, ptr @.str.382, ptr @.str.384, ptr @.str.387, ptr @.str.390, ptr @.str.393, ptr @.str.395, ptr @.str.396, ptr @.str.398, ptr @.str.401, ptr @.str.404, ptr @.str.406, ptr @.str.407, ptr @.str.408, ptr @.str.409, ptr @.str.410, ptr @.str.411, ptr @.str.412, ptr @.str.413, ptr @rcu_torture_mem_dump_obj.z, ptr @.str.414, ptr @.str.415, ptr @.str.416, ptr @.str.418, ptr @.str.421, ptr @.str.424, ptr @.str.433, ptr @.str.436, ptr @.str.441, ptr @.str.444], section "llvm.metadata"
@0 = internal global [490 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extendables to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fqs_duration to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fqs_holdoff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fqs_stutter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwd_progress to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwd_progress_div to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwd_progress_holdoff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwd_progress_need_resched to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp_cond to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp_exp to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp_normal to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp_poll to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp_sync to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqreader to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @leakpointer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_barrier_cbs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfakewriters to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nreaders to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @object_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onoff_holdoff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onoff_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nocbs_nthreads to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nocbs_toggle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_exit_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_exit_burst to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shuffle_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown_secs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stall_cpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stall_cpu_holdoff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stall_no_softlockup to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stall_cpu_irqsoff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stall_cpu_block to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stall_gp_kthread to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stat_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stutter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_boost to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_boost_duration to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_boost_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_no_idle_hz to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_init.torture_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_busted_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcud_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @busted_srcud_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tasks_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tasks_rude_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tasks_tracing_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trivial_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cur_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nrealreaders to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_ctlp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_gp_seq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_freelist to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_tortures to i32), i32 2800, i32 3488, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_current to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_current_version to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_rcu_torture_alloc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_rcu_torture_alloc_fail to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_rcu_torture_free to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_rcu_torture_mberror to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_rcu_torture_mbchk_fail to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_rcu_torture_mbchk_tries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_rcu_torture_error to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_rcu_torture_barrier_error to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_rcu_torture_boost_ktrerror to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_rcu_torture_boost_failure to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_rcu_torture_boosts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_wcount to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @err_segs_recorded to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt_read_nsegs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writer_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fakewriter_tasks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reader_tasks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_reader_mbchk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nrealnocbers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nocb_tasks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fqs_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boost_starttime to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcutor_hp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown_jiffies to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_removed to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_fwd_cb_nodelay to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_torture_init.__srcu_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_ctld to i32), i32 824, i32 1024, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_ctl to i32), i32 824, i32 1024, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_print_module_parms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 465, i32 576, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synctype to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsynctypes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_write_types._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_write_types._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_write_types._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_write_types._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_write_types._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_write_types._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_write_types._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_write_types._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_write_types._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_write_types._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_writer.rand to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_writer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_writer._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_writer_state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_writer.___rfd_beenhere to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_writer._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_writer_state_names to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_fakewriter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_reader._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_reader.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1662 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_rcu_torture_timers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_one_read.___rfd_beenhere to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @err_segs to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcutorture_one_extend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcutorture_one_extend._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_nocb_toggle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_nocb_offload to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_nocb_deoffload to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print.rtcv_snap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print.splatted to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_barrier_successes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_barrier_attempts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_read_exits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stats_print.___rfd_beenhere to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_fqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_can_boost.boost_warn_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_can_boost._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 151, i32 192, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boost_tasks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boost_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcutorture_booster_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcutorture_booster_init._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @old_rt_runtime to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_boost._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_boost_failed.dbg_done to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_boost_failed.last_persist to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_boost_failed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_boost_failed._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_boost_failed._entry.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_boost_failed._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcutorture_sync.n to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stall_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stall._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stall._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stall._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stall._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stall._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stall._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_stall._entry.284 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_fwd_prog_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_fwd_prog_init._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_fwd_prog_init._entry.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwd_prog_tasks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_fwd_prog_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1662 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_fwd_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_fwds to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcutorture_oom_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_fwd_emergency_stop to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcutorture_oom_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcutorture_oom_notify._entry.303 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcutorture_oom_notify._entry.305 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcutorture_oom_notify._entry.307 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_fwd_cb_hist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_fwd_cb_hist._entry.312 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_fwd_cb_hist._entry.315 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_fwd_seq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_fwd_prog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_fwd_max_cbs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1533 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_fwd_prog._entry.318 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_fwd_prog._entry.321 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_fwd_prog._entry.324 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_fwd_prog_cr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_fwd_prog_nr.trs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_fwd_prog_nr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_barrier_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_barrier_init._entry.333 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @barrier_cbs_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1590 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @barrier_cbs_invoked to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1593 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @barrier_cbs_tasks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @barrier_cbs_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_barrier_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1662 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @barrier_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_barrier_cbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @barrier_phase to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @barrier_wq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_barrier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_barrier._entry.346 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_barrier._entry.349 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_read_exit_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1662 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_exit_wq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_exit_child_stop to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_exit_child_stopped to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1674 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_exit_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1686 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_read_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_read_exit._entry.357 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_read_exit._entry.360 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_read_exit._entry.365 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_test_debug_objects._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_test_debug_objects._entry.369 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_err_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_cleanup._entry.383 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_cleanup._entry.386 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_cleanup._entry.389 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_cleanup._entry.392 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.393 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_cleanup._entry.397 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_cleanup._entry.400 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_cleanup._entry.403 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.413 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_mem_dump_obj.z to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1842 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_mem_dump_obj._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.415 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_mem_dump_obj._entry.417 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.418 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_mem_dump_obj._entry.420 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.421 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_mem_dump_obj._entry.423 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.424 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_mem_dump_obj._entry.426 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_mem_dump_obj._entry.428 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_mem_dump_obj._entry.430 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_mem_dump_obj._entry.432 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.433 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_mem_dump_obj._entry.435 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.436 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_mem_dump_obj._entry.438 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_mem_dump_obj._entry.440 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.441 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_mem_dump_obj._entry.443 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.444 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_torture_mem_dump_obj._entry.446 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1913 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_torture_init() #0 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = alloca i32, align 4
  %gp_seq = alloca i32, align 4
  %sp = alloca %struct.sched_param, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #16
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gp_seq) #16
  %1 = ptrtoint ptr %gp_seq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %gp_seq, align 4
  %2 = load ptr, ptr @torture_type, align 4
  %3 = load i32, ptr @verbose, align 4
  %call = tail call zeroext i1 @torture_init_begin(ptr noundef %2, i32 noundef %3) #16
  br i1 %call, label %for.cond.preheader, label %cleanup1333

for.cond.preheader:                               ; preds = %entry
  %4 = load ptr, ptr @torture_type, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.cond.preheader
  %i.01707 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc ]
  %arrayidx = getelementptr [9 x ptr], ptr @rcu_torture_init.torture_ops, i32 0, i32 %i.01707
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %name = getelementptr inbounds %struct.rcu_torture_ops, ptr %6, i32 0, i32 29
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %call1 = tail call i32 @strcmp(ptr noundef %4, ptr noundef %8) #18
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end31, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.01707, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %do.end, label %for.body

do.end:                                           ; preds = %for.inc
  store ptr %6, ptr @cur_ops, align 4
  %9 = load ptr, ptr @torture_type, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %9) #19
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #19
  br label %do.end18

do.end18:                                         ; preds = %do.end18, %do.end
  %i.11708 = phi i32 [ 0, %do.end ], [ %inc24, %do.end18 ]
  %arrayidx20 = getelementptr [9 x ptr], ptr @rcu_torture_init.torture_ops, i32 0, i32 %i.11708
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx20, align 4
  %name21 = getelementptr inbounds %struct.rcu_torture_ops, ptr %11, i32 0, i32 29
  %12 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name21, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %13) #19
  %inc24 = add nuw nsw i32 %i.11708, 1
  %exitcond1729.not = icmp eq i32 %inc24, 9
  br i1 %exitcond1729.not, label %do.end28, label %do.end18

do.end28:                                         ; preds = %do.end18
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #19
  store ptr null, ptr @cur_ops, align 4
  br label %unwind

if.end31:                                         ; preds = %for.body
  store ptr %6, ptr @cur_ops, align 4
  %fqs = getelementptr inbounds %struct.rcu_torture_ops, ptr %6, i32 0, i32 18
  %14 = ptrtoint ptr %fqs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fqs, align 4
  %cmp32 = icmp eq ptr %15, null
  br i1 %cmp32, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.end31
  %16 = load i32, ptr @fqs_duration, align 4
  %cmp33.not = icmp eq i32 %16, 0
  br i1 %cmp33.not, label %if.end40, label %do.end37

do.end37:                                         ; preds = %land.lhs.true
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #19
  store i32 0, ptr @fqs_duration, align 4
  br label %if.end40

if.end40:                                         ; preds = %do.end37, %land.lhs.true, %if.end31
  %17 = load ptr, ptr @cur_ops, align 4
  %init = getelementptr inbounds %struct.rcu_torture_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end40
  tail call void %19() #16
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end40
  %20 = load i32, ptr @nreaders, align 4
  %cmp44 = icmp sgt i32 %20, -1
  br i1 %cmp44, label %if.end51, label %if.else

if.else:                                          ; preds = %if.end43
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %21 = load volatile i32, ptr @__num_online_cpus, align 4
  %sub = add i32 %21, -2
  %22 = load i32, ptr @nreaders, align 4
  %sub47 = sub i32 %sub, %22
  %23 = tail call i32 @llvm.smax.i32(i32 %sub47, i32 1)
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.end43
  %storemerge = phi i32 [ %23, %if.else ], [ %20, %if.end43 ]
  store i32 %storemerge, ptr @nrealreaders, align 4
  %24 = load ptr, ptr @cur_ops, align 4
  tail call fastcc void @rcu_torture_print_module_parms(ptr noundef %24, ptr noundef nonnull @.str.16)
  %25 = load ptr, ptr @cur_ops, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @rcutorture_get_gp_data(i32 noundef %27, ptr noundef nonnull %flags, ptr noundef nonnull %gp_seq) #16
  %28 = load ptr, ptr @cur_ops, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %31 = load ptr, ptr @srcu_ctlp, align 4
  call void @srcutorture_get_gp_data(i32 noundef %30, ptr noundef %31, ptr noundef nonnull %flags, ptr noundef nonnull %gp_seq) #16
  %32 = ptrtoint ptr %gp_seq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gp_seq, align 4
  store i32 %33, ptr @start_gp_seq, align 4
  %34 = load ptr, ptr @cur_ops, align 4
  %name57 = getelementptr inbounds %struct.rcu_torture_ops, ptr %34, i32 0, i32 29
  %35 = ptrtoint ptr %name57 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name57, align 4
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %36, i32 noundef %33, i32 noundef %38) #19
  store volatile ptr @rcu_torture_freelist, ptr @rcu_torture_freelist, align 4
  store ptr @rcu_torture_freelist, ptr getelementptr inbounds (%struct.list_head, ptr @rcu_torture_freelist, i32 0, i32 1), align 4
  br label %for.body61

for.body61:                                       ; preds = %list_add_tail.exit, %if.end51
  %i.21709 = phi i32 [ 0, %if.end51 ], [ %inc65, %list_add_tail.exit ]
  %rtort_mbtest = getelementptr [100 x %struct.rcu_torture], ptr @rcu_tortures, i32 0, i32 %i.21709, i32 3
  %39 = ptrtoint ptr %rtort_mbtest to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %rtort_mbtest, align 4
  %rtort_free = getelementptr [100 x %struct.rcu_torture], ptr @rcu_tortures, i32 0, i32 %i.21709, i32 2
  %40 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @rcu_torture_freelist, i32 0, i32 1), align 4
  %call.i.i1526 = call zeroext i1 @__list_add_valid(ptr noundef %rtort_free, ptr noundef %40, ptr noundef nonnull @rcu_torture_freelist) #16
  br i1 %call.i.i1526, label %if.end.i.i, label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body61
  store ptr %rtort_free, ptr getelementptr inbounds (%struct.list_head, ptr @rcu_torture_freelist, i32 0, i32 1), align 4
  %41 = ptrtoint ptr %rtort_free to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @rcu_torture_freelist, ptr %rtort_free, align 4
  %prev3.i.i = getelementptr [100 x %struct.rcu_torture], ptr @rcu_tortures, i32 0, i32 %i.21709, i32 2, i32 1
  %42 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %prev3.i.i, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %rtort_free, ptr %40, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body61
  %inc65 = add nuw nsw i32 %i.21709, 1
  %exitcond1730.not = icmp eq i32 %inc65, 100
  br i1 %exitcond1730.not, label %for.end66, label %for.body61

for.end66:                                        ; preds = %list_add_tail.exit
  store ptr null, ptr @rcu_torture_current, align 4
  store i32 0, ptr @rcu_torture_current_version, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_torture_alloc, i32 noundef 4) #16
  store volatile i32 0, ptr @n_rcu_torture_alloc, align 4
  %call.i.i1519 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_torture_alloc_fail, i32 noundef 4) #16
  store volatile i32 0, ptr @n_rcu_torture_alloc_fail, align 4
  %call.i.i1520 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_torture_free, i32 noundef 4) #16
  store volatile i32 0, ptr @n_rcu_torture_free, align 4
  %call.i.i1521 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_torture_mberror, i32 noundef 4) #16
  store volatile i32 0, ptr @n_rcu_torture_mberror, align 4
  %call.i.i1522 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_torture_mbchk_fail, i32 noundef 4) #16
  store volatile i32 0, ptr @n_rcu_torture_mbchk_fail, align 4
  %call.i.i1523 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_torture_mbchk_tries, i32 noundef 4) #16
  store volatile i32 0, ptr @n_rcu_torture_mbchk_tries, align 4
  %call.i.i1524 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_torture_error, i32 noundef 4) #16
  store volatile i32 0, ptr @n_rcu_torture_error, align 4
  store i32 0, ptr @n_rcu_torture_barrier_error, align 4
  store i32 0, ptr @n_rcu_torture_boost_ktrerror, align 4
  store i32 0, ptr @n_rcu_torture_boost_failure, align 4
  store i32 0, ptr @n_rcu_torture_boosts, align 4
  br label %for.body69

for.cond74.preheader:                             ; preds = %for.body69
  %call751713 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %44 = load i32, ptr @nr_cpu_ids, align 4
  %cmp761714 = icmp ult i32 %call751713, %44
  br i1 %cmp761714, label %for.cond78.preheader, label %for.end101

for.body69:                                       ; preds = %for.body69, %for.end66
  %i.31711 = phi i32 [ 0, %for.end66 ], [ %inc72, %for.body69 ]
  %arrayidx70 = getelementptr [11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 %i.31711
  %call.i.i1525 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx70, i32 noundef 4) #16
  %45 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 0, ptr %arrayidx70, align 4
  %inc72 = add nuw nsw i32 %i.31711, 1
  %exitcond1731.not = icmp eq i32 %inc72, 11
  br i1 %exitcond1731.not, label %for.cond74.preheader, label %for.body69

for.cond74.loopexit:                              ; preds = %do.body81
  %call75 = call i32 @cpumask_next(i32 noundef %call751715, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %46 = load i32, ptr @nr_cpu_ids, align 4
  %cmp76 = icmp ult i32 %call75, %46
  br i1 %cmp76, label %for.cond78.preheader, label %for.end101

for.cond78.preheader:                             ; preds = %for.cond74.loopexit, %for.cond74.preheader
  %call751715 = phi i32 [ %call75, %for.cond74.loopexit ], [ %call751713, %for.cond74.preheader ]
  %arrayidx86 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call751715
  br label %do.body81

do.body81:                                        ; preds = %do.body81, %for.cond78.preheader
  %i.41712 = phi i32 [ 0, %for.cond78.preheader ], [ %inc99, %do.body81 ]
  %47 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx86, align 4
  %add = add i32 %48, ptrtoint (ptr @rcu_torture_count to i32)
  %49 = inttoptr i32 %add to ptr
  %arrayidx87 = getelementptr [11 x i32], ptr %49, i32 0, i32 %i.41712
  %50 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %arrayidx87, align 4
  %51 = load i32, ptr %arrayidx86, align 4
  %add96 = add i32 %51, ptrtoint (ptr @rcu_torture_batch to i32)
  %52 = inttoptr i32 %add96 to ptr
  %arrayidx97 = getelementptr [11 x i32], ptr %52, i32 0, i32 %i.41712
  %53 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx97, align 4
  %inc99 = add nuw nsw i32 %i.41712, 1
  %exitcond1732.not = icmp eq i32 %inc99, 11
  br i1 %exitcond1732.not, label %for.cond74.loopexit, label %do.body81

for.end101:                                       ; preds = %for.cond74.loopexit, %for.cond74.preheader
  store i32 0, ptr @err_segs_recorded, align 4
  store i32 0, ptr @rt_read_nsegs, align 4
  %54 = load i8, ptr @gp_cond, align 1, !range !1244
  %tobool.not.i = icmp eq i8 %54, 0
  %55 = load i8, ptr @gp_exp, align 1, !range !1244
  %56 = load i8, ptr @gp_normal, align 1, !range !1244
  %tobool3.not.i = icmp ne i8 %56, 0
  %57 = load i8, ptr @gp_poll, align 1, !range !1244
  %tobool5.not.i = icmp ne i8 %57, 0
  %58 = load i8, ptr @gp_sync, align 1, !range !1244
  %tobool7.not.i = icmp ne i8 %58, 0
  %extract.t157.i = icmp ne i8 %55, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %land.lhs.true18.i.thread

land.lhs.true.i:                                  ; preds = %for.end101
  %tobool1.not.i = icmp eq i8 %55, 0
  br i1 %tobool1.not.i, label %land.lhs.true11.i, label %land.lhs.true38.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %brmerge.i = select i1 %tobool3.not.i, i1 true, i1 %tobool5.not.i
  %brmerge216.i = select i1 %brmerge.i, i1 true, i1 %tobool7.not.i
  %extract.t147.mux.i = select i1 %brmerge.i, i1 %tobool5.not.i, i1 false
  br i1 %brmerge216.i, label %if.else48.i, label %land.lhs.true18.i

land.lhs.true18.i:                                ; preds = %land.lhs.true11.i
  %59 = load ptr, ptr @cur_ops, align 4
  %get_gp_state.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %get_gp_state.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %get_gp_state.i, align 4
  %tobool19.not.i = icmp eq ptr %61, null
  br i1 %tobool19.not.i, label %land.lhs.true38.i, label %land.lhs.true20.i

land.lhs.true18.i.thread:                         ; preds = %for.end101
  %62 = load ptr, ptr @cur_ops, align 4
  %get_gp_state.i1649 = getelementptr inbounds %struct.rcu_torture_ops, ptr %62, i32 0, i32 12
  %63 = ptrtoint ptr %get_gp_state.i1649 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %get_gp_state.i1649, align 4
  %tobool19.not.i1650 = icmp eq ptr %64, null
  br i1 %tobool19.not.i1650, label %if.else.i.thread1667, label %land.lhs.true20.i.thread

if.else.i.thread1667:                             ; preds = %land.lhs.true18.i.thread
  %call34.i1699 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.86) #19
  br i1 %extract.t157.i, label %land.lhs.true38.i, label %if.else48.i

land.lhs.true20.i:                                ; preds = %land.lhs.true18.i
  %cond_sync.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %59, i32 0, i32 15
  %65 = ptrtoint ptr %cond_sync.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cond_sync.i, align 4
  %tobool21.not.i = icmp eq ptr %66, null
  br i1 %tobool21.not.i, label %land.lhs.true38.i, label %if.then22.i

land.lhs.true20.i.thread:                         ; preds = %land.lhs.true18.i.thread
  %cond_sync.i1676 = getelementptr inbounds %struct.rcu_torture_ops, ptr %62, i32 0, i32 15
  %67 = ptrtoint ptr %cond_sync.i1676 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cond_sync.i1676, align 4
  %tobool21.not.i1677 = icmp eq ptr %68, null
  br i1 %tobool21.not.i1677, label %lor.lhs.false.i, label %if.then22.i

if.then22.i:                                      ; preds = %land.lhs.true20.i.thread, %land.lhs.true20.i
  %gp_exp1.0.off0183.i16511684 = phi i1 [ %extract.t157.i, %land.lhs.true20.i.thread ], [ true, %land.lhs.true20.i ]
  %gp_normal1.0.off0180.i16561683 = phi i1 [ %tobool3.not.i, %land.lhs.true20.i.thread ], [ true, %land.lhs.true20.i ]
  %gp_poll1.0.off0177.i16601681 = phi i1 [ %tobool5.not.i, %land.lhs.true20.i.thread ], [ true, %land.lhs.true20.i ]
  %gp_sync1.0.off0174.i16641679 = phi i1 [ %tobool7.not.i, %land.lhs.true20.i.thread ], [ true, %land.lhs.true20.i ]
  %69 = load i32, ptr @nsynctypes, align 4
  %inc.i = add i32 %69, 1
  store i32 %inc.i, ptr @nsynctypes, align 4
  %arrayidx.i = getelementptr [5 x i32], ptr @synctype, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 5, ptr %arrayidx.i, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86) #19
  br i1 %gp_exp1.0.off0183.i16511684, label %land.lhs.true38.i, label %if.else48.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true20.i.thread
  %71 = ptrtoint ptr %cond_sync.i1676 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cond_sync.i1676, align 4
  %tobool28.not.i = icmp eq ptr %72, null
  br i1 %tobool28.not.i, label %do.end32.i, label %if.end36.i

do.end32.i:                                       ; preds = %lor.lhs.false.i
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.86) #19
  br i1 %extract.t157.i, label %land.lhs.true38.i, label %if.else48.i

if.end36.i:                                       ; preds = %lor.lhs.false.i
  br i1 %extract.t157.i, label %land.lhs.true38.i, label %if.else48.i

land.lhs.true38.i:                                ; preds = %if.end36.i, %do.end32.i, %if.then22.i, %land.lhs.true20.i, %if.else.i.thread1667, %land.lhs.true18.i, %land.lhs.true.i
  %gp_sync1.0.off0172206.i = phi i1 [ %tobool7.not.i, %do.end32.i ], [ %tobool7.not.i, %if.end36.i ], [ %gp_sync1.0.off0174.i16641679, %if.then22.i ], [ %tobool7.not.i, %land.lhs.true.i ], [ %tobool7.not.i, %if.else.i.thread1667 ], [ true, %land.lhs.true18.i ], [ true, %land.lhs.true20.i ]
  %gp_poll1.0.off0175203.i = phi i1 [ %tobool5.not.i, %do.end32.i ], [ %tobool5.not.i, %if.end36.i ], [ %gp_poll1.0.off0177.i16601681, %if.then22.i ], [ %tobool5.not.i, %land.lhs.true.i ], [ %tobool5.not.i, %if.else.i.thread1667 ], [ true, %land.lhs.true18.i ], [ true, %land.lhs.true20.i ]
  %gp_normal1.0.off0178200.i = phi i1 [ %tobool3.not.i, %do.end32.i ], [ %tobool3.not.i, %if.end36.i ], [ %gp_normal1.0.off0180.i16561683, %if.then22.i ], [ %tobool3.not.i, %land.lhs.true.i ], [ %tobool3.not.i, %if.else.i.thread1667 ], [ true, %land.lhs.true18.i ], [ true, %land.lhs.true20.i ]
  %73 = load ptr, ptr @cur_ops, align 4
  %exp_sync.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %73, i32 0, i32 11
  %74 = ptrtoint ptr %exp_sync.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %exp_sync.i, align 4
  %tobool39.not.i = icmp eq ptr %75, null
  br i1 %tobool39.not.i, label %if.else48.i, label %if.then40.i

if.then40.i:                                      ; preds = %land.lhs.true38.i
  %76 = load i32, ptr @nsynctypes, align 4
  %inc41.i = add i32 %76, 1
  store i32 %inc41.i, ptr @nsynctypes, align 4
  %arrayidx42.i = getelementptr [5 x i32], ptr @synctype, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4, ptr %arrayidx42.i, align 4
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.86) #19
  br i1 %gp_normal1.0.off0178200.i, label %land.lhs.true62.i, label %if.else72.i

if.else48.i:                                      ; preds = %land.lhs.true38.i, %if.end36.i, %do.end32.i, %if.then22.i, %if.else.i.thread1667, %land.lhs.true11.i
  %gp_sync1.0.off0172205.i = phi i1 [ %tobool7.not.i, %do.end32.i ], [ %gp_sync1.0.off0172206.i, %land.lhs.true38.i ], [ %tobool7.not.i, %if.end36.i ], [ %gp_sync1.0.off0174.i16641679, %if.then22.i ], [ %tobool7.not.i, %land.lhs.true11.i ], [ %tobool7.not.i, %if.else.i.thread1667 ]
  %gp_poll1.0.off0175202.i = phi i1 [ %tobool5.not.i, %do.end32.i ], [ %gp_poll1.0.off0175203.i, %land.lhs.true38.i ], [ %tobool5.not.i, %if.end36.i ], [ %gp_poll1.0.off0177.i16601681, %if.then22.i ], [ %extract.t147.mux.i, %land.lhs.true11.i ], [ %tobool5.not.i, %if.else.i.thread1667 ]
  %gp_normal1.0.off0178199.i = phi i1 [ %tobool3.not.i, %do.end32.i ], [ %gp_normal1.0.off0178200.i, %land.lhs.true38.i ], [ %tobool3.not.i, %if.end36.i ], [ %gp_normal1.0.off0180.i16561683, %if.then22.i ], [ %tobool3.not.i, %land.lhs.true11.i ], [ %tobool3.not.i, %if.else.i.thread1667 ]
  %78 = load i8, ptr @gp_exp, align 1, !range !1244
  %tobool49.not.i = icmp eq i8 %78, 0
  br i1 %tobool49.not.i, label %if.end60.i, label %land.lhs.true50.i

land.lhs.true50.i:                                ; preds = %if.else48.i
  %79 = load ptr, ptr @cur_ops, align 4
  %exp_sync51.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %79, i32 0, i32 11
  %80 = ptrtoint ptr %exp_sync51.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %exp_sync51.i, align 4
  %tobool52.not.i = icmp eq ptr %81, null
  br i1 %tobool52.not.i, label %do.end56.i, label %if.end60.i

do.end56.i:                                       ; preds = %land.lhs.true50.i
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.86) #19
  br i1 %gp_normal1.0.off0178199.i, label %land.lhs.true62.i, label %if.else72.i

if.end60.i:                                       ; preds = %land.lhs.true50.i, %if.else48.i
  br i1 %gp_normal1.0.off0178199.i, label %land.lhs.true62.i, label %if.else72.i

land.lhs.true62.i:                                ; preds = %if.end60.i, %do.end56.i, %if.then40.i
  %gp_poll1.0.off0175201212.i = phi i1 [ %gp_poll1.0.off0175202.i, %do.end56.i ], [ %gp_poll1.0.off0175202.i, %if.end60.i ], [ %gp_poll1.0.off0175203.i, %if.then40.i ]
  %gp_sync1.0.off0172204209.i = phi i1 [ %gp_sync1.0.off0172205.i, %do.end56.i ], [ %gp_sync1.0.off0172205.i, %if.end60.i ], [ %gp_sync1.0.off0172206.i, %if.then40.i ]
  %82 = load ptr, ptr @cur_ops, align 4
  %deferred_free.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %82, i32 0, i32 9
  %83 = ptrtoint ptr %deferred_free.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %deferred_free.i, align 4
  %tobool63.not.i = icmp eq ptr %84, null
  br i1 %tobool63.not.i, label %if.else72.i, label %if.then64.i

if.then64.i:                                      ; preds = %land.lhs.true62.i
  %85 = load i32, ptr @nsynctypes, align 4
  %inc65.i = add i32 %85, 1
  store i32 %inc65.i, ptr @nsynctypes, align 4
  %arrayidx66.i = getelementptr [5 x i32], ptr @synctype, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 3, ptr %arrayidx66.i, align 4
  %call71.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.86) #19
  br i1 %gp_poll1.0.off0175201212.i, label %land.lhs.true86.i, label %if.else98.i

if.else72.i:                                      ; preds = %land.lhs.true62.i, %if.end60.i, %do.end56.i, %if.then40.i
  %gp_poll1.0.off0175201211.i = phi i1 [ %gp_poll1.0.off0175202.i, %do.end56.i ], [ %gp_poll1.0.off0175201212.i, %land.lhs.true62.i ], [ %gp_poll1.0.off0175202.i, %if.end60.i ], [ %gp_poll1.0.off0175203.i, %if.then40.i ]
  %gp_sync1.0.off0172204208.i = phi i1 [ %gp_sync1.0.off0172205.i, %do.end56.i ], [ %gp_sync1.0.off0172204209.i, %land.lhs.true62.i ], [ %gp_sync1.0.off0172205.i, %if.end60.i ], [ %gp_sync1.0.off0172206.i, %if.then40.i ]
  %87 = load i8, ptr @gp_normal, align 1, !range !1244
  %tobool73.not.i = icmp eq i8 %87, 0
  br i1 %tobool73.not.i, label %if.end84.i, label %land.lhs.true74.i

land.lhs.true74.i:                                ; preds = %if.else72.i
  %88 = load ptr, ptr @cur_ops, align 4
  %deferred_free75.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %88, i32 0, i32 9
  %89 = ptrtoint ptr %deferred_free75.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %deferred_free75.i, align 4
  %tobool76.not.i = icmp eq ptr %90, null
  br i1 %tobool76.not.i, label %do.end80.i, label %if.end84.i

do.end80.i:                                       ; preds = %land.lhs.true74.i
  %call82.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.86) #19
  br i1 %gp_poll1.0.off0175201211.i, label %land.lhs.true86.i, label %if.else98.i

if.end84.i:                                       ; preds = %land.lhs.true74.i, %if.else72.i
  br i1 %gp_poll1.0.off0175201211.i, label %land.lhs.true86.i, label %if.else98.i

land.lhs.true86.i:                                ; preds = %if.end84.i, %do.end80.i, %if.then64.i
  %gp_sync1.0.off0172204207215.i = phi i1 [ %gp_sync1.0.off0172204208.i, %do.end80.i ], [ %gp_sync1.0.off0172204208.i, %if.end84.i ], [ %gp_sync1.0.off0172204209.i, %if.then64.i ]
  %91 = load ptr, ptr @cur_ops, align 4
  %start_gp_poll.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %91, i32 0, i32 13
  %92 = ptrtoint ptr %start_gp_poll.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %start_gp_poll.i, align 4
  %tobool87.not.i = icmp eq ptr %93, null
  br i1 %tobool87.not.i, label %if.else98.i, label %land.lhs.true88.i

land.lhs.true88.i:                                ; preds = %land.lhs.true86.i
  %poll_gp_state.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %91, i32 0, i32 14
  %94 = ptrtoint ptr %poll_gp_state.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %poll_gp_state.i, align 4
  %tobool89.not.i = icmp eq ptr %95, null
  br i1 %tobool89.not.i, label %if.else98.i, label %if.then90.i

if.then90.i:                                      ; preds = %land.lhs.true88.i
  %96 = load i32, ptr @nsynctypes, align 4
  %inc91.i = add i32 %96, 1
  store i32 %inc91.i, ptr @nsynctypes, align 4
  %arrayidx92.i = getelementptr [5 x i32], ptr @synctype, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 7, ptr %arrayidx92.i, align 4
  %call97.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.86) #19
  br i1 %gp_sync1.0.off0172204207215.i, label %land.lhs.true115.i, label %if.else125.i

if.else98.i:                                      ; preds = %land.lhs.true88.i, %land.lhs.true86.i, %if.end84.i, %do.end80.i, %if.then64.i
  %gp_sync1.0.off0172204207214.i = phi i1 [ %gp_sync1.0.off0172204208.i, %do.end80.i ], [ %gp_sync1.0.off0172204207215.i, %land.lhs.true88.i ], [ %gp_sync1.0.off0172204207215.i, %land.lhs.true86.i ], [ %gp_sync1.0.off0172204208.i, %if.end84.i ], [ %gp_sync1.0.off0172204209.i, %if.then64.i ]
  %98 = load i8, ptr @gp_poll, align 1, !range !1244
  %tobool99.not.i = icmp eq i8 %98, 0
  br i1 %tobool99.not.i, label %if.end113.i, label %land.lhs.true100.i

land.lhs.true100.i:                               ; preds = %if.else98.i
  %99 = load ptr, ptr @cur_ops, align 4
  %start_gp_poll101.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %99, i32 0, i32 13
  %100 = ptrtoint ptr %start_gp_poll101.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %start_gp_poll101.i, align 4
  %tobool102.not.i = icmp eq ptr %101, null
  br i1 %tobool102.not.i, label %do.end109.i, label %lor.lhs.false103.i

lor.lhs.false103.i:                               ; preds = %land.lhs.true100.i
  %poll_gp_state104.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %99, i32 0, i32 14
  %102 = ptrtoint ptr %poll_gp_state104.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %poll_gp_state104.i, align 4
  %tobool105.not.i = icmp eq ptr %103, null
  br i1 %tobool105.not.i, label %do.end109.i, label %if.end113.i

do.end109.i:                                      ; preds = %lor.lhs.false103.i, %land.lhs.true100.i
  %call111.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.86) #19
  br i1 %gp_sync1.0.off0172204207214.i, label %land.lhs.true115.i, label %if.else125.i

if.end113.i:                                      ; preds = %lor.lhs.false103.i, %if.else98.i
  br i1 %gp_sync1.0.off0172204207214.i, label %land.lhs.true115.i, label %if.else125.i

land.lhs.true115.i:                               ; preds = %if.end113.i, %do.end109.i, %if.then90.i
  %104 = load ptr, ptr @cur_ops, align 4
  %sync.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %104, i32 0, i32 10
  %105 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sync.i, align 4
  %tobool116.not.i = icmp eq ptr %106, null
  br i1 %tobool116.not.i, label %if.else125.i, label %if.then117.i

if.then117.i:                                     ; preds = %land.lhs.true115.i
  %107 = load i32, ptr @nsynctypes, align 4
  %inc118.i = add i32 %107, 1
  store i32 %inc118.i, ptr @nsynctypes, align 4
  %arrayidx119.i = getelementptr [5 x i32], ptr @synctype, i32 0, i32 %107
  %108 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 9, ptr %arrayidx119.i, align 4
  br label %if.end137.sink.split.i

if.else125.i:                                     ; preds = %land.lhs.true115.i, %if.end113.i, %do.end109.i, %if.then90.i
  %109 = load i8, ptr @gp_sync, align 1, !range !1244
  %tobool126.not.i = icmp eq i8 %109, 0
  br i1 %tobool126.not.i, label %rcu_torture_write_types.exit, label %land.lhs.true127.i

land.lhs.true127.i:                               ; preds = %if.else125.i
  %110 = load ptr, ptr @cur_ops, align 4
  %sync128.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %110, i32 0, i32 10
  %111 = ptrtoint ptr %sync128.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sync128.i, align 4
  %tobool129.not.i = icmp eq ptr %112, null
  br i1 %tobool129.not.i, label %if.end137.sink.split.i, label %rcu_torture_write_types.exit

if.end137.sink.split.i:                           ; preds = %land.lhs.true127.i, %if.then117.i
  %.str.112.sink.i = phi ptr [ @.str.109, %if.then117.i ], [ @.str.112, %land.lhs.true127.i ]
  %call135.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.112.sink.i, ptr noundef nonnull @.str.86) #19
  br label %rcu_torture_write_types.exit

rcu_torture_write_types.exit:                     ; preds = %if.end137.sink.split.i, %land.lhs.true127.i, %if.else125.i
  %call102 = call i32 @_torture_create_kthread(ptr noundef nonnull @rcu_torture_writer, ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @writer_task) #16
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %land.rhs, label %if.end149.critedge

land.rhs:                                         ; preds = %rcu_torture_write_types.exit
  %.b1490 = load i1, ptr @rcu_torture_init.__already_done, align 1
  br i1 %.b1490, label %unwind, label %if.then111, !prof !1245

if.then111:                                       ; preds = %land.rhs
  store i1 true, ptr @rcu_torture_init.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3175, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %call102) #16
  br label %unwind

if.end149.critedge:                               ; preds = %rcu_torture_write_types.exit
  %113 = load i32, ptr @nfakewriters, align 4
  %cmp150 = icmp sgt i32 %113, 0
  br i1 %cmp150, label %if.then152, label %for.end235

if.then152:                                       ; preds = %if.end149.critedge
  %114 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %113, i32 4) #16
  %115 = extractvalue { i32, i1 } %114, 1
  br i1 %115, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !1246

kcalloc.exit.thread:                              ; preds = %if.then152
  store ptr null, ptr @fakewriter_tasks, align 4
  br label %do.end159

if.end7.i.i:                                      ; preds = %if.then152
  %116 = extractvalue { i32, i1 } %114, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %116, i32 noundef 3520) #21
  store ptr %call8.i.i, ptr @fakewriter_tasks, align 4
  %cmp154 = icmp eq ptr %call8.i.i, null
  br i1 %cmp154, label %do.end159, label %if.end163

do.end159:                                        ; preds = %if.end7.i.i, %kcalloc.exit.thread
  %117 = load ptr, ptr @torture_type, align 4
  %call161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %117, ptr noundef nonnull @.str.27) #19
  br label %unwind

if.end163:                                        ; preds = %if.end7.i.i
  %.pr = load i32, ptr @nfakewriters, align 4
  %cmp1651716 = icmp sgt i32 %.pr, 0
  br i1 %cmp1651716, label %for.body167, label %for.end235

for.cond164:                                      ; preds = %for.body167
  %inc234 = add nuw nsw i32 %i.51717, 1
  %118 = load i32, ptr @nfakewriters, align 4
  %cmp165 = icmp slt i32 %inc234, %118
  br i1 %cmp165, label %for.body167, label %for.end235

for.body167:                                      ; preds = %for.cond164, %if.end163
  %i.51717 = phi i32 [ %inc234, %for.cond164 ], [ 0, %if.end163 ]
  %119 = load ptr, ptr @fakewriter_tasks, align 4
  %arrayidx168 = getelementptr ptr, ptr %119, i32 %i.51717
  %call169 = call i32 @_torture_create_kthread(ptr noundef nonnull @rcu_torture_fakewriter, ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef %arrayidx168) #16
  %cmp172 = icmp slt i32 %call169, 0
  br i1 %cmp172, label %land.rhs181, label %for.cond164

land.rhs181:                                      ; preds = %for.body167
  %.b14601489 = load i1, ptr @rcu_torture_init.__already_done.31, align 1
  br i1 %.b14601489, label %unwind, label %if.then192, !prof !1245

if.then192:                                       ; preds = %land.rhs181
  store i1 true, ptr @rcu_torture_init.__already_done.31, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3190, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %call169) #16
  br label %unwind

for.end235:                                       ; preds = %for.cond164, %if.end163, %if.end149.critedge
  %120 = load i32, ptr @nrealreaders, align 4
  %121 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %120, i32 4) #16
  %122 = extractvalue { i32, i1 } %121, 1
  br i1 %122, label %kcalloc.exit1560, label %if.end7.i.i1558, !prof !1246

if.end7.i.i1558:                                  ; preds = %for.end235
  %123 = extractvalue { i32, i1 } %121, 0
  %call8.i.i1557 = call noalias align 128 ptr @__kmalloc(i32 noundef %123, i32 noundef 3520) #21
  br label %kcalloc.exit1560

kcalloc.exit1560:                                 ; preds = %if.end7.i.i1558, %for.end235
  %retval.0.i.i1559 = phi ptr [ %call8.i.i1557, %if.end7.i.i1558 ], [ null, %for.end235 ]
  store ptr %retval.0.i.i1559, ptr @reader_tasks, align 4
  %124 = load i32, ptr @nrealreaders, align 4
  %125 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %124, i32 128) #16
  %126 = extractvalue { i32, i1 } %125, 1
  br i1 %126, label %kcalloc.exit1593.thread, label %if.end7.i.i1591, !prof !1246

kcalloc.exit1593.thread:                          ; preds = %kcalloc.exit1560
  store ptr null, ptr @rcu_torture_reader_mbchk, align 4
  br label %do.end243

if.end7.i.i1591:                                  ; preds = %kcalloc.exit1560
  %127 = extractvalue { i32, i1 } %125, 0
  %call8.i.i1590 = call noalias align 128 ptr @__kmalloc(i32 noundef %127, i32 noundef 3520) #21
  store ptr %call8.i.i1590, ptr @rcu_torture_reader_mbchk, align 4
  %128 = load ptr, ptr @reader_tasks, align 4
  %tobool238.not = icmp eq ptr %128, null
  %tobool239.not = icmp eq ptr %call8.i.i1590, null
  %or.cond = select i1 %tobool238.not, i1 true, i1 %tobool239.not
  br i1 %or.cond, label %do.end243, label %for.cond247.preheader

for.cond247.preheader:                            ; preds = %if.end7.i.i1591
  %129 = load i32, ptr @nrealreaders, align 4
  %cmp2481718 = icmp sgt i32 %129, 0
  br i1 %cmp2481718, label %for.body250, label %for.end319

do.end243:                                        ; preds = %if.end7.i.i1591, %kcalloc.exit1593.thread
  %130 = load ptr, ptr @torture_type, align 4
  %call245 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %130, ptr noundef nonnull @.str.27) #19
  br label %unwind

for.cond247:                                      ; preds = %for.body250
  %inc318 = add nuw nsw i32 %i.61719, 1
  %131 = load i32, ptr @nrealreaders, align 4
  %cmp248 = icmp slt i32 %inc318, %131
  br i1 %cmp248, label %for.body250, label %for.end319

for.body250:                                      ; preds = %for.cond247, %for.cond247.preheader
  %i.61719 = phi i32 [ %inc318, %for.cond247 ], [ 0, %for.cond247.preheader ]
  %132 = load ptr, ptr @rcu_torture_reader_mbchk, align 4
  %rtc_chkrdr = getelementptr %struct.rcu_torture_reader_check, ptr %132, i32 %i.61719, i32 1
  %133 = ptrtoint ptr %rtc_chkrdr to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1, ptr %rtc_chkrdr, align 4
  %134 = inttoptr i32 %i.61719 to ptr
  %135 = load ptr, ptr @reader_tasks, align 4
  %arrayidx252 = getelementptr ptr, ptr %135, i32 %i.61719
  %call253 = call i32 @_torture_create_kthread(ptr noundef nonnull @rcu_torture_reader, ptr noundef %134, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef %arrayidx252) #16
  %cmp256 = icmp slt i32 %call253, 0
  br i1 %cmp256, label %land.rhs265, label %for.cond247

land.rhs265:                                      ; preds = %for.body250
  %.b14611488 = load i1, ptr @rcu_torture_init.__already_done.37, align 1
  br i1 %.b14611488, label %unwind, label %if.then276, !prof !1245

if.then276:                                       ; preds = %land.rhs265
  store i1 true, ptr @rcu_torture_init.__already_done.37, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3206, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %call253) #16
  br label %unwind

for.end319:                                       ; preds = %for.cond247, %for.cond247.preheader
  %136 = load i32, ptr @nocbs_nthreads, align 4
  store i32 %136, ptr @nrealnocbers, align 4
  %cmp321 = icmp slt i32 %136, 0
  br i1 %cmp321, label %do.end338, label %if.end354, !prof !1246

do.end338:                                        ; preds = %for.end319
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3210, i32 noundef 9, ptr noundef null) #16
  store i32 1, ptr @nrealnocbers, align 4
  br label %if.end354

if.end354:                                        ; preds = %do.end338, %for.end319
  %137 = load i32, ptr @nocbs_toggle, align 4
  %cmp356 = icmp slt i32 %137, 0
  br i1 %cmp356, label %do.end373, label %if.end389, !prof !1246

do.end373:                                        ; preds = %if.end354
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3212, i32 noundef 9, ptr noundef null) #16
  store i32 100, ptr @nocbs_toggle, align 4
  br label %if.end389

if.end389:                                        ; preds = %do.end373, %if.end354
  %138 = load i32, ptr @nrealnocbers, align 4
  %cmp390 = icmp sgt i32 %138, 0
  br i1 %cmp390, label %if.then392, label %if.end404.thread

if.then392:                                       ; preds = %if.end389
  %139 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %138, i32 4) #16
  %140 = extractvalue { i32, i1 } %139, 1
  br i1 %140, label %kcalloc.exit1626.thread, label %if.end7.i.i1624, !prof !1246

kcalloc.exit1626.thread:                          ; preds = %if.then392
  store ptr null, ptr @nocb_tasks, align 4
  br label %do.end399

if.end7.i.i1624:                                  ; preds = %if.then392
  %141 = extractvalue { i32, i1 } %139, 0
  %call8.i.i1623 = call noalias align 128 ptr @__kmalloc(i32 noundef %141, i32 noundef 3520) #21
  store ptr %call8.i.i1623, ptr @nocb_tasks, align 4
  %cmp394 = icmp eq ptr %call8.i.i1623, null
  br i1 %cmp394, label %do.end399, label %if.end404

do.end399:                                        ; preds = %if.end7.i.i1624, %kcalloc.exit1626.thread
  %142 = load ptr, ptr @torture_type, align 4
  %call401 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %142, ptr noundef nonnull @.str.27) #19
  br label %unwind

if.end404.thread:                                 ; preds = %if.end389
  store ptr null, ptr @nocb_tasks, align 4
  br label %for.end476

if.end404:                                        ; preds = %if.end7.i.i1624
  %.pr1734 = load i32, ptr @nrealnocbers, align 4
  %cmp4061720 = icmp sgt i32 %.pr1734, 0
  br i1 %cmp4061720, label %for.body408, label %for.end476

for.cond405:                                      ; preds = %for.body408
  %inc475 = add nuw nsw i32 %i.71721, 1
  %143 = load i32, ptr @nrealnocbers, align 4
  %cmp406 = icmp slt i32 %inc475, %143
  br i1 %cmp406, label %for.body408, label %for.end476

for.body408:                                      ; preds = %for.cond405, %if.end404
  %i.71721 = phi i32 [ %inc475, %for.cond405 ], [ 0, %if.end404 ]
  %144 = load ptr, ptr @nocb_tasks, align 4
  %arrayidx409 = getelementptr ptr, ptr %144, i32 %i.71721
  %call410 = call i32 @_torture_create_kthread(ptr noundef nonnull @rcu_nocb_toggle, ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef %arrayidx409) #16
  %cmp413 = icmp slt i32 %call410, 0
  br i1 %cmp413, label %land.rhs422, label %for.cond405

land.rhs422:                                      ; preds = %for.body408
  %.b14621487 = load i1, ptr @rcu_torture_init.__already_done.43, align 1
  br i1 %.b14621487, label %unwind, label %if.then433, !prof !1245

if.then433:                                       ; preds = %land.rhs422
  store i1 true, ptr @rcu_torture_init.__already_done.43, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3226, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %call410) #16
  br label %unwind

for.end476:                                       ; preds = %for.cond405, %if.end404, %if.end404.thread
  %145 = load i32, ptr @stat_interval, align 4
  %cmp477 = icmp sgt i32 %145, 0
  br i1 %cmp477, label %if.then479, label %if.end544

if.then479:                                       ; preds = %for.end476
  %call480 = call i32 @_torture_create_kthread(ptr noundef nonnull @rcu_torture_stats, ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @stats_task) #16
  %cmp483 = icmp slt i32 %call480, 0
  br i1 %cmp483, label %land.rhs492, label %if.end544

land.rhs492:                                      ; preds = %if.then479
  %.b14631486 = load i1, ptr @rcu_torture_init.__already_done.47, align 1
  br i1 %.b14631486, label %unwind, label %if.then503, !prof !1245

if.then503:                                       ; preds = %land.rhs492
  store i1 true, ptr @rcu_torture_init.__already_done.47, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3232, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %call480) #16
  br label %unwind

if.end544:                                        ; preds = %if.then479, %for.end476
  %146 = load i8, ptr @test_no_idle_hz, align 1, !range !1244
  %tobool545.not = icmp eq i8 %146, 0
  br i1 %tobool545.not, label %if.end615, label %land.lhs.true547

land.lhs.true547:                                 ; preds = %if.end544
  %147 = load i32, ptr @shuffle_interval, align 4
  %cmp548 = icmp sgt i32 %147, 0
  br i1 %cmp548, label %if.then550, label %if.end615

if.then550:                                       ; preds = %land.lhs.true547
  %mul = mul i32 %147, 100
  %call551 = call i32 @torture_shuffle_init(i32 noundef %mul) #16
  %cmp554 = icmp slt i32 %call551, 0
  br i1 %cmp554, label %land.rhs563, label %if.end615

land.rhs563:                                      ; preds = %if.then550
  %.b14641485 = load i1, ptr @rcu_torture_init.__already_done.48, align 1
  br i1 %.b14641485, label %unwind, label %if.then574, !prof !1245

if.then574:                                       ; preds = %land.rhs563
  store i1 true, ptr @rcu_torture_init.__already_done.48, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3237, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %call551) #16
  br label %unwind

if.end615:                                        ; preds = %if.then550, %land.lhs.true547, %if.end544
  %148 = load i32, ptr @stutter, align 4
  %cmp616 = icmp slt i32 %148, 0
  br i1 %cmp616, label %if.end619.thread, label %if.end619

if.end619.thread:                                 ; preds = %if.end615
  store i32 0, ptr @stutter, align 4
  br label %if.end691

if.end619:                                        ; preds = %if.end615
  %tobool620.not = icmp eq i32 %148, 0
  br i1 %tobool620.not, label %if.end691, label %if.then621

if.then621:                                       ; preds = %if.end619
  %149 = load ptr, ptr @cur_ops, align 4
  %stall_dur = getelementptr inbounds %struct.rcu_torture_ops, ptr %149, i32 0, i32 22
  %150 = ptrtoint ptr %stall_dur to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %stall_dur, align 4
  %tobool622.not = icmp eq ptr %151, null
  br i1 %tobool622.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then621
  %call624 = call i32 %151() #16
  br label %cond.end

cond.false:                                       ; preds = %if.then621
  %mul625 = mul i32 %148, 100
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call624, %cond.true ], [ %mul625, %cond.false ]
  %152 = load i32, ptr @stutter, align 4
  %mul626 = mul i32 %152, 100
  %call627 = call i32 @torture_stutter_init(i32 noundef %mul626, i32 noundef %cond) #16
  %cmp630 = icmp slt i32 %call627, 0
  br i1 %cmp630, label %land.rhs639, label %if.end691

land.rhs639:                                      ; preds = %cond.end
  %.b14651484 = load i1, ptr @rcu_torture_init.__already_done.49, align 1
  br i1 %.b14651484, label %unwind, label %if.then650, !prof !1245

if.then650:                                       ; preds = %land.rhs639
  store i1 true, ptr @rcu_torture_init.__already_done.49, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3247, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %call627) #16
  br label %unwind

if.end691:                                        ; preds = %cond.end, %if.end619, %if.end619.thread
  %153 = load i32, ptr @fqs_duration, align 4
  %cmp692 = icmp slt i32 %153, 0
  br i1 %cmp692, label %if.end695.thread, label %if.end695

if.end695.thread:                                 ; preds = %if.end691
  store i32 0, ptr @fqs_duration, align 4
  br label %if.end762

if.end695:                                        ; preds = %if.end691
  %tobool696.not = icmp eq i32 %153, 0
  br i1 %tobool696.not, label %if.end762, label %if.then697

if.then697:                                       ; preds = %if.end695
  %call698 = call i32 @_torture_create_kthread(ptr noundef nonnull @rcu_torture_fqs, ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull @fqs_task) #16
  %cmp701 = icmp slt i32 %call698, 0
  br i1 %cmp701, label %land.rhs710, label %if.end762

land.rhs710:                                      ; preds = %if.then697
  %.b14661483 = load i1, ptr @rcu_torture_init.__already_done.53, align 1
  br i1 %.b14661483, label %unwind, label %if.then721, !prof !1245

if.then721:                                       ; preds = %land.rhs710
  store i1 true, ptr @rcu_torture_init.__already_done.53, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3256, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %call698) #16
  br label %unwind

if.end762:                                        ; preds = %if.then697, %if.end695, %if.end695.thread
  %154 = load i32, ptr @test_boost_interval, align 4
  %cmp763 = icmp slt i32 %154, 1
  br i1 %cmp763, label %if.then765, label %if.end766

if.then765:                                       ; preds = %if.end762
  store i32 1, ptr @test_boost_interval, align 4
  br label %if.end766

if.end766:                                        ; preds = %if.then765, %if.end762
  %155 = load i32, ptr @test_boost_duration, align 4
  %cmp767 = icmp slt i32 %155, 2
  br i1 %cmp767, label %if.then769, label %if.end770

if.then769:                                       ; preds = %if.end766
  store i32 2, ptr @test_boost_duration, align 4
  br label %if.end770

if.end770:                                        ; preds = %if.then769, %if.end766
  %call771 = call fastcc zeroext i1 @rcu_torture_can_boost()
  br i1 %call771, label %if.then772, label %if.end913

if.then772:                                       ; preds = %if.end770
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %156 = load volatile i32, ptr @jiffies, align 128
  %157 = load i32, ptr @test_boost_interval, align 4
  %mul773 = mul i32 %157, 100
  %add774 = add i32 %mul773, %156
  store i32 %add774, ptr @boost_starttime, align 4
  %call.i1627 = call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.54, i1 noundef zeroext true, ptr noundef nonnull @rcutorture_booster_init, ptr noundef nonnull @rcutorture_booster_cleanup, i1 noundef zeroext false) #16
  store i32 %call.i1627, ptr @rcutor_hp, align 4
  %cmp778 = icmp slt i32 %call.i1627, 0
  br i1 %cmp778, label %land.rhs787, label %for.cond839.preheader

for.cond839.preheader:                            ; preds = %if.then772
  %call8401722 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %158 = load i32, ptr @nr_cpu_ids, align 4
  %cmp8411723 = icmp ult i32 %call8401722, %158
  br i1 %cmp8411723, label %for.body843, label %if.end913

land.rhs787:                                      ; preds = %if.then772
  %.b14671482 = load i1, ptr @rcu_torture_init.__already_done.55, align 1
  br i1 %.b14671482, label %unwind, label %if.then798, !prof !1245

if.then798:                                       ; preds = %land.rhs787
  store i1 true, ptr @rcu_torture_init.__already_done.55, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3271, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %call.i1627) #16
  br label %unwind

for.body843:                                      ; preds = %if.end903, %for.cond839.preheader
  %call8401724 = phi i32 [ %call840, %if.end903 ], [ %call8401722, %for.cond839.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sp) #16
  %159 = ptrtoint ptr %sp to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 -1, ptr %sp, align 4, !annotation !1247
  %arrayidx852 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call8401724
  %160 = ptrtoint ptr %arrayidx852 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx852, align 4
  %add853 = add i32 %161, ptrtoint (ptr @ksoftirqd to i32)
  %162 = inttoptr i32 %add853 to ptr
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 4
  %tobool855.not = icmp eq ptr %164, null
  br i1 %tobool855.not, label %land.rhs865, label %if.end903

land.rhs865:                                      ; preds = %for.body843
  %.b14681481 = load i1, ptr @rcu_torture_init.__already_done.56, align 1
  br i1 %.b14681481, label %if.end903, label %if.then876, !prof !1245

if.then876:                                       ; preds = %land.rhs865
  store i1 true, ptr @rcu_torture_init.__already_done.56, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3283, i32 noundef 9, ptr noundef null) #16
  br label %if.end903

if.end903:                                        ; preds = %if.then876, %land.rhs865, %for.body843
  %165 = ptrtoint ptr %sp to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 2, ptr %sp, align 4
  %call911 = call i32 @sched_setscheduler_nocheck(ptr noundef %164, i32 noundef 1, ptr noundef nonnull %sp) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sp) #16
  %call840 = call i32 @cpumask_next(i32 noundef %call8401724, ptr noundef nonnull @__cpu_online_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %166 = load i32, ptr @nr_cpu_ids, align 4
  %cmp841 = icmp ult i32 %call840, %166
  br i1 %cmp841, label %for.body843, label %if.end913

if.end913:                                        ; preds = %if.end903, %for.cond839.preheader, %if.end770
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %167 = load volatile i32, ptr @jiffies, align 128
  %168 = load i32, ptr @shutdown_secs, align 4
  %mul914 = mul i32 %168, 100
  %add915 = add i32 %mul914, %167
  store i32 %add915, ptr @shutdown_jiffies, align 4
  %call916 = call i32 @torture_shutdown_init(i32 noundef %168, ptr noundef nonnull @rcu_torture_cleanup) #16
  %cmp919 = icmp slt i32 %call916, 0
  br i1 %cmp919, label %land.rhs928, label %if.end979.critedge

land.rhs928:                                      ; preds = %if.end913
  %.b14691480 = load i1, ptr @rcu_torture_init.__already_done.57, align 1
  br i1 %.b14691480, label %unwind, label %if.then939, !prof !1245

if.then939:                                       ; preds = %land.rhs928
  store i1 true, ptr @rcu_torture_init.__already_done.57, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3291, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %call916) #16
  br label %unwind

if.end979.critedge:                               ; preds = %if.end913
  %169 = load i32, ptr @onoff_holdoff, align 4
  %mul980 = mul i32 %169, 100
  %170 = load i32, ptr @onoff_interval, align 4
  %call981 = call i32 @torture_onoff_init(i32 noundef %mul980, i32 noundef %170, ptr noundef nonnull @rcutorture_sync) #16
  %cmp984 = icmp slt i32 %call981, 0
  br i1 %cmp984, label %land.rhs993, label %if.end1044.critedge

land.rhs993:                                      ; preds = %if.end979.critedge
  %.b14701479 = load i1, ptr @rcu_torture_init.__already_done.58, align 1
  br i1 %.b14701479, label %unwind, label %if.then1004, !prof !1245

if.then1004:                                      ; preds = %land.rhs993
  store i1 true, ptr @rcu_torture_init.__already_done.58, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3295, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %call981) #16
  br label %unwind

if.end1044.critedge:                              ; preds = %if.end979.critedge
  %call1045 = call fastcc i32 @rcu_torture_stall_init() #22
  %cmp1048 = icmp slt i32 %call1045, 0
  br i1 %cmp1048, label %land.rhs1057, label %if.end1108.critedge

land.rhs1057:                                     ; preds = %if.end1044.critedge
  %.b14711478 = load i1, ptr @rcu_torture_init.__already_done.59, align 1
  br i1 %.b14711478, label %unwind, label %if.then1068, !prof !1245

if.then1068:                                      ; preds = %land.rhs1057
  store i1 true, ptr @rcu_torture_init.__already_done.59, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3298, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %call1045) #16
  br label %unwind

if.end1108.critedge:                              ; preds = %if.end1044.critedge
  %call1109 = call fastcc i32 @rcu_torture_fwd_prog_init() #22
  %cmp1112 = icmp slt i32 %call1109, 0
  br i1 %cmp1112, label %land.rhs1121, label %if.end1172.critedge

land.rhs1121:                                     ; preds = %if.end1108.critedge
  %.b14721477 = load i1, ptr @rcu_torture_init.__already_done.60, align 1
  br i1 %.b14721477, label %unwind, label %if.then1132, !prof !1245

if.then1132:                                      ; preds = %land.rhs1121
  store i1 true, ptr @rcu_torture_init.__already_done.60, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3301, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %call1109) #16
  br label %unwind

if.end1172.critedge:                              ; preds = %if.end1108.critedge
  %call1173 = call fastcc i32 @rcu_torture_barrier_init()
  %cmp1176 = icmp slt i32 %call1173, 0
  br i1 %cmp1176, label %land.rhs1185, label %if.end1236.critedge

land.rhs1185:                                     ; preds = %if.end1172.critedge
  %.b14731476 = load i1, ptr @rcu_torture_init.__already_done.61, align 1
  br i1 %.b14731476, label %unwind, label %if.then1196, !prof !1245

if.then1196:                                      ; preds = %land.rhs1185
  store i1 true, ptr @rcu_torture_init.__already_done.61, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3304, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %call1173) #16
  br label %unwind

if.end1236.critedge:                              ; preds = %if.end1172.critedge
  %call1237 = call fastcc i32 @rcu_torture_read_exit_init()
  %cmp1240 = icmp slt i32 %call1237, 0
  br i1 %cmp1240, label %land.rhs1249, label %if.end1300.critedge

land.rhs1249:                                     ; preds = %if.end1236.critedge
  %.b14741475 = load i1, ptr @rcu_torture_init.__already_done.62, align 1
  br i1 %.b14741475, label %unwind, label %if.then1260, !prof !1245

if.then1260:                                      ; preds = %land.rhs1249
  store i1 true, ptr @rcu_torture_init.__already_done.62, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3307, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %call1237) #16
  br label %unwind

if.end1300.critedge:                              ; preds = %if.end1236.critedge
  %171 = load i32, ptr @object_debug, align 4
  %tobool1301.not = icmp eq i32 %171, 0
  br i1 %tobool1301.not, label %if.end1303, label %if.then1302

if.then1302:                                      ; preds = %if.end1300.critedge
  call fastcc void @rcu_test_debug_objects()
  br label %if.end1303

if.end1303:                                       ; preds = %if.then1302, %if.end1300.critedge
  call void @torture_init_end() #16
  br label %cleanup1333

unwind:                                           ; preds = %if.then1260, %land.rhs1249, %if.then1196, %land.rhs1185, %if.then1132, %land.rhs1121, %if.then1068, %land.rhs1057, %if.then1004, %land.rhs993, %if.then939, %land.rhs928, %if.then798, %land.rhs787, %if.then721, %land.rhs710, %if.then650, %land.rhs639, %if.then574, %land.rhs563, %if.then503, %land.rhs492, %if.then433, %land.rhs422, %do.end399, %if.then276, %land.rhs265, %do.end243, %if.then192, %land.rhs181, %do.end159, %if.then111, %land.rhs, %do.end28
  %firsterr.0 = phi i32 [ -22, %do.end28 ], [ -12, %do.end159 ], [ -12, %do.end399 ], [ -12, %do.end243 ], [ %call102, %if.then111 ], [ %call169, %if.then192 ], [ %call253, %if.then276 ], [ %call410, %if.then433 ], [ %call480, %if.then503 ], [ %call551, %if.then574 ], [ %call698, %if.then721 ], [ %call.i1627, %if.then798 ], [ %call916, %if.then939 ], [ %call981, %if.then1004 ], [ %call1045, %if.then1068 ], [ %call1109, %if.then1132 ], [ %call1173, %if.then1196 ], [ %call1237, %if.then1260 ], [ %call102, %land.rhs ], [ %call169, %land.rhs181 ], [ %call253, %land.rhs265 ], [ %call410, %land.rhs422 ], [ %call480, %land.rhs492 ], [ %call551, %land.rhs563 ], [ %call698, %land.rhs710 ], [ %call.i1627, %land.rhs787 ], [ %call916, %land.rhs928 ], [ %call981, %land.rhs993 ], [ %call1045, %land.rhs1057 ], [ %call1109, %land.rhs1121 ], [ %call1173, %land.rhs1185 ], [ %call1237, %land.rhs1249 ], [ %call627, %if.then650 ], [ %call627, %land.rhs639 ]
  call void @torture_init_end() #16
  call void @rcu_torture_cleanup()
  %172 = load i32, ptr @shutdown_secs, align 4
  %tobool1304.not = icmp eq i32 %172, 0
  br i1 %tobool1304.not, label %cleanup1333, label %do.end1318

do.end1318:                                       ; preds = %unwind
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3318, i32 noundef 9, ptr noundef null) #16
  call void @kernel_power_off() #16
  br label %cleanup1333

cleanup1333:                                      ; preds = %do.end1318, %unwind, %if.end1303, %entry
  %retval.0 = phi i32 [ 0, %if.end1303 ], [ -16, %entry ], [ %firsterr.0, %do.end1318 ], [ %firsterr.0, %unwind ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gp_seq) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_torture_cleanup() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rhp.i = alloca ptr, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %flags = alloca i32, align 4
  %gp_seq = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #16
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gp_seq) #16
  %1 = ptrtoint ptr %gp_seq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %gp_seq, align 4
  %call = tail call zeroext i1 @torture_cleanup_begin() #16
  %2 = load ptr, ptr @cur_ops, align 4
  br i1 %call, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %cb_barrier = getelementptr inbounds %struct.rcu_torture_ops, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %cb_barrier to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cb_barrier, align 4
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %cleanup133, label %if.then1

if.then1:                                         ; preds = %if.then
  tail call void %4() #16
  br label %cleanup133

if.end3:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end3
  tail call void @torture_cleanup_end() #16
  br label %cleanup133

if.end5:                                          ; preds = %if.end3
  %gp_kthread_dbg = getelementptr inbounds %struct.rcu_torture_ops, ptr %2, i32 0, i32 20
  %5 = ptrtoint ptr %gp_kthread_dbg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gp_kthread_dbg, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  tail call void %6() #16
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %7 = load ptr, ptr @read_exit_task, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %rcu_torture_read_exit_cleanup.exit, label %do.body2.i

do.body2.i:                                       ; preds = %if.end9
  store volatile i8 1, ptr @read_exit_child_stop, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1248
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 2893) #16
  %8 = load volatile i8, ptr @read_exit_child_stopped, align 1, !range !1244
  %tobool16.not.i = icmp eq i8 %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1249
  br i1 %tobool16.not.i, label %if.end27.i, label %do.end48.i

if.end27.i:                                       ; preds = %do.body2.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #16
  %9 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #16
  %call51.i = call i32 @prepare_to_wait_event(ptr noundef nonnull @read_exit_wq, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #16
  %10 = load volatile i8, ptr @read_exit_child_stopped, align 1, !range !1244
  %tobool33.not52.i = icmp eq i8 %10, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1250
  br i1 %tobool33.not52.i, label %cleanup.i, label %for.end.i

cleanup.i:                                        ; preds = %cleanup.i, %if.end27.i
  call void @schedule() #16
  %call.i = call i32 @prepare_to_wait_event(ptr noundef nonnull @read_exit_wq, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #16
  %11 = load volatile i8, ptr @read_exit_child_stopped, align 1, !range !1244
  %tobool33.not.i = icmp eq i8 %11, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1250
  br i1 %tobool33.not.i, label %cleanup.i, label %for.end.i

for.end.i:                                        ; preds = %cleanup.i, %if.end27.i
  call void @finish_wait(ptr noundef nonnull @read_exit_wq, ptr noundef nonnull %__wq_entry.i) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #16
  br label %do.end48.i

do.end48.i:                                       ; preds = %for.end.i, %do.body2.i
  call void @_torture_stop_kthread(ptr noundef nonnull @.str.410, ptr noundef nonnull @read_exit_task) #16
  br label %rcu_torture_read_exit_cleanup.exit

rcu_torture_read_exit_cleanup.exit:               ; preds = %do.end48.i, %if.end9
  call void @_torture_stop_kthread(ptr noundef nonnull @.str.411, ptr noundef nonnull @barrier_task) #16
  %12 = load ptr, ptr @barrier_cbs_tasks, align 4
  %cmp.not.i = icmp eq ptr %12, null
  br i1 %cmp.not.i, label %if.end.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %rcu_torture_read_exit_cleanup.exit
  %13 = load i32, ptr @n_barrier_cbs, align 4
  %cmp17.i = icmp sgt i32 %13, 0
  br i1 %cmp17.i, label %for.body.i, label %for.end.i166

for.body.i:                                       ; preds = %for.body.i, %for.cond.preheader.i
  %i.08.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.cond.preheader.i ]
  %14 = load ptr, ptr @barrier_cbs_tasks, align 4
  %arrayidx.i = getelementptr ptr, ptr %14, i32 %i.08.i
  call void @_torture_stop_kthread(ptr noundef nonnull @.str.412, ptr noundef %arrayidx.i) #16
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %15 = load i32, ptr @n_barrier_cbs, align 4
  %cmp1.i = icmp slt i32 %inc.i, %15
  br i1 %cmp1.i, label %for.body.i, label %for.end.i166

for.end.i166:                                     ; preds = %for.body.i, %for.cond.preheader.i
  %16 = load ptr, ptr @barrier_cbs_tasks, align 4
  call void @kfree(ptr noundef %16) #16
  store ptr null, ptr @barrier_cbs_tasks, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %for.end.i166, %rcu_torture_read_exit_cleanup.exit
  %17 = load ptr, ptr @barrier_cbs_wq, align 4
  %cmp2.not.i = icmp eq ptr %17, null
  br i1 %cmp2.not.i, label %rcu_torture_barrier_cleanup.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @kfree(ptr noundef nonnull %17) #16
  store ptr null, ptr @barrier_cbs_wq, align 4
  br label %rcu_torture_barrier_cleanup.exit

rcu_torture_barrier_cleanup.exit:                 ; preds = %if.then3.i, %if.end.i
  %18 = load ptr, ptr @rcu_fwds, align 4
  %tobool.not.i167 = icmp eq ptr %18, null
  br i1 %tobool.not.i167, label %rcu_torture_fwd_prog_cleanup.exit, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %rcu_torture_barrier_cleanup.exit
  %19 = load ptr, ptr @fwd_prog_tasks, align 4
  %tobool1.not.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i, label %rcu_torture_fwd_prog_cleanup.exit, label %for.cond.preheader.i168

for.cond.preheader.i168:                          ; preds = %lor.lhs.false.i
  %20 = load i32, ptr @fwd_progress, align 4
  %cmp5.i = icmp sgt i32 %20, 0
  br i1 %cmp5.i, label %for.body.i171, label %for.end.i173

for.body.i171:                                    ; preds = %for.body.i171, %for.cond.preheader.i168
  %i.06.i = phi i32 [ %inc.i170, %for.body.i171 ], [ 0, %for.cond.preheader.i168 ]
  %21 = load ptr, ptr @fwd_prog_tasks, align 4
  %arrayidx.i169 = getelementptr ptr, ptr %21, i32 %i.06.i
  call void @_torture_stop_kthread(ptr noundef nonnull @.str.413, ptr noundef %arrayidx.i169) #16
  %inc.i170 = add nuw nsw i32 %i.06.i, 1
  %22 = load i32, ptr @fwd_progress, align 4
  %cmp.i = icmp slt i32 %inc.i170, %22
  br i1 %cmp.i, label %for.body.i171, label %for.end.i173

for.end.i173:                                     ; preds = %for.body.i171, %for.cond.preheader.i168
  %call.i172 = call i32 @unregister_oom_notifier(ptr noundef nonnull @rcutorture_oom_nb) #16
  call void @mutex_lock_nested(ptr noundef nonnull @rcu_fwd_mutex, i32 noundef 0) #16
  %23 = load ptr, ptr @rcu_fwds, align 4
  store ptr null, ptr @rcu_fwds, align 4
  call void @mutex_unlock(ptr noundef nonnull @rcu_fwd_mutex) #16
  call void @kfree(ptr noundef %23) #16
  %24 = load ptr, ptr @fwd_prog_tasks, align 4
  call void @kfree(ptr noundef %24) #16
  store ptr null, ptr @fwd_prog_tasks, align 4
  br label %rcu_torture_fwd_prog_cleanup.exit

rcu_torture_fwd_prog_cleanup.exit:                ; preds = %for.end.i173, %lor.lhs.false.i, %rcu_torture_barrier_cleanup.exit
  call void @_torture_stop_kthread(ptr noundef nonnull @.str.374, ptr noundef nonnull @stall_task) #16
  call void @_torture_stop_kthread(ptr noundef nonnull @.str.375, ptr noundef nonnull @writer_task) #16
  %25 = load ptr, ptr @nocb_tasks, align 4
  %tobool10.not = icmp eq ptr %25, null
  br i1 %tobool10.not, label %if.end13, label %for.cond.preheader

for.cond.preheader:                               ; preds = %rcu_torture_fwd_prog_cleanup.exit
  %26 = load i32, ptr @nrealnocbers, align 4
  %cmp12188 = icmp sgt i32 %26, 0
  br i1 %cmp12188, label %for.body, label %for.end

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %i.0189 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %27 = load ptr, ptr @nocb_tasks, align 4
  %arrayidx = getelementptr ptr, ptr %27, i32 %i.0189
  call void @_torture_stop_kthread(ptr noundef nonnull @.str.376, ptr noundef %arrayidx) #16
  %inc = add nuw nsw i32 %i.0189, 1
  %28 = load i32, ptr @nrealnocbers, align 4
  %cmp12 = icmp slt i32 %inc, %28
  br i1 %cmp12, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %29 = load ptr, ptr @nocb_tasks, align 4
  call void @kfree(ptr noundef %29) #16
  store ptr null, ptr @nocb_tasks, align 4
  br label %if.end13

if.end13:                                         ; preds = %for.end, %rcu_torture_fwd_prog_cleanup.exit
  %30 = load ptr, ptr @reader_tasks, align 4
  %tobool14.not = icmp eq ptr %30, null
  br i1 %tobool14.not, label %if.end23, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %if.end13
  %31 = load i32, ptr @nrealreaders, align 4
  %cmp17190 = icmp sgt i32 %31, 0
  br i1 %cmp17190, label %for.body18, label %for.end22

for.body18:                                       ; preds = %for.body18, %for.cond16.preheader
  %i.1191 = phi i32 [ %inc21, %for.body18 ], [ 0, %for.cond16.preheader ]
  %32 = load ptr, ptr @reader_tasks, align 4
  %arrayidx19 = getelementptr ptr, ptr %32, i32 %i.1191
  call void @_torture_stop_kthread(ptr noundef nonnull @.str.377, ptr noundef %arrayidx19) #16
  %inc21 = add nuw nsw i32 %i.1191, 1
  %33 = load i32, ptr @nrealreaders, align 4
  %cmp17 = icmp slt i32 %inc21, %33
  br i1 %cmp17, label %for.body18, label %for.end22

for.end22:                                        ; preds = %for.body18, %for.cond16.preheader
  %34 = load ptr, ptr @reader_tasks, align 4
  call void @kfree(ptr noundef %34) #16
  store ptr null, ptr @reader_tasks, align 4
  br label %if.end23

if.end23:                                         ; preds = %for.end22, %if.end13
  %35 = load ptr, ptr @rcu_torture_reader_mbchk, align 4
  call void @kfree(ptr noundef %35) #16
  store ptr null, ptr @rcu_torture_reader_mbchk, align 4
  %36 = load ptr, ptr @fakewriter_tasks, align 4
  %tobool24.not = icmp eq ptr %36, null
  br i1 %tobool24.not, label %if.end33, label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %if.end23
  %37 = load i32, ptr @nfakewriters, align 4
  %cmp27192 = icmp sgt i32 %37, 0
  br i1 %cmp27192, label %for.body28, label %for.end32

for.body28:                                       ; preds = %for.body28, %for.cond26.preheader
  %i.2193 = phi i32 [ %inc31, %for.body28 ], [ 0, %for.cond26.preheader ]
  %38 = load ptr, ptr @fakewriter_tasks, align 4
  %arrayidx29 = getelementptr ptr, ptr %38, i32 %i.2193
  call void @_torture_stop_kthread(ptr noundef nonnull @.str.378, ptr noundef %arrayidx29) #16
  %inc31 = add nuw nsw i32 %i.2193, 1
  %39 = load i32, ptr @nfakewriters, align 4
  %cmp27 = icmp slt i32 %inc31, %39
  br i1 %cmp27, label %for.body28, label %for.end32

for.end32:                                        ; preds = %for.body28, %for.cond26.preheader
  %40 = load ptr, ptr @fakewriter_tasks, align 4
  call void @kfree(ptr noundef %40) #16
  store ptr null, ptr @fakewriter_tasks, align 4
  br label %if.end33

if.end33:                                         ; preds = %for.end32, %if.end23
  %41 = load ptr, ptr @cur_ops, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  call void @rcutorture_get_gp_data(i32 noundef %43, ptr noundef nonnull %flags, ptr noundef nonnull %gp_seq) #16
  %44 = load ptr, ptr @cur_ops, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %47 = load ptr, ptr @srcu_ctlp, align 4
  call void @srcutorture_get_gp_data(i32 noundef %46, ptr noundef %47, ptr noundef nonnull %flags, ptr noundef nonnull %gp_seq) #16
  %48 = load ptr, ptr @cur_ops, align 4
  %name = getelementptr inbounds %struct.rcu_torture_ops, ptr %48, i32 0, i32 29
  %49 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name, align 4
  %51 = ptrtoint ptr %gp_seq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %gp_seq, align 4
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags, align 4
  %55 = load i32, ptr @start_gp_seq, align 4
  %gp_diff.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %48, i32 0, i32 8
  %56 = ptrtoint ptr %gp_diff.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %gp_diff.i, align 4
  %tobool.not.i175 = icmp eq ptr %57, null
  br i1 %tobool.not.i175, label %if.then.i, label %if.end.i177

if.then.i:                                        ; preds = %if.end33
  %sub.i = sub i32 %52, %55
  br label %rcutorture_seq_diff.exit

if.end.i177:                                      ; preds = %if.end33
  %call.i176 = call i32 %57(i32 noundef %52, i32 noundef %55) #16
  br label %rcutorture_seq_diff.exit

rcutorture_seq_diff.exit:                         ; preds = %if.end.i177, %if.then.i
  %retval.0.i = phi i32 [ %call.i176, %if.end.i177 ], [ %sub.i, %if.then.i ]
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.379, ptr noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %retval.0.i) #19
  call void @_torture_stop_kthread(ptr noundef nonnull @.str.381, ptr noundef nonnull @stats_task) #16
  call void @_torture_stop_kthread(ptr noundef nonnull @.str.382, ptr noundef nonnull @fqs_task) #16
  %58 = load i32, ptr @test_boost, align 4
  switch i32 %58, label %if.end40 [
    i32 1, label %land.lhs.true.i
    i32 2, label %if.end.i179
  ]

land.lhs.true.i:                                  ; preds = %rcutorture_seq_diff.exit
  %59 = load ptr, ptr @cur_ops, align 4
  %can_boost.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %59, i32 0, i32 25
  %60 = ptrtoint ptr %can_boost.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %can_boost.i, align 4
  %tobool.not.i178 = icmp eq i32 %61, 0
  br i1 %tobool.not.i178, label %if.end40, label %if.end.i179

if.end.i179:                                      ; preds = %land.lhs.true.i, %rcutorture_seq_diff.exit
  %62 = load ptr, ptr @cur_ops, align 4
  %start_gp_poll.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %62, i32 0, i32 13
  %63 = ptrtoint ptr %start_gp_poll.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %start_gp_poll.i, align 4
  %tobool3.not.i = icmp eq ptr %64, null
  br i1 %tobool3.not.i, label %if.end40, label %lor.lhs.false.i180

lor.lhs.false.i180:                               ; preds = %if.end.i179
  %poll_gp_state.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %62, i32 0, i32 14
  %65 = ptrtoint ptr %poll_gp_state.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %poll_gp_state.i, align 4
  %tobool4.not.i = icmp eq ptr %66, null
  br i1 %tobool4.not.i, label %if.end40, label %if.end6.i

if.end6.i:                                        ; preds = %lor.lhs.false.i180
  %call.i181 = call i32 @rcu_get_gp_kthreads_prio() #16
  %tobool7.not.i = icmp eq i32 %call.i181, 0
  br i1 %tobool7.not.i, label %if.end40, label %if.end9.i

if.end9.i:                                        ; preds = %if.end6.i
  %cmp10.i = icmp slt i32 %call.i181, 2
  br i1 %cmp10.i, label %if.then11.i, label %land.lhs.true

if.then11.i:                                      ; preds = %if.end9.i
  %.b.i = load i1, ptr @rcu_torture_can_boost.boost_warn_once, align 4
  br i1 %.b.i, label %if.end40, label %do.end.i

do.end.i:                                         ; preds = %if.then11.i
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.240) #19
  store i1 true, ptr @rcu_torture_can_boost.boost_warn_once, align 4
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end9.i
  %67 = load i32, ptr @rcutor_hp, align 4
  %cmp38 = icmp sgt i32 %67, -1
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %land.lhs.true
  call void @__cpuhp_remove_state(i32 noundef %67, i1 noundef zeroext true) #16
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %land.lhs.true, %do.end.i, %if.then11.i, %if.end6.i, %lor.lhs.false.i180, %if.end.i179, %land.lhs.true.i, %rcutorture_seq_diff.exit
  %68 = load ptr, ptr @cur_ops, align 4
  %cb_barrier41 = getelementptr inbounds %struct.rcu_torture_ops, ptr %68, i32 0, i32 17
  %69 = ptrtoint ptr %cb_barrier41 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cb_barrier41, align 4
  %cmp42.not = icmp eq ptr %70, null
  br i1 %cmp42.not, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end40
  call void %70() #16
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end40
  %71 = load ptr, ptr @cur_ops, align 4
  %cleanup = getelementptr inbounds %struct.rcu_torture_ops, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cleanup, align 4
  %cmp46.not = icmp eq ptr %73, null
  br i1 %cmp46.not, label %if.end49, label %if.then47

if.then47:                                        ; preds = %if.end45
  call void %73() #16
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rhp.i) #16
  %call.i184 = call ptr @kmem_cache_create(ptr noundef nonnull @.str.414, i32 noundef 136, i32 noundef 8, i32 noundef 65536, ptr noundef null) #16
  %call1.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %call.i184, i32 noundef 3264) #16
  %74 = ptrtoint ptr %rhp.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call1.i, ptr %rhp.i, align 4
  %75 = load ptr, ptr @stats_task, align 4
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.415, ptr noundef %75, ptr noundef nonnull %rhp.i, ptr noundef %call1.i, ptr noundef nonnull @rcu_torture_mem_dump_obj.z) #19
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.418) #19
  call void @mem_dump_obj(ptr noundef nonnull inttoptr (i32 16 to ptr)) #16
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.421) #19
  call void @mem_dump_obj(ptr noundef null) #16
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.424, ptr noundef nonnull %rhp.i) #19
  call void @mem_dump_obj(ptr noundef nonnull %rhp.i) #16
  %76 = ptrtoint ptr %rhp.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rhp.i, align 4
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.424, ptr noundef %77) #19
  %78 = ptrtoint ptr %rhp.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rhp.i, align 4
  call void @mem_dump_obj(ptr noundef %79) #16
  %80 = ptrtoint ptr %rhp.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rhp.i, align 4
  %func.i = getelementptr inbounds %struct.callback_head, ptr %81, i32 0, i32 1
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.424, ptr noundef %func.i) #19
  %82 = ptrtoint ptr %rhp.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rhp.i, align 4
  %func28.i = getelementptr inbounds %struct.callback_head, ptr %83, i32 0, i32 1
  call void @mem_dump_obj(ptr noundef %func28.i) #16
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.424, ptr noundef nonnull @rcu_torture_mem_dump_obj.z) #19
  call void @mem_dump_obj(ptr noundef nonnull @rcu_torture_mem_dump_obj.z) #16
  %84 = ptrtoint ptr %rhp.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rhp.i, align 4
  call void @kmem_cache_free(ptr noundef %call.i184, ptr noundef %85) #16
  call void @kmem_cache_destroy(ptr noundef %call.i184) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %86 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 3264, i32 noundef 8) #23
  %87 = ptrtoint ptr %rhp.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call7.i.i, ptr %rhp.i, align 4
  %88 = load ptr, ptr @stats_task, align 4
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.433, ptr noundef %88, ptr noundef nonnull %rhp.i, ptr noundef %call7.i.i) #19
  %89 = ptrtoint ptr %rhp.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rhp.i, align 4
  %call44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.436, ptr noundef %90) #19
  %91 = ptrtoint ptr %rhp.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rhp.i, align 4
  call void @mem_dump_obj(ptr noundef %92) #16
  %93 = ptrtoint ptr %rhp.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rhp.i, align 4
  %func49.i = getelementptr inbounds %struct.callback_head, ptr %94, i32 0, i32 1
  %call50.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.436, ptr noundef %func49.i) #19
  %95 = ptrtoint ptr %rhp.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rhp.i, align 4
  %func51.i = getelementptr inbounds %struct.callback_head, ptr %96, i32 0, i32 1
  call void @mem_dump_obj(ptr noundef %func51.i) #16
  %97 = ptrtoint ptr %rhp.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rhp.i, align 4
  call void @kfree(ptr noundef %98) #16
  %call52.i = call noalias ptr @vmalloc(i32 noundef 4096) #21
  %99 = ptrtoint ptr %rhp.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call52.i, ptr %rhp.i, align 4
  %100 = load ptr, ptr @stats_task, align 4
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.441, ptr noundef %100, ptr noundef nonnull %rhp.i, ptr noundef %call52.i) #19
  %101 = ptrtoint ptr %rhp.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rhp.i, align 4
  %call62.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.444, ptr noundef %102) #19
  %103 = ptrtoint ptr %rhp.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rhp.i, align 4
  call void @mem_dump_obj(ptr noundef %104) #16
  %105 = ptrtoint ptr %rhp.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rhp.i, align 4
  %func67.i = getelementptr inbounds %struct.callback_head, ptr %106, i32 0, i32 1
  %call68.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.444, ptr noundef %func67.i) #19
  %107 = ptrtoint ptr %rhp.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rhp.i, align 4
  %func69.i = getelementptr inbounds %struct.callback_head, ptr %108, i32 0, i32 1
  call void @mem_dump_obj(ptr noundef %func69.i) #16
  %109 = ptrtoint ptr %rhp.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rhp.i, align 4
  call void @vfree(ptr noundef %110) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rhp.i) #16
  call fastcc void @rcu_torture_stats_print()
  %111 = load i32, ptr @err_segs_recorded, align 4
  %tobool50.not = icmp eq i32 %111, 0
  br i1 %tobool50.not, label %if.end123, label %do.end54

do.end54:                                         ; preds = %if.end49
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.384) #19
  %112 = load i32, ptr @rt_read_nsegs, align 4
  %cmp57 = icmp eq i32 %112, 0
  br i1 %cmp57, label %do.end61, label %if.end64

do.end61:                                         ; preds = %do.end54
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.387) #19
  %.pr = load i32, ptr @rt_read_nsegs, align 4
  br label %if.end64

if.end64:                                         ; preds = %do.end61, %do.end54
  %113 = phi i32 [ %.pr, %do.end61 ], [ %112, %do.end54 ]
  %cmp66194 = icmp sgt i32 %113, 0
  br i1 %cmp66194, label %do.end70, label %if.end123

do.end70:                                         ; preds = %do.end114, %if.end64
  %firsttime.0196 = phi i32 [ %firsttime.3, %do.end114 ], [ 1, %if.end64 ]
  %i.3195 = phi i32 [ %inc121, %do.end114 ], [ 0, %if.end64 ]
  %arrayidx72 = getelementptr [10 x %struct.rt_read_seg], ptr @err_segs, i32 0, i32 %i.3195
  %114 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx72, align 4
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.390, i32 noundef %i.3195, i32 noundef %115) #19
  %rt_delay_jiffies = getelementptr [10 x %struct.rt_read_seg], ptr @err_segs, i32 0, i32 %i.3195, i32 1
  %116 = ptrtoint ptr %rt_delay_jiffies to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rt_delay_jiffies, align 4
  %cmp75.not = icmp eq i32 %117, 0
  br i1 %cmp75.not, label %if.end85, label %do.end79

do.end79:                                         ; preds = %do.end70
  %tobool81.not = icmp eq i32 %firsttime.0196, 0
  %cond = select i1 %tobool81.not, ptr @.str.396, ptr @.str.395
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.393, ptr noundef nonnull %cond, i32 noundef %117) #19
  br label %if.end85

if.end85:                                         ; preds = %do.end79, %do.end70
  %firsttime.1 = phi i32 [ 0, %do.end79 ], [ %firsttime.0196, %do.end70 ]
  %rt_delay_ms = getelementptr [10 x %struct.rt_read_seg], ptr @err_segs, i32 0, i32 %i.3195, i32 2
  %118 = ptrtoint ptr %rt_delay_ms to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rt_delay_ms, align 4
  %cmp87.not = icmp eq i32 %119, 0
  br i1 %cmp87.not, label %if.end98, label %do.end91

do.end91:                                         ; preds = %if.end85
  %tobool93.not = icmp eq i32 %firsttime.1, 0
  %cond94 = select i1 %tobool93.not, ptr @.str.396, ptr @.str.395
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.398, ptr noundef nonnull %cond94, i32 noundef %119) #19
  br label %if.end98

if.end98:                                         ; preds = %do.end91, %if.end85
  %firsttime.2 = phi i32 [ 0, %do.end91 ], [ %firsttime.1, %if.end85 ]
  %rt_delay_us = getelementptr [10 x %struct.rt_read_seg], ptr @err_segs, i32 0, i32 %i.3195, i32 3
  %120 = ptrtoint ptr %rt_delay_us to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rt_delay_us, align 4
  %cmp100.not = icmp eq i32 %121, 0
  br i1 %cmp100.not, label %do.end114, label %do.end104

do.end104:                                        ; preds = %if.end98
  %tobool106.not = icmp eq i32 %firsttime.2, 0
  %cond107 = select i1 %tobool106.not, ptr @.str.396, ptr @.str.395
  %call110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.401, ptr noundef nonnull %cond107, i32 noundef %121) #19
  br label %do.end114

do.end114:                                        ; preds = %do.end104, %if.end98
  %firsttime.3 = phi i32 [ 0, %do.end104 ], [ %firsttime.2, %if.end98 ]
  %rt_preempted = getelementptr [10 x %struct.rt_read_seg], ptr @err_segs, i32 0, i32 %i.3195, i32 4
  %122 = ptrtoint ptr %rt_preempted to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %rt_preempted, align 4, !range !1244
  %tobool117.not = icmp eq i8 %123, 0
  %cond118 = select i1 %tobool117.not, ptr @.str.395, ptr @.str.406
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.404, ptr noundef nonnull %cond118) #19
  %inc121 = add nuw nsw i32 %i.3195, 1
  %124 = load i32, ptr @rt_read_nsegs, align 4
  %cmp66 = icmp slt i32 %inc121, %124
  br i1 %cmp66, label %do.end70, label %if.end123

if.end123:                                        ; preds = %do.end114, %if.end64, %if.end49
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_rcu_torture_error, i32 noundef 4) #16
  %125 = load volatile i32, ptr @n_rcu_torture_error, align 4
  %tobool125.not = icmp eq i32 %125, 0
  br i1 %tobool125.not, label %lor.lhs.false, label %if.then127

lor.lhs.false:                                    ; preds = %if.end123
  %126 = load i32, ptr @n_rcu_torture_barrier_error, align 4
  %tobool126.not = icmp eq i32 %126, 0
  br i1 %tobool126.not, label %if.else, label %if.then127

if.then127:                                       ; preds = %lor.lhs.false, %if.end123
  %127 = load ptr, ptr @cur_ops, align 4
  %128 = load ptr, ptr @torture_type, align 4
  %129 = load i32, ptr @nrealreaders, align 4
  %130 = load i32, ptr @nfakewriters, align 4
  %131 = load i32, ptr @stat_interval, align 4
  %132 = load i32, ptr @verbose, align 4
  %133 = load i8, ptr @test_no_idle_hz, align 1, !range !1244
  %134 = zext i8 %133 to i32
  %135 = load i32, ptr @shuffle_interval, align 4
  %136 = load i32, ptr @stutter, align 4
  %137 = load i32, ptr @irqreader, align 4
  %138 = load i32, ptr @fqs_duration, align 4
  %139 = load i32, ptr @fqs_holdoff, align 4
  %140 = load i32, ptr @fqs_stutter, align 4
  %141 = load i32, ptr @test_boost, align 4
  %can_boost.i185 = getelementptr inbounds %struct.rcu_torture_ops, ptr %127, i32 0, i32 25
  %142 = ptrtoint ptr %can_boost.i185 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %can_boost.i185, align 4
  %144 = load i32, ptr @test_boost_interval, align 4
  %145 = load i32, ptr @test_boost_duration, align 4
  %146 = load i32, ptr @shutdown_secs, align 4
  %147 = load i32, ptr @stall_cpu, align 4
  %148 = load i32, ptr @stall_cpu_holdoff, align 4
  %149 = load i32, ptr @stall_cpu_irqsoff, align 4
  %150 = load i32, ptr @stall_cpu_block, align 4
  %151 = load i32, ptr @n_barrier_cbs, align 4
  %152 = load i32, ptr @onoff_interval, align 4
  %153 = load i32, ptr @onoff_holdoff, align 4
  %154 = load i32, ptr @read_exit_delay, align 4
  %155 = load i32, ptr @read_exit_burst, align 4
  %156 = load i32, ptr @nocbs_nthreads, align 4
  %157 = load i32, ptr @nocbs_toggle, align 4
  %call.i186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %128, ptr noundef nonnull @.str.407, i32 noundef %129, i32 noundef %130, i32 noundef %131, i32 noundef %132, i32 noundef %134, i32 noundef %135, i32 noundef %136, i32 noundef %137, i32 noundef %138, i32 noundef %139, i32 noundef %140, i32 noundef %141, i32 noundef %143, i32 noundef %144, i32 noundef %145, i32 noundef %146, i32 noundef %147, i32 noundef %148, i32 noundef %149, i32 noundef %150, i32 noundef %151, i32 noundef %152, i32 noundef %153, i32 noundef %154, i32 noundef %155, i32 noundef %156, i32 noundef %157) #19
  br label %if.end132

if.else:                                          ; preds = %lor.lhs.false
  %call128 = call zeroext i1 @torture_onoff_failures() #16
  %158 = load ptr, ptr @cur_ops, align 4
  br i1 %call128, label %if.then129, label %if.else130

if.then129:                                       ; preds = %if.else
  call fastcc void @rcu_torture_print_module_parms(ptr noundef %158, ptr noundef nonnull @.str.408)
  br label %if.end132

if.else130:                                       ; preds = %if.else
  call fastcc void @rcu_torture_print_module_parms(ptr noundef %158, ptr noundef nonnull @.str.409)
  br label %if.end132

if.end132:                                        ; preds = %if.else130, %if.then129, %if.then127
  call void @torture_cleanup_end() #16
  br label %cleanup133

cleanup133:                                       ; preds = %if.end132, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gp_seq) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @torture_init_begin(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_torture_print_module_parms(ptr nocapture noundef readonly %cur_ops, ptr noundef %tag) unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @torture_type, align 4
  %1 = load i32, ptr @nrealreaders, align 4
  %2 = load i32, ptr @nfakewriters, align 4
  %3 = load i32, ptr @stat_interval, align 4
  %4 = load i32, ptr @verbose, align 4
  %5 = load i8, ptr @test_no_idle_hz, align 1, !range !1244
  %6 = zext i8 %5 to i32
  %7 = load i32, ptr @shuffle_interval, align 4
  %8 = load i32, ptr @stutter, align 4
  %9 = load i32, ptr @irqreader, align 4
  %10 = load i32, ptr @fqs_duration, align 4
  %11 = load i32, ptr @fqs_holdoff, align 4
  %12 = load i32, ptr @fqs_stutter, align 4
  %13 = load i32, ptr @test_boost, align 4
  %can_boost = getelementptr inbounds %struct.rcu_torture_ops, ptr %cur_ops, i32 0, i32 25
  %14 = ptrtoint ptr %can_boost to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %can_boost, align 4
  %16 = load i32, ptr @test_boost_interval, align 4
  %17 = load i32, ptr @test_boost_duration, align 4
  %18 = load i32, ptr @shutdown_secs, align 4
  %19 = load i32, ptr @stall_cpu, align 4
  %20 = load i32, ptr @stall_cpu_holdoff, align 4
  %21 = load i32, ptr @stall_cpu_irqsoff, align 4
  %22 = load i32, ptr @stall_cpu_block, align 4
  %23 = load i32, ptr @n_barrier_cbs, align 4
  %24 = load i32, ptr @onoff_interval, align 4
  %25 = load i32, ptr @onoff_holdoff, align 4
  %26 = load i32, ptr @read_exit_delay, align 4
  %27 = load i32, ptr @read_exit_burst, align 4
  %28 = load i32, ptr @nocbs_nthreads, align 4
  %29 = load i32, ptr @nocbs_toggle, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %0, ptr noundef %tag, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %29) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcutorture_get_gp_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @srcutorture_get_gp_data(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_torture_create_kthread(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_torture_writer(ptr nocapture noundef readnone %arg) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @rcu_gp_is_expedited() #16
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = tail call zeroext i1 @rcu_gp_is_normal() #16
  %lnot = xor i1 %call1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %1 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %static_prio.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %static_prio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %static_prio.i, align 4
  %sub.i = add i32 %6, -120
  %7 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end7, label %if.then

if.then:                                          ; preds = %land.end
  tail call void @verbose_torout_sleep() #16
  %8 = load ptr, ptr @torture_type, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %8, ptr noundef nonnull @.str.115) #19
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.end
  br i1 %0, label %if.end15, label %do.end12

do.end12:                                         ; preds = %do.end7
  %9 = load ptr, ptr @torture_type, align 4
  %10 = load ptr, ptr @cur_ops, align 4
  %name = getelementptr inbounds %struct.rcu_torture_ops, ptr %10, i32 0, i32 29
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %9, ptr noundef %12) #19
  br label %if.end15

if.end15:                                         ; preds = %do.end12, %do.end7
  %13 = load i32, ptr @nsynctypes, align 4
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %land.rhs20, label %do.body64.preheader

land.rhs20:                                       ; preds = %if.end15
  %.b621 = load i1, ptr @rcu_torture_writer.__already_done, align 1
  br i1 %.b621, label %if.then62, label %if.then27, !prof !1245

if.then27:                                        ; preds = %land.rhs20
  store i1 true, ptr @rcu_torture_writer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1178, i32 noundef 9, ptr noundef nonnull @.str.119) #16
  br label %if.then62

if.then62:                                        ; preds = %if.then27, %land.rhs20
  store i32 11, ptr @rcu_torture_writer_state, align 4
  tail call void @torture_kthread_stopping(ptr noundef nonnull @.str.20) #16
  br label %do.body64.preheader

do.body64.preheader:                              ; preds = %if.then62, %if.end15
  br label %do.body64

do.body64:                                        ; preds = %do.cond477, %do.body64.preheader
  %expediting.0 = phi i32 [ %expediting.2, %do.cond477 ], [ 0, %do.body64.preheader ]
  %can_expedite.0.off0 = phi i1 [ %can_expedite.2.off0, %do.cond477 ], [ %0, %do.body64.preheader ]
  store i32 0, ptr @rcu_torture_writer_state, align 4
  %call65 = tail call i32 @torture_hrtimeout_us(i32 noundef 500, i32 noundef 1000, ptr noundef nonnull @rcu_torture_writer.rand) #16
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rcu_torture_lock) #16
  %14 = load volatile ptr, ptr @rcu_torture_freelist, align 4
  %cmp.i.not.i = icmp eq ptr %14, @rcu_torture_freelist
  br i1 %cmp.i.not.i, label %rcu_torture_alloc.exit.thread, label %if.end.i

rcu_torture_alloc.exit.thread:                    ; preds = %do.body64
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_torture_alloc_fail, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @n_rcu_torture_alloc_fail, i32 1, i32 3, i32 1) #16
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_rcu_torture_alloc_fail, ptr nonnull @n_rcu_torture_alloc_fail, i32 1, ptr nonnull elementtype(i32) @n_rcu_torture_alloc_fail) #16, !srcloc !1251
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rcu_torture_lock) #16
  br label %do.cond477

if.end.i:                                         ; preds = %do.body64
  %call.i.i2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_torture_alloc, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @n_rcu_torture_alloc, i32 1, i32 3, i32 1) #16
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_rcu_torture_alloc, ptr nonnull @n_rcu_torture_alloc, i32 1, ptr nonnull elementtype(i32) @n_rcu_torture_alloc) #16, !srcloc !1251
  %17 = load ptr, ptr @rcu_torture_freelist, align 4
  %call.i.i3.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %17) #16
  br i1 %call.i.i3.i, label %if.end.i.i.i, label %rcu_torture_alloc.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %rcu_torture_alloc.exit

rcu_torture_alloc.exit:                           ; preds = %if.end.i.i.i, %if.end.i
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %17, ptr %17, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %17, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rcu_torture_lock) #16
  %add.ptr.i = getelementptr i8, ptr %17, i32 -12
  %cmp67 = icmp eq ptr %add.ptr.i, null
  br i1 %cmp67, label %do.cond477, label %if.end69

if.end69:                                         ; preds = %rcu_torture_alloc.exit
  %rtort_pipe_count = getelementptr i8, ptr %17, i32 -4
  %26 = ptrtoint ptr %rtort_pipe_count to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %rtort_pipe_count, align 4
  store i32 1, ptr @rcu_torture_writer_state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %call70 = tail call i32 @torture_random(ptr noundef nonnull @rcu_torture_writer.rand) #16
  %and = and i32 %call70, 1023
  tail call void %27(i32 noundef %and) #16
  store i32 2, ptr @rcu_torture_writer_state, align 4
  %28 = load volatile ptr, ptr @rcu_torture_current, align 4
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %31 = load ptr, ptr @writer_task, align 4
  %cmp78 = icmp eq ptr %30, %31
  br i1 %cmp78, label %do.end88, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end69
  %call79 = tail call i32 @rcu_read_lock_held() #16
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %land.lhs.true, label %do.end88

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call81 = tail call i32 @debug_lockdep_rcu_enabled() #16
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %do.end88, label %land.lhs.true83

land.lhs.true83:                                  ; preds = %land.lhs.true
  %.b602620 = load i1, ptr @rcu_torture_writer.__warned, align 1
  br i1 %.b602620, label %do.end88, label %if.then85

if.then85:                                        ; preds = %land.lhs.true83
  store i1 true, ptr @rcu_torture_writer.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1199, ptr noundef nonnull @.str.120) #16
  br label %do.end88

do.end88:                                         ; preds = %if.then85, %land.lhs.true83, %land.lhs.true, %lor.lhs.false, %if.end69
  %rtort_mbtest = getelementptr i8, ptr %17, i32 8
  %32 = ptrtoint ptr %rtort_mbtest to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %rtort_mbtest, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1252
  store volatile ptr %add.ptr.i, ptr @rcu_torture_current, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1253
  %tobool133.not = icmp eq ptr %28, null
  br i1 %tobool133.not, label %do.body291, label %if.then134

if.then134:                                       ; preds = %do.end88
  %rtort_pipe_count135 = getelementptr inbounds %struct.rcu_torture, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %rtort_pipe_count135 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rtort_pipe_count135, align 4
  %35 = tail call i32 @llvm.smin.i32(i32 %34, i32 10)
  %arrayidx = getelementptr [11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 %35
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #16
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #16, !srcloc !1251
  %37 = ptrtoint ptr %rtort_pipe_count135 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rtort_pipe_count135, align 4
  %add = add i32 %38, 1
  store volatile i32 %add, ptr %rtort_pipe_count135, align 4
  %39 = load ptr, ptr @cur_ops, align 4
  %get_gp_state = getelementptr inbounds %struct.rcu_torture_ops, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %get_gp_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %get_gp_state, align 4
  %tobool150.not = icmp eq ptr %41, null
  br i1 %tobool150.not, label %if.end218, label %land.lhs.true151

land.lhs.true151:                                 ; preds = %if.then134
  %poll_gp_state = getelementptr inbounds %struct.rcu_torture_ops, ptr %39, i32 0, i32 14
  %42 = ptrtoint ptr %poll_gp_state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %poll_gp_state, align 4
  %tobool152.not = icmp eq ptr %43, null
  br i1 %tobool152.not, label %if.end218, label %if.then153

if.then153:                                       ; preds = %land.lhs.true151
  %readlock = getelementptr inbounds %struct.rcu_torture_ops, ptr %39, i32 0, i32 3
  %44 = ptrtoint ptr %readlock to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %readlock, align 4
  %call154 = tail call i32 %45() #16
  %46 = load ptr, ptr @cur_ops, align 4
  %get_gp_state155 = getelementptr inbounds %struct.rcu_torture_ops, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %get_gp_state155 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %get_gp_state155, align 4
  %call156 = tail call i32 %48() #16
  %49 = load i32, ptr @rcu_torture_writer_state, align 4
  %cmp158.not = icmp eq i32 %49, 3
  br i1 %cmp158.not, label %if.end210, label %land.rhs159

land.rhs159:                                      ; preds = %if.then153
  %50 = load ptr, ptr @cur_ops, align 4
  %poll_gp_state160 = getelementptr inbounds %struct.rcu_torture_ops, ptr %50, i32 0, i32 14
  %51 = ptrtoint ptr %poll_gp_state160 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %poll_gp_state160, align 4
  %call161 = tail call zeroext i1 %52(i32 noundef %call156) #16
  br i1 %call161, label %land.rhs169, label %if.end210

land.rhs169:                                      ; preds = %land.rhs159
  %.b603619 = load i1, ptr @rcu_torture_writer.__already_done.121, align 1
  br i1 %.b603619, label %if.end210, label %if.then180, !prof !1245

if.then180:                                       ; preds = %land.rhs169
  store i1 true, ptr @rcu_torture_writer.__already_done.121, align 1
  %53 = load volatile i32, ptr @rcu_torture_writer_state, align 4
  %cmp.i = icmp ugt i32 %53, 11
  br i1 %cmp.i, label %rcu_torture_writer_state_getname.exit, label %if.end.i631

if.end.i631:                                      ; preds = %if.then180
  %arrayidx.i = getelementptr [12 x ptr], ptr @rcu_torture_writer_state_names, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i, align 4
  br label %rcu_torture_writer_state_getname.exit

rcu_torture_writer_state_getname.exit:            ; preds = %if.end.i631, %if.then180
  %retval.0.i632 = phi ptr [ %55, %if.end.i631 ], [ @.str.130, %if.then180 ]
  %56 = load ptr, ptr @cur_ops, align 4
  %get_gp_state195 = getelementptr inbounds %struct.rcu_torture_ops, ptr %56, i32 0, i32 12
  %57 = ptrtoint ptr %get_gp_state195 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %get_gp_state195, align 4
  %call196 = tail call i32 %58() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1219, i32 noundef 9, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.20, ptr noundef %retval.0.i632, i32 noundef %53, i32 noundef %call156, i32 noundef %call196) #16
  br label %if.end210

if.end210:                                        ; preds = %rcu_torture_writer_state_getname.exit, %land.rhs169, %land.rhs159, %if.then153
  %59 = load ptr, ptr @cur_ops, align 4
  %readunlock = getelementptr inbounds %struct.rcu_torture_ops, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %readunlock to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %readunlock, align 4
  tail call void %61(i32 noundef %call154) #16
  br label %if.end218

if.end218:                                        ; preds = %if.end210, %land.lhs.true151, %if.then134
  %call219 = tail call i32 @torture_random(ptr noundef nonnull @rcu_torture_writer.rand) #16
  %62 = load i32, ptr @nsynctypes, align 4
  %rem = urem i32 %call219, %62
  %arrayidx220 = getelementptr [5 x i32], ptr @synctype, i32 0, i32 %rem
  %63 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx220, align 4
  switch i32 %64, label %land.end244 [
    i32 3, label %sw.bb
    i32 4, label %sw.bb221
    i32 5, label %sw.bb222
    i32 7, label %sw.bb228
    i32 9, label %sw.bb237
  ]

sw.bb:                                            ; preds = %if.end218
  store i32 3, ptr @rcu_torture_writer_state, align 4
  %65 = load ptr, ptr @cur_ops, align 4
  %deferred_free = getelementptr inbounds %struct.rcu_torture_ops, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %deferred_free to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %deferred_free, align 4
  tail call void %67(ptr noundef nonnull %28) #16
  br label %do.body291

sw.bb221:                                         ; preds = %if.end218
  store i32 4, ptr @rcu_torture_writer_state, align 4
  %68 = load ptr, ptr @cur_ops, align 4
  %exp_sync = getelementptr inbounds %struct.rcu_torture_ops, ptr %68, i32 0, i32 11
  %69 = ptrtoint ptr %exp_sync to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %exp_sync, align 4
  tail call void %70() #16
  tail call fastcc void @rcu_torture_pipe_update(ptr noundef nonnull %28)
  br label %do.body291

sw.bb222:                                         ; preds = %if.end218
  store i32 5, ptr @rcu_torture_writer_state, align 4
  %71 = load ptr, ptr @cur_ops, align 4
  %get_gp_state223 = getelementptr inbounds %struct.rcu_torture_ops, ptr %71, i32 0, i32 12
  %72 = ptrtoint ptr %get_gp_state223 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %get_gp_state223, align 4
  %call224 = tail call i32 %73() #16
  %call225 = tail call i32 @torture_random(ptr noundef nonnull @rcu_torture_writer.rand) #16
  %rem226 = and i32 %call225, 15
  %call227 = tail call i32 @torture_hrtimeout_jiffies(i32 noundef %rem226, ptr noundef nonnull @rcu_torture_writer.rand) #16
  store i32 6, ptr @rcu_torture_writer_state, align 4
  %74 = load ptr, ptr @cur_ops, align 4
  %cond_sync = getelementptr inbounds %struct.rcu_torture_ops, ptr %74, i32 0, i32 15
  %75 = ptrtoint ptr %cond_sync to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cond_sync, align 4
  tail call void %76(i32 noundef %call224) #16
  tail call fastcc void @rcu_torture_pipe_update(ptr noundef nonnull %28)
  br label %do.body291

sw.bb228:                                         ; preds = %if.end218
  store i32 7, ptr @rcu_torture_writer_state, align 4
  %77 = load ptr, ptr @cur_ops, align 4
  %start_gp_poll = getelementptr inbounds %struct.rcu_torture_ops, ptr %77, i32 0, i32 13
  %78 = ptrtoint ptr %start_gp_poll to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %start_gp_poll, align 4
  %call229 = tail call i32 %79() #16
  store i32 8, ptr @rcu_torture_writer_state, align 4
  %80 = load ptr, ptr @cur_ops, align 4
  %poll_gp_state230637 = getelementptr inbounds %struct.rcu_torture_ops, ptr %80, i32 0, i32 14
  %81 = ptrtoint ptr %poll_gp_state230637 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %poll_gp_state230637, align 4
  %call231638 = tail call zeroext i1 %82(i32 noundef %call229) #16
  br i1 %call231638, label %while.end, label %while.body

while.body:                                       ; preds = %while.body, %sw.bb228
  %call234 = tail call i32 @torture_random(ptr noundef nonnull @rcu_torture_writer.rand) #16
  %rem235 = and i32 %call234, 15
  %call236 = tail call i32 @torture_hrtimeout_jiffies(i32 noundef %rem235, ptr noundef nonnull @rcu_torture_writer.rand) #16
  %83 = load ptr, ptr @cur_ops, align 4
  %poll_gp_state230 = getelementptr inbounds %struct.rcu_torture_ops, ptr %83, i32 0, i32 14
  %84 = ptrtoint ptr %poll_gp_state230 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %poll_gp_state230, align 4
  %call231 = tail call zeroext i1 %85(i32 noundef %call229) #16
  br i1 %call231, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %sw.bb228
  tail call fastcc void @rcu_torture_pipe_update(ptr noundef nonnull %28)
  br label %do.body291

sw.bb237:                                         ; preds = %if.end218
  store i32 9, ptr @rcu_torture_writer_state, align 4
  %86 = load ptr, ptr @cur_ops, align 4
  %sync = getelementptr inbounds %struct.rcu_torture_ops, ptr %86, i32 0, i32 10
  %87 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sync, align 4
  tail call void %88() #16
  tail call fastcc void @rcu_torture_pipe_update(ptr noundef nonnull %28)
  br label %do.body291

land.end244:                                      ; preds = %if.end218
  %.b604618 = load i1, ptr @rcu_torture_writer.__already_done.123, align 1
  br i1 %.b604618, label %do.body291, label %if.then251, !prof !1245

if.then251:                                       ; preds = %land.end244
  store i1 true, ptr @rcu_torture_writer.__already_done.123, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1255, i32 noundef 9, ptr noundef null) #16
  br label %do.body291

do.body291:                                       ; preds = %if.then251, %land.end244, %sw.bb237, %while.end, %sw.bb222, %sw.bb221, %sw.bb, %do.end88
  %89 = load i32, ptr @rcu_torture_current_version, align 4
  %add292 = add i32 %89, 1
  store volatile i32 %add292, ptr @rcu_torture_current_version, align 4
  br i1 %can_expedite.0.off0, label %land.lhs.true298, label %if.then376.critedge

land.lhs.true298:                                 ; preds = %do.body291
  %call299 = tail call i32 @torture_random(ptr noundef nonnull @rcu_torture_writer.rand) #16
  %and300 = and i32 %call299, 255
  %tobool301.not = icmp ne i32 %expediting.0, 0
  %tobool307.not616 = icmp eq i32 %and300, 0
  %tobool307.not = select i1 %tobool301.not, i1 true, i1 %tobool307.not616
  br i1 %tobool307.not, label %if.then308, label %if.end385

if.then308:                                       ; preds = %land.lhs.true298
  %cmp310 = icmp eq i32 %expediting.0, 0
  br i1 %cmp310, label %land.rhs311, label %if.end358

land.rhs311:                                      ; preds = %if.then308
  %call312 = tail call zeroext i1 @rcu_gp_is_expedited() #16
  br i1 %call312, label %land.rhs320, label %if.then367

land.rhs320:                                      ; preds = %land.rhs311
  %.b605617 = load i1, ptr @rcu_torture_writer.__already_done.124, align 1
  br i1 %.b605617, label %if.then367, label %if.then331, !prof !1245

if.then331:                                       ; preds = %land.rhs320
  store i1 true, ptr @rcu_torture_writer.__already_done.124, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1264, i32 noundef 9, ptr noundef null) #16
  br label %if.then367

if.end358:                                        ; preds = %if.then308
  %cmp366 = icmp sgt i32 %expediting.0, -1
  br i1 %cmp366, label %if.then367, label %if.else368

if.then367:                                       ; preds = %if.end358, %if.then331, %land.rhs320, %land.rhs311
  tail call void @rcu_expedite_gp() #16
  br label %if.end369

if.else368:                                       ; preds = %if.end358
  tail call void @rcu_unexpedite_gp() #16
  br label %if.end369

if.end369:                                        ; preds = %if.else368, %if.then367
  %inc = add i32 %expediting.0, 1
  %cmp370 = icmp sgt i32 %inc, 3
  %sub372 = xor i32 %expediting.0, -1
  %spec.select = select i1 %cmp370, i32 %sub372, i32 %inc
  br label %if.end385

if.then376.critedge:                              ; preds = %do.body291
  %call377 = tail call zeroext i1 @rcu_gp_is_expedited() #16
  br i1 %call377, label %if.end385, label %land.rhs378

land.rhs378:                                      ; preds = %if.then376.critedge
  %call379 = tail call zeroext i1 @rcu_gp_is_normal() #16
  %lnot380 = xor i1 %call379, true
  br label %if.end385

if.end385:                                        ; preds = %land.rhs378, %if.then376.critedge, %if.end369, %land.lhs.true298
  %expediting.1 = phi i32 [ %spec.select, %if.end369 ], [ %expediting.0, %land.rhs378 ], [ %expediting.0, %if.then376.critedge ], [ 0, %land.lhs.true298 ]
  %can_expedite.1.off0 = phi i1 [ true, %if.end369 ], [ %lnot380, %land.rhs378 ], [ false, %if.then376.critedge ], [ true, %land.lhs.true298 ]
  store i32 10, ptr @rcu_torture_writer_state, align 4
  %call386 = tail call zeroext i1 @rcu_inkernel_boot_has_ended() #16
  %call388 = tail call zeroext i1 @stutter_wait(ptr noundef nonnull @.str.20) #16
  br i1 %call388, label %do.end394, label %do.cond477

do.end394:                                        ; preds = %if.end385
  %90 = load volatile i8, ptr @rcu_fwd_cb_nodelay, align 1, !range !1244
  %tobool396.not = icmp eq i8 %90, 0
  br i1 %tobool396.not, label %land.lhs.true399, label %if.then473

land.lhs.true399:                                 ; preds = %do.end394
  %91 = load ptr, ptr @cur_ops, align 4
  %slow_gps = getelementptr inbounds %struct.rcu_torture_ops, ptr %91, i32 0, i32 27
  %92 = ptrtoint ptr %slow_gps to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %slow_gps, align 4
  %tobool400.not = icmp eq i32 %93, 0
  br i1 %tobool400.not, label %land.lhs.true401, label %if.then473

land.lhs.true401:                                 ; preds = %land.lhs.true399
  %call402 = tail call zeroext i1 @torture_must_stop() #16
  %call386.not = xor i1 %call386, true
  %brmerge = select i1 %call402, i1 true, i1 %call386.not
  br i1 %brmerge, label %if.then473, label %for.body

for.body:                                         ; preds = %for.inc, %land.lhs.true401
  %i.0639 = phi i32 [ %inc470, %for.inc ], [ 0, %land.lhs.true401 ]
  %rtort_free = getelementptr [100 x %struct.rcu_torture], ptr @rcu_tortures, i32 0, i32 %i.0639, i32 2
  %94 = ptrtoint ptr %rtort_free to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile ptr, ptr %rtort_free, align 4
  %cmp.i633.not = icmp eq ptr %95, %rtort_free
  br i1 %cmp.i633.not, label %land.lhs.true410, label %for.inc

land.lhs.true410:                                 ; preds = %for.body
  %arrayidx407 = getelementptr [100 x %struct.rcu_torture], ptr @rcu_tortures, i32 0, i32 %i.0639
  %96 = load volatile ptr, ptr @rcu_torture_current, align 4
  %cmp417.not = icmp eq ptr %96, %arrayidx407
  br i1 %cmp417.not, label %for.inc, label %do.body419

do.body419:                                       ; preds = %land.lhs.true410
  %call.i.i629 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @rcu_torture_writer.___rfd_beenhere, i32 noundef 4) #16
  %97 = load volatile i32, ptr @rcu_torture_writer.___rfd_beenhere, align 4
  %tobool421.not = icmp eq i32 %97, 0
  br i1 %tobool421.not, label %land.lhs.true422, label %do.end453

land.lhs.true422:                                 ; preds = %do.body419
  %call.i.i630 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rcu_torture_writer.___rfd_beenhere, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1254
  tail call void @llvm.prefetch.p0(ptr nonnull @rcu_torture_writer.___rfd_beenhere, i32 1, i32 3, i32 1) #16
  %98 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr nonnull @rcu_torture_writer.___rfd_beenhere) #16, !srcloc !1255
  %asmresult.i.i = extractvalue { i32, i32 } %98, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1256
  %tobool424.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool424.not, label %if.then425, label %do.end453

if.then425:                                       ; preds = %land.lhs.true422
  tail call void @tracing_off() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  %99 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %tobool427.not = icmp eq i32 %99, 0
  br i1 %tobool427.not, label %if.then428, label %do.end431

if.then428:                                       ; preds = %if.then425
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  store i32 3, ptr @rcu_cpu_stall_suppress, align 4
  br label %do.end431

do.end431:                                        ; preds = %if.then428, %if.then425
  tail call void @ftrace_dump(i32 noundef 1) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  %100 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %cmp433 = icmp eq i32 %100, 3
  br i1 %cmp433, label %if.then434, label %do.end453

if.then434:                                       ; preds = %do.end431
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  store i32 0, ptr @rcu_cpu_stall_suppress, align 4
  br label %do.end453

do.end453:                                        ; preds = %if.then434, %do.end431, %land.lhs.true422, %do.body419
  %rtort_pipe_count455 = getelementptr [100 x %struct.rcu_torture], ptr @rcu_tortures, i32 0, i32 %i.0639, i32 1
  %101 = ptrtoint ptr %rtort_pipe_count455 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rtort_pipe_count455, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1288, i32 noundef 9, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.20, i32 noundef %102) #16
  br label %for.inc

for.inc:                                          ; preds = %do.end453, %land.lhs.true410, %for.body
  %inc470 = add nuw nsw i32 %i.0639, 1
  %exitcond.not = icmp eq i32 %inc470, 100
  br i1 %exitcond.not, label %if.then473, label %for.body

if.then473:                                       ; preds = %for.inc, %land.lhs.true401, %land.lhs.true399, %do.end394
  %103 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task, align 8
  tail call void @sched_set_normal(ptr noundef %104, i32 noundef %sub.i) #16
  br label %do.cond477

do.cond477:                                       ; preds = %if.then473, %if.end385, %rcu_torture_alloc.exit, %rcu_torture_alloc.exit.thread
  %expediting.2 = phi i32 [ %expediting.0, %rcu_torture_alloc.exit ], [ %expediting.1, %if.then473 ], [ %expediting.1, %if.end385 ], [ %expediting.0, %rcu_torture_alloc.exit.thread ]
  %can_expedite.2.off0 = phi i1 [ %can_expedite.0.off0, %rcu_torture_alloc.exit ], [ %can_expedite.1.off0, %if.then473 ], [ %can_expedite.1.off0, %if.end385 ], [ %can_expedite.0.off0, %rcu_torture_alloc.exit.thread ]
  %call478 = tail call zeroext i1 @torture_must_stop() #16
  br i1 %call478, label %do.end481, label %do.body64

do.end481:                                        ; preds = %do.cond477
  store ptr null, ptr @rcu_torture_current, align 4
  %105 = tail call i32 @llvm.abs.i32(i32 %expediting.2, i1 false)
  %spec.select625 = sub i32 0, %105
  %cmp490641 = icmp slt i32 %spec.select625, 0
  %or.cond642 = select i1 %can_expedite.2.off0, i1 %cmp490641, i1 false
  br i1 %or.cond642, label %while.body492, label %while.end493

while.body492:                                    ; preds = %while.body492, %do.end481
  %expediting.4643 = phi i32 [ %inc489, %while.body492 ], [ %spec.select625, %do.end481 ]
  %inc489 = add nsw i32 %expediting.4643, 1
  tail call void @rcu_unexpedite_gp() #16
  %cmp490.not = icmp eq i32 %expediting.4643, -1
  br i1 %cmp490.not, label %while.end493, label %while.body492

while.end493:                                     ; preds = %while.body492, %do.end481
  br i1 %can_expedite.2.off0, label %land.rhs496, label %do.end555.critedge

land.rhs496:                                      ; preds = %while.end493
  %call497 = tail call zeroext i1 @rcu_gp_is_expedited() #16
  br i1 %call497, label %land.rhs505, label %if.end558

land.rhs505:                                      ; preds = %land.rhs496
  %.b606615 = load i1, ptr @rcu_torture_writer.__already_done.126, align 1
  br i1 %.b606615, label %if.end558, label %if.then516, !prof !1245

if.then516:                                       ; preds = %land.rhs505
  store i1 true, ptr @rcu_torture_writer.__already_done.126, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1299, i32 noundef 9, ptr noundef null) #16
  br label %if.end558

do.end555.critedge:                               ; preds = %while.end493
  %106 = load ptr, ptr @torture_type, align 4
  %call557 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %106) #19
  br label %if.end558

if.end558:                                        ; preds = %do.end555.critedge, %if.then516, %land.rhs505, %land.rhs496
  store i32 11, ptr @rcu_torture_writer_state, align 4
  tail call void @torture_kthread_stopping(ptr noundef nonnull @.str.20) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_torture_fakewriter(ptr nocapture noundef readnone %arg) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rand = alloca %struct.torture_random_state, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rand) #16
  %0 = ptrtoint ptr %rand to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %rand, align 8
  %1 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end3, label %if.then

if.then:                                          ; preds = %entry
  tail call void @verbose_torout_sleep() #16
  %2 = load ptr, ptr @torture_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %2, ptr noundef nonnull @.str.143) #19
  br label %do.end3

do.end3:                                          ; preds = %if.then, %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %6, i32 noundef 19) #16
  br label %do.body5

do.body5:                                         ; preds = %if.end67, %do.end3
  %call6 = call i32 @torture_random(ptr noundef nonnull %rand) #16
  %rem = urem i32 %call6, 10
  %call7 = call i32 @torture_hrtimeout_jiffies(i32 noundef %rem, ptr noundef nonnull %rand) #16
  %7 = load ptr, ptr @cur_ops, align 4
  %cb_barrier = getelementptr inbounds %struct.rcu_torture_ops, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %cb_barrier to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cb_barrier, align 4
  %cmp.not = icmp eq ptr %9, null
  br i1 %cmp.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body5
  %call8 = call i32 @torture_random(ptr noundef nonnull %rand) #16
  %10 = load i32, ptr @nfakewriters, align 4
  %mul = shl i32 %10, 3
  %rem9 = urem i32 %call8, %mul
  %cmp10 = icmp eq i32 %rem9, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %land.lhs.true
  %11 = load ptr, ptr @cur_ops, align 4
  %cb_barrier12 = getelementptr inbounds %struct.rcu_torture_ops, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %cb_barrier12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cb_barrier12, align 4
  call void %13() #16
  br label %if.end67

if.else:                                          ; preds = %land.lhs.true, %do.body5
  %call13 = call i32 @torture_random(ptr noundef nonnull %rand) #16
  %14 = load i32, ptr @nsynctypes, align 4
  %rem14 = urem i32 %call13, %14
  %arrayidx = getelementptr [5 x i32], ptr @synctype, i32 0, i32 %rem14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  switch i32 %16, label %land.end [
    i32 3, label %if.end67
    i32 4, label %sw.bb
    i32 5, label %sw.bb15
    i32 7, label %sw.bb20
    i32 9, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.else
  %17 = load ptr, ptr @cur_ops, align 4
  %exp_sync = getelementptr inbounds %struct.rcu_torture_ops, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %exp_sync to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %exp_sync, align 4
  call void %19() #16
  br label %if.end67

sw.bb15:                                          ; preds = %if.else
  %20 = load ptr, ptr @cur_ops, align 4
  %get_gp_state = getelementptr inbounds %struct.rcu_torture_ops, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %get_gp_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_gp_state, align 4
  %call16 = call i32 %22() #16
  %call17 = call i32 @torture_random(ptr noundef nonnull %rand) #16
  %rem18 = and i32 %call17, 15
  %call19 = call i32 @torture_hrtimeout_jiffies(i32 noundef %rem18, ptr noundef nonnull %rand) #16
  %23 = load ptr, ptr @cur_ops, align 4
  %cond_sync = getelementptr inbounds %struct.rcu_torture_ops, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %cond_sync to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cond_sync, align 4
  call void %25(i32 noundef %call16) #16
  br label %if.end67

sw.bb20:                                          ; preds = %if.else
  %26 = load ptr, ptr @cur_ops, align 4
  %start_gp_poll = getelementptr inbounds %struct.rcu_torture_ops, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %start_gp_poll to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %start_gp_poll, align 4
  %call21 = call i32 %28() #16
  %29 = load ptr, ptr @cur_ops, align 4
  %poll_gp_state78 = getelementptr inbounds %struct.rcu_torture_ops, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %poll_gp_state78 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %poll_gp_state78, align 4
  %call2279 = call zeroext i1 %31(i32 noundef %call21) #16
  br i1 %call2279, label %if.end67, label %while.body

while.body:                                       ; preds = %while.body, %sw.bb20
  %call23 = call i32 @torture_random(ptr noundef nonnull %rand) #16
  %rem24 = and i32 %call23, 15
  %call25 = call i32 @torture_hrtimeout_jiffies(i32 noundef %rem24, ptr noundef nonnull %rand) #16
  %32 = load ptr, ptr @cur_ops, align 4
  %poll_gp_state = getelementptr inbounds %struct.rcu_torture_ops, ptr %32, i32 0, i32 14
  %33 = ptrtoint ptr %poll_gp_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %poll_gp_state, align 4
  %call22 = call zeroext i1 %34(i32 noundef %call21) #16
  br i1 %call22, label %if.end67, label %while.body

sw.bb26:                                          ; preds = %if.else
  %35 = load ptr, ptr @cur_ops, align 4
  %sync = getelementptr inbounds %struct.rcu_torture_ops, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sync, align 4
  call void %37() #16
  br label %if.end67

land.end:                                         ; preds = %if.else
  %.b77 = load i1, ptr @rcu_torture_fakewriter.__already_done, align 1
  br i1 %.b77, label %if.end67, label %if.then33, !prof !1245

if.then33:                                        ; preds = %land.end
  store i1 true, ptr @rcu_torture_fakewriter.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1350, i32 noundef 9, ptr noundef null) #16
  br label %if.end67

if.end67:                                         ; preds = %if.then33, %land.end, %sw.bb26, %while.body, %sw.bb20, %sw.bb15, %sw.bb, %if.else, %if.then11
  %call68 = call zeroext i1 @stutter_wait(ptr noundef nonnull @.str.28) #16
  %call70 = call zeroext i1 @torture_must_stop() #16
  br i1 %call70, label %do.end73, label %do.body5

do.end73:                                         ; preds = %if.end67
  call void @torture_kthread_stopping(ptr noundef nonnull @.str.28) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rand) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_torture_reader(ptr noundef %arg) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rand = alloca %struct.torture_random_state, align 8
  %t = alloca %struct.timer_list, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = ptrtoint ptr %arg to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rand) #16
  %2 = ptrtoint ptr %rand to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %rand, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %t) #16
  %3 = call ptr @memset(ptr %t, i32 255, i32 48)
  %4 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end3, label %if.then

if.then:                                          ; preds = %entry
  tail call void @verbose_torout_sleep() #16
  %5 = load ptr, ptr @torture_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %5, ptr noundef nonnull @.str.144) #19
  br label %do.end3

do.end3:                                          ; preds = %if.then, %entry
  %6 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %9, i32 noundef 19) #16
  %10 = load i32, ptr @irqreader, align 4
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end3
  %11 = load ptr, ptr @cur_ops, align 4
  %irq_capable = getelementptr inbounds %struct.rcu_torture_ops, ptr %11, i32 0, i32 24
  %12 = ptrtoint ptr %irq_capable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_capable, align 4
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %if.end11, label %do.body8

do.body8:                                         ; preds = %land.lhs.true
  call void @init_timer_on_stack_key(ptr noundef nonnull %t, ptr noundef nonnull @rcu_torture_timer, i32 noundef 0, ptr noundef nonnull @.str.145, ptr noundef nonnull @rcu_torture_reader.__key) #16
  br label %if.end11

if.end11:                                         ; preds = %do.body8, %land.lhs.true, %do.end3
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %t, i32 0, i32 1
  br label %do.body14

do.body14:                                        ; preds = %while.end, %if.end11
  %lastsleep.0 = phi i32 [ %0, %if.end11 ], [ %lastsleep.1, %while.end ]
  %14 = load i32, ptr @irqreader, align 4
  %tobool15.not = icmp eq i32 %14, 0
  br i1 %tobool15.not, label %if.end25, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %do.body14
  %15 = load ptr, ptr @cur_ops, align 4
  %irq_capable17 = getelementptr inbounds %struct.rcu_torture_ops, ptr %15, i32 0, i32 24
  %16 = ptrtoint ptr %irq_capable17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_capable17, align 4
  %tobool18.not = icmp eq i32 %17, 0
  br i1 %tobool18.not, label %if.end25, label %if.then19

if.then19:                                        ; preds = %land.lhs.true16
  %18 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.not, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.then19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %20, 1
  %call23 = call i32 @mod_timer(ptr noundef nonnull %t, i32 noundef %add) #16
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.then19, %land.lhs.true16, %do.body14
  %call26 = call fastcc zeroext i1 @rcu_torture_one_read(ptr noundef nonnull %rand, i32 noundef %1)
  br i1 %call26, label %if.end31, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %if.end25
  %call28 = call zeroext i1 @torture_must_stop() #16
  br i1 %call28, label %if.end31, label %if.then29

if.then29:                                        ; preds = %land.lhs.true27
  %call30 = call i32 @schedule_timeout_interruptible(i32 noundef 100) #16
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %land.lhs.true27, %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %lastsleep.0, %21
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true32, label %if.end37

land.lhs.true32:                                  ; preds = %if.end31
  %call33 = call zeroext i1 @torture_must_stop() #16
  br i1 %call33, label %if.end37, label %if.then34

if.then34:                                        ; preds = %land.lhs.true32
  %call35 = call i32 @torture_hrtimeout_us(i32 noundef 500, i32 noundef 1000, ptr noundef nonnull %rand) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add36 = add i32 %22, 10
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %land.lhs.true32, %if.end31
  %lastsleep.1 = phi i32 [ %lastsleep.0, %land.lhs.true32 ], [ %add36, %if.then34 ], [ %lastsleep.0, %if.end31 ]
  %call3857 = call i32 @torture_num_online_cpus() #16
  %cmp3958 = icmp slt i32 %call3857, %1
  br i1 %cmp3958, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.body, %if.end37
  %call40 = call zeroext i1 @torture_must_stop() #16
  br i1 %call40, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %call41 = call i32 @schedule_timeout_interruptible(i32 noundef 20) #16
  %call38 = call i32 @torture_num_online_cpus() #16
  %cmp39 = icmp slt i32 %call38, %1
  br i1 %cmp39, label %land.rhs, label %while.end

while.end:                                        ; preds = %while.body, %land.rhs, %if.end37
  %call42 = call zeroext i1 @stutter_wait(ptr noundef nonnull @.str.34) #16
  %call44 = call zeroext i1 @torture_must_stop() #16
  br i1 %call44, label %do.end46, label %do.body14

do.end46:                                         ; preds = %while.end
  %23 = load i32, ptr @irqreader, align 4
  %tobool47.not = icmp eq i32 %23, 0
  br i1 %tobool47.not, label %if.end53, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %do.end46
  %24 = load ptr, ptr @cur_ops, align 4
  %irq_capable49 = getelementptr inbounds %struct.rcu_torture_ops, ptr %24, i32 0, i32 24
  %25 = ptrtoint ptr %irq_capable49 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq_capable49, align 4
  %tobool50.not = icmp eq i32 %26, 0
  br i1 %tobool50.not, label %if.end53, label %if.then51

if.then51:                                        ; preds = %land.lhs.true48
  %call52 = call i32 @del_timer_sync(ptr noundef nonnull %t) #16
  call void @destroy_timer_on_stack(ptr noundef nonnull %t) #16
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %land.lhs.true48, %do.end46
  call void @torture_kthread_stopping(ptr noundef nonnull @.str.34) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %t) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rand) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_nocb_toggle(ptr nocapture noundef readnone %arg) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rand = alloca %struct.torture_random_state, align 8
  %toggle_delay = alloca i64, align 8
  %0 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %static_prio.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %static_prio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %static_prio.i, align 4
  %sub.i = add i32 %5, -120
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rand) #16
  %6 = ptrtoint ptr %rand to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %rand, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %toggle_delay) #16
  %7 = ptrtoint ptr %toggle_delay to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %toggle_delay, align 8, !annotation !1247
  %8 = load i32, ptr @nocbs_toggle, align 4
  %conv = sext i32 %8 to i64
  %mul.i = mul nsw i64 %conv, 1000000
  %9 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.end6, label %if.then

if.then:                                          ; preds = %entry
  tail call void @verbose_torout_sleep() #16
  %10 = load ptr, ptr @torture_type, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %10, ptr noundef nonnull @.str.171) #19
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %call7160 = tail call zeroext i1 @rcu_inkernel_boot_has_ended() #16
  br i1 %call7160, label %for.cond.preheader, label %while.body

for.cond.preheader:                               ; preds = %while.body, %do.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  br label %for.cond

while.body:                                       ; preds = %while.body, %do.end6
  %call8 = tail call i32 @schedule_timeout_interruptible(i32 noundef 10) #16
  %call7 = tail call zeroext i1 @rcu_inkernel_boot_has_ended() #16
  br i1 %call7, label %for.cond.preheader, label %while.body

for.cond:                                         ; preds = %for.cond, %for.cond.preheader
  %cpu.0 = phi i32 [ %call9, %for.cond ], [ -1, %for.cond.preheader ]
  %call9 = tail call i32 @cpumask_next(i32 noundef %cpu.0, ptr noundef nonnull @__cpu_online_mask) #20
  %cmp = icmp ult i32 %call9, %11
  br i1 %cmp, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond
  %cmp11 = icmp slt i32 %cpu.0, 0
  br i1 %cmp11, label %do.end25, label %if.end31, !prof !1246

do.end25:                                         ; preds = %for.end
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1770, i32 noundef 9, ptr noundef null) #16
  br label %if.end31

if.end31:                                         ; preds = %do.end25, %for.end
  %cmp39 = icmp sgt i64 %mul.i, 4294967295
  %12 = lshr exact i64 %mul.i, 3
  %conv42 = trunc i64 %12 to i32
  %toggle_fuzz.0 = select i1 %cmp39, i32 536870911, i32 %conv42
  %cmp44 = icmp eq i32 %toggle_fuzz.0, 0
  %spec.store.select = select i1 %cmp44, i32 1000, i32 %toggle_fuzz.0
  %add = add i32 %cpu.0, 1
  br label %do.body48

do.body48:                                        ; preds = %do.cond142, %if.end31
  %call49 = call i32 @torture_random(ptr noundef nonnull %rand) #16
  %shr50 = ashr i32 %call49, 4
  %rem = srem i32 %shr50, %add
  %and = and i32 %call49, 1
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %if.else54, label %if.then52

if.then52:                                        ; preds = %do.body48
  %call53 = call i32 @rcu_nocb_cpu_offload(i32 noundef %rem) #16
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_nocb_offload, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr nonnull @n_nocb_offload, i32 1, i32 3, i32 1) #16
  %13 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_nocb_offload, ptr nonnull @n_nocb_offload, i32 1, ptr nonnull elementtype(i32) @n_nocb_offload) #16, !srcloc !1251
  br label %if.end56

if.else54:                                        ; preds = %do.body48
  %call55 = call i32 @rcu_nocb_cpu_deoffload(i32 noundef %rem) #16
  %call.i.i159 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_nocb_deoffload, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr nonnull @n_nocb_deoffload, i32 1, i32 3, i32 1) #16
  %14 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_nocb_deoffload, ptr nonnull @n_nocb_deoffload, i32 1, ptr nonnull elementtype(i32) @n_nocb_deoffload) #16, !srcloc !1251
  br label %if.end56

if.end56:                                         ; preds = %if.else54, %if.then52
  %call57 = call i32 @torture_random(ptr noundef nonnull %rand) #16
  %rem58 = urem i32 %call57, %spec.store.select
  %conv59 = zext i32 %rem58 to i64
  %add60 = add nsw i64 %mul.i, %conv59
  %15 = ptrtoint ptr %toggle_delay to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %add60, ptr %toggle_delay, align 8
  br label %__here

__here:                                           ; preds = %if.end56
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 212
  %18 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 ptrtoint (ptr blockaddress(@rcu_nocb_toggle, %__here) to i32), ptr %task_state_change, align 4
  %19 = load ptr, ptr %task, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %19, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1257
  %call136 = call i32 @schedule_hrtimeout(ptr noundef nonnull %toggle_delay, i32 noundef 1) #16
  %call137 = call zeroext i1 @stutter_wait(ptr noundef nonnull @.str.40) #16
  br i1 %call137, label %if.then138, label %do.cond142

if.then138:                                       ; preds = %__here
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  call void @sched_set_normal(ptr noundef %22, i32 noundef %sub.i) #16
  br label %do.cond142

do.cond142:                                       ; preds = %if.then138, %__here
  %call143 = call zeroext i1 @torture_must_stop() #16
  br i1 %call143, label %do.end146, label %do.body48

do.end146:                                        ; preds = %do.cond142
  call void @torture_kthread_stopping(ptr noundef nonnull @.str.40) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %toggle_delay) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rand) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_torture_stats(ptr nocapture noundef readnone %arg) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body3.preheader, label %if.then

if.then:                                          ; preds = %entry
  tail call void @verbose_torout_sleep() #16
  %1 = load ptr, ptr @torture_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %1, ptr noundef nonnull @.str.172) #19
  br label %do.body3.preheader

do.body3.preheader:                               ; preds = %if.then, %entry
  br label %do.body3

do.body3:                                         ; preds = %do.body3, %do.body3.preheader
  %2 = load i32, ptr @stat_interval, align 4
  %mul = mul i32 %2, 100
  %call4 = tail call i32 @schedule_timeout_interruptible(i32 noundef %mul) #16
  tail call fastcc void @rcu_torture_stats_print()
  tail call void @torture_shutdown_absorb(ptr noundef nonnull @.str.44) #16
  %call5 = tail call zeroext i1 @torture_must_stop() #16
  br i1 %call5, label %do.end6, label %do.body3

do.end6:                                          ; preds = %do.body3
  tail call void @torture_kthread_stopping(ptr noundef nonnull @.str.44) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @torture_shuffle_init(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @torture_stutter_init(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_torture_fqs(ptr nocapture noundef readnone %arg) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %static_prio.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %static_prio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %static_prio.i, align 4
  %sub.i = add i32 %5, -120
  %6 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body6.preheader, label %if.then

if.then:                                          ; preds = %entry
  tail call void @verbose_torout_sleep() #16
  %7 = load ptr, ptr @torture_type, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %7, ptr noundef nonnull @.str.237) #19
  br label %do.body6.preheader

do.body6.preheader:                               ; preds = %if.then, %entry
  br label %do.body6

do.body6:                                         ; preds = %do.cond28, %do.body6.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %9 = load i32, ptr @fqs_stutter, align 4
  %mul.neg = mul i32 %9, -100
  %add.neg = sub i32 %mul.neg, %8
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub33 = add i32 %add.neg, %10
  %cmp34 = icmp slt i32 %sub33, 0
  br i1 %cmp34, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.body, %do.body6
  %call7 = tail call zeroext i1 @kthread_should_stop() #16
  br i1 %call7, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %call8 = tail call i32 @schedule_timeout_interruptible(i32 noundef 1) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %11
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.rhs, label %while.end

while.end:                                        ; preds = %while.body, %land.rhs, %do.body6
  %12 = load i32, ptr @fqs_duration, align 4
  %cmp1035 = icmp sgt i32 %12, 0
  br i1 %cmp1035, label %land.rhs11, label %while.end22

land.rhs11:                                       ; preds = %while.body15, %while.end
  %fqs_burst_remaining.036 = phi i32 [ %sub21, %while.body15 ], [ %12, %while.end ]
  %call12 = tail call zeroext i1 @kthread_should_stop() #16
  br i1 %call12, label %while.end22, label %while.body15

while.body15:                                     ; preds = %land.rhs11
  %13 = load ptr, ptr @cur_ops, align 4
  %fqs = getelementptr inbounds %struct.rcu_torture_ops, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %fqs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fqs, align 4
  tail call void %15() #16
  %16 = load i32, ptr @fqs_holdoff, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #16
  %18 = load i32, ptr @fqs_holdoff, align 4
  %sub21 = sub i32 %fqs_burst_remaining.036, %18
  %cmp10 = icmp sgt i32 %sub21, 0
  br i1 %cmp10, label %land.rhs11, label %while.end22

while.end22:                                      ; preds = %while.body15, %land.rhs11, %while.end
  %call23 = tail call zeroext i1 @stutter_wait(ptr noundef nonnull @.str.50) #16
  br i1 %call23, label %if.then24, label %do.cond28

if.then24:                                        ; preds = %while.end22
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  tail call void @sched_set_normal(ptr noundef %20, i32 noundef %sub.i) #16
  br label %do.cond28

do.cond28:                                        ; preds = %if.then24, %while.end22
  %call29 = tail call zeroext i1 @torture_must_stop() #16
  br i1 %call29, label %do.end31, label %do.body6

do.end31:                                         ; preds = %do.cond28
  tail call void @torture_kthread_stopping(ptr noundef nonnull @.str.50) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rcu_torture_can_boost() unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @test_boost, align 4
  switch i32 %0, label %cleanup [
    i32 1, label %land.lhs.true
    i32 2, label %if.end
  ]

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr @cur_ops, align 4
  %can_boost = getelementptr inbounds %struct.rcu_torture_ops, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %can_boost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %can_boost, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr @cur_ops, align 4
  %start_gp_poll = getelementptr inbounds %struct.rcu_torture_ops, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %start_gp_poll to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %start_gp_poll, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %poll_gp_state = getelementptr inbounds %struct.rcu_torture_ops, ptr %4, i32 0, i32 14
  %7 = ptrtoint ptr %poll_gp_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %poll_gp_state, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %lor.lhs.false
  %call = tail call i32 @rcu_get_gp_kthreads_prio() #16
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end6
  %cmp10 = icmp slt i32 %call, 2
  br i1 %cmp10, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.end9
  %.b = load i1, ptr @rcu_torture_can_boost.boost_warn_once, align 4
  br i1 %.b, label %cleanup, label %do.end

do.end:                                           ; preds = %if.then11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.240) #19
  store i1 true, ptr @rcu_torture_can_boost.boost_warn_once, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then11, %if.end9, %if.end6, %lor.lhs.false, %if.end, %land.lhs.true, %entry
  %retval.0 = phi i1 [ false, %do.end ], [ false, %lor.lhs.false ], [ false, %if.end ], [ false, %if.end6 ], [ false, %if.then11 ], [ true, %if.end9 ], [ false, %land.lhs.true ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcutorture_booster_init(i32 noundef %cpu) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x ptr], ptr @boost_tasks, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @boost_mutex, i32 noundef 0) #16
  %2 = load i32, ptr @old_rt_runtime, align 4
  %cmp.not.i = icmp eq i32 %2, -1
  br i1 %cmp.not.i, label %if.end.i, label %rcu_torture_disable_rt_throttle.exit

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_runtime to i32))
  %3 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  store i32 %3, ptr @old_rt_runtime, align 4
  store i32 -1, ptr @sysctl_sched_rt_runtime, align 4
  br label %rcu_torture_disable_rt_throttle.exit

rcu_torture_disable_rt_throttle.exit:             ; preds = %if.end.i, %if.end
  %4 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end6, label %if.then2

if.then2:                                         ; preds = %rcu_torture_disable_rt_throttle.exit
  tail call void @verbose_torout_sleep() #16
  %5 = load ptr, ptr @torture_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %5, ptr noundef nonnull @.str.242) #19
  br label %do.end6

do.end6:                                          ; preds = %if.then2, %rcu_torture_disable_rt_throttle.exit
  %call.i = tail call ptr @kthread_create_on_cpu(ptr noundef nonnull @rcu_torture_boost, ptr noundef null, i32 noundef %cpu, ptr noundef nonnull @.str.243) #16
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then11, label %if.end26

if.then11:                                        ; preds = %do.end6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %call.i to i32
  %8 = load i32, ptr @verbose, align 4
  %tobool15.not = icmp eq i32 %8, 0
  br i1 %tobool15.not, label %do.end24, label %if.then16

if.then16:                                        ; preds = %if.then11
  tail call void @verbose_torout_sleep() #16
  %9 = load ptr, ptr @torture_type, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %9, ptr noundef nonnull @.str.246) #19
  br label %do.end24

do.end24:                                         ; preds = %if.then16, %if.then11
  %10 = load i32, ptr @n_rcu_torture_boost_ktrerror, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr @n_rcu_torture_boost_ktrerror, align 4
  br label %cleanup.sink.split

if.end26:                                         ; preds = %do.end6
  %call2.i = tail call i32 @wake_up_process(ptr noundef %call.i) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end26, %do.end24
  %call.i.sink = phi ptr [ %call.i, %if.end26 ], [ null, %do.end24 ]
  %retval.0.ph = phi i32 [ 0, %if.end26 ], [ %7, %do.end24 ]
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.sink, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @boost_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcutorture_booster_cleanup(i32 noundef %cpu) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %t = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #16
  %arrayidx = getelementptr [4 x ptr], ptr @boost_tasks, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @boost_mutex, i32 noundef 0) #16
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %t, align 4
  store ptr null, ptr %arrayidx, align 4
  %5 = load i32, ptr @old_rt_runtime, align 4
  %cmp.i = icmp eq i32 %5, -1
  br i1 %cmp.i, label %rcu_torture_enable_rt_throttle.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @sysctl_sched_rt_runtime to i32))
  store i32 %5, ptr @sysctl_sched_rt_runtime, align 4
  store i32 -1, ptr @old_rt_runtime, align 4
  br label %rcu_torture_enable_rt_throttle.exit

rcu_torture_enable_rt_throttle.exit:              ; preds = %if.end.i, %if.end
  tail call void @mutex_unlock(ptr noundef nonnull @boost_mutex) #16
  call void @_torture_stop_kthread(ptr noundef nonnull @.str.264, ptr noundef nonnull %t) #16
  br label %cleanup

cleanup:                                          ; preds = %rcu_torture_enable_rt_throttle.exit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_setscheduler_nocheck(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @torture_shutdown_init(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @torture_onoff_init(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcutorture_sync() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cur_ops, align 4
  %sync = getelementptr inbounds %struct.rcu_torture_ops, ptr %0, i32 0, i32 10
  %1 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sync, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr @rcutorture_sync.n, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr @rcutorture_sync.n, align 4
  %and = and i32 %inc, 4095
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void %2() #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcu_torture_stall_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @stall_cpu, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @stall_gp_kthread, align 4
  %cmp1 = icmp slt i32 %1, 1
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = tail call i32 @_torture_create_kthread(ptr noundef nonnull @rcu_torture_stall, ptr noundef null, ptr noundef nonnull @.str.265, ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.267, ptr noundef nonnull @stall_task) #16
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcu_torture_fwd_prog_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @fwd_progress, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not = icmp ult i32 %0, %1
  br i1 %cmp.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.end
  %2 = load i32, ptr @verbose, align 4
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %do.end7, label %if.then3

if.then3:                                         ; preds = %do.body
  tail call void @verbose_torout_sleep() #16
  %3 = load ptr, ptr @torture_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %3, ptr noundef nonnull @.str.288) #19
  br label %do.end7

do.end7:                                          ; preds = %if.then3, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  br label %if.end11.sink.split

if.else:                                          ; preds = %if.end
  %cmp8 = icmp slt i32 %0, 0
  br i1 %cmp8, label %if.end11.sink.split, label %if.end11

if.end11.sink.split:                              ; preds = %if.else, %do.end7
  %.sink = phi i32 [ %4, %do.end7 ], [ %1, %if.else ]
  store i32 %.sink, ptr @fwd_progress, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %if.else
  %5 = load ptr, ptr @cur_ops, align 4
  %sync = getelementptr inbounds %struct.rcu_torture_ops, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sync, align 4
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end11
  %call13 = getelementptr inbounds %struct.rcu_torture_ops, ptr %5, i32 0, i32 16
  %8 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call13, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %do.body25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end11
  %cbflood_max = getelementptr inbounds %struct.rcu_torture_ops, ptr %5, i32 0, i32 23
  %10 = ptrtoint ptr %cbflood_max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cbflood_max, align 4
  %tobool15.not = icmp eq i32 %11, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %lor.lhs.false22

land.lhs.true16:                                  ; preds = %lor.lhs.false
  %stall_dur = getelementptr inbounds %struct.rcu_torture_ops, ptr %5, i32 0, i32 22
  %12 = ptrtoint ptr %stall_dur to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stall_dur, align 4
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %do.body25, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %land.lhs.true16
  %call20 = tail call i32 %13() #16
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %do.body25, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18, %lor.lhs.false
  %14 = load ptr, ptr @cur_ops, align 4
  %cmp23 = icmp eq ptr %14, @rcu_busted_ops
  br i1 %cmp23, label %do.body25, label %if.end36

do.body25:                                        ; preds = %lor.lhs.false22, %lor.lhs.false18, %land.lhs.true16, %land.lhs.true
  %15 = load i32, ptr @verbose, align 4
  %tobool26.not = icmp eq i32 %15, 0
  br i1 %tobool26.not, label %do.end35, label %if.then27

if.then27:                                        ; preds = %do.body25
  tail call void @verbose_torout_sleep() #16
  %16 = load ptr, ptr @torture_type, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %16, ptr noundef nonnull @.str.291) #19
  br label %do.end35

do.end35:                                         ; preds = %if.then27, %do.body25
  store i32 0, ptr @fwd_progress, align 4
  br label %cleanup

if.end36:                                         ; preds = %lor.lhs.false22
  %17 = load i32, ptr @stall_cpu, align 4
  %cmp37 = icmp sgt i32 %17, 0
  br i1 %cmp37, label %do.body39, label %if.end71

do.body39:                                        ; preds = %if.end36
  %18 = load i32, ptr @verbose, align 4
  %tobool40.not = icmp eq i32 %18, 0
  br i1 %tobool40.not, label %do.end49, label %if.then41

if.then41:                                        ; preds = %do.body39
  tail call void @verbose_torout_sleep() #16
  %19 = load ptr, ptr @torture_type, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %19, ptr noundef nonnull @.str.294) #19
  br label %do.end49

do.end49:                                         ; preds = %if.then41, %do.body39
  store i32 0, ptr @fwd_progress, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2567, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end71:                                         ; preds = %if.end36
  %20 = load i32, ptr @fwd_progress_holdoff, align 4
  %cmp72 = icmp slt i32 %20, 1
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end71
  store i32 1, ptr @fwd_progress_holdoff, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end71
  %21 = load i32, ptr @fwd_progress_div, align 4
  %cmp75 = icmp slt i32 %21, 1
  br i1 %cmp75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end74
  store i32 4, ptr @fwd_progress_div, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end74
  %22 = load i32, ptr @fwd_progress, align 4
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 1348) #16
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %kcalloc.exit, label %if.end7.i.i, !prof !1246

if.end7.i.i:                                      ; preds = %if.end77
  %25 = extractvalue { i32, i1 } %23, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #21
  br label %kcalloc.exit

kcalloc.exit:                                     ; preds = %if.end7.i.i, %if.end77
  %retval.0.i.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %if.end77 ]
  %26 = load i32, ptr @fwd_progress, align 4
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 4) #16
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %kcalloc.exit161.thread, label %if.end7.i.i159, !prof !1246

kcalloc.exit161.thread:                           ; preds = %kcalloc.exit
  store ptr null, ptr @fwd_prog_tasks, align 4
  br label %if.then83

if.end7.i.i159:                                   ; preds = %kcalloc.exit
  %29 = extractvalue { i32, i1 } %27, 0
  %call8.i.i158 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #21
  store ptr %call8.i.i158, ptr @fwd_prog_tasks, align 4
  %tobool80.not = icmp eq ptr %retval.0.i.i, null
  %tobool82.not = icmp eq ptr %call8.i.i158, null
  %or.cond = select i1 %tobool80.not, i1 true, i1 %tobool82.not
  br i1 %or.cond, label %if.then83, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end7.i.i159
  %30 = load i32, ptr @fwd_progress, align 4
  %cmp85167 = icmp sgt i32 %30, 0
  br i1 %cmp85167, label %do.body86, label %for.end

if.then83:                                        ; preds = %if.end7.i.i159, %kcalloc.exit161.thread
  tail call void @kfree(ptr noundef %retval.0.i.i) #16
  %31 = load ptr, ptr @fwd_prog_tasks, align 4
  tail call void @kfree(ptr noundef %31) #16
  store ptr null, ptr @fwd_prog_tasks, align 4
  store i32 0, ptr @fwd_progress, align 4
  br label %cleanup

do.body86:                                        ; preds = %do.body86, %for.cond.preheader
  %i.0168 = phi i32 [ %inc, %do.body86 ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr %struct.rcu_fwd, ptr %retval.0.i.i, i32 %i.0168
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.295, ptr noundef nonnull @rcu_torture_fwd_prog_init.__key, i16 noundef signext 3) #16
  %rcu_fwd_cb_head = getelementptr %struct.rcu_fwd, ptr %retval.0.i.i, i32 %i.0168, i32 1
  %rcu_fwd_cb_tail = getelementptr %struct.rcu_fwd, ptr %retval.0.i.i, i32 %i.0168, i32 2
  %32 = ptrtoint ptr %rcu_fwd_cb_tail to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %rcu_fwd_cb_head, ptr %rcu_fwd_cb_tail, align 4
  %rcu_fwd_id = getelementptr %struct.rcu_fwd, ptr %retval.0.i.i, i32 %i.0168, i32 7
  %33 = ptrtoint ptr %rcu_fwd_id to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %i.0168, ptr %rcu_fwd_id, align 4
  %inc = add nuw nsw i32 %i.0168, 1
  %34 = load i32, ptr @fwd_progress, align 4
  %cmp85 = icmp slt i32 %inc, %34
  br i1 %cmp85, label %do.body86, label %for.end

for.end:                                          ; preds = %do.body86, %for.cond.preheader
  tail call void @mutex_lock_nested(ptr noundef nonnull @rcu_fwd_mutex, i32 noundef 0) #16
  store ptr %retval.0.i.i, ptr @rcu_fwds, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @rcu_fwd_mutex) #16
  %call93 = tail call i32 @register_oom_notifier(ptr noundef nonnull @rcutorture_oom_nb) #16
  %35 = load i32, ptr @fwd_progress, align 4
  %cmp95169 = icmp sgt i32 %35, 0
  br i1 %cmp95169, label %for.body96, label %cleanup

for.body96:                                       ; preds = %for.inc103, %for.end
  %i.1170 = phi i32 [ %inc104, %for.inc103 ], [ 0, %for.end ]
  %36 = load ptr, ptr @rcu_fwds, align 4
  %arrayidx97 = getelementptr %struct.rcu_fwd, ptr %36, i32 %i.1170
  %37 = load ptr, ptr @fwd_prog_tasks, align 4
  %arrayidx98 = getelementptr ptr, ptr %37, i32 %i.1170
  %call99 = tail call i32 @_torture_create_kthread(ptr noundef nonnull @rcu_torture_fwd_prog, ptr noundef %arrayidx97, ptr noundef nonnull @.str.296, ptr noundef nonnull @.str.297, ptr noundef nonnull @.str.298, ptr noundef %arrayidx98) #16
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %for.inc103, label %if.then101

if.then101:                                       ; preds = %for.body96
  store i32 %i.1170, ptr @fwd_progress, align 4
  br label %cleanup

for.inc103:                                       ; preds = %for.body96
  %inc104 = add nuw nsw i32 %i.1170, 1
  %38 = load i32, ptr @fwd_progress, align 4
  %cmp95 = icmp slt i32 %inc104, %38
  br i1 %cmp95, label %for.body96, label %cleanup

cleanup:                                          ; preds = %for.inc103, %if.then101, %for.end, %if.then83, %do.end49, %do.end35, %entry
  %retval.0 = phi i32 [ 0, %do.end35 ], [ 0, %do.end49 ], [ %call99, %if.then101 ], [ -12, %if.then83 ], [ 0, %entry ], [ 0, %for.end ], [ 0, %for.inc103 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcu_torture_barrier_init() unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @n_barrier_cbs, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @cur_ops, align 4
  %call = getelementptr inbounds %struct.rcu_torture_ops, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %do.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %cb_barrier = getelementptr inbounds %struct.rcu_torture_ops, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %cb_barrier to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb_barrier, align 4
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %do.end, label %if.end10

do.end:                                           ; preds = %lor.lhs.false, %if.end
  %6 = load ptr, ptr @torture_type, align 4
  %name = getelementptr inbounds %struct.rcu_torture_ops, ptr %1, i32 0, i32 29
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.331, ptr noundef %6, ptr noundef %8) #19
  %9 = load ptr, ptr @torture_type, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.334, ptr noundef %9) #19
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @barrier_cbs_count, i32 noundef 4) #16
  store volatile i32 0, ptr @barrier_cbs_count, align 4
  %call.i.i33 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @barrier_cbs_invoked, i32 noundef 4) #16
  store volatile i32 0, ptr @barrier_cbs_invoked, align 4
  %10 = load i32, ptr @n_barrier_cbs, align 4
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 4) #16
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %kcalloc.exit, label %if.end7.i.i, !prof !1246

if.end7.i.i:                                      ; preds = %if.end10
  %13 = extractvalue { i32, i1 } %11, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #21
  br label %kcalloc.exit

kcalloc.exit:                                     ; preds = %if.end7.i.i, %if.end10
  %retval.0.i.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %if.end10 ]
  store ptr %retval.0.i.i, ptr @barrier_cbs_tasks, align 4
  %14 = load i32, ptr @n_barrier_cbs, align 4
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 52) #16
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %kcalloc.exit66.thread, label %if.end7.i.i64, !prof !1246

kcalloc.exit66.thread:                            ; preds = %kcalloc.exit
  store ptr null, ptr @barrier_cbs_wq, align 4
  br label %cleanup

if.end7.i.i64:                                    ; preds = %kcalloc.exit
  %17 = extractvalue { i32, i1 } %15, 0
  %call8.i.i63 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #21
  store ptr %call8.i.i63, ptr @barrier_cbs_wq, align 4
  %18 = load ptr, ptr @barrier_cbs_tasks, align 4
  %cmp13 = icmp eq ptr %18, null
  %tobool.not = icmp eq ptr %call8.i.i63, null
  %or.cond = select i1 %cmp13, i1 true, i1 %tobool.not
  br i1 %or.cond, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end7.i.i64
  %19 = load i32, ptr @n_barrier_cbs, align 4
  %cmp1771 = icmp sgt i32 %19, 0
  br i1 %cmp1771, label %do.body18, label %for.end

for.cond:                                         ; preds = %do.body18
  %inc = add nuw nsw i32 %i.072, 1
  %20 = load i32, ptr @n_barrier_cbs, align 4
  %cmp17 = icmp slt i32 %inc, %20
  br i1 %cmp17, label %do.body18, label %for.end

do.body18:                                        ; preds = %for.cond, %for.cond.preheader
  %i.072 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %21 = load ptr, ptr @barrier_cbs_wq, align 4
  %arrayidx = getelementptr %struct.wait_queue_head, ptr %21, i32 %i.072
  tail call void @__init_waitqueue_head(ptr noundef %arrayidx, ptr noundef nonnull @.str.336, ptr noundef nonnull @rcu_torture_barrier_init.__key) #16
  %22 = inttoptr i32 %i.072 to ptr
  %23 = load ptr, ptr @barrier_cbs_tasks, align 4
  %arrayidx21 = getelementptr ptr, ptr %23, i32 %i.072
  %call22 = tail call i32 @_torture_create_kthread(ptr noundef nonnull @rcu_torture_barrier_cbs, ptr noundef %22, ptr noundef nonnull @.str.337, ptr noundef nonnull @.str.338, ptr noundef nonnull @.str.339, ptr noundef %arrayidx21) #16
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %for.cond, label %cleanup

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %call26 = tail call i32 @_torture_create_kthread(ptr noundef nonnull @rcu_torture_barrier, ptr noundef null, ptr noundef nonnull @.str.340, ptr noundef nonnull @.str.341, ptr noundef nonnull @.str.342, ptr noundef nonnull @barrier_task) #16
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.body18, %if.end7.i.i64, %kcalloc.exit66.thread, %do.end, %entry
  %retval.0 = phi i32 [ 0, %do.end ], [ %call26, %for.end ], [ 0, %entry ], [ -12, %if.end7.i.i64 ], [ -12, %kcalloc.exit66.thread ], [ %call22, %do.body18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcu_torture_read_exit_init() unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @read_exit_burst, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %return, label %do.body

do.body:                                          ; preds = %entry
  tail call void @__init_waitqueue_head(ptr noundef nonnull @read_exit_wq, ptr noundef nonnull @.str.352, ptr noundef nonnull @rcu_torture_read_exit_init.__key) #16
  store i8 0, ptr @read_exit_child_stop, align 1
  store i8 0, ptr @read_exit_child_stopped, align 1
  %call = tail call i32 @_torture_create_kthread(ptr noundef nonnull @rcu_torture_read_exit, ptr noundef null, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.354, ptr noundef nonnull @.str.355, ptr noundef nonnull @read_exit_task) #16
  br label %return

return:                                           ; preds = %do.body, %entry
  %retval.0 = phi i32 [ %call, %do.body ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_test_debug_objects() unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rh1 = alloca %struct.callback_head, align 4
  %rh2 = alloca %struct.callback_head, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rh1) #16
  %0 = ptrtoint ptr %rh1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rh1, align 4, !annotation !1247
  %1 = getelementptr inbounds %struct.callback_head, ptr %rh1, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !1247
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rh2) #16
  %3 = ptrtoint ptr %rh2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %rh2, align 4, !annotation !1247
  %4 = getelementptr inbounds %struct.callback_head, ptr %rh2, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !1247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 8) #23
  call void @init_rcu_head_on_stack(ptr noundef nonnull %rh1) #16
  call void @init_rcu_head_on_stack(ptr noundef nonnull %rh2) #16
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.367, ptr noundef nonnull @.str.240) #19
  %7 = call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %10, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !1258
  %11 = call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !1259
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #16
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 696, ptr noundef nonnull @.str.64) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %entry
  call void @call_rcu(ptr noundef nonnull %rh1, ptr noundef nonnull @rcu_torture_leak_cb) #16
  %15 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !1260
  %and.i.i = and i32 %15, 128
  %tobool.not = icmp eq i32 %and.i.i, 0
  call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #16, !srcloc !1261
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @trace_hardirqs_off() #16
  br label %if.end

if.end:                                           ; preds = %if.then, %rcu_read_lock.exit
  call void @call_rcu(ptr noundef nonnull %rh2, ptr noundef nonnull @rcu_torture_leak_cb) #16
  call void @call_rcu(ptr noundef nonnull %rh2, ptr noundef nonnull @rcu_torture_err_cb) #16
  %tobool10.not = icmp eq ptr %call7.i, null
  br i1 %tobool10.not, label %do.body13, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @call_rcu(ptr noundef nonnull %call7.i, ptr noundef nonnull @rcu_torture_leak_cb) #16
  call void @call_rcu(ptr noundef nonnull %call7.i, ptr noundef nonnull @rcu_torture_err_cb) #16
  br label %do.body13

do.body13:                                        ; preds = %if.then11, %if.end
  call void @trace_hardirqs_on() #16
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !1262
  %call.i28 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i28, label %rcu_read_unlock.exit, label %land.lhs.true.i31

land.lhs.true.i31:                                ; preds = %do.body13
  %call1.i29 = call i32 @debug_lockdep_rcu_enabled() #16
  %tobool.not.i30 = icmp eq i32 %call1.i29, 0
  br i1 %tobool.not.i30, label %rcu_read_unlock.exit, label %land.lhs.true2.i33

land.lhs.true2.i33:                               ; preds = %land.lhs.true.i31
  %.b4.i32 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32, label %rcu_read_unlock.exit, label %if.then.i34

if.then.i34:                                      ; preds = %land.lhs.true2.i33
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 724, ptr noundef nonnull @.str.65) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i34, %land.lhs.true2.i33, %land.lhs.true.i31, %do.body13
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !1263
  %16 = call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i.i.i.i35 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i35 to ptr
  %preempt_count.i.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i36, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i36, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !1264
  %20 = call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i.i26 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  call void @rcu_barrier() #16
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.370, ptr noundef nonnull @.str.240) #19
  call void @destroy_rcu_head_on_stack(ptr noundef nonnull %rh1) #16
  call void @destroy_rcu_head_on_stack(ptr noundef nonnull %rh2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rh2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rh1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @torture_init_end() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_power_off() local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_sync_torture_init() #7 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  store volatile ptr @rcu_torture_removed, ptr @rcu_torture_removed, align 4
  store ptr @rcu_torture_removed, ptr getelementptr inbounds (%struct.list_head, ptr @rcu_torture_removed, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_torture_read_lock() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !1259
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 696, ptr noundef nonnull @.str.64) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_read_delay(ptr noundef %rrsp, ptr nocapture noundef writeonly %rtrsp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i8, ptr @rcu_fwd_cb_nodelay, align 1, !range !1244
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @torture_random(ptr noundef %rrsp) #16
  %1 = load i32, ptr @nrealreaders, align 4
  %mul2 = mul i32 %1, 600000
  %rem = urem i32 %call, %mul2
  %tobool3.not = icmp eq i32 %rem, 0
  br i1 %tobool3.not, label %if.then, label %if.end25

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr @cur_ops, align 4
  %get_gp_seq = getelementptr inbounds %struct.rcu_torture_ops, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %get_gp_seq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_gp_seq, align 4
  %call4 = tail call i32 %4() #16
  %call.i = tail call i64 @trace_clock_local() #16
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %call.i, i32 0) #24, !srcloc !1265
  %asmresult.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %call.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #24, !srcloc !1266
  %asmresult10.i.i = extractvalue { i64, i32 } %6, 0
  %7 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %10, 1048320
  %tobool7.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool7.not, i32 300, i32 5
  br label %while.body

while.body:                                       ; preds = %while.body, %if.then
  %__ms.059 = phi i32 [ %spec.select, %if.then ], [ %dec, %while.body ]
  %dec = add nsw i32 %__ms.059, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #16
  %tobool21.not = icmp eq i32 %dec, 0
  br i1 %tobool21.not, label %cond.end22, label %while.body

cond.end22:                                       ; preds = %while.body
  %div159260.i = lshr i64 %asmresult10.i.i, 9
  %rt_delay_ms = getelementptr inbounds %struct.rt_read_seg, ptr %rtrsp, i32 0, i32 2
  %12 = ptrtoint ptr %rt_delay_ms to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select, ptr %rt_delay_ms, align 4
  %13 = load ptr, ptr @cur_ops, align 4
  %get_gp_seq23 = getelementptr inbounds %struct.rcu_torture_ops, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %get_gp_seq23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_gp_seq23, align 4
  %call24 = tail call i32 %15() #16
  %16 = load ptr, ptr @cur_ops, align 4
  %name = getelementptr inbounds %struct.rcu_torture_ops, ptr %16, i32 0, i32 29
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  %conv = trunc i64 %div159260.i to i32
  tail call void @do_trace_rcu_torture_read(ptr noundef %18, ptr noundef null, i32 noundef %conv, i32 noundef %call4, i32 noundef %call24) #16
  br label %if.end25

if.end25:                                         ; preds = %cond.end22, %land.lhs.true, %entry
  %call26 = tail call i32 @torture_random(ptr noundef %rrsp) #16
  %19 = load i32, ptr @nrealreaders, align 4
  %mul28 = mul i32 %19, 400
  %rem29 = urem i32 %call26, %mul28
  %tobool30.not = icmp eq i32 %rem29, 0
  br i1 %tobool30.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 42949600) #16
  %rt_delay_us = getelementptr inbounds %struct.rt_read_seg, ptr %rtrsp, i32 0, i32 3
  %21 = ptrtoint ptr %rt_delay_us to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 200, ptr %rt_delay_us, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end25
  %22 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i57 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i57 to ptr
  %preempt_count.i58 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i58 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i58, align 4
  %tobool34.not = icmp eq i32 %25, 0
  br i1 %tobool34.not, label %land.lhs.true35, label %if.end44

land.lhs.true35:                                  ; preds = %if.end32
  %call36 = tail call i32 @torture_random(ptr noundef %rrsp) #16
  %26 = load i32, ptr @nrealreaders, align 4
  %mul37 = mul i32 %26, 500
  %rem38 = urem i32 %call36, %mul37
  %tobool39.not = icmp eq i32 %rem38, 0
  br i1 %tobool39.not, label %do.end43, label %if.end44

do.end43:                                         ; preds = %land.lhs.true35
  %rt_preempted = getelementptr inbounds %struct.rt_read_seg, ptr %rtrsp, i32 0, i32 4
  %27 = ptrtoint ptr %rt_preempted to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %rt_preempted, align 4
  br label %if.end44

if.end44:                                         ; preds = %do.end43, %land.lhs.true35, %if.end32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_torture_read_unlock(i32 noundef %idx) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %rcu_read_unlock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_unlock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_unlock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 724, ptr noundef nonnull @.str.65) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %entry
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !1263
  %0 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @torture_readlock_not_held() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_bh_held() #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %call1 = tail call i32 @rcu_read_lock_sched_held() #16
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_get_gp_seq() #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rcu_seq_diff(i32 noundef %new, i32 noundef %old) #8 align 64 {
entry:
  %cmp = icmp eq i32 %old, %new
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i32 %new, -4
  %add = add i32 %old, 3
  %and1 = and i32 %add, -4
  %sub = sub i32 %and, %and1
  %add5 = add i32 %sub, -4
  %cmp7 = icmp slt i32 %add5, 0
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end
  %shr = lshr exact i32 %add5, 2
  %add12 = add nuw nsw i32 %shr, 2
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end, %entry
  %retval.0 = phi i32 [ %add12, %if.end9 ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_torture_deferred_free(ptr noundef %p) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @call_rcu(ptr noundef %p, ptr noundef nonnull @rcu_torture_cb) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu_expedited() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_state_synchronize_rcu() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @start_poll_synchronize_rcu() #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @poll_state_synchronize_rcu(i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cond_synchronize_rcu(i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_force_quiescent_state() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_rcu_gp_kthreads() #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_check_boost_fail(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_jiffies_till_stall_check() #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #9 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @torture_random(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_rcu_torture_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @trace_clock_local() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #9 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_torture_cb(ptr noundef %p) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @torture_must_stop_irq() #16
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rtort_chkp.i = getelementptr inbounds %struct.rcu_torture, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %rtort_chkp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rtort_chkp.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end34.i, label %do.body5.i

do.body5.i:                                       ; preds = %if.end
  %2 = ptrtoint ptr %rtort_chkp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %rtort_chkp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1267
  %rtc_ready.i = getelementptr inbounds %struct.rcu_torture_reader_check, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %rtc_ready.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %rtc_ready.i, align 4
  br label %do.end34.i

do.end34.i:                                       ; preds = %do.body5.i, %if.end
  %rtort_pipe_count.i = getelementptr inbounds %struct.rcu_torture, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %rtort_pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %rtort_pipe_count.i, align 4
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 10) #16
  %arrayidx.i = getelementptr [11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 %6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #16
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #16, !srcloc !1251
  %add.i = add nsw i32 %6, 1
  %8 = ptrtoint ptr %rtort_pipe_count.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %add.i, ptr %rtort_pipe_count.i, align 4
  %cmp49.i = icmp sgt i32 %6, 8
  br i1 %cmp49.i, label %if.then2, label %if.else

if.then2:                                         ; preds = %do.end34.i
  %rtort_mbtest.i = getelementptr inbounds %struct.rcu_torture, ptr %p, i32 0, i32 3
  %9 = ptrtoint ptr %rtort_mbtest.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rtort_mbtest.i, align 4
  %call.i.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_torture_free, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @n_rcu_torture_free, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_rcu_torture_free, ptr nonnull @n_rcu_torture_free, i32 1, ptr nonnull elementtype(i32) @n_rcu_torture_free) #16, !srcloc !1251
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rcu_torture_lock) #16
  %rtort_free.i = getelementptr inbounds %struct.rcu_torture, ptr %p, i32 0, i32 2
  %11 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @rcu_torture_freelist, i32 0, i32 1), align 4
  %call.i.i1.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rtort_free.i, ptr noundef %11, ptr noundef nonnull @rcu_torture_freelist) #16
  br i1 %call.i.i1.i, label %if.end.i.i.i, label %rcu_torture_free.exit

if.end.i.i.i:                                     ; preds = %if.then2
  store ptr %rtort_free.i, ptr getelementptr inbounds (%struct.list_head, ptr @rcu_torture_freelist, i32 0, i32 1), align 4
  %12 = ptrtoint ptr %rtort_free.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rcu_torture_freelist, ptr %rtort_free.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.rcu_torture, ptr %p, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %rtort_free.i, ptr %11, align 4
  br label %rcu_torture_free.exit

rcu_torture_free.exit:                            ; preds = %if.end.i.i.i, %if.then2
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rcu_torture_lock) #16
  br label %cleanup

if.else:                                          ; preds = %do.end34.i
  %15 = load ptr, ptr @cur_ops, align 4
  %deferred_free = getelementptr inbounds %struct.rcu_torture_ops, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %deferred_free to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %deferred_free, align 4
  tail call void %17(ptr noundef %p) #16
  br label %cleanup

cleanup:                                          ; preds = %if.else, %rcu_torture_free.exit, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @torture_must_stop_irq() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rcu_no_completed() #12 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_busted_torture_deferred_free(ptr noundef %p) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcu_torture_cb(ptr noundef %p)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @synchronize_rcu_busted() #12 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @call_rcu_busted(ptr noundef %head, ptr nocapture noundef readonly %func) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void %func(ptr noundef %head) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srcu_torture_read_lock() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %0) #16
  %dep_map.i = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 16
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #16
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_read_delay(ptr noundef %rrsp, ptr nocapture noundef writeonly %rtrsp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @torture_random(ptr noundef %rrsp) #16
  %0 = load i32, ptr @nrealreaders, align 4
  %mul2 = mul i32 %0, 200000
  %rem = urem i32 %call, %mul2
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %4, 15728640
  %5 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i14 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i14 to ptr
  %preempt_count.i15 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i15, align 4
  %and5 = and i32 %8, 983040
  %or = or i32 %and5, %and
  %9 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i16 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i16 to ptr
  %preempt_count.i17 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i17, align 4
  %and8 = and i32 %12, 256
  %or9 = or i32 %or, %and8
  %tobool10.not = icmp eq i32 %or9, 0
  br i1 %tobool10.not, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call11 = tail call i32 @schedule_timeout_interruptible(i32 noundef 10) #16
  %rt_delay_jiffies = getelementptr inbounds %struct.rt_read_seg, ptr %rtrsp, i32 0, i32 1
  %13 = ptrtoint ptr %rt_delay_jiffies to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 10, ptr %rt_delay_jiffies, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  tail call void @rcu_read_delay(ptr noundef %rrsp, ptr noundef %rtrsp)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_torture_read_unlock(i32 noundef %idx) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  %tobool.not.i = icmp ult i32 %idx, 2
  br i1 %tobool.not.i, label %srcu_read_unlock.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %srcu_read_unlock.exit, label %if.then.i, !prof !1245

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.69, i32 noundef 189, i32 noundef 9, ptr noundef null) #16
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i, %entry
  %dep_map.i = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 16
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #16
  tail call void @__srcu_read_unlock(ptr noundef %0, i32 noundef %idx) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @torture_srcu_read_lock_held() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  %call.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %srcu_read_lock_held.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 16
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #16
  br label %srcu_read_lock_held.exit

srcu_read_lock_held.exit:                         ; preds = %if.end.i, %entry
  %retval.0.i = phi i32 [ %call.i.i, %if.end.i ], [ 1, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srcu_torture_completed() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  %call = tail call i32 @srcu_batches_completed(ptr noundef %0) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_torture_deferred_free(ptr noundef %rp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  tail call void @call_srcu(ptr noundef %0, ptr noundef %rp, ptr noundef nonnull @rcu_torture_cb) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_torture_synchronize() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  tail call void @synchronize_srcu(ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_torture_synchronize_expedited() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  tail call void @synchronize_srcu_expedited(ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srcu_torture_get_gp_state() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  %call = tail call i32 @get_state_synchronize_srcu(ptr noundef %0) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srcu_torture_start_gp_poll() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  %call = tail call i32 @start_poll_synchronize_srcu(ptr noundef %0) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @srcu_torture_poll_gp_state(i32 noundef %oldstate) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  %call = tail call zeroext i1 @poll_state_synchronize_srcu(ptr noundef %0, i32 noundef %oldstate) #16
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_torture_call(ptr noundef %head, ptr noundef %func) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  tail call void @call_srcu(ptr noundef %0, ptr noundef %head, ptr noundef %func) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_torture_barrier() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  tail call void @srcu_barrier(ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_torture_stats() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  %1 = load ptr, ptr @torture_type, align 4
  tail call void @srcu_torture_stats_print(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.70) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_batches_completed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_srcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu_expedited(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_state_synchronize_srcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @start_poll_synchronize_srcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @poll_state_synchronize_srcu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @srcu_barrier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @srcu_torture_stats_print(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_torture_init() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  store volatile ptr @rcu_torture_removed, ptr @rcu_torture_removed, align 4
  store ptr @rcu_torture_removed, ptr getelementptr inbounds (%struct.list_head, ptr @rcu_torture_removed, i32 0, i32 1), align 4
  %call = tail call i32 @__init_srcu_struct(ptr noundef nonnull @srcu_ctld, ptr noundef nonnull @.str.72, ptr noundef nonnull @srcu_torture_init.__srcu_key) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end, !prof !1245

do.end:                                           ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 685, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  store ptr @srcu_ctld, ptr @srcu_ctlp, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_torture_cleanup() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cleanup_srcu_struct(ptr noundef nonnull @srcu_ctld) #16
  store ptr @srcu_ctl, ptr @srcu_ctlp, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__init_srcu_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cleanup_srcu_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tasks_torture_read_lock() #12 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tasks_torture_read_unlock(i32 noundef %idx) #12 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_tasks_torture_deferred_free(ptr noundef %p) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @call_rcu_tasks(ptr noundef %p, ptr noundef nonnull @rcu_torture_cb) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu_tasks() #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @synchronize_rcu_mult_test() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %__crcu_array = alloca [2 x ptr], align 8
  %__rs_array = alloca [2 x %struct.rcu_synchronize], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %__crcu_array) #16
  %0 = load i64, ptr @__const.synchronize_rcu_mult_test.__crcu_array, align 8
  %1 = ptrtoint ptr %__crcu_array to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %__crcu_array, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %__rs_array) #16
  %2 = call ptr @memset(ptr %__rs_array, i32 255, i32 128)
  call void @__wait_rcu_gp(i1 noundef zeroext false, i32 noundef 2, ptr noundef nonnull %__crcu_array, ptr noundef nonnull %__rs_array) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %__rs_array) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %__crcu_array) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu_tasks(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier_tasks() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_rcu_tasks_classic_gp_kthread() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_rcu_gp(i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_torture_read_lock_trivial() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !1268
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_torture_read_unlock_trivial(i32 noundef %idx) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !1269
  %0 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %3, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_tasks_rude_torture_deferred_free(ptr noundef %p) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @call_rcu_tasks_rude(ptr noundef %p, ptr noundef nonnull @rcu_torture_cb) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu_tasks_rude() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu_tasks_rude(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier_tasks_rude() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_rcu_tasks_rude_gp_kthread() #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tasks_tracing_torture_read_lock() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %trc_reader_nesting.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %trc_reader_nesting.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %trc_reader_nesting.i, align 4
  %add.i = add i32 %5, 1
  store volatile i32 %add.i, ptr %trc_reader_nesting.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !1270
  %trc_reader_special.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 46
  %need_mb.i = getelementptr inbounds %struct.anon.30, ptr %trc_reader_special.i, i32 0, i32 3
  %6 = ptrtoint ptr %need_mb.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %need_mb.i, align 1
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %rcu_read_lock_trace.exit, label %do.end14.i

do.end14.i:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1271
  br label %rcu_read_lock_trace.exit

rcu_read_lock_trace.exit:                         ; preds = %do.end14.i, %entry
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_trace_lock_map) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tasks_tracing_torture_read_unlock(i32 noundef %idx) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_trace_lock_map) #16
  %trc_reader_nesting.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %trc_reader_nesting.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %trc_reader_nesting.i, align 4
  %sub.i = add i32 %5, -1
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !1272
  %6 = ptrtoint ptr %trc_reader_nesting.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 -2147483648, ptr %trc_reader_nesting.i, align 4
  %trc_reader_special.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 46
  %7 = ptrtoint ptr %trc_reader_special.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %trc_reader_special.i, align 4
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %do.body23.i, label %lor.lhs.false.i, !prof !1245

lor.lhs.false.i:                                  ; preds = %entry
  %tobool18.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool18.not.i, label %if.end69.i, label %do.body23.i

do.body23.i:                                      ; preds = %lor.lhs.false.i, %entry
  %9 = ptrtoint ptr %trc_reader_nesting.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 %sub.i, ptr %trc_reader_nesting.i, align 4
  br label %rcu_read_unlock_trace.exit

if.end69.i:                                       ; preds = %lor.lhs.false.i
  tail call void @rcu_read_unlock_trace_special(ptr noundef %3) #16
  br label %rcu_read_unlock_trace.exit

rcu_read_unlock_trace.exit:                       ; preds = %if.end69.i, %do.body23.i
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_read_lock_trace_held() #9 align 64 {
entry:
  %call.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #16
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_tasks_tracing_torture_deferred_free(ptr noundef %p) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @call_rcu_tasks_trace(ptr noundef %p, ptr noundef nonnull @rcu_torture_cb) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu_tasks_trace() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu_tasks_trace(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier_tasks_trace() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_rcu_tasks_trace_gp_kthread() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_trace_special(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @synchronize_rcu_trivial() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call47 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %cmp48 = icmp ult i32 %call47, %0
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %if.end33, %entry
  %call49 = phi i32 [ %call, %if.end33 ], [ %call47, %entry ]
  %1 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 68
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid, align 8
  %rem.i = and i32 %call49, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %call49, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call3 = tail call i32 @rcutorture_sched_setaffinity(i32 noundef %6, ptr noundef %add.ptr.i) #16
  %cpu5 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %cpu5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu5, align 4
  %cmp6.not = icmp eq i32 %8, %call49
  br i1 %cmp6.not, label %if.end33, label %land.rhs

land.rhs:                                         ; preds = %for.body
  %.b46 = load i1, ptr @synchronize_rcu_trivial.__already_done, align 1
  br i1 %.b46, label %if.end33, label %if.then, !prof !1245

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @synchronize_rcu_trivial.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 792, i32 noundef 9, ptr noundef null) #16
  br label %if.end33

if.end33:                                         ; preds = %if.then, %land.rhs, %for.body
  %call = tail call i32 @cpumask_next(i32 noundef %call49, ptr noundef nonnull @__cpu_online_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %9
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end33, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcutorture_sched_setaffinity(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_gp_is_expedited() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_gp_is_normal() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @verbose_torout_sleep() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @torture_kthread_stopping(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @torture_hrtimeout_us(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_torture_pipe_update(ptr noundef %old_rp) unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %old_rp, null
  br i1 %tobool.not, label %if.endthread-pre-split, label %if.then

if.then:                                          ; preds = %entry
  %rtort_free = getelementptr inbounds %struct.rcu_torture, ptr %old_rp, i32 0, i32 2
  %0 = load ptr, ptr @rcu_torture_removed, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rtort_free, ptr noundef nonnull @rcu_torture_removed, ptr noundef %0) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.endthread-pre-split

if.end.i.i:                                       ; preds = %if.then
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rtort_free, ptr %prev1.i.i, align 4
  %2 = ptrtoint ptr %rtort_free to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %rtort_free, align 4
  %prev3.i.i = getelementptr inbounds %struct.rcu_torture, ptr %old_rp, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @rcu_torture_removed, ptr %prev3.i.i, align 4
  store volatile ptr %rtort_free, ptr @rcu_torture_removed, align 4
  br label %if.end

if.endthread-pre-split:                           ; preds = %if.then, %entry
  %.pr = load ptr, ptr @rcu_torture_removed, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %if.end.i.i
  %4 = phi ptr [ %.pr, %if.endthread-pre-split ], [ %rtort_free, %if.end.i.i ]
  %cmp.not25 = icmp eq ptr %4, @rcu_torture_removed
  br i1 %cmp.not25, label %for.end, label %for.body

for.body:                                         ; preds = %for.inc, %if.end
  %.pn.in26 = phi ptr [ %.pn27, %for.inc ], [ %4, %if.end ]
  %5 = ptrtoint ptr %.pn.in26 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn27 = load ptr, ptr %.pn.in26, align 4
  %rtort_chkp.i = getelementptr i8, ptr %.pn.in26, i32 12
  %6 = ptrtoint ptr %rtort_chkp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %rtort_chkp.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end34.i, label %do.body5.i

do.body5.i:                                       ; preds = %for.body
  %8 = ptrtoint ptr %rtort_chkp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %rtort_chkp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1267
  %rtc_ready.i = getelementptr inbounds %struct.rcu_torture_reader_check, ptr %7, i32 0, i32 3
  %9 = ptrtoint ptr %rtc_ready.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %rtc_ready.i, align 4
  br label %do.end34.i

do.end34.i:                                       ; preds = %do.body5.i, %for.body
  %rtort_pipe_count.i = getelementptr i8, ptr %.pn.in26, i32 -4
  %10 = ptrtoint ptr %rtort_pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %rtort_pipe_count.i, align 4
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 10) #16
  %arrayidx.i = getelementptr [11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 %12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #16
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #16, !srcloc !1251
  %add.i = add nsw i32 %12, 1
  %14 = ptrtoint ptr %rtort_pipe_count.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %add.i, ptr %rtort_pipe_count.i, align 4
  %cmp49.i = icmp sgt i32 %12, 8
  br i1 %cmp49.i, label %if.then6, label %for.inc

if.then6:                                         ; preds = %do.end34.i
  %rtort_mbtest.i = getelementptr i8, ptr %.pn.in26, i32 8
  %15 = ptrtoint ptr %rtort_mbtest.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rtort_mbtest.i, align 4
  %call.i.i21 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in26) #16
  br i1 %call.i.i21, label %if.end.i.i22, label %list_del.exit

if.end.i.i22:                                     ; preds = %if.then6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %.pn.in26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn.in26, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i22, %if.then6
  %22 = ptrtoint ptr %.pn.in26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in26, align 4
  %prev.i = getelementptr %struct.list_head, ptr %.pn.in26, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call.i.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_torture_free, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @n_rcu_torture_free, i32 1, i32 3, i32 1) #16
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_rcu_torture_free, ptr nonnull @n_rcu_torture_free, i32 1, ptr nonnull elementtype(i32) @n_rcu_torture_free) #16, !srcloc !1251
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rcu_torture_lock) #16
  %25 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @rcu_torture_freelist, i32 0, i32 1), align 4
  %call.i.i1.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in26, ptr noundef %25, ptr noundef nonnull @rcu_torture_freelist) #16
  br i1 %call.i.i1.i, label %if.end.i.i.i, label %rcu_torture_free.exit

if.end.i.i.i:                                     ; preds = %list_del.exit
  store ptr %.pn.in26, ptr getelementptr inbounds (%struct.list_head, ptr @rcu_torture_freelist, i32 0, i32 1), align 4
  %26 = ptrtoint ptr %.pn.in26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @rcu_torture_freelist, ptr %.pn.in26, align 4
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %prev.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %.pn.in26, ptr %25, align 4
  br label %rcu_torture_free.exit

rcu_torture_free.exit:                            ; preds = %if.end.i.i.i, %list_del.exit
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rcu_torture_lock) #16
  br label %for.inc

for.inc:                                          ; preds = %rcu_torture_free.exit, %do.end34.i
  %cmp.not = icmp eq ptr %.pn27, @rcu_torture_removed
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @torture_hrtimeout_jiffies(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_expedite_gp() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_unexpedite_gp() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_inkernel_boot_has_ended() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @stutter_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @torture_must_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_dump(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_normal(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_on_stack_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_torture_timer(ptr nocapture noundef readnone %unused) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_torture_timers, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @n_rcu_torture_timers, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_rcu_torture_timers, ptr nonnull @n_rcu_torture_timers, i32 1, ptr nonnull elementtype(i32) @n_rcu_torture_timers) #16, !srcloc !1251
  %1 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, ptrtoint (ptr @rcu_torture_timer_rand to i32)
  %7 = inttoptr i32 %add to ptr
  %call2 = tail call fastcc zeroext i1 @rcu_torture_one_read(ptr noundef %7, i32 noundef -1)
  %8 = load ptr, ptr @cur_ops, align 4
  %call3 = getelementptr inbounds %struct.rcu_torture_ops, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call3, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 2048, i32 noundef 8) #23
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.then
  %12 = load ptr, ptr @cur_ops, align 4
  %call7 = getelementptr inbounds %struct.rcu_torture_ops, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7, align 4
  tail call void %14(ptr noundef nonnull %call7.i, ptr noundef nonnull @rcu_torture_timer_cb) #16
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rcu_torture_one_read(ptr noundef %trsp, i32 noundef %myid) unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %readstate = alloca i32, align 4
  %rtseg = alloca [10 x %struct.rt_read_seg], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %readstate) #16
  %0 = ptrtoint ptr %readstate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %readstate, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %rtseg) #16
  %1 = call ptr @memset(ptr %rtseg, i32 0, i32 200)
  %call = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call, label %if.end28, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b437 = load i1, ptr @rcu_torture_one_read.__already_done, align 1
  br i1 %.b437, label %if.end28, label %if.then, !prof !1245

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @rcu_torture_one_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1622, i32 noundef 9, ptr noundef null) #16
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs, %entry
  %2 = load i32, ptr @extendables, align 4
  %tobool.not.i.i = icmp ult i32 %2, 32
  br i1 %tobool.not.i.i, label %rcutorture_extend_mask_max.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end28
  %.b42.i.i = load i1, ptr @rcutorture_extend_mask_max.__already_done, align 1
  br i1 %.b42.i.i, label %rcutorture_extend_mask_max.exit.i, label %if.then.i.i, !prof !1245

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @rcutorture_extend_mask_max.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1523, i32 noundef 9, ptr noundef null) #16
  br label %rcutorture_extend_mask_max.exit.i

rcutorture_extend_mask_max.exit.i:                ; preds = %if.then.i.i, %land.rhs.i.i, %if.end28
  %3 = load i32, ptr @extendables, align 4
  %and36.i.i = and i32 %3, 31
  %4 = load ptr, ptr @cur_ops, align 4
  %extendables.i.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %4, i32 0, i32 26
  %5 = ptrtoint ptr %extendables.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %extendables.i.i, align 4
  %and37.i.i = and i32 %and36.i.i, %6
  %or38.i.i = or i32 %and37.i.i, 96
  %call1.i = tail call i32 @torture_random(ptr noundef %trsp) #16
  %shr2.i = lshr i32 %call1.i, 11
  %7 = and i32 %call1.i, 1792
  %tobool39.not.i = icmp eq i32 %7, 0
  %rem.i = urem i32 %shr2.i, 7
  %shl.i = shl nuw nsw i32 1, %rem.i
  %shl.pn.i = select i1 %tobool39.not.i, i32 %shr2.i, i32 %shl.i
  %mask.0.i = and i32 %shl.pn.i, %or38.i.i
  %8 = and i32 %shl.pn.i, 96
  %.not.i = icmp eq i32 %8, 64
  %or54.i = or i32 %mask.0.i, 32
  %spec.select = select i1 %.not.i, i32 %or54.i, i32 %mask.0.i
  %tobool63.not.i = icmp eq i32 %spec.select, 0
  %..i = select i1 %tobool63.not.i, i32 32, i32 %spec.select
  %incdec.ptr = getelementptr inbounds %struct.rt_read_seg, ptr %rtseg, i32 1
  call fastcc void @rcutorture_one_extend(ptr noundef nonnull %readstate, i32 noundef %..i, ptr noundef %trsp, ptr noundef nonnull %rtseg)
  %9 = load ptr, ptr @cur_ops, align 4
  %get_gp_state = getelementptr inbounds %struct.rcu_torture_ops, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %get_gp_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_gp_state, align 4
  %tobool37.not = icmp eq ptr %11, null
  br i1 %tobool37.not, label %if.end42, label %land.lhs.true

land.lhs.true:                                    ; preds = %rcutorture_extend_mask_max.exit.i
  %poll_gp_state = getelementptr inbounds %struct.rcu_torture_ops, ptr %9, i32 0, i32 14
  %12 = ptrtoint ptr %poll_gp_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %poll_gp_state, align 4
  %tobool38.not = icmp eq ptr %13, null
  br i1 %tobool38.not, label %if.end42, label %if.then39

if.then39:                                        ; preds = %land.lhs.true
  %call41 = call i32 %11() #16
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %land.lhs.true, %rcutorture_extend_mask_max.exit.i
  %cookie.0 = phi i32 [ %call41, %if.then39 ], [ -1, %land.lhs.true ], [ -1, %rcutorture_extend_mask_max.exit.i ]
  %14 = load ptr, ptr @cur_ops, align 4
  %get_gp_seq = getelementptr inbounds %struct.rcu_torture_ops, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %get_gp_seq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_gp_seq, align 4
  %call43 = call i32 %16() #16
  %call.i443 = call i64 @trace_clock_local() #16
  %17 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %call.i443, i32 0) #24, !srcloc !1265
  %asmresult.i.i444 = extractvalue { i64, i32 } %17, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %17, 1
  %18 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %call.i443, i64 %asmresult.i.i444, i32 %asmresult4.i.i) #24, !srcloc !1266
  %asmresult10.i.i = extractvalue { i64, i32 } %18, 0
  %div159260.i = lshr i64 %asmresult10.i.i, 9
  %19 = load volatile ptr, ptr @rcu_torture_current, align 4
  %20 = load ptr, ptr @cur_ops, align 4
  %readlock_held = getelementptr inbounds %struct.rcu_torture_ops, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %readlock_held to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %readlock_held, align 4
  %tobool50.not = icmp eq ptr %22, null
  br i1 %tobool50.not, label %do.end65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end42
  %call52 = call i32 %22() #16
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %lor.lhs.false54, label %do.end65

lor.lhs.false54:                                  ; preds = %lor.lhs.false
  %call55 = call i32 @rcu_read_lock_held() #16
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true57, label %do.end65

land.lhs.true57:                                  ; preds = %lor.lhs.false54
  %call58 = call i32 @debug_lockdep_rcu_enabled() #16
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %do.end65, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %land.lhs.true57
  %.b429436 = load i1, ptr @rcu_torture_one_read.__warned, align 1
  br i1 %.b429436, label %do.end65, label %if.then62

if.then62:                                        ; preds = %land.lhs.true60
  store i1 true, ptr @rcu_torture_one_read.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1630, ptr noundef nonnull @.str.120) #16
  br label %do.end65

do.end65:                                         ; preds = %if.then62, %land.lhs.true60, %land.lhs.true57, %lor.lhs.false54, %lor.lhs.false, %if.end42
  %cmp = icmp eq ptr %19, null
  br i1 %cmp, label %if.then67, label %if.end68

if.then67:                                        ; preds = %do.end65
  call fastcc void @rcutorture_one_extend(ptr noundef nonnull %readstate, i32 noundef 0, ptr noundef %trsp, ptr noundef %incdec.ptr)
  br label %cleanup

if.end68:                                         ; preds = %do.end65
  %rtort_mbtest = getelementptr inbounds %struct.rcu_torture, ptr %19, i32 0, i32 3
  %23 = ptrtoint ptr %rtort_mbtest to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rtort_mbtest, align 4
  %cmp69 = icmp eq i32 %24, 0
  br i1 %cmp69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end68
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_torture_mberror, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr nonnull @n_rcu_torture_mberror, i32 1, i32 3, i32 1) #16
  %25 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_rcu_torture_mberror, ptr nonnull @n_rcu_torture_mberror, i32 1, ptr nonnull elementtype(i32) @n_rcu_torture_mberror) #16, !srcloc !1251
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end68
  %call.i445 = call i32 @torture_num_online_cpus() #16
  %cmp.i = icmp slt i32 %myid, 0
  br i1 %cmp.i, label %rcu_torture_reader_do_mbchk.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end71
  %26 = load ptr, ptr @rcu_torture_reader_mbchk, align 4
  %arrayidx.i = getelementptr %struct.rcu_torture_reader_check, ptr %26, i32 %myid
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 128
  %add.i446 = add i32 %28, 1
  store volatile i32 %add.i446, ptr %arrayidx.i, align 128
  %call8.i = call i32 @torture_random(ptr noundef %trsp) #16
  %29 = load i32, ptr @nrealreaders, align 4
  %rem.i447 = urem i32 %call8.i, %29
  %30 = load ptr, ptr @rcu_torture_reader_mbchk, align 4
  %arrayidx9.i = getelementptr %struct.rcu_torture_reader_check, ptr %30, i32 %rem.i447
  %call10.i = call i32 @torture_random(ptr noundef %trsp) #16
  %31 = load i32, ptr @nrealreaders, align 4
  %rem11.i = urem i32 %call10.i, %31
  %32 = load ptr, ptr @rcu_torture_reader_mbchk, align 4
  %cmp13.not.i = icmp eq i32 %rem.i447, %myid
  %cmp14.not.i = icmp eq i32 %rem.i447, %rem11.i
  %or.cond.i = select i1 %cmp13.not.i, i1 true, i1 %cmp14.not.i
  %cmp16.not.i = icmp slt i32 %call.i445, %rem.i447
  %or.cond358.i = select i1 %or.cond.i, i1 true, i1 %cmp16.not.i
  %cmp18.not.i = icmp slt i32 %call.i445, %rem11.i
  %or.cond359.i = select i1 %or.cond358.i, i1 true, i1 %cmp18.not.i
  br i1 %or.cond359.i, label %do.end169.i, label %land.lhs.true19.i

land.lhs.true19.i:                                ; preds = %if.end.i
  %rtc_chkrdr.i = getelementptr %struct.rcu_torture_reader_check, ptr %26, i32 %myid, i32 1
  %33 = ptrtoint ptr %rtc_chkrdr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %rtc_chkrdr.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1273
  %cmp27.i = icmp slt i32 %34, 0
  br i1 %cmp27.i, label %do.end31.i, label %do.end169.i

do.end31.i:                                       ; preds = %land.lhs.true19.i
  %rtort_chkp.i = getelementptr inbounds %struct.rcu_torture, ptr %19, i32 0, i32 4
  %35 = ptrtoint ptr %rtort_chkp.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %rtort_chkp.i, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %land.lhs.true33.i, label %do.end169.i

land.lhs.true33.i:                                ; preds = %do.end31.i
  %rtc_assigner.i = getelementptr %struct.rcu_torture_reader_check, ptr %32, i32 %rem11.i, i32 4
  %37 = ptrtoint ptr %rtc_assigner.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %rtc_assigner.i, align 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1274
  %tobool43.not.i = icmp eq ptr %38, null
  br i1 %tobool43.not.i, label %do.end47.i, label %do.end169.i

do.end47.i:                                       ; preds = %land.lhs.true33.i
  %39 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %arrayidx9.i, align 128
  %rtc_chkloops.i = getelementptr %struct.rcu_torture_reader_check, ptr %26, i32 %myid, i32 2
  %41 = ptrtoint ptr %rtc_chkloops.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %rtc_chkloops.i, align 8
  %42 = ptrtoint ptr %rtc_chkrdr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rtc_chkrdr.i, align 4
  %cmp51.i = icmp sgt i32 %43, -1
  br i1 %cmp51.i, label %land.rhs.i, label %if.end85.i

land.rhs.i:                                       ; preds = %do.end47.i
  %.b357.i = load i1, ptr @rcu_torture_reader_do_mbchk.__already_done, align 1
  br i1 %.b357.i, label %if.end85.i, label %if.then59.i, !prof !1245

if.then59.i:                                      ; preds = %land.rhs.i
  store i1 true, ptr @rcu_torture_reader_do_mbchk.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1396, i32 noundef 9, ptr noundef null) #16
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then59.i, %land.rhs.i, %do.end47.i
  %44 = ptrtoint ptr %rtc_chkrdr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %rem.i447, ptr %rtc_chkrdr.i, align 4
  %rtc_ready.i = getelementptr %struct.rcu_torture_reader_check, ptr %26, i32 %myid, i32 3
  %45 = ptrtoint ptr %rtc_ready.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rtc_ready.i, align 4
  %tobool95.not.i = icmp eq i32 %46, 0
  br i1 %tobool95.not.i, label %if.end140.i, label %land.rhs102.i

land.rhs102.i:                                    ; preds = %if.end85.i
  %.b353356.i = load i1, ptr @rcu_torture_reader_do_mbchk.__already_done.169, align 1
  br i1 %.b353356.i, label %if.end140.i, label %if.then113.i, !prof !1245

if.then113.i:                                     ; preds = %land.rhs102.i
  store i1 true, ptr @rcu_torture_reader_do_mbchk.__already_done.169, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1398, i32 noundef 9, ptr noundef null) #16
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.then113.i, %land.rhs102.i, %if.end85.i
  %call.i.i448 = call zeroext i1 @__kasan_check_write(ptr noundef %rtc_assigner.i, i32 noundef 4) #16
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @llvm.prefetch.p0(ptr %rtc_assigner.i, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i, %if.end140.i
  %48 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %rtc_assigner.i, i32 0, i32 %47) #16, !srcloc !1275
  %asmresult.i.i449 = extractvalue { i32, i32 } %48, 0
  %tobool.not.i.i450 = icmp eq i32 %asmresult.i.i449, 0
  br i1 %tobool.not.i.i450, label %__cmpxchg.exit.i, label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %48, 1
  %tobool152.not.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %tobool152.not.i, label %lor.lhs.false.i, label %if.then159.i

lor.lhs.false.i:                                  ; preds = %__cmpxchg.exit.i
  %call.i361.i = call zeroext i1 @__kasan_check_write(ptr noundef %rtort_chkp.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %rtort_chkp.i, i32 1, i32 3, i32 1) #16
  br label %do.body.i366.i

do.body.i366.i:                                   ; preds = %do.body.i366.i, %lor.lhs.false.i
  %49 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %rtort_chkp.i, i32 0, i32 %47) #16, !srcloc !1275
  %asmresult.i364.i = extractvalue { i32, i32 } %49, 0
  %tobool.not.i365.i = icmp eq i32 %asmresult.i364.i, 0
  br i1 %tobool.not.i365.i, label %__cmpxchg.exit368.i, label %do.body.i366.i

__cmpxchg.exit368.i:                              ; preds = %do.body.i366.i
  %asmresult1.i367.i = extractvalue { i32, i32 } %49, 1
  %tobool158.not.i = icmp eq i32 %asmresult1.i367.i, 0
  br i1 %tobool158.not.i, label %do.end169.i, label %if.then159.i

if.then159.i:                                     ; preds = %__cmpxchg.exit368.i, %__cmpxchg.exit.i
  %call.i362.i = call zeroext i1 @__kasan_check_write(ptr noundef %rtc_assigner.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %rtc_assigner.i, i32 1, i32 3, i32 1) #16
  br label %do.body.i371.i

do.body.i371.i:                                   ; preds = %do.body.i371.i, %if.then159.i
  %50 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %rtc_assigner.i, i32 %47, i32 0) #16, !srcloc !1275
  %asmresult.i369.i = extractvalue { i32, i32 } %50, 0
  %tobool.not.i370.i = icmp eq i32 %asmresult.i369.i, 0
  br i1 %tobool.not.i370.i, label %do.end169.i, label %do.body.i371.i

do.end169.i:                                      ; preds = %do.body.i371.i, %__cmpxchg.exit368.i, %land.lhs.true33.i, %do.end31.i, %land.lhs.true19.i, %if.end.i
  %rtc_assigner171.i = getelementptr %struct.rcu_torture_reader_check, ptr %26, i32 %myid, i32 4
  %51 = ptrtoint ptr %rtc_assigner171.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %rtc_assigner171.i, align 16
  %tobool172.not.i = icmp eq ptr %52, null
  br i1 %tobool172.not.i, label %rcu_torture_reader_do_mbchk.exit, label %lor.lhs.false173.i

lor.lhs.false173.i:                               ; preds = %do.end169.i
  %rtc_ready179.i = getelementptr inbounds %struct.rcu_torture_reader_check, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %rtc_ready179.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %rtc_ready179.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1276
  %tobool184.not.i = icmp eq i32 %54, 0
  br i1 %tobool184.not.i, label %rcu_torture_reader_do_mbchk.exit, label %if.end186.i

if.end186.i:                                      ; preds = %lor.lhs.false173.i
  %rtc_chkrdr187.i = getelementptr inbounds %struct.rcu_torture_reader_check, ptr %52, i32 0, i32 1
  %55 = ptrtoint ptr %rtc_chkrdr187.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rtc_chkrdr187.i, align 4
  %cmp189.i = icmp slt i32 %56, 0
  br i1 %cmp189.i, label %land.rhs196.i, label %if.end244.i

land.rhs196.i:                                    ; preds = %if.end186.i
  %.b354355.i = load i1, ptr @rcu_torture_reader_do_mbchk.__already_done.170, align 1
  br i1 %.b354355.i, label %rcu_torture_reader_do_mbchk.exit, label %if.then207.i, !prof !1245

if.then207.i:                                     ; preds = %land.rhs196.i
  store i1 true, ptr @rcu_torture_reader_do_mbchk.__already_done.170, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1409, i32 noundef 9, ptr noundef null) #16
  br label %rcu_torture_reader_do_mbchk.exit

if.end244.i:                                      ; preds = %if.end186.i
  %57 = load ptr, ptr @rcu_torture_reader_mbchk, align 4
  %arrayidx245.i = getelementptr %struct.rcu_torture_reader_check, ptr %57, i32 %56
  %58 = ptrtoint ptr %arrayidx245.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %arrayidx245.i, align 128
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_torture_mbchk_tries, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr nonnull @n_rcu_torture_mbchk_tries, i32 1, i32 3, i32 1) #16
  %60 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_rcu_torture_mbchk_tries, ptr nonnull @n_rcu_torture_mbchk_tries, i32 1, ptr nonnull elementtype(i32) @n_rcu_torture_mbchk_tries) #16, !srcloc !1251
  %rtc_chkloops251.i = getelementptr inbounds %struct.rcu_torture_reader_check, ptr %52, i32 0, i32 2
  %61 = ptrtoint ptr %rtc_chkloops251.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rtc_chkloops251.i, align 8
  %sub.i451 = sub i32 %59, %62
  %cmp252.i = icmp slt i32 %sub.i451, 0
  br i1 %cmp252.i, label %if.then253.i, label %if.end254.i

if.then253.i:                                     ; preds = %if.end244.i
  %call.i.i363.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_torture_mbchk_fail, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr nonnull @n_rcu_torture_mbchk_fail, i32 1, i32 3, i32 1) #16
  %63 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_rcu_torture_mbchk_fail, ptr nonnull @n_rcu_torture_mbchk_fail, i32 1, ptr nonnull elementtype(i32) @n_rcu_torture_mbchk_fail) #16, !srcloc !1251
  br label %if.end254.i

if.end254.i:                                      ; preds = %if.then253.i, %if.end244.i
  %add255.i = add i32 %59, 2147483647
  %64 = ptrtoint ptr %rtc_chkloops251.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add255.i, ptr %rtc_chkloops251.i, align 8
  %65 = ptrtoint ptr %rtc_ready179.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %rtc_ready179.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1277
  %66 = ptrtoint ptr %rtc_assigner171.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr null, ptr %rtc_assigner171.i, align 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1278
  %67 = ptrtoint ptr %rtc_chkrdr187.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 -1, ptr %rtc_chkrdr187.i, align 4
  br label %rcu_torture_reader_do_mbchk.exit

rcu_torture_reader_do_mbchk.exit:                 ; preds = %if.end254.i, %if.then207.i, %land.rhs196.i, %lor.lhs.false173.i, %do.end169.i, %if.end71
  %68 = load i32, ptr @extendables, align 4
  %tobool.not.i.i452 = icmp ult i32 %68, 32
  br i1 %tobool.not.i.i452, label %rcutorture_extend_mask_max.exit.i461, label %land.rhs.i.i454

land.rhs.i.i454:                                  ; preds = %rcu_torture_reader_do_mbchk.exit
  %.b42.i.i453 = load i1, ptr @rcutorture_extend_mask_max.__already_done, align 1
  br i1 %.b42.i.i453, label %rcutorture_extend_mask_max.exit.i461, label %if.then.i.i455, !prof !1245

if.then.i.i455:                                   ; preds = %land.rhs.i.i454
  store i1 true, ptr @rcutorture_extend_mask_max.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1523, i32 noundef 9, ptr noundef null) #16
  br label %rcutorture_extend_mask_max.exit.i461

rcutorture_extend_mask_max.exit.i461:             ; preds = %if.then.i.i455, %land.rhs.i.i454, %rcu_torture_reader_do_mbchk.exit
  %69 = load i32, ptr @extendables, align 4
  %and36.i.i456 = and i32 %69, 31
  %70 = load ptr, ptr @cur_ops, align 4
  %extendables.i.i457 = getelementptr inbounds %struct.rcu_torture_ops, ptr %70, i32 0, i32 26
  %71 = ptrtoint ptr %extendables.i.i457 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %extendables.i.i457, align 4
  %and37.i.i458 = and i32 %and36.i.i456, %72
  %or38.i.i459 = or i32 %and37.i.i458, 96
  %73 = ptrtoint ptr %readstate to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %readstate, align 4
  %tobool.not.i460 = icmp eq i32 %74, 0
  br i1 %tobool.not.i460, label %land.rhs.i462, label %if.end29.i

land.rhs.i462:                                    ; preds = %rcutorture_extend_mask_max.exit.i461
  %.b62.i = load i1, ptr @rcutorture_loop_extend.__already_done, align 1
  br i1 %.b62.i, label %if.end29.i, label %if.then.i, !prof !1245

if.then.i:                                        ; preds = %land.rhs.i462
  store i1 true, ptr @rcutorture_loop_extend.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1589, i32 noundef 9, ptr noundef null) #16
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i462, %rcutorture_extend_mask_max.exit.i461
  %75 = call i32 @llvm.ctpop.i32(i32 %or38.i.i459) #16, !range !1279
  %tobool37.not.i = icmp ult i32 %75, 2
  br i1 %tobool37.not.i, label %rcutorture_loop_extend.exit, label %if.end39.i

if.end39.i:                                       ; preds = %if.end29.i
  %call40.i = call i32 @torture_random(ptr noundef %trsp) #16
  %shr.i = lshr i32 %call40.i, 3
  %76 = lshr i32 %call40.i, 6
  %or.i = or i32 %shr.i, %76
  %and42.i = and i32 %or.i, 7
  br label %for.body.i

for.body.i:                                       ; preds = %rcutorture_extend_mask.exit.i, %if.end39.i
  %j.063.i = phi i32 [ 0, %if.end39.i ], [ %inc.i, %rcutorture_extend_mask.exit.i ]
  %77 = ptrtoint ptr %readstate to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %readstate, align 4
  %79 = load i32, ptr @extendables, align 4
  %tobool.not.i.i.i = icmp ult i32 %79, 32
  br i1 %tobool.not.i.i.i, label %rcutorture_extend_mask_max.exit.i.i, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %for.body.i
  %.b42.i.i.i = load i1, ptr @rcutorture_extend_mask_max.__already_done, align 1
  br i1 %.b42.i.i.i, label %rcutorture_extend_mask_max.exit.i.i, label %if.then.i.i.i, !prof !1245

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @rcutorture_extend_mask_max.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1523, i32 noundef 9, ptr noundef null) #16
  br label %rcutorture_extend_mask_max.exit.i.i

rcutorture_extend_mask_max.exit.i.i:              ; preds = %if.then.i.i.i, %land.rhs.i.i.i, %for.body.i
  %80 = load i32, ptr @extendables, align 4
  %and36.i.i.i = and i32 %80, 31
  %81 = load ptr, ptr @cur_ops, align 4
  %extendables.i.i.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %81, i32 0, i32 26
  %82 = ptrtoint ptr %extendables.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %extendables.i.i.i, align 4
  %and37.i.i.i = and i32 %and36.i.i.i, %83
  %or38.i.i.i = or i32 %and37.i.i.i, 96
  %call1.i.i = call i32 @torture_random(ptr noundef %trsp) #16
  %shr2.i.i = lshr i32 %call1.i.i, 11
  %84 = and i32 %call1.i.i, 1792
  %tobool39.not.i.i = icmp eq i32 %84, 0
  %rem.i.i = urem i32 %shr2.i.i, 7
  %shl.i.i = shl nuw nsw i32 1, %rem.i.i
  %shl.pn.i.i = select i1 %tobool39.not.i.i, i32 %shr2.i.i, i32 %shl.i.i
  %mask.0.i.i = and i32 %shl.pn.i.i, %or38.i.i.i
  %85 = and i32 %shl.pn.i.i, 96
  %.not.i.i = icmp eq i32 %85, 64
  br i1 %.not.i.i, label %if.then48.i.i, label %rcutorture_extend_mask.exit.i

if.then48.i.i:                                    ; preds = %rcutorture_extend_mask_max.exit.i.i
  %and49.i.i = and i32 %78, 32
  %tobool50.not.i.i = icmp eq i32 %and49.i.i, 0
  br i1 %tobool50.not.i.i, label %if.else53.i.i, label %if.then51.i.i

if.then51.i.i:                                    ; preds = %if.then48.i.i
  %and52.i.i = and i32 %mask.0.i.i, 63
  br label %rcutorture_extend_mask.exit.i

if.else53.i.i:                                    ; preds = %if.then48.i.i
  %or54.i.i = or i32 %mask.0.i.i, 32
  br label %rcutorture_extend_mask.exit.i

rcutorture_extend_mask.exit.i:                    ; preds = %if.else53.i.i, %if.then51.i.i, %rcutorture_extend_mask_max.exit.i.i
  %mask.1.i.i = phi i32 [ %mask.0.i.i, %rcutorture_extend_mask_max.exit.i.i ], [ %and52.i.i, %if.then51.i.i ], [ %or54.i.i, %if.else53.i.i ]
  %and57.i.i = and i32 %mask.1.i.i, 2
  %tobool58.not.i.i = icmp eq i32 %and57.i.i, 0
  %and60.i.i = and i32 %78, 9
  %or61.i.i = select i1 %tobool58.not.i.i, i32 0, i32 %and60.i.i
  %mask.2.i.i = or i32 %or61.i.i, %mask.1.i.i
  %tobool63.not.i.i = icmp eq i32 %mask.2.i.i, 0
  %..i.i = select i1 %tobool63.not.i.i, i32 32, i32 %mask.2.i.i
  %arrayidx.i463 = getelementptr %struct.rt_read_seg, ptr %incdec.ptr, i32 %j.063.i
  call fastcc void @rcutorture_one_extend(ptr noundef nonnull %readstate, i32 noundef %..i.i, ptr noundef %trsp, ptr noundef %arrayidx.i463) #16
  %inc.i = add nuw nsw i32 %j.063.i, 1
  %exitcond.i = icmp eq i32 %j.063.i, %and42.i
  br i1 %exitcond.i, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %rcutorture_extend_mask.exit.i
  %86 = add nuw nsw i32 %and42.i, 1
  %arrayidx44.i = getelementptr %struct.rt_read_seg, ptr %incdec.ptr, i32 %86
  br label %rcutorture_loop_extend.exit

rcutorture_loop_extend.exit:                      ; preds = %for.end.i, %if.end29.i
  %retval.0.i = phi ptr [ %arrayidx44.i, %for.end.i ], [ %incdec.ptr, %if.end29.i ]
  %87 = call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %90, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !1280
  %rtort_pipe_count = getelementptr inbounds %struct.rcu_torture, ptr %19, i32 0, i32 1
  %91 = ptrtoint ptr %rtort_pipe_count to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %rtort_pipe_count, align 4
  %93 = call i32 @llvm.smin.i32(i32 %92, i32 10)
  %94 = load ptr, ptr @cur_ops, align 4
  %get_gp_seq83 = getelementptr inbounds %struct.rcu_torture_ops, ptr %94, i32 0, i32 7
  %95 = ptrtoint ptr %get_gp_seq83 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %get_gp_seq83, align 4
  %call84 = call i32 %96() #16
  %cmp85 = icmp sgt i32 %93, 1
  br i1 %cmp85, label %if.then86, label %if.end110

if.then86:                                        ; preds = %rcutorture_loop_extend.exit
  %97 = load ptr, ptr @cur_ops, align 4
  %name = getelementptr inbounds %struct.rcu_torture_ops, ptr %97, i32 0, i32 29
  %98 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %name, align 4
  %conv = trunc i64 %div159260.i to i32
  call void @do_trace_rcu_torture_read(ptr noundef %99, ptr noundef nonnull %19, i32 noundef %conv, i32 noundef %call43, i32 noundef %call84) #16
  %call.i.i439 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @rcu_torture_one_read.___rfd_beenhere, i32 noundef 4) #16
  %100 = load volatile i32, ptr @rcu_torture_one_read.___rfd_beenhere, align 4
  %tobool89.not = icmp eq i32 %100, 0
  br i1 %tobool89.not, label %land.lhs.true90, label %if.end110

land.lhs.true90:                                  ; preds = %if.then86
  %call.i.i440 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rcu_torture_one_read.___rfd_beenhere, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1254
  call void @llvm.prefetch.p0(ptr nonnull @rcu_torture_one_read.___rfd_beenhere, i32 1, i32 3, i32 1) #16
  %101 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr nonnull @rcu_torture_one_read.___rfd_beenhere) #16, !srcloc !1255
  %asmresult.i.i = extractvalue { i32, i32 } %101, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1256
  %tobool92.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool92.not, label %if.then93, label %if.end110

if.then93:                                        ; preds = %land.lhs.true90
  call void @tracing_off() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  %102 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %tobool95.not = icmp eq i32 %102, 0
  br i1 %tobool95.not, label %if.then96, label %do.end99

if.then96:                                        ; preds = %if.then93
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  store i32 3, ptr @rcu_cpu_stall_suppress, align 4
  br label %do.end99

do.end99:                                         ; preds = %if.then96, %if.then93
  call void @ftrace_dump(i32 noundef 1) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  %103 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %cmp101 = icmp eq i32 %103, 3
  br i1 %cmp101, label %if.then103, label %if.end110

if.then103:                                       ; preds = %do.end99
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  store i32 0, ptr @rcu_cpu_stall_suppress, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then103, %do.end99, %land.lhs.true90, %if.then86, %rcutorture_loop_extend.exit
  %arrayidx121 = getelementptr [11 x i32], ptr @rcu_torture_count, i32 0, i32 %93
  %104 = ptrtoint ptr %arrayidx121 to i32
  %105 = call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cpu, align 4
  %arrayidx124 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %108
  %109 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx124, align 4
  %add = add i32 %110, %104
  %111 = inttoptr i32 %add to ptr
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  %add125 = add i32 %113, 1
  store i32 %add125, ptr %111, align 4
  %114 = load ptr, ptr @cur_ops, align 4
  %gp_diff.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %114, i32 0, i32 8
  %115 = ptrtoint ptr %gp_diff.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %gp_diff.i, align 4
  %tobool.not.i464 = icmp eq ptr %116, null
  br i1 %tobool.not.i464, label %if.then.i466, label %if.end.i468

if.then.i466:                                     ; preds = %if.end110
  %sub.i465 = sub i32 %call84, %call43
  br label %rcutorture_seq_diff.exit

if.end.i468:                                      ; preds = %if.end110
  %call.i467 = call i32 %116(i32 noundef %call84, i32 noundef %call43) #16
  br label %rcutorture_seq_diff.exit

rcutorture_seq_diff.exit:                         ; preds = %if.end.i468, %if.then.i466
  %retval.0.i469 = phi i32 [ %call.i467, %if.end.i468 ], [ %sub.i465, %if.then.i466 ]
  %117 = call i32 @llvm.umin.i32(i32 %retval.0.i469, i32 10)
  %arrayidx147 = getelementptr [11 x i32], ptr @rcu_torture_batch, i32 0, i32 %117
  %118 = ptrtoint ptr %arrayidx147 to i32
  %119 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cpu, align 4
  %arrayidx151 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %120
  %121 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx151, align 4
  %add152 = add i32 %122, %118
  %123 = inttoptr i32 %add152 to ptr
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  %add153 = add i32 %125, 1
  store i32 %add153, ptr %123, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !1281
  %126 = call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i.i441 = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i441 to ptr
  %preempt_count.i.i442 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %preempt_count.i.i442 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %preempt_count.i.i442, align 4
  %sub.i = add i32 %129, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i442, align 4
  %130 = load ptr, ptr @cur_ops, align 4
  %get_gp_state161 = getelementptr inbounds %struct.rcu_torture_ops, ptr %130, i32 0, i32 12
  %131 = ptrtoint ptr %get_gp_state161 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %get_gp_state161, align 4
  %tobool162.not = icmp eq ptr %132, null
  br i1 %tobool162.not, label %if.end226, label %land.lhs.true163

land.lhs.true163:                                 ; preds = %rcutorture_seq_diff.exit
  %poll_gp_state164 = getelementptr inbounds %struct.rcu_torture_ops, ptr %130, i32 0, i32 14
  %133 = ptrtoint ptr %poll_gp_state164 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %poll_gp_state164, align 4
  %tobool165.not = icmp eq ptr %134, null
  br i1 %tobool165.not, label %if.end226, label %if.then166

if.then166:                                       ; preds = %land.lhs.true163
  %call169 = call zeroext i1 %134(i32 noundef %cookie.0) #16
  br i1 %call169, label %land.rhs177, label %if.end226

land.rhs177:                                      ; preds = %if.then166
  %.b430435 = load i1, ptr @rcu_torture_one_read.__already_done.147, align 1
  br i1 %.b430435, label %if.end226, label %if.then188, !prof !1245

if.then188:                                       ; preds = %land.rhs177
  store i1 true, ptr @rcu_torture_one_read.__already_done.147, align 1
  %135 = load volatile i32, ptr @rcu_torture_writer_state, align 4
  %cmp.i470 = icmp ugt i32 %135, 11
  br i1 %cmp.i470, label %rcu_torture_writer_state_getname.exit, label %if.end.i472

if.end.i472:                                      ; preds = %if.then188
  %arrayidx.i471 = getelementptr [12 x ptr], ptr @rcu_torture_writer_state_names, i32 0, i32 %135
  %136 = ptrtoint ptr %arrayidx.i471 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx.i471, align 4
  br label %rcu_torture_writer_state_getname.exit

rcu_torture_writer_state_getname.exit:            ; preds = %if.end.i472, %if.then188
  %retval.0.i473 = phi ptr [ %137, %if.end.i472 ], [ @.str.130, %if.then188 ]
  %138 = load ptr, ptr @cur_ops, align 4
  %get_gp_state203 = getelementptr inbounds %struct.rcu_torture_ops, ptr %138, i32 0, i32 12
  %139 = ptrtoint ptr %get_gp_state203 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %get_gp_state203, align 4
  %call204 = call i32 %140() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1666, i32 noundef 9, ptr noundef nonnull @.str.148, ptr noundef nonnull @__func__.rcu_torture_one_read, ptr noundef %retval.0.i473, i32 noundef %135, i32 noundef %cookie.0, i32 noundef %call204) #16
  br label %if.end226

if.end226:                                        ; preds = %rcu_torture_writer_state_getname.exit, %land.rhs177, %if.then166, %land.lhs.true163, %rcutorture_seq_diff.exit
  call fastcc void @rcutorture_one_extend(ptr noundef nonnull %readstate, i32 noundef 0, ptr noundef %trsp, ptr noundef %retval.0.i)
  %141 = ptrtoint ptr %readstate to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %readstate, align 4
  %tobool228.not = icmp eq i32 %142, 0
  br i1 %tobool228.not, label %if.end274, label %land.rhs236

land.rhs236:                                      ; preds = %if.end226
  %.b431434 = load i1, ptr @rcu_torture_one_read.__already_done.149, align 1
  br i1 %.b431434, label %if.end274, label %if.then247, !prof !1245

if.then247:                                       ; preds = %land.rhs236
  store i1 true, ptr @rcu_torture_one_read.__already_done.149, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1668, i32 noundef 9, ptr noundef null) #16
  br label %if.end274

if.end274:                                        ; preds = %if.then247, %land.rhs236, %if.end226
  %143 = load i32, ptr @leakpointer, align 4
  %tobool283.not = icmp eq i32 %143, 0
  br i1 %tobool283.not, label %if.end338, label %do.end287

do.end287:                                        ; preds = %if.end274
  %144 = ptrtoint ptr %rtort_pipe_count to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %rtort_pipe_count, align 4
  %cmp290 = icmp sgt i32 %145, 1
  br i1 %cmp290, label %land.rhs300, label %if.end338

land.rhs300:                                      ; preds = %do.end287
  %.b432433 = load i1, ptr @rcu_torture_one_read.__already_done.150, align 1
  br i1 %.b432433, label %if.end338, label %if.then311, !prof !1245

if.then311:                                       ; preds = %land.rhs300
  store i1 true, ptr @rcu_torture_one_read.__already_done.150, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1671, i32 noundef 9, ptr noundef null) #16
  br label %if.end338

if.end338:                                        ; preds = %if.then311, %land.rhs300, %do.end287, %if.end274
  %cmp349 = icmp ugt i32 %117, 1
  %or.cond = select i1 %cmp85, i1 true, i1 %cmp349
  br i1 %or.cond, label %land.lhs.true351, label %cleanup

land.lhs.true351:                                 ; preds = %if.end338
  %call.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @err_segs_recorded, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1282
  call void @llvm.prefetch.p0(ptr nonnull @err_segs_recorded, i32 1, i32 3, i32 1) #16
  %146 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr nonnull @err_segs_recorded) #16, !srcloc !1255
  %asmresult.i = extractvalue { i32, i32 } %146, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1283
  %tobool371.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool371.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %land.lhs.true351
  %cmp374475 = icmp ult ptr %rtseg, %retval.0.i
  br i1 %cmp374475, label %for.body, label %for.end

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %i.0477 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %rtrsp1.0476 = phi ptr [ %incdec.ptr377, %for.body ], [ %rtseg, %for.cond.preheader ]
  %inc = add i32 %i.0477, 1
  %arrayidx376 = getelementptr [10 x %struct.rt_read_seg], ptr @err_segs, i32 0, i32 %i.0477
  %147 = call ptr @memcpy(ptr %arrayidx376, ptr %rtrsp1.0476, i32 20)
  %incdec.ptr377 = getelementptr %struct.rt_read_seg, ptr %rtrsp1.0476, i32 1
  %cmp374 = icmp ult ptr %incdec.ptr377, %retval.0.i
  br i1 %cmp374, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body ]
  store i32 %i.0.lcssa, ptr @rt_read_nsegs, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true351, %if.end338, %if.then67
  %148 = xor i1 %cmp, true
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %rtseg) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %readstate) #16
  ret i1 %148
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @torture_num_online_cpus() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_timer_on_stack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_torture_timer_cb(ptr noundef %rhp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %rhp) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcutorture_one_extend(ptr nocapture noundef %readstate, i32 noundef %newstate, ptr noundef %trsp, ptr noundef %rtrsp) unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %readstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %readstate, align 4
  %neg = xor i32 %1, -1
  %and = and i32 %neg, %newstate
  %neg1 = xor i32 %newstate, -1
  %and2 = and i32 %1, %neg1
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %land.rhs, label %if.end29

land.rhs:                                         ; preds = %entry
  %.b768 = load i1, ptr @rcutorture_one_extend.__already_done, align 1
  br i1 %.b768, label %if.end83, label %if.end83.sink.split, !prof !1245

if.end29:                                         ; preds = %entry
  %cmp38 = icmp ugt i32 %1, 1023
  br i1 %cmp38, label %land.rhs45, label %if.end83

land.rhs45:                                       ; preds = %if.end29
  %.b756767 = load i1, ptr @rcutorture_one_extend.__already_done.151, align 1
  br i1 %.b756767, label %if.end83, label %if.end83.sink.split, !prof !1245

if.end83.sink.split:                              ; preds = %land.rhs45, %land.rhs
  %rcutorture_one_extend.__already_done.sink = phi ptr [ @rcutorture_one_extend.__already_done, %land.rhs ], [ @rcutorture_one_extend.__already_done.151, %land.rhs45 ]
  %.sink = phi i32 [ 1443, %land.rhs ], [ 1444, %land.rhs45 ]
  %2 = ptrtoint ptr %rcutorture_one_extend.__already_done.sink to i32
  call void @__asan_store1_noabort(i32 %2)
  store i1 true, ptr %rcutorture_one_extend.__already_done.sink, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #16
  br label %if.end83

if.end83:                                         ; preds = %if.end83.sink.split, %land.rhs45, %if.end29, %land.rhs
  %shr765797 = lshr i32 %1, 9
  %3 = ptrtoint ptr %rtrsp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %newstate, ptr %rtrsp, align 4
  %and91 = and i32 %and, 1
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end94, label %if.then93

if.then93:                                        ; preds = %if.end83
  tail call fastcc void @local_bh_disable()
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end83
  %and95 = and i32 %and, 8
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end98, label %if.then97

if.then97:                                        ; preds = %if.end94
  tail call fastcc void @local_bh_disable() #16
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end98, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then97
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end98, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %if.end98, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 750, ptr noundef nonnull @.str.165) #16
  br label %if.end98

if.end98:                                         ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %if.then97, %if.end94
  %and99 = and i32 %and, 2
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end110, label %do.body102

do.body102:                                       ; preds = %if.end98
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !1260
  %and.i.i = and i32 %4, 128
  %tobool103.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #16, !srcloc !1261
  br i1 %tobool103.not, label %if.then106, label %if.end110

if.then106:                                       ; preds = %do.body102
  tail call void @trace_hardirqs_off() #16
  br label %if.end110

if.end110:                                        ; preds = %if.then106, %do.body102, %if.end98
  %and111 = and i32 %and, 4
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end117, label %do.body114

do.body114:                                       ; preds = %if.end110
  %5 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %8, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !1284
  br label %if.end117

if.end117:                                        ; preds = %do.body114, %if.end110
  %and118 = and i32 %and, 16
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end121, label %if.then120

if.then120:                                       ; preds = %if.end117
  %9 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %12, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !1285
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_sched_lock_map) #16
  %call.i774 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i774, label %if.end121, label %land.lhs.true.i776

land.lhs.true.i776:                               ; preds = %if.then120
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  %tobool.not.i775 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i775, label %if.end121, label %land.lhs.true3.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i776
  %.b6.i = load i1, ptr @rcu_read_lock_sched.__warned, align 1
  br i1 %.b6.i, label %if.end121, label %if.then.i777

if.then.i777:                                     ; preds = %land.lhs.true3.i
  store i1 true, ptr @rcu_read_lock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 788, ptr noundef nonnull @.str.166) #16
  br label %if.end121

if.end121:                                        ; preds = %if.then.i777, %land.lhs.true3.i, %land.lhs.true.i776, %if.then120, %if.end117
  %and122 = and i32 %and, 32
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end127, label %if.then124

if.then124:                                       ; preds = %if.end121
  %13 = load ptr, ptr @cur_ops, align 4
  %readlock = getelementptr inbounds %struct.rcu_torture_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %readlock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %readlock, align 4
  %call125 = tail call i32 %15() #16
  %and126 = shl i32 %call125, 8
  %shl = and i32 %and126, 256
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %if.end121
  %idxnew1.0 = phi i32 [ %shl, %if.then124 ], [ -1, %if.end121 ]
  %and128 = and i32 %and, 64
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end135, label %if.then130

if.then130:                                       ; preds = %if.end127
  %16 = load ptr, ptr @cur_ops, align 4
  %readlock131 = getelementptr inbounds %struct.rcu_torture_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %readlock131 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %readlock131, align 4
  %call132 = tail call i32 %18() #16
  %and133 = shl i32 %call132, 9
  %shl134 = and i32 %and133, 512
  br label %if.end135

if.end135:                                        ; preds = %if.then130, %if.end127
  %idxnew2.0 = phi i32 [ %shl134, %if.then130 ], [ -1, %if.end127 ]
  %and136 = and i32 %and2, 2
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end142, label %do.body139

do.body139:                                       ; preds = %if.end135
  tail call void @trace_hardirqs_on() #16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !1262
  br label %if.end142

if.end142:                                        ; preds = %do.body139, %if.end135
  %and143 = and i32 %and2, 4
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.end149, label %do.body146

do.body146:                                       ; preds = %if.end142
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !1286
  %19 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i.i772 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i772 to ptr
  %preempt_count.i.i773 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i773 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i773, align 4
  %sub.i = add i32 %22, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i773, align 4
  br label %if.end149

if.end149:                                        ; preds = %do.body146, %if.end142
  %and150 = and i32 %and2, 16
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.end153, label %if.then152

if.then152:                                       ; preds = %if.end149
  %call.i778 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i778, label %rcu_read_unlock_sched.exit, label %land.lhs.true.i781

land.lhs.true.i781:                               ; preds = %if.then152
  %call1.i779 = tail call i32 @debug_lockdep_rcu_enabled() #16
  %tobool.not.i780 = icmp eq i32 %call1.i779, 0
  br i1 %tobool.not.i780, label %rcu_read_unlock_sched.exit, label %land.lhs.true2.i783

land.lhs.true2.i783:                              ; preds = %land.lhs.true.i781
  %.b6.i782 = load i1, ptr @rcu_read_unlock_sched.__warned, align 1
  br i1 %.b6.i782, label %rcu_read_unlock_sched.exit, label %if.then.i784

if.then.i784:                                     ; preds = %land.lhs.true2.i783
  store i1 true, ptr @rcu_read_unlock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 806, ptr noundef nonnull @.str.167) #16
  br label %rcu_read_unlock_sched.exit

rcu_read_unlock_sched.exit:                       ; preds = %if.then.i784, %land.lhs.true2.i783, %land.lhs.true.i781, %if.then152
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_sched_lock_map) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !1287
  %23 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i.i.i785 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i785 to ptr
  %preempt_count.i.i.i786 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i786 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i786, align 4
  %sub.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i786, align 4
  br label %if.end153

if.end153:                                        ; preds = %rcu_read_unlock_sched.exit, %if.end149
  %and154 = and i32 %and2, 1
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end157, label %if.then156

if.then156:                                       ; preds = %if.end153
  tail call fastcc void @local_bh_enable()
  br label %if.end157

if.end157:                                        ; preds = %if.then156, %if.end153
  %and158 = and i32 %and2, 8
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.end161, label %if.then160

if.then160:                                       ; preds = %if.end157
  %call.i787 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i787, label %rcu_read_unlock_bh.exit, label %land.lhs.true.i790

land.lhs.true.i790:                               ; preds = %if.then160
  %call1.i788 = tail call i32 @debug_lockdep_rcu_enabled() #16
  %tobool.not.i789 = icmp eq i32 %call1.i788, 0
  br i1 %tobool.not.i789, label %rcu_read_unlock_bh.exit, label %land.lhs.true2.i792

land.lhs.true2.i792:                              ; preds = %land.lhs.true.i790
  %.b4.i791 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i791, label %rcu_read_unlock_bh.exit, label %if.then.i793

if.then.i793:                                     ; preds = %land.lhs.true2.i792
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 761, ptr noundef nonnull @.str.168) #16
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i793, %land.lhs.true2.i792, %land.lhs.true.i790, %if.then160
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #16
  tail call fastcc void @local_bh_enable() #16
  br label %if.end161

if.end161:                                        ; preds = %rcu_read_unlock_bh.exit, %if.end157
  %and162 = and i32 %and2, 64
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.end221, label %if.then164

if.then164:                                       ; preds = %if.end161
  %27 = load ptr, ptr @cur_ops, align 4
  %readunlock = getelementptr inbounds %struct.rcu_torture_ops, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %readunlock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %readunlock, align 4
  %and166 = and i32 %shr765797, 1
  tail call void %29(i32 noundef %and166) #16
  %cmp168.not = icmp eq i32 %idxnew2.0, -1
  br i1 %cmp168.not, label %if.end221, label %land.rhs175

land.rhs175:                                      ; preds = %if.then164
  %.b757766 = load i1, ptr @rcutorture_one_extend.__already_done.152, align 1
  br i1 %.b757766, label %if.end221, label %if.then186, !prof !1245

if.then186:                                       ; preds = %land.rhs175
  store i1 true, ptr @rcutorture_one_extend.__already_done.152, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1482, i32 noundef 9, ptr noundef null) #16
  br label %if.end221

if.end221:                                        ; preds = %if.then186, %land.rhs175, %if.then164, %if.end161
  %idxold2.0 = phi i32 [ %1, %if.end161 ], [ 0, %if.then164 ], [ 0, %if.then186 ], [ 0, %land.rhs175 ]
  %and222 = and i32 %and2, 32
  %tobool223.not = icmp eq i32 %and222, 0
  br i1 %tobool223.not, label %if.end318, label %if.then224

if.then224:                                       ; preds = %if.end221
  %30 = load ptr, ptr @cur_ops, align 4
  %no_pi_lock = getelementptr inbounds %struct.rcu_torture_ops, ptr %30, i32 0, i32 28
  %31 = ptrtoint ptr %no_pi_lock to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %no_pi_lock, align 4
  %tobool225.not = icmp eq i32 %32, 0
  %tobool226.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool225.not, i1 %tobool226.not, i1 false
  br i1 %or.cond, label %land.end233, label %if.end244

land.end233:                                      ; preds = %if.then224
  %call228 = tail call i32 @torture_random(ptr noundef %trsp) #16
  %and229 = and i32 %call228, 65535
  %tobool230.not = icmp eq i32 %and229, 0
  br i1 %tobool230.not, label %do.body237, label %if.end244

do.body237:                                       ; preds = %land.end233
  %33 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 128
  %call241 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pi_lock) #16
  br label %if.end244

if.end244:                                        ; preds = %do.body237, %land.end233, %if.then224
  %37 = phi i1 [ true, %do.body237 ], [ false, %land.end233 ], [ false, %if.then224 ]
  %flags.0 = phi i32 [ %call241, %do.body237 ], [ -1, %land.end233 ], [ -1, %if.then224 ]
  %38 = load ptr, ptr @cur_ops, align 4
  %readunlock245 = getelementptr inbounds %struct.rcu_torture_ops, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %readunlock245 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %readunlock245, align 4
  %shr246763 = lshr i32 %1, 8
  %and247 = and i32 %shr246763, 1
  tail call void %40(i32 noundef %and247) #16
  %cmp249.not = icmp eq i32 %idxnew1.0, -1
  br i1 %cmp249.not, label %if.end296, label %land.rhs258

land.rhs258:                                      ; preds = %if.end244
  %.b758764 = load i1, ptr @rcutorture_one_extend.__already_done.153, align 1
  br i1 %.b758764, label %if.end296, label %if.then269, !prof !1245

if.then269:                                       ; preds = %land.rhs258
  store i1 true, ptr @rcutorture_one_extend.__already_done.153, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1492, i32 noundef 9, ptr noundef null) #16
  br label %if.end296

if.end296:                                        ; preds = %if.then269, %land.rhs258, %if.end244
  br i1 %37, label %do.body306, label %land.lhs.true321

do.body306:                                       ; preds = %if.end296
  %41 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i794 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i794 to ptr
  %task313 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task313 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task313, align 8
  %pi_lock314 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock314, i32 noundef %flags.0) #16
  br label %land.lhs.true321

if.end318:                                        ; preds = %if.end221
  %tobool319.not = icmp eq i32 %and, 0
  %tobool320.not = icmp eq i32 %and2, 0
  %or.cond769 = select i1 %tobool319.not, i1 %tobool320.not, i1 false
  br i1 %or.cond769, label %if.end326, label %land.lhs.true321

land.lhs.true321:                                 ; preds = %if.end318, %do.body306, %if.end296
  %idxold1.0802 = phi i32 [ %1, %if.end318 ], [ 0, %if.end296 ], [ 0, %do.body306 ]
  %45 = ptrtoint ptr %readstate to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %readstate, align 4
  %tobool322.not = icmp eq i32 %46, 0
  %tobool324.not = icmp eq i32 %newstate, 0
  %or.cond770 = or i1 %tobool324.not, %tobool322.not
  br i1 %or.cond770, label %if.end326, label %if.then325

if.then325:                                       ; preds = %land.lhs.true321
  %47 = load ptr, ptr @cur_ops, align 4
  %read_delay = getelementptr inbounds %struct.rcu_torture_ops, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %read_delay to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read_delay, align 4
  tail call void %49(ptr noundef %trsp, ptr noundef %rtrsp) #16
  br label %if.end326

if.end326:                                        ; preds = %if.then325, %land.lhs.true321, %if.end318
  %idxold1.0803 = phi i32 [ %1, %if.end318 ], [ %idxold1.0802, %if.then325 ], [ %idxold1.0802, %land.lhs.true321 ]
  %cmp327 = icmp eq i32 %idxnew1.0, -1
  %and330 = and i32 %idxold1.0803, 256
  %spec.select = select i1 %cmp327, i32 %and330, i32 %idxnew1.0
  %cmp453 = icmp eq i32 %idxnew2.0, -1
  %and456 = and i32 %idxold2.0, 512
  %idxnew2.1 = select i1 %cmp453, i32 %and456, i32 %idxnew2.0
  %or = or i32 %idxnew2.1, %newstate
  %or571 = or i32 %or, %spec.select
  %50 = ptrtoint ptr %readstate to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or571, ptr %readstate, align 4
  %cmp573 = icmp slt i32 %or571, 0
  br i1 %cmp573, label %land.rhs582, label %if.end620

land.rhs582:                                      ; preds = %if.end326
  %.b759762 = load i1, ptr @rcutorture_one_extend.__already_done.160, align 1
  br i1 %.b759762, label %if.end692, label %if.then593, !prof !1245

if.then593:                                       ; preds = %land.rhs582
  store i1 true, ptr @rcutorture_one_extend.__already_done.160, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1513, i32 noundef 9, ptr noundef null) #16
  %51 = ptrtoint ptr %readstate to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr = load i32, ptr %readstate, align 4
  br label %if.end620

if.end620:                                        ; preds = %if.then593, %if.end326
  %52 = phi i32 [ %or571, %if.end326 ], [ %.pr, %if.then593 ]
  %cmp630 = icmp sgt i32 %52, 1023
  br i1 %cmp630, label %land.rhs639, label %if.end692

land.rhs639:                                      ; preds = %if.end620
  %.b760761 = load i1, ptr @rcutorture_one_extend.__already_done.161, align 1
  br i1 %.b760761, label %do.end689, label %if.then650, !prof !1245

if.then650:                                       ; preds = %land.rhs639
  store i1 true, ptr @rcutorture_one_extend.__already_done.161, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1514, i32 noundef 9, ptr noundef null) #16
  br label %do.end689

do.end689:                                        ; preds = %if.then650, %land.rhs639
  %call691 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, i32 noundef %idxnew2.1) #19
  br label %if.end692

if.end692:                                        ; preds = %do.end689, %if.end620, %land.rhs582
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #9 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #9 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_nocb_cpu_offload(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_nocb_cpu_deoffload(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_torture_stats_print() unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = alloca i32, align 4
  %gp_seq = alloca i32, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call723 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  %cmp724 = icmp ult i32 %call723, %0
  br i1 %cmp724, label %for.cond1.preheader, label %do.end38

for.cond1.preheader:                              ; preds = %for.cond1.preheader, %entry
  %pipesummary.sroa.0.0 = phi i32 [ %add11, %for.cond1.preheader ], [ 0, %entry ]
  %pipesummary.sroa.7.0 = phi i32 [ %add11.1, %for.cond1.preheader ], [ 0, %entry ]
  %pipesummary.sroa.11.0 = phi i32 [ %add11.2, %for.cond1.preheader ], [ 0, %entry ]
  %pipesummary.sroa.15.0 = phi i32 [ %add11.3, %for.cond1.preheader ], [ 0, %entry ]
  %pipesummary.sroa.19.0 = phi i32 [ %add11.4, %for.cond1.preheader ], [ 0, %entry ]
  %pipesummary.sroa.23.0 = phi i32 [ %add11.5, %for.cond1.preheader ], [ 0, %entry ]
  %pipesummary.sroa.27.0 = phi i32 [ %add11.6, %for.cond1.preheader ], [ 0, %entry ]
  %pipesummary.sroa.31.0 = phi i32 [ %add11.7, %for.cond1.preheader ], [ 0, %entry ]
  %pipesummary.sroa.35.0 = phi i32 [ %add11.8, %for.cond1.preheader ], [ 0, %entry ]
  %pipesummary.sroa.39.0 = phi i32 [ %add11.9, %for.cond1.preheader ], [ 0, %entry ]
  %pipesummary.sroa.43.0 = phi i32 [ %add11.10, %for.cond1.preheader ], [ 0, %entry ]
  %batchsummary.sroa.0.0 = phi i32 [ %add27, %for.cond1.preheader ], [ 0, %entry ]
  %batchsummary.sroa.6.0 = phi i32 [ %add27.1, %for.cond1.preheader ], [ 0, %entry ]
  %batchsummary.sroa.9.0 = phi i32 [ %add27.2, %for.cond1.preheader ], [ 0, %entry ]
  %batchsummary.sroa.12.0 = phi i32 [ %add27.3, %for.cond1.preheader ], [ 0, %entry ]
  %batchsummary.sroa.15.0 = phi i32 [ %add27.4, %for.cond1.preheader ], [ 0, %entry ]
  %batchsummary.sroa.18.0 = phi i32 [ %add27.5, %for.cond1.preheader ], [ 0, %entry ]
  %batchsummary.sroa.21.0 = phi i32 [ %add27.6, %for.cond1.preheader ], [ 0, %entry ]
  %batchsummary.sroa.24.0 = phi i32 [ %add27.7, %for.cond1.preheader ], [ 0, %entry ]
  %batchsummary.sroa.27.0 = phi i32 [ %add27.8, %for.cond1.preheader ], [ 0, %entry ]
  %batchsummary.sroa.30.0 = phi i32 [ %add27.9, %for.cond1.preheader ], [ 0, %entry ]
  %batchsummary.sroa.33.0 = phi i32 [ %add27.10, %for.cond1.preheader ], [ 0, %entry ]
  %call725 = phi i32 [ %call, %for.cond1.preheader ], [ %call723, %entry ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call725
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @rcu_torture_count to i32)
  %3 = inttoptr i32 %add to ptr
  %add24 = add i32 %2, ptrtoint (ptr @rcu_torture_batch to i32)
  %4 = inttoptr i32 %add24 to ptr
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %3, align 4
  %add11 = add i32 %pipesummary.sroa.0.0, %6
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %4, align 4
  %add27 = add i32 %batchsummary.sroa.0.0, %8
  %arrayidx9.1 = getelementptr [11 x i32], ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx9.1, align 4
  %add11.1 = add i32 %pipesummary.sroa.7.0, %10
  %arrayidx25.1 = getelementptr [11 x i32], ptr %4, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx25.1, align 4
  %add27.1 = add i32 %batchsummary.sroa.6.0, %12
  %arrayidx9.2 = getelementptr [11 x i32], ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx9.2, align 4
  %add11.2 = add i32 %pipesummary.sroa.11.0, %14
  %arrayidx25.2 = getelementptr [11 x i32], ptr %4, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx25.2, align 4
  %add27.2 = add i32 %batchsummary.sroa.9.0, %16
  %arrayidx9.3 = getelementptr [11 x i32], ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx9.3, align 4
  %add11.3 = add i32 %pipesummary.sroa.15.0, %18
  %arrayidx25.3 = getelementptr [11 x i32], ptr %4, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx25.3, align 4
  %add27.3 = add i32 %batchsummary.sroa.12.0, %20
  %arrayidx9.4 = getelementptr [11 x i32], ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx9.4, align 4
  %add11.4 = add i32 %pipesummary.sroa.19.0, %22
  %arrayidx25.4 = getelementptr [11 x i32], ptr %4, i32 0, i32 4
  %23 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx25.4, align 4
  %add27.4 = add i32 %batchsummary.sroa.15.0, %24
  %arrayidx9.5 = getelementptr [11 x i32], ptr %3, i32 0, i32 5
  %25 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx9.5, align 4
  %add11.5 = add i32 %pipesummary.sroa.23.0, %26
  %arrayidx25.5 = getelementptr [11 x i32], ptr %4, i32 0, i32 5
  %27 = ptrtoint ptr %arrayidx25.5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %arrayidx25.5, align 4
  %add27.5 = add i32 %batchsummary.sroa.18.0, %28
  %arrayidx9.6 = getelementptr [11 x i32], ptr %3, i32 0, i32 6
  %29 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx9.6, align 4
  %add11.6 = add i32 %pipesummary.sroa.27.0, %30
  %arrayidx25.6 = getelementptr [11 x i32], ptr %4, i32 0, i32 6
  %31 = ptrtoint ptr %arrayidx25.6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %arrayidx25.6, align 4
  %add27.6 = add i32 %batchsummary.sroa.21.0, %32
  %arrayidx9.7 = getelementptr [11 x i32], ptr %3, i32 0, i32 7
  %33 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %arrayidx9.7, align 4
  %add11.7 = add i32 %pipesummary.sroa.31.0, %34
  %arrayidx25.7 = getelementptr [11 x i32], ptr %4, i32 0, i32 7
  %35 = ptrtoint ptr %arrayidx25.7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %arrayidx25.7, align 4
  %add27.7 = add i32 %batchsummary.sroa.24.0, %36
  %arrayidx9.8 = getelementptr [11 x i32], ptr %3, i32 0, i32 8
  %37 = ptrtoint ptr %arrayidx9.8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %arrayidx9.8, align 4
  %add11.8 = add i32 %pipesummary.sroa.35.0, %38
  %arrayidx25.8 = getelementptr [11 x i32], ptr %4, i32 0, i32 8
  %39 = ptrtoint ptr %arrayidx25.8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %arrayidx25.8, align 4
  %add27.8 = add i32 %batchsummary.sroa.27.0, %40
  %arrayidx9.9 = getelementptr [11 x i32], ptr %3, i32 0, i32 9
  %41 = ptrtoint ptr %arrayidx9.9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %arrayidx9.9, align 4
  %add11.9 = add i32 %pipesummary.sroa.39.0, %42
  %arrayidx25.9 = getelementptr [11 x i32], ptr %4, i32 0, i32 9
  %43 = ptrtoint ptr %arrayidx25.9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx25.9, align 4
  %add27.9 = add i32 %batchsummary.sroa.30.0, %44
  %arrayidx9.10 = getelementptr [11 x i32], ptr %3, i32 0, i32 10
  %45 = ptrtoint ptr %arrayidx9.10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %arrayidx9.10, align 4
  %add11.10 = add i32 %pipesummary.sroa.43.0, %46
  %arrayidx25.10 = getelementptr [11 x i32], ptr %4, i32 0, i32 10
  %47 = ptrtoint ptr %arrayidx25.10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %arrayidx25.10, align 4
  %add27.10 = add i32 %batchsummary.sroa.33.0, %48
  %call = tail call i32 @cpumask_next(i32 noundef %call725, ptr noundef nonnull @__cpu_possible_mask) #20
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %for.cond1.preheader, label %for.cond29.preheader

for.cond29.preheader:                             ; preds = %for.cond1.preheader
  %cmp33.not = icmp eq i32 %add11.9, 0
  br i1 %cmp33.not, label %for.inc34, label %do.end38

for.inc34:                                        ; preds = %for.cond29.preheader
  %cmp33.not.1 = icmp eq i32 %add11.8, 0
  br i1 %cmp33.not.1, label %for.inc34.1, label %do.end38

for.inc34.1:                                      ; preds = %for.inc34
  %cmp33.not.2 = icmp eq i32 %add11.7, 0
  br i1 %cmp33.not.2, label %for.inc34.2, label %do.end38

for.inc34.2:                                      ; preds = %for.inc34.1
  %cmp33.not.3 = icmp eq i32 %add11.6, 0
  br i1 %cmp33.not.3, label %for.inc34.3, label %do.end38

for.inc34.3:                                      ; preds = %for.inc34.2
  %cmp33.not.4 = icmp eq i32 %add11.5, 0
  br i1 %cmp33.not.4, label %for.inc34.4, label %do.end38

for.inc34.4:                                      ; preds = %for.inc34.3
  %cmp33.not.5 = icmp eq i32 %add11.4, 0
  br i1 %cmp33.not.5, label %for.inc34.5, label %do.end38

for.inc34.5:                                      ; preds = %for.inc34.4
  %cmp33.not.6 = icmp eq i32 %add11.3, 0
  %cmp33.not.7 = icmp ne i32 %add11.2, 0
  %spec.select = select i1 %cmp33.not.6, i32 0, i32 %add11.3
  %spec.select1265 = select i1 %cmp33.not.6, i1 %cmp33.not.7, i1 true
  br label %do.end38

do.end38:                                         ; preds = %for.inc34.5, %for.inc34.4, %for.inc34.3, %for.inc34.2, %for.inc34.1, %for.inc34, %for.cond29.preheader, %entry
  %batchsummary.sroa.33.1857 = phi i32 [ %add27.10, %for.inc34.4 ], [ %add27.10, %for.inc34.3 ], [ %add27.10, %for.inc34.2 ], [ %add27.10, %for.inc34.1 ], [ %add27.10, %for.inc34 ], [ %add27.10, %for.cond29.preheader ], [ 0, %entry ], [ %add27.10, %for.inc34.5 ]
  %batchsummary.sroa.30.1855 = phi i32 [ %add27.9, %for.inc34.4 ], [ %add27.9, %for.inc34.3 ], [ %add27.9, %for.inc34.2 ], [ %add27.9, %for.inc34.1 ], [ %add27.9, %for.inc34 ], [ %add27.9, %for.cond29.preheader ], [ 0, %entry ], [ %add27.9, %for.inc34.5 ]
  %batchsummary.sroa.27.1853 = phi i32 [ %add27.8, %for.inc34.4 ], [ %add27.8, %for.inc34.3 ], [ %add27.8, %for.inc34.2 ], [ %add27.8, %for.inc34.1 ], [ %add27.8, %for.inc34 ], [ %add27.8, %for.cond29.preheader ], [ 0, %entry ], [ %add27.8, %for.inc34.5 ]
  %batchsummary.sroa.24.1851 = phi i32 [ %add27.7, %for.inc34.4 ], [ %add27.7, %for.inc34.3 ], [ %add27.7, %for.inc34.2 ], [ %add27.7, %for.inc34.1 ], [ %add27.7, %for.inc34 ], [ %add27.7, %for.cond29.preheader ], [ 0, %entry ], [ %add27.7, %for.inc34.5 ]
  %batchsummary.sroa.21.1849 = phi i32 [ %add27.6, %for.inc34.4 ], [ %add27.6, %for.inc34.3 ], [ %add27.6, %for.inc34.2 ], [ %add27.6, %for.inc34.1 ], [ %add27.6, %for.inc34 ], [ %add27.6, %for.cond29.preheader ], [ 0, %entry ], [ %add27.6, %for.inc34.5 ]
  %batchsummary.sroa.18.1847 = phi i32 [ %add27.5, %for.inc34.4 ], [ %add27.5, %for.inc34.3 ], [ %add27.5, %for.inc34.2 ], [ %add27.5, %for.inc34.1 ], [ %add27.5, %for.inc34 ], [ %add27.5, %for.cond29.preheader ], [ 0, %entry ], [ %add27.5, %for.inc34.5 ]
  %batchsummary.sroa.15.1845 = phi i32 [ %add27.4, %for.inc34.4 ], [ %add27.4, %for.inc34.3 ], [ %add27.4, %for.inc34.2 ], [ %add27.4, %for.inc34.1 ], [ %add27.4, %for.inc34 ], [ %add27.4, %for.cond29.preheader ], [ 0, %entry ], [ %add27.4, %for.inc34.5 ]
  %batchsummary.sroa.12.1843 = phi i32 [ %add27.3, %for.inc34.4 ], [ %add27.3, %for.inc34.3 ], [ %add27.3, %for.inc34.2 ], [ %add27.3, %for.inc34.1 ], [ %add27.3, %for.inc34 ], [ %add27.3, %for.cond29.preheader ], [ 0, %entry ], [ %add27.3, %for.inc34.5 ]
  %batchsummary.sroa.9.1841 = phi i32 [ %add27.2, %for.inc34.4 ], [ %add27.2, %for.inc34.3 ], [ %add27.2, %for.inc34.2 ], [ %add27.2, %for.inc34.1 ], [ %add27.2, %for.inc34 ], [ %add27.2, %for.cond29.preheader ], [ 0, %entry ], [ %add27.2, %for.inc34.5 ]
  %batchsummary.sroa.6.1839 = phi i32 [ %add27.1, %for.inc34.4 ], [ %add27.1, %for.inc34.3 ], [ %add27.1, %for.inc34.2 ], [ %add27.1, %for.inc34.1 ], [ %add27.1, %for.inc34 ], [ %add27.1, %for.cond29.preheader ], [ 0, %entry ], [ %add27.1, %for.inc34.5 ]
  %batchsummary.sroa.0.1837 = phi i32 [ %add27, %for.inc34.4 ], [ %add27, %for.inc34.3 ], [ %add27, %for.inc34.2 ], [ %add27, %for.inc34.1 ], [ %add27, %for.inc34 ], [ %add27, %for.cond29.preheader ], [ 0, %entry ], [ %add27, %for.inc34.5 ]
  %pipesummary.sroa.43.1835 = phi i32 [ %add11.10, %for.inc34.4 ], [ %add11.10, %for.inc34.3 ], [ %add11.10, %for.inc34.2 ], [ %add11.10, %for.inc34.1 ], [ %add11.10, %for.inc34 ], [ %add11.10, %for.cond29.preheader ], [ 0, %entry ], [ %add11.10, %for.inc34.5 ]
  %pipesummary.sroa.39.1833 = phi i32 [ 0, %for.inc34.4 ], [ 0, %for.inc34.3 ], [ 0, %for.inc34.2 ], [ 0, %for.inc34.1 ], [ 0, %for.inc34 ], [ %add11.9, %for.cond29.preheader ], [ 0, %entry ], [ 0, %for.inc34.5 ]
  %pipesummary.sroa.35.1832 = phi i32 [ 0, %for.inc34.4 ], [ 0, %for.inc34.3 ], [ 0, %for.inc34.2 ], [ 0, %for.inc34.1 ], [ %add11.8, %for.inc34 ], [ %add11.8, %for.cond29.preheader ], [ 0, %entry ], [ 0, %for.inc34.5 ]
  %pipesummary.sroa.31.1830 = phi i32 [ 0, %for.inc34.4 ], [ 0, %for.inc34.3 ], [ 0, %for.inc34.2 ], [ %add11.7, %for.inc34.1 ], [ %add11.7, %for.inc34 ], [ %add11.7, %for.cond29.preheader ], [ 0, %entry ], [ 0, %for.inc34.5 ]
  %pipesummary.sroa.27.1828 = phi i32 [ 0, %for.inc34.4 ], [ 0, %for.inc34.3 ], [ %add11.6, %for.inc34.2 ], [ %add11.6, %for.inc34.1 ], [ %add11.6, %for.inc34 ], [ %add11.6, %for.cond29.preheader ], [ 0, %entry ], [ 0, %for.inc34.5 ]
  %pipesummary.sroa.23.1826 = phi i32 [ 0, %for.inc34.4 ], [ %add11.5, %for.inc34.3 ], [ %add11.5, %for.inc34.2 ], [ %add11.5, %for.inc34.1 ], [ %add11.5, %for.inc34 ], [ %add11.5, %for.cond29.preheader ], [ 0, %entry ], [ 0, %for.inc34.5 ]
  %pipesummary.sroa.19.1824 = phi i32 [ %add11.4, %for.inc34.4 ], [ %add11.4, %for.inc34.3 ], [ %add11.4, %for.inc34.2 ], [ %add11.4, %for.inc34.1 ], [ %add11.4, %for.inc34 ], [ %add11.4, %for.cond29.preheader ], [ 0, %entry ], [ 0, %for.inc34.5 ]
  %pipesummary.sroa.15.1822 = phi i32 [ %add11.3, %for.inc34.4 ], [ %add11.3, %for.inc34.3 ], [ %add11.3, %for.inc34.2 ], [ %add11.3, %for.inc34.1 ], [ %add11.3, %for.inc34 ], [ %add11.3, %for.cond29.preheader ], [ 0, %entry ], [ %spec.select, %for.inc34.5 ]
  %pipesummary.sroa.11.1820 = phi i32 [ %add11.2, %for.inc34.4 ], [ %add11.2, %for.inc34.3 ], [ %add11.2, %for.inc34.2 ], [ %add11.2, %for.inc34.1 ], [ %add11.2, %for.inc34 ], [ %add11.2, %for.cond29.preheader ], [ 0, %entry ], [ %add11.2, %for.inc34.5 ]
  %pipesummary.sroa.7.1818 = phi i32 [ %add11.1, %for.inc34.4 ], [ %add11.1, %for.inc34.3 ], [ %add11.1, %for.inc34.2 ], [ %add11.1, %for.inc34.1 ], [ %add11.1, %for.inc34 ], [ %add11.1, %for.cond29.preheader ], [ 0, %entry ], [ %add11.1, %for.inc34.5 ]
  %pipesummary.sroa.0.1816 = phi i32 [ %add11, %for.inc34.4 ], [ %add11, %for.inc34.3 ], [ %add11, %for.inc34.2 ], [ %add11, %for.inc34.1 ], [ %add11, %for.inc34 ], [ %add11, %for.cond29.preheader ], [ 0, %entry ], [ %add11, %for.inc34.5 ]
  %cmp441 = phi i1 [ true, %for.inc34.4 ], [ true, %for.inc34.3 ], [ true, %for.inc34.2 ], [ true, %for.inc34.1 ], [ true, %for.inc34 ], [ true, %for.cond29.preheader ], [ false, %entry ], [ %spec.select1265, %for.inc34.5 ]
  %49 = load ptr, ptr @torture_type, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef %49, ptr noundef nonnull @.str.70) #19
  %50 = load volatile ptr, ptr @rcu_torture_current, align 4
  %tobool.not = icmp eq ptr %50, null
  br i1 %tobool.not, label %land.end.thread, label %land.rhs

land.rhs:                                         ; preds = %do.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress_at_boot to i32))
  %51 = load i32, ptr @rcu_cpu_stall_suppress_at_boot, align 4
  %tobool.not.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i, label %land.end.thread713, label %land.end

land.end:                                         ; preds = %land.rhs
  %call.i = tail call zeroext i1 @rcu_inkernel_boot_has_ended() #16
  br i1 %call.i, label %land.end.thread713, label %land.end.thread

land.end.thread713:                               ; preds = %land.end, %land.rhs
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.end.thread713, %land.end, %do.end38
  %52 = phi ptr [ @.str.178, %land.end.thread713 ], [ @.str.179, %land.end ], [ @.str.179, %do.end38 ]
  %53 = load i32, ptr @rcu_torture_current_version, align 4
  %54 = load volatile ptr, ptr @rcu_torture_freelist, align 4
  %cmp.i = icmp eq ptr %54, @rcu_torture_freelist
  %conv.i = zext i1 %cmp.i to i32
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_rcu_torture_alloc, i32 noundef 4) #16
  %55 = load volatile i32, ptr @n_rcu_torture_alloc, align 4
  %call.i.i695 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_rcu_torture_alloc_fail, i32 noundef 4) #16
  %56 = load volatile i32, ptr @n_rcu_torture_alloc_fail, align 4
  %call.i.i696 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_rcu_torture_free, i32 noundef 4) #16
  %57 = load volatile i32, ptr @n_rcu_torture_free, align 4
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef %50, ptr noundef nonnull %52, i32 noundef %53, i32 noundef %conv.i, i32 noundef %55, i32 noundef %56, i32 noundef %57) #19
  %call.i.i697 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_rcu_torture_mberror, i32 noundef 4) #16
  %58 = load volatile i32, ptr @n_rcu_torture_mberror, align 4
  %call.i.i698 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_rcu_torture_mbchk_fail, i32 noundef 4) #16
  %59 = load volatile i32, ptr @n_rcu_torture_mbchk_fail, align 4
  %call.i.i699 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_rcu_torture_mbchk_tries, i32 noundef 4) #16
  %60 = load volatile i32, ptr @n_rcu_torture_mbchk_tries, align 4
  %61 = load i32, ptr @n_rcu_torture_barrier_error, align 4
  %62 = load i32, ptr @n_rcu_torture_boost_ktrerror, align 4
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, i32 noundef %58, i32 noundef %59, i32 noundef %60, i32 noundef %61, i32 noundef %62, i32 noundef 0) #19
  %63 = load i32, ptr @n_rcu_torture_boost_failure, align 4
  %64 = load i32, ptr @n_rcu_torture_boosts, align 4
  %call.i.i700 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_rcu_torture_timers, i32 noundef 4) #16
  %65 = load volatile i32, ptr @n_rcu_torture_timers, align 4
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, i32 noundef %63, i32 noundef %64, i32 noundef %65) #19
  tail call void @torture_onoff_stats() #16
  %66 = load i32, ptr @n_barrier_successes, align 4
  %67 = load i32, ptr @n_barrier_attempts, align 4
  %68 = load i32, ptr @n_rcu_torture_barrier_error, align 4
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, i32 noundef %66, i32 noundef %67, i32 noundef %68) #19
  %69 = load i32, ptr @n_read_exits, align 4
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, i32 noundef %69) #19
  %call.i.i701 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_nocb_offload, i32 noundef 4) #16
  %70 = load volatile i32, ptr @n_nocb_offload, align 4
  %call.i.i702 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_nocb_deoffload, i32 noundef 4) #16
  %71 = load volatile i32, ptr @n_nocb_deoffload, align 4
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, i32 noundef %70, i32 noundef %71) #19
  %72 = load ptr, ptr @torture_type, align 4
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef %72, ptr noundef nonnull @.str.70) #19
  %call.i.i703 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_rcu_torture_mberror, i32 noundef 4) #16
  %73 = load volatile i32, ptr @n_rcu_torture_mberror, align 4
  %tobool104.not = icmp eq i32 %73, 0
  br i1 %tobool104.not, label %lor.lhs.false, label %do.end120

lor.lhs.false:                                    ; preds = %land.end.thread
  %call.i.i704 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_rcu_torture_mbchk_fail, i32 noundef 4) #16
  %74 = load volatile i32, ptr @n_rcu_torture_mbchk_fail, align 4
  %tobool106.not = icmp eq i32 %74, 0
  br i1 %tobool106.not, label %lor.lhs.false107, label %do.end120

lor.lhs.false107:                                 ; preds = %lor.lhs.false
  %75 = load i32, ptr @n_rcu_torture_barrier_error, align 4
  %tobool108.not = icmp eq i32 %75, 0
  br i1 %tobool108.not, label %lor.lhs.false109, label %do.end120

lor.lhs.false109:                                 ; preds = %lor.lhs.false107
  %76 = load i32, ptr @n_rcu_torture_boost_ktrerror, align 4
  %tobool110.not = icmp eq i32 %76, 0
  br i1 %tobool110.not, label %lor.lhs.false113, label %do.end120

lor.lhs.false113:                                 ; preds = %lor.lhs.false109
  %77 = load i32, ptr @n_rcu_torture_boost_failure, align 4
  %tobool114.not = icmp ne i32 %77, 0
  %or.cond = or i1 %tobool114.not, %cmp441
  br i1 %or.cond, label %do.end120, label %do.end497

do.end120:                                        ; preds = %lor.lhs.false113, %lor.lhs.false109, %lor.lhs.false107, %lor.lhs.false, %land.end.thread
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.200) #19
  %call.i.i705 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_torture_error, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @n_rcu_torture_error, i32 1, i32 3, i32 1) #16
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_rcu_torture_error, ptr nonnull @n_rcu_torture_error, i32 1, ptr nonnull elementtype(i32) @n_rcu_torture_error) #16, !srcloc !1251
  %call.i.i706 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_rcu_torture_mberror, i32 noundef 4) #16
  %79 = load volatile i32, ptr @n_rcu_torture_mberror, align 4
  %tobool124.not = icmp eq i32 %79, 0
  br i1 %tobool124.not, label %if.end161, label %land.rhs128

land.rhs128:                                      ; preds = %do.end120
  %.b681693 = load i1, ptr @rcu_torture_stats_print.__already_done, align 1
  br i1 %.b681693, label %if.end161, label %if.then135, !prof !1245

if.then135:                                       ; preds = %land.rhs128
  store i1 true, ptr @rcu_torture_stats_print.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1865, i32 noundef 9, ptr noundef null) #16
  br label %if.end161

if.end161:                                        ; preds = %if.then135, %land.rhs128, %do.end120
  %call.i.i707 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_rcu_torture_mbchk_fail, i32 noundef 4) #16
  %80 = load volatile i32, ptr @n_rcu_torture_mbchk_fail, align 4
  %tobool171.not = icmp eq i32 %80, 0
  br i1 %tobool171.not, label %if.end216, label %land.rhs178

land.rhs178:                                      ; preds = %if.end161
  %.b682692 = load i1, ptr @rcu_torture_stats_print.__already_done.201, align 1
  br i1 %.b682692, label %if.end216, label %if.then189, !prof !1245

if.then189:                                       ; preds = %land.rhs178
  store i1 true, ptr @rcu_torture_stats_print.__already_done.201, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1866, i32 noundef 9, ptr noundef null) #16
  br label %if.end216

if.end216:                                        ; preds = %if.then189, %land.rhs178, %if.end161
  %81 = load i32, ptr @n_rcu_torture_barrier_error, align 4
  %tobool225.not = icmp eq i32 %81, 0
  br i1 %tobool225.not, label %if.end270, label %land.rhs232

land.rhs232:                                      ; preds = %if.end216
  %.b683691 = load i1, ptr @rcu_torture_stats_print.__already_done.202, align 1
  br i1 %.b683691, label %if.end270, label %if.then243, !prof !1245

if.then243:                                       ; preds = %land.rhs232
  store i1 true, ptr @rcu_torture_stats_print.__already_done.202, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1867, i32 noundef 9, ptr noundef null) #16
  br label %if.end270

if.end270:                                        ; preds = %if.then243, %land.rhs232, %if.end216
  %82 = load i32, ptr @n_rcu_torture_boost_ktrerror, align 4
  %tobool279.not = icmp eq i32 %82, 0
  br i1 %tobool279.not, label %if.end378, label %land.rhs286

land.rhs286:                                      ; preds = %if.end270
  %.b684690 = load i1, ptr @rcu_torture_stats_print.__already_done.203, align 1
  br i1 %.b684690, label %if.end378, label %if.then297, !prof !1245

if.then297:                                       ; preds = %land.rhs286
  store i1 true, ptr @rcu_torture_stats_print.__already_done.203, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1868, i32 noundef 9, ptr noundef null) #16
  br label %if.end378

if.end378:                                        ; preds = %if.then297, %land.rhs286, %if.end270
  %83 = load i32, ptr @n_rcu_torture_boost_failure, align 4
  %tobool387.not = icmp eq i32 %83, 0
  br i1 %tobool387.not, label %if.end432, label %land.rhs394

land.rhs394:                                      ; preds = %if.end378
  %.b685689 = load i1, ptr @rcu_torture_stats_print.__already_done.205, align 1
  br i1 %.b685689, label %if.end432, label %if.then405, !prof !1245

if.then405:                                       ; preds = %land.rhs394
  store i1 true, ptr @rcu_torture_stats_print.__already_done.205, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1870, i32 noundef 9, ptr noundef null) #16
  br label %if.end432

if.end432:                                        ; preds = %if.then405, %land.rhs394, %if.end378
  br i1 %cmp441, label %land.rhs448, label %do.end497

land.rhs448:                                      ; preds = %if.end432
  %.b686688 = load i1, ptr @rcu_torture_stats_print.__already_done.206, align 1
  br i1 %.b686688, label %do.end497, label %if.then459, !prof !1245

if.then459:                                       ; preds = %land.rhs448
  store i1 true, ptr @rcu_torture_stats_print.__already_done.206, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1871, i32 noundef 9, ptr noundef null) #16
  br label %do.end497

do.end497:                                        ; preds = %if.then459, %land.rhs448, %if.end432, %lor.lhs.false113
  %call499 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208) #19
  %call508 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %pipesummary.sroa.0.1816) #19
  %call508.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %pipesummary.sroa.7.1818) #19
  %call508.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %pipesummary.sroa.11.1820) #19
  %call508.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %pipesummary.sroa.15.1822) #19
  %call508.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %pipesummary.sroa.19.1824) #19
  %call508.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %pipesummary.sroa.23.1826) #19
  %call508.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %pipesummary.sroa.27.1828) #19
  %call508.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %pipesummary.sroa.31.1830) #19
  %call508.8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %pipesummary.sroa.35.1832) #19
  %call508.9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %pipesummary.sroa.39.1833) #19
  %call508.10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %pipesummary.sroa.43.1835) #19
  %call516 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #19
  %84 = load ptr, ptr @torture_type, align 4
  %call521 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef %84, ptr noundef nonnull @.str.70) #19
  %call526 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218) #19
  %call535 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %batchsummary.sroa.0.1837) #19
  %call535.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %batchsummary.sroa.6.1839) #19
  %call535.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %batchsummary.sroa.9.1841) #19
  %call535.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %batchsummary.sroa.12.1843) #19
  %call535.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %batchsummary.sroa.15.1845) #19
  %call535.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %batchsummary.sroa.18.1847) #19
  %call535.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %batchsummary.sroa.21.1849) #19
  %call535.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %batchsummary.sroa.24.1851) #19
  %call535.8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %batchsummary.sroa.27.1853) #19
  %call535.9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %batchsummary.sroa.30.1855) #19
  %call535.10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %batchsummary.sroa.33.1857) #19
  %call543 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #19
  %85 = load ptr, ptr @torture_type, align 4
  %call548 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef %85, ptr noundef nonnull @.str.70) #19
  %call553 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227) #19
  %call.i.i708 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @rcu_torture_wcount, i32 noundef 4) #16
  %86 = load volatile i32, ptr @rcu_torture_wcount, align 4
  %call563 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %86) #19
  %call.i.i708.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 1), i32 noundef 4) #16
  %87 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 1), align 4
  %call563.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %87) #19
  %call.i.i708.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 2), i32 noundef 4) #16
  %88 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 2), align 4
  %call563.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %88) #19
  %call.i.i708.3 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 3), i32 noundef 4) #16
  %89 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 3), align 4
  %call563.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %89) #19
  %call.i.i708.4 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 4), i32 noundef 4) #16
  %90 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 4), align 4
  %call563.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %90) #19
  %call.i.i708.5 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 5), i32 noundef 4) #16
  %91 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 5), align 4
  %call563.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %91) #19
  %call.i.i708.6 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 6), i32 noundef 4) #16
  %92 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 6), align 4
  %call563.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %92) #19
  %call.i.i708.7 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 7), i32 noundef 4) #16
  %93 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 7), align 4
  %call563.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %93) #19
  %call.i.i708.8 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 8), i32 noundef 4) #16
  %94 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 8), align 4
  %call563.8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %94) #19
  %call.i.i708.9 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 9), i32 noundef 4) #16
  %95 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 9), align 4
  %call563.9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %95) #19
  %call.i.i708.10 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 10), i32 noundef 4) #16
  %96 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @rcu_torture_wcount, i32 0, i32 10), align 4
  %call563.10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %96) #19
  %call571 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #19
  %97 = load ptr, ptr @cur_ops, align 4
  %stats = getelementptr inbounds %struct.rcu_torture_ops, ptr %97, i32 0, i32 19
  %98 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %stats, align 4
  %tobool572.not = icmp eq ptr %99, null
  br i1 %tobool572.not, label %if.end575, label %if.then573

if.then573:                                       ; preds = %do.end497
  tail call void %99() #16
  br label %if.end575

if.end575:                                        ; preds = %if.then573, %do.end497
  %100 = load i32, ptr @rcu_torture_stats_print.rtcv_snap, align 4
  %101 = load i32, ptr @rcu_torture_current_version, align 4
  %cmp576 = icmp eq i32 %100, %101
  br i1 %cmp576, label %land.lhs.true, label %if.end636

land.lhs.true:                                    ; preds = %if.end575
  %102 = load volatile ptr, ptr @rcu_torture_current, align 4
  %tobool582.not = icmp eq ptr %102, null
  br i1 %tobool582.not, label %if.end636, label %land.lhs.true583

land.lhs.true583:                                 ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress_at_boot to i32))
  %103 = load i32, ptr @rcu_cpu_stall_suppress_at_boot, align 4
  %tobool.not.i.i = icmp eq i32 %103, 0
  br i1 %tobool.not.i.i, label %rcu_stall_is_suppressed.exit, label %rcu_stall_is_suppressed_at_boot.exit.i

rcu_stall_is_suppressed_at_boot.exit.i:           ; preds = %land.lhs.true583
  %call.i.i711 = tail call zeroext i1 @rcu_inkernel_boot_has_ended() #16
  br i1 %call.i.i711, label %rcu_stall_is_suppressed.exit, label %if.end636

rcu_stall_is_suppressed.exit:                     ; preds = %rcu_stall_is_suppressed_at_boot.exit.i, %land.lhs.true583
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  %104 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %tobool.i.not = icmp eq i32 %104, 0
  br i1 %tobool.i.not, label %if.then585, label %if.end636

if.then585:                                       ; preds = %rcu_stall_is_suppressed.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #16
  %105 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gp_seq) #16
  %106 = ptrtoint ptr %gp_seq to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %gp_seq, align 4
  %107 = load ptr, ptr @cur_ops, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  call void @rcutorture_get_gp_data(i32 noundef %109, ptr noundef nonnull %flags, ptr noundef nonnull %gp_seq) #16
  %110 = load ptr, ptr @cur_ops, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %113 = load ptr, ptr @srcu_ctlp, align 4
  call void @srcutorture_get_gp_data(i32 noundef %112, ptr noundef %113, ptr noundef nonnull %flags, ptr noundef nonnull %gp_seq) #16
  %114 = load volatile ptr, ptr @writer_task, align 4
  %115 = load volatile i32, ptr @rcu_torture_writer_state, align 4
  %cmp.i712 = icmp ugt i32 %115, 11
  br i1 %cmp.i712, label %rcu_torture_writer_state_getname.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then585
  %arrayidx.i = getelementptr [12 x ptr], ptr @rcu_torture_writer_state_names, i32 0, i32 %115
  %116 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i, align 4
  br label %rcu_torture_writer_state_getname.exit

rcu_torture_writer_state_getname.exit:            ; preds = %if.end.i, %if.then585
  %retval.0.i = phi ptr [ %117, %if.end.i ], [ @.str.130, %if.then585 ]
  %118 = ptrtoint ptr %gp_seq to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %gp_seq, align 4
  %120 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags, align 4
  %cmp596 = icmp eq ptr %114, null
  br i1 %cmp596, label %cond.end602.thread, label %cond.end602

cond.end602.thread:                               ; preds = %rcu_torture_writer_state_getname.exit
  %call604719 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %retval.0.i, i32 noundef %115, i32 noundef %119, i32 noundef %121, i32 noundef -1, i32 noundef -1) #19
  br label %if.end609

cond.end602:                                      ; preds = %rcu_torture_writer_state_getname.exit
  %122 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %114, align 128
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %114, i32 0, i32 1
  %124 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %stack.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %cpu.i, align 4
  %call604 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %retval.0.i, i32 noundef %115, i32 noundef %119, i32 noundef %121, i32 noundef %123, i32 noundef %127) #19
  %.b687 = load i1, ptr @rcu_torture_stats_print.splatted, align 1
  br i1 %.b687, label %if.end609, label %if.then608

if.then608:                                       ; preds = %cond.end602
  call void @sched_show_task(ptr noundef nonnull %114) #16
  store i1 true, ptr @rcu_torture_stats_print.splatted, align 1
  br label %if.end609

if.end609:                                        ; preds = %if.then608, %cond.end602, %cond.end602.thread
  %128 = load ptr, ptr @cur_ops, align 4
  %gp_kthread_dbg = getelementptr inbounds %struct.rcu_torture_ops, ptr %128, i32 0, i32 20
  %129 = ptrtoint ptr %gp_kthread_dbg to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %gp_kthread_dbg, align 4
  %tobool610.not = icmp eq ptr %130, null
  br i1 %tobool610.not, label %do.body614, label %if.then611

if.then611:                                       ; preds = %if.end609
  call void %130() #16
  br label %do.body614

do.body614:                                       ; preds = %if.then611, %if.end609
  %call.i.i709 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @rcu_torture_stats_print.___rfd_beenhere, i32 noundef 4) #16
  %131 = load volatile i32, ptr @rcu_torture_stats_print.___rfd_beenhere, align 4
  %tobool616.not = icmp eq i32 %131, 0
  br i1 %tobool616.not, label %land.lhs.true617, label %do.end635

land.lhs.true617:                                 ; preds = %do.body614
  %call.i.i710 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rcu_torture_stats_print.___rfd_beenhere, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1254
  call void @llvm.prefetch.p0(ptr nonnull @rcu_torture_stats_print.___rfd_beenhere, i32 1, i32 3, i32 1) #16
  %132 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr nonnull @rcu_torture_stats_print.___rfd_beenhere) #16, !srcloc !1255
  %asmresult.i.i = extractvalue { i32, i32 } %132, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1256
  %tobool619.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool619.not, label %if.then620, label %do.end635

if.then620:                                       ; preds = %land.lhs.true617
  call void @tracing_off() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  %133 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %tobool622.not = icmp eq i32 %133, 0
  br i1 %tobool622.not, label %if.then623, label %do.end626

if.then623:                                       ; preds = %if.then620
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  store i32 3, ptr @rcu_cpu_stall_suppress, align 4
  br label %do.end626

do.end626:                                        ; preds = %if.then623, %if.then620
  call void @ftrace_dump(i32 noundef 1) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  %134 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %cmp628 = icmp eq i32 %134, 3
  br i1 %cmp628, label %if.then629, label %do.end635

if.then629:                                       ; preds = %do.end626
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  store i32 0, ptr @rcu_cpu_stall_suppress, align 4
  br label %do.end635

do.end635:                                        ; preds = %if.then629, %do.end626, %land.lhs.true617, %do.body614
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gp_seq) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #16
  br label %if.end636

if.end636:                                        ; preds = %do.end635, %rcu_stall_is_suppressed.exit, %rcu_stall_is_suppressed_at_boot.exit.i, %land.lhs.true, %if.end575
  %135 = load i32, ptr @rcu_torture_current_version, align 4
  store i32 %135, ptr @rcu_torture_stats_print.rtcv_snap, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @torture_shutdown_absorb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @torture_onoff_stats() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_show_task(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_get_gp_kthreads_prio() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_torture_boost(ptr nocapture noundef readnone %arg) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %gp_state_time = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gp_state_time) #16
  %0 = ptrtoint ptr %gp_state_time to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %gp_state_time, align 4, !annotation !1247
  %1 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end3, label %if.then

if.then:                                          ; preds = %entry
  tail call void @verbose_torout_sleep() #16
  %2 = load ptr, ptr @torture_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %2, ptr noundef nonnull @.str.250) #19
  br label %do.end3

do.end3:                                          ; preds = %if.then, %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  tail call void @sched_set_fifo_low(ptr noundef %6) #16
  br label %do.body5

do.body5:                                         ; preds = %if.end77, %do.end3
  %gp_state.0 = phi i32 [ -1, %do.end3 ], [ %gp_state.3, %if.end77 ]
  %call6 = tail call zeroext i1 @kthread_should_stop() #16
  br i1 %call6, label %checkwait, label %if.end8

if.end8:                                          ; preds = %do.body5
  %7 = load i32, ptr @boost_starttime, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %8, %7
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub9 = sub i32 %7, %9
  %call10 = tail call i32 @schedule_timeout_interruptible(i32 noundef %sub9) #16
  %call11 = tail call zeroext i1 @stutter_wait(ptr noundef nonnull @.str.249) #16
  br i1 %call11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %while.body
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  tail call void @sched_set_fifo_low(ptr noundef %11) #16
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %while.body
  %call16 = tail call zeroext i1 @torture_must_stop() #16
  br i1 %call16, label %checkwait, label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, ptr @test_boost_duration, align 4
  %mul.neg = mul i32 %12, -100
  %add.neg = sub i32 %mul.neg, %7
  br label %while.cond19

while.cond19:                                     ; preds = %if.end44, %while.end
  %gp_state.1 = phi i32 [ %gp_state.0, %while.end ], [ %gp_state.2, %if.end44 ]
  %failed.0.off0 = phi i1 [ false, %while.end ], [ %failed.1.off0, %if.end44 ]
  %gp_initiated.0.off0 = phi i1 [ false, %while.end ], [ %gp_initiated.2.off0, %if.end44 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub20 = add i32 %add.neg, %13
  %cmp21 = icmp slt i32 %sub20, 0
  %gp_initiated.0.off0.not = xor i1 %gp_initiated.0.off0, true
  %brmerge = select i1 %gp_initiated.0.off0.not, i1 true, i1 %failed.0.off0
  br i1 %cmp21, label %while.body22, label %while.end48

while.body22:                                     ; preds = %while.cond19
  br i1 %brmerge, label %if.end29, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %while.body22
  %14 = load ptr, ptr @cur_ops, align 4
  %poll_gp_state = getelementptr inbounds %struct.rcu_torture_ops, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %poll_gp_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %poll_gp_state, align 4
  %call26 = tail call zeroext i1 %16(i32 noundef %gp_state.1) #16
  br i1 %call26, label %if.end29, label %if.then27

if.then27:                                        ; preds = %land.lhs.true25
  %call28 = call fastcc zeroext i1 @rcu_torture_boost_failed(i32 noundef %gp_state.1, ptr noundef nonnull %gp_state_time)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %land.lhs.true25, %while.body22
  %failed.1.off0 = phi i1 [ false, %land.lhs.true25 ], [ %call28, %if.then27 ], [ %failed.0.off0, %while.body22 ]
  br i1 %gp_initiated.0.off0, label %lor.lhs.false, label %if.then33

lor.lhs.false:                                    ; preds = %if.end29
  %17 = load ptr, ptr @cur_ops, align 4
  %poll_gp_state31 = getelementptr inbounds %struct.rcu_torture_ops, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %poll_gp_state31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %poll_gp_state31, align 4
  %call32 = tail call zeroext i1 %19(i32 noundef %gp_state.1) #16
  br i1 %call32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %lor.lhs.false, %if.end29
  %20 = load ptr, ptr @cur_ops, align 4
  %start_gp_poll = getelementptr inbounds %struct.rcu_torture_ops, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %start_gp_poll to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %start_gp_poll, align 4
  %call34 = tail call i32 %22() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %24 = ptrtoint ptr %gp_state_time to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %gp_state_time, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %lor.lhs.false
  %gp_state.2 = phi i32 [ %call34, %if.then33 ], [ %gp_state.1, %lor.lhs.false ]
  %call36 = tail call zeroext i1 @stutter_wait(ptr noundef nonnull @.str.249) #16
  br i1 %call36, label %if.then37, label %if.end44

if.then37:                                        ; preds = %if.end35
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  tail call void @sched_set_fifo_low(ptr noundef %26) #16
  %27 = load ptr, ptr @cur_ops, align 4
  %poll_gp_state40 = getelementptr inbounds %struct.rcu_torture_ops, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %poll_gp_state40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %poll_gp_state40, align 4
  %call41 = tail call zeroext i1 %29(i32 noundef %gp_state.2) #16
  %not.call41 = xor i1 %call41, true
  br label %if.end44

if.end44:                                         ; preds = %if.then37, %if.end35
  %gp_initiated.2.off0 = phi i1 [ true, %if.end35 ], [ %not.call41, %if.then37 ]
  %call45 = tail call zeroext i1 @torture_must_stop() #16
  br i1 %call45, label %checkwait, label %while.cond19

while.end48:                                      ; preds = %while.cond19
  br i1 %brmerge, label %if.end57, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %while.end48
  %30 = load ptr, ptr @cur_ops, align 4
  %poll_gp_state53 = getelementptr inbounds %struct.rcu_torture_ops, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %poll_gp_state53 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %poll_gp_state53, align 4
  %call54 = tail call zeroext i1 %32(i32 noundef %gp_state.1) #16
  br i1 %call54, label %if.end57, label %if.then55

if.then55:                                        ; preds = %land.lhs.true52
  %call56 = call fastcc zeroext i1 @rcu_torture_boost_failed(i32 noundef %gp_state.1, ptr noundef nonnull %gp_state_time)
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %land.lhs.true52, %while.end48
  %33 = load i32, ptr @boost_starttime, align 4
  %cmp59114 = icmp eq i32 %7, %33
  br i1 %cmp59114, label %land.rhs, label %checkwait

land.rhs:                                         ; preds = %if.end70, %if.end57
  %call60 = tail call zeroext i1 @kthread_should_stop() #16
  br i1 %call60, label %checkwait, label %while.body61

while.body61:                                     ; preds = %land.rhs
  %call62 = tail call i32 @mutex_trylock(ptr noundef nonnull @boost_mutex) #16
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end70, label %if.then64

if.then64:                                        ; preds = %while.body61
  %34 = load i32, ptr @boost_starttime, align 4
  %cmp65 = icmp eq i32 %7, %34
  br i1 %cmp65, label %if.then66, label %if.end69

if.then66:                                        ; preds = %if.then64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %36 = load i32, ptr @test_boost_interval, align 4
  %mul67 = mul i32 %36, 100
  %add68 = add i32 %mul67, %35
  store i32 %add68, ptr @boost_starttime, align 4
  %37 = load i32, ptr @n_rcu_torture_boosts, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr @n_rcu_torture_boosts, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.then64
  tail call void @mutex_unlock(ptr noundef nonnull @boost_mutex) #16
  br label %checkwait

if.end70:                                         ; preds = %while.body61
  %call71 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #16
  %38 = load i32, ptr @boost_starttime, align 4
  %cmp59 = icmp eq i32 %7, %38
  br i1 %cmp59, label %land.rhs, label %checkwait

checkwait:                                        ; preds = %if.end70, %if.end69, %land.rhs, %if.end57, %if.end44, %if.end15, %do.body5
  %gp_state.3 = phi i32 [ %gp_state.0, %do.body5 ], [ %gp_state.1, %if.end69 ], [ %gp_state.1, %if.end57 ], [ %gp_state.1, %land.rhs ], [ %gp_state.1, %if.end70 ], [ %gp_state.2, %if.end44 ], [ %gp_state.0, %if.end15 ]
  %call73 = tail call zeroext i1 @stutter_wait(ptr noundef nonnull @.str.249) #16
  br i1 %call73, label %if.then74, label %if.end77

if.then74:                                        ; preds = %checkwait
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  tail call void @sched_set_fifo_low(ptr noundef %40) #16
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %checkwait
  %call79 = tail call zeroext i1 @torture_must_stop() #16
  br i1 %call79, label %while.cond82.preheader, label %do.body5

while.cond82.preheader:                           ; preds = %if.end77
  %call83115 = tail call zeroext i1 @kthread_should_stop() #16
  br i1 %call83115, label %while.end87, label %while.body85

while.body85:                                     ; preds = %while.body85, %while.cond82.preheader
  tail call void @torture_shutdown_absorb(ptr noundef nonnull @.str.249) #16
  %call86 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #16
  %call83 = tail call zeroext i1 @kthread_should_stop() #16
  br i1 %call83, label %while.end87, label %while.body85

while.end87:                                      ; preds = %while.body85, %while.cond82.preheader
  tail call void @torture_kthread_stopping(ptr noundef nonnull @.str.249) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gp_state_time) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_cpu(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo_low(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rcu_torture_boost_failed(i32 noundef %gp_state, ptr nocapture noundef %start) unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu) #16
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cpu, align 4, !annotation !1247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %2 = load i32, ptr @test_boost_duration, align 4
  %mul = mul i32 %2, 100
  %sub = add i32 %mul, -50
  %3 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %start, align 4
  %sub1 = sub i32 %1, %4
  %cmp = icmp ugt i32 %sub1, %sub
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1288
  %5 = load ptr, ptr @cur_ops, align 4
  %poll_gp_state = getelementptr inbounds %struct.rcu_torture_ops, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %poll_gp_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %poll_gp_state, align 4
  %call = tail call zeroext i1 %7(i32 noundef %gp_state) #16
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %do.end
  %8 = load ptr, ptr @cur_ops, align 4
  %check_boost_failed = getelementptr inbounds %struct.rcu_torture_ops, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %check_boost_failed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %check_boost_failed, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %do.body43, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call7 = call zeroext i1 %10(i32 noundef %gp_state, ptr noundef nonnull %cpu) #16
  br i1 %call7, label %do.body43, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %12 = load volatile i32, ptr @rcu_torture_boost_failed.last_persist, align 4
  %add = sub i32 %sub, %11
  %sub12 = add i32 %add, %12
  %cmp13 = icmp slt i32 %sub12, 0
  br i1 %cmp13, label %land.lhs.true14, label %cleanup

land.lhs.true14:                                  ; preds = %if.then8
  %call.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rcu_torture_boost_failed.last_persist, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1289
  call void @llvm.prefetch.p0(ptr nonnull @rcu_torture_boost_failed.last_persist, i32 1, i32 3, i32 1) #16
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %land.lhs.true14
  %13 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr nonnull @rcu_torture_boost_failed.last_persist, i32 %12, i32 %11) #16, !srcloc !1275
  %asmresult.i = extractvalue { i32, i32 } %13, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %13, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1290
  %cmp34 = icmp eq i32 %asmresult1.i, %12
  br i1 %cmp34, label %do.end38, label %cleanup

do.end38:                                         ; preds = %__cmpxchg.exit
  %14 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu, align 4
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251, i32 noundef %15) #19
  br label %cleanup

do.body43:                                        ; preds = %land.lhs.true, %if.end
  %16 = load i32, ptr @verbose, align 4
  %tobool44.not = icmp eq i32 %16, 0
  br i1 %tobool44.not, label %do.end53, label %if.then45

if.then45:                                        ; preds = %do.body43
  call void @verbose_torout_sleep() #16
  %17 = load ptr, ptr @torture_type, align 4
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %17, ptr noundef nonnull @.str.255) #19
  br label %do.end53

do.end53:                                         ; preds = %if.then45, %do.body43
  %18 = load i32, ptr @n_rcu_torture_boost_failure, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr @n_rcu_torture_boost_failure, align 4
  %call.i124 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rcu_torture_boost_failed.dbg_done, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1291
  call void @llvm.prefetch.p0(ptr nonnull @rcu_torture_boost_failed.dbg_done, i32 1, i32 3, i32 1) #16
  %19 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr nonnull @rcu_torture_boost_failed.dbg_done) #16, !srcloc !1255
  %asmresult.i125 = extractvalue { i32, i32 } %19, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1292
  %tobool75.not = icmp eq i32 %asmresult.i125, 0
  br i1 %tobool75.not, label %land.lhs.true76, label %cleanup

land.lhs.true76:                                  ; preds = %do.end53
  %20 = load ptr, ptr @cur_ops, align 4
  %gp_kthread_dbg = getelementptr inbounds %struct.rcu_torture_ops, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %gp_kthread_dbg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gp_kthread_dbg, align 4
  %tobool77.not = icmp eq ptr %22, null
  br i1 %tobool77.not, label %cleanup, label %do.end81

do.end81:                                         ; preds = %land.lhs.true76
  %23 = call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %rt_priority = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %rt_priority to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rt_priority, align 4
  %29 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %start, align 4
  %sub84 = sub i32 %1, %30
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257, i32 noundef %28, i32 noundef %gp_state, i32 noundef %sub84) #19
  %31 = load ptr, ptr @cur_ops, align 4
  %gp_kthread_dbg86 = getelementptr inbounds %struct.rcu_torture_ops, ptr %31, i32 0, i32 20
  %32 = ptrtoint ptr %gp_kthread_dbg86 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gp_kthread_dbg86, align 4
  call void %33() #16
  %34 = load ptr, ptr @cur_ops, align 4
  %poll_gp_state87 = getelementptr inbounds %struct.rcu_torture_ops, ptr %34, i32 0, i32 14
  %35 = ptrtoint ptr %poll_gp_state87 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %poll_gp_state87, align 4
  %call88 = call zeroext i1 %36(i32 noundef %gp_state) #16
  %cond = select i1 %call88, ptr @.str.262, ptr @.str.263
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260, i32 noundef %gp_state, ptr noundef nonnull %cond) #19
  br label %cleanup

if.else:                                          ; preds = %entry
  %37 = load ptr, ptr @cur_ops, align 4
  %check_boost_failed96 = getelementptr inbounds %struct.rcu_torture_ops, ptr %37, i32 0, i32 21
  %38 = ptrtoint ptr %check_boost_failed96 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %check_boost_failed96, align 4
  %tobool97.not = icmp eq ptr %39, null
  br i1 %tobool97.not, label %cleanup, label %land.lhs.true98

land.lhs.true98:                                  ; preds = %if.else
  %call100 = tail call zeroext i1 %39(i32 noundef %gp_state, ptr noundef null) #16
  br i1 %call100, label %cleanup, label %if.then101

if.then101:                                       ; preds = %land.lhs.true98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %41 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %start, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then101, %land.lhs.true98, %if.else, %do.end81, %land.lhs.true76, %do.end53, %do.end38, %__cmpxchg.exit, %if.then8, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ false, %do.end38 ], [ false, %__cmpxchg.exit ], [ false, %if.then8 ], [ true, %do.end81 ], [ true, %land.lhs.true76 ], [ true, %do.end53 ], [ false, %if.else ], [ false, %land.lhs.true98 ], [ false, %if.then101 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu) #16
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_torture_stop_kthread(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_torture_stall(ptr nocapture noundef readnone %args) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.end3, label %if.then

if.then:                                          ; preds = %entry
  tail call void @verbose_torout_sleep() #16
  %1 = load ptr, ptr @torture_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %1, ptr noundef nonnull @.str.268) #19
  br label %do.end3

do.end3:                                          ; preds = %if.then, %entry
  %2 = load i32, ptr @stall_cpu_holdoff, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.body5, label %if.end28

do.body5:                                         ; preds = %do.end3
  %3 = load i32, ptr @verbose, align 4
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.end15, label %if.then7

if.then7:                                         ; preds = %do.body5
  tail call void @verbose_torout_sleep() #16
  %4 = load ptr, ptr @torture_type, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %4, ptr noundef nonnull @.str.271) #19
  br label %do.end15

do.end15:                                         ; preds = %if.then7, %do.body5
  %5 = load i32, ptr @stall_cpu_holdoff, align 4
  %mul = mul i32 %5, 100
  %call16 = tail call i32 @schedule_timeout_interruptible(i32 noundef %mul) #16
  %6 = load i32, ptr @verbose, align 4
  %tobool18.not = icmp eq i32 %6, 0
  br i1 %tobool18.not, label %if.end28, label %if.then19

if.then19:                                        ; preds = %do.end15
  tail call void @verbose_torout_sleep() #16
  %7 = load ptr, ptr @torture_type, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %7, ptr noundef nonnull @.str.274) #19
  br label %if.end28

if.end28:                                         ; preds = %if.then19, %do.end15, %do.end3
  %call29 = tail call zeroext i1 @kthread_should_stop() #16
  br i1 %call29, label %if.end49, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end28
  %8 = load i32, ptr @stall_gp_kthread, align 4
  %cmp30 = icmp sgt i32 %8, 0
  br i1 %cmp30, label %do.body32, label %if.end49

do.body32:                                        ; preds = %land.lhs.true
  %9 = load i32, ptr @verbose, align 4
  %tobool33.not = icmp eq i32 %9, 0
  br i1 %tobool33.not, label %do.end42, label %if.then34

if.then34:                                        ; preds = %do.body32
  tail call void @verbose_torout_sleep() #16
  %10 = load ptr, ptr @torture_type, align 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %10, ptr noundef nonnull @.str.277) #19
  br label %do.end42

do.end42:                                         ; preds = %if.then34, %do.body32
  %11 = load i32, ptr @stall_gp_kthread, align 4
  %mul43 = mul i32 %11, 100
  tail call void @rcu_gp_set_torture_wait(i32 noundef %mul43) #16
  %12 = load i32, ptr @stall_gp_kthread, align 4
  %add134 = add i32 %12, 2
  %cmp44135 = icmp sgt i32 %add134, 0
  br i1 %cmp44135, label %for.body, label %if.end49

for.body:                                         ; preds = %if.end47, %do.end42
  %idx.0136 = phi i32 [ %inc, %if.end47 ], [ 0, %do.end42 ]
  %call45 = tail call zeroext i1 @kthread_should_stop() #16
  br i1 %call45, label %if.end49, label %if.end47

if.end47:                                         ; preds = %for.body
  %call48 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 100) #16
  %inc = add nuw nsw i32 %idx.0136, 1
  %13 = load i32, ptr @stall_gp_kthread, align 4
  %add = add i32 %13, 2
  %cmp44 = icmp slt i32 %inc, %add
  br i1 %cmp44, label %for.body, label %if.end49

if.end49:                                         ; preds = %if.end47, %for.body, %do.end42, %land.lhs.true, %if.end28
  %call50 = tail call zeroext i1 @kthread_should_stop() #16
  br i1 %call50, label %do.end120, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %if.end49
  %14 = load i32, ptr @stall_cpu, align 4
  %cmp52 = icmp sgt i32 %14, 0
  br i1 %cmp52, label %do.body54, label %do.end120

do.body54:                                        ; preds = %land.lhs.true51
  %15 = load i32, ptr @verbose, align 4
  %tobool55.not = icmp eq i32 %15, 0
  br i1 %tobool55.not, label %do.end64, label %if.then56

if.then56:                                        ; preds = %do.body54
  tail call void @verbose_torout_sleep() #16
  %16 = load ptr, ptr @torture_type, align 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %16, ptr noundef nonnull @.str.280) #19
  br label %do.end64

do.end64:                                         ; preds = %if.then56, %do.body54
  %call65 = tail call i64 @ktime_get_seconds() #16
  %17 = load i32, ptr @stall_cpu, align 4
  %18 = trunc i64 %call65 to i32
  %19 = load ptr, ptr @cur_ops, align 4
  %readlock = getelementptr inbounds %struct.rcu_torture_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %readlock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %readlock, align 4
  %call68 = tail call i32 %21() #16
  %22 = load i32, ptr @stall_cpu_irqsoff, align 4
  %tobool69.not = icmp eq i32 %22, 0
  br i1 %tobool69.not, label %if.else, label %do.body71

do.body71:                                        ; preds = %do.end64
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !1260
  %and.i.i = and i32 %23, 128
  %tobool73.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #16, !srcloc !1261
  br i1 %tobool73.not, label %if.then75, label %do.end88

if.then75:                                        ; preds = %do.body71
  tail call void @trace_hardirqs_off() #16
  br label %do.end88

if.else:                                          ; preds = %do.end64
  %24 = load i32, ptr @stall_cpu_block, align 4
  %tobool79.not = icmp eq i32 %24, 0
  br i1 %tobool79.not, label %do.body81, label %do.end88

do.body81:                                        ; preds = %if.else
  %25 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %28, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !1293
  br label %do.end88

do.end88:                                         ; preds = %do.body81, %if.else, %if.then75, %do.body71
  %29 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu, align 4
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.282, ptr noundef nonnull @.str.265, i32 noundef %32) #19
  %call92137 = tail call i64 @ktime_get_seconds() #16
  %conv93138 = trunc i64 %call92137 to i32
  %33 = add i32 %17, %18
  %sub139 = sub i32 %conv93138, %33
  %cmp94140 = icmp slt i32 %sub139, 0
  br i1 %cmp94140, label %while.body, label %while.end

while.body:                                       ; preds = %if.end103, %do.end88
  %34 = load i32, ptr @stall_cpu_block, align 4
  %tobool96.not = icmp eq i32 %34, 0
  br i1 %tobool96.not, label %if.else99, label %if.then97

if.then97:                                        ; preds = %while.body
  %call98 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 100) #16
  br label %if.end103

if.else99:                                        ; preds = %while.body
  %35 = load i8, ptr @stall_no_softlockup, align 1, !range !1244
  %tobool100.not = icmp eq i8 %35, 0
  br i1 %tobool100.not, label %if.end103, label %if.then101

if.then101:                                       ; preds = %if.else99
  tail call void @touch_softlockup_watchdog() #16
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.else99, %if.then97
  %call92 = tail call i64 @ktime_get_seconds() #16
  %conv93 = trunc i64 %call92 to i32
  %sub = sub i32 %conv93, %33
  %cmp94 = icmp slt i32 %sub, 0
  br i1 %cmp94, label %while.body, label %while.end

while.end:                                        ; preds = %if.end103, %do.end88
  %36 = load i32, ptr @stall_cpu_irqsoff, align 4
  %tobool104.not = icmp eq i32 %36, 0
  br i1 %tobool104.not, label %if.else109, label %do.body106

do.body106:                                       ; preds = %while.end
  tail call void @trace_hardirqs_on() #16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !1262
  br label %if.end116

if.else109:                                       ; preds = %while.end
  %37 = load i32, ptr @stall_cpu_block, align 4
  %tobool110.not = icmp eq i32 %37, 0
  br i1 %tobool110.not, label %do.body112, label %if.end116

do.body112:                                       ; preds = %if.else109
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !1294
  %38 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i.i131 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i131 to ptr
  %preempt_count.i.i132 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i132 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i132, align 4
  %sub.i = add i32 %41, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i132, align 4
  br label %if.end116

if.end116:                                        ; preds = %do.body112, %if.else109, %do.body106
  %42 = load ptr, ptr @cur_ops, align 4
  %readunlock = getelementptr inbounds %struct.rcu_torture_ops, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %readunlock to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %readunlock, align 4
  tail call void %44(i32 noundef %call68) #16
  br label %do.end120

do.end120:                                        ; preds = %if.end116, %land.lhs.true51, %if.end49
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.265) #19
  tail call void @torture_shutdown_absorb(ptr noundef nonnull @.str.265) #16
  %call124141 = tail call zeroext i1 @kthread_should_stop() #16
  br i1 %call124141, label %while.end127, label %while.body125

while.body125:                                    ; preds = %while.body125, %do.end120
  %call126 = tail call i32 @schedule_timeout_interruptible(i32 noundef 1000) #16
  %call124 = tail call zeroext i1 @kthread_should_stop() #16
  br i1 %call124, label %while.end127, label %while.body125

while.end127:                                     ; preds = %while.body125, %do.end120
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_gp_set_torture_wait(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_oom_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_torture_fwd_prog(ptr noundef %args) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %fcs.i = alloca %struct.fwd_cb_state, align 4
  %0 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %static_prio.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %static_prio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %static_prio.i, align 4
  %sub.i = add i32 %5, -120
  %6 = load volatile i32, ptr @rcu_fwd_seq, align 4
  %7 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end9, label %if.then

if.then:                                          ; preds = %entry
  tail call void @verbose_torout_sleep() #16
  %8 = load ptr, ptr @torture_type, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %8, ptr noundef nonnull @.str.317) #19
  br label %do.end9

do.end9:                                          ; preds = %if.then, %entry
  tail call void @rcu_bind_current_to_nocb() #16
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %10, i32 noundef 19) #16
  %rcu_fwd_id = getelementptr inbounds %struct.rcu_fwd, ptr %args, i32 0, i32 7
  %rcu_fwd_startat.i = getelementptr inbounds %struct.rcu_fwd, ptr %args, i32 0, i32 4
  %n_launders_cb.i = getelementptr inbounds %struct.rcu_fwd, ptr %args, i32 0, i32 3
  %rcu_launder_gp_seq_start.i = getelementptr inbounds %struct.rcu_fwd, ptr %args, i32 0, i32 6
  %rcu_fwd_cb_head.i = getelementptr inbounds %struct.rcu_fwd, ptr %args, i32 0, i32 1
  %11 = getelementptr inbounds %struct.callback_head, ptr %fcs.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.fwd_cb_state, ptr %fcs.i, i32 0, i32 1
  br label %do.body12

do.body12:                                        ; preds = %do.cond77, %do.end9
  %tested.0 = phi i32 [ 0, %do.end9 ], [ %tested.3, %do.cond77 ]
  %tested_tries.0 = phi i32 [ 0, %do.end9 ], [ %tested_tries.2, %do.cond77 ]
  %oldseq.0 = phi i32 [ %6, %do.end9 ], [ %oldseq.1, %do.cond77 ]
  %firsttime.0.off0 = phi i1 [ true, %do.end9 ], [ %firsttime.1.off0, %do.cond77 ]
  %13 = ptrtoint ptr %rcu_fwd_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rcu_fwd_id, align 4
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %if.then14, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.body12
  %15 = load volatile i32, ptr @rcu_fwd_seq, align 4
  %cmp167 = icmp eq i32 %15, %oldseq.0
  br i1 %cmp167, label %while.body, label %do.end50

if.then14:                                        ; preds = %do.body12
  %16 = load i32, ptr @fwd_progress_holdoff, align 4
  %mul = mul i32 %16, 100
  %call15 = call i32 @schedule_timeout_interruptible(i32 noundef %mul) #16
  store volatile i8 0, ptr @rcu_fwd_emergency_stop, align 1
  br i1 %firsttime.0.off0, label %if.end33, label %if.then26

if.then26:                                        ; preds = %if.then14
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rcu_fwd_max_cbs, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1295
  call void @llvm.prefetch.p0(ptr nonnull @rcu_fwd_max_cbs, i32 1, i32 3, i32 1) #16
  %17 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @rcu_fwd_max_cbs) #16, !srcloc !1255
  %asmresult.i.i.i = extractvalue { i32, i32 } %17, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1296
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.296, i32 noundef %asmresult.i.i.i) #19
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %if.then14
  %18 = load i32, ptr @rcu_fwd_seq, align 4
  %add = add i32 %18, 1
  store volatile i32 %add, ptr @rcu_fwd_seq, align 4
  br label %do.end55

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %call47 = call i32 @schedule_timeout_interruptible(i32 noundef 1) #16
  %19 = load volatile i32, ptr @rcu_fwd_seq, align 4
  %cmp = icmp eq i32 %19, %oldseq.0
  br i1 %cmp, label %while.body, label %do.end50

do.end50:                                         ; preds = %while.body, %while.cond.preheader
  %20 = load volatile i32, ptr @rcu_fwd_seq, align 4
  br label %do.end55

do.end55:                                         ; preds = %do.end50, %if.end33
  %oldseq.1 = phi i32 [ %20, %do.end50 ], [ %oldseq.0, %if.end33 ]
  %firsttime.1.off0 = phi i1 [ %firsttime.0.off0, %do.end50 ], [ false, %if.end33 ]
  %21 = ptrtoint ptr %rcu_fwd_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rcu_fwd_id, align 4
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.322, ptr noundef nonnull @.str.296, i32 noundef %22) #19
  %call59 = call zeroext i1 @rcu_inkernel_boot_has_ended() #16
  br i1 %call59, label %land.lhs.true, label %if.end64

land.lhs.true:                                    ; preds = %do.end55
  %call60 = call i32 @torture_num_online_cpus() #16
  %23 = ptrtoint ptr %rcu_fwd_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rcu_fwd_id, align 4
  %cmp62 = icmp sgt i32 %call60, %24
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %land.lhs.true
  %25 = load volatile i8, ptr @rcu_fwd_emergency_stop, align 1, !range !1244
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end64

if.end.i:                                         ; preds = %if.then63
  %26 = load ptr, ptr @cur_ops, align 4
  %call.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %tobool2.not.i = icmp eq ptr %28, null
  br i1 %tobool2.not.i, label %if.end64, label %do.body9.i

do.body9.i:                                       ; preds = %if.end.i
  store volatile i8 1, ptr @rcu_fwd_cb_nodelay, align 1
  %sync.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %26, i32 0, i32 10
  %29 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sync.i, align 4
  call void %30() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %32 = ptrtoint ptr %rcu_fwd_startat.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %31, ptr %rcu_fwd_startat.i, align 4
  %33 = ptrtoint ptr %n_launders_cb.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %n_launders_cb.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %do.body9.i
  %i.0369.i = phi i32 [ 0, %do.body9.i ], [ %inc.i, %for.body.i ]
  %arrayidx.i = getelementptr %struct.rcu_fwd, ptr %args, i32 0, i32 5, i32 %i.0369.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.0369.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 160
  br i1 %exitcond.not.i, label %do.end27.i, label %for.body.i

do.end27.i:                                       ; preds = %for.body.i
  %35 = load volatile i32, ptr @rcu_torture_current_version, align 4
  %36 = load ptr, ptr @cur_ops, align 4
  %get_gp_seq.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %get_gp_seq.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %get_gp_seq.i, align 4
  %call29.i = call i32 %38() #16
  %39 = ptrtoint ptr %rcu_launder_gp_seq_start.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call29.i, ptr %rcu_launder_gp_seq_start.i, align 4
  %add.neg.i = sub i32 -800, %31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %sub370391.i = add i32 %40, %add.neg.i
  %cmp31371392.i = icmp slt i32 %sub370391.i, 0
  br i1 %cmp31371392.i, label %land.lhs.true.lr.ph.i, label %while.end.i

land.lhs.true.lr.ph.i:                            ; preds = %if.end128.i, %do.end27.i
  %n_launders.0.ph398.i = phi i32 [ %n_launders.1352.i, %if.end128.i ], [ 0, %do.end27.i ]
  %n_launders_sa.0.ph396.i = phi i32 [ %n_launders_sa.1350.i, %if.end128.i ], [ 0, %do.end27.i ]
  %n_max_cbs.0.ph394.i = phi i32 [ %n_max_cbs.1348.i, %if.end128.i ], [ 0, %do.end27.i ]
  %n_max_gps.0.ph393.i = phi i32 [ %n_max_gps.2346.i, %if.end128.i ], [ 0, %do.end27.i ]
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then117.i, %land.lhs.true.lr.ph.i
  %41 = load i32, ptr @shutdown_secs, align 4
  %tobool.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i, label %do.end36.i, label %shutdown_time_arrived.exit.i

shutdown_time_arrived.exit.i:                     ; preds = %land.lhs.true.i
  %42 = load i32, ptr @shutdown_jiffies, align 4
  %sub.i.i = add i32 %42, -3000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %sub1.i.i = sub i32 %sub.i.i, %43
  %cmp.i.i = icmp slt i32 %sub1.i.i, 0
  br i1 %cmp.i.i, label %while.end.i, label %do.end36.i

do.end36.i:                                       ; preds = %shutdown_time_arrived.exit.i, %land.lhs.true.i
  %44 = load volatile i8, ptr @rcu_fwd_emergency_stop, align 1, !range !1244
  %tobool38.not.i = icmp eq i8 %44, 0
  br i1 %tobool38.not.i, label %land.rhs.i, label %while.end.i

land.rhs.i:                                       ; preds = %do.end36.i
  %call41.i = call zeroext i1 @torture_must_stop() #16
  br i1 %call41.i, label %while.end.i, label %do.end44.i

do.end44.i:                                       ; preds = %land.rhs.i
  %45 = ptrtoint ptr %rcu_fwd_cb_head.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %rcu_fwd_cb_head.i, align 4
  %tobool46.not.i = icmp eq ptr %46, null
  br i1 %tobool46.not.i, label %if.else.i, label %if.end52.i

if.end52.i:                                       ; preds = %do.end44.i
  %rfc_next.i = getelementptr inbounds %struct.rcu_fwd_cb, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %rfc_next.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %rfc_next.i, align 4
  %tobool53.not.i = icmp eq ptr %48, null
  br i1 %tobool53.not.i, label %if.else.i, label %if.then54.i

if.then54.i:                                      ; preds = %if.end52.i
  %rfc_gps.i = getelementptr inbounds %struct.rcu_fwd_cb, ptr %46, i32 0, i32 3
  %49 = ptrtoint ptr %rfc_gps.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rfc_gps.i, align 4
  %cmp55.i = icmp sgt i32 %50, 2
  br i1 %cmp55.i, label %land.lhs.true56.i, label %if.end60.i

land.lhs.true56.i:                                ; preds = %if.then54.i
  %inc57.i = add i32 %n_max_gps.0.ph393.i, 1
  %cmp58.i = icmp sgt i32 %inc57.i, 99
  br i1 %cmp58.i, label %while.end.i, label %if.end60.i

if.end60.i:                                       ; preds = %land.lhs.true56.i, %if.then54.i
  %n_max_gps.1.i = phi i32 [ %inc57.i, %land.lhs.true56.i ], [ %n_max_gps.0.ph393.i, %if.then54.i ]
  %51 = ptrtoint ptr %rcu_fwd_cb_head.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %rcu_fwd_cb_head.i, align 4
  %inc62.i = add i32 %n_launders.0.ph398.i, 1
  %inc63.i = add i32 %n_launders_sa.0.ph396.i, 1
  br label %if.then126.i

if.else.i:                                        ; preds = %if.end52.i, %do.end44.i
  %52 = load ptr, ptr @cur_ops, align 4
  %cbflood_max.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %52, i32 0, i32 23
  %53 = ptrtoint ptr %cbflood_max.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cbflood_max.i, align 4
  %tobool64.not.i = icmp eq i32 %54, 0
  %cmp66.i = icmp sgt i32 %54, %n_max_cbs.0.ph394.i
  %or.cond.i = select i1 %tobool64.not.i, i1 true, i1 %cmp66.i
  br i1 %or.cond.i, label %if.then67.i, label %if.end128.i

if.then67.i:                                      ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3264, i32 noundef 20) #23
  %tobool69.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool69.not.i, label %land.rhs75.i, label %if.end119.i

land.rhs75.i:                                     ; preds = %if.then67.i
  %.b325.i = load i1, ptr @rcu_torture_fwd_prog_cr.__already_done, align 1
  br i1 %.b325.i, label %if.then117.i, label %if.then82.i, !prof !1245

if.then82.i:                                      ; preds = %land.rhs75.i
  store i1 true, ptr @rcu_torture_fwd_prog_cr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2393, i32 noundef 9, ptr noundef null) #16
  br label %if.then117.i

if.then117.i:                                     ; preds = %if.then82.i, %land.rhs75.i
  %call118.i = call i32 @schedule_timeout_interruptible(i32 noundef 1) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %sub.i124 = add i32 %56, %add.neg.i
  %cmp31.i = icmp slt i32 %sub.i124, 0
  br i1 %cmp31.i, label %land.lhs.true.i, label %while.end.i

if.end119.i:                                      ; preds = %if.then67.i
  %inc120.i = add i32 %n_max_cbs.0.ph394.i, 1
  %rfc_gps121.i = getelementptr inbounds %struct.rcu_fwd_cb, ptr %call7.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %rfc_gps121.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %rfc_gps121.i, align 8
  %rfc_rfp.i = getelementptr inbounds %struct.rcu_fwd_cb, ptr %call7.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %rfc_rfp.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %args, ptr %rfc_rfp.i, align 4
  br label %if.then126.i

if.then126.i:                                     ; preds = %if.end119.i, %if.end60.i
  %rfcp.0.ph.i = phi ptr [ %call7.i.i, %if.end119.i ], [ %46, %if.end60.i ]
  %n_max_gps.2.ph.i = phi i32 [ %n_max_gps.0.ph393.i, %if.end119.i ], [ %n_max_gps.1.i, %if.end60.i ]
  %n_max_cbs.1.ph.i = phi i32 [ %inc120.i, %if.end119.i ], [ %n_max_cbs.0.ph394.i, %if.end60.i ]
  %n_launders_sa.1.ph.i = phi i32 [ 0, %if.end119.i ], [ %inc63.i, %if.end60.i ]
  %n_launders.1.ph.i = phi i32 [ %n_launders.0.ph398.i, %if.end119.i ], [ %inc62.i, %if.end60.i ]
  %59 = load ptr, ptr @cur_ops, align 4
  %call127.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %59, i32 0, i32 16
  %60 = ptrtoint ptr %call127.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call127.i, align 4
  call void %61(ptr noundef nonnull %rfcp.0.ph.i, ptr noundef nonnull @rcu_torture_fwd_cb_cr) #16
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then126.i, %if.else.i
  %n_launders.1352.i = phi i32 [ %n_launders.1.ph.i, %if.then126.i ], [ %n_launders.0.ph398.i, %if.else.i ]
  %n_launders_sa.1350.i = phi i32 [ %n_launders_sa.1.ph.i, %if.then126.i ], [ %n_launders_sa.0.ph396.i, %if.else.i ]
  %n_max_cbs.1348.i = phi i32 [ %n_max_cbs.1.ph.i, %if.then126.i ], [ %n_max_cbs.0.ph394.i, %if.else.i ]
  %n_max_gps.2346.i = phi i32 [ %n_max_gps.2.ph.i, %if.then126.i ], [ %n_max_gps.0.ph393.i, %if.else.i ]
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 2233, i32 noundef 0) #16
  %call.i.i327.i = call i32 @__cond_resched() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %sub370.i = add i32 %62, %add.neg.i
  %cmp31371.i = icmp slt i32 %sub370.i, 0
  br i1 %cmp31371.i, label %land.lhs.true.lr.ph.i, label %while.end.i

while.end.i:                                      ; preds = %if.end128.i, %if.then117.i, %land.lhs.true56.i, %land.rhs.i, %do.end36.i, %shutdown_time_arrived.exit.i, %do.end27.i
  %n_max_cbs.0.ph367.i = phi i32 [ 0, %do.end27.i ], [ %n_max_cbs.0.ph394.i, %shutdown_time_arrived.exit.i ], [ %n_max_cbs.0.ph394.i, %do.end36.i ], [ %n_max_cbs.0.ph394.i, %land.rhs.i ], [ %n_max_cbs.0.ph394.i, %if.then117.i ], [ %n_max_cbs.0.ph394.i, %land.lhs.true56.i ], [ %n_max_cbs.1348.i, %if.end128.i ]
  %n_launders_sa.0.ph365.i = phi i32 [ 0, %do.end27.i ], [ %n_launders_sa.0.ph396.i, %shutdown_time_arrived.exit.i ], [ %n_launders_sa.0.ph396.i, %do.end36.i ], [ %n_launders_sa.0.ph396.i, %land.rhs.i ], [ %n_launders_sa.0.ph396.i, %if.then117.i ], [ %n_launders_sa.0.ph396.i, %land.lhs.true56.i ], [ %n_launders_sa.1350.i, %if.end128.i ]
  %n_launders.0.ph363.i = phi i32 [ 0, %do.end27.i ], [ %n_launders.0.ph398.i, %shutdown_time_arrived.exit.i ], [ %n_launders.0.ph398.i, %do.end36.i ], [ %n_launders.0.ph398.i, %land.rhs.i ], [ %n_launders.0.ph398.i, %if.then117.i ], [ %n_launders.0.ph398.i, %land.lhs.true56.i ], [ %n_launders.1352.i, %if.end128.i ]
  %n_max_gps.3.i = phi i32 [ 0, %do.end27.i ], [ %n_max_gps.0.ph393.i, %shutdown_time_arrived.exit.i ], [ %n_max_gps.0.ph393.i, %do.end36.i ], [ %n_max_gps.0.ph393.i, %land.rhs.i ], [ %n_max_gps.0.ph393.i, %if.then117.i ], [ %inc57.i, %land.lhs.true56.i ], [ %n_max_gps.2346.i, %if.end128.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %64 = ptrtoint ptr %n_launders_cb.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %n_launders_cb.i, align 4
  %66 = load volatile i32, ptr @rcu_torture_current_version, align 4
  %sub197.i = sub i32 %66, %35
  %67 = load ptr, ptr @cur_ops, align 4
  %get_gp_seq198.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %get_gp_seq198.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %get_gp_seq198.i, align 4
  %call199.i = call i32 %69() #16
  %70 = load ptr, ptr @cur_ops, align 4
  %gp_diff.i.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %gp_diff.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %gp_diff.i.i, align 4
  %tobool.not.i328.i = icmp eq ptr %72, null
  br i1 %tobool.not.i328.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %while.end.i
  %sub.i329.i = sub i32 %call199.i, %call29.i
  br label %rcutorture_seq_diff.exit.i

if.end.i.i:                                       ; preds = %while.end.i
  %call.i.i125 = call i32 %72(i32 noundef %call199.i, i32 noundef %call29.i) #16
  br label %rcutorture_seq_diff.exit.i

rcutorture_seq_diff.exit.i:                       ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i125, %if.end.i.i ], [ %sub.i329.i, %if.then.i.i ]
  %73 = load ptr, ptr @cur_ops, align 4
  %cb_barrier.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %73, i32 0, i32 17
  %74 = ptrtoint ptr %cb_barrier.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cb_barrier.i, align 4
  call void %75() #16
  %call201.i = call fastcc i32 @rcu_torture_fwd_prog_cbfree(ptr noundef %args) #16
  %call202.i = call zeroext i1 @torture_must_stop() #16
  br i1 %call202.i, label %if.end256.i, label %do.end206.i

do.end206.i:                                      ; preds = %rcutorture_seq_diff.exit.i
  %76 = load volatile i8, ptr @rcu_fwd_emergency_stop, align 1, !range !1244
  %tobool208.not.i = icmp eq i8 %76, 0
  br i1 %tobool208.not.i, label %land.lhs.true211.i, label %if.end256.i

land.lhs.true211.i:                               ; preds = %do.end206.i
  %77 = load i32, ptr @shutdown_secs, align 4
  %tobool.not.i330.i = icmp eq i32 %77, 0
  br i1 %tobool.not.i330.i, label %if.then213.i, label %shutdown_time_arrived.exit335.i

shutdown_time_arrived.exit335.i:                  ; preds = %land.lhs.true211.i
  %78 = load i32, ptr @shutdown_jiffies, align 4
  %sub.i331.i = add i32 %78, -3000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %79 = load volatile i32, ptr @jiffies, align 128
  %sub1.i332.i = sub i32 %sub.i331.i, %79
  %cmp.i333.i = icmp slt i32 %sub1.i332.i, 0
  br i1 %cmp.i333.i, label %if.end256.i, label %if.then213.i

if.then213.i:                                     ; preds = %shutdown_time_arrived.exit335.i, %land.lhs.true211.i
  %cmp215.i = icmp slt i32 %n_max_gps.3.i, 100
  br i1 %cmp215.i, label %do.end232.i, label %if.end238.i, !prof !1246

do.end232.i:                                      ; preds = %if.then213.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2422, i32 noundef 9, ptr noundef null) #16
  br label %if.end238.i

if.end238.i:                                      ; preds = %do.end232.i, %if.then213.i
  %80 = ptrtoint ptr %rcu_fwd_startat.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rcu_fwd_startat.i, align 4
  %sub251.i = sub i32 %63, %81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %sub252.i = sub i32 %82, %63
  %add253.i = add i32 %n_launders.0.ph363.i, %n_max_cbs.0.ph367.i
  %sub254.i = sub i32 %add253.i, %65
  %call255.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.327, ptr noundef nonnull @.str.328, i32 noundef %sub251.i, i32 noundef %sub252.i, i32 noundef %sub254.i, i32 noundef %n_launders.0.ph363.i, i32 noundef %n_launders_sa.0.ph365.i, i32 noundef %n_max_gps.3.i, i32 noundef %n_max_cbs.0.ph367.i, i32 noundef %sub197.i, i32 noundef %retval.0.i.i) #19
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rcu_fwd_max_cbs, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr nonnull @rcu_fwd_max_cbs, i32 1, i32 3, i32 1) #16
  %83 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rcu_fwd_max_cbs, ptr nonnull @rcu_fwd_max_cbs, i32 %n_max_cbs.0.ph367.i, ptr nonnull elementtype(i32) @rcu_fwd_max_cbs) #16, !srcloc !1251
  call fastcc void @rcu_torture_fwd_cb_hist(ptr noundef %args) #16
  br label %if.end256.i

if.end256.i:                                      ; preds = %if.end238.i, %shutdown_time_arrived.exit335.i, %do.end206.i, %rcutorture_seq_diff.exit.i
  %call257.i = call i32 @schedule_timeout_uninterruptible(i32 noundef 100) #16
  store volatile i8 0, ptr @rcu_fwd_cb_nodelay, align 1
  br label %if.end64

if.end64:                                         ; preds = %if.end256.i, %if.end.i, %if.then63, %land.lhs.true, %do.end55
  %84 = load ptr, ptr @cur_ops, align 4
  %stall_dur = getelementptr inbounds %struct.rcu_torture_ops, ptr %84, i32 0, i32 22
  %85 = ptrtoint ptr %stall_dur to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %stall_dur, align 4
  %tobool65.not = icmp eq ptr %86, null
  br i1 %tobool65.not, label %if.end71, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %if.end64
  %call68 = call i32 %86() #16
  %cmp69 = icmp sgt i32 %call68, 0
  br i1 %cmp69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %land.lhs.true66
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %fcs.i) #16
  %87 = ptrtoint ptr %fcs.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 -1 to ptr), ptr %fcs.i, align 4, !annotation !1247
  %88 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 -1 to ptr), ptr %11, align 4, !annotation !1247
  %89 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %12, align 4, !annotation !1247
  %90 = load ptr, ptr @cur_ops, align 4
  %sync.i126 = getelementptr inbounds %struct.rcu_torture_ops, ptr %90, i32 0, i32 10
  %91 = ptrtoint ptr %sync.i126 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sync.i126, align 4
  %tobool.not.i127 = icmp eq ptr %92, null
  br i1 %tobool.not.i127, label %rcu_torture_fwd_prog_nr.exit, label %if.end.i129

if.end.i129:                                      ; preds = %if.then70
  %call.i128 = getelementptr inbounds %struct.rcu_torture_ops, ptr %90, i32 0, i32 16
  %93 = ptrtoint ptr %call.i128 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call.i128, align 4
  %tobool1.not.i = icmp eq ptr %94, null
  br i1 %tobool1.not.i, label %do.body6.i, label %land.lhs.true.i132

land.lhs.true.i132:                               ; preds = %if.end.i129
  %cb_barrier.i130 = getelementptr inbounds %struct.rcu_torture_ops, ptr %90, i32 0, i32 17
  %95 = ptrtoint ptr %cb_barrier.i130 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cb_barrier.i130, align 4
  %tobool2.not.i131 = icmp eq ptr %96, null
  br i1 %tobool2.not.i131, label %do.body6.i, label %if.then3.i

if.then3.i:                                       ; preds = %land.lhs.true.i132
  call void @init_rcu_head_on_stack(ptr noundef nonnull %fcs.i) #16
  br label %do.body6.i

do.body6.i:                                       ; preds = %if.then3.i, %land.lhs.true.i132, %if.end.i129
  %selfpropcb.0.off0.i = phi i1 [ true, %if.then3.i ], [ false, %land.lhs.true.i132 ], [ false, %if.end.i129 ]
  store volatile i8 1, ptr @rcu_fwd_cb_nodelay, align 1
  %97 = load ptr, ptr @cur_ops, align 4
  %sync11.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %97, i32 0, i32 10
  %98 = ptrtoint ptr %sync11.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sync11.i, align 4
  call void %99() #16
  br i1 %selfpropcb.0.off0.i, label %do.body18.i, label %do.end28.i

do.body18.i:                                      ; preds = %do.body6.i
  %100 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 0, ptr %12, align 4
  %101 = load ptr, ptr @cur_ops, align 4
  %call23.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %101, i32 0, i32 16
  %102 = ptrtoint ptr %call23.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call23.i, align 4
  call void %103(ptr noundef nonnull %fcs.i, ptr noundef nonnull @rcu_torture_fwd_prog_cb) #16
  br label %do.end28.i

do.end28.i:                                       ; preds = %do.body18.i, %do.body6.i
  %104 = load volatile i32, ptr @rcu_torture_current_version, align 4
  %105 = load ptr, ptr @cur_ops, align 4
  %get_gp_seq.i133 = getelementptr inbounds %struct.rcu_torture_ops, ptr %105, i32 0, i32 7
  %106 = ptrtoint ptr %get_gp_seq.i133 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %get_gp_seq.i133, align 4
  %call29.i134 = call i32 %107() #16
  %108 = load ptr, ptr @cur_ops, align 4
  %stall_dur.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %108, i32 0, i32 22
  %109 = ptrtoint ptr %stall_dur.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %stall_dur.i, align 4
  %call30.i = call i32 %110() #16
  %add.i = add i32 %call30.i, 1
  %111 = load i32, ptr @fwd_progress_div, align 4
  %sub.i135 = add i32 %111, %call30.i
  %div.i = sdiv i32 %sub.i135, %111
  %call32.i = call i32 @torture_random(ptr noundef nonnull @rcu_torture_fwd_prog_nr.trs) #16
  %sub33.i = sub i32 %add.i, %div.i
  %rem.i = urem i32 %call32.i, %sub33.i
  %add34.i = add i32 %rem.i, %div.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %112 = load volatile i32, ptr @jiffies, align 128
  %113 = ptrtoint ptr %rcu_fwd_startat.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 %112, ptr %rcu_fwd_startat.i, align 4
  %add45.i = add i32 %112, %add34.i
  %114 = load volatile i32, ptr @jiffies, align 128
  %sub46223.i = sub i32 %114, %add45.i
  %cmp224.i = icmp slt i32 %sub46223.i, 0
  br i1 %cmp224.i, label %land.lhs.true47.i, label %while.end.i145

land.lhs.true47.i:                                ; preds = %if.end63.i, %do.end28.i
  %115 = load i32, ptr @shutdown_secs, align 4
  %tobool.not.i.i137 = icmp eq i32 %115, 0
  br i1 %tobool.not.i.i137, label %do.end52.i, label %shutdown_time_arrived.exit.i141

shutdown_time_arrived.exit.i141:                  ; preds = %land.lhs.true47.i
  %116 = load i32, ptr @shutdown_jiffies, align 4
  %sub.i.i138 = add i32 %116, -3000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %117 = load volatile i32, ptr @jiffies, align 128
  %sub1.i.i139 = sub i32 %sub.i.i138, %117
  %cmp.i.i140 = icmp slt i32 %sub1.i.i139, 0
  br i1 %cmp.i.i140, label %while.end.i145, label %do.end52.i

do.end52.i:                                       ; preds = %shutdown_time_arrived.exit.i141, %land.lhs.true47.i
  %118 = load volatile i8, ptr @rcu_fwd_emergency_stop, align 1, !range !1244
  %tobool54.not.i = icmp eq i8 %118, 0
  br i1 %tobool54.not.i, label %land.rhs.i142, label %while.end.i145

land.rhs.i142:                                    ; preds = %do.end52.i
  %call56.i = call zeroext i1 @torture_must_stop() #16
  br i1 %call56.i, label %while.end.i145, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i142
  %119 = load ptr, ptr @cur_ops, align 4
  %readlock.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %readlock.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %readlock.i, align 4
  %call57.i = call i32 %121() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %122(i32 noundef 2147480) #16
  %123 = load ptr, ptr @cur_ops, align 4
  %readunlock.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %123, i32 0, i32 5
  %124 = ptrtoint ptr %readunlock.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %readunlock.i, align 4
  call void %125(i32 noundef %call57.i) #16
  %126 = load i8, ptr @fwd_progress_need_resched, align 1, !range !1244
  %tobool58.not.i = icmp eq i8 %126, 0
  br i1 %tobool58.not.i, label %if.then60.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %while.body.i
  %127 = call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i.i.i = and i32 %127, -16384
  %128 = inttoptr i32 %and.i.i.i to ptr
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %128, align 16384
  %131 = and i32 %130, 2
  %tobool.i.not.i = icmp eq i32 %131, 0
  br i1 %tobool.i.not.i, label %if.end63.i, label %if.then60.i

if.then60.i:                                      ; preds = %lor.lhs.false.i, %while.body.i
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 2312, i32 noundef 0) #16
  %call.i.i143 = call i32 @__cond_resched() #16
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then60.i, %lor.lhs.false.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %132 = load volatile i32, ptr @jiffies, align 128
  %sub46.i = sub i32 %132, %add45.i
  %cmp.i = icmp slt i32 %sub46.i, 0
  br i1 %cmp.i, label %land.lhs.true47.i, label %while.end.i145

while.end.i145:                                   ; preds = %if.end63.i, %land.rhs.i142, %do.end52.i, %shutdown_time_arrived.exit.i141, %do.end28.i
  %inc.i144 = add i32 %tested_tries.0, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %133 = load volatile i32, ptr @jiffies, align 128
  %sub64.i = sub i32 %133, %add45.i
  %cmp65.i = icmp slt i32 %sub64.i, 0
  br i1 %cmp65.i, label %if.end123.i, label %land.lhs.true66.i

land.lhs.true66.i:                                ; preds = %while.end.i145
  %134 = load i32, ptr @shutdown_secs, align 4
  %tobool.not.i213.i = icmp eq i32 %134, 0
  br i1 %tobool.not.i213.i, label %do.end71.i, label %shutdown_time_arrived.exit218.i

shutdown_time_arrived.exit218.i:                  ; preds = %land.lhs.true66.i
  %135 = load i32, ptr @shutdown_jiffies, align 4
  %sub.i214.i = add i32 %135, -3000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %136 = load volatile i32, ptr @jiffies, align 128
  %sub1.i215.i = sub i32 %sub.i214.i, %136
  %cmp.i216.i = icmp slt i32 %sub1.i215.i, 0
  br i1 %cmp.i216.i, label %if.end123.i, label %do.end71.i

do.end71.i:                                       ; preds = %shutdown_time_arrived.exit218.i, %land.lhs.true66.i
  %137 = load volatile i8, ptr @rcu_fwd_emergency_stop, align 1, !range !1244
  %tobool73.not.i = icmp eq i8 %137, 0
  br i1 %tobool73.not.i, label %land.lhs.true76.i, label %if.end123.i

land.lhs.true76.i:                                ; preds = %do.end71.i
  %call77.i = call zeroext i1 @torture_must_stop() #16
  br i1 %call77.i, label %if.end123.i, label %if.then78.i

if.then78.i:                                      ; preds = %land.lhs.true76.i
  %inc79.i = add i32 %tested.0, 1
  %138 = load volatile i32, ptr @rcu_torture_current_version, align 4
  %sub84.i = sub i32 %138, %104
  %139 = load ptr, ptr @cur_ops, align 4
  %get_gp_seq85.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %139, i32 0, i32 7
  %140 = ptrtoint ptr %get_gp_seq85.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %get_gp_seq85.i, align 4
  %call86.i = call i32 %141() #16
  %142 = load ptr, ptr @cur_ops, align 4
  %gp_diff.i.i146 = getelementptr inbounds %struct.rcu_torture_ops, ptr %142, i32 0, i32 8
  %143 = ptrtoint ptr %gp_diff.i.i146 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %gp_diff.i.i146, align 4
  %tobool.not.i219.i = icmp eq ptr %144, null
  br i1 %tobool.not.i219.i, label %if.then.i.i147, label %if.end.i.i148

if.then.i.i147:                                   ; preds = %if.then78.i
  %sub.i220.i = sub i32 %call86.i, %call29.i134
  br label %rcutorture_seq_diff.exit.i150

if.end.i.i148:                                    ; preds = %if.then78.i
  %call.i221.i = call i32 %144(i32 noundef %call86.i, i32 noundef %call29.i134) #16
  br label %rcutorture_seq_diff.exit.i150

rcutorture_seq_diff.exit.i150:                    ; preds = %if.end.i.i148, %if.then.i.i147
  %retval.0.i.i149 = phi i32 [ %call.i221.i, %if.end.i.i148 ], [ %sub.i220.i, %if.then.i.i147 ]
  %tobool88.not.i = icmp eq i32 %138, %104
  %cmp90.i = icmp ult i32 %retval.0.i.i149, 2
  %spec.select.i = select i1 %tobool88.not.i, i1 %cmp90.i, i1 false
  br i1 %spec.select.i, label %do.end104.i, label %if.end110.i, !prof !1246

do.end104.i:                                      ; preds = %rcutorture_seq_diff.exit.i150
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2321, i32 noundef 9, ptr noundef null) #16
  br label %if.end110.i

if.end110.i:                                      ; preds = %do.end104.i, %rcutorture_seq_diff.exit.i150
  %145 = ptrtoint ptr %rcu_fwd_id to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %rcu_fwd_id, align 4
  %call122.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.329, ptr noundef nonnull @.str.330, i32 noundef %146, i32 noundef %add34.i, i32 noundef %sub84.i, i32 noundef %retval.0.i.i149) #19
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.end110.i, %land.lhs.true76.i, %do.end71.i, %shutdown_time_arrived.exit218.i, %while.end.i145
  %tested.1 = phi i32 [ %tested.0, %while.end.i145 ], [ %tested.0, %land.lhs.true76.i ], [ %inc79.i, %if.end110.i ], [ %tested.0, %do.end71.i ], [ %tested.0, %shutdown_time_arrived.exit218.i ]
  br i1 %selfpropcb.0.off0.i, label %do.body130.i, label %if.end178.i

do.body130.i:                                     ; preds = %if.end123.i
  %147 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile i32 1, ptr %12, align 4
  %148 = load ptr, ptr @cur_ops, align 4
  %sync136.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %148, i32 0, i32 10
  %149 = ptrtoint ptr %sync136.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %sync136.i, align 4
  call void %150() #16
  %151 = load ptr, ptr @cur_ops, align 4
  %cb_barrier137.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %151, i32 0, i32 17
  %152 = ptrtoint ptr %cb_barrier137.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cb_barrier137.i, align 4
  call void %153() #16
  %154 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %12, align 4
  %cmp147.not.i = icmp eq i32 %155, 2
  br i1 %cmp147.not.i, label %if.end169.i, label %do.end163.i, !prof !1245

do.end163.i:                                      ; preds = %do.body130.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2332, i32 noundef 9, ptr noundef null) #16
  br label %if.end169.i

if.end169.i:                                      ; preds = %do.end163.i, %do.body130.i
  call void @destroy_rcu_head_on_stack(ptr noundef nonnull %fcs.i) #16
  br label %if.end178.i

if.end178.i:                                      ; preds = %if.end169.i, %if.end123.i
  %call179.i = call i32 @schedule_timeout_uninterruptible(i32 noundef 10) #16
  store volatile i8 0, ptr @rcu_fwd_cb_nodelay, align 1
  br label %rcu_torture_fwd_prog_nr.exit

rcu_torture_fwd_prog_nr.exit:                     ; preds = %if.end178.i, %if.then70
  %tested.2 = phi i32 [ %tested.0, %if.then70 ], [ %tested.1, %if.end178.i ]
  %tested_tries.1 = phi i32 [ %tested_tries.0, %if.then70 ], [ %inc.i144, %if.end178.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %fcs.i) #16
  br label %if.end71

if.end71:                                         ; preds = %rcu_torture_fwd_prog_nr.exit, %land.lhs.true66, %if.end64
  %tested.3 = phi i32 [ %tested.0, %if.end64 ], [ %tested.2, %rcu_torture_fwd_prog_nr.exit ], [ %tested.0, %land.lhs.true66 ]
  %tested_tries.2 = phi i32 [ %tested_tries.0, %if.end64 ], [ %tested_tries.1, %rcu_torture_fwd_prog_nr.exit ], [ %tested_tries.0, %land.lhs.true66 ]
  %call72 = call zeroext i1 @stutter_wait(ptr noundef nonnull @.str.296) #16
  br i1 %call72, label %if.then73, label %do.cond77

if.then73:                                        ; preds = %if.end71
  %156 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %task, align 8
  call void @sched_set_normal(ptr noundef %157, i32 noundef %sub.i) #16
  br label %do.cond77

do.cond77:                                        ; preds = %if.then73, %if.end71
  %call78 = call zeroext i1 @torture_must_stop() #16
  br i1 %call78, label %do.end79, label %do.body12

do.end79:                                         ; preds = %do.cond77
  %158 = ptrtoint ptr %rcu_fwd_id to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %rcu_fwd_id, align 4
  %tobool81.not = icmp eq i32 %159, 0
  br i1 %tobool81.not, label %if.then82, label %if.end116

if.then82:                                        ; preds = %do.end79
  %tobool83.not = icmp eq i32 %tested.3, 0
  %cmp84 = icmp sgt i32 %tested_tries.2, 4
  %or.cond = select i1 %tobool83.not, i1 %cmp84, i1 false
  br i1 %or.cond, label %do.end97, label %if.end103, !prof !1297

do.end97:                                         ; preds = %if.then82
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2533, i32 noundef 9, ptr noundef null) #16
  br label %if.end103

if.end103:                                        ; preds = %do.end97, %if.then82
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.325, ptr noundef nonnull @.str.296, i32 noundef %tested.3, i32 noundef %tested_tries.2) #19
  br label %if.end116

if.end116:                                        ; preds = %if.end103, %do.end79
  call void @torture_kthread_stopping(ptr noundef nonnull @.str.296) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcutorture_oom_notify(ptr nocapture noundef readnone %self, i32 noundef %notused, ptr nocapture noundef %nfreed) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @rcu_fwd_mutex, i32 noundef 0) #16
  %0 = load ptr, ptr @rcu_fwds, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cleanup, label %do.end

do.end:                                           ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2456, i32 noundef 9, ptr noundef nonnull @.str.301, ptr noundef nonnull @__func__.rcutorture_oom_notify) #16
  %1 = load i32, ptr @fwd_progress, align 4
  %cmp117 = icmp sgt i32 %1, 0
  br i1 %cmp117, label %for.body, label %do.body27

for.body:                                         ; preds = %for.body, %do.end
  %i.0118 = phi i32 [ %inc, %for.body ], [ 0, %do.end ]
  %arrayidx = getelementptr %struct.rcu_fwd, ptr %0, i32 %i.0118
  tail call fastcc void @rcu_torture_fwd_cb_hist(ptr noundef %arrayidx)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %rcu_fwd_startat = getelementptr %struct.rcu_fwd, ptr %0, i32 %i.0118, i32 4
  %3 = ptrtoint ptr %rcu_fwd_startat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %rcu_fwd_startat, align 4
  %sub = sub i32 %2, %4
  %div116 = lshr i32 %sub, 1
  %add = add nuw i32 %div116, 1
  tail call void @rcu_fwd_progress_check(i32 noundef %add) #16
  %inc = add nuw nsw i32 %i.0118, 1
  %5 = load i32, ptr @fwd_progress, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body, label %do.body27

do.body27:                                        ; preds = %for.body, %do.end
  store volatile i8 1, ptr @rcu_fwd_emergency_stop, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1298
  %6 = load i32, ptr @fwd_progress, align 4
  %cmp39119 = icmp sgt i32 %6, 0
  br i1 %cmp39119, label %for.body40, label %do.end48

for.body40:                                       ; preds = %for.body40, %do.body27
  %i.1121 = phi i32 [ %inc44, %for.body40 ], [ 0, %do.body27 ]
  %ncbs.0120 = phi i32 [ %add42, %for.body40 ], [ 0, %do.body27 ]
  %arrayidx41 = getelementptr %struct.rcu_fwd, ptr %0, i32 %i.1121
  %call = tail call fastcc i32 @rcu_torture_fwd_prog_cbfree(ptr noundef %arrayidx41)
  %add42 = add i32 %call, %ncbs.0120
  %inc44 = add nuw nsw i32 %i.1121, 1
  %7 = load i32, ptr @fwd_progress, align 4
  %cmp39 = icmp slt i32 %inc44, %7
  br i1 %cmp39, label %for.body40, label %do.end48

do.end48:                                         ; preds = %for.body40, %do.body27
  %ncbs.0.lcssa = phi i32 [ 0, %do.body27 ], [ %add42, %for.body40 ]
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.302, ptr noundef nonnull @__func__.rcutorture_oom_notify, i32 noundef %ncbs.0.lcssa) #19
  tail call void @rcu_barrier() #16
  %8 = load i32, ptr @fwd_progress, align 4
  %cmp52122 = icmp sgt i32 %8, 0
  br i1 %cmp52122, label %for.body53, label %do.end62

for.body53:                                       ; preds = %for.body53, %do.end48
  %i.2124 = phi i32 [ %inc58, %for.body53 ], [ 0, %do.end48 ]
  %ncbs.1123 = phi i32 [ %add56, %for.body53 ], [ 0, %do.end48 ]
  %arrayidx54 = getelementptr %struct.rcu_fwd, ptr %0, i32 %i.2124
  %call55 = tail call fastcc i32 @rcu_torture_fwd_prog_cbfree(ptr noundef %arrayidx54)
  %add56 = add i32 %call55, %ncbs.1123
  %inc58 = add nuw nsw i32 %i.2124, 1
  %9 = load i32, ptr @fwd_progress, align 4
  %cmp52 = icmp slt i32 %inc58, %9
  br i1 %cmp52, label %for.body53, label %do.end62

do.end62:                                         ; preds = %for.body53, %do.end48
  %ncbs.1.lcssa = phi i32 [ 0, %do.end48 ], [ %add56, %for.body53 ]
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.302, ptr noundef nonnull @__func__.rcutorture_oom_notify, i32 noundef %ncbs.1.lcssa) #19
  tail call void @rcu_barrier() #16
  %10 = load i32, ptr @fwd_progress, align 4
  %cmp66126 = icmp sgt i32 %10, 0
  br i1 %cmp66126, label %for.body67, label %do.end76

for.body67:                                       ; preds = %for.body67, %do.end62
  %i.3128 = phi i32 [ %inc72, %for.body67 ], [ 0, %do.end62 ]
  %ncbs.2127 = phi i32 [ %add70, %for.body67 ], [ 0, %do.end62 ]
  %arrayidx68 = getelementptr %struct.rcu_fwd, ptr %0, i32 %i.3128
  %call69 = tail call fastcc i32 @rcu_torture_fwd_prog_cbfree(ptr noundef %arrayidx68)
  %add70 = add i32 %call69, %ncbs.2127
  %inc72 = add nuw nsw i32 %i.3128, 1
  %11 = load i32, ptr @fwd_progress, align 4
  %cmp66 = icmp slt i32 %inc72, %11
  br i1 %cmp66, label %for.body67, label %do.end76

do.end76:                                         ; preds = %for.body67, %do.end62
  %ncbs.2.lcssa = phi i32 [ 0, %do.end62 ], [ %add70, %for.body67 ]
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.302, ptr noundef nonnull @__func__.rcutorture_oom_notify, i32 noundef %ncbs.2.lcssa) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1299
  %12 = ptrtoint ptr %nfreed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nfreed, align 4
  %inc85 = add i32 %13, 1
  store i32 %inc85, ptr %nfreed, align 4
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.308, ptr noundef nonnull @__func__.rcutorture_oom_notify) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end76, %entry
  tail call void @mutex_unlock(ptr noundef nonnull @rcu_fwd_mutex) #16
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_torture_fwd_cb_hist(ptr nocapture noundef readonly %rfp) unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %i.036 = phi i32 [ 159, %entry ], [ %dec, %for.inc ]
  %arrayidx = getelementptr %struct.rcu_fwd, ptr %rfp, i32 0, i32 5, i32 %i.036
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.036, -1
  %cmp = icmp ugt i32 %i.036, 1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.body
  %i.0.lcssa = phi i32 [ %i.036, %for.body ], [ 0, %for.inc ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @rcu_fwd_mutex, i32 noundef 0) #16
  %rcu_fwd_id = getelementptr inbounds %struct.rcu_fwd, ptr %rfp, i32 0, i32 7
  %2 = ptrtoint ptr %rcu_fwd_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rcu_fwd_id, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %rcu_fwd_startat = getelementptr inbounds %struct.rcu_fwd, ptr %rfp, i32 0, i32 4
  %5 = ptrtoint ptr %rcu_fwd_startat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rcu_fwd_startat, align 4
  %sub = sub i32 %4, %6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.310, ptr noundef nonnull @.str.311, i32 noundef %3, i32 noundef %sub) #19
  %cmp3.not37 = icmp slt i32 %i.0.lcssa, 0
  br i1 %cmp3.not37, label %do.end20, label %for.body4.preheader

for.body4.preheader:                              ; preds = %for.end
  %rcu_launder_gp_seq_start = getelementptr inbounds %struct.rcu_fwd, ptr %rfp, i32 0, i32 6
  %7 = ptrtoint ptr %rcu_launder_gp_seq_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rcu_launder_gp_seq_start, align 4
  br label %for.body4

for.body4:                                        ; preds = %rcutorture_seq_diff.exit, %for.body4.preheader
  %gps_old.039 = phi i32 [ %10, %rcutorture_seq_diff.exit ], [ %8, %for.body4.preheader ]
  %j.038 = phi i32 [ %add, %rcutorture_seq_diff.exit ], [ 0, %for.body4.preheader ]
  %arrayidx6 = getelementptr %struct.rcu_fwd, ptr %rfp, i32 0, i32 5, i32 %j.038
  %launder_gp_seq = getelementptr %struct.rcu_fwd, ptr %rfp, i32 0, i32 5, i32 %j.038, i32 1
  %9 = ptrtoint ptr %launder_gp_seq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %launder_gp_seq, align 4
  %add = add nuw nsw i32 %j.038, 1
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6, align 4
  %13 = load ptr, ptr @cur_ops, align 4
  %gp_diff.i = getelementptr inbounds %struct.rcu_torture_ops, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %gp_diff.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gp_diff.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4
  %sub.i = sub i32 %10, %gps_old.039
  br label %rcutorture_seq_diff.exit

if.end.i:                                         ; preds = %for.body4
  %call.i = tail call i32 %15(i32 noundef %10, i32 noundef %gps_old.039) #16
  br label %rcutorture_seq_diff.exit

rcutorture_seq_diff.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ %sub.i, %if.then.i ]
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.313, i32 noundef %add, i32 noundef 10, i32 noundef %12, i32 noundef %retval.0.i) #19
  %exitcond = icmp eq i32 %j.038, %i.0.lcssa
  br i1 %exitcond, label %do.end20, label %for.body4

do.end20:                                         ; preds = %rcutorture_seq_diff.exit, %for.end
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #19
  tail call void @mutex_unlock(ptr noundef nonnull @rcu_fwd_mutex) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_fwd_progress_check(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcu_torture_fwd_prog_cbfree(ptr noundef %rfp) unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call284 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rfp) #16
  %rcu_fwd_cb_head = getelementptr inbounds %struct.rcu_fwd, ptr %rfp, i32 0, i32 1
  %0 = ptrtoint ptr %rcu_fwd_cb_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcu_fwd_cb_head, align 4
  %tobool.not85 = icmp eq ptr %1, null
  br i1 %tobool.not85, label %if.then, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %rcu_fwd_cb_tail = getelementptr inbounds %struct.rcu_fwd, ptr %rfp, i32 0, i32 2
  br label %if.end

if.then:                                          ; preds = %if.end11, %entry
  %freed.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %if.end11 ]
  %call2.lcssa = phi i32 [ %call284, %entry ], [ %call2, %if.end11 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rfp, i32 noundef %call2.lcssa) #16
  ret i32 %freed.0.lcssa

if.end:                                           ; preds = %if.end11, %if.end.lr.ph
  %2 = phi ptr [ %1, %if.end.lr.ph ], [ %8, %if.end11 ]
  %call287 = phi i32 [ %call284, %if.end.lr.ph ], [ %call2, %if.end11 ]
  %freed.086 = phi i32 [ 0, %if.end.lr.ph ], [ %inc, %if.end11 ]
  %rfc_next = getelementptr inbounds %struct.rcu_fwd_cb, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %rfc_next to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rfc_next, align 4
  %5 = ptrtoint ptr %rcu_fwd_cb_head to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %rcu_fwd_cb_head, align 4
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %6 = ptrtoint ptr %rcu_fwd_cb_tail to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rcu_fwd_cb_head, ptr %rcu_fwd_cb_tail, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rfp, i32 noundef %call287) #16
  tail call void @kfree(ptr noundef nonnull %2) #16
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 2233, i32 noundef 0) #16
  %call.i.i = tail call i32 @__cond_resched() #16
  %inc = add i32 %freed.086, 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rfp) #16
  %7 = ptrtoint ptr %rcu_fwd_cb_head to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rcu_fwd_cb_head, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then, label %if.end
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_bind_current_to_nocb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_torture_fwd_cb_cr(ptr noundef %rhp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rfc_rfp = getelementptr inbounds %struct.rcu_fwd_cb, ptr %rhp, i32 0, i32 2
  %0 = ptrtoint ptr %rfc_rfp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rfc_rfp, align 4
  %rfc_next = getelementptr inbounds %struct.rcu_fwd_cb, ptr %rhp, i32 0, i32 1
  %2 = ptrtoint ptr %rfc_next to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rfc_next, align 4
  %rfc_gps = getelementptr inbounds %struct.rcu_fwd_cb, ptr %rhp, i32 0, i32 3
  %3 = ptrtoint ptr %rfc_gps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rfc_gps, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %rfc_gps, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #16
  %rcu_fwd_cb_tail = getelementptr inbounds %struct.rcu_fwd, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %rcu_fwd_cb_tail to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rcu_fwd_cb_tail, align 4
  store ptr %rfc_next, ptr %rcu_fwd_cb_tail, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %rhp, ptr %6, align 4
  %n_launders_cb = getelementptr inbounds %struct.rcu_fwd, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %n_launders_cb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_launders_cb, align 4
  %add = add i32 %9, 1
  store volatile i32 %add, ptr %n_launders_cb, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %rcu_fwd_startat = getelementptr inbounds %struct.rcu_fwd, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %rcu_fwd_startat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rcu_fwd_startat, align 4
  %sub = sub i32 %10, %12
  %div = udiv i32 %sub, 10
  %13 = tail call i32 @llvm.umin.i32(i32 %div, i32 159)
  %arrayidx = getelementptr %struct.rcu_fwd, ptr %1, i32 0, i32 5, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %inc29 = add i32 %15, 1
  store i32 %inc29, ptr %arrayidx, align 4
  %16 = load ptr, ptr @cur_ops, align 4
  %get_gp_seq = getelementptr inbounds %struct.rcu_torture_ops, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %get_gp_seq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_gp_seq, align 4
  %call30 = tail call i32 %18() #16
  %launder_gp_seq = getelementptr %struct.rcu_fwd, ptr %1, i32 0, i32 5, i32 %13, i32 1
  %19 = ptrtoint ptr %launder_gp_seq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call30, ptr %launder_gp_seq, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_rcu_head_on_stack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_torture_fwd_prog_cb(ptr noundef %rhp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %stop = getelementptr inbounds %struct.fwd_cb_state, ptr %rhp, i32 0, i32 1
  %0 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %stop, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %do.body6

do.body6:                                         ; preds = %entry
  %2 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 2, ptr %stop, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @cur_ops, align 4
  %call = getelementptr inbounds %struct.rcu_torture_ops, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  tail call void %5(ptr noundef %rhp, ptr noundef nonnull @rcu_torture_fwd_prog_cb) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_rcu_head_on_stack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_torture_barrier_cbs(ptr noundef %arg) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rcu = alloca %struct.callback_head, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %0 = ptrtoint ptr %arg to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rcu) #16
  %1 = ptrtoint ptr %rcu to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %rcu, align 4, !annotation !1247
  %2 = getelementptr inbounds %struct.callback_head, ptr %rcu, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !1247
  call void @init_rcu_head_on_stack(ptr noundef nonnull %rcu) #16
  %4 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end3, label %if.then

if.then:                                          ; preds = %entry
  call void @verbose_torout_sleep() #16
  %5 = load ptr, ptr @torture_type, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %5, ptr noundef nonnull @.str.343) #19
  br label %do.end3

do.end3:                                          ; preds = %if.then, %entry
  %6 = call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  call void @set_user_nice(ptr noundef %9, i32 noundef 19) #16
  br label %do.body5

do.body5:                                         ; preds = %do.cond80, %do.end3
  %lastphase.0.off0 = phi i32 [ 0, %do.end3 ], [ %tobool67.pre-phi, %do.cond80 ]
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 2650) #16
  %10 = load volatile i8, ptr @barrier_phase, align 1, !range !1244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1300
  %11 = zext i8 %10 to i32
  %cmp.not = icmp eq i32 %lastphase.0.off0, %11
  br i1 %cmp.not, label %lor.lhs.false, label %do.end66

lor.lhs.false:                                    ; preds = %do.body5
  %call31 = call zeroext i1 @torture_must_stop() #16
  br i1 %call31, label %do.end66, label %if.end34

if.end34:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #16
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #16
  %13 = load ptr, ptr @barrier_cbs_wq, align 4
  %arrayidx97 = getelementptr %struct.wait_queue_head, ptr %13, i32 %0
  %call3598 = call i32 @prepare_to_wait_event(ptr noundef %arrayidx97, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  %14 = load volatile i8, ptr @barrier_phase, align 1, !range !1244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1301
  %15 = zext i8 %14 to i32
  %cmp56.not99 = icmp eq i32 %lastphase.0.off0, %15
  br i1 %cmp56.not99, label %lor.lhs.false58.preheader, label %for.end

lor.lhs.false58.preheader:                        ; preds = %if.end34
  %call59107 = call zeroext i1 @torture_must_stop() #16
  br i1 %call59107, label %lor.lhs.false58.for.end.loopexit_crit_edge, label %cleanup

lor.lhs.false58:                                  ; preds = %cleanup
  %call59 = call zeroext i1 @torture_must_stop() #16
  br i1 %call59, label %lor.lhs.false58.for.end.loopexit_crit_edge, label %cleanup

lor.lhs.false58.for.end.loopexit_crit_edge:       ; preds = %lor.lhs.false58, %lor.lhs.false58.preheader
  %.lcssa = phi i8 [ %14, %lor.lhs.false58.preheader ], [ %17, %lor.lhs.false58 ]
  %.pre = zext i8 %.lcssa to i32
  br label %for.end

cleanup:                                          ; preds = %lor.lhs.false58, %lor.lhs.false58.preheader
  call void @schedule() #16
  %16 = load ptr, ptr @barrier_cbs_wq, align 4
  %arrayidx = getelementptr %struct.wait_queue_head, ptr %16, i32 %0
  %call35 = call i32 @prepare_to_wait_event(ptr noundef %arrayidx, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  %17 = load volatile i8, ptr @barrier_phase, align 1, !range !1244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1301
  %18 = zext i8 %17 to i32
  %cmp56.not = icmp eq i32 %lastphase.0.off0, %18
  br i1 %cmp56.not, label %lor.lhs.false58, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %cleanup
  %19 = zext i8 %17 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %lor.lhs.false58.for.end.loopexit_crit_edge, %if.end34
  %.pre.pre-phi = phi i32 [ %15, %if.end34 ], [ %.pre, %lor.lhs.false58.for.end.loopexit_crit_edge ], [ %19, %for.end.loopexit ]
  %20 = load ptr, ptr @barrier_cbs_wq, align 4
  %arrayidx63 = getelementptr %struct.wait_queue_head, ptr %20, i32 %0
  call void @finish_wait(ptr noundef %arrayidx63, ptr noundef nonnull %__wq_entry) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %do.end66

do.end66:                                         ; preds = %for.end, %lor.lhs.false, %do.body5
  %tobool67.pre-phi = phi i32 [ %11, %do.body5 ], [ %11, %lor.lhs.false ], [ %.pre.pre-phi, %for.end ]
  %call69 = call zeroext i1 @torture_must_stop() #16
  br i1 %call69, label %do.end82, label %if.end71

if.end71:                                         ; preds = %do.end66
  %call72 = call i32 @smp_call_function_single(i32 noundef %0, ptr noundef nonnull @rcu_torture_barrier1cb, ptr noundef nonnull %rcu, i32 noundef 1) #16
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end76, label %if.then74

if.then74:                                        ; preds = %if.end71
  %21 = load ptr, ptr @cur_ops, align 4
  %call75 = getelementptr inbounds %struct.rcu_torture_ops, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %call75 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call75, align 4
  call void %23(ptr noundef nonnull %rcu, ptr noundef nonnull @rcu_torture_barrier_cbf) #16
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end71
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @barrier_cbs_count, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1302
  call void @llvm.prefetch.p0(ptr nonnull @barrier_cbs_count, i32 1, i32 3, i32 1) #16
  %24 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @barrier_cbs_count, ptr nonnull @barrier_cbs_count, i32 1, ptr nonnull elementtype(i32) @barrier_cbs_count) #16, !srcloc !1303
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1304
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then78, label %do.cond80

if.then78:                                        ; preds = %if.end76
  call void @__wake_up(ptr noundef nonnull @barrier_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %do.cond80

do.cond80:                                        ; preds = %if.then78, %if.end76
  %call81 = call zeroext i1 @torture_must_stop() #16
  br i1 %call81, label %do.end82, label %do.body5

do.end82:                                         ; preds = %do.cond80, %do.end66
  %25 = load ptr, ptr @cur_ops, align 4
  %cb_barrier = getelementptr inbounds %struct.rcu_torture_ops, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %cb_barrier to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cb_barrier, align 4
  %cmp83.not = icmp eq ptr %27, null
  br i1 %cmp83.not, label %if.end87, label %if.then85

if.then85:                                        ; preds = %do.end82
  call void %27() #16
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %do.end82
  call void @destroy_rcu_head_on_stack(ptr noundef nonnull %rcu) #16
  call void @torture_kthread_stopping(ptr noundef nonnull @.str.337) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rcu) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_torture_barrier(ptr nocapture noundef readnone %arg) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %0 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body4.preheader, label %if.then

if.then:                                          ; preds = %entry
  tail call void @verbose_torout_sleep() #16
  %1 = load ptr, ptr @torture_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %1, ptr noundef nonnull @.str.345) #19
  br label %do.body4.preheader

do.body4.preheader:                               ; preds = %if.then, %entry
  br label %do.body4

do.body4:                                         ; preds = %if.end148, %do.body4.preheader
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @barrier_cbs_invoked, i32 noundef 4) #16
  store volatile i32 0, ptr @barrier_cbs_invoked, align 4
  %2 = load i32, ptr @n_barrier_cbs, align 4
  %call.i.i161 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @barrier_cbs_count, i32 noundef 4) #16
  store volatile i32 %2, ptr @barrier_cbs_count, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1305
  %3 = load i8, ptr @barrier_phase, align 1, !range !1244
  %4 = xor i8 %3, 1
  store volatile i8 %4, ptr @barrier_phase, align 1
  %5 = load i32, ptr @n_barrier_cbs, align 4
  %cmp170 = icmp sgt i32 %5, 0
  br i1 %cmp170, label %for.body, label %do.body28

for.body:                                         ; preds = %for.body, %do.body4
  %i.0171 = phi i32 [ %inc, %for.body ], [ 0, %do.body4 ]
  %6 = load ptr, ptr @barrier_cbs_wq, align 4
  %arrayidx = getelementptr %struct.wait_queue_head, ptr %6, i32 %i.0171
  call void @__wake_up(ptr noundef %arrayidx, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  %inc = add nuw nsw i32 %i.0171, 1
  %7 = load i32, ptr @n_barrier_cbs, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body, label %do.body28

do.body28:                                        ; preds = %for.body, %do.body4
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 2688) #16
  %call.i.i162 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @barrier_cbs_count, i32 noundef 4) #16
  %8 = load volatile i32, ptr @barrier_cbs_count, align 4
  %cmp35 = icmp eq i32 %8, 0
  br i1 %cmp35, label %do.end50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body28
  %call36 = call zeroext i1 @torture_must_stop() #16
  br i1 %call36, label %do.end50, label %if.end38

if.end38:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #16
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #16
  %call40172 = call i32 @prepare_to_wait_event(ptr noundef nonnull @barrier_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  %call.i.i163173 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @barrier_cbs_count, i32 noundef 4) #16
  %10 = load volatile i32, ptr @barrier_cbs_count, align 4
  %cmp42174 = icmp eq i32 %10, 0
  br i1 %cmp42174, label %for.end47, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %cleanup, %if.end38
  %call44 = call zeroext i1 @torture_must_stop() #16
  br i1 %call44, label %for.end47, label %cleanup

cleanup:                                          ; preds = %lor.lhs.false43
  call void @schedule() #16
  %call40 = call i32 @prepare_to_wait_event(ptr noundef nonnull @barrier_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  %call.i.i163 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @barrier_cbs_count, i32 noundef 4) #16
  %11 = load volatile i32, ptr @barrier_cbs_count, align 4
  %cmp42 = icmp eq i32 %11, 0
  br i1 %cmp42, label %for.end47, label %lor.lhs.false43

for.end47:                                        ; preds = %cleanup, %lor.lhs.false43, %if.end38
  call void @finish_wait(ptr noundef nonnull @barrier_wq, ptr noundef nonnull %__wq_entry) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %do.end50

do.end50:                                         ; preds = %for.end47, %lor.lhs.false, %do.body28
  %call51 = call zeroext i1 @torture_must_stop() #16
  br i1 %call51, label %do.end154, label %if.end53

if.end53:                                         ; preds = %do.end50
  %12 = load i32, ptr @n_barrier_attempts, align 4
  %inc54 = add i32 %12, 1
  store i32 %inc54, ptr @n_barrier_attempts, align 4
  %13 = load ptr, ptr @cur_ops, align 4
  %cb_barrier = getelementptr inbounds %struct.rcu_torture_ops, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %cb_barrier to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cb_barrier, align 4
  call void %15() #16
  %call.i.i164 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @barrier_cbs_invoked, i32 noundef 4) #16
  %16 = load volatile i32, ptr @barrier_cbs_invoked, align 4
  %17 = load i32, ptr @n_barrier_cbs, align 4
  %cmp56.not = icmp eq i32 %16, %17
  br i1 %cmp56.not, label %if.else, label %if.then57

if.then57:                                        ; preds = %if.end53
  %18 = load i32, ptr @n_rcu_torture_barrier_error, align 4
  %inc58 = add i32 %18, 1
  store i32 %inc58, ptr @n_rcu_torture_barrier_error, align 4
  %call.i.i165 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @barrier_cbs_invoked, i32 noundef 4) #16
  %19 = load volatile i32, ptr @barrier_cbs_invoked, align 4
  %20 = load i32, ptr @n_barrier_cbs, align 4
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.347, i32 noundef %19, i32 noundef %20) #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2698, i32 noundef 9, ptr noundef null) #16
  br label %do.body87

do.body87:                                        ; preds = %land.rhs, %if.then57
  %i.1 = phi i32 [ 0, %if.then57 ], [ %spec.select, %land.rhs ]
  %inc89 = add i32 %i.1, 1
  %cmp90 = icmp sgt i32 %i.1, 100
  br i1 %cmp90, label %do.end106, label %if.end112, !prof !1246

do.end106:                                        ; preds = %do.body87
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2702, i32 noundef 9, ptr noundef null) #16
  br label %if.end112

if.end112:                                        ; preds = %do.end106, %do.body87
  %call123 = call i32 @schedule_timeout_interruptible(i32 noundef 1) #16
  %21 = load ptr, ptr @cur_ops, align 4
  %cb_barrier124 = getelementptr inbounds %struct.rcu_torture_ops, ptr %21, i32 0, i32 17
  %22 = ptrtoint ptr %cb_barrier124 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cb_barrier124, align 4
  call void %23() #16
  %call.i.i166 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @barrier_cbs_invoked, i32 noundef 4) #16
  %24 = load volatile i32, ptr @barrier_cbs_invoked, align 4
  %25 = load i32, ptr @n_barrier_cbs, align 4
  %cmp127.not = icmp eq i32 %24, %25
  br i1 %cmp127.not, label %do.end135, label %land.rhs

land.rhs:                                         ; preds = %if.end112
  %spec.select = select i1 %cmp90, i32 -2147483648, i32 %inc89
  %call128 = call zeroext i1 @torture_must_stop() #16
  br i1 %call128, label %do.end135, label %do.body87

do.end135:                                        ; preds = %land.rhs, %if.end112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1306
  %call138 = call zeroext i1 @torture_must_stop() #16
  br i1 %call138, label %if.end148, label %do.end142

do.end142:                                        ; preds = %do.end135
  %call.i.i167 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @barrier_cbs_invoked, i32 noundef 4) #16
  %26 = load volatile i32, ptr @barrier_cbs_invoked, align 4
  %call145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.350, i32 noundef %26) #19
  br label %if.end148

if.else:                                          ; preds = %if.end53
  %27 = load i32, ptr @n_barrier_successes, align 4
  %inc147 = add i32 %27, 1
  store i32 %inc147, ptr @n_barrier_successes, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.else, %do.end142, %do.end135
  %call149 = call i32 @schedule_timeout_interruptible(i32 noundef 10) #16
  %call151 = call zeroext i1 @torture_must_stop() #16
  br i1 %call151, label %do.end154, label %do.body4

do.end154:                                        ; preds = %if.end148, %do.end50
  call void @torture_kthread_stopping(ptr noundef nonnull @.str.340) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_torture_barrier1cb(ptr noundef %rcu_void) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cur_ops, align 4
  %call = getelementptr inbounds %struct.rcu_torture_ops, ptr %0, i32 0, i32 16
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  tail call void %2(ptr noundef %rcu_void, ptr noundef nonnull @rcu_torture_barrier_cbf) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_torture_barrier_cbf(ptr nocapture noundef readnone %rcu) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @barrier_cbs_invoked, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @barrier_cbs_invoked, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @barrier_cbs_invoked, ptr nonnull @barrier_cbs_invoked, i32 1, ptr nonnull elementtype(i32) @barrier_cbs_invoked) #16, !srcloc !1251
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_torture_read_exit(ptr nocapture noundef readnone %unused) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %trs = alloca %struct.torture_random_state, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %trs) #16
  %0 = ptrtoint ptr %trs to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %trs, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %4, i32 noundef 19) #16
  %5 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body5.preheader, label %if.then

if.then:                                          ; preds = %entry
  tail call void @verbose_torout_sleep() #16
  %6 = load ptr, ptr @torture_type, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %6, ptr noundef nonnull @.str.356) #19
  br label %do.body5.preheader

do.body5.preheader:                               ; preds = %if.then, %entry
  br label %do.body5

do.body5:                                         ; preds = %if.end72, %do.body5.preheader
  %count.0 = phi i32 [ %count.1, %if.end72 ], [ 0, %do.body5.preheader ]
  %inc = add i32 %count.0, 1
  %7 = load i32, ptr @read_exit_burst, align 4
  %cmp = icmp sgt i32 %inc, %7
  br i1 %cmp, label %do.body7, label %do.end52

do.body7:                                         ; preds = %do.body5
  %8 = load i32, ptr @verbose, align 4
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %do.end17, label %if.then9

if.then9:                                         ; preds = %do.body7
  call void @verbose_torout_sleep() #16
  %9 = load ptr, ptr @torture_type, align 4
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %9, ptr noundef nonnull @.str.359) #19
  br label %do.end17

do.end17:                                         ; preds = %if.then9, %do.body7
  call void @rcu_barrier() #16
  %10 = load i32, ptr @read_exit_delay, align 4
  %cmp18123 = icmp sgt i32 %10, 0
  br i1 %cmp18123, label %for.body, label %do.end31

for.cond:                                         ; preds = %for.body
  %inc28 = add nuw nsw i32 %i.0124, 1
  %11 = load i32, ptr @read_exit_delay, align 4
  %cmp18 = icmp slt i32 %inc28, %11
  br i1 %cmp18, label %for.body, label %do.end31

for.body:                                         ; preds = %for.cond, %do.end17
  %i.0124 = phi i32 [ %inc28, %for.cond ], [ 0, %do.end17 ]
  %call19 = call i32 @schedule_timeout_uninterruptible(i32 noundef 100) #16
  %12 = load volatile i8, ptr @read_exit_child_stop, align 1, !range !1244
  %tobool24.not = icmp eq i8 %12, 0
  br i1 %tobool24.not, label %for.cond, label %do.end31

do.end31:                                         ; preds = %for.body, %for.cond, %do.end17
  %13 = load volatile i8, ptr @read_exit_child_stop, align 1, !range !1244
  %tobool33.not = icmp eq i8 %13, 0
  br i1 %tobool33.not, label %do.body37, label %do.end52

do.body37:                                        ; preds = %do.end31
  %14 = load i32, ptr @verbose, align 4
  %tobool38.not = icmp eq i32 %14, 0
  br i1 %tobool38.not, label %do.end52, label %if.then39

if.then39:                                        ; preds = %do.body37
  call void @verbose_torout_sleep() #16
  %15 = load ptr, ptr @torture_type, align 4
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %15, ptr noundef nonnull @.str.362) #19
  br label %do.end52

do.end52:                                         ; preds = %if.then39, %do.body37, %do.end31, %do.body5
  %count.1 = phi i32 [ %inc, %do.body5 ], [ 0, %do.body37 ], [ 0, %if.then39 ], [ 0, %do.end31 ]
  %16 = load volatile i8, ptr @read_exit_child_stop, align 1, !range !1244
  %tobool54.not = icmp eq i8 %16, 0
  br i1 %tobool54.not, label %if.end58, label %do.end95

if.end58:                                         ; preds = %do.end52
  %call59 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @rcu_torture_read_exit_child, ptr noundef nonnull %trs, i32 noundef -1, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.364) #16
  %cmp.i = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end69, label %if.end72

do.end69:                                         ; preds = %if.end58
  %17 = load ptr, ptr @torture_type, align 4
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %17, ptr noundef nonnull @.str.27) #19
  br label %do.end95

if.end72:                                         ; preds = %if.end58
  %call62 = call i32 @wake_up_process(ptr noundef %call59) #16
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 2860, i32 noundef 0) #16
  %call.i = call i32 @__cond_resched() #16
  %call75 = call i32 @kthread_stop(ptr noundef %call59) #16
  %18 = load i32, ptr @n_read_exits, align 4
  %inc76 = add i32 %18, 1
  store i32 %inc76, ptr @n_read_exits, align 4
  %call77 = call zeroext i1 @stutter_wait(ptr noundef nonnull @.str.353) #16
  %19 = load volatile i8, ptr @read_exit_child_stop, align 1, !range !1244
  %tobool84.not = icmp eq i8 %19, 0
  br i1 %tobool84.not, label %do.body5, label %do.end95

do.end95:                                         ; preds = %if.end72, %do.end69, %do.end52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1307
  store volatile i8 1, ptr @read_exit_child_stopped, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !1308
  call void @__wake_up(ptr noundef nonnull @read_exit_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  %call115125 = call zeroext i1 @torture_must_stop() #16
  br i1 %call115125, label %while.end, label %while.body

while.body:                                       ; preds = %while.body, %do.end95
  %call117 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #16
  %call115 = call zeroext i1 @torture_must_stop() #16
  br i1 %call115, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.end95
  call void @torture_kthread_stopping(ptr noundef nonnull @.str.353) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %trs) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_torture_read_exit_child(ptr noundef %trsp_in) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !1234) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %3, i32 noundef 19) #16
  %call14 = tail call zeroext i1 @kthread_should_stop() #16
  br i1 %call14, label %while.end, label %while.body

while.body:                                       ; preds = %while.body, %entry
  %call2 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #16
  %call1 = tail call zeroext i1 @kthread_should_stop() #16
  br i1 %call1, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %call3 = tail call fastcc zeroext i1 @rcu_torture_one_read(ptr noundef %trsp_in, i32 noundef -1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rcu_torture_leak_cb(ptr nocapture noundef %rhp) #12 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_torture_err_cb(ptr nocapture noundef readnone %rhp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.372, ptr noundef nonnull @.str.240) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @torture_cleanup_begin() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @torture_cleanup_end() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @torture_onoff_failures() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_oom_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_dump_obj(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 490)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 490)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nobuiltin }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { cold }
attributes #23 = { nounwind allocsize(2) }
attributes #24 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !170, !172, !174, !176, !177, !179, !180, !182, !183, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !269, !271, !273, !275, !276, !277, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !299, !300, !301, !303, !304, !305, !307, !308, !310, !311, !312, !313, !315, !316, !317, !319, !321, !322, !324, !325, !326, !328, !330, !331, !333, !334, !335, !337, !339, !340, !341, !343, !345, !347, !349, !350, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !378, !379, !381, !383, !384, !386, !387, !389, !391, !393, !395, !397, !398, !400, !402, !404, !406, !407, !409, !410, !411, !412, !413, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !433, !435, !437, !439, !441, !443, !445, !446, !447, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !493, !494, !495, !497, !498, !499, !501, !502, !503, !505, !506, !507, !509, !510, !511, !513, !514, !515, !517, !518, !519, !521, !522, !523, !525, !526, !527, !529, !530, !531, !533, !535, !537, !539, !540, !541, !542, !544, !545, !546, !548, !549, !551, !552, !554, !555, !557, !559, !561, !563, !565, !567, !568, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !606, !607, !609, !611, !613, !615, !616, !617, !619, !620, !622, !624, !626, !628, !630, !632, !633, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !657, !658, !659, !661, !663, !665, !667, !669, !670, !671, !673, !674, !676, !677, !679, !680, !682, !683, !685, !687, !689, !691, !693, !695, !697, !699, !700, !701, !703, !705, !707, !709, !710, !711, !713, !715, !717, !718, !719, !720, !722, !723, !724, !725, !726, !728, !729, !730, !732, !733, !734, !736, !737, !738, !740, !741, !742, !744, !745, !746, !748, !749, !751, !752, !753, !754, !756, !758, !760, !762, !764, !766, !768, !770, !771, !772, !774, !775, !776, !778, !779, !781, !782, !784, !785, !786, !788, !789, !791, !792, !794, !795, !797, !798, !799, !801, !802, !803, !805, !806, !808, !809, !810, !812, !814, !816, !818, !820, !822, !823, !824, !826, !828, !830, !831, !832, !833, !834, !836, !838, !839, !840, !841, !843, !845, !846, !847, !849, !851, !852, !853, !855, !857, !858, !859, !860, !862, !864, !866, !867, !868, !869, !871, !872, !873, !875, !876, !877, !879, !880, !881, !882, !883, !885, !887, !889, !891, !893, !894, !895, !897, !898, !899, !901, !902, !903, !905, !906, !907, !909, !910, !911, !913, !914, !915, !917, !918, !919, !921, !922, !923, !925, !927, !928, !929, !930, !932, !933, !934, !936, !937, !938, !940, !941, !943, !944, !945, !947, !949, !950, !951, !953, !955, !957, !958, !960, !961, !962, !964, !965, !967, !968, !970, !971, !972, !974, !975, !976, !977, !979, !980, !981, !983, !984, !986, !988, !989, !990, !992, !993, !994, !996, !997, !998, !1000, !1001, !1002, !1004, !1006, !1008, !1010, !1011, !1012, !1013, !1015, !1017, !1018, !1019, !1020, !1022, !1023, !1024, !1025, !1027, !1028, !1029, !1031, !1032, !1034, !1035, !1036, !1038, !1039, !1040, !1042, !1044, !1046, !1048, !1050, !1051, !1052, !1054, !1056, !1057, !1059, !1060, !1061, !1063, !1064, !1065, !1067, !1068, !1069, !1071, !1073, !1074, !1076, !1077, !1078, !1080, !1082, !1084, !1086, !1087, !1088, !1090, !1091, !1092, !1094, !1095, !1096, !1098, !1099, !1101, !1102, !1104, !1106, !1107, !1108, !1109, !1111, !1112, !1113, !1115, !1116, !1117, !1118, !1120, !1122, !1124, !1126, !1128, !1130, !1131, !1132, !1133, !1135, !1137, !1139, !1140, !1141, !1143, !1144, !1145, !1147, !1148, !1149, !1151, !1152, !1153, !1154, !1155, !1157, !1158, !1159, !1161, !1162, !1163, !1165, !1166, !1167, !1168, !1170, !1172, !1174, !1176, !1178, !1180, !1182, !1184, !1186, !1188, !1189, !1190, !1191, !1193, !1194, !1195, !1197, !1198, !1199, !1201, !1202, !1203, !1205, !1206, !1208, !1209, !1211, !1212, !1214, !1215, !1216, !1218, !1219, !1220, !1222, !1223, !1225, !1226, !1227, !1229, !1230, !1231, !1233}
!llvm.named.register.sp = !{!1234}
!llvm.module.flags = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242}
!llvm.ident = !{!1243}

!0 = !{ptr @__UNIQUE_ID_file292, !1, !"__UNIQUE_ID_file292", i1 false, i1 false}
!1 = !{!"../kernel/rcu/rcutorture.c", i32 53, i32 1}
!2 = !{ptr @__UNIQUE_ID_license293, !1, !"__UNIQUE_ID_license293", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../kernel/rcu/rcutorture.c", i32 54, i32 1}
!5 = !{ptr @__param_extendables, !6, !"__param_extendables", i1 false, i1 false}
!6 = !{!"../kernel/rcu/rcutorture.c", i32 76, i32 1}
!7 = !{ptr @__UNIQUE_ID_extendablestype295, !6, !"__UNIQUE_ID_extendablestype295", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_extendables296, !6, !"__UNIQUE_ID_extendables296", i1 false, i1 false}
!9 = !{ptr @__param_fqs_duration, !10, !"__param_fqs_duration", i1 false, i1 false}
!10 = !{!"../kernel/rcu/rcutorture.c", i32 78, i32 1}
!11 = !{ptr @__UNIQUE_ID_fqs_durationtype297, !10, !"__UNIQUE_ID_fqs_durationtype297", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_fqs_duration298, !10, !"__UNIQUE_ID_fqs_duration298", i1 false, i1 false}
!13 = !{ptr @__param_fqs_holdoff, !14, !"__param_fqs_holdoff", i1 false, i1 false}
!14 = !{!"../kernel/rcu/rcutorture.c", i32 80, i32 1}
!15 = !{ptr @__UNIQUE_ID_fqs_holdofftype299, !14, !"__UNIQUE_ID_fqs_holdofftype299", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_fqs_holdoff300, !14, !"__UNIQUE_ID_fqs_holdoff300", i1 false, i1 false}
!17 = !{ptr @__param_fqs_stutter, !18, !"__param_fqs_stutter", i1 false, i1 false}
!18 = !{!"../kernel/rcu/rcutorture.c", i32 81, i32 1}
!19 = !{ptr @__UNIQUE_ID_fqs_stuttertype301, !18, !"__UNIQUE_ID_fqs_stuttertype301", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_fqs_stutter302, !18, !"__UNIQUE_ID_fqs_stutter302", i1 false, i1 false}
!21 = !{ptr @__param_fwd_progress, !22, !"__param_fwd_progress", i1 false, i1 false}
!22 = !{!"../kernel/rcu/rcutorture.c", i32 82, i32 1}
!23 = !{ptr @__UNIQUE_ID_fwd_progresstype303, !22, !"__UNIQUE_ID_fwd_progresstype303", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_fwd_progress304, !22, !"__UNIQUE_ID_fwd_progress304", i1 false, i1 false}
!25 = !{ptr @__param_fwd_progress_div, !26, !"__param_fwd_progress_div", i1 false, i1 false}
!26 = !{!"../kernel/rcu/rcutorture.c", i32 83, i32 1}
!27 = !{ptr @__UNIQUE_ID_fwd_progress_divtype305, !26, !"__UNIQUE_ID_fwd_progress_divtype305", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_fwd_progress_div306, !26, !"__UNIQUE_ID_fwd_progress_div306", i1 false, i1 false}
!29 = !{ptr @__param_fwd_progress_holdoff, !30, !"__param_fwd_progress_holdoff", i1 false, i1 false}
!30 = !{!"../kernel/rcu/rcutorture.c", i32 84, i32 1}
!31 = !{ptr @__UNIQUE_ID_fwd_progress_holdofftype307, !30, !"__UNIQUE_ID_fwd_progress_holdofftype307", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_fwd_progress_holdoff308, !30, !"__UNIQUE_ID_fwd_progress_holdoff308", i1 false, i1 false}
!33 = !{ptr @__param_fwd_progress_need_resched, !34, !"__param_fwd_progress_need_resched", i1 false, i1 false}
!34 = !{!"../kernel/rcu/rcutorture.c", i32 86, i32 1}
!35 = !{ptr @__UNIQUE_ID_fwd_progress_need_reschedtype309, !34, !"__UNIQUE_ID_fwd_progress_need_reschedtype309", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_fwd_progress_need_resched310, !34, !"__UNIQUE_ID_fwd_progress_need_resched310", i1 false, i1 false}
!37 = !{ptr @__param_gp_cond, !38, !"__param_gp_cond", i1 false, i1 false}
!38 = !{!"../kernel/rcu/rcutorture.c", i32 88, i32 1}
!39 = !{ptr @__UNIQUE_ID_gp_condtype311, !38, !"__UNIQUE_ID_gp_condtype311", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_gp_cond312, !38, !"__UNIQUE_ID_gp_cond312", i1 false, i1 false}
!41 = !{ptr @__param_gp_exp, !42, !"__param_gp_exp", i1 false, i1 false}
!42 = !{!"../kernel/rcu/rcutorture.c", i32 89, i32 1}
!43 = !{ptr @__UNIQUE_ID_gp_exptype313, !42, !"__UNIQUE_ID_gp_exptype313", i1 false, i1 false}
!44 = !{ptr @__UNIQUE_ID_gp_exp314, !42, !"__UNIQUE_ID_gp_exp314", i1 false, i1 false}
!45 = !{ptr @__param_gp_normal, !46, !"__param_gp_normal", i1 false, i1 false}
!46 = !{!"../kernel/rcu/rcutorture.c", i32 90, i32 1}
!47 = !{ptr @__UNIQUE_ID_gp_normaltype315, !46, !"__UNIQUE_ID_gp_normaltype315", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_gp_normal316, !46, !"__UNIQUE_ID_gp_normal316", i1 false, i1 false}
!49 = !{ptr @__param_gp_poll, !50, !"__param_gp_poll", i1 false, i1 false}
!50 = !{!"../kernel/rcu/rcutorture.c", i32 92, i32 1}
!51 = !{ptr @__UNIQUE_ID_gp_polltype317, !50, !"__UNIQUE_ID_gp_polltype317", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_gp_poll318, !50, !"__UNIQUE_ID_gp_poll318", i1 false, i1 false}
!53 = !{ptr @__param_gp_sync, !54, !"__param_gp_sync", i1 false, i1 false}
!54 = !{!"../kernel/rcu/rcutorture.c", i32 93, i32 1}
!55 = !{ptr @__UNIQUE_ID_gp_synctype319, !54, !"__UNIQUE_ID_gp_synctype319", i1 false, i1 false}
!56 = !{ptr @__UNIQUE_ID_gp_sync320, !54, !"__UNIQUE_ID_gp_sync320", i1 false, i1 false}
!57 = !{ptr @__param_irqreader, !58, !"__param_irqreader", i1 false, i1 false}
!58 = !{!"../kernel/rcu/rcutorture.c", i32 94, i32 1}
!59 = !{ptr @__UNIQUE_ID_irqreadertype321, !58, !"__UNIQUE_ID_irqreadertype321", i1 false, i1 false}
!60 = !{ptr @__UNIQUE_ID_irqreader322, !58, !"__UNIQUE_ID_irqreader322", i1 false, i1 false}
!61 = !{ptr @__param_leakpointer, !62, !"__param_leakpointer", i1 false, i1 false}
!62 = !{!"../kernel/rcu/rcutorture.c", i32 95, i32 1}
!63 = !{ptr @__UNIQUE_ID_leakpointertype323, !62, !"__UNIQUE_ID_leakpointertype323", i1 false, i1 false}
!64 = !{ptr @__UNIQUE_ID_leakpointer324, !62, !"__UNIQUE_ID_leakpointer324", i1 false, i1 false}
!65 = !{ptr @__param_n_barrier_cbs, !66, !"__param_n_barrier_cbs", i1 false, i1 false}
!66 = !{!"../kernel/rcu/rcutorture.c", i32 96, i32 1}
!67 = !{ptr @__UNIQUE_ID_n_barrier_cbstype325, !66, !"__UNIQUE_ID_n_barrier_cbstype325", i1 false, i1 false}
!68 = !{ptr @__UNIQUE_ID_n_barrier_cbs326, !66, !"__UNIQUE_ID_n_barrier_cbs326", i1 false, i1 false}
!69 = !{ptr @__param_nfakewriters, !70, !"__param_nfakewriters", i1 false, i1 false}
!70 = !{!"../kernel/rcu/rcutorture.c", i32 98, i32 1}
!71 = !{ptr @__UNIQUE_ID_nfakewriterstype327, !70, !"__UNIQUE_ID_nfakewriterstype327", i1 false, i1 false}
!72 = !{ptr @__UNIQUE_ID_nfakewriters328, !70, !"__UNIQUE_ID_nfakewriters328", i1 false, i1 false}
!73 = !{ptr @__param_nreaders, !74, !"__param_nreaders", i1 false, i1 false}
!74 = !{!"../kernel/rcu/rcutorture.c", i32 99, i32 1}
!75 = !{ptr @__UNIQUE_ID_nreaderstype329, !74, !"__UNIQUE_ID_nreaderstype329", i1 false, i1 false}
!76 = !{ptr @__UNIQUE_ID_nreaders330, !74, !"__UNIQUE_ID_nreaders330", i1 false, i1 false}
!77 = !{ptr @__param_object_debug, !78, !"__param_object_debug", i1 false, i1 false}
!78 = !{!"../kernel/rcu/rcutorture.c", i32 100, i32 1}
!79 = !{ptr @__UNIQUE_ID_object_debugtype331, !78, !"__UNIQUE_ID_object_debugtype331", i1 false, i1 false}
!80 = !{ptr @__UNIQUE_ID_object_debug332, !78, !"__UNIQUE_ID_object_debug332", i1 false, i1 false}
!81 = !{ptr @__param_onoff_holdoff, !82, !"__param_onoff_holdoff", i1 false, i1 false}
!82 = !{!"../kernel/rcu/rcutorture.c", i32 102, i32 1}
!83 = !{ptr @__UNIQUE_ID_onoff_holdofftype333, !82, !"__UNIQUE_ID_onoff_holdofftype333", i1 false, i1 false}
!84 = !{ptr @__UNIQUE_ID_onoff_holdoff334, !82, !"__UNIQUE_ID_onoff_holdoff334", i1 false, i1 false}
!85 = !{ptr @__param_onoff_interval, !86, !"__param_onoff_interval", i1 false, i1 false}
!86 = !{!"../kernel/rcu/rcutorture.c", i32 103, i32 1}
!87 = !{ptr @__UNIQUE_ID_onoff_intervaltype335, !86, !"__UNIQUE_ID_onoff_intervaltype335", i1 false, i1 false}
!88 = !{ptr @__UNIQUE_ID_onoff_interval336, !86, !"__UNIQUE_ID_onoff_interval336", i1 false, i1 false}
!89 = !{ptr @__param_nocbs_nthreads, !90, !"__param_nocbs_nthreads", i1 false, i1 false}
!90 = !{!"../kernel/rcu/rcutorture.c", i32 105, i32 1}
!91 = !{ptr @__UNIQUE_ID_nocbs_nthreadstype337, !90, !"__UNIQUE_ID_nocbs_nthreadstype337", i1 false, i1 false}
!92 = !{ptr @__UNIQUE_ID_nocbs_nthreads338, !90, !"__UNIQUE_ID_nocbs_nthreads338", i1 false, i1 false}
!93 = !{ptr @__param_nocbs_toggle, !94, !"__param_nocbs_toggle", i1 false, i1 false}
!94 = !{!"../kernel/rcu/rcutorture.c", i32 106, i32 1}
!95 = !{ptr @__UNIQUE_ID_nocbs_toggletype339, !94, !"__UNIQUE_ID_nocbs_toggletype339", i1 false, i1 false}
!96 = !{ptr @__UNIQUE_ID_nocbs_toggle340, !94, !"__UNIQUE_ID_nocbs_toggle340", i1 false, i1 false}
!97 = !{ptr @__param_read_exit_delay, !98, !"__param_read_exit_delay", i1 false, i1 false}
!98 = !{!"../kernel/rcu/rcutorture.c", i32 107, i32 1}
!99 = !{ptr @__UNIQUE_ID_read_exit_delaytype341, !98, !"__UNIQUE_ID_read_exit_delaytype341", i1 false, i1 false}
!100 = !{ptr @__UNIQUE_ID_read_exit_delay342, !98, !"__UNIQUE_ID_read_exit_delay342", i1 false, i1 false}
!101 = !{ptr @__param_read_exit_burst, !102, !"__param_read_exit_burst", i1 false, i1 false}
!102 = !{!"../kernel/rcu/rcutorture.c", i32 109, i32 1}
!103 = !{ptr @__UNIQUE_ID_read_exit_bursttype343, !102, !"__UNIQUE_ID_read_exit_bursttype343", i1 false, i1 false}
!104 = !{ptr @__UNIQUE_ID_read_exit_burst344, !102, !"__UNIQUE_ID_read_exit_burst344", i1 false, i1 false}
!105 = !{ptr @__param_shuffle_interval, !106, !"__param_shuffle_interval", i1 false, i1 false}
!106 = !{!"../kernel/rcu/rcutorture.c", i32 111, i32 1}
!107 = !{ptr @__UNIQUE_ID_shuffle_intervaltype345, !106, !"__UNIQUE_ID_shuffle_intervaltype345", i1 false, i1 false}
!108 = !{ptr @__UNIQUE_ID_shuffle_interval346, !106, !"__UNIQUE_ID_shuffle_interval346", i1 false, i1 false}
!109 = !{ptr @__param_shutdown_secs, !110, !"__param_shutdown_secs", i1 false, i1 false}
!110 = !{!"../kernel/rcu/rcutorture.c", i32 112, i32 1}
!111 = !{ptr @__UNIQUE_ID_shutdown_secstype347, !110, !"__UNIQUE_ID_shutdown_secstype347", i1 false, i1 false}
!112 = !{ptr @__UNIQUE_ID_shutdown_secs348, !110, !"__UNIQUE_ID_shutdown_secs348", i1 false, i1 false}
!113 = !{ptr @__param_stall_cpu, !114, !"__param_stall_cpu", i1 false, i1 false}
!114 = !{!"../kernel/rcu/rcutorture.c", i32 113, i32 1}
!115 = !{ptr @__UNIQUE_ID_stall_cputype349, !114, !"__UNIQUE_ID_stall_cputype349", i1 false, i1 false}
!116 = !{ptr @__UNIQUE_ID_stall_cpu350, !114, !"__UNIQUE_ID_stall_cpu350", i1 false, i1 false}
!117 = !{ptr @__param_stall_cpu_holdoff, !118, !"__param_stall_cpu_holdoff", i1 false, i1 false}
!118 = !{!"../kernel/rcu/rcutorture.c", i32 114, i32 1}
!119 = !{ptr @__UNIQUE_ID_stall_cpu_holdofftype351, !118, !"__UNIQUE_ID_stall_cpu_holdofftype351", i1 false, i1 false}
!120 = !{ptr @__UNIQUE_ID_stall_cpu_holdoff352, !118, !"__UNIQUE_ID_stall_cpu_holdoff352", i1 false, i1 false}
!121 = !{ptr @__param_stall_no_softlockup, !122, !"__param_stall_no_softlockup", i1 false, i1 false}
!122 = !{!"../kernel/rcu/rcutorture.c", i32 116, i32 1}
!123 = !{ptr @__UNIQUE_ID_stall_no_softlockuptype353, !122, !"__UNIQUE_ID_stall_no_softlockuptype353", i1 false, i1 false}
!124 = !{ptr @__UNIQUE_ID_stall_no_softlockup354, !122, !"__UNIQUE_ID_stall_no_softlockup354", i1 false, i1 false}
!125 = !{ptr @__param_stall_cpu_irqsoff, !126, !"__param_stall_cpu_irqsoff", i1 false, i1 false}
!126 = !{!"../kernel/rcu/rcutorture.c", i32 118, i32 1}
!127 = !{ptr @__UNIQUE_ID_stall_cpu_irqsofftype355, !126, !"__UNIQUE_ID_stall_cpu_irqsofftype355", i1 false, i1 false}
!128 = !{ptr @__UNIQUE_ID_stall_cpu_irqsoff356, !126, !"__UNIQUE_ID_stall_cpu_irqsoff356", i1 false, i1 false}
!129 = !{ptr @__param_stall_cpu_block, !130, !"__param_stall_cpu_block", i1 false, i1 false}
!130 = !{!"../kernel/rcu/rcutorture.c", i32 119, i32 1}
!131 = !{ptr @__UNIQUE_ID_stall_cpu_blocktype357, !130, !"__UNIQUE_ID_stall_cpu_blocktype357", i1 false, i1 false}
!132 = !{ptr @__UNIQUE_ID_stall_cpu_block358, !130, !"__UNIQUE_ID_stall_cpu_block358", i1 false, i1 false}
!133 = !{ptr @__param_stall_gp_kthread, !134, !"__param_stall_gp_kthread", i1 false, i1 false}
!134 = !{!"../kernel/rcu/rcutorture.c", i32 120, i32 1}
!135 = !{ptr @__UNIQUE_ID_stall_gp_kthreadtype359, !134, !"__UNIQUE_ID_stall_gp_kthreadtype359", i1 false, i1 false}
!136 = !{ptr @__UNIQUE_ID_stall_gp_kthread360, !134, !"__UNIQUE_ID_stall_gp_kthread360", i1 false, i1 false}
!137 = !{ptr @__param_stat_interval, !138, !"__param_stat_interval", i1 false, i1 false}
!138 = !{!"../kernel/rcu/rcutorture.c", i32 122, i32 1}
!139 = !{ptr @__UNIQUE_ID_stat_intervaltype361, !138, !"__UNIQUE_ID_stat_intervaltype361", i1 false, i1 false}
!140 = !{ptr @__UNIQUE_ID_stat_interval362, !138, !"__UNIQUE_ID_stat_interval362", i1 false, i1 false}
!141 = !{ptr @__param_stutter, !142, !"__param_stutter", i1 false, i1 false}
!142 = !{!"../kernel/rcu/rcutorture.c", i32 124, i32 1}
!143 = !{ptr @__UNIQUE_ID_stuttertype363, !142, !"__UNIQUE_ID_stuttertype363", i1 false, i1 false}
!144 = !{ptr @__UNIQUE_ID_stutter364, !142, !"__UNIQUE_ID_stutter364", i1 false, i1 false}
!145 = !{ptr @__param_test_boost, !146, !"__param_test_boost", i1 false, i1 false}
!146 = !{!"../kernel/rcu/rcutorture.c", i32 125, i32 1}
!147 = !{ptr @__UNIQUE_ID_test_boosttype365, !146, !"__UNIQUE_ID_test_boosttype365", i1 false, i1 false}
!148 = !{ptr @__UNIQUE_ID_test_boost366, !146, !"__UNIQUE_ID_test_boost366", i1 false, i1 false}
!149 = !{ptr @__param_test_boost_duration, !150, !"__param_test_boost_duration", i1 false, i1 false}
!150 = !{!"../kernel/rcu/rcutorture.c", i32 126, i32 1}
!151 = !{ptr @__UNIQUE_ID_test_boost_durationtype367, !150, !"__UNIQUE_ID_test_boost_durationtype367", i1 false, i1 false}
!152 = !{ptr @__UNIQUE_ID_test_boost_duration368, !150, !"__UNIQUE_ID_test_boost_duration368", i1 false, i1 false}
!153 = !{ptr @__param_test_boost_interval, !154, !"__param_test_boost_interval", i1 false, i1 false}
!154 = !{!"../kernel/rcu/rcutorture.c", i32 128, i32 1}
!155 = !{ptr @__UNIQUE_ID_test_boost_intervaltype369, !154, !"__UNIQUE_ID_test_boost_intervaltype369", i1 false, i1 false}
!156 = !{ptr @__UNIQUE_ID_test_boost_interval370, !154, !"__UNIQUE_ID_test_boost_interval370", i1 false, i1 false}
!157 = !{ptr @__param_test_no_idle_hz, !158, !"__param_test_no_idle_hz", i1 false, i1 false}
!158 = !{!"../kernel/rcu/rcutorture.c", i32 130, i32 1}
!159 = !{ptr @__UNIQUE_ID_test_no_idle_hztype371, !158, !"__UNIQUE_ID_test_no_idle_hztype371", i1 false, i1 false}
!160 = !{ptr @__UNIQUE_ID_test_no_idle_hz372, !158, !"__UNIQUE_ID_test_no_idle_hz372", i1 false, i1 false}
!161 = !{ptr @__param_verbose, !162, !"__param_verbose", i1 false, i1 false}
!162 = !{!"../kernel/rcu/rcutorture.c", i32 132, i32 1}
!163 = !{ptr @__UNIQUE_ID_verbosetype373, !162, !"__UNIQUE_ID_verbosetype373", i1 false, i1 false}
!164 = !{ptr @__UNIQUE_ID_verbose374, !162, !"__UNIQUE_ID_verbose374", i1 false, i1 false}
!165 = !{ptr @__param_torture_type, !166, !"__param_torture_type", i1 false, i1 false}
!166 = !{!"../kernel/rcu/rcutorture.c", i32 136, i32 1}
!167 = !{ptr @__UNIQUE_ID_torture_typetype375, !166, !"__UNIQUE_ID_torture_typetype375", i1 false, i1 false}
!168 = !{ptr @__UNIQUE_ID_torture_type376, !169, !"__UNIQUE_ID_torture_type376", i1 false, i1 false}
!169 = !{!"../kernel/rcu/rcutorture.c", i32 137, i32 1}
!170 = !{ptr @__initcall__kmod_rcutorture__468_3324_rcu_torture_init6, !171, !"__initcall__kmod_rcutorture__468_3324_rcu_torture_init6", i1 false, i1 false}
!171 = !{!"../kernel/rcu/rcutorture.c", i32 3324, i32 1}
!172 = !{ptr @__exitcall_rcu_torture_cleanup, !173, !"__exitcall_rcu_torture_cleanup", i1 false, i1 false}
!173 = !{!"../kernel/rcu/rcutorture.c", i32 3325, i32 1}
!174 = !{ptr @__pcpu_unique_rcu_torture_count, !175, !"__pcpu_unique_rcu_torture_count", i1 false, i1 false}
!175 = !{!"../kernel/rcu/rcutorture.c", i32 179, i32 8}
!176 = !{ptr @rcu_torture_count, !175, !"rcu_torture_count", i1 false, i1 false}
!177 = !{ptr @__pcpu_unique_rcu_torture_batch, !178, !"__pcpu_unique_rcu_torture_batch", i1 false, i1 false}
!178 = !{!"../kernel/rcu/rcutorture.c", i32 180, i32 8}
!179 = !{ptr @rcu_torture_batch, !178, !"rcu_torture_batch", i1 false, i1 false}
!180 = !{ptr @__pcpu_unique_srcu_ctl_srcu_data, !181, !"__pcpu_unique_srcu_ctl_srcu_data", i1 false, i1 false}
!181 = !{!"../kernel/rcu/rcutorture.c", i32 571, i32 1}
!182 = !{ptr @srcu_ctl_srcu_data, !181, !"srcu_ctl_srcu_data", i1 false, i1 false}
!183 = !{ptr @__pcpu_unique_rcu_torture_timer_rand, !184, !"__pcpu_unique_rcu_torture_timer_rand", i1 false, i1 false}
!184 = !{!"../kernel/rcu/rcutorture.c", i32 1684, i32 8}
!185 = !{ptr @rcu_torture_timer_rand, !184, !"rcu_torture_timer_rand", i1 false, i1 false}
!186 = !{ptr @__param_str_extendables, !6, !"__param_str_extendables", i1 false, i1 false}
!187 = !{ptr @extendables, !6, !"extendables", i1 false, i1 false}
!188 = !{ptr @__param_str_fqs_duration, !10, !"__param_str_fqs_duration", i1 false, i1 false}
!189 = !{ptr @fqs_duration, !10, !"fqs_duration", i1 false, i1 false}
!190 = !{ptr @__param_str_fqs_holdoff, !14, !"__param_str_fqs_holdoff", i1 false, i1 false}
!191 = !{ptr @fqs_holdoff, !14, !"fqs_holdoff", i1 false, i1 false}
!192 = !{ptr @__param_str_fqs_stutter, !18, !"__param_str_fqs_stutter", i1 false, i1 false}
!193 = !{ptr @fqs_stutter, !18, !"fqs_stutter", i1 false, i1 false}
!194 = !{ptr @__param_str_fwd_progress, !22, !"__param_str_fwd_progress", i1 false, i1 false}
!195 = !{ptr @fwd_progress, !22, !"fwd_progress", i1 false, i1 false}
!196 = !{ptr @__param_str_fwd_progress_div, !26, !"__param_str_fwd_progress_div", i1 false, i1 false}
!197 = !{ptr @fwd_progress_div, !26, !"fwd_progress_div", i1 false, i1 false}
!198 = !{ptr @__param_str_fwd_progress_holdoff, !30, !"__param_str_fwd_progress_holdoff", i1 false, i1 false}
!199 = !{ptr @fwd_progress_holdoff, !30, !"fwd_progress_holdoff", i1 false, i1 false}
!200 = !{ptr @__param_str_fwd_progress_need_resched, !34, !"__param_str_fwd_progress_need_resched", i1 false, i1 false}
!201 = !{ptr @fwd_progress_need_resched, !34, !"fwd_progress_need_resched", i1 false, i1 false}
!202 = !{ptr @__param_str_gp_cond, !38, !"__param_str_gp_cond", i1 false, i1 false}
!203 = !{ptr @gp_cond, !38, !"gp_cond", i1 false, i1 false}
!204 = !{ptr @__param_str_gp_exp, !42, !"__param_str_gp_exp", i1 false, i1 false}
!205 = !{ptr @gp_exp, !42, !"gp_exp", i1 false, i1 false}
!206 = !{ptr @__param_str_gp_normal, !46, !"__param_str_gp_normal", i1 false, i1 false}
!207 = !{ptr @gp_normal, !46, !"gp_normal", i1 false, i1 false}
!208 = !{ptr @__param_str_gp_poll, !50, !"__param_str_gp_poll", i1 false, i1 false}
!209 = !{ptr @gp_poll, !50, !"gp_poll", i1 false, i1 false}
!210 = !{ptr @__param_str_gp_sync, !54, !"__param_str_gp_sync", i1 false, i1 false}
!211 = !{ptr @gp_sync, !54, !"gp_sync", i1 false, i1 false}
!212 = !{ptr @__param_str_irqreader, !58, !"__param_str_irqreader", i1 false, i1 false}
!213 = !{ptr @irqreader, !58, !"irqreader", i1 false, i1 false}
!214 = !{ptr @__param_str_leakpointer, !62, !"__param_str_leakpointer", i1 false, i1 false}
!215 = !{ptr @leakpointer, !62, !"leakpointer", i1 false, i1 false}
!216 = !{ptr @__param_str_n_barrier_cbs, !66, !"__param_str_n_barrier_cbs", i1 false, i1 false}
!217 = !{ptr @n_barrier_cbs, !66, !"n_barrier_cbs", i1 false, i1 false}
!218 = !{ptr @__param_str_nfakewriters, !70, !"__param_str_nfakewriters", i1 false, i1 false}
!219 = !{ptr @nfakewriters, !70, !"nfakewriters", i1 false, i1 false}
!220 = !{ptr @__param_str_nreaders, !74, !"__param_str_nreaders", i1 false, i1 false}
!221 = !{ptr @nreaders, !74, !"nreaders", i1 false, i1 false}
!222 = !{ptr @__param_str_object_debug, !78, !"__param_str_object_debug", i1 false, i1 false}
!223 = !{ptr @object_debug, !78, !"object_debug", i1 false, i1 false}
!224 = !{ptr @__param_str_onoff_holdoff, !82, !"__param_str_onoff_holdoff", i1 false, i1 false}
!225 = !{ptr @onoff_holdoff, !82, !"onoff_holdoff", i1 false, i1 false}
!226 = !{ptr @__param_str_onoff_interval, !86, !"__param_str_onoff_interval", i1 false, i1 false}
!227 = !{ptr @onoff_interval, !86, !"onoff_interval", i1 false, i1 false}
!228 = !{ptr @__param_str_nocbs_nthreads, !90, !"__param_str_nocbs_nthreads", i1 false, i1 false}
!229 = !{ptr @nocbs_nthreads, !90, !"nocbs_nthreads", i1 false, i1 false}
!230 = !{ptr @__param_str_nocbs_toggle, !94, !"__param_str_nocbs_toggle", i1 false, i1 false}
!231 = !{ptr @nocbs_toggle, !94, !"nocbs_toggle", i1 false, i1 false}
!232 = !{ptr @__param_str_read_exit_delay, !98, !"__param_str_read_exit_delay", i1 false, i1 false}
!233 = !{ptr @read_exit_delay, !98, !"read_exit_delay", i1 false, i1 false}
!234 = !{ptr @__param_str_read_exit_burst, !102, !"__param_str_read_exit_burst", i1 false, i1 false}
!235 = !{ptr @read_exit_burst, !102, !"read_exit_burst", i1 false, i1 false}
!236 = !{ptr @__param_str_shuffle_interval, !106, !"__param_str_shuffle_interval", i1 false, i1 false}
!237 = !{ptr @shuffle_interval, !106, !"shuffle_interval", i1 false, i1 false}
!238 = !{ptr @__param_str_shutdown_secs, !110, !"__param_str_shutdown_secs", i1 false, i1 false}
!239 = !{ptr @shutdown_secs, !110, !"shutdown_secs", i1 false, i1 false}
!240 = !{ptr @__param_str_stall_cpu, !114, !"__param_str_stall_cpu", i1 false, i1 false}
!241 = !{ptr @stall_cpu, !114, !"stall_cpu", i1 false, i1 false}
!242 = !{ptr @__param_str_stall_cpu_holdoff, !118, !"__param_str_stall_cpu_holdoff", i1 false, i1 false}
!243 = !{ptr @stall_cpu_holdoff, !118, !"stall_cpu_holdoff", i1 false, i1 false}
!244 = !{ptr @__param_str_stall_no_softlockup, !122, !"__param_str_stall_no_softlockup", i1 false, i1 false}
!245 = !{ptr @stall_no_softlockup, !122, !"stall_no_softlockup", i1 false, i1 false}
!246 = !{ptr @__param_str_stall_cpu_irqsoff, !126, !"__param_str_stall_cpu_irqsoff", i1 false, i1 false}
!247 = !{ptr @stall_cpu_irqsoff, !126, !"stall_cpu_irqsoff", i1 false, i1 false}
!248 = !{ptr @__param_str_stall_cpu_block, !130, !"__param_str_stall_cpu_block", i1 false, i1 false}
!249 = !{ptr @stall_cpu_block, !130, !"stall_cpu_block", i1 false, i1 false}
!250 = !{ptr @__param_str_stall_gp_kthread, !134, !"__param_str_stall_gp_kthread", i1 false, i1 false}
!251 = !{ptr @stall_gp_kthread, !134, !"stall_gp_kthread", i1 false, i1 false}
!252 = !{ptr @__param_str_stat_interval, !138, !"__param_str_stat_interval", i1 false, i1 false}
!253 = !{ptr @stat_interval, !138, !"stat_interval", i1 false, i1 false}
!254 = !{ptr @__param_str_stutter, !142, !"__param_str_stutter", i1 false, i1 false}
!255 = !{ptr @stutter, !142, !"stutter", i1 false, i1 false}
!256 = !{ptr @__param_str_test_boost, !146, !"__param_str_test_boost", i1 false, i1 false}
!257 = !{ptr @test_boost, !146, !"test_boost", i1 false, i1 false}
!258 = !{ptr @__param_str_test_boost_duration, !150, !"__param_str_test_boost_duration", i1 false, i1 false}
!259 = !{ptr @test_boost_duration, !150, !"test_boost_duration", i1 false, i1 false}
!260 = !{ptr @__param_str_test_boost_interval, !154, !"__param_str_test_boost_interval", i1 false, i1 false}
!261 = !{ptr @test_boost_interval, !154, !"test_boost_interval", i1 false, i1 false}
!262 = !{ptr @__param_str_test_no_idle_hz, !158, !"__param_str_test_no_idle_hz", i1 false, i1 false}
!263 = !{ptr @test_no_idle_hz, !158, !"test_no_idle_hz", i1 false, i1 false}
!264 = !{ptr @__param_str_verbose, !162, !"__param_str_verbose", i1 false, i1 false}
!265 = !{ptr @verbose, !162, !"verbose", i1 false, i1 false}
!266 = !{ptr @__param_str_torture_type, !166, !"__param_str_torture_type", i1 false, i1 false}
!267 = !{ptr @.str, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../kernel/rcu/rcutorture.c", i32 135, i32 29}
!269 = !{ptr @torture_type, !270, !"torture_type", i1 false, i1 false}
!270 = !{!"../kernel/rcu/rcutorture.c", i32 135, i32 14}
!271 = !{ptr @rcu_torture_init.torture_ops, !272, !"torture_ops", i1 false, i1 false}
!272 = !{!"../kernel/rcu/rcutorture.c", i32 3087, i32 33}
!273 = !{ptr @.str.1, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../kernel/rcu/rcutorture.c", i32 3103, i32 3}
!275 = !{ptr @.str.2, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @.str.3, !274, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @rcu_torture_init._entry, !274, !"_entry", i1 false, i1 false}
!278 = !{ptr @rcu_torture_init._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.5, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../kernel/rcu/rcutorture.c", i32 3105, i32 3}
!281 = !{ptr @rcu_torture_init._entry.4, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @rcu_torture_init._entry_ptr.6, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.8, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../kernel/rcu/rcutorture.c", i32 3107, i32 4}
!285 = !{ptr @rcu_torture_init._entry.7, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @rcu_torture_init._entry_ptr.9, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.11, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../kernel/rcu/rcutorture.c", i32 3108, i32 3}
!289 = !{ptr @rcu_torture_init._entry.10, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @rcu_torture_init._entry_ptr.12, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.14, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../kernel/rcu/rcutorture.c", i32 3114, i32 3}
!293 = !{ptr @rcu_torture_init._entry.13, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @rcu_torture_init._entry_ptr.15, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.16, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../kernel/rcu/rcutorture.c", i32 3127, i32 42}
!297 = !{ptr @.str.18, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../kernel/rcu/rcutorture.c", i32 3131, i32 2}
!299 = !{ptr @rcu_torture_init._entry.17, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @rcu_torture_init._entry_ptr.19, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.20, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../kernel/rcu/rcutorture.c", i32 3173, i32 13}
!303 = !{ptr @.str.21, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @.str.22, !302, !"<string literal>", i1 false, i1 false}
!305 = distinct !{null, !306, !"__already_done", i1 false, i1 false}
!306 = !{!"../kernel/rcu/rcutorture.c", i32 3175, i32 6}
!307 = !{ptr @.str.23, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @.str.25, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../kernel/rcu/rcutorture.c", i32 3182, i32 4}
!310 = !{ptr @rcu_torture_init._entry.24, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @rcu_torture_init._entry_ptr.26, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.27, !309, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.28, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../kernel/rcu/rcutorture.c", i32 3188, i32 14}
!315 = !{ptr @.str.29, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.30, !314, !"<string literal>", i1 false, i1 false}
!317 = distinct !{null, !318, !"__already_done", i1 false, i1 false}
!318 = !{!"../kernel/rcu/rcutorture.c", i32 3190, i32 7}
!319 = !{ptr @rcu_torture_init._entry.32, !320, !"_entry", i1 false, i1 false}
!320 = !{!"../kernel/rcu/rcutorture.c", i32 3198, i32 3}
!321 = !{ptr @rcu_torture_init._entry_ptr.33, !320, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.34, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../kernel/rcu/rcutorture.c", i32 3204, i32 14}
!324 = !{ptr @.str.35, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @.str.36, !323, !"<string literal>", i1 false, i1 false}
!326 = distinct !{null, !327, !"__already_done", i1 false, i1 false}
!327 = !{!"../kernel/rcu/rcutorture.c", i32 3206, i32 7}
!328 = !{ptr @rcu_torture_init._entry.38, !329, !"_entry", i1 false, i1 false}
!329 = !{!"../kernel/rcu/rcutorture.c", i32 3217, i32 4}
!330 = !{ptr @rcu_torture_init._entry_ptr.39, !329, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.40, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../kernel/rcu/rcutorture.c", i32 3225, i32 14}
!333 = !{ptr @.str.41, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @.str.42, !332, !"<string literal>", i1 false, i1 false}
!335 = distinct !{null, !336, !"__already_done", i1 false, i1 false}
!336 = !{!"../kernel/rcu/rcutorture.c", i32 3226, i32 7}
!337 = !{ptr @.str.44, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../kernel/rcu/rcutorture.c", i32 3230, i32 14}
!339 = !{ptr @.str.45, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @.str.46, !338, !"<string literal>", i1 false, i1 false}
!341 = distinct !{null, !342, !"__already_done", i1 false, i1 false}
!342 = !{!"../kernel/rcu/rcutorture.c", i32 3232, i32 7}
!343 = distinct !{null, !344, !"__already_done", i1 false, i1 false}
!344 = !{!"../kernel/rcu/rcutorture.c", i32 3237, i32 7}
!345 = distinct !{null, !346, !"__already_done", i1 false, i1 false}
!346 = !{!"../kernel/rcu/rcutorture.c", i32 3247, i32 7}
!347 = !{ptr @.str.50, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../kernel/rcu/rcutorture.c", i32 3254, i32 14}
!349 = !{ptr @.str.51, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @.str.52, !348, !"<string literal>", i1 false, i1 false}
!351 = distinct !{null, !352, !"__already_done", i1 false, i1 false}
!352 = !{!"../kernel/rcu/rcutorture.c", i32 3256, i32 7}
!353 = !{ptr @.str.54, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../kernel/rcu/rcutorture.c", i32 3267, i32 53}
!355 = distinct !{null, !356, !"__already_done", i1 false, i1 false}
!356 = !{!"../kernel/rcu/rcutorture.c", i32 3271, i32 7}
!357 = distinct !{null, !358, !"__already_done", i1 false, i1 false}
!358 = !{!"../kernel/rcu/rcutorture.c", i32 3283, i32 5}
!359 = distinct !{null, !360, !"__already_done", i1 false, i1 false}
!360 = !{!"../kernel/rcu/rcutorture.c", i32 3291, i32 6}
!361 = distinct !{null, !362, !"__already_done", i1 false, i1 false}
!362 = !{!"../kernel/rcu/rcutorture.c", i32 3295, i32 6}
!363 = distinct !{null, !364, !"__already_done", i1 false, i1 false}
!364 = !{!"../kernel/rcu/rcutorture.c", i32 3298, i32 6}
!365 = distinct !{null, !366, !"__already_done", i1 false, i1 false}
!366 = !{!"../kernel/rcu/rcutorture.c", i32 3301, i32 6}
!367 = distinct !{null, !368, !"__already_done", i1 false, i1 false}
!368 = !{!"../kernel/rcu/rcutorture.c", i32 3304, i32 6}
!369 = distinct !{null, !370, !"__already_done", i1 false, i1 false}
!370 = !{!"../kernel/rcu/rcutorture.c", i32 3307, i32 6}
!371 = !{ptr @rcu_ops, !372, !"rcu_ops", i1 false, i1 false}
!372 = !{!"../kernel/rcu/rcutorture.c", i32 494, i32 31}
!373 = !{ptr @rcu_torture_removed, !374, !"rcu_torture_removed", i1 false, i1 false}
!374 = !{!"../kernel/rcu/rcutorture.c", i32 199, i32 25}
!375 = distinct !{null, !376, !"__warned", i1 false, i1 false}
!376 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!377 = !{ptr @.str.63, !376, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @.str.64, !376, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @rcu_fwd_cb_nodelay, !380, !"rcu_fwd_cb_nodelay", i1 false, i1 false}
!380 = !{!"../kernel/rcu/rcutorture.c", i32 287, i32 13}
!381 = distinct !{null, !382, !"__warned", i1 false, i1 false}
!382 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!383 = !{ptr @.str.65, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @.str.66, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../kernel/rcu/rcutorture.c", i32 178, i32 8}
!386 = !{ptr @rcu_torture_lock, !385, !"rcu_torture_lock", i1 false, i1 false}
!387 = !{ptr @.str.67, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../kernel/rcu/rcutorture.c", i32 564, i32 11}
!389 = !{ptr @rcu_busted_ops, !390, !"rcu_busted_ops", i1 false, i1 false}
!390 = !{!"../kernel/rcu/rcutorture.c", i32 548, i32 31}
!391 = !{ptr @.str.68, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../kernel/rcu/rcutorture.c", i32 679, i32 11}
!393 = !{ptr @srcu_ops, !394, !"srcu_ops", i1 false, i1 false}
!394 = !{!"../kernel/rcu/rcutorture.c", i32 660, i32 31}
!395 = distinct !{null, !396, !"__already_done", i1 false, i1 false}
!396 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!397 = !{ptr @.str.69, !396, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @.str.70, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../kernel/rcu/rcutorture.c", i32 652, i32 52}
!400 = !{ptr @.str.71, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../kernel/rcu/rcutorture.c", i32 713, i32 11}
!402 = !{ptr @srcud_ops, !403, !"srcud_ops", i1 false, i1 false}
!403 = !{!"../kernel/rcu/rcutorture.c", i32 696, i32 31}
!404 = !{ptr @srcu_torture_init.__srcu_key, !405, !"__srcu_key", i1 false, i1 false}
!405 = !{!"../kernel/rcu/rcutorture.c", i32 685, i32 2}
!406 = !{ptr @.str.72, !405, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @srcu_ctld, !408, !"srcu_ctld", i1 false, i1 false}
!408 = !{!"../kernel/rcu/rcutorture.c", i32 572, i32 27}
!409 = !{ptr @.str.73, !181, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @.str.75, !181, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @.str.76, !181, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @srcu_ctl, !181, !"srcu_ctl", i1 false, i1 false}
!414 = !{ptr @.str.77, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../kernel/rcu/rcutorture.c", i32 735, i32 11}
!416 = !{ptr @busted_srcud_ops, !417, !"busted_srcud_ops", i1 false, i1 false}
!417 = !{!"../kernel/rcu/rcutorture.c", i32 717, i32 31}
!418 = !{ptr @.str.78, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../kernel/rcu/rcutorture.c", i32 778, i32 11}
!420 = !{ptr @tasks_ops, !421, !"tasks_ops", i1 false, i1 false}
!421 = !{!"../kernel/rcu/rcutorture.c", i32 761, i32 31}
!422 = !{ptr @.str.79, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../kernel/rcu/rcutorture.c", i32 849, i32 11}
!424 = !{ptr @tasks_rude_ops, !425, !"tasks_rude_ops", i1 false, i1 false}
!425 = !{!"../kernel/rcu/rcutorture.c", i32 832, i32 31}
!426 = !{ptr @.str.80, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../kernel/rcu/rcutorture.c", i32 891, i32 11}
!428 = !{ptr @tasks_tracing_ops, !429, !"tasks_tracing_ops", i1 false, i1 false}
!429 = !{!"../kernel/rcu/rcutorture.c", i32 872, i32 31}
!430 = distinct !{null, !431, !"__already_done", i1 false, i1 false}
!431 = !{!"../include/linux/rcupdate_trace.h", i32 83, i32 2}
!432 = distinct !{null, !431, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @.str.82, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../kernel/rcu/rcutorture.c", i32 820, i32 11}
!435 = !{ptr @trivial_ops, !436, !"trivial_ops", i1 false, i1 false}
!436 = !{!"../kernel/rcu/rcutorture.c", i32 807, i32 31}
!437 = distinct !{null, !438, !"__already_done", i1 false, i1 false}
!438 = !{!"../kernel/rcu/rcutorture.c", i32 792, i32 3}
!439 = !{ptr @cur_ops, !440, !"cur_ops", i1 false, i1 false}
!440 = !{!"../kernel/rcu/rcutorture.c", i32 360, i32 32}
!441 = !{ptr @nrealreaders, !442, !"nrealreaders", i1 false, i1 false}
!442 = !{!"../kernel/rcu/rcutorture.c", i32 140, i32 12}
!443 = !{ptr @.str.83, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../kernel/rcu/rcutorture.c", i32 1980, i32 2}
!445 = !{ptr @.str.84, !444, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @rcu_torture_print_module_parms._entry, !444, !"_entry", i1 false, i1 false}
!447 = !{ptr @rcu_torture_print_module_parms._entry_ptr, !444, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @srcu_ctlp, !449, !"srcu_ctlp", i1 false, i1 false}
!449 = !{!"../kernel/rcu/rcutorture.c", i32 573, i32 28}
!450 = !{ptr @start_gp_seq, !451, !"start_gp_seq", i1 false, i1 false}
!451 = !{!"../kernel/rcu/rcutorture.c", i32 201, i32 22}
!452 = !{ptr @rcu_torture_freelist, !453, !"rcu_torture_freelist", i1 false, i1 false}
!453 = !{!"../kernel/rcu/rcutorture.c", i32 174, i32 8}
!454 = !{ptr @rcu_tortures, !455, !"rcu_tortures", i1 false, i1 false}
!455 = !{!"../kernel/rcu/rcutorture.c", i32 177, i32 27}
!456 = !{ptr @rcu_torture_current, !457, !"rcu_torture_current", i1 false, i1 false}
!457 = !{!"../kernel/rcu/rcutorture.c", i32 175, i32 34}
!458 = !{ptr @rcu_torture_current_version, !459, !"rcu_torture_current_version", i1 false, i1 false}
!459 = !{!"../kernel/rcu/rcutorture.c", i32 176, i32 22}
!460 = !{ptr @n_rcu_torture_alloc, !461, !"n_rcu_torture_alloc", i1 false, i1 false}
!461 = !{!"../kernel/rcu/rcutorture.c", i32 183, i32 17}
!462 = !{ptr @n_rcu_torture_alloc_fail, !463, !"n_rcu_torture_alloc_fail", i1 false, i1 false}
!463 = !{!"../kernel/rcu/rcutorture.c", i32 184, i32 17}
!464 = !{ptr @n_rcu_torture_free, !465, !"n_rcu_torture_free", i1 false, i1 false}
!465 = !{!"../kernel/rcu/rcutorture.c", i32 185, i32 17}
!466 = !{ptr @n_rcu_torture_mberror, !467, !"n_rcu_torture_mberror", i1 false, i1 false}
!467 = !{!"../kernel/rcu/rcutorture.c", i32 186, i32 17}
!468 = !{ptr @n_rcu_torture_mbchk_fail, !469, !"n_rcu_torture_mbchk_fail", i1 false, i1 false}
!469 = !{!"../kernel/rcu/rcutorture.c", i32 187, i32 17}
!470 = !{ptr @n_rcu_torture_mbchk_tries, !471, !"n_rcu_torture_mbchk_tries", i1 false, i1 false}
!471 = !{!"../kernel/rcu/rcutorture.c", i32 188, i32 17}
!472 = !{ptr @n_rcu_torture_error, !473, !"n_rcu_torture_error", i1 false, i1 false}
!473 = !{!"../kernel/rcu/rcutorture.c", i32 189, i32 17}
!474 = !{ptr @n_rcu_torture_barrier_error, !475, !"n_rcu_torture_barrier_error", i1 false, i1 false}
!475 = !{!"../kernel/rcu/rcutorture.c", i32 190, i32 13}
!476 = !{ptr @n_rcu_torture_boost_ktrerror, !477, !"n_rcu_torture_boost_ktrerror", i1 false, i1 false}
!477 = !{!"../kernel/rcu/rcutorture.c", i32 191, i32 13}
!478 = distinct !{null, !479, !"n_rcu_torture_boost_rterror", i1 false, i1 false}
!479 = !{!"../kernel/rcu/rcutorture.c", i32 192, i32 13}
!480 = !{ptr @n_rcu_torture_boost_failure, !481, !"n_rcu_torture_boost_failure", i1 false, i1 false}
!481 = !{!"../kernel/rcu/rcutorture.c", i32 193, i32 13}
!482 = !{ptr @n_rcu_torture_boosts, !483, !"n_rcu_torture_boosts", i1 false, i1 false}
!483 = !{!"../kernel/rcu/rcutorture.c", i32 194, i32 13}
!484 = !{ptr @rcu_torture_wcount, !485, !"rcu_torture_wcount", i1 false, i1 false}
!485 = !{!"../kernel/rcu/rcutorture.c", i32 181, i32 17}
!486 = !{ptr @err_segs_recorded, !487, !"err_segs_recorded", i1 false, i1 false}
!487 = !{!"../kernel/rcu/rcutorture.c", i32 241, i32 12}
!488 = !{ptr @rt_read_nsegs, !489, !"rt_read_nsegs", i1 false, i1 false}
!489 = !{!"../kernel/rcu/rcutorture.c", i32 243, i32 12}
!490 = !{ptr @.str.85, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../kernel/rcu/rcutorture.c", i32 1121, i32 3}
!492 = !{ptr @.str.86, !491, !"<string literal>", i1 false, i1 false}
!493 = !{ptr @rcu_torture_write_types._entry, !491, !"_entry", i1 false, i1 false}
!494 = !{ptr @rcu_torture_write_types._entry_ptr, !491, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @.str.88, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../kernel/rcu/rcutorture.c", i32 1123, i32 3}
!497 = !{ptr @rcu_torture_write_types._entry.87, !496, !"_entry", i1 false, i1 false}
!498 = !{ptr @rcu_torture_write_types._entry_ptr.89, !496, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.91, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../kernel/rcu/rcutorture.c", i32 1127, i32 3}
!501 = !{ptr @rcu_torture_write_types._entry.90, !500, !"_entry", i1 false, i1 false}
!502 = !{ptr @rcu_torture_write_types._entry_ptr.92, !500, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @.str.94, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../kernel/rcu/rcutorture.c", i32 1129, i32 3}
!505 = !{ptr @rcu_torture_write_types._entry.93, !504, !"_entry", i1 false, i1 false}
!506 = !{ptr @rcu_torture_write_types._entry_ptr.95, !504, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @.str.97, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../kernel/rcu/rcutorture.c", i32 1133, i32 3}
!509 = !{ptr @rcu_torture_write_types._entry.96, !508, !"_entry", i1 false, i1 false}
!510 = !{ptr @rcu_torture_write_types._entry_ptr.98, !508, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @.str.100, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../kernel/rcu/rcutorture.c", i32 1135, i32 3}
!513 = !{ptr @rcu_torture_write_types._entry.99, !512, !"_entry", i1 false, i1 false}
!514 = !{ptr @rcu_torture_write_types._entry_ptr.101, !512, !"_entry_ptr", i1 false, i1 false}
!515 = !{ptr @.str.103, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../kernel/rcu/rcutorture.c", i32 1139, i32 3}
!517 = !{ptr @rcu_torture_write_types._entry.102, !516, !"_entry", i1 false, i1 false}
!518 = !{ptr @rcu_torture_write_types._entry_ptr.104, !516, !"_entry_ptr", i1 false, i1 false}
!519 = !{ptr @.str.106, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../kernel/rcu/rcutorture.c", i32 1141, i32 3}
!521 = !{ptr @rcu_torture_write_types._entry.105, !520, !"_entry", i1 false, i1 false}
!522 = !{ptr @rcu_torture_write_types._entry_ptr.107, !520, !"_entry_ptr", i1 false, i1 false}
!523 = !{ptr @.str.109, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../kernel/rcu/rcutorture.c", i32 1145, i32 3}
!525 = !{ptr @rcu_torture_write_types._entry.108, !524, !"_entry", i1 false, i1 false}
!526 = !{ptr @rcu_torture_write_types._entry_ptr.110, !524, !"_entry_ptr", i1 false, i1 false}
!527 = !{ptr @.str.112, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../kernel/rcu/rcutorture.c", i32 1147, i32 3}
!529 = !{ptr @rcu_torture_write_types._entry.111, !528, !"_entry", i1 false, i1 false}
!530 = !{ptr @rcu_torture_write_types._entry_ptr.113, !528, !"_entry_ptr", i1 false, i1 false}
!531 = !{ptr @synctype, !532, !"synctype", i1 false, i1 false}
!532 = !{!"../kernel/rcu/rcutorture.c", i32 1105, i32 12}
!533 = !{ptr @nsynctypes, !534, !"nsynctypes", i1 false, i1 false}
!534 = !{!"../kernel/rcu/rcutorture.c", i32 1106, i32 12}
!535 = !{ptr @rcu_torture_writer.rand, !536, !"rand", i1 false, i1 false}
!536 = !{!"../kernel/rcu/rcutorture.c", i32 1169, i32 9}
!537 = !{ptr @.str.114, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../kernel/rcu/rcutorture.c", i32 1172, i32 2}
!539 = !{ptr @rcu_torture_writer._entry, !538, !"_entry", i1 false, i1 false}
!540 = !{ptr @rcu_torture_writer._entry_ptr, !538, !"_entry_ptr", i1 false, i1 false}
!541 = !{ptr @.str.115, !538, !"<string literal>", i1 false, i1 false}
!542 = !{ptr @.str.117, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../kernel/rcu/rcutorture.c", i32 1174, i32 3}
!544 = !{ptr @rcu_torture_writer._entry.116, !543, !"_entry", i1 false, i1 false}
!545 = !{ptr @rcu_torture_writer._entry_ptr.118, !543, !"_entry_ptr", i1 false, i1 false}
!546 = distinct !{null, !547, !"__already_done", i1 false, i1 false}
!547 = !{!"../kernel/rcu/rcutorture.c", i32 1177, i32 6}
!548 = !{ptr @.str.119, !547, !"<string literal>", i1 false, i1 false}
!549 = distinct !{null, !550, !"__warned", i1 false, i1 false}
!550 = !{!"../kernel/rcu/rcutorture.c", i32 1198, i32 12}
!551 = !{ptr @.str.120, !550, !"<string literal>", i1 false, i1 false}
!552 = distinct !{null, !553, !"__already_done", i1 false, i1 false}
!553 = !{!"../kernel/rcu/rcutorture.c", i32 1213, i32 5}
!554 = !{ptr @.str.122, !553, !"<string literal>", i1 false, i1 false}
!555 = distinct !{null, !556, !"__already_done", i1 false, i1 false}
!556 = !{!"../kernel/rcu/rcutorture.c", i32 1255, i32 5}
!557 = distinct !{null, !558, !"__already_done", i1 false, i1 false}
!558 = !{!"../kernel/rcu/rcutorture.c", i32 1264, i32 4}
!559 = !{ptr @rcu_torture_writer.___rfd_beenhere, !560, !"___rfd_beenhere", i1 false, i1 false}
!560 = !{!"../kernel/rcu/rcutorture.c", i32 1287, i32 6}
!561 = !{ptr @.str.125, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../kernel/rcu/rcutorture.c", i32 1288, i32 6}
!563 = distinct !{null, !564, !"__already_done", i1 false, i1 false}
!564 = !{!"../kernel/rcu/rcutorture.c", i32 1299, i32 2}
!565 = !{ptr @.str.128, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../kernel/rcu/rcutorture.c", i32 1301, i32 3}
!567 = !{ptr @rcu_torture_writer._entry.127, !566, !"_entry", i1 false, i1 false}
!568 = !{ptr @rcu_torture_writer._entry_ptr.129, !566, !"_entry_ptr", i1 false, i1 false}
!569 = !{ptr @rcu_torture_writer_state, !570, !"rcu_torture_writer_state", i1 false, i1 false}
!570 = !{!"../kernel/rcu/rcutorture.c", i32 205, i32 12}
!571 = !{ptr @.str.130, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../kernel/rcu/rcutorture.c", i32 250, i32 10}
!573 = !{ptr @.str.131, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../kernel/rcu/rcutorture.c", i32 219, i32 2}
!575 = !{ptr @.str.132, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../kernel/rcu/rcutorture.c", i32 220, i32 2}
!577 = !{ptr @.str.133, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../kernel/rcu/rcutorture.c", i32 221, i32 2}
!579 = !{ptr @.str.134, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../kernel/rcu/rcutorture.c", i32 222, i32 2}
!581 = !{ptr @.str.135, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../kernel/rcu/rcutorture.c", i32 223, i32 2}
!583 = !{ptr @.str.136, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../kernel/rcu/rcutorture.c", i32 224, i32 2}
!585 = !{ptr @.str.137, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../kernel/rcu/rcutorture.c", i32 225, i32 2}
!587 = !{ptr @.str.138, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../kernel/rcu/rcutorture.c", i32 226, i32 2}
!589 = !{ptr @.str.139, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../kernel/rcu/rcutorture.c", i32 227, i32 2}
!591 = !{ptr @.str.140, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../kernel/rcu/rcutorture.c", i32 228, i32 2}
!593 = !{ptr @.str.141, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../kernel/rcu/rcutorture.c", i32 229, i32 2}
!595 = !{ptr @.str.142, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../kernel/rcu/rcutorture.c", i32 230, i32 2}
!597 = !{ptr @rcu_torture_writer_state_names, !598, !"rcu_torture_writer_state_names", i1 false, i1 false}
!598 = !{!"../kernel/rcu/rcutorture.c", i32 218, i32 27}
!599 = !{ptr @writer_task, !600, !"writer_task", i1 false, i1 false}
!600 = !{!"../kernel/rcu/rcutorture.c", i32 141, i32 28}
!601 = !{ptr @fakewriter_tasks, !602, !"fakewriter_tasks", i1 false, i1 false}
!602 = !{!"../kernel/rcu/rcutorture.c", i32 142, i32 29}
!603 = !{ptr @rcu_torture_fakewriter._entry, !604, !"_entry", i1 false, i1 false}
!604 = !{!"../kernel/rcu/rcutorture.c", i32 1319, i32 2}
!605 = !{ptr @rcu_torture_fakewriter._entry_ptr, !604, !"_entry_ptr", i1 false, i1 false}
!606 = !{ptr @.str.143, !604, !"<string literal>", i1 false, i1 false}
!607 = distinct !{null, !608, !"__already_done", i1 false, i1 false}
!608 = !{!"../kernel/rcu/rcutorture.c", i32 1350, i32 5}
!609 = !{ptr @reader_tasks, !610, !"reader_tasks", i1 false, i1 false}
!610 = !{!"../kernel/rcu/rcutorture.c", i32 143, i32 29}
!611 = !{ptr @rcu_torture_reader_mbchk, !612, !"rcu_torture_reader_mbchk", i1 false, i1 false}
!612 = !{!"../kernel/rcu/rcutorture.c", i32 182, i32 41}
!613 = !{ptr @rcu_torture_reader._entry, !614, !"_entry", i1 false, i1 false}
!614 = !{!"../kernel/rcu/rcutorture.c", i32 1721, i32 2}
!615 = !{ptr @rcu_torture_reader._entry_ptr, !614, !"_entry_ptr", i1 false, i1 false}
!616 = !{ptr @.str.144, !614, !"<string literal>", i1 false, i1 false}
!617 = !{ptr @rcu_torture_reader.__key, !618, !"__key", i1 false, i1 false}
!618 = !{!"../kernel/rcu/rcutorture.c", i32 1724, i32 3}
!619 = !{ptr @.str.145, !618, !"<string literal>", i1 false, i1 false}
!620 = !{ptr @n_rcu_torture_timers, !621, !"n_rcu_torture_timers", i1 false, i1 false}
!621 = !{!"../kernel/rcu/rcutorture.c", i32 195, i32 22}
!622 = distinct !{null, !623, !"__already_done", i1 false, i1 false}
!623 = !{!"../kernel/rcu/rcutorture.c", i32 1622, i32 2}
!624 = distinct !{null, !625, !"__warned", i1 false, i1 false}
!625 = !{!"../kernel/rcu/rcutorture.c", i32 1629, i32 6}
!626 = !{ptr @rcu_torture_one_read.___rfd_beenhere, !627, !"___rfd_beenhere", i1 false, i1 false}
!627 = !{!"../kernel/rcu/rcutorture.c", i32 1650, i32 3}
!628 = distinct !{null, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../kernel/rcu/rcutorture.c", i32 1652, i32 2}
!630 = distinct !{null, !631, !"__already_done", i1 false, i1 false}
!631 = !{!"../kernel/rcu/rcutorture.c", i32 1661, i32 3}
!632 = !{ptr @.str.148, !631, !"<string literal>", i1 false, i1 false}
!633 = !{ptr @__func__.rcu_torture_one_read, !631, !"<string literal>", i1 false, i1 false}
!634 = distinct !{null, !635, !"__already_done", i1 false, i1 false}
!635 = !{!"../kernel/rcu/rcutorture.c", i32 1668, i32 2}
!636 = distinct !{null, !637, !"__already_done", i1 false, i1 false}
!637 = !{!"../kernel/rcu/rcutorture.c", i32 1671, i32 2}
!638 = distinct !{null, !639, !"__already_done", i1 false, i1 false}
!639 = !{!"../kernel/rcu/rcutorture.c", i32 1540, i32 2}
!640 = distinct !{null, !641, !"__already_done", i1 false, i1 false}
!641 = !{!"../kernel/rcu/rcutorture.c", i32 1523, i32 2}
!642 = distinct !{null, !643, !"__already_done", i1 false, i1 false}
!643 = !{!"../kernel/rcu/rcutorture.c", i32 1443, i32 2}
!644 = distinct !{null, !645, !"__already_done", i1 false, i1 false}
!645 = !{!"../kernel/rcu/rcutorture.c", i32 1444, i32 2}
!646 = distinct !{null, !647, !"__already_done", i1 false, i1 false}
!647 = !{!"../kernel/rcu/rcutorture.c", i32 1482, i32 3}
!648 = distinct !{null, !649, !"__already_done", i1 false, i1 false}
!649 = !{!"../kernel/rcu/rcutorture.c", i32 1492, i32 3}
!650 = distinct !{null, !651, !"__already_done", i1 false, i1 false}
!651 = !{!"../kernel/rcu/rcutorture.c", i32 1505, i32 2}
!652 = distinct !{null, !653, !"__already_done", i1 false, i1 false}
!653 = !{!"../kernel/rcu/rcutorture.c", i32 1506, i32 6}
!654 = !{ptr @.str.156, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../kernel/rcu/rcutorture.c", i32 1507, i32 3}
!656 = !{ptr @.str.157, !655, !"<string literal>", i1 false, i1 false}
!657 = !{ptr @rcutorture_one_extend._entry, !655, !"_entry", i1 false, i1 false}
!658 = !{ptr @rcutorture_one_extend._entry_ptr, !655, !"_entry_ptr", i1 false, i1 false}
!659 = distinct !{null, !660, !"__already_done", i1 false, i1 false}
!660 = !{!"../kernel/rcu/rcutorture.c", i32 1510, i32 2}
!661 = distinct !{null, !662, !"__already_done", i1 false, i1 false}
!662 = !{!"../kernel/rcu/rcutorture.c", i32 1511, i32 2}
!663 = distinct !{null, !664, !"__already_done", i1 false, i1 false}
!664 = !{!"../kernel/rcu/rcutorture.c", i32 1513, i32 2}
!665 = distinct !{null, !666, !"__already_done", i1 false, i1 false}
!666 = !{!"../kernel/rcu/rcutorture.c", i32 1514, i32 6}
!667 = !{ptr @.str.163, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../kernel/rcu/rcutorture.c", i32 1515, i32 3}
!669 = !{ptr @rcutorture_one_extend._entry.162, !668, !"_entry", i1 false, i1 false}
!670 = !{ptr @rcutorture_one_extend._entry_ptr.164, !668, !"_entry_ptr", i1 false, i1 false}
!671 = distinct !{null, !672, !"__warned", i1 false, i1 false}
!672 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!673 = !{ptr @.str.165, !672, !"<string literal>", i1 false, i1 false}
!674 = distinct !{null, !675, !"__warned", i1 false, i1 false}
!675 = !{!"../include/linux/rcupdate.h", i32 787, i32 2}
!676 = !{ptr @.str.166, !675, !"<string literal>", i1 false, i1 false}
!677 = distinct !{null, !678, !"__warned", i1 false, i1 false}
!678 = !{!"../include/linux/rcupdate.h", i32 805, i32 2}
!679 = !{ptr @.str.167, !678, !"<string literal>", i1 false, i1 false}
!680 = distinct !{null, !681, !"__warned", i1 false, i1 false}
!681 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!682 = !{ptr @.str.168, !681, !"<string literal>", i1 false, i1 false}
!683 = distinct !{null, !684, !"__already_done", i1 false, i1 false}
!684 = !{!"../kernel/rcu/rcutorture.c", i32 1396, i32 3}
!685 = distinct !{null, !686, !"__already_done", i1 false, i1 false}
!686 = !{!"../kernel/rcu/rcutorture.c", i32 1398, i32 3}
!687 = distinct !{null, !688, !"__already_done", i1 false, i1 false}
!688 = !{!"../kernel/rcu/rcutorture.c", i32 1409, i32 6}
!689 = distinct !{null, !690, !"__already_done", i1 false, i1 false}
!690 = !{!"../kernel/rcu/rcutorture.c", i32 1589, i32 2}
!691 = !{ptr @err_segs, !692, !"err_segs", i1 false, i1 false}
!692 = !{!"../kernel/rcu/rcutorture.c", i32 242, i32 27}
!693 = !{ptr @nrealnocbers, !694, !"nrealnocbers", i1 false, i1 false}
!694 = !{!"../kernel/rcu/rcutorture.c", i32 139, i32 12}
!695 = !{ptr @nocb_tasks, !696, !"nocb_tasks", i1 false, i1 false}
!696 = !{!"../kernel/rcu/rcutorture.c", i32 144, i32 29}
!697 = !{ptr @rcu_nocb_toggle._entry, !698, !"_entry", i1 false, i1 false}
!698 = !{!"../kernel/rcu/rcutorture.c", i32 1765, i32 2}
!699 = !{ptr @rcu_nocb_toggle._entry_ptr, !698, !"_entry_ptr", i1 false, i1 false}
!700 = !{ptr @.str.171, !698, !"<string literal>", i1 false, i1 false}
!701 = distinct !{null, !702, !"__already_done", i1 false, i1 false}
!702 = !{!"../kernel/rcu/rcutorture.c", i32 1788, i32 3}
!703 = !{ptr @n_nocb_offload, !704, !"n_nocb_offload", i1 false, i1 false}
!704 = !{!"../kernel/rcu/rcutorture.c", i32 202, i32 22}
!705 = !{ptr @n_nocb_deoffload, !706, !"n_nocb_deoffload", i1 false, i1 false}
!706 = !{!"../kernel/rcu/rcutorture.c", i32 203, i32 22}
!707 = !{ptr @rcu_torture_stats._entry, !708, !"_entry", i1 false, i1 false}
!708 = !{!"../kernel/rcu/rcutorture.c", i32 1927, i32 2}
!709 = !{ptr @rcu_torture_stats._entry_ptr, !708, !"_entry_ptr", i1 false, i1 false}
!710 = !{ptr @.str.172, !708, !"<string literal>", i1 false, i1 false}
!711 = !{ptr @rcu_torture_stats_print.rtcv_snap, !712, !"rtcv_snap", i1 false, i1 false}
!712 = !{!"../kernel/rcu/rcutorture.c", i32 1813, i32 23}
!713 = distinct !{null, !714, !"splatted", i1 false, i1 false}
!714 = !{!"../kernel/rcu/rcutorture.c", i32 1814, i32 14}
!715 = !{ptr @.str.173, !716, !"<string literal>", i1 false, i1 false}
!716 = !{!"../kernel/rcu/rcutorture.c", i32 1828, i32 2}
!717 = !{ptr @.str.174, !716, !"<string literal>", i1 false, i1 false}
!718 = !{ptr @rcu_torture_stats_print._entry, !716, !"_entry", i1 false, i1 false}
!719 = !{ptr @rcu_torture_stats_print._entry_ptr, !716, !"_entry_ptr", i1 false, i1 false}
!720 = !{ptr @.str.176, !721, !"<string literal>", i1 false, i1 false}
!721 = !{!"../kernel/rcu/rcutorture.c", i32 1830, i32 2}
!722 = !{ptr @rcu_torture_stats_print._entry.175, !721, !"_entry", i1 false, i1 false}
!723 = !{ptr @rcu_torture_stats_print._entry_ptr.177, !721, !"_entry_ptr", i1 false, i1 false}
!724 = !{ptr @.str.178, !721, !"<string literal>", i1 false, i1 false}
!725 = !{ptr @.str.179, !721, !"<string literal>", i1 false, i1 false}
!726 = !{ptr @.str.181, !727, !"<string literal>", i1 false, i1 false}
!727 = !{!"../kernel/rcu/rcutorture.c", i32 1838, i32 2}
!728 = !{ptr @rcu_torture_stats_print._entry.180, !727, !"_entry", i1 false, i1 false}
!729 = !{ptr @rcu_torture_stats_print._entry_ptr.182, !727, !"_entry_ptr", i1 false, i1 false}
!730 = !{ptr @.str.184, !731, !"<string literal>", i1 false, i1 false}
!731 = !{!"../kernel/rcu/rcutorture.c", i32 1844, i32 2}
!732 = !{ptr @rcu_torture_stats_print._entry.183, !731, !"_entry", i1 false, i1 false}
!733 = !{ptr @rcu_torture_stats_print._entry_ptr.185, !731, !"_entry_ptr", i1 false, i1 false}
!734 = !{ptr @.str.187, !735, !"<string literal>", i1 false, i1 false}
!735 = !{!"../kernel/rcu/rcutorture.c", i32 1849, i32 2}
!736 = !{ptr @rcu_torture_stats_print._entry.186, !735, !"_entry", i1 false, i1 false}
!737 = !{ptr @rcu_torture_stats_print._entry_ptr.188, !735, !"_entry_ptr", i1 false, i1 false}
!738 = !{ptr @.str.190, !739, !"<string literal>", i1 false, i1 false}
!739 = !{!"../kernel/rcu/rcutorture.c", i32 1853, i32 2}
!740 = !{ptr @rcu_torture_stats_print._entry.189, !739, !"_entry", i1 false, i1 false}
!741 = !{ptr @rcu_torture_stats_print._entry_ptr.191, !739, !"_entry_ptr", i1 false, i1 false}
!742 = !{ptr @.str.193, !743, !"<string literal>", i1 false, i1 false}
!743 = !{!"../kernel/rcu/rcutorture.c", i32 1854, i32 2}
!744 = !{ptr @rcu_torture_stats_print._entry.192, !743, !"_entry", i1 false, i1 false}
!745 = !{ptr @rcu_torture_stats_print._entry_ptr.194, !743, !"_entry_ptr", i1 false, i1 false}
!746 = !{ptr @rcu_torture_stats_print._entry.195, !747, !"_entry", i1 false, i1 false}
!747 = !{!"../kernel/rcu/rcutorture.c", i32 1857, i32 2}
!748 = !{ptr @rcu_torture_stats_print._entry_ptr.196, !747, !"_entry_ptr", i1 false, i1 false}
!749 = !{ptr @.str.198, !750, !"<string literal>", i1 false, i1 false}
!750 = !{!"../kernel/rcu/rcutorture.c", i32 1863, i32 3}
!751 = !{ptr @rcu_torture_stats_print._entry.197, !750, !"_entry", i1 false, i1 false}
!752 = !{ptr @rcu_torture_stats_print._entry_ptr.199, !750, !"_entry_ptr", i1 false, i1 false}
!753 = !{ptr @.str.200, !750, !"<string literal>", i1 false, i1 false}
!754 = distinct !{null, !755, !"__already_done", i1 false, i1 false}
!755 = !{!"../kernel/rcu/rcutorture.c", i32 1865, i32 3}
!756 = distinct !{null, !757, !"__already_done", i1 false, i1 false}
!757 = !{!"../kernel/rcu/rcutorture.c", i32 1866, i32 3}
!758 = distinct !{null, !759, !"__already_done", i1 false, i1 false}
!759 = !{!"../kernel/rcu/rcutorture.c", i32 1867, i32 3}
!760 = distinct !{null, !761, !"__already_done", i1 false, i1 false}
!761 = !{!"../kernel/rcu/rcutorture.c", i32 1868, i32 3}
!762 = distinct !{null, !763, !"__already_done", i1 false, i1 false}
!763 = !{!"../kernel/rcu/rcutorture.c", i32 1869, i32 3}
!764 = distinct !{null, !765, !"__already_done", i1 false, i1 false}
!765 = !{!"../kernel/rcu/rcutorture.c", i32 1870, i32 3}
!766 = distinct !{null, !767, !"__already_done", i1 false, i1 false}
!767 = !{!"../kernel/rcu/rcutorture.c", i32 1871, i32 3}
!768 = !{ptr @.str.208, !769, !"<string literal>", i1 false, i1 false}
!769 = !{!"../kernel/rcu/rcutorture.c", i32 1873, i32 2}
!770 = !{ptr @rcu_torture_stats_print._entry.207, !769, !"_entry", i1 false, i1 false}
!771 = !{ptr @rcu_torture_stats_print._entry_ptr.209, !769, !"_entry_ptr", i1 false, i1 false}
!772 = !{ptr @.str.211, !773, !"<string literal>", i1 false, i1 false}
!773 = !{!"../kernel/rcu/rcutorture.c", i32 1875, i32 3}
!774 = !{ptr @rcu_torture_stats_print._entry.210, !773, !"_entry", i1 false, i1 false}
!775 = !{ptr @rcu_torture_stats_print._entry_ptr.212, !773, !"_entry_ptr", i1 false, i1 false}
!776 = !{ptr @rcu_torture_stats_print._entry.213, !777, !"_entry", i1 false, i1 false}
!777 = !{!"../kernel/rcu/rcutorture.c", i32 1876, i32 2}
!778 = !{ptr @rcu_torture_stats_print._entry_ptr.214, !777, !"_entry_ptr", i1 false, i1 false}
!779 = !{ptr @rcu_torture_stats_print._entry.215, !780, !"_entry", i1 false, i1 false}
!780 = !{!"../kernel/rcu/rcutorture.c", i32 1878, i32 2}
!781 = !{ptr @rcu_torture_stats_print._entry_ptr.216, !780, !"_entry_ptr", i1 false, i1 false}
!782 = !{ptr @.str.218, !783, !"<string literal>", i1 false, i1 false}
!783 = !{!"../kernel/rcu/rcutorture.c", i32 1879, i32 2}
!784 = !{ptr @rcu_torture_stats_print._entry.217, !783, !"_entry", i1 false, i1 false}
!785 = !{ptr @rcu_torture_stats_print._entry_ptr.219, !783, !"_entry_ptr", i1 false, i1 false}
!786 = !{ptr @rcu_torture_stats_print._entry.220, !787, !"_entry", i1 false, i1 false}
!787 = !{!"../kernel/rcu/rcutorture.c", i32 1881, i32 3}
!788 = !{ptr @rcu_torture_stats_print._entry_ptr.221, !787, !"_entry_ptr", i1 false, i1 false}
!789 = !{ptr @rcu_torture_stats_print._entry.222, !790, !"_entry", i1 false, i1 false}
!790 = !{!"../kernel/rcu/rcutorture.c", i32 1882, i32 2}
!791 = !{ptr @rcu_torture_stats_print._entry_ptr.223, !790, !"_entry_ptr", i1 false, i1 false}
!792 = !{ptr @rcu_torture_stats_print._entry.224, !793, !"_entry", i1 false, i1 false}
!793 = !{!"../kernel/rcu/rcutorture.c", i32 1884, i32 2}
!794 = !{ptr @rcu_torture_stats_print._entry_ptr.225, !793, !"_entry_ptr", i1 false, i1 false}
!795 = !{ptr @.str.227, !796, !"<string literal>", i1 false, i1 false}
!796 = !{!"../kernel/rcu/rcutorture.c", i32 1885, i32 2}
!797 = !{ptr @rcu_torture_stats_print._entry.226, !796, !"_entry", i1 false, i1 false}
!798 = !{ptr @rcu_torture_stats_print._entry_ptr.228, !796, !"_entry_ptr", i1 false, i1 false}
!799 = !{ptr @.str.230, !800, !"<string literal>", i1 false, i1 false}
!800 = !{!"../kernel/rcu/rcutorture.c", i32 1887, i32 3}
!801 = !{ptr @rcu_torture_stats_print._entry.229, !800, !"_entry", i1 false, i1 false}
!802 = !{ptr @rcu_torture_stats_print._entry_ptr.231, !800, !"_entry_ptr", i1 false, i1 false}
!803 = !{ptr @rcu_torture_stats_print._entry.232, !804, !"_entry", i1 false, i1 false}
!804 = !{!"../kernel/rcu/rcutorture.c", i32 1889, i32 2}
!805 = !{ptr @rcu_torture_stats_print._entry_ptr.233, !804, !"_entry_ptr", i1 false, i1 false}
!806 = !{ptr @.str.235, !807, !"<string literal>", i1 false, i1 false}
!807 = !{!"../kernel/rcu/rcutorture.c", i32 1904, i32 3}
!808 = !{ptr @rcu_torture_stats_print._entry.234, !807, !"_entry", i1 false, i1 false}
!809 = !{ptr @rcu_torture_stats_print._entry_ptr.236, !807, !"_entry_ptr", i1 false, i1 false}
!810 = !{ptr @rcu_torture_stats_print.___rfd_beenhere, !811, !"___rfd_beenhere", i1 false, i1 false}
!811 = !{!"../kernel/rcu/rcutorture.c", i32 1915, i32 3}
!812 = !{ptr @n_barrier_successes, !813, !"n_barrier_successes", i1 false, i1 false}
!813 = !{!"../kernel/rcu/rcutorture.c", i32 197, i32 13}
!814 = !{ptr @n_barrier_attempts, !815, !"n_barrier_attempts", i1 false, i1 false}
!815 = !{!"../kernel/rcu/rcutorture.c", i32 196, i32 13}
!816 = !{ptr @n_read_exits, !817, !"n_read_exits", i1 false, i1 false}
!817 = !{!"../kernel/rcu/rcutorture.c", i32 198, i32 22}
!818 = !{ptr @stats_task, !819, !"stats_task", i1 false, i1 false}
!819 = !{!"../kernel/rcu/rcutorture.c", i32 145, i32 28}
!820 = !{ptr @rcu_torture_fqs._entry, !821, !"_entry", i1 false, i1 false}
!821 = !{!"../kernel/rcu/rcutorture.c", i32 1082, i32 2}
!822 = !{ptr @rcu_torture_fqs._entry_ptr, !821, !"_entry_ptr", i1 false, i1 false}
!823 = !{ptr @.str.237, !821, !"<string literal>", i1 false, i1 false}
!824 = !{ptr @fqs_task, !825, !"fqs_task", i1 false, i1 false}
!825 = !{!"../kernel/rcu/rcutorture.c", i32 146, i32 28}
!826 = distinct !{null, !827, !"boost_warn_once", i1 false, i1 false}
!827 = !{!"../kernel/rcu/rcutorture.c", i32 2780, i32 13}
!828 = !{ptr @.str.238, !829, !"<string literal>", i1 false, i1 false}
!829 = !{!"../kernel/rcu/rcutorture.c", i32 2796, i32 3}
!830 = !{ptr @.str.239, !829, !"<string literal>", i1 false, i1 false}
!831 = !{ptr @rcu_torture_can_boost._entry, !829, !"_entry", i1 false, i1 false}
!832 = !{ptr @rcu_torture_can_boost._entry_ptr, !829, !"_entry_ptr", i1 false, i1 false}
!833 = !{ptr @.str.240, !829, !"<string literal>", i1 false, i1 false}
!834 = !{ptr @boost_starttime, !835, !"boost_starttime", i1 false, i1 false}
!835 = !{!"../kernel/rcu/rcutorture.c", i32 278, i32 22}
!836 = !{ptr @.str.241, !837, !"<string literal>", i1 false, i1 false}
!837 = !{!"../kernel/rcu/rcutorture.c", i32 2033, i32 2}
!838 = !{ptr @rcutorture_booster_init._entry, !837, !"_entry", i1 false, i1 false}
!839 = !{ptr @rcutorture_booster_init._entry_ptr, !837, !"_entry_ptr", i1 false, i1 false}
!840 = !{ptr @.str.242, !837, !"<string literal>", i1 false, i1 false}
!841 = !{ptr @.str.243, !842, !"<string literal>", i1 false, i1 false}
!842 = !{!"../kernel/rcu/rcutorture.c", i32 2035, i32 17}
!843 = !{ptr @rcutorture_booster_init._entry.244, !844, !"_entry", i1 false, i1 false}
!844 = !{!"../kernel/rcu/rcutorture.c", i32 2038, i32 3}
!845 = !{ptr @rcutorture_booster_init._entry_ptr.245, !844, !"_entry_ptr", i1 false, i1 false}
!846 = !{ptr @.str.246, !844, !"<string literal>", i1 false, i1 false}
!847 = !{ptr @boost_tasks, !848, !"boost_tasks", i1 false, i1 false}
!848 = !{!"../kernel/rcu/rcutorture.c", i32 147, i32 28}
!849 = !{ptr @.str.247, !850, !"<string literal>", i1 false, i1 false}
!850 = !{!"../kernel/rcu/rcutorture.c", i32 279, i32 8}
!851 = !{ptr @.str.248, !850, !"<string literal>", i1 false, i1 false}
!852 = !{ptr @boost_mutex, !850, !"boost_mutex", i1 false, i1 false}
!853 = !{ptr @old_rt_runtime, !854, !"old_rt_runtime", i1 false, i1 false}
!854 = !{!"../kernel/rcu/rcutorture.c", i32 908, i32 12}
!855 = !{ptr @.str.249, !856, !"<string literal>", i1 false, i1 false}
!856 = !{!"../kernel/rcu/rcutorture.c", i32 986, i32 2}
!857 = !{ptr @rcu_torture_boost._entry, !856, !"_entry", i1 false, i1 false}
!858 = !{ptr @rcu_torture_boost._entry_ptr, !856, !"_entry_ptr", i1 false, i1 false}
!859 = !{ptr @.str.250, !856, !"<string literal>", i1 false, i1 false}
!860 = !{ptr @rcu_torture_boost_failed.dbg_done, !861, !"dbg_done", i1 false, i1 false}
!861 = !{!"../kernel/rcu/rcutorture.c", i32 937, i32 13}
!862 = !{ptr @rcu_torture_boost_failed.last_persist, !863, !"last_persist", i1 false, i1 false}
!863 = !{!"../kernel/rcu/rcutorture.c", i32 941, i32 23}
!864 = !{ptr @.str.251, !865, !"<string literal>", i1 false, i1 false}
!865 = !{!"../kernel/rcu/rcutorture.c", i32 955, i32 5}
!866 = !{ptr @.str.252, !865, !"<string literal>", i1 false, i1 false}
!867 = !{ptr @rcu_torture_boost_failed._entry, !865, !"_entry", i1 false, i1 false}
!868 = !{ptr @rcu_torture_boost_failed._entry_ptr, !865, !"_entry_ptr", i1 false, i1 false}
!869 = !{ptr @rcu_torture_boost_failed._entry.253, !870, !"_entry", i1 false, i1 false}
!870 = !{!"../kernel/rcu/rcutorture.c", i32 958, i32 3}
!871 = !{ptr @rcu_torture_boost_failed._entry_ptr.254, !870, !"_entry_ptr", i1 false, i1 false}
!872 = !{ptr @.str.255, !870, !"<string literal>", i1 false, i1 false}
!873 = !{ptr @.str.257, !874, !"<string literal>", i1 false, i1 false}
!874 = !{!"../kernel/rcu/rcutorture.c", i32 961, i32 4}
!875 = !{ptr @rcu_torture_boost_failed._entry.256, !874, !"_entry", i1 false, i1 false}
!876 = !{ptr @rcu_torture_boost_failed._entry_ptr.258, !874, !"_entry_ptr", i1 false, i1 false}
!877 = !{ptr @.str.260, !878, !"<string literal>", i1 false, i1 false}
!878 = !{!"../kernel/rcu/rcutorture.c", i32 966, i32 4}
!879 = !{ptr @rcu_torture_boost_failed._entry.259, !878, !"_entry", i1 false, i1 false}
!880 = !{ptr @rcu_torture_boost_failed._entry_ptr.261, !878, !"_entry_ptr", i1 false, i1 false}
!881 = !{ptr @.str.262, !878, !"<string literal>", i1 false, i1 false}
!882 = !{ptr @.str.263, !878, !"<string literal>", i1 false, i1 false}
!883 = !{ptr @.str.264, !884, !"<string literal>", i1 false, i1 false}
!884 = !{!"../kernel/rcu/rcutorture.c", i32 2019, i32 2}
!885 = !{ptr @rcutor_hp, !886, !"rcutor_hp", i1 false, i1 false}
!886 = !{!"../kernel/rcu/rcutorture.c", i32 2897, i32 25}
!887 = !{ptr @shutdown_jiffies, !888, !"shutdown_jiffies", i1 false, i1 false}
!888 = !{!"../kernel/rcu/rcutorture.c", i32 200, i32 22}
!889 = !{ptr @rcutorture_sync.n, !890, !"n", i1 false, i1 false}
!890 = !{!"../kernel/rcu/rcutorture.c", i32 3073, i32 23}
!891 = !{ptr @.str.265, !892, !"<string literal>", i1 false, i1 false}
!892 = !{!"../kernel/rcu/rcutorture.c", i32 2112, i32 9}
!893 = !{ptr @.str.266, !892, !"<string literal>", i1 false, i1 false}
!894 = !{ptr @.str.267, !892, !"<string literal>", i1 false, i1 false}
!895 = !{ptr @rcu_torture_stall._entry, !896, !"_entry", i1 false, i1 false}
!896 = !{!"../kernel/rcu/rcutorture.c", i32 2057, i32 2}
!897 = !{ptr @rcu_torture_stall._entry_ptr, !896, !"_entry_ptr", i1 false, i1 false}
!898 = !{ptr @.str.268, !896, !"<string literal>", i1 false, i1 false}
!899 = !{ptr @rcu_torture_stall._entry.269, !900, !"_entry", i1 false, i1 false}
!900 = !{!"../kernel/rcu/rcutorture.c", i32 2059, i32 3}
!901 = !{ptr @rcu_torture_stall._entry_ptr.270, !900, !"_entry_ptr", i1 false, i1 false}
!902 = !{ptr @.str.271, !900, !"<string literal>", i1 false, i1 false}
!903 = !{ptr @rcu_torture_stall._entry.272, !904, !"_entry", i1 false, i1 false}
!904 = !{!"../kernel/rcu/rcutorture.c", i32 2061, i32 3}
!905 = !{ptr @rcu_torture_stall._entry_ptr.273, !904, !"_entry_ptr", i1 false, i1 false}
!906 = !{ptr @.str.274, !904, !"<string literal>", i1 false, i1 false}
!907 = !{ptr @rcu_torture_stall._entry.275, !908, !"_entry", i1 false, i1 false}
!908 = !{!"../kernel/rcu/rcutorture.c", i32 2064, i32 3}
!909 = !{ptr @rcu_torture_stall._entry_ptr.276, !908, !"_entry_ptr", i1 false, i1 false}
!910 = !{ptr @.str.277, !908, !"<string literal>", i1 false, i1 false}
!911 = !{ptr @rcu_torture_stall._entry.278, !912, !"_entry", i1 false, i1 false}
!912 = !{!"../kernel/rcu/rcutorture.c", i32 2073, i32 3}
!913 = !{ptr @rcu_torture_stall._entry_ptr.279, !912, !"_entry_ptr", i1 false, i1 false}
!914 = !{ptr @.str.280, !912, !"<string literal>", i1 false, i1 false}
!915 = !{ptr @.str.282, !916, !"<string literal>", i1 false, i1 false}
!916 = !{!"../kernel/rcu/rcutorture.c", i32 2081, i32 3}
!917 = !{ptr @rcu_torture_stall._entry.281, !916, !"_entry", i1 false, i1 false}
!918 = !{ptr @rcu_torture_stall._entry_ptr.283, !916, !"_entry_ptr", i1 false, i1 false}
!919 = !{ptr @.str.285, !920, !"<string literal>", i1 false, i1 false}
!920 = !{!"../kernel/rcu/rcutorture.c", i32 2100, i32 2}
!921 = !{ptr @rcu_torture_stall._entry.284, !920, !"_entry", i1 false, i1 false}
!922 = !{ptr @rcu_torture_stall._entry_ptr.286, !920, !"_entry_ptr", i1 false, i1 false}
!923 = !{ptr @stall_task, !924, !"stall_task", i1 false, i1 false}
!924 = !{!"../kernel/rcu/rcutorture.c", i32 148, i32 28}
!925 = !{ptr @.str.287, !926, !"<string literal>", i1 false, i1 false}
!926 = !{!"../kernel/rcu/rcutorture.c", i32 2550, i32 3}
!927 = !{ptr @rcu_torture_fwd_prog_init._entry, !926, !"_entry", i1 false, i1 false}
!928 = !{ptr @rcu_torture_fwd_prog_init._entry_ptr, !926, !"_entry_ptr", i1 false, i1 false}
!929 = !{ptr @.str.288, !926, !"<string literal>", i1 false, i1 false}
!930 = !{ptr @rcu_torture_fwd_prog_init._entry.289, !931, !"_entry", i1 false, i1 false}
!931 = !{!"../kernel/rcu/rcutorture.c", i32 2558, i32 3}
!932 = !{ptr @rcu_torture_fwd_prog_init._entry_ptr.290, !931, !"_entry_ptr", i1 false, i1 false}
!933 = !{ptr @.str.291, !931, !"<string literal>", i1 false, i1 false}
!934 = !{ptr @rcu_torture_fwd_prog_init._entry.292, !935, !"_entry", i1 false, i1 false}
!935 = !{!"../kernel/rcu/rcutorture.c", i32 2563, i32 3}
!936 = !{ptr @rcu_torture_fwd_prog_init._entry_ptr.293, !935, !"_entry_ptr", i1 false, i1 false}
!937 = !{ptr @.str.294, !935, !"<string literal>", i1 false, i1 false}
!938 = !{ptr @rcu_torture_fwd_prog_init.__key, !939, !"__key", i1 false, i1 false}
!939 = !{!"../kernel/rcu/rcutorture.c", i32 2584, i32 3}
!940 = !{ptr @.str.295, !939, !"<string literal>", i1 false, i1 false}
!941 = !{ptr @.str.296, !942, !"<string literal>", i1 false, i1 false}
!942 = !{!"../kernel/rcu/rcutorture.c", i32 2593, i32 9}
!943 = !{ptr @.str.297, !942, !"<string literal>", i1 false, i1 false}
!944 = !{ptr @.str.298, !942, !"<string literal>", i1 false, i1 false}
!945 = !{ptr @fwd_prog_tasks, !946, !"fwd_prog_tasks", i1 false, i1 false}
!946 = !{!"../kernel/rcu/rcutorture.c", i32 149, i32 29}
!947 = !{ptr @.str.299, !948, !"<string literal>", i1 false, i1 false}
!948 = !{!"../kernel/rcu/rcutorture.c", i32 2167, i32 8}
!949 = !{ptr @.str.300, !948, !"<string literal>", i1 false, i1 false}
!950 = !{ptr @rcu_fwd_mutex, !948, !"rcu_fwd_mutex", i1 false, i1 false}
!951 = !{ptr @rcu_fwds, !952, !"rcu_fwds", i1 false, i1 false}
!952 = !{!"../kernel/rcu/rcutorture.c", i32 2168, i32 24}
!953 = !{ptr @rcutorture_oom_nb, !954, !"rcutorture_oom_nb", i1 false, i1 false}
!954 = !{!"../kernel/rcu/rcutorture.c", i32 2484, i32 30}
!955 = !{ptr @.str.301, !956, !"<string literal>", i1 false, i1 false}
!956 = !{!"../kernel/rcu/rcutorture.c", i32 2455, i32 2}
!957 = !{ptr @__func__.rcutorture_oom_notify, !956, !"<string literal>", i1 false, i1 false}
!958 = !{ptr @.str.302, !959, !"<string literal>", i1 false, i1 false}
!959 = !{!"../kernel/rcu/rcutorture.c", i32 2466, i32 2}
!960 = !{ptr @rcutorture_oom_notify._entry, !959, !"_entry", i1 false, i1 false}
!961 = !{ptr @rcutorture_oom_notify._entry_ptr, !959, !"_entry_ptr", i1 false, i1 false}
!962 = !{ptr @rcutorture_oom_notify._entry.303, !963, !"_entry", i1 false, i1 false}
!963 = !{!"../kernel/rcu/rcutorture.c", i32 2471, i32 2}
!964 = !{ptr @rcutorture_oom_notify._entry_ptr.304, !963, !"_entry_ptr", i1 false, i1 false}
!965 = !{ptr @rcutorture_oom_notify._entry.305, !966, !"_entry", i1 false, i1 false}
!966 = !{!"../kernel/rcu/rcutorture.c", i32 2476, i32 2}
!967 = !{ptr @rcutorture_oom_notify._entry_ptr.306, !966, !"_entry_ptr", i1 false, i1 false}
!968 = !{ptr @.str.308, !969, !"<string literal>", i1 false, i1 false}
!969 = !{!"../kernel/rcu/rcutorture.c", i32 2479, i32 2}
!970 = !{ptr @rcutorture_oom_notify._entry.307, !969, !"_entry", i1 false, i1 false}
!971 = !{ptr @rcutorture_oom_notify._entry_ptr.309, !969, !"_entry_ptr", i1 false, i1 false}
!972 = !{ptr @.str.310, !973, !"<string literal>", i1 false, i1 false}
!973 = !{!"../kernel/rcu/rcutorture.c", i32 2184, i32 2}
!974 = !{ptr @.str.311, !973, !"<string literal>", i1 false, i1 false}
!975 = !{ptr @rcu_torture_fwd_cb_hist._entry, !973, !"_entry", i1 false, i1 false}
!976 = !{ptr @rcu_torture_fwd_cb_hist._entry_ptr, !973, !"_entry_ptr", i1 false, i1 false}
!977 = !{ptr @.str.313, !978, !"<string literal>", i1 false, i1 false}
!978 = !{!"../kernel/rcu/rcutorture.c", i32 2189, i32 3}
!979 = !{ptr @rcu_torture_fwd_cb_hist._entry.312, !978, !"_entry", i1 false, i1 false}
!980 = !{ptr @rcu_torture_fwd_cb_hist._entry_ptr.314, !978, !"_entry_ptr", i1 false, i1 false}
!981 = !{ptr @rcu_torture_fwd_cb_hist._entry.315, !982, !"_entry", i1 false, i1 false}
!982 = !{!"../kernel/rcu/rcutorture.c", i32 2195, i32 2}
!983 = !{ptr @rcu_torture_fwd_cb_hist._entry_ptr.316, !982, !"_entry_ptr", i1 false, i1 false}
!984 = !{ptr @rcu_fwd_emergency_stop, !985, !"rcu_fwd_emergency_stop", i1 false, i1 false}
!985 = !{!"../kernel/rcu/rcutorture.c", i32 2171, i32 13}
!986 = !{ptr @rcu_torture_fwd_prog._entry, !987, !"_entry", i1 false, i1 false}
!987 = !{!"../kernel/rcu/rcutorture.c", i32 2499, i32 2}
!988 = !{ptr @rcu_torture_fwd_prog._entry_ptr, !987, !"_entry_ptr", i1 false, i1 false}
!989 = !{ptr @.str.317, !987, !"<string literal>", i1 false, i1 false}
!990 = !{ptr @.str.319, !991, !"<string literal>", i1 false, i1 false}
!991 = !{!"../kernel/rcu/rcutorture.c", i32 2509, i32 5}
!992 = !{ptr @rcu_torture_fwd_prog._entry.318, !991, !"_entry", i1 false, i1 false}
!993 = !{ptr @rcu_torture_fwd_prog._entry_ptr.320, !991, !"_entry_ptr", i1 false, i1 false}
!994 = !{ptr @.str.322, !995, !"<string literal>", i1 false, i1 false}
!995 = !{!"../kernel/rcu/rcutorture.c", i32 2518, i32 3}
!996 = !{ptr @rcu_torture_fwd_prog._entry.321, !995, !"_entry", i1 false, i1 false}
!997 = !{ptr @rcu_torture_fwd_prog._entry_ptr.323, !995, !"_entry_ptr", i1 false, i1 false}
!998 = !{ptr @.str.325, !999, !"<string literal>", i1 false, i1 false}
!999 = !{!"../kernel/rcu/rcutorture.c", i32 2534, i32 3}
!1000 = !{ptr @rcu_torture_fwd_prog._entry.324, !999, !"_entry", i1 false, i1 false}
!1001 = !{ptr @rcu_torture_fwd_prog._entry_ptr.326, !999, !"_entry_ptr", i1 false, i1 false}
!1002 = !{ptr @rcu_fwd_seq, !1003, !"rcu_fwd_seq", i1 false, i1 false}
!1003 = !{!"../kernel/rcu/rcutorture.c", i32 2169, i32 22}
!1004 = !{ptr @rcu_fwd_max_cbs, !1005, !"rcu_fwd_max_cbs", i1 false, i1 false}
!1005 = !{!"../kernel/rcu/rcutorture.c", i32 2170, i32 22}
!1006 = distinct !{null, !1007, !"__already_done", i1 false, i1 false}
!1007 = !{!"../kernel/rcu/rcutorture.c", i32 2393, i32 8}
!1008 = !{ptr @.str.327, !1009, !"<string literal>", i1 false, i1 false}
!1009 = !{!"../kernel/rcu/rcutorture.c", i32 2423, i32 3}
!1010 = !{ptr @.str.328, !1009, !"<string literal>", i1 false, i1 false}
!1011 = !{ptr @rcu_torture_fwd_prog_cr._entry, !1009, !"_entry", i1 false, i1 false}
!1012 = !{ptr @rcu_torture_fwd_prog_cr._entry_ptr, !1009, !"_entry_ptr", i1 false, i1 false}
!1013 = !{ptr @rcu_torture_fwd_prog_nr.trs, !1014, !"trs", i1 false, i1 false}
!1014 = !{!"../kernel/rcu/rcutorture.c", i32 2282, i32 9}
!1015 = !{ptr @.str.329, !1016, !"<string literal>", i1 false, i1 false}
!1016 = !{!"../kernel/rcu/rcutorture.c", i32 2322, i32 3}
!1017 = !{ptr @.str.330, !1016, !"<string literal>", i1 false, i1 false}
!1018 = !{ptr @rcu_torture_fwd_prog_nr._entry, !1016, !"_entry", i1 false, i1 false}
!1019 = !{ptr @rcu_torture_fwd_prog_nr._entry_ptr, !1016, !"_entry_ptr", i1 false, i1 false}
!1020 = !{ptr @.str.331, !1021, !"<string literal>", i1 false, i1 false}
!1021 = !{!"../kernel/rcu/rcutorture.c", i32 2731, i32 3}
!1022 = !{ptr @.str.332, !1021, !"<string literal>", i1 false, i1 false}
!1023 = !{ptr @rcu_torture_barrier_init._entry, !1021, !"_entry", i1 false, i1 false}
!1024 = !{ptr @rcu_torture_barrier_init._entry_ptr, !1021, !"_entry_ptr", i1 false, i1 false}
!1025 = !{ptr @.str.334, !1026, !"<string literal>", i1 false, i1 false}
!1026 = !{!"../kernel/rcu/rcutorture.c", i32 2734, i32 3}
!1027 = !{ptr @rcu_torture_barrier_init._entry.333, !1026, !"_entry", i1 false, i1 false}
!1028 = !{ptr @rcu_torture_barrier_init._entry_ptr.335, !1026, !"_entry_ptr", i1 false, i1 false}
!1029 = !{ptr @rcu_torture_barrier_init.__key, !1030, !"__key", i1 false, i1 false}
!1030 = !{!"../kernel/rcu/rcutorture.c", i32 2749, i32 3}
!1031 = !{ptr @.str.336, !1030, !"<string literal>", i1 false, i1 false}
!1032 = !{ptr @.str.337, !1033, !"<string literal>", i1 false, i1 false}
!1033 = !{!"../kernel/rcu/rcutorture.c", i32 2750, i32 9}
!1034 = !{ptr @.str.338, !1033, !"<string literal>", i1 false, i1 false}
!1035 = !{ptr @.str.339, !1033, !"<string literal>", i1 false, i1 false}
!1036 = !{ptr @.str.340, !1037, !"<string literal>", i1 false, i1 false}
!1037 = !{!"../kernel/rcu/rcutorture.c", i32 2756, i32 9}
!1038 = !{ptr @.str.341, !1037, !"<string literal>", i1 false, i1 false}
!1039 = !{ptr @.str.342, !1037, !"<string literal>", i1 false, i1 false}
!1040 = !{ptr @barrier_cbs_count, !1041, !"barrier_cbs_count", i1 false, i1 false}
!1041 = !{!"../kernel/rcu/rcutorture.c", i32 281, i32 17}
!1042 = !{ptr @barrier_cbs_invoked, !1043, !"barrier_cbs_invoked", i1 false, i1 false}
!1043 = !{!"../kernel/rcu/rcutorture.c", i32 283, i32 17}
!1044 = !{ptr @barrier_cbs_tasks, !1045, !"barrier_cbs_tasks", i1 false, i1 false}
!1045 = !{!"../kernel/rcu/rcutorture.c", i32 150, i32 29}
!1046 = !{ptr @barrier_cbs_wq, !1047, !"barrier_cbs_wq", i1 false, i1 false}
!1047 = !{!"../kernel/rcu/rcutorture.c", i32 284, i32 27}
!1048 = !{ptr @rcu_torture_barrier_cbs._entry, !1049, !"_entry", i1 false, i1 false}
!1049 = !{!"../kernel/rcu/rcutorture.c", i32 2644, i32 2}
!1050 = !{ptr @rcu_torture_barrier_cbs._entry_ptr, !1049, !"_entry_ptr", i1 false, i1 false}
!1051 = !{ptr @.str.343, !1049, !"<string literal>", i1 false, i1 false}
!1052 = !{ptr @barrier_phase, !1053, !"barrier_phase", i1 false, i1 false}
!1053 = !{!"../kernel/rcu/rcutorture.c", i32 282, i32 13}
!1054 = !{ptr @.str.344, !1055, !"<string literal>", i1 false, i1 false}
!1055 = !{!"../kernel/rcu/rcutorture.c", i32 285, i32 8}
!1056 = !{ptr @barrier_wq, !1055, !"barrier_wq", i1 false, i1 false}
!1057 = !{ptr @rcu_torture_barrier._entry, !1058, !"_entry", i1 false, i1 false}
!1058 = !{!"../kernel/rcu/rcutorture.c", i32 2678, i32 2}
!1059 = !{ptr @rcu_torture_barrier._entry_ptr, !1058, !"_entry_ptr", i1 false, i1 false}
!1060 = !{ptr @.str.345, !1058, !"<string literal>", i1 false, i1 false}
!1061 = !{ptr @.str.347, !1062, !"<string literal>", i1 false, i1 false}
!1062 = !{!"../kernel/rcu/rcutorture.c", i32 2695, i32 4}
!1063 = !{ptr @rcu_torture_barrier._entry.346, !1062, !"_entry", i1 false, i1 false}
!1064 = !{ptr @rcu_torture_barrier._entry_ptr.348, !1062, !"_entry_ptr", i1 false, i1 false}
!1065 = !{ptr @.str.350, !1066, !"<string literal>", i1 false, i1 false}
!1066 = !{!"../kernel/rcu/rcutorture.c", i32 2711, i32 5}
!1067 = !{ptr @rcu_torture_barrier._entry.349, !1066, !"_entry", i1 false, i1 false}
!1068 = !{ptr @rcu_torture_barrier._entry_ptr.351, !1066, !"_entry_ptr", i1 false, i1 false}
!1069 = !{ptr @barrier_task, !1070, !"barrier_task", i1 false, i1 false}
!1070 = !{!"../kernel/rcu/rcutorture.c", i32 151, i32 28}
!1071 = !{ptr @rcu_torture_read_exit_init.__key, !1072, !"__key", i1 false, i1 false}
!1072 = !{!"../kernel/rcu/rcutorture.c", i32 2880, i32 2}
!1073 = !{ptr @.str.352, !1072, !"<string literal>", i1 false, i1 false}
!1074 = !{ptr @.str.353, !1075, !"<string literal>", i1 false, i1 false}
!1075 = !{!"../kernel/rcu/rcutorture.c", i32 2883, i32 9}
!1076 = !{ptr @.str.354, !1075, !"<string literal>", i1 false, i1 false}
!1077 = !{ptr @.str.355, !1075, !"<string literal>", i1 false, i1 false}
!1078 = !{ptr @read_exit_wq, !1079, !"read_exit_wq", i1 false, i1 false}
!1079 = !{!"../kernel/rcu/rcutorture.c", i32 2806, i32 26}
!1080 = !{ptr @read_exit_child_stop, !1081, !"read_exit_child_stop", i1 false, i1 false}
!1081 = !{!"../kernel/rcu/rcutorture.c", i32 2804, i32 13}
!1082 = !{ptr @read_exit_child_stopped, !1083, !"read_exit_child_stopped", i1 false, i1 false}
!1083 = !{!"../kernel/rcu/rcutorture.c", i32 2805, i32 13}
!1084 = !{ptr @rcu_torture_read_exit._entry, !1085, !"_entry", i1 false, i1 false}
!1085 = !{!"../kernel/rcu/rcutorture.c", i32 2832, i32 2}
!1086 = !{ptr @rcu_torture_read_exit._entry_ptr, !1085, !"_entry_ptr", i1 false, i1 false}
!1087 = !{ptr @.str.356, !1085, !"<string literal>", i1 false, i1 false}
!1088 = !{ptr @rcu_torture_read_exit._entry.357, !1089, !"_entry", i1 false, i1 false}
!1089 = !{!"../kernel/rcu/rcutorture.c", i32 2837, i32 4}
!1090 = !{ptr @rcu_torture_read_exit._entry_ptr.358, !1089, !"_entry_ptr", i1 false, i1 false}
!1091 = !{ptr @.str.359, !1089, !"<string literal>", i1 false, i1 false}
!1092 = !{ptr @rcu_torture_read_exit._entry.360, !1093, !"_entry", i1 false, i1 false}
!1093 = !{!"../kernel/rcu/rcutorture.c", i32 2845, i32 5}
!1094 = !{ptr @rcu_torture_read_exit._entry_ptr.361, !1093, !"_entry_ptr", i1 false, i1 false}
!1095 = !{ptr @.str.362, !1093, !"<string literal>", i1 false, i1 false}
!1096 = !{ptr @.str.363, !1097, !"<string literal>", i1 false, i1 false}
!1097 = !{!"../kernel/rcu/rcutorture.c", i32 2851, i32 9}
!1098 = !{ptr @.str.364, !1097, !"<string literal>", i1 false, i1 false}
!1099 = !{ptr @rcu_torture_read_exit._entry.365, !1100, !"_entry", i1 false, i1 false}
!1100 = !{!"../kernel/rcu/rcutorture.c", i32 2855, i32 4}
!1101 = !{ptr @rcu_torture_read_exit._entry_ptr.366, !1100, !"_entry_ptr", i1 false, i1 false}
!1102 = !{ptr @read_exit_task, !1103, !"read_exit_task", i1 false, i1 false}
!1103 = !{!"../kernel/rcu/rcutorture.c", i32 152, i32 28}
!1104 = !{ptr @.str.367, !1105, !"<string literal>", i1 false, i1 false}
!1105 = !{!"../kernel/rcu/rcutorture.c", i32 3044, i32 2}
!1106 = !{ptr @.str.368, !1105, !"<string literal>", i1 false, i1 false}
!1107 = !{ptr @rcu_test_debug_objects._entry, !1105, !"_entry", i1 false, i1 false}
!1108 = !{ptr @rcu_test_debug_objects._entry_ptr, !1105, !"_entry_ptr", i1 false, i1 false}
!1109 = !{ptr @.str.370, !1110, !"<string literal>", i1 false, i1 false}
!1110 = !{!"../kernel/rcu/rcutorture.c", i32 3063, i32 2}
!1111 = !{ptr @rcu_test_debug_objects._entry.369, !1110, !"_entry", i1 false, i1 false}
!1112 = !{ptr @rcu_test_debug_objects._entry_ptr.371, !1110, !"_entry_ptr", i1 false, i1 false}
!1113 = !{ptr @.str.372, !1114, !"<string literal>", i1 false, i1 false}
!1114 = !{!"../kernel/rcu/rcutorture.c", i32 3026, i32 2}
!1115 = !{ptr @.str.373, !1114, !"<string literal>", i1 false, i1 false}
!1116 = !{ptr @rcu_torture_err_cb._entry, !1114, !"_entry", i1 false, i1 false}
!1117 = !{ptr @rcu_torture_err_cb._entry_ptr, !1114, !"_entry_ptr", i1 false, i1 false}
!1118 = !{ptr @.str.374, !1119, !"<string literal>", i1 false, i1 false}
!1119 = !{!"../kernel/rcu/rcutorture.c", i32 2922, i32 2}
!1120 = !{ptr @.str.375, !1121, !"<string literal>", i1 false, i1 false}
!1121 = !{!"../kernel/rcu/rcutorture.c", i32 2923, i32 2}
!1122 = !{ptr @.str.376, !1123, !"<string literal>", i1 false, i1 false}
!1123 = !{!"../kernel/rcu/rcutorture.c", i32 2927, i32 4}
!1124 = !{ptr @.str.377, !1125, !"<string literal>", i1 false, i1 false}
!1125 = !{!"../kernel/rcu/rcutorture.c", i32 2934, i32 4}
!1126 = !{ptr @.str.378, !1127, !"<string literal>", i1 false, i1 false}
!1127 = !{!"../kernel/rcu/rcutorture.c", i32 2944, i32 4}
!1128 = !{ptr @.str.379, !1129, !"<string literal>", i1 false, i1 false}
!1129 = !{!"../kernel/rcu/rcutorture.c", i32 2952, i32 2}
!1130 = !{ptr @.str.380, !1129, !"<string literal>", i1 false, i1 false}
!1131 = !{ptr @rcu_torture_cleanup._entry, !1129, !"_entry", i1 false, i1 false}
!1132 = !{ptr @rcu_torture_cleanup._entry_ptr, !1129, !"_entry_ptr", i1 false, i1 false}
!1133 = !{ptr @.str.381, !1134, !"<string literal>", i1 false, i1 false}
!1134 = !{!"../kernel/rcu/rcutorture.c", i32 2955, i32 2}
!1135 = !{ptr @.str.382, !1136, !"<string literal>", i1 false, i1 false}
!1136 = !{!"../kernel/rcu/rcutorture.c", i32 2956, i32 2}
!1137 = !{ptr @.str.384, !1138, !"<string literal>", i1 false, i1 false}
!1138 = !{!"../kernel/rcu/rcutorture.c", i32 2974, i32 3}
!1139 = !{ptr @rcu_torture_cleanup._entry.383, !1138, !"_entry", i1 false, i1 false}
!1140 = !{ptr @rcu_torture_cleanup._entry_ptr.385, !1138, !"_entry_ptr", i1 false, i1 false}
!1141 = !{ptr @.str.387, !1142, !"<string literal>", i1 false, i1 false}
!1142 = !{!"../kernel/rcu/rcutorture.c", i32 2976, i32 4}
!1143 = !{ptr @rcu_torture_cleanup._entry.386, !1142, !"_entry", i1 false, i1 false}
!1144 = !{ptr @rcu_torture_cleanup._entry_ptr.388, !1142, !"_entry_ptr", i1 false, i1 false}
!1145 = !{ptr @.str.390, !1146, !"<string literal>", i1 false, i1 false}
!1146 = !{!"../kernel/rcu/rcutorture.c", i32 2979, i32 4}
!1147 = !{ptr @rcu_torture_cleanup._entry.389, !1146, !"_entry", i1 false, i1 false}
!1148 = !{ptr @rcu_torture_cleanup._entry_ptr.391, !1146, !"_entry_ptr", i1 false, i1 false}
!1149 = !{ptr @.str.393, !1150, !"<string literal>", i1 false, i1 false}
!1150 = !{!"../kernel/rcu/rcutorture.c", i32 2981, i32 5}
!1151 = !{ptr @rcu_torture_cleanup._entry.392, !1150, !"_entry", i1 false, i1 false}
!1152 = !{ptr @rcu_torture_cleanup._entry_ptr.394, !1150, !"_entry_ptr", i1 false, i1 false}
!1153 = !{ptr @.str.395, !1150, !"<string literal>", i1 false, i1 false}
!1154 = !{ptr @.str.396, !1150, !"<string literal>", i1 false, i1 false}
!1155 = !{ptr @.str.398, !1156, !"<string literal>", i1 false, i1 false}
!1156 = !{!"../kernel/rcu/rcutorture.c", i32 2986, i32 5}
!1157 = !{ptr @rcu_torture_cleanup._entry.397, !1156, !"_entry", i1 false, i1 false}
!1158 = !{ptr @rcu_torture_cleanup._entry_ptr.399, !1156, !"_entry_ptr", i1 false, i1 false}
!1159 = !{ptr @.str.401, !1160, !"<string literal>", i1 false, i1 false}
!1160 = !{!"../kernel/rcu/rcutorture.c", i32 2991, i32 5}
!1161 = !{ptr @rcu_torture_cleanup._entry.400, !1160, !"_entry", i1 false, i1 false}
!1162 = !{ptr @rcu_torture_cleanup._entry_ptr.402, !1160, !"_entry_ptr", i1 false, i1 false}
!1163 = !{ptr @.str.404, !1164, !"<string literal>", i1 false, i1 false}
!1164 = !{!"../kernel/rcu/rcutorture.c", i32 2995, i32 4}
!1165 = !{ptr @rcu_torture_cleanup._entry.403, !1164, !"_entry", i1 false, i1 false}
!1166 = !{ptr @rcu_torture_cleanup._entry_ptr.405, !1164, !"_entry_ptr", i1 false, i1 false}
!1167 = !{ptr @.str.406, !1164, !"<string literal>", i1 false, i1 false}
!1168 = !{ptr @.str.407, !1169, !"<string literal>", i1 false, i1 false}
!1169 = !{!"../kernel/rcu/rcutorture.c", i32 3001, i32 43}
!1170 = !{ptr @.str.408, !1171, !"<string literal>", i1 false, i1 false}
!1171 = !{!"../kernel/rcu/rcutorture.c", i32 3004, i32 13}
!1172 = !{ptr @.str.409, !1173, !"<string literal>", i1 false, i1 false}
!1173 = !{!"../kernel/rcu/rcutorture.c", i32 3006, i32 43}
!1174 = !{ptr @.str.410, !1175, !"<string literal>", i1 false, i1 false}
!1175 = !{!"../kernel/rcu/rcutorture.c", i32 2894, i32 2}
!1176 = !{ptr @.str.411, !1177, !"<string literal>", i1 false, i1 false}
!1177 = !{!"../kernel/rcu/rcutorture.c", i32 2764, i32 2}
!1178 = !{ptr @.str.412, !1179, !"<string literal>", i1 false, i1 false}
!1179 = !{!"../kernel/rcu/rcutorture.c", i32 2767, i32 4}
!1180 = !{ptr @.str.413, !1181, !"<string literal>", i1 false, i1 false}
!1181 = !{!"../kernel/rcu/rcutorture.c", i32 2610, i32 3}
!1182 = !{ptr @rcu_torture_mem_dump_obj.z, !1183, !"z", i1 false, i1 false}
!1183 = !{!"../kernel/rcu/rcutorture.c", i32 1942, i32 13}
!1184 = !{ptr @.str.414, !1185, !"<string literal>", i1 false, i1 false}
!1185 = !{!"../kernel/rcu/rcutorture.c", i32 1944, i32 26}
!1186 = !{ptr @.str.415, !1187, !"<string literal>", i1 false, i1 false}
!1187 = !{!"../kernel/rcu/rcutorture.c", i32 1946, i32 2}
!1188 = !{ptr @.str.416, !1187, !"<string literal>", i1 false, i1 false}
!1189 = !{ptr @rcu_torture_mem_dump_obj._entry, !1187, !"_entry", i1 false, i1 false}
!1190 = !{ptr @rcu_torture_mem_dump_obj._entry_ptr, !1187, !"_entry_ptr", i1 false, i1 false}
!1191 = !{ptr @.str.418, !1192, !"<string literal>", i1 false, i1 false}
!1192 = !{!"../kernel/rcu/rcutorture.c", i32 1947, i32 2}
!1193 = !{ptr @rcu_torture_mem_dump_obj._entry.417, !1192, !"_entry", i1 false, i1 false}
!1194 = !{ptr @rcu_torture_mem_dump_obj._entry_ptr.419, !1192, !"_entry_ptr", i1 false, i1 false}
!1195 = !{ptr @.str.421, !1196, !"<string literal>", i1 false, i1 false}
!1196 = !{!"../kernel/rcu/rcutorture.c", i32 1949, i32 2}
!1197 = !{ptr @rcu_torture_mem_dump_obj._entry.420, !1196, !"_entry", i1 false, i1 false}
!1198 = !{ptr @rcu_torture_mem_dump_obj._entry_ptr.422, !1196, !"_entry_ptr", i1 false, i1 false}
!1199 = !{ptr @.str.424, !1200, !"<string literal>", i1 false, i1 false}
!1200 = !{!"../kernel/rcu/rcutorture.c", i32 1951, i32 2}
!1201 = !{ptr @rcu_torture_mem_dump_obj._entry.423, !1200, !"_entry", i1 false, i1 false}
!1202 = !{ptr @rcu_torture_mem_dump_obj._entry_ptr.425, !1200, !"_entry_ptr", i1 false, i1 false}
!1203 = !{ptr @rcu_torture_mem_dump_obj._entry.426, !1204, !"_entry", i1 false, i1 false}
!1204 = !{!"../kernel/rcu/rcutorture.c", i32 1953, i32 2}
!1205 = !{ptr @rcu_torture_mem_dump_obj._entry_ptr.427, !1204, !"_entry_ptr", i1 false, i1 false}
!1206 = !{ptr @rcu_torture_mem_dump_obj._entry.428, !1207, !"_entry", i1 false, i1 false}
!1207 = !{!"../kernel/rcu/rcutorture.c", i32 1955, i32 2}
!1208 = !{ptr @rcu_torture_mem_dump_obj._entry_ptr.429, !1207, !"_entry_ptr", i1 false, i1 false}
!1209 = !{ptr @rcu_torture_mem_dump_obj._entry.430, !1210, !"_entry", i1 false, i1 false}
!1210 = !{!"../kernel/rcu/rcutorture.c", i32 1957, i32 2}
!1211 = !{ptr @rcu_torture_mem_dump_obj._entry_ptr.431, !1210, !"_entry_ptr", i1 false, i1 false}
!1212 = !{ptr @.str.433, !1213, !"<string literal>", i1 false, i1 false}
!1213 = !{!"../kernel/rcu/rcutorture.c", i32 1962, i32 2}
!1214 = !{ptr @rcu_torture_mem_dump_obj._entry.432, !1213, !"_entry", i1 false, i1 false}
!1215 = !{ptr @rcu_torture_mem_dump_obj._entry_ptr.434, !1213, !"_entry_ptr", i1 false, i1 false}
!1216 = !{ptr @.str.436, !1217, !"<string literal>", i1 false, i1 false}
!1217 = !{!"../kernel/rcu/rcutorture.c", i32 1963, i32 2}
!1218 = !{ptr @rcu_torture_mem_dump_obj._entry.435, !1217, !"_entry", i1 false, i1 false}
!1219 = !{ptr @rcu_torture_mem_dump_obj._entry_ptr.437, !1217, !"_entry_ptr", i1 false, i1 false}
!1220 = !{ptr @rcu_torture_mem_dump_obj._entry.438, !1221, !"_entry", i1 false, i1 false}
!1221 = !{!"../kernel/rcu/rcutorture.c", i32 1965, i32 2}
!1222 = !{ptr @rcu_torture_mem_dump_obj._entry_ptr.439, !1221, !"_entry_ptr", i1 false, i1 false}
!1223 = !{ptr @.str.441, !1224, !"<string literal>", i1 false, i1 false}
!1224 = !{!"../kernel/rcu/rcutorture.c", i32 1969, i32 2}
!1225 = !{ptr @rcu_torture_mem_dump_obj._entry.440, !1224, !"_entry", i1 false, i1 false}
!1226 = !{ptr @rcu_torture_mem_dump_obj._entry_ptr.442, !1224, !"_entry_ptr", i1 false, i1 false}
!1227 = !{ptr @.str.444, !1228, !"<string literal>", i1 false, i1 false}
!1228 = !{!"../kernel/rcu/rcutorture.c", i32 1970, i32 2}
!1229 = !{ptr @rcu_torture_mem_dump_obj._entry.443, !1228, !"_entry", i1 false, i1 false}
!1230 = !{ptr @rcu_torture_mem_dump_obj._entry_ptr.445, !1228, !"_entry_ptr", i1 false, i1 false}
!1231 = !{ptr @rcu_torture_mem_dump_obj._entry.446, !1232, !"_entry", i1 false, i1 false}
!1232 = !{!"../kernel/rcu/rcutorture.c", i32 1972, i32 2}
!1233 = !{ptr @rcu_torture_mem_dump_obj._entry_ptr.447, !1232, !"_entry_ptr", i1 false, i1 false}
!1234 = !{!"sp"}
!1235 = !{i32 1, !"wchar_size", i32 2}
!1236 = !{i32 1, !"min_enum_size", i32 4}
!1237 = !{i32 8, !"branch-target-enforcement", i32 0}
!1238 = !{i32 8, !"sign-return-address", i32 0}
!1239 = !{i32 8, !"sign-return-address-all", i32 0}
!1240 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!1241 = !{i32 7, !"uwtable", i32 1}
!1242 = !{i32 7, !"frame-pointer", i32 2}
!1243 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!1244 = !{i8 0, i8 2}
!1245 = !{!"branch_weights", i32 2000, i32 1}
!1246 = !{!"branch_weights", i32 1, i32 2000}
!1247 = !{!"auto-init"}
!1248 = !{i64 2155704762}
!1249 = !{i64 2155713401}
!1250 = !{i64 2155720968}
!1251 = !{i64 2148310737, i64 2148310763, i64 2148310792, i64 2148310826, i64 2148310857, i64 2148310880}
!1252 = !{i64 2155218717}
!1253 = !{i64 2155221464}
!1254 = !{i64 2148570577}
!1255 = !{i64 817505, i64 817522, i64 817546, i64 817572, i64 817590}
!1256 = !{i64 2148570947}
!1257 = !{i64 2155358280}
!1258 = !{i64 2155738723}
!1259 = !{i64 2149457206}
!1260 = !{i64 705950}
!1261 = !{i64 703653}
!1262 = !{i64 703463}
!1263 = !{i64 2149457472}
!1264 = !{i64 2155739171}
!1265 = !{i64 1215727, i64 1215754, i64 1215776, i64 1215804}
!1266 = !{i64 1216135, i64 1216162, i64 1216195, i64 1216216, i64 1216243, i64 1216269}
!1267 = !{i64 2155141816}
!1268 = !{i64 2155167669}
!1269 = !{i64 2155167766}
!1270 = !{i64 2154362275}
!1271 = !{i64 2154366982}
!1272 = !{i64 2154370344}
!1273 = !{i64 2155256779}
!1274 = !{i64 2155266112}
!1275 = !{i64 820229, i64 820250, i64 820273, i64 820292, i64 820311}
!1276 = !{i64 2155281990}
!1277 = !{i64 2155288455}
!1278 = !{i64 2155293168}
!1279 = !{i32 0, i32 33}
!1280 = !{i64 2155320210}
!1281 = !{i64 2155335890}
!1282 = !{i64 2155345509}
!1283 = !{i64 2155345852}
!1284 = !{i64 2155298125}
!1285 = !{i64 2149465038}
!1286 = !{i64 2155298379}
!1287 = !{i64 2149466433}
!1288 = !{i64 2155168330}
!1289 = !{i64 2155172415}
!1290 = !{i64 2155172817}
!1291 = !{i64 2155177183}
!1292 = !{i64 2155177526}
!1293 = !{i64 2155495507}
!1294 = !{i64 2155497441}
!1295 = !{i64 2148486400}
!1296 = !{i64 2148486770}
!1297 = !{!"branch_weights", i32 1, i32 4001}
!1298 = !{i64 2155597951}
!1299 = !{i64 2155602918}
!1300 = !{i64 2155648906}
!1301 = !{i64 2155656215}
!1302 = !{i64 2148399189}
!1303 = !{i64 2148313922, i64 2148313954, i64 2148313983, i64 2148314017, i64 2148314048, i64 2148314071}
!1304 = !{i64 2148399418}
!1305 = !{i64 2155660638}
!1306 = !{i64 2155667489}
!1307 = !{i64 2155699199}
!1308 = !{i64 2155701795}
