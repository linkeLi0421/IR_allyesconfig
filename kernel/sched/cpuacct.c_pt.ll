; ModuleID = '/llk/IR_all_yes/kernel/sched/cpuacct.c_pt.bc'
source_filename = "../kernel/sched/cpuacct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpuacct = type { %struct.cgroup_subsys_state, ptr, ptr }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.cftype = type { [64 x i8], i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kernel_cpustat = type { [10 x i64] }
%struct.cpumask = type { [1 x i32] }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, [8 x i8], %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [24 x i8], [2 x %struct.uclamp_rq], i32, [76 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, %struct.list_head, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [88 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i64, i64, i64, i32, i32, %struct.__call_single_data, %struct.hrtimer, i64, %struct.sched_info, i64, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.cpu_stop_work, ptr, ptr, i32, i32, %struct.rb_root, i32, i32, i32, i32, i32, i32, i64, [80 x i8] }
%struct.uclamp_rq = type { i32, [5 x %struct.uclamp_bucket] }
%struct.uclamp_bucket = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i32, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg, i64, [120 x i8], %struct.anon, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.list_head, ptr, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list_head, [24 x i8] }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon = type { %struct.raw_spinlock, i32, i32, i32, i32, [68 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.93, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock, i32, ptr, ptr }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.93 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.94, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.94 = type { i64, i64 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.132, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.97 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.132 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.task_cputime = type { i64, i64, i64 }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }

@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@root_cpuacct = internal global { %struct.cpuacct, [48 x i8] } { %struct.cpuacct { %struct.cgroup_subsys_state zeroinitializer, ptr @root_cpuacct_cpuusage, ptr @kernel_cpustat }, [48 x i8] zeroinitializer }, align 32
@files = internal global { [9 x %struct.cftype], [328 x i8] } { [9 x %struct.cftype] [%struct.cftype { [64 x i8] c"usage\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @cpuusage_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuusage_write, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"usage_user\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @cpuusage_user_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"usage_sys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @cpuusage_sys_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"usage_percpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuacct_percpu_seq_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"usage_percpu_user\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuacct_percpu_user_seq_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"usage_percpu_sys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuacct_percpu_sys_seq_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"usage_all\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuacct_all_seq_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"stat\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuacct_stats_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [328 x i8] zeroinitializer }, align 32
@cpuacct_cgrp_subsys = dso_local global { %struct.cgroup_subsys, [52 x i8] } { %struct.cgroup_subsys { ptr @cpuacct_css_alloc, ptr null, ptr null, ptr null, ptr @cpuacct_css_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 -128, i32 0, ptr null, ptr null, ptr null, %struct.idr zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @files, i32 0 }, [52 x i8] zeroinitializer }, align 32
@__pcpu_unique_root_cpuacct_cpuusage = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@root_cpuacct_cpuusage = weak dso_local global i64 0, section ".data..percpu", align 8
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@task_css.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/cgroup.h\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kernel_cpustat = external dso_local global %struct.kernel_cpustat, section ".data..percpu", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 128
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu \00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %llu\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"system\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s %llu\0A\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"root_cpuacct\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 49, i32 23 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 293, i32 22 }
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"cpuacct_cgrp_subsys\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 362, i32 22 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 695, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [26 x i8] c"../include/linux/cgroup.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 494, i32 9 }
@___asan_gen_.38 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 723, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 219, i32 17 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 221, i32 16 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 246, i32 14 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 248, i32 17 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 252, i32 17 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 254, i32 18 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 20, i32 24 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 21, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [26 x i8] c"../kernel/sched/cpuacct.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 286, i32 18 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @root_cpuacct, ptr @files, ptr @cpuacct_cgrp_subsys, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root_cpuacct to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @files to i32), i32 1368, i32 1696, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuacct_cgrp_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuacct_charge(ptr noundef %tsk, i64 noundef %cputime) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !55
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %entry
  %cgroups.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 164
  %4 = ptrtoint ptr %cgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %cgroups.i.i, align 16
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #8
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %task_ca.exit

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call.i2.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #8
  %tobool3.not.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %task_ca.exit

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 4
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %task_ca.exit

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call7.i.i = tail call i32 @rcu_read_lock_held() #8
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i, label %task_ca.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false6.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %task_ca.exit, label %land.lhs.true11.i.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i.i, label %task_ca.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true11.i.i
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 494, ptr noundef nonnull @.str.4) #8
  br label %task_ca.exit

task_ca.exit:                                     ; preds = %if.then.i.i, %land.lhs.true11.i.i, %land.lhs.true.i.i, %lor.lhs.false6.i.i, %lor.lhs.false4.i.i, %lor.lhs.false.i.i, %rcu_read_lock.exit
  %arrayidx.i.i = getelementptr [14 x ptr], ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %ca.026 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not27 = icmp eq ptr %ca.026, null
  br i1 %tobool.not27, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %task_ca.exit
  %ca.028 = phi ptr [ %ca.0, %for.body ], [ %ca.026, %task_ca.exit ]
  %cpuusage = getelementptr inbounds %struct.cpuacct, ptr %ca.028, i32 0, i32 1
  %9 = ptrtoint ptr %cpuusage to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpuusage, align 8
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add = add i32 %17, %11
  %18 = inttoptr i32 %add to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %18, align 8
  %add9 = add i64 %20, %cputime
  store i64 %add9, ptr %18, align 8
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %ca.028, i32 0, i32 12
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %ca.0 = load ptr, ptr %parent.i, align 4
  %tobool.not = icmp eq ptr %ca.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %task_ca.exit
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i17, label %rcu_read_unlock.exit, label %land.lhs.true.i20

land.lhs.true.i20:                                ; preds = %for.end
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %rcu_read_unlock.exit, label %land.lhs.true2.i22

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %rcu_read_unlock.exit, label %if.then.i23

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22, %land.lhs.true.i20, %for.end
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !56
  %22 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i.i24 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuacct_account_field(ptr noundef %tsk, i32 noundef %index, i64 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !55
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %entry
  %cgroups.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 164
  %4 = ptrtoint ptr %cgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %cgroups.i.i, align 16
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #8
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %task_ca.exit

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call.i2.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #8
  %tobool3.not.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %task_ca.exit

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 4
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %task_ca.exit

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call7.i.i = tail call i32 @rcu_read_lock_held() #8
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i, label %task_ca.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false6.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %task_ca.exit, label %land.lhs.true11.i.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i.i, label %task_ca.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true11.i.i
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 494, ptr noundef nonnull @.str.4) #8
  br label %task_ca.exit

task_ca.exit:                                     ; preds = %if.then.i.i, %land.lhs.true11.i.i, %land.lhs.true.i.i, %lor.lhs.false6.i.i, %lor.lhs.false4.i.i, %lor.lhs.false.i.i, %rcu_read_lock.exit
  %arrayidx.i.i = getelementptr [14 x ptr], ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %ca.028 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp.not29 = icmp eq ptr %ca.028, @root_cpuacct
  br i1 %cmp.not29, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %task_ca.exit
  %ca.030 = phi ptr [ %ca.0, %for.body ], [ %ca.028, %task_ca.exit ]
  %cpustat = getelementptr inbounds %struct.cpuacct, ptr %ca.030, i32 0, i32 2
  %9 = ptrtoint ptr %cpustat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpustat, align 4
  %arrayidx = getelementptr [10 x i64], ptr %10, i32 0, i32 %index
  %11 = ptrtoint ptr %arrayidx to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu, align 4
  %arrayidx10 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx10, align 4
  %add = add i32 %17, %11
  %18 = inttoptr i32 %add to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %18, align 8
  %add11 = add i64 %20, %val
  store i64 %add11, ptr %18, align 8
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %ca.030, i32 0, i32 12
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %ca.0 = load ptr, ptr %parent.i, align 4
  %cmp.not = icmp eq ptr %ca.0, @root_cpuacct
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %task_ca.exit
  %call.i19 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i19, label %rcu_read_unlock.exit, label %land.lhs.true.i22

land.lhs.true.i22:                                ; preds = %for.end
  %call1.i20 = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %rcu_read_unlock.exit, label %land.lhs.true2.i24

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %rcu_read_unlock.exit, label %if.then.i25

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24, %land.lhs.true.i22, %for.end
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !56
  %22 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i.i26 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i27, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cpuacct_css_alloc(ptr noundef readnone %parent_css) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent_css, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 176) #10
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call noalias ptr @__alloc_percpu(i32 noundef 8, i32 noundef 8) #11
  %cpuusage = getelementptr inbounds %struct.cpuacct, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %cpuusage to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %cpuusage, align 8
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %out_free_ca, label %if.end8

if.end8:                                          ; preds = %if.end3
  %call9 = tail call noalias ptr @__alloc_percpu(i32 noundef 80, i32 noundef 8) #11
  %cpustat = getelementptr inbounds %struct.cpuacct, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %cpustat to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %cpustat, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %out_free_cpuusage, label %cleanup

out_free_cpuusage:                                ; preds = %if.end8
  %3 = ptrtoint ptr %cpuusage to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpuusage, align 8
  tail call void @free_percpu(ptr noundef %4) #8
  br label %out_free_ca

out_free_ca:                                      ; preds = %out_free_cpuusage, %if.end3
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free_ca, %if.end8, %if.end, %entry
  %retval.0 = phi ptr [ @root_cpuacct, %entry ], [ %call7.i.i, %if.end8 ], [ inttoptr (i32 -12 to ptr), %if.end ], [ inttoptr (i32 -12 to ptr), %out_free_ca ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpuacct_css_free(ptr noundef %css) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cpustat = getelementptr inbounds %struct.cpuacct, ptr %css, i32 0, i32 2
  %0 = ptrtoint ptr %cpustat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpustat, align 4
  tail call void @free_percpu(ptr noundef %1) #8
  %cpuusage = getelementptr inbounds %struct.cpuacct, ptr %css, i32 0, i32 1
  %2 = ptrtoint ptr %cpuusage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpuusage, align 8
  tail call void @free_percpu(ptr noundef %3) #8
  tail call void @kfree(ptr noundef %css) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @cpuusage_read(ptr nocapture noundef readonly %css, ptr nocapture noundef readnone %cft) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call16.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %cmp7.i = icmp ult i32 %call16.i, %0
  br i1 %cmp7.i, label %for.body.i.preheader, label %__cpuusage_read.exit

for.body.i.preheader:                             ; preds = %entry
  %cpuusage1.i = getelementptr inbounds %struct.cpuacct, ptr %css, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %cpuacct_cpuusage_read.exit, %for.body.i.preheader
  %call19.i = phi i32 [ %call1.i, %cpuacct_cpuusage_read.exit ], [ %call16.i, %for.body.i.preheader ]
  %totalcpuusage.08.i = phi i64 [ %add.i, %cpuacct_cpuusage_read.exit ], [ 0, %for.body.i.preheader ]
  %1 = ptrtoint ptr %cpuusage1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpuusage1.i, align 8
  %3 = ptrtoint ptr %2 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call19.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i1 = add i32 %5, %3
  %6 = inttoptr i32 %add.i1 to ptr
  %add63.i = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %add63.i to ptr
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !57
  %and.i.i.i.i = and i32 %8, 128
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #8, !srcloc !58
  br i1 %tobool.not.i.i, label %if.then.i.i, label %cpuacct_cpuusage_read.exit

if.then.i.i:                                      ; preds = %for.body.i
  tail call void @trace_hardirqs_off() #8
  br label %cpuacct_cpuusage_read.exit

cpuacct_cpuusage_read.exit:                       ; preds = %if.then.i.i, %for.body.i
  tail call void @raw_spin_rq_lock_nested(ptr noundef %7, i32 noundef 0) #8
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %6, align 8
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add82.i = add i32 %12, ptrtoint (ptr @runqueues to i32)
  %13 = inttoptr i32 %add82.i to ptr
  tail call void @raw_spin_rq_unlock(ptr noundef %13) #8
  tail call void @trace_hardirqs_on() #8
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !59
  %add.i = add i64 %10, %totalcpuusage.08.i
  %call1.i = tail call i32 @cpumask_next(i32 noundef %call19.i, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call1.i, %14
  br i1 %cmp.i, label %for.body.i, label %__cpuusage_read.exit

__cpuusage_read.exit:                             ; preds = %cpuacct_cpuusage_read.exit, %entry
  %totalcpuusage.0.lcssa.i = phi i64 [ 0, %entry ], [ %add.i, %cpuacct_cpuusage_read.exit ]
  ret i64 %totalcpuusage.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuusage_write(ptr noundef readonly %css, ptr nocapture noundef readnone %cft, i64 noundef %val) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq i64 %val, 0
  br i1 %tobool.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %entry
  %call15 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %cmp6 = icmp ult i32 %call15, %0
  br i1 %cmp6, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmp.i = icmp eq ptr %css, @root_cpuacct
  %cpustat9.i = getelementptr inbounds %struct.cpuacct, ptr %css, i32 0, i32 2
  %cpuusage1.i = getelementptr inbounds %struct.cpuacct, ptr %css, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cpuacct_cpuusage_write.exit, %for.body.lr.ph
  %call17 = phi i32 [ %call15, %for.body.lr.ph ], [ %call1, %cpuacct_cpuusage_write.exit ]
  br i1 %cmp.i, label %cpuacct_cpuusage_write.exit, label %do.body14.i

do.body14.i:                                      ; preds = %for.body
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call17
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %3 = ptrtoint ptr %cpustat9.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpustat9.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %add12.i = add i32 %2, %5
  %6 = inttoptr i32 %add12.i to ptr
  %7 = ptrtoint ptr %cpuusage1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpuusage1.i, align 8
  %9 = ptrtoint ptr %8 to i32
  %add.i = add i32 %2, %9
  %10 = inttoptr i32 %add.i to ptr
  %add22.i = add i32 %2, ptrtoint (ptr @runqueues to i32)
  %11 = inttoptr i32 %add22.i to ptr
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !57
  %and.i.i.i.i = and i32 %12, 128
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #8, !srcloc !58
  br i1 %tobool.not.i.i, label %if.then.i.i, label %raw_spin_rq_lock_irq.exit.i

if.then.i.i:                                      ; preds = %do.body14.i
  tail call void @trace_hardirqs_off() #8
  br label %raw_spin_rq_lock_irq.exit.i

raw_spin_rq_lock_irq.exit.i:                      ; preds = %if.then.i.i, %do.body14.i
  tail call void @raw_spin_rq_lock_nested(ptr noundef %11, i32 noundef 0) #8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %10, align 8
  %14 = call ptr @memset(ptr %6, i32 0, i32 40)
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add36.i = add i32 %16, ptrtoint (ptr @runqueues to i32)
  %17 = inttoptr i32 %add36.i to ptr
  tail call void @raw_spin_rq_unlock(ptr noundef %17) #8
  tail call void @trace_hardirqs_on() #8
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !59
  br label %cpuacct_cpuusage_write.exit

cpuacct_cpuusage_write.exit:                      ; preds = %raw_spin_rq_lock_irq.exit.i, %for.body
  %call1 = tail call i32 @cpumask_next(i32 noundef %call17, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %18
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %cpuacct_cpuusage_write.exit, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %for.cond.preheader ], [ 0, %cpuacct_cpuusage_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @cpuusage_user_read(ptr nocapture noundef readonly %css, ptr nocapture noundef readnone %cft) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call16.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %cmp7.i = icmp ult i32 %call16.i, %0
  br i1 %cmp7.i, label %for.body.i.preheader, label %__cpuusage_read.exit

for.body.i.preheader:                             ; preds = %entry
  %cpustat9.i = getelementptr inbounds %struct.cpuacct, ptr %css, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %cpuacct_cpuusage_read.exit, %for.body.i.preheader
  %call19.i = phi i32 [ %call1.i, %cpuacct_cpuusage_read.exit ], [ %call16.i, %for.body.i.preheader ]
  %totalcpuusage.08.i = phi i64 [ %add.i, %cpuacct_cpuusage_read.exit ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call19.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %3 = ptrtoint ptr %cpustat9.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpustat9.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %add12.i = add i32 %2, %5
  %6 = inttoptr i32 %add12.i to ptr
  %add63.i = add i32 %2, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %add63.i to ptr
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !57
  %and.i.i.i.i = and i32 %8, 128
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #8, !srcloc !58
  br i1 %tobool.not.i.i, label %if.then.i.i, label %cpuacct_cpuusage_read.exit

if.then.i.i:                                      ; preds = %for.body.i
  tail call void @trace_hardirqs_off() #8
  br label %cpuacct_cpuusage_read.exit

cpuacct_cpuusage_read.exit:                       ; preds = %if.then.i.i, %for.body.i
  tail call void @raw_spin_rq_lock_nested(ptr noundef %7, i32 noundef 0) #8
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %6, align 8
  %arrayidx65.i = getelementptr i64, ptr %6, i32 1
  %11 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx65.i, align 8
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add82.i = add i32 %14, ptrtoint (ptr @runqueues to i32)
  %15 = inttoptr i32 %add82.i to ptr
  tail call void @raw_spin_rq_unlock(ptr noundef %15) #8
  tail call void @trace_hardirqs_on() #8
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !59
  %add66.i = add i64 %10, %totalcpuusage.08.i
  %add.i = add i64 %add66.i, %12
  %call1.i = tail call i32 @cpumask_next(i32 noundef %call19.i, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call1.i, %16
  br i1 %cmp.i, label %for.body.i, label %__cpuusage_read.exit

__cpuusage_read.exit:                             ; preds = %cpuacct_cpuusage_read.exit, %entry
  %totalcpuusage.0.lcssa.i = phi i64 [ 0, %entry ], [ %add.i, %cpuacct_cpuusage_read.exit ]
  ret i64 %totalcpuusage.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @cpuusage_sys_read(ptr nocapture noundef readonly %css, ptr nocapture noundef readnone %cft) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call16.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %cmp7.i = icmp ult i32 %call16.i, %0
  br i1 %cmp7.i, label %for.body.i.preheader, label %__cpuusage_read.exit

for.body.i.preheader:                             ; preds = %entry
  %cpustat9.i = getelementptr inbounds %struct.cpuacct, ptr %css, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %cpuacct_cpuusage_read.exit, %for.body.i.preheader
  %call19.i = phi i32 [ %call1.i, %cpuacct_cpuusage_read.exit ], [ %call16.i, %for.body.i.preheader ]
  %totalcpuusage.08.i = phi i64 [ %add.i, %cpuacct_cpuusage_read.exit ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call19.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %3 = ptrtoint ptr %cpustat9.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpustat9.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %add12.i = add i32 %2, %5
  %6 = inttoptr i32 %add12.i to ptr
  %add63.i = add i32 %2, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %add63.i to ptr
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !57
  %and.i.i.i.i = and i32 %8, 128
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #8, !srcloc !58
  br i1 %tobool.not.i.i, label %if.then.i.i, label %cpuacct_cpuusage_read.exit

if.then.i.i:                                      ; preds = %for.body.i
  tail call void @trace_hardirqs_off() #8
  br label %cpuacct_cpuusage_read.exit

cpuacct_cpuusage_read.exit:                       ; preds = %if.then.i.i, %for.body.i
  tail call void @raw_spin_rq_lock_nested(ptr noundef %7, i32 noundef 0) #8
  %arrayidx68.i = getelementptr i64, ptr %6, i32 2
  %9 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx68.i, align 8
  %arrayidx69.i = getelementptr i64, ptr %6, i32 4
  %11 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx69.i, align 8
  %arrayidx71.i = getelementptr i64, ptr %6, i32 3
  %13 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx71.i, align 8
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add82.i = add i32 %16, ptrtoint (ptr @runqueues to i32)
  %17 = inttoptr i32 %add82.i to ptr
  tail call void @raw_spin_rq_unlock(ptr noundef %17) #8
  tail call void @trace_hardirqs_on() #8
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !59
  %add70.i = add i64 %10, %totalcpuusage.08.i
  %add72.i = add i64 %add70.i, %12
  %add.i = add i64 %add72.i, %14
  %call1.i = tail call i32 @cpumask_next(i32 noundef %call19.i, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call1.i, %18
  br i1 %cmp.i, label %for.body.i, label %__cpuusage_read.exit

__cpuusage_read.exit:                             ; preds = %cpuacct_cpuusage_read.exit, %entry
  %totalcpuusage.0.lcssa.i = phi i64 [ 0, %entry ], [ %add.i, %cpuacct_cpuusage_read.exit ]
  ret i64 %totalcpuusage.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuacct_percpu_seq_show(ptr noundef %m, ptr nocapture noundef readnone %V) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__cpuacct_percpu_seq_show(ptr noundef %m, i32 noundef 2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuacct_percpu_user_seq_show(ptr noundef %m, ptr nocapture noundef readnone %V) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__cpuacct_percpu_seq_show(ptr noundef %m, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuacct_percpu_sys_seq_show(ptr noundef %m, ptr nocapture noundef readnone %V) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__cpuacct_percpu_seq_show(ptr noundef %m, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuacct_all_seq_show(ptr noundef %m, ptr nocapture noundef readnone %V) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.9) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.14) #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.8) #8
  %call330 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %cmp431 = icmp ult i32 %call330, %2
  br i1 %cmp431, label %for.body5, label %for.end13

for.body5:                                        ; preds = %for.body5, %entry
  %call332 = phi i32 [ %call3, %for.body5 ], [ %call330, %entry ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %call332) #8
  %call9 = tail call fastcc i64 @cpuacct_cpuusage_read(ptr noundef %call.i, i32 noundef %call332, i32 noundef 0)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i64 noundef %call9) #8
  %call9.1 = tail call fastcc i64 @cpuacct_cpuusage_read(ptr noundef %call.i, i32 noundef %call332, i32 noundef 1)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i64 noundef %call9.1) #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.8) #8
  %call3 = tail call i32 @cpumask_next(i32 noundef %call332, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %cmp4 = icmp ult i32 %call3, %3
  br i1 %cmp4, label %for.body5, label %for.end13

for.end13:                                        ; preds = %for.body5, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuacct_stats_show(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cputime = alloca %struct.task_cputime, align 8
  %val = alloca [2 x i64], align 8
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cputime) #8
  %2 = getelementptr inbounds %struct.task_cputime, ptr %cputime, i32 0, i32 1
  %3 = getelementptr inbounds %struct.task_cputime, ptr %cputime, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %val) #8
  %4 = call ptr @memset(ptr %val, i32 255, i32 16)
  %5 = call ptr @memset(ptr %cputime, i32 0, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %call254 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  %cmp55 = icmp ult i32 %call254, %6
  br i1 %cmp55, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cpustat3 = getelementptr inbounds %struct.cpuacct, ptr %call.i, i32 0, i32 2
  %cpuusage = getelementptr inbounds %struct.cpuacct, ptr %call.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %call256 = phi i32 [ %call254, %for.body.lr.ph ], [ %call2, %for.body ]
  %7 = ptrtoint ptr %cpustat3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpustat3, align 4
  %9 = ptrtoint ptr %8 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call256
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, %9
  %12 = inttoptr i32 %add to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %12, align 8
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %2, align 8
  %add7 = add i64 %16, %14
  %arrayidx8 = getelementptr i64, ptr %12, i32 1
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx8, align 8
  %add10 = add i64 %18, %add7
  store i64 %add10, ptr %2, align 8
  %arrayidx11 = getelementptr i64, ptr %12, i32 2
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx11, align 8
  %21 = ptrtoint ptr %cputime to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %cputime, align 8
  %add12 = add i64 %22, %20
  %arrayidx13 = getelementptr i64, ptr %12, i32 4
  %23 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx13, align 8
  %add15 = add i64 %24, %add12
  %arrayidx16 = getelementptr i64, ptr %12, i32 3
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx16, align 8
  %add18 = add i64 %26, %add15
  store i64 %add18, ptr %cputime, align 8
  %27 = ptrtoint ptr %cpuusage to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cpuusage, align 8
  %29 = ptrtoint ptr %28 to i32
  %add27 = add i32 %11, %29
  %30 = inttoptr i32 %add27 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %30, align 8
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %3, align 8
  %add28 = add i64 %34, %32
  store i64 %add28, ptr %3, align 8
  %call2 = tail call i32 @cpumask_next(i32 noundef %call256, ptr noundef nonnull @__cpu_possible_mask) #12
  %cmp = icmp ult i32 %call2, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %35 = getelementptr inbounds [2 x i64], ptr %val, i32 0, i32 1
  %36 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %private.i, align 8
  %call.i53 = tail call ptr @of_css(ptr noundef %37) #8
  %38 = ptrtoint ptr %call.i53 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i53, align 8
  %prev_cputime = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 28
  call void @cputime_adjust(ptr noundef nonnull %cputime, ptr noundef %prev_cputime, ptr noundef nonnull %val, ptr noundef %35) #8
  %40 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %val, align 8
  %call37 = call i64 @nsec_to_clock_t(i64 noundef %41) #8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i64 noundef %call37) #8
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %35, align 8
  %call37.1 = call i64 @nsec_to_clock_t(i64 noundef %43) #8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i64 noundef %call37.1) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cputime) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @cpuacct_cpuusage_read(ptr nocapture noundef readonly %ca, i32 noundef %cpu, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cpuusage1 = getelementptr inbounds %struct.cpuacct, ptr %ca, i32 0, i32 1
  %0 = ptrtoint ptr %cpuusage1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpuusage1, align 8
  %2 = ptrtoint ptr %1 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, %2
  %5 = inttoptr i32 %add to ptr
  %cpustat9 = getelementptr inbounds %struct.cpuacct, ptr %ca, i32 0, i32 2
  %6 = ptrtoint ptr %cpustat9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpustat9, align 4
  %8 = ptrtoint ptr %7 to i32
  %add12 = add i32 %4, %8
  %9 = inttoptr i32 %add12 to ptr
  %add63 = add i32 %4, ptrtoint (ptr @runqueues to i32)
  %10 = inttoptr i32 %add63 to ptr
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !57
  %and.i.i.i = and i32 %11, 128
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #8, !srcloc !58
  br i1 %tobool.not.i, label %if.then.i, label %raw_spin_rq_lock_irq.exit

if.then.i:                                        ; preds = %entry
  tail call void @trace_hardirqs_off() #8
  br label %raw_spin_rq_lock_irq.exit

raw_spin_rq_lock_irq.exit:                        ; preds = %if.then.i, %entry
  tail call void @raw_spin_rq_lock_nested(ptr noundef %10, i32 noundef 0) #8
  switch i32 %index, label %do.body74 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb67
    i32 2, label %sw.bb73
  ]

sw.bb:                                            ; preds = %raw_spin_rq_lock_irq.exit
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %9, align 8
  %arrayidx65 = getelementptr i64, ptr %9, i32 1
  %14 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx65, align 8
  %add66 = add i64 %15, %13
  br label %do.body74

sw.bb67:                                          ; preds = %raw_spin_rq_lock_irq.exit
  %arrayidx68 = getelementptr i64, ptr %9, i32 2
  %16 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx68, align 8
  %arrayidx69 = getelementptr i64, ptr %9, i32 4
  %18 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx69, align 8
  %add70 = add i64 %19, %17
  %arrayidx71 = getelementptr i64, ptr %9, i32 3
  %20 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx71, align 8
  %add72 = add i64 %add70, %21
  br label %do.body74

sw.bb73:                                          ; preds = %raw_spin_rq_lock_irq.exit
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %5, align 8
  br label %do.body74

do.body74:                                        ; preds = %sw.bb73, %sw.bb67, %sw.bb, %raw_spin_rq_lock_irq.exit
  %data.0 = phi i64 [ -1, %raw_spin_rq_lock_irq.exit ], [ %23, %sw.bb73 ], [ %add72, %sw.bb67 ], [ %add66, %sw.bb ]
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %add82 = add i32 %25, ptrtoint (ptr @runqueues to i32)
  %26 = inttoptr i32 %add82 to ptr
  tail call void @raw_spin_rq_unlock(ptr noundef %26) #8
  tail call void @trace_hardirqs_on() #8
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !59
  ret i64 %data.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__cpuacct_percpu_seq_show(ptr noundef %m, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #8
  %call21 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %cmp2 = icmp ult i32 %call21, %2
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.body, %entry
  %call23 = phi i32 [ %call2, %for.body ], [ %call21, %entry ]
  %call3 = tail call fastcc i64 @cpuacct_cpuusage_read(ptr noundef %call.i, i32 noundef %call23, i32 noundef %index)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.7, i64 noundef %call3) #8
  %call2 = tail call i32 @cpumask_next(i32 noundef %call23, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_css(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cputime_adjust(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nsec_to_clock_t(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43}
!llvm.named.register.sp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/sched/cpuacct.c", i32 342, i32 3}
!2 = !{ptr @cpuacct_cgrp_subsys, !3, !"cpuacct_cgrp_subsys", i1 false, i1 false}
!3 = !{!"../kernel/sched/cpuacct.c", i32 362, i32 22}
!4 = !{ptr @__pcpu_unique_root_cpuacct_cpuusage, !5, !"__pcpu_unique_root_cpuacct_cpuusage", i1 false, i1 false}
!5 = !{!"../kernel/sched/cpuacct.c", i32 48, i32 8}
!6 = !{ptr @root_cpuacct_cpuusage, !5, !"root_cpuacct_cpuusage", i1 false, i1 false}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../include/linux/cgroup.h", i32 494, i32 9}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @root_cpuacct, !19, !"root_cpuacct", i1 false, i1 false}
!19 = !{!"../kernel/sched/cpuacct.c", i32 49, i32 23}
!20 = !{ptr @files, !21, !"files", i1 false, i1 false}
!21 = !{!"../kernel/sched/cpuacct.c", i32 293, i32 22}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../kernel/sched/cpuacct.c", i32 106, i32 6}
!24 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/sched/cpuacct.c", i32 219, i32 17}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/sched/cpuacct.c", i32 221, i32 16}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../kernel/sched/cpuacct.c", i32 246, i32 14}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/sched/cpuacct.c", i32 248, i32 17}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../kernel/sched/cpuacct.c", i32 252, i32 17}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../kernel/sched/cpuacct.c", i32 254, i32 18}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../kernel/sched/cpuacct.c", i32 20, i32 24}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/sched/cpuacct.c", i32 21, i32 26}
!41 = distinct !{null, !42, !"cpuacct_stat_desc", i1 false, i1 false}
!42 = !{!"../kernel/sched/cpuacct.c", i32 19, i32 27}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/sched/cpuacct.c", i32 286, i32 18}
!45 = !{!"sp"}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2149360995}
!56 = !{i64 2149361261}
!57 = !{i64 885490}
!58 = !{i64 883193}
!59 = !{i64 883003}
