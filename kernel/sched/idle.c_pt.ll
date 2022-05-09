; ModuleID = '/llk/IR_all_yes/kernel/sched/idle.c_pt.bc'
source_filename = "../kernel/sched/idle.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+play_idle_precise\22, \22a\22\09"
module asm "\09.weak\09__crc_play_idle_precise\09\09\09\09"
module asm "\09.long\09__crc_play_idle_precise\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_play_idle_precise:\09\09\09\09\09"
module asm "\09.asciz \09\22play_idle_precise\22\09\09\09\09\09"
module asm "__kstrtabns_play_idle_precise:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, [8 x i8], %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [24 x i8], [2 x %struct.uclamp_rq], i32, [76 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, %struct.list_head, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [88 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i64, i64, i64, i32, i32, %struct.__call_single_data, %struct.hrtimer, i64, %struct.sched_info, i64, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.cpu_stop_work, ptr, ptr, i32, i32, %struct.rb_root, i32, i32, i32, i32, i32, i32, i64, [80 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uclamp_rq = type { i32, [5 x %struct.uclamp_bucket] }
%struct.uclamp_bucket = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i32, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg, i64, [120 x i8], %struct.anon.21, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.list_head, ptr, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list_head, [24 x i8] }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon.21 = type { %struct.raw_spinlock, i32, i32, i32, i32, [68 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.22, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock, i32, ptr, ptr }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.22 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.23, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.23 = type { i64, i64 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sched_class = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.106 }
%union.anon.106 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.static_key_false = type { %struct.static_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.idle_timer = type { %struct.hrtimer, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.111, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.111 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head, %struct.cpumask, ptr }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@cpu_idle_force_poll = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@cpu_idle_poll_ctrl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/sched/idle.c\00", [44 x i8] zeroinitializer }, align 32
@__setup_str_cpu_idle_poll_setup = internal constant [6 x i8] c"nohlt\00", section ".init.rodata", align 1
@__setup_cpu_idle_poll_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_cpu_idle_poll_setup, ptr @cpu_idle_poll_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_cpu_idle_nopoll_setup = internal constant [4 x i8] c"hlt\00", section ".init.rodata", align 1
@__setup_cpu_idle_nopoll_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_cpu_idle_nopoll_setup, ptr @cpu_idle_nopoll_setup, i32 0 }, section ".init.setup", align 4
@__cpuidle_text_start = external dso_local global [0 x i8], align 1
@__cpuidle_text_end = external dso_local global [0 x i8], align 1
@play_idle_precise.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@play_idle_precise.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@play_idle_precise.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@play_idle_precise.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@play_idle_precise.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@play_idle_precise.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@play_idle_precise.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@.str.6 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Illegal context switch in RCU-bh read-side critical section\00", [36 x i8] zeroinitializer }, align 32
@play_idle_precise.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_sched_lock_map = external dso_local global %struct.lockdep_map, align 4
@.str.8 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Illegal context switch in RCU-sched read-side critical section\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_play_idle_precise = external dso_local constant [0 x i8], align 1
@__kstrtabns_play_idle_precise = external dso_local constant [0 x i8], align 1
@__ksymtab_play_idle_precise = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @play_idle_precise to i32), ptr @__kstrtab_play_idle_precise, ptr @__kstrtabns_play_idle_precise }, section "___ksymtab_gpl+play_idle_precise", align 4
@idle_sched_class = dso_local local_unnamed_addr constant %struct.sched_class { i32 0, ptr null, ptr @dequeue_task_idle, ptr null, ptr null, ptr @check_preempt_curr_idle, ptr @pick_next_task_idle, ptr @put_prev_task_idle, ptr @set_next_task_idle, ptr @balance_idle, ptr @select_task_rq_idle, ptr @pick_task_idle, ptr null, ptr null, ptr @set_cpus_allowed_common, ptr null, ptr null, ptr null, ptr @task_tick_idle, ptr null, ptr null, ptr null, ptr @switched_to_idle, ptr @prio_changed_idle, ptr null, ptr @update_curr_idle, ptr null }, section "__idle_sched_class", align 4
@__tracepoint_cpu_idle = external dso_local global %struct.tracepoint, align 4
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/power.h\00", [35 x i8] zeroinitializer }, align 32
@trace_cpu_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_preempt_sleep_check.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Illegal context switch in RCU read-side critical section\00", [39 x i8] zeroinitializer }, align 32
@cpuidle_idle_call.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpuidle_devices = external dso_local global ptr, section ".data..percpu", align 4
@s2idle_state = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@sched_schedstats = external dso_local global %struct.static_key_false, align 4
@sched_smt_present = external dso_local global %struct.static_key_false, align 4
@dequeue_task_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013bad: scheduling from the idle thread!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dequeue_task_idle\00", [46 x i8] zeroinitializer }, align 32
@dequeue_task_idle._entry_ptr = internal global ptr @dequeue_task_idle._entry, section ".printk_index", align 4
@balance_idle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 33, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 376, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [32 x i8] c"../include/trace/events/power.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 36, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 108, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 328, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [23 x i8] c"../kernel/sched/idle.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 467, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_play_idle_precise, ptr @__setup_cpu_idle_nopoll_setup, ptr @__setup_cpu_idle_poll_setup, ptr @dequeue_task_idle._entry, ptr @dequeue_task_idle._entry_ptr, ptr @.str, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_task_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sched_idle_set_state(ptr noundef %idle_state) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %add to ptr
  %idle_state1.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 75
  %7 = ptrtoint ptr %idle_state1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %idle_state, ptr %idle_state1.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpu_idle_poll_ctrl(i1 noundef zeroext %enable) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cpu_idle_force_poll, align 4
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %inc = add i32 %0, 1
  store i32 %inc, ptr @cpu_idle_force_poll, align 4
  br label %if.end38

if.else:                                          ; preds = %entry
  %dec = add i32 %0, -1
  store i32 %dec, ptr @cpu_idle_force_poll, align 4
  %cmp = icmp slt i32 %dec, 0
  br i1 %cmp, label %land.rhs, label %if.end38

land.rhs:                                         ; preds = %if.else
  %.b41 = load i1, ptr @cpu_idle_poll_ctrl.__already_done, align 1
  br i1 %.b41, label %if.end38, label %if.then9, !prof !65

if.then9:                                         ; preds = %land.rhs
  store i1 true, ptr @cpu_idle_poll_ctrl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 33, i32 noundef 9, ptr noundef null) #13
  br label %if.end38

if.end38:                                         ; preds = %if.then9, %land.rhs, %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cpu_idle_poll_setup(ptr nocapture noundef readnone %__unused) #4 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 1, ptr @cpu_idle_force_poll, align 4
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cpu_idle_nopoll_setup(ptr nocapture noundef readnone %__unused) #4 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @cpu_idle_force_poll, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_cpu_idle_prepare() local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_cpu_idle_enter() local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_cpu_idle_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_cpu_idle_dead() local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_cpu_idle() local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 1, ptr @cpu_idle_force_poll, align 4
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @default_idle_call() #2 section ".cpuidle.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 16384
  %4 = and i32 %3, 2
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  tail call void @trace_hardirqs_on() #13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !66
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  tail call fastcc void @trace_cpu_idle(i32 noundef 1, i32 noundef %8)
  tail call void @stop_critical_timings() #13
  tail call void @trace_hardirqs_on_prepare() #13
  br label %__here

__here:                                           ; preds = %if.else
  tail call void @lockdep_hardirqs_on_prepare(i32 noundef ptrtoint (ptr blockaddress(@default_idle_call, %__here) to i32)) #13
  tail call void @rcu_idle_enter() #13
  br label %__here2

__here2:                                          ; preds = %__here
  tail call void @lockdep_hardirqs_on(i32 noundef ptrtoint (ptr blockaddress(@default_idle_call, %__here2) to i32)) #13
  tail call void @arch_cpu_idle()
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #13, !srcloc !67
  br label %__here4

__here4:                                          ; preds = %__here2
  tail call void @lockdep_hardirqs_off(i32 noundef ptrtoint (ptr blockaddress(@default_idle_call, %__here4) to i32)) #13
  tail call void @rcu_idle_exit() #13
  br label %__here6

__here6:                                          ; preds = %__here4
  tail call void @lockdep_hardirqs_on(i32 noundef ptrtoint (ptr blockaddress(@default_idle_call, %__here6) to i32)) #13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !66
  tail call void @start_critical_timings() #13
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  tail call fastcc void @trace_cpu_idle(i32 noundef -1, i32 noundef %10)
  br label %if.end

if.end:                                           ; preds = %__here6, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cpu_idle(i32 noundef %state, i32 noundef %cpu_id) unnamed_addr #5 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpu_idle, i32 0, i32 1), ptr blockaddress(@trace_cpu_idle, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !68

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %cpu_online.exit, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpu_online.exit, label %if.then.i.i.i.i, !prof !65

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %do.body
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end69, label %cleanup.thread

cleanup.thread:                                   ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !69
  %call42 = tail call i32 @__traceiter_cpu_idle(ptr noundef null, i32 noundef %state, i32 noundef %cpu_id) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !70
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %cpu_online.exit85, label %land.rhs.i.i.i.i79

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %cpu_online.exit85, label %if.then.i.i.i.i80, !prof !65

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79, %if.end48
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %if.end69, label %if.then52

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpu_idle, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpu_idle, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cpu_idle.__warned, align 1
  br i1 %.b72, label %do.end67, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  store i1 true, ptr @trace_cpu_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 41, ptr noundef nonnull @.str.10) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62, %land.lhs.true, %if.then52
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !72
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85, %cpu_online.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_critical_timings() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on_prepare() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_hardirqs_on_prepare(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_idle_enter() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_hardirqs_on(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_hardirqs_off(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_idle_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @start_critical_timings() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cpu_in_idle(i32 noundef %pc) local_unnamed_addr #6 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp uge i32 %pc, ptrtoint (ptr @__cpuidle_text_start to i32)
  %cmp1 = icmp ult i32 %pc, ptrtoint (ptr @__cpuidle_text_end to i32)
  %spec.select = and i1 %cmp.not, %cmp1
  ret i1 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @play_idle_precise(i64 noundef %duration_ns, i64 noundef %latency_ns) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %it = alloca %struct.idle_timer, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %it) #13
  %0 = call ptr @memset(ptr %it, i32 255, i32 56)
  %1 = tail call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %policy = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 31
  %5 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %policy, align 4
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end27, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b406 = load i1, ptr @play_idle_precise.__already_done, align 1
  br i1 %.b406, label %if.end27, label %if.then, !prof !65

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @play_idle_precise.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 369, i32 noundef 9, ptr noundef null) #13
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs, %entry
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 32
  %9 = ptrtoint ptr %nr_cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_cpus_allowed, align 8
  %cmp38.not = icmp eq i32 %10, 1
  br i1 %cmp38.not, label %if.end83, label %land.rhs45

land.rhs45:                                       ; preds = %if.end27
  %.b392405 = load i1, ptr @play_idle_precise.__already_done.1, align 1
  br i1 %.b392405, label %if.end83, label %if.then56, !prof !65

if.then56:                                        ; preds = %land.rhs45
  store i1 true, ptr @play_idle_precise.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 370, i32 noundef 9, ptr noundef null) #13
  br label %if.end83

if.end83:                                         ; preds = %if.then56, %land.rhs45, %if.end27
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 2097152
  %tobool94.not = icmp eq i32 %and, 0
  br i1 %tobool94.not, label %land.rhs103, label %if.end141

land.rhs103:                                      ; preds = %if.end83
  %.b393404 = load i1, ptr @play_idle_precise.__already_done.2, align 1
  br i1 %.b393404, label %if.end141, label %if.then114, !prof !65

if.then114:                                       ; preds = %land.rhs103
  store i1 true, ptr @play_idle_precise.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 371, i32 noundef 9, ptr noundef null) #13
  br label %if.end141

if.end141:                                        ; preds = %if.then114, %land.rhs103, %if.end83
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %flags152 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %flags152 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags152, align 4
  %and153 = and i32 %18, 67108864
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %land.rhs163, label %if.end201

land.rhs163:                                      ; preds = %if.end141
  %.b394403 = load i1, ptr @play_idle_precise.__already_done.3, align 1
  br i1 %.b394403, label %if.end201, label %if.then174, !prof !65

if.then174:                                       ; preds = %land.rhs163
  store i1 true, ptr @play_idle_precise.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 372, i32 noundef 9, ptr noundef null) #13
  br label %if.end201

if.end201:                                        ; preds = %if.then174, %land.rhs163, %if.end141
  %tobool210.not = icmp eq i64 %duration_ns, 0
  br i1 %tobool210.not, label %land.rhs219, label %if.end257

land.rhs219:                                      ; preds = %if.end201
  %.b395402 = load i1, ptr @play_idle_precise.__already_done.4, align 1
  br i1 %.b395402, label %if.end257, label %if.then230, !prof !65

if.then230:                                       ; preds = %land.rhs219
  store i1 true, ptr @play_idle_precise.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 373, i32 noundef 9, ptr noundef null) #13
  br label %if.end257

if.end257:                                        ; preds = %if.then230, %land.rhs219, %if.end201
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 53
  %21 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mm, align 8
  %tobool268.not = icmp eq ptr %22, null
  br i1 %tobool268.not, label %if.end313, label %land.rhs275

land.rhs275:                                      ; preds = %if.end257
  %.b396401 = load i1, ptr @play_idle_precise.__already_done.5, align 1
  br i1 %.b396401, label %if.end313, label %if.then286, !prof !65

if.then286:                                       ; preds = %land.rhs275
  store i1 true, ptr @play_idle_precise.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 374, i32 noundef 9, ptr noundef null) #13
  br label %if.end313

if.end313:                                        ; preds = %if.then286, %land.rhs275, %if.end257
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_lock_map, i32 noundef -1) #13
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %rcu_preempt_sleep_check.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end313
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %rcu_preempt_sleep_check.exit, label %land.lhs.true3.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b5.i = load i1, ptr @rcu_preempt_sleep_check.__warned, align 1
  br i1 %.b5.i, label %rcu_preempt_sleep_check.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  store i1 true, ptr @rcu_preempt_sleep_check.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 329, ptr noundef nonnull @.str.13) #13
  br label %rcu_preempt_sleep_check.exit

rcu_preempt_sleep_check.exit:                     ; preds = %if.then.i, %land.lhs.true3.i, %land.lhs.true.i, %if.end313
  %call.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef -1) #13
  %tobool324.not = icmp eq i32 %call.i, 0
  br i1 %tobool324.not, label %do.body333, label %land.lhs.true

land.lhs.true:                                    ; preds = %rcu_preempt_sleep_check.exit
  %call325 = tail call i32 @debug_lockdep_rcu_enabled() #13
  %tobool326.not = icmp eq i32 %call325, 0
  br i1 %tobool326.not, label %do.body333, label %land.lhs.true327

land.lhs.true327:                                 ; preds = %land.lhs.true
  %.b397400 = load i1, ptr @play_idle_precise.__warned, align 1
  br i1 %.b397400, label %do.body333, label %if.then329

if.then329:                                       ; preds = %land.lhs.true327
  store i1 true, ptr @play_idle_precise.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 376, ptr noundef nonnull @.str.6) #13
  br label %do.body333

do.body333:                                       ; preds = %if.then329, %land.lhs.true327, %land.lhs.true, %rcu_preempt_sleep_check.exit
  %call.i409 = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_sched_lock_map, i32 noundef -1) #13
  %tobool335.not = icmp eq i32 %call.i409, 0
  br i1 %tobool335.not, label %do.body347, label %land.lhs.true336

land.lhs.true336:                                 ; preds = %do.body333
  %call337 = tail call i32 @debug_lockdep_rcu_enabled() #13
  %tobool338.not = icmp eq i32 %call337, 0
  br i1 %tobool338.not, label %do.body347, label %land.lhs.true339

land.lhs.true339:                                 ; preds = %land.lhs.true336
  %.b398399 = load i1, ptr @play_idle_precise.__warned.7, align 1
  br i1 %.b398399, label %do.body347, label %if.then341

if.then341:                                       ; preds = %land.lhs.true339
  store i1 true, ptr @play_idle_precise.__warned.7, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 376, ptr noundef nonnull @.str.8) #13
  br label %do.body347

do.body347:                                       ; preds = %if.then341, %land.lhs.true339, %land.lhs.true336, %do.body333
  %23 = tail call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %26, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !73
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %flags352 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %flags352 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags352, align 4
  %or = or i32 %30, 2
  store i32 %or, ptr %flags352, align 4
  tail call void @cpuidle_use_deepest_state(i64 noundef %latency_ns) #13
  %done = getelementptr inbounds %struct.idle_timer, ptr %it, i32 0, i32 1
  %31 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %done, align 8
  call void @hrtimer_init_on_stack(ptr noundef nonnull %it, i32 noundef 1, i32 noundef 9) #13
  %function = getelementptr inbounds %struct.hrtimer, ptr %it, i32 0, i32 2
  %32 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @idle_inject_timer_fn, ptr %function, align 8
  call void @hrtimer_start_range_ns(ptr noundef nonnull %it, i64 noundef %duration_ns, i64 noundef 0, i32 noundef 11) #13
  %33 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %done, align 8
  %tobool361.not410 = icmp eq i32 %34, 0
  br i1 %tobool361.not410, label %while.body, label %while.end

while.body:                                       ; preds = %while.body, %do.body347
  call fastcc void @do_idle()
  %35 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %done, align 8
  %tobool361.not = icmp eq i32 %36, 0
  br i1 %tobool361.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %do.body347
  call void @cpuidle_use_deepest_state(i64 noundef 0) #13
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %flags366 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %flags366 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags366, align 4
  %and367 = and i32 %40, -3
  store i32 %and367, ptr %flags366, align 4
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %2, align 16384
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !74
  %43 = call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i.i.i407 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i407 to ptr
  %preempt_count.i.i408 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i408 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i408, align 4
  %sub.i = add i32 %46, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i408, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %it) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_use_deepest_state(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init_on_stack(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idle_inject_timer_fn(ptr noundef %timer) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %done = getelementptr inbounds %struct.idle_timer, ptr %timer, i32 0, i32 1
  %0 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %done, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %6) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_idle() unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %stop_tick.i = alloca i8, align 1
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  tail call void @nohz_run_idle_balance(i32 noundef %3) #13
  tail call void @tick_nohz_idle_enter() #13
  %4 = call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i.i44 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i44 to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 16384
  %8 = and i32 %7, 2
  %tobool.i.not45 = icmp eq i32 %8, 0
  br i1 %tobool.i.not45, label %while.body.lr.ph, label %do.body18

while.body.lr.ph:                                 ; preds = %entry
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %and.i.i.i = and i32 %3, 31
  %9 = shl nuw i32 1, %and.i.i.i
  br label %while.body

while.body:                                       ; preds = %if.end17, %while.body.lr.ph
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !75
  %10 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !76
  %and.i.i40 = and i32 %10, 128
  %tobool.not = icmp eq i32 %and.i.i40, 0
  call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #13, !srcloc !67
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @trace_hardirqs_off() #13
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %11, %3
  br i1 %cmp.not.i.i.i.i, label %cpu_online.exit, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpu_online.exit, label %if.then.i.i.i.i, !prof !65

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %if.end
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %14 = and i32 %13, %9
  %tobool.i41.not = icmp eq i32 %14, 0
  br i1 %tobool.i41.not, label %if.then10, label %if.end11, !prof !77

if.then10:                                        ; preds = %cpu_online.exit
  call void @tick_nohz_idle_stop_tick() #13
  call void @cpuhp_report_idle_dead() #13
  call void @arch_cpu_idle_dead()
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %cpu_online.exit
  call void @arch_cpu_idle_enter()
  call void @rcu_nocb_flush_deferred_wakeup() #13
  %15 = load i32, ptr @cpu_idle_force_poll, align 4
  %tobool12.not = icmp eq i32 %15, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.then15

lor.lhs.false:                                    ; preds = %if.end11
  %call13 = call i32 @tick_check_broadcast_expired() #13
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %lor.lhs.false, %if.end11
  call void @tick_nohz_idle_restart_tick() #13
  call fastcc void @cpu_idle_poll()
  br label %if.end17

if.else:                                          ; preds = %lor.lhs.false
  %16 = call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i.i115.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i115.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %21, ptrtoint (ptr @cpuidle_devices to i32)
  %22 = inttoptr i32 %add.i.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call1.i = call ptr @cpuidle_get_cpu_driver(ptr noundef %24) #13
  %25 = call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i.i.i42 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i42 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 16384
  %29 = and i32 %28, 2
  %tobool.i.not.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %do.body.i

do.body.i:                                        ; preds = %if.else
  call void @trace_hardirqs_on() #13
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !66
  br label %if.end17

if.end.i:                                         ; preds = %if.else
  %call3.i = call zeroext i1 @cpuidle_not_available(ptr noundef %call1.i, ptr noundef %24) #13
  br i1 %call3.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @tick_nohz_idle_stop_tick() #13
  call void @default_idle_call() #13
  br label %exit_idle.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @s2idle_state to i32))
  %30 = load i32, ptr @s2idle_state, align 4
  %cmp.i.i = icmp eq i32 %30, 1
  br i1 %cmp.i.i, label %if.then9.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end5.i
  %forced_idle_latency_limit_ns.i = getelementptr inbounds %struct.cpuidle_device, ptr %24, i32 0, i32 6
  %31 = ptrtoint ptr %forced_idle_latency_limit_ns.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %forced_idle_latency_limit_ns.i, align 8
  %tobool.not.i = icmp eq i64 %32, 0
  br i1 %tobool.not.i, label %if.else17.i, label %if.end14.i

if.then9.i:                                       ; preds = %if.end5.i
  %33 = call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 16384
  %37 = and i32 %36, 2
  %tobool.i.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool.i.not.i.i, label %call_cpuidle_s2idle.exit.i, label %if.end14.i

call_cpuidle_s2idle.exit.i:                       ; preds = %if.then9.i
  %call1.i.i = call i32 @cpuidle_enter_s2idle(ptr noundef %call1.i, ptr noundef %24) #13
  %cmp.i = icmp sgt i32 %call1.i.i, 0
  br i1 %cmp.i, label %exit_idle.i, label %if.end14.i

if.end14.i:                                       ; preds = %call_cpuidle_s2idle.exit.i, %if.then9.i, %lor.lhs.false.i
  %max_latency_ns.0.i = phi i64 [ -1, %call_cpuidle_s2idle.exit.i ], [ -1, %if.then9.i ], [ %32, %lor.lhs.false.i ]
  call void @tick_nohz_idle_stop_tick() #13
  %call15.i = call i32 @cpuidle_find_deepest_state(ptr noundef %call1.i, ptr noundef %24, i64 noundef %max_latency_ns.0.i) #13
  %38 = call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i.i.i117.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i117.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 16384
  %42 = and i32 %41, 2
  %tobool.i.not.i118.i = icmp eq i32 %42, 0
  br i1 %tobool.i.not.i118.i, label %if.end.i120.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end14.i
  %last_residency_ns.i.i = getelementptr inbounds %struct.cpuidle_device, ptr %24, i32 0, i32 4
  %43 = ptrtoint ptr %last_residency_ns.i.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 0, ptr %last_residency_ns.i.i, align 8
  call void @trace_hardirqs_on() #13
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !66
  br label %exit_idle.i

if.end.i120.i:                                    ; preds = %if.end14.i
  %call1.i119.i = call i32 @cpuidle_enter(ptr noundef %call1.i, ptr noundef %24, i32 noundef %call15.i) #13
  br label %exit_idle.i

if.else17.i:                                      ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stop_tick.i) #13
  %44 = ptrtoint ptr %stop_tick.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %stop_tick.i, align 1
  %call18.i = call i32 @cpuidle_select(ptr noundef %call1.i, ptr noundef %24, ptr noundef nonnull %stop_tick.i) #13
  %45 = ptrtoint ptr %stop_tick.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %stop_tick.i, align 1, !range !78
  %tobool19.not.i = icmp eq i8 %46, 0
  br i1 %tobool19.not.i, label %lor.lhs.false20.i, label %if.then22.i

lor.lhs.false20.i:                                ; preds = %if.else17.i
  %call21.i = call zeroext i1 @tick_nohz_tick_stopped() #13
  br i1 %call21.i, label %if.then22.i, label %if.else23.i

if.then22.i:                                      ; preds = %lor.lhs.false20.i, %if.else17.i
  call void @tick_nohz_idle_stop_tick() #13
  br label %if.end24.i

if.else23.i:                                      ; preds = %lor.lhs.false20.i
  call void @tick_nohz_idle_retain_tick() #13
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else23.i, %if.then22.i
  %47 = call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i.i.i122.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i122.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 16384
  %51 = and i32 %50, 2
  %tobool.i.not.i123.i = icmp eq i32 %51, 0
  br i1 %tobool.i.not.i123.i, label %if.end.i127.i, label %if.then.i125.i

if.then.i125.i:                                   ; preds = %if.end24.i
  %last_residency_ns.i124.i = getelementptr inbounds %struct.cpuidle_device, ptr %24, i32 0, i32 4
  %52 = ptrtoint ptr %last_residency_ns.i124.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 0, ptr %last_residency_ns.i124.i, align 8
  call void @trace_hardirqs_on() #13
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !66
  br label %call_cpuidle.exit129.i

if.end.i127.i:                                    ; preds = %if.end24.i
  %call1.i126.i = call i32 @cpuidle_enter(ptr noundef %call1.i, ptr noundef %24, i32 noundef %call18.i) #13
  br label %call_cpuidle.exit129.i

call_cpuidle.exit129.i:                           ; preds = %if.end.i127.i, %if.then.i125.i
  %retval.0.i128.i = phi i32 [ -16, %if.then.i125.i ], [ %call1.i126.i, %if.end.i127.i ]
  call void @cpuidle_reflect(ptr noundef %24, i32 noundef %retval.0.i128.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stop_tick.i) #13
  br label %exit_idle.i

exit_idle.i:                                      ; preds = %call_cpuidle.exit129.i, %if.end.i120.i, %if.then.i.i, %call_cpuidle_s2idle.exit.i, %if.then4.i
  %53 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !76
  %and.i.i43 = and i32 %53, 128
  %tobool40.not.i = icmp eq i32 %and.i.i43, 0
  br i1 %tobool40.not.i, label %if.end17, label %land.rhs.i

land.rhs.i:                                       ; preds = %exit_idle.i
  %.b113.i = load i1, ptr @cpuidle_idle_call.__already_done, align 1
  br i1 %.b113.i, label %do.body85.i, label %if.then49.i, !prof !65

if.then49.i:                                      ; preds = %land.rhs.i
  store i1 true, ptr @cpuidle_idle_call.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef null) #13
  br label %do.body85.i

do.body85.i:                                      ; preds = %if.then49.i, %land.rhs.i
  call void @trace_hardirqs_on() #13
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !66
  br label %if.end17

if.end17:                                         ; preds = %do.body85.i, %exit_idle.i, %do.body.i, %if.then15
  call void @arch_cpu_idle_exit()
  %54 = call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %55, align 16384
  %58 = and i32 %57, 2
  %tobool.i.not = icmp eq i32 %58, 0
  br i1 %tobool.i.not, label %while.body, label %do.body18

do.body18:                                        ; preds = %if.end17, %entry
  call void @tick_nohz_idle_exit() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @flush_smp_call_function_from_idle() #13
  call void @schedule_idle() #13
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpu_startup_entry(i32 noundef %state) local_unnamed_addr #7 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @arch_cpu_idle_prepare()
  tail call void @cpuhp_online_idle(i32 noundef %state) #13
  br label %while.body

while.body:                                       ; preds = %while.body, %entry
  tail call fastcc void @do_idle()
  br label %while.body
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuhp_online_idle(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pick_next_task_idle(ptr noundef %rq) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %idle = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 21
  %0 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idle, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_smt_present, ptr blockaddress(@pick_next_task_idle, %if.then.i.i)) #13
          to label %update_idle_core.exit.i [label %if.then.i.i], !srcloc !68

if.then.i.i:                                      ; preds = %entry
  tail call void @__update_idle_core(ptr noundef %rq) #13
  br label %update_idle_core.exit.i

update_idle_core.exit.i:                          ; preds = %if.then.i.i, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@pick_next_task_idle, %if.then.i)) #13
          to label %set_next_task_idle.exit [label %if.then.i], !srcloc !68

if.then.i:                                        ; preds = %update_idle_core.exit.i
  %sched_goidle.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 72
  %2 = ptrtoint ptr %sched_goidle.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sched_goidle.i, align 8
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %sched_goidle.i, align 8
  br label %set_next_task_idle.exit

set_next_task_idle.exit:                          ; preds = %if.then.i, %update_idle_core.exit.i
  tail call void @queue_core_balance(ptr noundef %rq) #13
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_next_task_idle(ptr noundef %rq, ptr nocapture noundef readnone %next, i1 noundef zeroext %first) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_smt_present, ptr blockaddress(@set_next_task_idle, %if.then.i)) #13
          to label %update_idle_core.exit [label %if.then.i], !srcloc !68

if.then.i:                                        ; preds = %entry
  tail call void @__update_idle_core(ptr noundef %rq) #13
  br label %update_idle_core.exit

update_idle_core.exit:                            ; preds = %if.then.i, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@set_next_task_idle, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %update_idle_core.exit
  %sched_goidle = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 72
  %0 = ptrtoint ptr %sched_goidle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sched_goidle, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %sched_goidle, align 8
  br label %do.end

do.end:                                           ; preds = %if.then, %update_idle_core.exit
  tail call void @queue_core_balance(ptr noundef %rq) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dequeue_task_idle(ptr noundef %rq, ptr nocapture noundef readnone %p, i32 noundef %flags) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @raw_spin_rq_unlock(ptr noundef %rq) #13
  tail call void @trace_hardirqs_on() #13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !66
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #15
  tail call void @dump_stack() #15
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !76
  %and.i.i.i = and i32 %0, 128
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #13, !srcloc !67
  br i1 %tobool.not.i, label %if.then.i, label %raw_spin_rq_lock_irq.exit

if.then.i:                                        ; preds = %entry
  tail call void @trace_hardirqs_off() #13
  br label %raw_spin_rq_lock_irq.exit

raw_spin_rq_lock_irq.exit:                        ; preds = %if.then.i, %entry
  tail call void @raw_spin_rq_lock_nested(ptr noundef %rq, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @check_preempt_curr_idle(ptr noundef %rq, ptr nocapture noundef readnone %p, i32 noundef %flags) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @resched_curr(ptr noundef %rq) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @put_prev_task_idle(ptr nocapture noundef %rq, ptr nocapture noundef %prev) #6 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @balance_idle(ptr nocapture noundef readnone %rq, ptr nocapture noundef readnone %prev, ptr nocapture noundef readnone %rf) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @balance_idle.__already_done, align 1
  br i1 %.b35, label %if.end25, label %if.then, !prof !65

if.then:                                          ; preds = %entry
  store i1 true, ptr @balance_idle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 420, i32 noundef 9, ptr noundef null) #13
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @select_task_rq_idle(ptr nocapture noundef readonly %p, i32 noundef %cpu, i32 noundef %flags) #8 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stack.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cpu.i, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pick_task_idle(ptr nocapture noundef readonly %rq) #9 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %idle = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 21
  %0 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idle, align 4
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cpus_allowed_common(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @task_tick_idle(ptr nocapture noundef %rq, ptr nocapture noundef %curr, i32 noundef %queued) #6 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @switched_to_idle(ptr nocapture noundef readnone %rq, ptr nocapture noundef readnone %p) #7 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/idle.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 486, 0\0A.popsection", ""() #13, !srcloc !80
  unreachable
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prio_changed_idle(ptr nocapture noundef readnone %rq, ptr nocapture noundef readnone %p, i32 noundef %oldprio) #7 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/idle.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 492, 0\0A.popsection", ""() #13, !srcloc !81
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @update_curr_idle(ptr nocapture noundef %rq) #6 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cpu_idle(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nohz_run_idle_balance(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_nohz_idle_enter() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_nohz_idle_stop_tick() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuhp_report_idle_dead() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_nocb_flush_deferred_wakeup() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_check_broadcast_expired() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_nohz_idle_restart_tick() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpu_idle_poll() unnamed_addr #11 section ".cpuidle.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  tail call fastcc void @trace_cpu_idle(i32 noundef 0, i32 noundef %3)
  tail call void @stop_critical_timings() #13
  tail call void @rcu_idle_enter() #13
  tail call void @trace_hardirqs_on() #13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !66
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %1, align 16384
  %6 = and i32 %5, 2
  %tobool.not1 = icmp eq i32 %6, 0
  br i1 %tobool.not1, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %do.end9, %entry
  %7 = load i32, ptr @cpu_idle_force_poll, align 4
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %lor.rhs, label %do.end9

lor.rhs:                                          ; preds = %land.rhs
  %call4 = tail call i32 @tick_check_broadcast_expired() #13
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %while.end, label %do.end9

do.end9:                                          ; preds = %lor.rhs, %land.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !82
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !83
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %1, align 16384
  %10 = and i32 %9, 2
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %land.rhs, label %while.end

while.end:                                        ; preds = %do.end9, %lor.rhs, %entry
  tail call void @rcu_idle_exit() #13
  tail call void @start_critical_timings() #13
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  tail call fastcc void @trace_cpu_idle(i32 noundef -1, i32 noundef %12)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_nohz_idle_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_smp_call_function_from_idle() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule_idle() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpuidle_get_cpu_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpuidle_not_available(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_find_deepest_state(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_select(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tick_nohz_tick_stopped() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_nohz_idle_retain_tick() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_reflect(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_enter_s2idle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_enter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @queue_core_balance(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__update_idle_core(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @resched_curr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !26, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !42, !43, !44, !46, !48, !50, !51, !52, !53}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../kernel/sched/idle.c", i32 33, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__setup_cpu_idle_poll_setup, !4, !"__setup_cpu_idle_poll_setup", i1 false, i1 false}
!4 = !{!"../kernel/sched/idle.c", i32 44, i32 1}
!5 = !{ptr @__setup_cpu_idle_nopoll_setup, !6, !"__setup_cpu_idle_nopoll_setup", i1 false, i1 false}
!6 = !{!"../kernel/sched/idle.c", i32 52, i32 1}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../kernel/sched/idle.c", i32 369, i32 2}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../kernel/sched/idle.c", i32 370, i32 2}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../kernel/sched/idle.c", i32 371, i32 2}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../kernel/sched/idle.c", i32 372, i32 2}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../kernel/sched/idle.c", i32 373, i32 2}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../kernel/sched/idle.c", i32 374, i32 2}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../kernel/sched/idle.c", i32 376, i32 2}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!23 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__ksymtab_play_idle_precise, !25, !"__ksymtab_play_idle_precise", i1 false, i1 false}
!25 = !{!"../kernel/sched/idle.c", i32 396, i32 1}
!26 = !{ptr @idle_sched_class, !27, !"idle_sched_class", i1 false, i1 false}
!27 = !{!"../kernel/sched/idle.c", i32 502, i32 1}
!28 = !{ptr @cpu_idle_force_poll, !29, !"cpu_idle_force_poll", i1 false, i1 false}
!29 = !{!"../kernel/sched/idle.c", i32 25, i32 26}
!30 = !{ptr @__setup_str_cpu_idle_poll_setup, !4, !"__setup_str_cpu_idle_poll_setup", i1 false, i1 false}
!31 = !{ptr @__setup_str_cpu_idle_nopoll_setup, !6, !"__setup_str_cpu_idle_nopoll_setup", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/trace/events/power.h", i32 36, i32 1}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!36 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rcupdate.h", i32 328, i32 2}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../kernel/sched/idle.c", i32 252, i32 6}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/cpuidle.h", i32 174, i32 9}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../kernel/sched/idle.c", i32 467, i32 2}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @dequeue_task_idle._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @dequeue_task_idle._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../kernel/sched/idle.c", i32 420, i32 9}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 907288}
!67 = !{i64 907478}
!68 = !{i64 2148326178, i64 2148326183, i64 2148326196, i64 2148326240, i64 2148326274, i64 2148326295}
!69 = !{i64 2158481540}
!70 = !{i64 2158481745}
!71 = !{i64 2149348858}
!72 = !{i64 2149349894}
!73 = !{i64 2158899266}
!74 = !{i64 2158902330}
!75 = !{i64 2158886671}
!76 = !{i64 909775}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{i8 0, i8 2}
!79 = !{i64 2158887200}
!80 = !{i64 2158907159, i64 2158907643, i64 2158907196, i64 2158907252, i64 2158907286, i64 2158907310, i64 2158907351, i64 2158907372, i64 2158907400, i64 2158907434}
!81 = !{i64 2158908637, i64 2158909121, i64 2158908674, i64 2158908730, i64 2158908764, i64 2158908788, i64 2158908829, i64 2158908850, i64 2158908878, i64 2158908912}
!82 = !{i64 2158882900}
!83 = !{i64 2158882742}
