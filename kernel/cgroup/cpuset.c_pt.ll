; ModuleID = '/llk/IR_all_yes/kernel/cgroup/cpuset.c_pt.bc'
source_filename = "../kernel/cgroup/cpuset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cpuset_mem_spread_node\22, \22a\22\09"
module asm "\09.weak\09__crc_cpuset_mem_spread_node\09\09\09\09"
module asm "\09.long\09__crc_cpuset_mem_spread_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpuset_mem_spread_node:\09\09\09\09\09"
module asm "\09.asciz \09\22cpuset_mem_spread_node\22\09\09\09\09\09"
module asm "__kstrtabns_cpuset_mem_spread_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cftype = type { [64 x i8], i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cpuset = type { %struct.cgroup_subsys_state, i32, ptr, %struct.nodemask_t, ptr, %struct.nodemask_t, ptr, %struct.nodemask_t, %struct.fmeter, i32, i32, i32, i32, i32, i32, i32, %struct.cgroup_file }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.nodemask_t = type { [1 x i32] }
%struct.fmeter = type { i32, i32, i64, %struct.spinlock }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.root_domain = type opaque
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.css_set = type { [14 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [14 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.css_task_iter = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.sched_domain_attr = type { i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.75, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.49 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.75 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cgroup_root = type { ptr, i32, i32, %struct.cgroup, i64, %struct.atomic_t, %struct.list_head, i32, [4096 x i8], [64 x i8] }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.tmpmasks = type { ptr, ptr, ptr }
%struct.anon = type { [16 x i8], %struct.lockdep_map }
%struct.cpuset_migrate_mm_work = type { %struct.work_struct, ptr, %struct.nodemask_t, %struct.nodemask_t }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.31, ptr, i64, i16, i16, ptr }
%union.anon.31 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@cpusets_pre_enable_key = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@cpusets_enabled_key = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@cpusets_insane_config_key = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@cpuset_rwsem = internal global { %struct.percpu_rw_semaphore, [32 x i8] } { %struct.percpu_rw_semaphore { %struct.rcu_sync { i32 0, i32 0, %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @cpuset_rwsem, i64 52), ptr getelementptr (i8, ptr @cpuset_rwsem, i64 52) } }, %struct.callback_head zeroinitializer }, ptr @__percpu_rwsem_rc_cpuset_rwsem, %struct.rcuwait zeroinitializer, %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @cpuset_rwsem, i64 120), ptr getelementptr (i8, ptr @cpuset_rwsem, i64 120) } }, %struct.atomic_t zeroinitializer, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@cpuset_being_rebound = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dfl_files = internal global { [7 x %struct.cftype], [280 x i8] } { [7 x %struct.cftype] [%struct.cftype { [64 x i8] c"cpus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 124, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_common_seq_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_write_resmask, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"mems\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 106, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_common_seq_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_write_resmask, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"cpus.effective\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_common_seq_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"mems.effective\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_common_seq_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"cpus.partition\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10, i32 0, i32 2, i32 292, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sched_partition_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sched_partition_write, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"cpus.subpartitions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 0, i32 32, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_common_seq_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [280 x i8] zeroinitializer }, align 32
@legacy_files = internal global { [15 x %struct.cftype], [568 x i8] } { [15 x %struct.cftype] [%struct.cftype { [64 x i8] c"cpus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 124, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_common_seq_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_write_resmask, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"mems\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 106, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_common_seq_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_write_resmask, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"effective_cpus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_common_seq_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"effective_mems\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_common_seq_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"cpu_exclusive\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @cpuset_read_u64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_write_u64, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"mem_exclusive\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @cpuset_read_u64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_write_u64, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"mem_hardwall\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @cpuset_read_u64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_write_u64, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"sched_load_balance\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @cpuset_read_u64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_write_u64, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"sched_relax_domain_level\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_read_s64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_write_s64, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"memory_migrate\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @cpuset_read_u64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_write_u64, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"memory_pressure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 13, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @cpuset_read_u64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"memory_spread_page\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 14, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @cpuset_read_u64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_write_u64, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"memory_spread_slab\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 15, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @cpuset_read_u64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_write_u64, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"memory_pressure_enabled\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12, i32 0, i32 1, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @cpuset_read_u64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpuset_write_u64, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [568 x i8] zeroinitializer }, align 32
@cpuset_cgrp_subsys = dso_local global { %struct.cgroup_subsys, [52 x i8] } { %struct.cgroup_subsys { ptr @cpuset_css_alloc, ptr @cpuset_css_online, ptr @cpuset_css_offline, ptr null, ptr @cpuset_css_free, ptr null, ptr null, ptr null, ptr @cpuset_can_attach, ptr @cpuset_cancel_attach, ptr @cpuset_attach, ptr @cpuset_post_attach, ptr null, ptr null, ptr @cpuset_fork, ptr null, ptr null, ptr @cpuset_bind, i8 -96, i32 0, ptr null, ptr null, ptr null, %struct.idr zeroinitializer, %struct.list_head zeroinitializer, ptr @dfl_files, ptr @legacy_files, i32 0 }, [52 x i8] zeroinitializer }, align 32
@cpuset_init.rwsem_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&cpuset_rwsem\00", [18 x i8] zeroinitializer }, align 32
@top_cpuset = internal global { %struct.cpuset, [64 x i8] } { %struct.cpuset { %struct.cgroup_subsys_state zeroinitializer, i32 7, ptr null, %struct.nodemask_t zeroinitializer, ptr null, %struct.nodemask_t zeroinitializer, ptr null, %struct.nodemask_t zeroinitializer, %struct.fmeter zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, %struct.cgroup_file zeroinitializer }, [64 x i8] zeroinitializer }, align 32
@cpus_attach = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@force_rebuild = internal global { i1, [31 x i8] } zeroinitializer, align 32
@cpuset_hotplug_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @cpuset_hotplug_work, i64 4), ptr getelementptr (i8, ptr @cpuset_hotplug_work, i64 4) }, ptr @cpuset_hotplug_workfn, %struct.lockdep_map { ptr @cpuset_hotplug_work, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__cpu_active_mask = external dso_local global %struct.cpumask, align 4
@node_states = external dso_local local_unnamed_addr global [7 x %struct.nodemask_t], align 4
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpuset_migrate_mm\00", [46 x i8] zeroinitializer }, align 32
@cpuset_migrate_mm_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@callback_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_cpuset_mem_spread_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpuset_mem_spread_node = external dso_local constant [0 x i8], align 1
@__ksymtab_cpuset_mem_spread_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpuset_mem_spread_node to i32), ptr @__kstrtab_cpuset_mem_spread_node, ptr @__kstrtabns_cpuset_mem_spread_node }, section "___ksymtab_gpl+cpuset_mem_spread_node", align 4
@cpuset_print_current_mems_allowed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 3683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c,cpuset=\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cpuset_print_current_mems_allowed\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kernel/cgroup/cpuset.c\00", [41 x i8] zeroinitializer }, align 32
@cpuset_print_current_mems_allowed._entry_ptr = internal global ptr @cpuset_print_current_mems_allowed._entry, section ".printk_index", align 4
@cpuset_print_current_mems_allowed._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 3686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\01c,mems_allowed=%*pbl\00", [42 x i8] zeroinitializer }, align 32
@cpuset_print_current_mems_allowed._entry_ptr.7 = internal global ptr @cpuset_print_current_mems_allowed._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mems_allowed:\09%*pb\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Mems_allowed_list:\09%*pbl\0A\00", [38 x i8] zeroinitializer }, align 32
@__pcpu_unique___percpu_rwsem_rc_cpuset_rwsem = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__percpu_rwsem_rc_cpuset_rwsem = weak dso_local global i32 0, section ".data..percpu", align 4
@cpuset_memory_pressure_enabled = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cpuset_rwsem.rss.gp_wait.lock\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cpuset_rwsem.waiters.lock\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cpuset_rwsem\00", [19 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@generate_sched_domains.warnings = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@generate_sched_domains._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014rebuild_sched_domains confused: nslot %d, ndoms %d, csn %d, i %d, apn %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"generate_sched_domains\00", [41 x i8] zeroinitializer }, align 32
@generate_sched_domains._entry_ptr = internal global ptr @generate_sched_domains._entry, section ".printk_index", align 4
@sched_domains_mutex = external dso_local global %struct.mutex, align 4
@def_root_domain = external dso_local global %struct.root_domain, align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@task_css.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/cgroup.h\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@cpuset_cgrp_subsys_on_dfl_key = external dso_local global %struct.static_key_true, align 4
@percpu_ref_tryget_live_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/linux/percpu-refcount.h\00", [32 x i8] zeroinitializer }, align 32
@update_cpumasks_hier.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@update_cpumasks_hier.__already_done.24 = internal unnamed_addr global i1 false, section ".data.once", align 1
@validate_change_legacy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpuset_attach_old_cs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cpuset_attach.cpuset_attach_nodemask_to = internal global { %struct.nodemask_t, [28 x i8] } zeroinitializer, align 32
@cpuset_attach.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpuset_attach_wq = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @cpuset_attach_wq, i64 44), ptr getelementptr (i8, ptr @cpuset_attach_wq, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@cpuset_migrate_mm.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&mwork->work)\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cpuset_attach_wq.lock\00", [42 x i8] zeroinitializer }, align 32
@init_css_set = external dso_local local_unnamed_addr global %struct.css_set, align 4
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%*pbl\0A\00", [25 x i8] zeroinitializer }, align 32
@check_insane_mems_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [148 x i8], [44 x i8] } { [148 x i8] c"\016Unsupported (movable nodes only) cpuset configuration detected (nmask=%*pbl)!\0ACpuset allocations might fail even with a lot of memory available.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"check_insane_mems_config\00", [39 x i8] zeroinitializer }, align 32
@check_insane_mems_config._entry_ptr = internal global ptr @check_insane_mems_config._entry, section ".printk_index", align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@update_tasks_nodemask.newmems = internal global { %struct.nodemask_t, [28 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"root\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"member\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"root invalid\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"root\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"member\00", [25 x i8] zeroinitializer }, align 32
@sched_domain_level_max = external dso_local local_unnamed_addr global i32, align 4
@fmeter_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&fmp->lock\00", [21 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpuset_hotplug_work\00", [44 x i8] zeroinitializer }, align 32
@cpuset_hotplug_workfn.new_cpus = internal global { %struct.cpumask, [28 x i8] } zeroinitializer, align 32
@cpuset_hotplug_workfn.new_mems.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cpuset_hotplug_update_tasks.new_cpus = internal global { %struct.cpumask, [28 x i8] } zeroinitializer, align 32
@cpuset_hotplug_update_tasks.new_mems = internal global { %struct.nodemask_t, [28 x i8] } zeroinitializer, align 32
@remove_tasks_in_empty_cpuset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 3057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013cpuset: failed to transfer tasks out of empty cpuset \00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"remove_tasks_in_empty_cpuset\00", [35 x i8] zeroinitializer }, align 32
@remove_tasks_in_empty_cpuset._entry_ptr = internal global ptr @remove_tasks_in_empty_cpuset._entry, section ".printk_index", align 4
@remove_tasks_in_empty_cpuset._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.4, i32 3059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@remove_tasks_in_empty_cpuset._entry_ptr.42 = internal global ptr @remove_tasks_in_empty_cpuset._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"callback_lock\00", [18 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.sched_partition_show = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.33, ptr @.str.32, ptr @.str.31], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.46 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.48 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 6, i64 7, i64 8, i64 9, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.49 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 6, i64 7, i64 8, i64 9, i64 12, i64 14, i64 15]
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"cpusets_pre_enable_key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 69, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"cpusets_enabled_key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 70, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [26 x i8] c"cpusets_insane_config_key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 77, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"cpuset_rwsem\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"cpuset_being_rebound\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1749, i32 14 }
@___asan_gen_.65 = private unnamed_addr constant [10 x i8] c"dfl_files\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2760, i32 22 }
@___asan_gen_.68 = private unnamed_addr constant [13 x i8] c"legacy_files\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2654, i32 22 }
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c"cpuset_cgrp_subsys\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2991, i32 22 }
@___asan_gen_.74 = private unnamed_addr constant [10 x i8] c"rwsem_key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 3016, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [11 x i8] c"top_cpuset\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 286, i32 22 }
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"cpus_attach\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2277, i32 22 }
@___asan_gen_.86 = private unnamed_addr constant [14 x i8] c"force_rebuild\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [20 x i8] c"cpuset_hotplug_work\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 3402, i32 25 }
@___asan_gen_.93 = private unnamed_addr constant [21 x i8] c"cpuset_migrate_mm_wq\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 372, i32 33 }
@___asan_gen_.96 = private unnamed_addr constant [14 x i8] c"callback_lock\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 3683, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 3685, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 3767, i32 16 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 3769, i32 16 }
@___asan_gen_.124 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 49, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 34, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 358, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant [9 x i8] c"warnings\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 938, i32 15 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 940, i32 5 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 695, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [26 x i8] c"../include/linux/cgroup.h\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 494, i32 9 }
@___asan_gen_.166 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 723, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [35 x i8] c"../include/linux/percpu-refcount.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 280, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [21 x i8] c"cpuset_attach_old_cs\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2219, i32 23 }
@___asan_gen_.174 = private unnamed_addr constant [26 x i8] c"cpuset_attach_nodemask_to\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2282, i32 20 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"cpuset_attach_wq\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 277, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1709, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 380, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2531, i32 18 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 387, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [8 x i8] c"newmems\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1761, i32 20 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2605, i32 17 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2608, i32 17 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2611, i32 17 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2629, i32 19 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2631, i32 24 }
@___asan_gen_.222 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2174, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 378, i32 8 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 3258, i32 19 }
@___asan_gen_.234 = private unnamed_addr constant [33 x i8] c"cpuset_hotplug_workfn.new_mems.0\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [9 x i8] c"new_cpus\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 3141, i32 19 }
@___asan_gen_.238 = private unnamed_addr constant [9 x i8] c"new_mems\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 3142, i32 20 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 3057, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 3059, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.257 = private constant [26 x i8] c"../kernel/cgroup/cpuset.c\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 370, i32 8 }
@___asan_gen_.259 = private unnamed_addr constant [34 x i8] c"switch.table.sched_partition_show\00", align 1
@llvm.compiler.used = appending global [79 x ptr] [ptr @__ksymtab_cpuset_mem_spread_node, ptr @check_insane_mems_config._entry, ptr @check_insane_mems_config._entry_ptr, ptr @cpuset_print_current_mems_allowed._entry, ptr @cpuset_print_current_mems_allowed._entry.5, ptr @cpuset_print_current_mems_allowed._entry_ptr, ptr @cpuset_print_current_mems_allowed._entry_ptr.7, ptr @generate_sched_domains._entry, ptr @generate_sched_domains._entry_ptr, ptr @remove_tasks_in_empty_cpuset._entry, ptr @remove_tasks_in_empty_cpuset._entry.40, ptr @remove_tasks_in_empty_cpuset._entry_ptr, ptr @remove_tasks_in_empty_cpuset._entry_ptr.42, ptr @cpusets_pre_enable_key, ptr @cpusets_enabled_key, ptr @cpusets_insane_config_key, ptr @cpuset_rwsem, ptr @cpuset_being_rebound, ptr @dfl_files, ptr @legacy_files, ptr @cpuset_cgrp_subsys, ptr @cpuset_init.rwsem_key, ptr @.str, ptr @top_cpuset, ptr @cpus_attach, ptr @force_rebuild, ptr @cpuset_hotplug_work, ptr @.str.1, ptr @cpuset_migrate_mm_wq, ptr @callback_lock, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @generate_sched_domains.warnings, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @cpuset_attach_old_cs, ptr @cpuset_attach.cpuset_attach_nodemask_to, ptr @cpuset_attach_wq, ptr @.str.25, ptr @cpuset_migrate_mm.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @update_tasks_nodemask.newmems, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @fmeter_init.__key, ptr @.str.36, ptr @.str.37, ptr @cpuset_hotplug_workfn.new_cpus, ptr @cpuset_hotplug_workfn.new_mems.0, ptr @cpuset_hotplug_update_tasks.new_cpus, ptr @cpuset_hotplug_update_tasks.new_mems, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @switch.table.sched_partition_show], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpusets_pre_enable_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpusets_enabled_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpusets_insane_config_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuset_rwsem to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuset_being_rebound to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfl_files to i32), i32 1064, i32 1344, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_files to i32), i32 2280, i32 2848, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuset_cgrp_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuset_init.rwsem_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_cpuset to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpus_attach to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_rebuild to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuset_hotplug_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuset_migrate_mm_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @callback_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuset_print_current_mems_allowed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuset_print_current_mems_allowed._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_sched_domains.warnings to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_sched_domains._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuset_attach_old_cs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuset_attach.cpuset_attach_nodemask_to to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuset_attach_wq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuset_migrate_mm.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_insane_mems_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_tasks_nodemask.newmems to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmeter_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuset_hotplug_workfn.new_cpus to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuset_hotplug_workfn.new_mems.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuset_hotplug_update_tasks.new_cpus to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuset_hotplug_update_tasks.new_mems to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remove_tasks_in_empty_cpuset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remove_tasks_in_empty_cpuset._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sched_partition_show to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuset_read_lock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 49) #17
  %0 = tail call ptr @llvm.returnaddress(i32 0) #17
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpuset_rwsem, i32 0, i32 5), i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %1) #17
  %2 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !158
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.rcu_sync_is_idle.exit.i_crit_edge

entry.rcu_sync_is_idle.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_sync_is_idle.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_sync_is_idle.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_sync_is_idle.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 35, ptr noundef nonnull @.str.12) #17
  br label %rcu_sync_is_idle.exit.i

rcu_sync_is_idle.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, %entry.rcu_sync_is_idle.exit.i_crit_edge
  %6 = load volatile i32, ptr @cpuset_rwsem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool7.not.i.i, label %do.body7.i, label %if.else.i, !prof !159

do.body7.i:                                       ; preds = %rcu_sync_is_idle.exit.i
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !160
  %8 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpuset_rwsem, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add21.i = add i32 %18, 1
  store i32 %add21.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !161
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then41.i, label %do.body7.i.do.end43.i_crit_edge, !prof !162

do.body7.i.do.end43.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end43.i

if.then41.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end43.i

do.end43.i:                                       ; preds = %if.then41.i, %do.body7.i.do.end43.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #17, !srcloc !163
  br label %percpu_down_read.exit

if.else.i:                                        ; preds = %rcu_sync_is_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %call50.i = tail call zeroext i1 @__percpu_down_read(ptr noundef nonnull @cpuset_rwsem, i1 noundef zeroext false) #17
  br label %percpu_down_read.exit

percpu_down_read.exit:                            ; preds = %if.else.i, %do.end43.i
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !164
  %20 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i1.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuset_read_unlock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0) #17
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpuset_rwsem, i32 0, i32 5), i32 noundef %1) #17
  %2 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !165
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.rcu_sync_is_idle.exit.i_crit_edge

entry.rcu_sync_is_idle.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_sync_is_idle.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_sync_is_idle.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_sync_is_idle.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 35, ptr noundef nonnull @.str.12) #17
  br label %rcu_sync_is_idle.exit.i

rcu_sync_is_idle.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, %entry.rcu_sync_is_idle.exit.i_crit_edge
  %6 = load volatile i32, ptr @cpuset_rwsem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool7.not.i.i, label %do.body3.i, label %do.end49.i, !prof !159

do.body3.i:                                       ; preds = %rcu_sync_is_idle.exit.i
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !160
  %8 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpuset_rwsem, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add17.i = add i32 %18, -1
  store i32 %add17.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !161
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool28.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool28.not.i, label %if.then37.i, label %do.body3.i.do.end39.i_crit_edge, !prof !162

do.body3.i.do.end39.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end39.i

if.then37.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end39.i

do.end39.i:                                       ; preds = %if.then37.i, %do.body3.i.do.end39.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #17, !srcloc !163
  br label %percpu_up_read.exit

do.end49.i:                                       ; preds = %rcu_sync_is_idle.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !166
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !160
  %21 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpuset_rwsem, i32 0, i32 1), align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i3.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i3.i to ptr
  %cpu78.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu78.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu78.i, align 4
  %arrayidx79.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx79.i, align 4
  %add80.i = add i32 %28, %22
  %29 = inttoptr i32 %add80.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add81.i = add i32 %31, -1
  store i32 %add81.i, ptr %29, align 4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !161
  %and.i.i4.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i)
  %tobool92.not.i = icmp eq i32 %and.i.i4.i, 0
  br i1 %tobool92.not.i, label %if.then101.i, label %do.end49.i.do.end104.i_crit_edge, !prof !162

do.end49.i.do.end104.i_crit_edge:                 ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end104.i

if.then101.i:                                     ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end104.i

do.end104.i:                                      ; preds = %if.then101.i, %do.end49.i.do.end104.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #17, !srcloc !163
  %call111.i = tail call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpuset_rwsem, i32 0, i32 2)) #17
  br label %percpu_up_read.exit

percpu_up_read.exit:                              ; preds = %do.end104.i, %do.end39.i
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !167
  %33 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i1.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rebuild_sched_domains() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpus_read_lock() #17
  tail call void @percpu_down_write(ptr noundef nonnull @cpuset_rwsem) #17
  tail call fastcc void @rebuild_sched_domains_locked()
  tail call void @percpu_up_write(ptr noundef nonnull @cpuset_rwsem) #17
  tail call void @cpus_read_unlock() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rebuild_sched_domains_locked() unnamed_addr #0 align 64 {
entry:
  %it.i.i.i = alloca %struct.css_task_iter, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lockdep_assert_cpus_held() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i57 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpuset_rwsem, i32 0, i32 5), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %cmp.not = icmp eq i32 %call.i57, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !162

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1061, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = load i32, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool24.not = icmp eq i32 %1, 0
  br i1 %tobool24.not, label %land.lhs.true, label %if.end.if.then29_crit_edge

if.end.if.then29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then29

land.lhs.true:                                    ; preds = %if.end
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 4), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i = tail call i32 @__bitmap_equal(ptr noundef %2, ptr noundef nonnull @__cpu_active_mask, i32 noundef %3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool.i.not = icmp eq i32 %call13.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.cleanup_crit_edge, label %if.end27

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end27:                                         ; preds = %land.lhs.true
  %.pr = load i32, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool28.not = icmp eq i32 %.pr, 0
  br i1 %tobool28.not, label %if.end27.if.end46_crit_edge, label %if.end27.if.then29_crit_edge

if.end27.if.then29_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then29

if.end27.if.end46_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

if.then29:                                        ; preds = %if.end27.if.then29_crit_edge, %if.end.if.then29_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %if.then29.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then29.rcu_read_lock.exit_crit_edge:           ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then29
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then29.rcu_read_lock.exit_crit_edge
  %call30 = tail call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef nonnull @top_cpuset) #17
  %tobool31.not126 = icmp eq ptr %call30, null
  br i1 %tobool31.not126, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %pos_css.0127 = phi ptr [ %call45, %for.inc.for.body_crit_edge ], [ %call30, %rcu_read_lock.exit.for.body_crit_edge ]
  %flags.i = getelementptr inbounds %struct.cpuset, ptr %pos_css.0127, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i58 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i58, label %for.body.for.inc_crit_edge, label %land.rhs.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.rhs.i:                                       ; preds = %for.body
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos_css.0127, i32 0, i32 7
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i, align 4
  %and.i.i59 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i59)
  %tobool.not.i.i60 = icmp eq i32 %and.i.i59, 0
  br i1 %tobool.not.i.i60, label %is_cpuset_online.exit, label %land.rhs.i.if.then34_crit_edge

land.rhs.i.if.then34_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then34

is_cpuset_online.exit:                            ; preds = %land.rhs.i
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos_css.0127, i32 0, i32 2
  %12 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %refcnt.i.i, align 4
  %and.i.i.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.i, label %is_cpuset_online.exit.if.then34_crit_edge, label %is_cpuset_online.exit.for.inc_crit_edge

is_cpuset_online.exit.for.inc_crit_edge:          ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

is_cpuset_online.exit.if.then34_crit_edge:        ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then34

if.then34:                                        ; preds = %is_cpuset_online.exit.if.then34_crit_edge, %land.rhs.i.if.then34_crit_edge
  %partition_root_state.i = getelementptr inbounds %struct.cpuset, ptr %pos_css.0127, i32 0, i32 13
  %14 = ptrtoint ptr %partition_root_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %partition_root_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp slt i32 %15, 1
  br i1 %cmp.i, label %if.then37, label %if.else.i.i

if.then37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #19
  %call38 = tail call ptr @css_rightmost_descendant(ptr noundef nonnull %pos_css.0127) #17
  br label %for.inc

if.else.i.i:                                      ; preds = %if.then34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %effective_cpus = getelementptr inbounds %struct.cpuset, ptr %pos_css.0127, i32 0, i32 4
  %17 = ptrtoint ptr %effective_cpus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %effective_cpus, align 4
  %call.i.i = tail call i32 @__bitmap_subset(ptr noundef %18, ptr noundef nonnull @__cpu_active_mask, i32 noundef %16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool41.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool41.not, label %if.then42, label %if.else.i.i.for.inc_crit_edge

if.else.i.i.for.inc_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then42:                                        ; preds = %if.else.i.i
  %call.i70 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i70, label %if.then42.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i73

if.then42.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i73:                                ; preds = %if.then42
  %call1.i71 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool.not.i72 = icmp eq i32 %call1.i71, 0
  br i1 %tobool.not.i72, label %land.lhs.true.i73.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i75

land.lhs.true.i73.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i75:                               ; preds = %land.lhs.true.i73
  %.b4.i74 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i74, label %land.lhs.true2.i75.rcu_read_unlock.exit_crit_edge, label %if.then.i76

land.lhs.true2.i75.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i75
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i76:                                      ; preds = %land.lhs.true2.i75
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i76, %land.lhs.true2.i75.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i73.rcu_read_unlock.exit_crit_edge, %if.then42.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %19 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i77 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i77 to ptr
  %preempt_count.i.i.i.i78 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i78, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i78, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br label %cleanup

for.inc:                                          ; preds = %if.else.i.i.for.inc_crit_edge, %if.then37, %is_cpuset_online.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %pos_css.1 = phi ptr [ %pos_css.0127, %if.else.i.i.for.inc_crit_edge ], [ %call38, %if.then37 ], [ %pos_css.0127, %is_cpuset_online.exit.for.inc_crit_edge ], [ %pos_css.0127, %for.body.for.inc_crit_edge ]
  %call45 = tail call ptr @css_next_descendant_pre(ptr noundef %pos_css.1, ptr noundef nonnull @top_cpuset) #17
  %tobool31.not = icmp eq ptr %call45, null
  br i1 %tobool31.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i79 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i79, label %for.end.rcu_read_unlock.exit89_crit_edge, label %land.lhs.true.i82

for.end.rcu_read_unlock.exit89_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit89

land.lhs.true.i82:                                ; preds = %for.end
  %call1.i80 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i80)
  %tobool.not.i81 = icmp eq i32 %call1.i80, 0
  br i1 %tobool.not.i81, label %land.lhs.true.i82.rcu_read_unlock.exit89_crit_edge, label %land.lhs.true2.i84

land.lhs.true.i82.rcu_read_unlock.exit89_crit_edge: ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit89

land.lhs.true2.i84:                               ; preds = %land.lhs.true.i82
  %.b4.i83 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i83, label %land.lhs.true2.i84.rcu_read_unlock.exit89_crit_edge, label %if.then.i85

land.lhs.true2.i84.rcu_read_unlock.exit89_crit_edge: ; preds = %land.lhs.true2.i84
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit89

if.then.i85:                                      ; preds = %land.lhs.true2.i84
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit89

rcu_read_unlock.exit89:                           ; preds = %if.then.i85, %land.lhs.true2.i84.rcu_read_unlock.exit89_crit_edge, %land.lhs.true.i82.rcu_read_unlock.exit89_crit_edge, %for.end.rcu_read_unlock.exit89_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %23 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i86 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i86 to ptr
  %preempt_count.i.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i87, align 4
  %sub.i.i.i88 = add i32 %26, -1
  store volatile i32 %sub.i.i.i88, ptr %preempt_count.i.i.i.i87, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br label %if.end46

if.end46:                                         ; preds = %rcu_read_unlock.exit89, %if.end27.if.end46_crit_edge
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 1), align 8
  %28 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i90 = icmp eq i32 %28, 0
  br i1 %tobool.not.i90, label %if.end46.if.end12.i_crit_edge, label %land.lhs.true.i91

if.end46.if.end12.i_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

land.lhs.true.i91:                                ; preds = %if.end46
  %29 = load i32, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool2.not.i = icmp eq i32 %29, 0
  br i1 %tobool2.not.i, label %if.then.i92, label %land.lhs.true.i91.if.end12.i_crit_edge

land.lhs.true.i91.if.end12.i_crit_edge:           ; preds = %land.lhs.true.i91
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

if.then.i92:                                      ; preds = %land.lhs.true.i91
  %call3.i = tail call ptr @alloc_sched_domains(i32 noundef 1) #17
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.then.i92.generate_sched_domains.exit_crit_edge, label %if.end.i

if.then.i92.generate_sched_domains.exit_crit_edge: ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #19
  br label %generate_sched_domains.exit

if.end.i:                                         ; preds = %if.then.i92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 4) #20
  %tobool7.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then8.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %call7.i.i, align 8
  tail call fastcc void @update_domain_attr_tree(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @top_cpuset) #17
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end.i.if.end9.i_crit_edge
  %32 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call3.i, align 4
  %34 = load ptr, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 4), align 4
  %call10.i = tail call ptr @housekeeping_cpumask(i32 noundef 32) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %35 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i = tail call i32 @__bitmap_and(ptr noundef %33, ptr noundef %34, ptr noundef %call10.i, i32 noundef %35) #17
  br label %generate_sched_domains.exit

if.end12.i:                                       ; preds = %land.lhs.true.i91.if.end12.i_crit_edge, %if.end46.if.end12.i_crit_edge
  %call.i286.i = tail call i32 @static_key_count(ptr noundef nonnull @cpusets_enabled_key) #17
  %add.i.i = add i32 %call.i286.i, 1
  %36 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i.i, i32 4) #17
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %if.end12.i.generate_sched_domains.exit_crit_edge, label %if.end7.i.i, !prof !162

if.end12.i.generate_sched_domains.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %generate_sched_domains.exit

if.end7.i.i:                                      ; preds = %if.end12.i
  %38 = extractvalue { i32, i1 } %36, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %38, i32 noundef 3264) #21
  %tobool15.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool15.not.i, label %if.end7.i.i.generate_sched_domains.exit_crit_edge, label %if.end17.i

if.end7.i.i.generate_sched_domains.exit_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %generate_sched_domains.exit

if.end17.i:                                       ; preds = %if.end7.i.i
  %39 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %42, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i97 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i97, label %if.end17.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end17.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end17.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i98 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i98, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i99

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

if.then.i.i99:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i99, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end17.i.rcu_read_lock.exit.i_crit_edge
  br i1 %tobool.not.i90, label %rcu_read_lock.exit.i.if.end21.i_crit_edge, label %if.then19.i

rcu_read_lock.exit.i.if.end21.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21.i

if.then19.i:                                      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %43 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @top_cpuset, ptr %call8.i.i, align 128
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %rcu_read_lock.exit.i.if.end21.i_crit_edge
  %csn.0.i = phi i32 [ 1, %if.then19.i ], [ 0, %rcu_read_lock.exit.i.if.end21.i_crit_edge ]
  %call22.i = tail call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef nonnull @top_cpuset) #17
  %tobool23.not416.i = icmp eq ptr %call22.i, null
  br i1 %tobool23.not416.i, label %if.end21.i.for.end.i_crit_edge, label %if.end21.i.for.body.i_crit_edge

if.end21.i.for.body.i_crit_edge:                  ; preds = %if.end21.i
  br label %for.body.i

if.end21.i.for.end.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end21.i.for.body.i_crit_edge
  %csn.1418.i = phi i32 [ %csn.3.i, %for.inc.i.for.body.i_crit_edge ], [ %csn.0.i, %if.end21.i.for.body.i_crit_edge ]
  %pos_css.0417.i = phi ptr [ %call60.i, %for.inc.i.for.body.i_crit_edge ], [ %call22.i, %if.end21.i.for.body.i_crit_edge ]
  %flags.i.i100 = getelementptr inbounds %struct.cpuset, ptr %pos_css.0417.i, i32 0, i32 1
  %44 = ptrtoint ptr %flags.i.i100 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %flags.i.i100, align 4
  %and1.i.i289.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i289.i)
  %tobool.not.i290.i = icmp eq i32 %and1.i.i289.i, 0
  br i1 %tobool.not.i290.i, label %for.body.i.for.inc.i_crit_edge, label %land.rhs.i.i101

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.rhs.i.i101:                                  ; preds = %for.body.i
  %flags.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos_css.0417.i, i32 0, i32 7
  %46 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i291.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i291.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i291.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %land.rhs.i.i101.is_cpuset_online.exit.i_crit_edge

land.rhs.i.i101.is_cpuset_online.exit.i_crit_edge: ; preds = %land.rhs.i.i101
  call void @__sanitizer_cov_trace_pc() #19
  br label %is_cpuset_online.exit.i

land.rhs.i.i.i:                                   ; preds = %land.rhs.i.i101
  call void @__sanitizer_cov_trace_pc() #19
  %refcnt.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos_css.0417.i, i32 0, i32 2
  %48 = ptrtoint ptr %refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %refcnt.i.i.i, align 4
  %and.i.i.i.i = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br label %is_cpuset_online.exit.i

is_cpuset_online.exit.i:                          ; preds = %land.rhs.i.i.i, %land.rhs.i.i101.is_cpuset_online.exit.i_crit_edge
  %50 = phi i1 [ true, %land.rhs.i.i101.is_cpuset_online.exit.i_crit_edge ], [ %tobool.i.i.i.i, %land.rhs.i.i.i ]
  %cmp.i102 = icmp ne ptr %pos_css.0417.i, @top_cpuset
  %51 = and i1 %cmp.i102, %50
  br i1 %51, label %if.end28.i, label %is_cpuset_online.exit.i.for.inc.i_crit_edge

is_cpuset_online.exit.i.for.inc.i_crit_edge:      ; preds = %is_cpuset_online.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.end28.i:                                       ; preds = %is_cpuset_online.exit.i
  %cpus_allowed.i = getelementptr inbounds %struct.cpuset, ptr %pos_css.0417.i, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %52 = load i32, ptr @nr_cpu_ids, align 4
  %53 = ptrtoint ptr %cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cpus_allowed.i, align 4
  %call.i.i298.i = tail call i32 @_find_first_bit_be(ptr noundef %54, i32 noundef %52) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i298.i, i32 %52)
  %cmp4.i.i.i = icmp eq i32 %call.i.i298.i, %52
  br i1 %cmp4.i.i.i, label %if.end28.i.if.end38.i_crit_edge, label %land.lhs.true30.i

if.end28.i.if.end38.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38.i

land.lhs.true30.i:                                ; preds = %if.end28.i
  %55 = ptrtoint ptr %flags.i.i100 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %flags.i.i100, align 4
  %57 = and i32 %56, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool32.not.i = icmp eq i32 %57, 0
  br i1 %tobool32.not.i, label %land.lhs.true30.i.for.inc.i_crit_edge, label %land.lhs.true33.i

land.lhs.true30.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true33.i:                                ; preds = %land.lhs.true30.i
  %58 = ptrtoint ptr %cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cpus_allowed.i, align 4
  %call35.i = tail call ptr @housekeeping_cpumask(i32 noundef 32) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %60 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i312.i = tail call i32 @__bitmap_intersects(ptr noundef %59, ptr noundef %call35.i, i32 noundef %60) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i312.i)
  %tobool.i.not.i = icmp eq i32 %call.i.i312.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true33.i.for.inc.i_crit_edge, label %land.lhs.true33.i.if.end38.i_crit_edge

land.lhs.true33.i.if.end38.i_crit_edge:           ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38.i

land.lhs.true33.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.end38.i:                                       ; preds = %land.lhs.true33.i.if.end38.i_crit_edge, %if.end28.i.if.end38.i_crit_edge
  br i1 %tobool.not.i90, label %if.end38.i.if.end45.i_crit_edge, label %if.else.i.i322.i

if.end38.i.if.end45.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45.i

if.else.i.i322.i:                                 ; preds = %if.end38.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %61 = load i32, ptr @nr_cpu_ids, align 4
  %62 = load ptr, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 4), align 4
  %63 = ptrtoint ptr %cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cpus_allowed.i, align 4
  %call.i.i321.i = tail call i32 @__bitmap_subset(ptr noundef %64, ptr noundef %62, i32 noundef %61) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i321.i)
  %tobool43.not.i = icmp eq i32 %call.i.i321.i, 0
  br i1 %tobool43.not.i, label %if.else.i.i322.i.if.end45.i_crit_edge, label %if.else.i.i322.i.for.inc.i_crit_edge

if.else.i.i322.i.for.inc.i_crit_edge:             ; preds = %if.else.i.i322.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.else.i.i322.i.if.end45.i_crit_edge:            ; preds = %if.else.i.i322.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else.i.i322.i.if.end45.i_crit_edge, %if.end38.i.if.end45.i_crit_edge
  %65 = ptrtoint ptr %flags.i.i100 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %flags.i.i100, align 4
  %67 = and i32 %66, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool47.not.i = icmp eq i32 %67, 0
  br i1 %tobool47.not.i, label %if.end45.i.if.end53.i_crit_edge, label %cpumask_empty.exit337.i

if.end45.i.if.end53.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53.i

cpumask_empty.exit337.i:                          ; preds = %if.end45.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %68 = load i32, ptr @nr_cpu_ids, align 4
  %effective_cpus.i = getelementptr inbounds %struct.cpuset, ptr %pos_css.0417.i, i32 0, i32 4
  %69 = ptrtoint ptr %effective_cpus.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %effective_cpus.i, align 4
  %call.i.i333.i = tail call i32 @_find_first_bit_be(ptr noundef %70, i32 noundef %68) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i333.i, i32 %68)
  %cmp4.i.i334.i = icmp eq i32 %call.i.i333.i, %68
  br i1 %cmp4.i.i334.i, label %cpumask_empty.exit337.i.if.end53.i_crit_edge, label %if.then50.i

cpumask_empty.exit337.i.if.end53.i_crit_edge:     ; preds = %cpumask_empty.exit337.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53.i

if.then50.i:                                      ; preds = %cpumask_empty.exit337.i
  call void @__sanitizer_cov_trace_pc() #19
  %inc51.i = add i32 %csn.1418.i, 1
  %arrayidx52.i = getelementptr ptr, ptr %call8.i.i, i32 %csn.1418.i
  %71 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %pos_css.0417.i, ptr %arrayidx52.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then50.i, %cpumask_empty.exit337.i.if.end53.i_crit_edge, %if.end45.i.if.end53.i_crit_edge
  %csn.2.i = phi i32 [ %csn.1418.i, %cpumask_empty.exit337.i.if.end53.i_crit_edge ], [ %inc51.i, %if.then50.i ], [ %csn.1418.i, %if.end45.i.if.end53.i_crit_edge ]
  %partition_root_state.i.i = getelementptr inbounds %struct.cpuset, ptr %pos_css.0417.i, i32 0, i32 13
  %72 = ptrtoint ptr %partition_root_state.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %partition_root_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp.i.i = icmp slt i32 %73, 1
  br i1 %cmp.i.i, label %if.then56.i, label %if.end53.i.for.inc.i_crit_edge

if.end53.i.for.inc.i_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.then56.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #19
  %call57.i = tail call ptr @css_rightmost_descendant(ptr noundef nonnull %pos_css.0417.i) #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then56.i, %if.end53.i.for.inc.i_crit_edge, %if.else.i.i322.i.for.inc.i_crit_edge, %land.lhs.true33.i.for.inc.i_crit_edge, %land.lhs.true30.i.for.inc.i_crit_edge, %is_cpuset_online.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %pos_css.1.i = phi ptr [ %pos_css.0417.i, %if.else.i.i322.i.for.inc.i_crit_edge ], [ %pos_css.0417.i, %if.end53.i.for.inc.i_crit_edge ], [ %call57.i, %if.then56.i ], [ %pos_css.0417.i, %land.lhs.true33.i.for.inc.i_crit_edge ], [ %pos_css.0417.i, %land.lhs.true30.i.for.inc.i_crit_edge ], [ %pos_css.0417.i, %is_cpuset_online.exit.i.for.inc.i_crit_edge ], [ %pos_css.0417.i, %for.body.i.for.inc.i_crit_edge ]
  %csn.3.i = phi i32 [ %csn.1418.i, %if.else.i.i322.i.for.inc.i_crit_edge ], [ %csn.2.i, %if.end53.i.for.inc.i_crit_edge ], [ %csn.2.i, %if.then56.i ], [ %csn.1418.i, %land.lhs.true33.i.for.inc.i_crit_edge ], [ %csn.1418.i, %land.lhs.true30.i.for.inc.i_crit_edge ], [ %csn.1418.i, %is_cpuset_online.exit.i.for.inc.i_crit_edge ], [ %csn.1418.i, %for.body.i.for.inc.i_crit_edge ]
  %call60.i = tail call ptr @css_next_descendant_pre(ptr noundef %pos_css.1.i, ptr noundef nonnull @top_cpuset) #17
  %tobool23.not.i = icmp eq ptr %call60.i, null
  br i1 %tobool23.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end21.i.for.end.i_crit_edge
  %csn.1.lcssa.i = phi i32 [ %csn.0.i, %if.end21.i.for.end.i_crit_edge ], [ %csn.3.i, %for.inc.i.for.end.i_crit_edge ]
  %call.i338.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i338.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i341.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i

land.lhs.true.i341.i:                             ; preds = %for.end.i
  %call1.i339.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i339.i)
  %tobool.not.i340.i = icmp eq i32 %call1.i339.i, 0
  br i1 %tobool.not.i340.i, label %land.lhs.true.i341.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i343.i

land.lhs.true.i341.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i341.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i343.i:                            ; preds = %land.lhs.true.i341.i
  %.b4.i342.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i342.i, label %land.lhs.true2.i343.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i344.i

land.lhs.true2.i343.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i343.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i

if.then.i344.i:                                   ; preds = %land.lhs.true2.i343.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i344.i, %land.lhs.true2.i343.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i341.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %74 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i345.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i.i.i345.i to ptr
  %preempt_count.i.i.i.i346.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i.i.i346.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i.i.i346.i, align 4
  %sub.i.i.i.i = add i32 %77, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i346.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %csn.1.lcssa.i)
  %cmp62420.i = icmp sgt i32 %csn.1.lcssa.i, 0
  br i1 %cmp62420.i, label %rcu_read_unlock.exit.i.for.body63.i_crit_edge, label %rcu_read_unlock.exit.i.for.end106.i_crit_edge

rcu_read_unlock.exit.i.for.end106.i_crit_edge:    ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end106.i

rcu_read_unlock.exit.i.for.body63.i_crit_edge:    ; preds = %rcu_read_unlock.exit.i
  br label %for.body63.i

for.body63.i:                                     ; preds = %for.body63.i.for.body63.i_crit_edge, %rcu_read_unlock.exit.i.for.body63.i_crit_edge
  %i.0421.i = phi i32 [ %inc66.i, %for.body63.i.for.body63.i_crit_edge ], [ 0, %rcu_read_unlock.exit.i.for.body63.i_crit_edge ]
  %arrayidx64.i = getelementptr ptr, ptr %call8.i.i, i32 %i.0421.i
  %78 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx64.i, align 4
  %pn.i = getelementptr inbounds %struct.cpuset, ptr %79, i32 0, i32 10
  %80 = ptrtoint ptr %pn.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %i.0421.i, ptr %pn.i, align 4
  %inc66.i = add nuw nsw i32 %i.0421.i, 1
  %exitcond.not.i = icmp eq i32 %inc66.i, %csn.1.lcssa.i
  br i1 %exitcond.not.i, label %for.body63.i.for.body70.lr.ph.i_crit_edge, label %for.body63.i.for.body63.i_crit_edge

for.body63.i.for.body63.i_crit_edge:              ; preds = %for.body63.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body63.i

for.body63.i.for.body70.lr.ph.i_crit_edge:        ; preds = %for.body63.i
  br label %for.body70.lr.ph.i

for.body70.lr.ph.i:                               ; preds = %cleanup100.i, %for.body63.i.for.body70.lr.ph.i_crit_edge
  %ndoms.0430.i = phi i32 [ %dec.i, %cleanup100.i ], [ %csn.1.lcssa.i, %for.body63.i.for.body70.lr.ph.i_crit_edge ]
  br label %for.body75.lr.ph.i

for.body75.lr.ph.i:                               ; preds = %for.inc104.i.for.body75.lr.ph.i_crit_edge, %for.body70.lr.ph.i
  %i.1425.i = phi i32 [ 0, %for.body70.lr.ph.i ], [ %inc105.i, %for.inc104.i.for.body75.lr.ph.i_crit_edge ]
  %arrayidx71.i = getelementptr ptr, ptr %call8.i.i, i32 %i.1425.i
  %81 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx71.i, align 4
  %pn72.i = getelementptr inbounds %struct.cpuset, ptr %82, i32 0, i32 10
  %83 = ptrtoint ptr %pn72.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pn72.i, align 4
  %effective_cpus.i.i = getelementptr inbounds %struct.cpuset, ptr %82, i32 0, i32 4
  br label %for.body75.i

for.body75.i:                                     ; preds = %for.inc97.i.for.body75.i_crit_edge, %for.body75.lr.ph.i
  %j.0423.i = phi i32 [ 0, %for.body75.lr.ph.i ], [ %inc98.i, %for.inc97.i.for.body75.i_crit_edge ]
  %arrayidx76.i = getelementptr ptr, ptr %call8.i.i, i32 %j.0423.i
  %85 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx76.i, align 4
  %pn77.i = getelementptr inbounds %struct.cpuset, ptr %86, i32 0, i32 10
  %87 = ptrtoint ptr %pn77.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pn77.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %88)
  %cmp78.not.i = icmp eq i32 %84, %88
  br i1 %cmp78.not.i, label %for.body75.i.for.inc97.i_crit_edge, label %if.else.i.i.i.i

for.body75.i.for.inc97.i_crit_edge:               ; preds = %for.body75.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc97.i

if.else.i.i.i.i:                                  ; preds = %for.body75.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %89 = load i32, ptr @nr_cpu_ids, align 4
  %effective_cpus1.i.i = getelementptr inbounds %struct.cpuset, ptr %86, i32 0, i32 4
  %90 = ptrtoint ptr %effective_cpus1.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %effective_cpus1.i.i, align 4
  %92 = ptrtoint ptr %effective_cpus.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %effective_cpus.i.i, align 4
  %call.i.i.i.i = tail call i32 @__bitmap_intersects(ptr noundef %93, ptr noundef %91, i32 noundef %89) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.else.i.i.i.i.for.inc97.i_crit_edge, label %if.else.i.i.i.i.for.body85.i_crit_edge

if.else.i.i.i.i.for.body85.i_crit_edge:           ; preds = %if.else.i.i.i.i
  br label %for.body85.i

if.else.i.i.i.i.for.inc97.i_crit_edge:            ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc97.i

for.body85.i:                                     ; preds = %if.end91.i.for.body85.i_crit_edge, %if.else.i.i.i.i.for.body85.i_crit_edge
  %k.0429.i = phi i32 [ %inc93.i, %if.end91.i.for.body85.i_crit_edge ], [ 0, %if.else.i.i.i.i.for.body85.i_crit_edge ]
  %arrayidx86.i = getelementptr ptr, ptr %call8.i.i, i32 %k.0429.i
  %94 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx86.i, align 4
  %pn87.i = getelementptr inbounds %struct.cpuset, ptr %95, i32 0, i32 10
  %96 = ptrtoint ptr %pn87.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pn87.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %88)
  %cmp88.i = icmp eq i32 %97, %88
  br i1 %cmp88.i, label %if.then89.i, label %for.body85.i.if.end91.i_crit_edge

for.body85.i.if.end91.i_crit_edge:                ; preds = %for.body85.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end91.i

if.then89.i:                                      ; preds = %for.body85.i
  call void @__sanitizer_cov_trace_pc() #19
  %98 = ptrtoint ptr %pn87.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %84, ptr %pn87.i, align 4
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then89.i, %for.body85.i.if.end91.i_crit_edge
  %inc93.i = add nuw nsw i32 %k.0429.i, 1
  %exitcond449.not.i = icmp eq i32 %inc93.i, %csn.1.lcssa.i
  br i1 %exitcond449.not.i, label %cleanup100.i, label %if.end91.i.for.body85.i_crit_edge

if.end91.i.for.body85.i_crit_edge:                ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body85.i

for.inc97.i:                                      ; preds = %if.else.i.i.i.i.for.inc97.i_crit_edge, %for.body75.i.for.inc97.i_crit_edge
  %inc98.i = add nuw nsw i32 %j.0423.i, 1
  %exitcond447.not.i = icmp eq i32 %inc98.i, %csn.1.lcssa.i
  br i1 %exitcond447.not.i, label %for.inc104.i, label %for.inc97.i.for.body75.i_crit_edge

for.inc97.i.for.body75.i_crit_edge:               ; preds = %for.inc97.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body75.i

cleanup100.i:                                     ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #19
  %dec.i = add i32 %ndoms.0430.i, -1
  br label %for.body70.lr.ph.i

for.inc104.i:                                     ; preds = %for.inc97.i
  %inc105.i = add nuw nsw i32 %i.1425.i, 1
  %exitcond448.not.i = icmp eq i32 %inc105.i, %csn.1.lcssa.i
  br i1 %exitcond448.not.i, label %for.inc104.i.for.end106.i_crit_edge, label %for.inc104.i.for.body75.lr.ph.i_crit_edge

for.inc104.i.for.body75.lr.ph.i_crit_edge:        ; preds = %for.inc104.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body75.lr.ph.i

for.inc104.i.for.end106.i_crit_edge:              ; preds = %for.inc104.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end106.i

for.end106.i:                                     ; preds = %for.inc104.i.for.end106.i_crit_edge, %rcu_read_unlock.exit.i.for.end106.i_crit_edge
  %ndoms.0.lcssa.i = phi i32 [ %csn.1.lcssa.i, %rcu_read_unlock.exit.i.for.end106.i_crit_edge ], [ %ndoms.0430.i, %for.inc104.i.for.end106.i_crit_edge ]
  %call107.i = tail call ptr @alloc_sched_domains(i32 noundef %ndoms.0.lcssa.i) #17
  %tobool108.not.i = icmp eq ptr %call107.i, null
  br i1 %tobool108.not.i, label %for.end106.i.generate_sched_domains.exit_crit_edge, label %if.end110.i

for.end106.i.generate_sched_domains.exit_crit_edge: ; preds = %for.end106.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %generate_sched_domains.exit

if.end110.i:                                      ; preds = %for.end106.i
  %99 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %ndoms.0.lcssa.i, i32 4) #17
  %100 = extractvalue { i32, i1 } %99, 1
  br i1 %100, label %if.end110.i.kmalloc_array.exit382.i_crit_edge, label %if.end7.i380.i, !prof !162

if.end110.i.kmalloc_array.exit382.i_crit_edge:    ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kmalloc_array.exit382.i

if.end7.i380.i:                                   ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #19
  %101 = extractvalue { i32, i1 } %99, 0
  %call8.i379.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %101, i32 noundef 3264) #21
  br label %kmalloc_array.exit382.i

kmalloc_array.exit382.i:                          ; preds = %if.end7.i380.i, %if.end110.i.kmalloc_array.exit382.i_crit_edge
  %retval.0.i381.i = phi ptr [ %call8.i379.i, %if.end7.i380.i ], [ null, %if.end110.i.kmalloc_array.exit382.i_crit_edge ]
  br i1 %cmp62420.i, label %for.body114.lr.ph.i, label %kmalloc_array.exit382.i.do.body165.i_crit_edge

kmalloc_array.exit382.i.do.body165.i_crit_edge:   ; preds = %kmalloc_array.exit382.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body165.i

for.body114.lr.ph.i:                              ; preds = %kmalloc_array.exit382.i
  %tobool131.not.i = icmp eq ptr %retval.0.i381.i, null
  br label %for.body114.i

for.body114.i:                                    ; preds = %cleanup157.i.for.body114.i_crit_edge, %for.body114.lr.ph.i
  %i.2438.i = phi i32 [ 0, %for.body114.lr.ph.i ], [ %inc163.i, %cleanup157.i.for.body114.i_crit_edge ]
  %nslot.0435.i = phi i32 [ 0, %for.body114.lr.ph.i ], [ %nslot.1.i, %cleanup157.i.for.body114.i_crit_edge ]
  %arrayidx116.i = getelementptr ptr, ptr %call8.i.i, i32 %i.2438.i
  %102 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx116.i, align 4
  %pn118.i = getelementptr inbounds %struct.cpuset, ptr %103, i32 0, i32 10
  %104 = ptrtoint ptr %pn118.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pn118.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp119.i = icmp slt i32 %105, 0
  br i1 %cmp119.i, label %for.body114.i.cleanup157.i_crit_edge, label %if.end121.i

for.body114.i.cleanup157.i_crit_edge:             ; preds = %for.body114.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup157.i

if.end121.i:                                      ; preds = %for.body114.i
  %arrayidx122.i = getelementptr ptr, ptr %call107.i, i32 %nslot.0435.i
  %106 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx122.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %nslot.0435.i, i32 %ndoms.0.lcssa.i)
  %cmp123.i = icmp eq i32 %nslot.0435.i, %ndoms.0.lcssa.i
  br i1 %cmp123.i, label %if.then124.i, label %if.end130.i

if.then124.i:                                     ; preds = %if.end121.i
  %108 = load i32, ptr @generate_sched_domains.warnings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool125.not.i = icmp eq i32 %108, 0
  br i1 %tobool125.not.i, label %if.then124.i.cleanup157.i_crit_edge, label %do.end.i

if.then124.i.cleanup157.i_crit_edge:              ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup157.i

do.end.i:                                         ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #19
  %call127.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %ndoms.0.lcssa.i, i32 noundef %ndoms.0.lcssa.i, i32 noundef %csn.1.lcssa.i, i32 noundef %i.2438.i, i32 noundef %105) #22
  %109 = load i32, ptr @generate_sched_domains.warnings, align 4
  %dec128.i = add i32 %109, -1
  store i32 %dec128.i, ptr @generate_sched_domains.warnings, align 4
  br label %cleanup157.i

if.end130.i:                                      ; preds = %if.end121.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %110 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i383.i = add i32 %110, 31
  %111 = lshr i32 %sub.i.i383.i, 3
  %mul.i.i.i = and i32 %111, 536870908
  %112 = call ptr @memset(ptr %107, i32 0, i32 %mul.i.i.i)
  br i1 %tobool131.not.i, label %if.end130.i.for.body138.lr.ph.i_crit_edge, label %if.then132.i

if.end130.i.for.body138.lr.ph.i_crit_edge:        ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body138.lr.ph.i

if.then132.i:                                     ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr %struct.sched_domain_attr, ptr %retval.0.i381.i, i32 %nslot.0435.i
  %113 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %add.ptr.i, align 4
  br label %for.body138.lr.ph.i

for.body138.lr.ph.i:                              ; preds = %if.then132.i, %if.end130.i.for.body138.lr.ph.i_crit_edge
  %add.ptr149.i = getelementptr %struct.sched_domain_attr, ptr %retval.0.i381.i, i32 %nslot.0435.i
  br label %for.body138.i

for.body138.i:                                    ; preds = %if.end152.i.for.body138.i_crit_edge, %for.body138.lr.ph.i
  %j.1433.i = phi i32 [ %i.2438.i, %for.body138.lr.ph.i ], [ %inc154.i, %if.end152.i.for.body138.i_crit_edge ]
  %arrayidx140.i = getelementptr ptr, ptr %call8.i.i, i32 %j.1433.i
  %114 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx140.i, align 4
  %pn141.i = getelementptr inbounds %struct.cpuset, ptr %115, i32 0, i32 10
  %116 = ptrtoint ptr %pn141.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pn141.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %117)
  %cmp142.i = icmp eq i32 %105, %117
  br i1 %cmp142.i, label %if.else.i.i385.i, label %for.body138.i.if.end152.i_crit_edge

for.body138.i.if.end152.i_crit_edge:              ; preds = %for.body138.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end152.i

if.else.i.i385.i:                                 ; preds = %for.body138.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %118 = load i32, ptr @nr_cpu_ids, align 4
  %effective_cpus144.i = getelementptr inbounds %struct.cpuset, ptr %115, i32 0, i32 4
  %119 = ptrtoint ptr %effective_cpus144.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %effective_cpus144.i, align 4
  tail call void @__bitmap_or(ptr noundef %107, ptr noundef %107, ptr noundef %120, i32 noundef %118) #17
  %call145.i = tail call ptr @housekeeping_cpumask(i32 noundef 32) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %121 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i394.i = tail call i32 @__bitmap_and(ptr noundef %107, ptr noundef %107, ptr noundef %call145.i, i32 noundef %121) #17
  br i1 %tobool131.not.i, label %if.else.i.i385.i.if.end150.i_crit_edge, label %if.then148.i

if.else.i.i385.i.if.end150.i_crit_edge:           ; preds = %if.else.i.i385.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end150.i

if.then148.i:                                     ; preds = %if.else.i.i385.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @update_domain_attr_tree(ptr noundef %add.ptr149.i, ptr noundef %115) #17
  br label %if.end150.i

if.end150.i:                                      ; preds = %if.then148.i, %if.else.i.i385.i.if.end150.i_crit_edge
  %122 = ptrtoint ptr %pn141.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -1, ptr %pn141.i, align 4
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.end150.i, %for.body138.i.if.end152.i_crit_edge
  %inc154.i = add nuw i32 %j.1433.i, 1
  %exitcond450.not.i = icmp eq i32 %inc154.i, %csn.1.lcssa.i
  br i1 %exitcond450.not.i, label %for.end155.i, label %if.end152.i.for.body138.i_crit_edge

if.end152.i.for.body138.i_crit_edge:              ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body138.i

for.end155.i:                                     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #19
  %inc156.i = add i32 %nslot.0435.i, 1
  br label %cleanup157.i

cleanup157.i:                                     ; preds = %for.end155.i, %do.end.i, %if.then124.i.cleanup157.i_crit_edge, %for.body114.i.cleanup157.i_crit_edge
  %nslot.1.i = phi i32 [ %inc156.i, %for.end155.i ], [ %nslot.0435.i, %for.body114.i.cleanup157.i_crit_edge ], [ %ndoms.0.lcssa.i, %do.end.i ], [ %ndoms.0.lcssa.i, %if.then124.i.cleanup157.i_crit_edge ]
  %inc163.i = add nuw nsw i32 %i.2438.i, 1
  %exitcond451.not.i = icmp eq i32 %inc163.i, %csn.1.lcssa.i
  br i1 %exitcond451.not.i, label %cleanup157.i.do.body165.i_crit_edge, label %cleanup157.i.for.body114.i_crit_edge

cleanup157.i.for.body114.i_crit_edge:             ; preds = %cleanup157.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body114.i

cleanup157.i.do.body165.i_crit_edge:              ; preds = %cleanup157.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body165.i

do.body165.i:                                     ; preds = %cleanup157.i.do.body165.i_crit_edge, %kmalloc_array.exit382.i.do.body165.i_crit_edge
  %nslot.0.lcssa.i = phi i32 [ 0, %kmalloc_array.exit382.i.do.body165.i_crit_edge ], [ %nslot.1.i, %cleanup157.i.do.body165.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nslot.0.lcssa.i, i32 %ndoms.0.lcssa.i)
  %cmp166.not.i = icmp eq i32 %nslot.0.lcssa.i, %ndoms.0.lcssa.i
  br i1 %cmp166.not.i, label %do.body165.i.generate_sched_domains.exit_crit_edge, label %do.body170.i, !prof !159

do.body165.i.generate_sched_domains.exit_crit_edge: ; preds = %do.body165.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %generate_sched_domains.exit

do.body170.i:                                     ; preds = %do.body165.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cpuset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 965, 0\0A.popsection", ""() #17, !srcloc !170
  unreachable

generate_sched_domains.exit:                      ; preds = %do.body165.i.generate_sched_domains.exit_crit_edge, %for.end106.i.generate_sched_domains.exit_crit_edge, %if.end7.i.i.generate_sched_domains.exit_crit_edge, %if.end12.i.generate_sched_domains.exit_crit_edge, %if.end9.i, %if.then.i92.generate_sched_domains.exit_crit_edge
  %doms.0.i = phi ptr [ %call107.i, %do.body165.i.generate_sched_domains.exit_crit_edge ], [ null, %for.end106.i.generate_sched_domains.exit_crit_edge ], [ null, %if.end7.i.i.generate_sched_domains.exit_crit_edge ], [ null, %if.then.i92.generate_sched_domains.exit_crit_edge ], [ %call3.i, %if.end9.i ], [ null, %if.end12.i.generate_sched_domains.exit_crit_edge ]
  %dattr.0.i = phi ptr [ %retval.0.i381.i, %do.body165.i.generate_sched_domains.exit_crit_edge ], [ null, %for.end106.i.generate_sched_domains.exit_crit_edge ], [ null, %if.end7.i.i.generate_sched_domains.exit_crit_edge ], [ null, %if.then.i92.generate_sched_domains.exit_crit_edge ], [ %call7.i.i, %if.end9.i ], [ null, %if.end12.i.generate_sched_domains.exit_crit_edge ]
  %ndoms.5.i = phi i32 [ %ndoms.0.lcssa.i, %do.body165.i.generate_sched_domains.exit_crit_edge ], [ %ndoms.0.lcssa.i, %for.end106.i.generate_sched_domains.exit_crit_edge ], [ 0, %if.end7.i.i.generate_sched_domains.exit_crit_edge ], [ 1, %if.then.i92.generate_sched_domains.exit_crit_edge ], [ 1, %if.end9.i ], [ 0, %if.end12.i.generate_sched_domains.exit_crit_edge ]
  %csa.0.i = phi ptr [ %call8.i.i, %do.body165.i.generate_sched_domains.exit_crit_edge ], [ %call8.i.i, %for.end106.i.generate_sched_domains.exit_crit_edge ], [ null, %if.end7.i.i.generate_sched_domains.exit_crit_edge ], [ null, %if.then.i92.generate_sched_domains.exit_crit_edge ], [ null, %if.end9.i ], [ null, %if.end12.i.generate_sched_domains.exit_crit_edge ]
  tail call void @kfree(ptr noundef %csa.0.i) #17
  %cmp179.i = icmp eq ptr %doms.0.i, null
  %spec.select.i = select i1 %cmp179.i, i32 1, i32 %ndoms.5.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @sched_domains_mutex, i32 noundef 0) #17
  tail call void @partition_sched_domains_locked(i32 noundef %spec.select.i, ptr noundef %doms.0.i, ptr noundef %dattr.0.i) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %123 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool.not.i.i103 = icmp eq i32 %123, 0
  br i1 %tobool.not.i.i103, label %generate_sched_domains.exit.if.end.i.i105_crit_edge, label %land.rhs.i.i104

generate_sched_domains.exit.if.end.i.i105_crit_edge: ; preds = %generate_sched_domains.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i105

land.rhs.i.i104:                                  ; preds = %generate_sched_domains.exit
  %call.i95.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpuset_rwsem, i32 0, i32 5), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i95.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i104.if.end.i.i105_crit_edge, !prof !162

land.rhs.i.i104.if.end.i.i105_crit_edge:          ; preds = %land.rhs.i.i104
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i105

do.end.i.i:                                       ; preds = %land.rhs.i.i104
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1000, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i.i105

if.end.i.i105:                                    ; preds = %do.end.i.i, %land.rhs.i.i104.if.end.i.i105_crit_edge, %generate_sched_domains.exit.if.end.i.i105_crit_edge
  tail call void @lockdep_assert_cpus_held() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %124 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool26.not.i.i = icmp eq i32 %124, 0
  br i1 %tobool26.not.i.i, label %if.end.i.i105.if.end54.i.i_crit_edge, label %land.rhs27.i.i

if.end.i.i105.if.end54.i.i_crit_edge:             ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end54.i.i

land.rhs27.i.i:                                   ; preds = %if.end.i.i105
  %call.i96.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @sched_domains_mutex, i32 0, i32 5), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96.i.i)
  %cmp29.not.i.i = icmp eq i32 %call.i96.i.i, 0
  br i1 %cmp29.not.i.i, label %do.end48.i.i, label %land.rhs27.i.i.if.end54.i.i_crit_edge, !prof !162

land.rhs27.i.i.if.end54.i.i_crit_edge:            ; preds = %land.rhs27.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end54.i.i

do.end48.i.i:                                     ; preds = %land.rhs27.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1002, i32 noundef 9, ptr noundef null) #17
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %do.end48.i.i, %land.rhs27.i.i.if.end54.i.i_crit_edge, %if.end.i.i105.if.end54.i.i_crit_edge
  %125 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i.i.i = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %128, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i.i106 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i.i106, label %if.end54.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end54.i.i.rcu_read_lock.exit.i.i_crit_edge:    ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end54.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i107 = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i107, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i108

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i108:                                 ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i108, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end54.i.i.rcu_read_lock.exit.i.i_crit_edge
  tail call void @dl_clear_root_domain(ptr noundef nonnull @def_root_domain) #17
  %call64.i.i = tail call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef nonnull @top_cpuset) #17
  %tobool65.not124.i.i = icmp eq ptr %call64.i.i, null
  br i1 %tobool65.not124.i.i, label %rcu_read_lock.exit.i.i.for.end.i.i_crit_edge, label %rcu_read_lock.exit.i.i.for.body.i.i_crit_edge

rcu_read_lock.exit.i.i.for.body.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  br label %for.body.i.i

rcu_read_lock.exit.i.i.for.end.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rcu_read_lock.exit.i.i.for.body.i.i_crit_edge
  %pos_css.0125.i.i = phi ptr [ %call75.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call64.i.i, %rcu_read_lock.exit.i.i.for.body.i.i_crit_edge ]
  %flags.i.i.i109 = getelementptr inbounds %struct.cpuset, ptr %pos_css.0125.i.i, i32 0, i32 1
  %129 = ptrtoint ptr %flags.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %flags.i.i.i109, align 4
  %and1.i.i.i.i = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.i97.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.i97.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.rhs.i.i.i112

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

land.rhs.i.i.i112:                                ; preds = %for.body.i.i
  %flags.i.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos_css.0125.i.i, i32 0, i32 7
  %131 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %flags.i.i.i.i, align 4
  %and.i.i.i.i110 = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i110)
  %tobool.not.i.i.i.i111 = icmp eq i32 %and.i.i.i.i110, 0
  br i1 %tobool.not.i.i.i.i111, label %is_cpuset_online.exit.i.i, label %land.rhs.i.i.i112.cpumask_empty.exit.i.i_crit_edge

land.rhs.i.i.i112.cpumask_empty.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i112
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpumask_empty.exit.i.i

is_cpuset_online.exit.i.i:                        ; preds = %land.rhs.i.i.i112
  %refcnt.i.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos_css.0125.i.i, i32 0, i32 2
  %133 = ptrtoint ptr %refcnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %refcnt.i.i.i.i, align 4
  %and.i.i.i.i.i113 = and i32 %134, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i113)
  %tobool.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i113, 0
  br i1 %tobool.i.i.i.i.i, label %is_cpuset_online.exit.i.i.cpumask_empty.exit.i.i_crit_edge, label %is_cpuset_online.exit.i.i.for.inc.i.i_crit_edge

is_cpuset_online.exit.i.i.for.inc.i.i_crit_edge:  ; preds = %is_cpuset_online.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

is_cpuset_online.exit.i.i.cpumask_empty.exit.i.i_crit_edge: ; preds = %is_cpuset_online.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpumask_empty.exit.i.i

cpumask_empty.exit.i.i:                           ; preds = %is_cpuset_online.exit.i.i.cpumask_empty.exit.i.i_crit_edge, %land.rhs.i.i.i112.cpumask_empty.exit.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %135 = load i32, ptr @nr_cpu_ids, align 4
  %effective_cpus.i.i114 = getelementptr inbounds %struct.cpuset, ptr %pos_css.0125.i.i, i32 0, i32 4
  %136 = ptrtoint ptr %effective_cpus.i.i114 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %effective_cpus.i.i114, align 4
  %call.i.i.i.i119 = call i32 @_find_first_bit_be(ptr noundef %137, i32 noundef %135) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i.i119, i32 %135)
  %cmp4.i.i.i.i = icmp eq i32 %call.i.i.i.i119, %135
  br i1 %cmp4.i.i.i.i, label %if.then70.i.i, label %if.end72.i.i

if.then70.i.i:                                    ; preds = %cpumask_empty.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call71.i.i = call ptr @css_rightmost_descendant(ptr noundef nonnull %pos_css.0125.i.i) #17
  br label %for.inc.i.i

if.end72.i.i:                                     ; preds = %cpumask_empty.exit.i.i
  call fastcc void @css_get(ptr noundef nonnull %pos_css.0125.i.i) #17
  %call.i100.i.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i100.i.i, label %if.end72.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i103.i.i

if.end72.i.i.rcu_read_unlock.exit.i.i_crit_edge:  ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i103.i.i:                           ; preds = %if.end72.i.i
  %call1.i101.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101.i.i)
  %tobool.not.i102.i.i = icmp eq i32 %call1.i101.i.i, 0
  br i1 %tobool.not.i102.i.i, label %land.lhs.true.i103.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i105.i.i

land.lhs.true.i103.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i103.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i105.i.i:                          ; preds = %land.lhs.true.i103.i.i
  %.b4.i104.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i104.i.i, label %land.lhs.true2.i105.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i106.i.i

land.lhs.true2.i105.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i105.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i.i

if.then.i106.i.i:                                 ; preds = %land.lhs.true2.i105.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i106.i.i, %land.lhs.true2.i105.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i103.i.i.rcu_read_unlock.exit.i.i_crit_edge, %if.end72.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %138 = call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i107.i.i = and i32 %138, -16384
  %139 = inttoptr i32 %and.i.i.i.i.i107.i.i to ptr
  %preempt_count.i.i.i.i108.i.i = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %preempt_count.i.i.i.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %preempt_count.i.i.i.i108.i.i, align 4
  %sub.i.i.i.i.i120 = add i32 %141, -1
  store volatile i32 %sub.i.i.i.i.i120, ptr %preempt_count.i.i.i.i108.i.i, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %it.i.i.i) #17
  %142 = call ptr @memset(ptr %it.i.i.i, i32 255, i32 52)
  call void @css_task_iter_start(ptr noundef nonnull %pos_css.0125.i.i, i32 noundef 0, ptr noundef nonnull %it.i.i.i) #17
  %call1.i109.i.i = call ptr @css_task_iter_next(ptr noundef nonnull %it.i.i.i) #17
  %tobool.not2.i.i.i = icmp eq ptr %call1.i109.i.i, null
  br i1 %tobool.not2.i.i.i, label %rcu_read_unlock.exit.i.i.update_tasks_root_domain.exit.i.i_crit_edge, label %rcu_read_unlock.exit.i.i.while.body.i.i.i_crit_edge

rcu_read_unlock.exit.i.i.while.body.i.i.i_crit_edge: ; preds = %rcu_read_unlock.exit.i.i
  br label %while.body.i.i.i

rcu_read_unlock.exit.i.i.update_tasks_root_domain.exit.i.i_crit_edge: ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_tasks_root_domain.exit.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %rcu_read_unlock.exit.i.i.while.body.i.i.i_crit_edge
  %call3.i.i.i = phi ptr [ %call.i110.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %call1.i109.i.i, %rcu_read_unlock.exit.i.i.while.body.i.i.i_crit_edge ]
  call void @dl_add_task_root_domain(ptr noundef nonnull %call3.i.i.i) #17
  %call.i110.i.i = call ptr @css_task_iter_next(ptr noundef nonnull %it.i.i.i) #17
  %tobool.not.i111.i.i = icmp eq ptr %call.i110.i.i, null
  br i1 %tobool.not.i111.i.i, label %while.body.i.i.i.update_tasks_root_domain.exit.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i.i

while.body.i.i.i.update_tasks_root_domain.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_tasks_root_domain.exit.i.i

update_tasks_root_domain.exit.i.i:                ; preds = %while.body.i.i.i.update_tasks_root_domain.exit.i.i_crit_edge, %rcu_read_unlock.exit.i.i.update_tasks_root_domain.exit.i.i_crit_edge
  call void @css_task_iter_end(ptr noundef nonnull %it.i.i.i) #17
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %it.i.i.i) #17
  %143 = call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i84.i.i = and i32 %143, -16384
  %144 = inttoptr i32 %and.i.i.i.i.i84.i.i to ptr
  %preempt_count.i.i.i.i85.i.i = getelementptr inbounds %struct.thread_info, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %preempt_count.i.i.i.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %preempt_count.i.i.i.i85.i.i, align 4
  %add.i.i.i86.i.i = add i32 %146, 1
  store volatile i32 %add.i.i.i86.i.i, ptr %preempt_count.i.i.i.i85.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i87.i.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i87.i.i, label %update_tasks_root_domain.exit.i.i.rcu_read_lock.exit94.i.i_crit_edge, label %land.lhs.true.i90.i.i

update_tasks_root_domain.exit.i.i.rcu_read_lock.exit94.i.i_crit_edge: ; preds = %update_tasks_root_domain.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit94.i.i

land.lhs.true.i90.i.i:                            ; preds = %update_tasks_root_domain.exit.i.i
  %call1.i88.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88.i.i)
  %tobool.not.i89.i.i = icmp eq i32 %call1.i88.i.i, 0
  br i1 %tobool.not.i89.i.i, label %land.lhs.true.i90.i.i.rcu_read_lock.exit94.i.i_crit_edge, label %land.lhs.true2.i92.i.i

land.lhs.true.i90.i.i.rcu_read_lock.exit94.i.i_crit_edge: ; preds = %land.lhs.true.i90.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit94.i.i

land.lhs.true2.i92.i.i:                           ; preds = %land.lhs.true.i90.i.i
  %.b4.i91.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i91.i.i, label %land.lhs.true2.i92.i.i.rcu_read_lock.exit94.i.i_crit_edge, label %if.then.i93.i.i

land.lhs.true2.i92.i.i.rcu_read_lock.exit94.i.i_crit_edge: ; preds = %land.lhs.true2.i92.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit94.i.i

if.then.i93.i.i:                                  ; preds = %land.lhs.true2.i92.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit94.i.i

rcu_read_lock.exit94.i.i:                         ; preds = %if.then.i93.i.i, %land.lhs.true2.i92.i.i.rcu_read_lock.exit94.i.i_crit_edge, %land.lhs.true.i90.i.i.rcu_read_lock.exit94.i.i_crit_edge, %update_tasks_root_domain.exit.i.i.rcu_read_lock.exit94.i.i_crit_edge
  call fastcc void @css_put(ptr noundef nonnull %pos_css.0125.i.i) #17
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %rcu_read_lock.exit94.i.i, %if.then70.i.i, %is_cpuset_online.exit.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %pos_css.1.i.i = phi ptr [ %call71.i.i, %if.then70.i.i ], [ %pos_css.0125.i.i, %rcu_read_lock.exit94.i.i ], [ %pos_css.0125.i.i, %is_cpuset_online.exit.i.i.for.inc.i.i_crit_edge ], [ %pos_css.0125.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %call75.i.i = call ptr @css_next_descendant_pre(ptr noundef %pos_css.1.i.i, ptr noundef nonnull @top_cpuset) #17
  %tobool65.not.i.i = icmp eq ptr %call75.i.i, null
  br i1 %tobool65.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %rcu_read_lock.exit.i.i.for.end.i.i_crit_edge
  %call.i112.i.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i112.i.i, label %for.end.i.i.partition_and_rebuild_sched_domains.exit_crit_edge, label %land.lhs.true.i115.i.i

for.end.i.i.partition_and_rebuild_sched_domains.exit_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %partition_and_rebuild_sched_domains.exit

land.lhs.true.i115.i.i:                           ; preds = %for.end.i.i
  %call1.i113.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i113.i.i)
  %tobool.not.i114.i.i = icmp eq i32 %call1.i113.i.i, 0
  br i1 %tobool.not.i114.i.i, label %land.lhs.true.i115.i.i.partition_and_rebuild_sched_domains.exit_crit_edge, label %land.lhs.true2.i117.i.i

land.lhs.true.i115.i.i.partition_and_rebuild_sched_domains.exit_crit_edge: ; preds = %land.lhs.true.i115.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %partition_and_rebuild_sched_domains.exit

land.lhs.true2.i117.i.i:                          ; preds = %land.lhs.true.i115.i.i
  %.b4.i116.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i116.i.i, label %land.lhs.true2.i117.i.i.partition_and_rebuild_sched_domains.exit_crit_edge, label %if.then.i118.i.i

land.lhs.true2.i117.i.i.partition_and_rebuild_sched_domains.exit_crit_edge: ; preds = %land.lhs.true2.i117.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %partition_and_rebuild_sched_domains.exit

if.then.i118.i.i:                                 ; preds = %land.lhs.true2.i117.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %partition_and_rebuild_sched_domains.exit

partition_and_rebuild_sched_domains.exit:         ; preds = %if.then.i118.i.i, %land.lhs.true2.i117.i.i.partition_and_rebuild_sched_domains.exit_crit_edge, %land.lhs.true.i115.i.i.partition_and_rebuild_sched_domains.exit_crit_edge, %for.end.i.i.partition_and_rebuild_sched_domains.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %147 = call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i119.i.i = and i32 %147, -16384
  %148 = inttoptr i32 %and.i.i.i.i.i119.i.i to ptr
  %preempt_count.i.i.i.i120.i.i = getelementptr inbounds %struct.thread_info, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %preempt_count.i.i.i.i120.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %preempt_count.i.i.i.i120.i.i, align 4
  %sub.i.i.i121.i.i = add i32 %150, -1
  store volatile i32 %sub.i.i.i121.i.i, ptr %preempt_count.i.i.i.i120.i.i, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  call void @mutex_unlock(ptr noundef nonnull @sched_domains_mutex) #17
  br label %cleanup

cleanup:                                          ; preds = %partition_and_rebuild_sched_domains.exit, %rcu_read_unlock.exit, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @current_cpuset_is_being_rebound() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cgroups.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 164
  %8 = ptrtoint ptr %cgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %cgroups.i.i, align 16
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.task_cs.exit_crit_edge

rcu_read_lock.exit.task_cs.exit_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call.i2.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.task_cs.exit_crit_edge

lor.lhs.false.i.i.task_cs.exit_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false4.i.i.task_cs.exit_crit_edge

lor.lhs.false4.i.i.task_cs.exit_crit_edge:        ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call7.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false6.i.i.task_cs.exit_crit_edge

lor.lhs.false6.i.i.task_cs.exit_crit_edge:        ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false6.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i.task_cs.exit_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i.i.task_cs.exit_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true11.i.i.task_cs.exit_crit_edge, label %if.then.i.i

land.lhs.true11.i.i.task_cs.exit_crit_edge:       ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

if.then.i.i:                                      ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 494, ptr noundef nonnull @.str.21) #17
  br label %task_cs.exit

task_cs.exit:                                     ; preds = %if.then.i.i, %land.lhs.true11.i.i.task_cs.exit_crit_edge, %land.lhs.true.i.i.task_cs.exit_crit_edge, %lor.lhs.false6.i.i.task_cs.exit_crit_edge, %lor.lhs.false4.i.i.task_cs.exit_crit_edge, %lor.lhs.false.i.i.task_cs.exit_crit_edge, %rcu_read_lock.exit.task_cs.exit_crit_edge
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %14 = load ptr, ptr @cpuset_being_rebound, align 4
  %call.i2 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i2, label %task_cs.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

task_cs.exit.rcu_read_unlock.exit_crit_edge:      ; preds = %task_cs.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %task_cs.exit
  %call1.i3 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %task_cs.exit.rcu_read_unlock.exit_crit_edge
  %cmp = icmp eq ptr %13, %14
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %15 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i9 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret i1 %cmp
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cpuset_css_alloc(ptr noundef readnone %parent_css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent_css, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 352) #20
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cpus_allowed.i = getelementptr inbounds %struct.cpuset, ptr %call7.i.i, i32 0, i32 2
  %effective_cpus.i = getelementptr inbounds %struct.cpuset, ptr %call7.i.i, i32 0, i32 4
  %subparts_cpus.i = getelementptr inbounds %struct.cpuset, ptr %call7.i.i, i32 0, i32 6
  %call.i = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef %cpus_allowed.i, i32 noundef 3264) #17
  br i1 %call.i, label %if.end2.i, label %if.end4.if.then7_crit_edge

if.end4.if.then7_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7

if.end2.i:                                        ; preds = %if.end4
  %call3.i = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef %effective_cpus.i, i32 noundef 3264) #17
  br i1 %call3.i, label %if.end5.i, label %if.end2.i.free_one.i_crit_edge

if.end2.i.free_one.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_one.i

if.end5.i:                                        ; preds = %if.end2.i
  %call6.i = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef %subparts_cpus.i, i32 noundef 3264) #17
  br i1 %call6.i, label %if.end9, label %free_two.i

free_two.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  %1 = ptrtoint ptr %effective_cpus.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %effective_cpus.i, align 4
  tail call void @free_cpumask_var(ptr noundef %2) #17
  br label %free_one.i

free_one.i:                                       ; preds = %free_two.i, %if.end2.i.free_one.i_crit_edge
  %3 = ptrtoint ptr %cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpus_allowed.i, align 4
  tail call void @free_cpumask_var(ptr noundef %4) #17
  br label %if.then7

if.then7:                                         ; preds = %free_one.i, %if.end4.if.then7_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

if.end9:                                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.cpuset, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %or.i = or i32 %6, 32
  store i32 %or.i, ptr %flags, align 8
  %mems_allowed = getelementptr inbounds %struct.cpuset, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %mems_allowed to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mems_allowed, align 8
  %effective_mems = getelementptr inbounds %struct.cpuset, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %effective_mems to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %effective_mems, align 8
  %fmeter = getelementptr inbounds %struct.cpuset, ptr %call7.i.i, i32 0, i32 8
  %lock.i = getelementptr inbounds %struct.cpuset, ptr %call7.i.i, i32 0, i32 8, i32 3
  %9 = call ptr @memset(ptr %fmeter, i32 0, i32 16)
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @fmeter_init.__key, i16 noundef signext 3) #17
  %relax_domain_level = getelementptr inbounds %struct.cpuset, ptr %call7.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %relax_domain_level to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %relax_domain_level, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @cpuset_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@cpuset_css_alloc, %cleanup)) #17
          to label %if.then15 [label %cleanup], !srcloc !171

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %or.i27 = or i32 %12, 16
  store i32 %or.i27, ptr %flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end9, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then7 ], [ @top_cpuset, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.then15 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %call7.i.i, %if.end9 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuset_css_online(ptr noundef %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 12
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @cpus_read_lock() #17
  tail call void @percpu_down_write(ptr noundef nonnull @cpuset_rwsem) #17
  %flags = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #17
  %flags.i = getelementptr inbounds %struct.cpuset, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags) #17
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #17
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  tail call void @static_key_slow_inc_cpuslocked(ptr noundef nonnull @cpusets_pre_enable_key) #17
  tail call void @static_key_slow_inc_cpuslocked(ptr noundef nonnull @cpusets_enabled_key) #17
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @callback_lock) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @cpuset_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@cpuset_css_online, %lor.rhs.i)) #17
          to label %if.then13 [label %lor.rhs.i], !srcloc !171

lor.rhs.i:                                        ; preds = %if.end11
  %8 = load ptr, ptr getelementptr inbounds (%struct.cgroup_subsys, ptr @cpuset_cgrp_subsys, i32 0, i32 22), align 4
  %flags.i74 = getelementptr inbounds %struct.cgroup_root, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %flags.i74 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i74, align 4
  %and.i = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool4.i.not, label %lor.rhs.i.if.end16_crit_edge, label %lor.rhs.i.if.then13_crit_edge

lor.rhs.i.if.then13_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then13

lor.rhs.i.if.end16_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.then13:                                        ; preds = %lor.rhs.i.if.then13_crit_edge, %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %effective_cpus = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 4
  %11 = ptrtoint ptr %effective_cpus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %effective_cpus, align 4
  %effective_cpus14 = getelementptr inbounds %struct.cpuset, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %effective_cpus14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %effective_cpus14, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %15, 31
  %16 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %16, 536870908
  %17 = call ptr @memcpy(ptr %12, ptr %14, i32 %mul.i.i)
  %effective_mems = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 5
  %effective_mems15 = getelementptr inbounds %struct.cpuset, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %effective_mems15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %effective_mems15, align 8
  %20 = ptrtoint ptr %effective_mems to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %effective_mems, align 8
  %use_parent_ecpus = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 14
  %21 = ptrtoint ptr %use_parent_ecpus to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %use_parent_ecpus, align 4
  %child_ecpus_count = getelementptr inbounds %struct.cpuset, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %child_ecpus_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %child_ecpus_count, align 8
  %inc = add i32 %23, 1
  store i32 %inc, ptr %child_ecpus_count, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %lor.rhs.i.if.end16_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @callback_lock) #17
  %24 = ptrtoint ptr %css to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %css, align 8
  %flags17 = getelementptr inbounds %struct.cgroup, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags17, align 4
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool19.not = icmp eq i32 %28, 0
  br i1 %tobool19.not, label %if.end16.out_unlock_crit_edge, label %if.end21

if.end16.out_unlock_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end21:                                         ; preds = %if.end16
  %29 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %32, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %if.end21.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end21.rcu_read_lock.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end21
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end21.rcu_read_lock.exit_crit_edge
  %call23 = tail call ptr @css_next_child(ptr noundef null, ptr noundef nonnull %1) #17
  %tobool24.not109 = icmp eq ptr %call23, null
  br i1 %tobool24.not109, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %pos_css.0110 = phi ptr [ %call36, %for.inc.for.body_crit_edge ], [ %call23, %rcu_read_lock.exit.for.body_crit_edge ]
  %flags.i75 = getelementptr inbounds %struct.cpuset, ptr %pos_css.0110, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i75 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags.i75, align 4
  %and1.i.i76 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i76)
  %tobool.not.i77 = icmp eq i32 %and1.i.i76, 0
  br i1 %tobool.not.i77, label %for.body.for.inc_crit_edge, label %land.rhs.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.rhs.i:                                       ; preds = %for.body
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos_css.0110, i32 0, i32 7
  %35 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %is_cpuset_online.exit, label %land.rhs.i.if.then27_crit_edge

land.rhs.i.if.then27_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then27

is_cpuset_online.exit:                            ; preds = %land.rhs.i
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos_css.0110, i32 0, i32 2
  %37 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %refcnt.i.i, align 4
  %and.i.i.i = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.i, label %is_cpuset_online.exit.if.then27_crit_edge, label %is_cpuset_online.exit.for.inc_crit_edge

is_cpuset_online.exit.for.inc_crit_edge:          ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

is_cpuset_online.exit.if.then27_crit_edge:        ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then27

if.then27:                                        ; preds = %is_cpuset_online.exit.if.then27_crit_edge, %land.rhs.i.if.then27_crit_edge
  %39 = ptrtoint ptr %flags.i75 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags.i75, align 4
  %41 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool29.not = icmp eq i32 %41, 0
  br i1 %tobool29.not, label %lor.lhs.false, label %if.then27.if.then32_crit_edge

if.then27.if.then32_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.then27
  %42 = ptrtoint ptr %flags.i75 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %flags.i75, align 4
  %44 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool31.not = icmp eq i32 %44, 0
  br i1 %tobool31.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then32_crit_edge

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then32

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %if.then27.if.then32_crit_edge
  %call.i84 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i84, label %if.then32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i87

if.then32.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i87:                                ; preds = %if.then32
  %call1.i85 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85)
  %tobool.not.i86 = icmp eq i32 %call1.i85, 0
  br i1 %tobool.not.i86, label %land.lhs.true.i87.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i89

land.lhs.true.i87.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i89:                               ; preds = %land.lhs.true.i87
  %.b4.i88 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i88, label %land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge, label %if.then.i90

land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i89
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i90:                                      ; preds = %land.lhs.true2.i89
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i90, %land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i87.rcu_read_unlock.exit_crit_edge, %if.then32.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %45 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i91 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i91 to ptr
  %preempt_count.i.i.i.i92 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i92, align 4
  %sub.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i92, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br label %out_unlock

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %is_cpuset_online.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call36 = tail call ptr @css_next_child(ptr noundef nonnull %pos_css.0110, ptr noundef nonnull %1) #17
  %tobool24.not = icmp eq ptr %call36, null
  br i1 %tobool24.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i93 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i93, label %for.end.rcu_read_unlock.exit103_crit_edge, label %land.lhs.true.i96

for.end.rcu_read_unlock.exit103_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit103

land.lhs.true.i96:                                ; preds = %for.end
  %call1.i94 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i94)
  %tobool.not.i95 = icmp eq i32 %call1.i94, 0
  br i1 %tobool.not.i95, label %land.lhs.true.i96.rcu_read_unlock.exit103_crit_edge, label %land.lhs.true2.i98

land.lhs.true.i96.rcu_read_unlock.exit103_crit_edge: ; preds = %land.lhs.true.i96
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit103

land.lhs.true2.i98:                               ; preds = %land.lhs.true.i96
  %.b4.i97 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i97, label %land.lhs.true2.i98.rcu_read_unlock.exit103_crit_edge, label %if.then.i99

land.lhs.true2.i98.rcu_read_unlock.exit103_crit_edge: ; preds = %land.lhs.true2.i98
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit103

if.then.i99:                                      ; preds = %land.lhs.true2.i98
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit103

rcu_read_unlock.exit103:                          ; preds = %if.then.i99, %land.lhs.true2.i98.rcu_read_unlock.exit103_crit_edge, %land.lhs.true.i96.rcu_read_unlock.exit103_crit_edge, %for.end.rcu_read_unlock.exit103_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %49 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i100 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i100 to ptr
  %preempt_count.i.i.i.i101 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i101, align 4
  %sub.i.i.i102 = add i32 %52, -1
  store volatile i32 %sub.i.i.i102, ptr %preempt_count.i.i.i.i101, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @callback_lock) #17
  %mems_allowed = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 3
  %mems_allowed37 = getelementptr inbounds %struct.cpuset, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %mems_allowed37 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mems_allowed37, align 8
  %55 = ptrtoint ptr %mems_allowed to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %mems_allowed, align 8
  %effective_mems38 = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 5
  %56 = load i32, ptr %mems_allowed37, align 8
  %57 = ptrtoint ptr %effective_mems38 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %effective_mems38, align 8
  %cpus_allowed = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 2
  %58 = ptrtoint ptr %cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cpus_allowed, align 4
  %cpus_allowed40 = getelementptr inbounds %struct.cpuset, ptr %1, i32 0, i32 2
  %60 = ptrtoint ptr %cpus_allowed40 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cpus_allowed40, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %62 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i104 = add i32 %62, 31
  %63 = lshr i32 %sub.i.i104, 3
  %mul.i.i105 = and i32 %63, 536870908
  %64 = call ptr @memcpy(ptr %59, ptr %61, i32 %mul.i.i105)
  %effective_cpus41 = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 4
  %65 = ptrtoint ptr %effective_cpus41 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %effective_cpus41, align 4
  %67 = load ptr, ptr %cpus_allowed40, align 4
  %68 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i106 = add i32 %68, 31
  %69 = lshr i32 %sub.i.i106, 3
  %mul.i.i107 = and i32 %69, 536870908
  %70 = call ptr @memcpy(ptr %66, ptr %67, i32 %mul.i.i107)
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @callback_lock) #17
  br label %out_unlock

out_unlock:                                       ; preds = %rcu_read_unlock.exit103, %rcu_read_unlock.exit, %if.end16.out_unlock_crit_edge
  tail call void @percpu_up_write(ptr noundef nonnull @cpuset_rwsem) #17
  tail call void @cpus_read_unlock() #17
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpuset_css_offline(ptr noundef %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpus_read_lock() #17
  tail call void @percpu_down_write(ptr noundef nonnull @cpuset_rwsem) #17
  %partition_root_state.i = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 13
  %0 = ptrtoint ptr %partition_root_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %partition_root_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call2 = tail call fastcc i32 @update_prstate(ptr noundef %css, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @cpuset_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@cpuset_css_offline, %land.lhs.true)) #17
          to label %if.end12 [label %land.lhs.true], !srcloc !171

land.lhs.true:                                    ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not = icmp eq i32 %4, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end12_crit_edge, label %if.then10

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %call11 = tail call fastcc i32 @update_flag(i32 noundef 5, ptr noundef %css, i32 noundef 0)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %land.lhs.true.if.end12_crit_edge, %if.end
  %use_parent_ecpus = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 14
  %5 = ptrtoint ptr %use_parent_ecpus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %use_parent_ecpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not = icmp eq i32 %6, 0
  br i1 %tobool13.not, label %if.end12.if.end17_crit_edge, label %if.then14

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 12
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 8
  %9 = ptrtoint ptr %use_parent_ecpus to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %use_parent_ecpus, align 4
  %child_ecpus_count = getelementptr inbounds %struct.cpuset, ptr %8, i32 0, i32 15
  %10 = ptrtoint ptr %child_ecpus_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %child_ecpus_count, align 8
  %dec = add i32 %11, -1
  store i32 %dec, ptr %child_ecpus_count, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12.if.end17_crit_edge
  tail call void @static_key_slow_dec_cpuslocked(ptr noundef nonnull @cpusets_enabled_key) #17
  tail call void @static_key_slow_dec_cpuslocked(ptr noundef nonnull @cpusets_pre_enable_key) #17
  %flags = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #17
  tail call void @percpu_up_write(ptr noundef nonnull @cpuset_rwsem) #17
  tail call void @cpus_read_unlock() #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpuset_css_free(ptr noundef %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %css, null
  br i1 %tobool.not.i.i, label %entry.free_cpuset.exit_crit_edge, label %if.then.i.i

entry.free_cpuset.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_cpuset.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %cpus_allowed.i.i = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 2
  %0 = ptrtoint ptr %cpus_allowed.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpus_allowed.i.i, align 4
  tail call void @free_cpumask_var(ptr noundef %1) #17
  %effective_cpus.i.i = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 4
  %2 = ptrtoint ptr %effective_cpus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %effective_cpus.i.i, align 4
  tail call void @free_cpumask_var(ptr noundef %3) #17
  %subparts_cpus.i.i = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 6
  %4 = ptrtoint ptr %subparts_cpus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %subparts_cpus.i.i, align 4
  tail call void @free_cpumask_var(ptr noundef %5) #17
  br label %free_cpuset.exit

free_cpuset.exit:                                 ; preds = %if.then.i.i, %entry.free_cpuset.exit_crit_edge
  tail call void @kfree(ptr noundef %css) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuset_can_attach(ptr noundef %tset) #0 align 64 {
entry:
  %css = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %css) #17
  %0 = ptrtoint ptr %css to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %css, align 4, !annotation !172
  %call = call ptr @cgroup_taskset_first(ptr noundef %tset, ptr noundef nonnull %css) #17
  %cgroups.i.i = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 164
  %1 = ptrtoint ptr %cgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %cgroups.i.i, align 16
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %entry.task_cs.exit_crit_edge

entry.task_cs.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %call.i2.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.task_cs.exit_crit_edge

lor.lhs.false.i.i.task_cs.exit_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false4.i.i.task_cs.exit_crit_edge

lor.lhs.false4.i.i.task_cs.exit_crit_edge:        ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call7.i.i = call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false6.i.i.task_cs.exit_crit_edge

lor.lhs.false6.i.i.task_cs.exit_crit_edge:        ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false6.i.i
  %call9.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i.task_cs.exit_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i.i.task_cs.exit_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true11.i.i.task_cs.exit_crit_edge, label %if.then.i.i

land.lhs.true11.i.i.task_cs.exit_crit_edge:       ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

if.then.i.i:                                      ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @task_css.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 494, ptr noundef nonnull @.str.21) #17
  br label %task_cs.exit

task_cs.exit:                                     ; preds = %if.then.i.i, %land.lhs.true11.i.i.task_cs.exit_crit_edge, %land.lhs.true.i.i.task_cs.exit_crit_edge, %lor.lhs.false6.i.i.task_cs.exit_crit_edge, %lor.lhs.false4.i.i.task_cs.exit_crit_edge, %lor.lhs.false.i.i.task_cs.exit_crit_edge, %entry.task_cs.exit_crit_edge
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  store ptr %6, ptr @cpuset_attach_old_cs, align 4
  %7 = ptrtoint ptr %css to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %css, align 4
  call void @percpu_down_write(ptr noundef nonnull @cpuset_rwsem) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @cpuset_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@cpuset_can_attach, %lor.rhs.i)) #17
          to label %if.end [label %lor.rhs.i], !srcloc !171

lor.rhs.i:                                        ; preds = %task_cs.exit
  %9 = load ptr, ptr getelementptr inbounds (%struct.cgroup_subsys, ptr @cpuset_cgrp_subsys, i32 0, i32 22), align 4
  %flags.i = getelementptr inbounds %struct.cgroup_root, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool4.i.not, label %cpumask_empty.exit, label %lor.rhs.i.if.end_crit_edge

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

cpumask_empty.exit:                               ; preds = %lor.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cpus_allowed = getelementptr inbounds %struct.cpuset, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpus_allowed, align 4
  %call.i.i = call i32 @_find_first_bit_be(ptr noundef %14, i32 noundef %12) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %12)
  %cmp4.i.i = icmp eq i32 %call.i.i, %12
  br i1 %cmp4.i.i, label %cpumask_empty.exit.out_unlock_crit_edge, label %lor.lhs.false

cpumask_empty.exit.out_unlock_crit_edge:          ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

lor.lhs.false:                                    ; preds = %cpumask_empty.exit
  %mems_allowed = getelementptr inbounds %struct.cpuset, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %mems_allowed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mems_allowed, align 4
  %and3.i.i30 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i30)
  %tobool.not.not = icmp eq i32 %and3.i.i30, 0
  br i1 %tobool.not.not, label %lor.lhs.false.out_unlock_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %lor.rhs.i.if.end_crit_edge, %task_cs.exit
  %call6 = call ptr @cgroup_taskset_first(ptr noundef %tset, ptr noundef nonnull %css) #17
  %tobool7.not31 = icmp eq ptr %call6, null
  br i1 %tobool7.not31, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %cpus_allowed8 = getelementptr inbounds %struct.cpuset, ptr %8, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %task.032 = phi ptr [ %call6, %for.body.lr.ph ], [ %call17, %for.inc.for.body_crit_edge ]
  %17 = ptrtoint ptr %cpus_allowed8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpus_allowed8, align 4
  %call9 = call i32 @task_can_attach(ptr noundef nonnull %task.032, ptr noundef %18) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %for.body.out_unlock_crit_edge

for.body.out_unlock_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end12:                                         ; preds = %for.body
  %call13 = call i32 @security_task_setscheduler(ptr noundef nonnull %task.032) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.inc, label %if.end12.out_unlock_crit_edge

if.end12.out_unlock_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

for.inc:                                          ; preds = %if.end12
  %call17 = call ptr @cgroup_taskset_next(ptr noundef %tset, ptr noundef nonnull %css) #17
  %tobool7.not = icmp eq ptr %call17, null
  br i1 %tobool7.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %attach_in_progress = getelementptr inbounds %struct.cpuset, ptr %8, i32 0, i32 9
  %19 = ptrtoint ptr %attach_in_progress to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %attach_in_progress, align 8
  %inc = add i32 %20, 1
  store i32 %inc, ptr %attach_in_progress, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %for.end, %if.end12.out_unlock_crit_edge, %for.body.out_unlock_crit_edge, %lor.lhs.false.out_unlock_crit_edge, %cpumask_empty.exit.out_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %for.end ], [ -28, %cpumask_empty.exit.out_unlock_crit_edge ], [ -28, %lor.lhs.false.out_unlock_crit_edge ], [ %call13, %if.end12.out_unlock_crit_edge ], [ %call9, %for.body.out_unlock_crit_edge ]
  call void @percpu_up_write(ptr noundef nonnull @cpuset_rwsem) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %css) #17
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpuset_cancel_attach(ptr noundef %tset) #0 align 64 {
entry:
  %css = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %css) #17
  %0 = ptrtoint ptr %css to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %css, align 4, !annotation !172
  %call = call ptr @cgroup_taskset_first(ptr noundef %tset, ptr noundef nonnull %css) #17
  call void @percpu_down_write(ptr noundef nonnull @cpuset_rwsem) #17
  %1 = ptrtoint ptr %css to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %css, align 4
  %attach_in_progress = getelementptr inbounds %struct.cpuset, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %attach_in_progress to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %attach_in_progress, align 8
  %dec = add i32 %4, -1
  store i32 %dec, ptr %attach_in_progress, align 8
  call void @percpu_up_write(ptr noundef nonnull @cpuset_rwsem) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %css) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpuset_attach(ptr noundef %tset) #0 align 64 {
entry:
  %css = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %css) #17
  %0 = ptrtoint ptr %css to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %css, align 4, !annotation !172
  %1 = load ptr, ptr @cpuset_attach_old_cs, align 4
  %call = call ptr @cgroup_taskset_first(ptr noundef %tset, ptr noundef nonnull %css) #17
  %2 = ptrtoint ptr %css to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %css, align 4
  call void @cpus_read_lock() #17
  call void @percpu_down_write(ptr noundef nonnull @cpuset_rwsem) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4) to i32))
  %4 = load i32, ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4), align 4
  %effective_mems7.i = getelementptr inbounds %struct.cpuset, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %effective_mems7.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %effective_mems7.i, align 4
  %and.i.i8.i = and i32 %4, 1
  %and4.i.i9.i = and i32 %and.i.i8.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i9.i)
  %tobool.not10.i = icmp eq i32 %and4.i.i9.i, 0
  br i1 %tobool.not10.i, label %entry.while.body.i_crit_edge, label %entry.guarantee_online_mems.exit_crit_edge

entry.guarantee_online_mems.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %guarantee_online_mems.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %cs.addr.011.i = phi ptr [ %8, %while.body.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cs.addr.011.i, i32 0, i32 12
  %7 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i.i, align 8
  %effective_mems.i = getelementptr inbounds %struct.cpuset, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %effective_mems.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %effective_mems.i, align 4
  %and4.i.i.i = and i32 %and.i.i8.i, %10
  %tobool.not.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %tobool.not.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.guarantee_online_mems.exit_crit_edge

while.body.i.guarantee_online_mems.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %guarantee_online_mems.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

guarantee_online_mems.exit:                       ; preds = %while.body.i.guarantee_online_mems.exit_crit_edge, %entry.guarantee_online_mems.exit_crit_edge
  store i32 1, ptr @cpuset_attach.cpuset_attach_nodemask_to, align 4
  %call2 = call ptr @cgroup_taskset_first(ptr noundef %tset, ptr noundef nonnull %css) #17
  %tobool.not93 = icmp eq ptr %call2, null
  br i1 %tobool.not93, label %guarantee_online_mems.exit.for.end_crit_edge, label %for.body.lr.ph

guarantee_online_mems.exit.for.end_crit_edge:     ; preds = %guarantee_online_mems.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %guarantee_online_mems.exit
  %cmp.not = icmp eq ptr %3, @top_cpuset
  %flags.i.i = getelementptr inbounds %struct.cpuset, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cpuset_update_task_spread_flag.exit.for.body_crit_edge, %for.body.lr.ph
  %task.094 = phi ptr [ %call2, %for.body.lr.ph ], [ %call42, %cpuset_update_task_spread_flag.exit.for.body_crit_edge ]
  %11 = load ptr, ptr @cpus_attach, align 4
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @guarantee_online_cpus(ptr noundef nonnull %task.094, ptr noundef %11)
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %12, 31
  %13 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %13, 536870908
  %14 = call ptr @memcpy(ptr %11, ptr @__cpu_possible_mask, i32 %mul.i.i)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load ptr, ptr @cpus_attach, align 4
  %call3 = call i32 @set_cpus_allowed_ptr(ptr noundef nonnull %task.094, ptr noundef %15) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end34_crit_edge, label %land.rhs

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

land.rhs:                                         ; preds = %if.end
  %.b91 = load i1, ptr @cpuset_attach.__already_done, align 1
  br i1 %.b91, label %land.rhs.if.end34_crit_edge, label %if.then12, !prof !159

land.rhs.if.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpuset_attach.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2306, i32 noundef 9, ptr noundef null) #17
  br label %if.end34

if.end34:                                         ; preds = %if.then12, %land.rhs.if.end34_crit_edge, %if.end.if.end34_crit_edge
  call fastcc void @cpuset_change_task_nodemask(ptr noundef nonnull %task.094, ptr noundef nonnull @cpuset_attach.cpuset_attach_nodemask_to)
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags.i.i, align 4
  %18 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i92 = icmp eq i32 %18, 0
  %atomic_flags.i10.i = getelementptr inbounds %struct.task_struct, ptr %task.094, i32 0, i32 66
  br i1 %tobool.not.i92, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  call void @_set_bit(i32 noundef 1, ptr noundef %atomic_flags.i10.i) #17
  br label %if.end.i

if.else.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  call void @_clear_bit(i32 noundef 1, ptr noundef %atomic_flags.i10.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i.i, align 4
  %21 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool2.not.i = icmp eq i32 %21, 0
  br i1 %tobool2.not.i, label %if.else4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @_set_bit(i32 noundef 2, ptr noundef %atomic_flags.i10.i) #17
  br label %cpuset_update_task_spread_flag.exit

if.else4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @_clear_bit(i32 noundef 2, ptr noundef %atomic_flags.i10.i) #17
  br label %cpuset_update_task_spread_flag.exit

cpuset_update_task_spread_flag.exit:              ; preds = %if.else4.i, %if.then3.i
  %call42 = call ptr @cgroup_taskset_next(ptr noundef %tset, ptr noundef nonnull %css) #17
  %tobool.not = icmp eq ptr %call42, null
  br i1 %tobool.not, label %cpuset_update_task_spread_flag.exit.for.end_crit_edge, label %cpuset_update_task_spread_flag.exit.for.body_crit_edge

cpuset_update_task_spread_flag.exit.for.body_crit_edge: ; preds = %cpuset_update_task_spread_flag.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cpuset_update_task_spread_flag.exit.for.end_crit_edge: ; preds = %cpuset_update_task_spread_flag.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %cpuset_update_task_spread_flag.exit.for.end_crit_edge, %guarantee_online_mems.exit.for.end_crit_edge
  %22 = ptrtoint ptr %effective_mems7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %effective_mems7.i, align 8
  store i32 %23, ptr @cpuset_attach.cpuset_attach_nodemask_to, align 4
  %call43 = call ptr @cgroup_taskset_first(ptr noundef %tset, ptr noundef nonnull %css) #17
  %tobool45.not95 = icmp eq ptr %call43, null
  br i1 %tobool45.not95, label %for.end.for.end62_crit_edge, label %for.body46.lr.ph

for.end.for.end62_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end62

for.body46.lr.ph:                                 ; preds = %for.end
  %flags.i = getelementptr inbounds %struct.cpuset, ptr %3, i32 0, i32 1
  %old_mems_allowed = getelementptr inbounds %struct.cpuset, ptr %1, i32 0, i32 7
  br label %for.body46

for.body46:                                       ; preds = %for.inc60.for.body46_crit_edge, %for.body46.lr.ph
  %leader.096 = phi ptr [ %call43, %for.body46.lr.ph ], [ %call61, %for.inc60.for.body46_crit_edge ]
  %group_leader = getelementptr inbounds %struct.task_struct, ptr %leader.096, i32 0, i32 75
  %24 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %group_leader, align 4
  %cmp47.not = icmp eq ptr %leader.096, %25
  br i1 %cmp47.not, label %if.else49, label %for.body46.for.inc60_crit_edge

for.body46.for.inc60_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc60

if.else49:                                        ; preds = %for.body46
  %call50 = call ptr @get_task_mm(ptr noundef nonnull %leader.096) #17
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.else49.for.inc60_crit_edge, label %if.then52

if.else49.for.inc60_crit_edge:                    ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc60

if.then52:                                        ; preds = %if.else49
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags.i, align 4
  %28 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool54.not = icmp eq i32 %28, 0
  br i1 %tobool54.not, label %if.else56, label %if.then55

if.then55:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @cpuset_migrate_mm(ptr noundef nonnull %call50, ptr noundef %old_mems_allowed, ptr noundef nonnull @cpuset_attach.cpuset_attach_nodemask_to)
  br label %for.inc60

if.else56:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  call void @mmput(ptr noundef nonnull %call50) #17
  br label %for.inc60

for.inc60:                                        ; preds = %if.else56, %if.then55, %if.else49.for.inc60_crit_edge, %for.body46.for.inc60_crit_edge
  %call61 = call ptr @cgroup_taskset_next(ptr noundef %tset, ptr noundef nonnull %css) #17
  %tobool45.not = icmp eq ptr %call61, null
  br i1 %tobool45.not, label %for.inc60.for.end62_crit_edge, label %for.inc60.for.body46_crit_edge

for.inc60.for.body46_crit_edge:                   ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body46

for.inc60.for.end62_crit_edge:                    ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end62

for.end62:                                        ; preds = %for.inc60.for.end62_crit_edge, %for.end.for.end62_crit_edge
  %old_mems_allowed63 = getelementptr inbounds %struct.cpuset, ptr %3, i32 0, i32 7
  %29 = load i32, ptr @cpuset_attach.cpuset_attach_nodemask_to, align 4
  %30 = ptrtoint ptr %old_mems_allowed63 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %old_mems_allowed63, align 8
  %attach_in_progress = getelementptr inbounds %struct.cpuset, ptr %3, i32 0, i32 9
  %31 = ptrtoint ptr %attach_in_progress to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %attach_in_progress, align 8
  %dec = add i32 %32, -1
  store i32 %dec, ptr %attach_in_progress, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool65.not = icmp eq i32 %dec, 0
  br i1 %tobool65.not, label %if.then66, label %for.end62.if.end67_crit_edge

for.end62.if.end67_crit_edge:                     ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end67

if.then66:                                        ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #19
  call void @__wake_up(ptr noundef nonnull @cpuset_attach_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #17
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %for.end62.if.end67_crit_edge
  call void @percpu_up_write(ptr noundef nonnull @cpuset_rwsem) #17
  call void @cpus_read_unlock() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %css) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpuset_post_attach() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cpuset_migrate_mm_wq, align 4
  tail call void @flush_workqueue(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpuset_fork(ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cgroups.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 164
  %0 = ptrtoint ptr %cgroups.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cgroups.i, align 16
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.task_css_is_root.exit_crit_edge

entry.task_css_is_root.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_css_is_root.exit

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call.i1.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #17
  br label %task_css_is_root.exit

task_css_is_root.exit:                            ; preds = %lor.lhs.false.i, %entry.task_css_is_root.exit_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @init_css_set to i32))
  %4 = load ptr, ptr @init_css_set, align 4
  %cmp.i = icmp eq ptr %3, %4
  br i1 %cmp.i, label %task_css_is_root.exit.return_crit_edge, label %if.end

task_css_is_root.exit.return_crit_edge:           ; preds = %task_css_is_root.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %task_css_is_root.exit
  call void @__sanitizer_cov_trace_pc() #19
  %5 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task2 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task2, align 8
  %cpus_ptr = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %cpus_ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpus_ptr, align 4
  %call3 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %task, ptr noundef %10) #17
  %mems_allowed = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 160
  %11 = ptrtoint ptr %task2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task2, align 8
  %mems_allowed6 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 160
  %13 = ptrtoint ptr %mems_allowed6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mems_allowed6, align 64
  %15 = ptrtoint ptr %mems_allowed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %mems_allowed, align 64
  br label %return

return:                                           ; preds = %if.end, %task_css_is_root.exit.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpuset_bind(ptr nocapture noundef readnone %root_css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @percpu_down_write(ptr noundef nonnull @cpuset_rwsem) #17
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @callback_lock) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @cpuset_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@cpuset_bind, %lor.rhs.i)) #17
          to label %if.then [label %lor.rhs.i], !srcloc !171

lor.rhs.i:                                        ; preds = %entry
  %0 = load ptr, ptr getelementptr inbounds (%struct.cgroup_subsys, ptr @cpuset_cgrp_subsys, i32 0, i32 22), align 4
  %flags.i = getelementptr inbounds %struct.cgroup_root, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool4.i.not, label %if.else, label %lor.rhs.i.if.then_crit_edge

lor.rhs.i.if.then_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %lor.rhs.i.if.then_crit_edge, %entry
  call void @__sanitizer_cov_trace_pc() #19
  %3 = load ptr, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %4, 31
  %5 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %5, 536870908
  %6 = call ptr @memcpy(ptr %3, ptr @__cpu_possible_mask, i32 %mul.i.i)
  br label %if.end

if.else:                                          ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  %7 = load ptr, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 2), align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 4), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i1 = add i32 %9, 31
  %10 = lshr i32 %sub.i.i1, 3
  %mul.i.i2 = and i32 %10, 536870908
  %11 = call ptr @memcpy(ptr %7, ptr %8, i32 %mul.i.i2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge.in = phi ptr [ @node_states, %if.then ], [ getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 5), %if.else ]
  %12 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %storemerge = load i32, ptr %storemerge.in, align 4
  store i32 %storemerge, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 3), align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @callback_lock) #17
  tail call void @percpu_up_write(ptr noundef nonnull @cpuset_rwsem) #17
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpuset_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__percpu_init_rwsem(ptr noundef nonnull @cpuset_rwsem, ptr noundef nonnull @.str, ptr noundef nonnull @cpuset_init.rwsem_key) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body7, label %do.body3, !prof !159

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cpuset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3016, 0\0A.popsection", ""() #17, !srcloc !173
  unreachable

do.body7:                                         ; preds = %entry
  %call8 = tail call zeroext i1 @alloc_cpumask_var(ptr noundef getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 2), i32 noundef 3264) #17
  br i1 %call8, label %do.body24, label %do.body18, !prof !159

do.body18:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cpuset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3018, 0\0A.popsection", ""() #17, !srcloc !174
  unreachable

do.body24:                                        ; preds = %do.body7
  %call25 = tail call zeroext i1 @alloc_cpumask_var(ptr noundef getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 4), i32 noundef 3264) #17
  br i1 %call25, label %do.body41, label %do.body35, !prof !159

do.body35:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cpuset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3019, 0\0A.popsection", ""() #17, !srcloc !175
  unreachable

do.body41:                                        ; preds = %do.body24
  %call42 = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 6), i32 noundef 3264) #17
  br i1 %call42, label %do.end57, label %do.body52, !prof !159

do.body52:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cpuset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3020, 0\0A.popsection", ""() #17, !srcloc !176
  unreachable

do.end57:                                         ; preds = %do.body41
  %0 = load ptr, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %1, 31
  %2 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %2, 536870908
  %3 = call ptr @memset(ptr %0, i32 255, i32 %mul.i.i)
  store i32 -1, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 3), align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 4), align 4
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i75 = add i32 %5, 31
  %6 = lshr i32 %sub.i.i75, 3
  %mul.i.i76 = and i32 %6, 536870908
  %7 = call ptr @memset(ptr %4, i32 255, i32 %mul.i.i76)
  store i32 -1, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 5), align 8
  %8 = call ptr @memset(ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 8), i32 0, i32 16)
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 8, i32 3), ptr noundef nonnull @.str.36, ptr noundef nonnull @fmeter_init.__key, i16 noundef signext 3) #17
  tail call void @_set_bit(i32 noundef 5, ptr noundef getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 1)) #17
  store i32 -1, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 11), align 8
  %call59 = tail call zeroext i1 @alloc_cpumask_var(ptr noundef nonnull @cpus_attach, i32 noundef 3264) #17
  br i1 %call59, label %do.end74, label %do.body69, !prof !159

do.body69:                                        ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cpuset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3031, 0\0A.popsection", ""() #17, !srcloc !177
  unreachable

do.end74:                                         ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #19
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @alloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @cpuset_force_rebuild() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @force_rebuild, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuset_update_active_cpus() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @cpuset_hotplug_work) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuset_wait_for_hotplug() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @flush_work(ptr noundef nonnull @cpuset_hotplug_work) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuset_init_smp() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %1, 31
  %2 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %2, 536870908
  %3 = call ptr @memcpy(ptr %0, ptr @__cpu_active_mask, i32 %mul.i.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4) to i32))
  %4 = load i32, ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4), align 4
  store i32 %4, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 3), align 8
  store i32 %4, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 7), align 8
  %5 = load ptr, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 4), align 4
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i8 = add i32 %6, 31
  %7 = lshr i32 %sub.i.i8, 3
  %mul.i.i9 = and i32 %7, 536870908
  %8 = call ptr @memcpy(ptr %5, ptr @__cpu_active_mask, i32 %mul.i.i9)
  %9 = load i32, ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4), align 4
  store i32 %9, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 5), align 8
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.1, i32 noundef 655362, i32 noundef 1) #17
  store ptr %call, ptr @cpuset_migrate_mm_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !162

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cpuset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3403, 0\0A.popsection", ""() #17, !srcloc !178
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuset_cpus_allowed(ptr noundef %tsk, ptr noundef %pmask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @callback_lock) #17
  tail call fastcc void @guarantee_online_cpus(ptr noundef %tsk, ptr noundef %pmask)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @callback_lock, i32 noundef %call2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @guarantee_online_cpus(ptr noundef %tsk, ptr noundef %pmask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @__bitmap_and(ptr noundef %pmask, ptr noundef nonnull @__cpu_possible_mask, ptr noundef nonnull @__cpu_online_mask, i32 noundef %0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end23_crit_edge, !prof !162

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 424, i32 noundef 9, ptr noundef null) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i50 = add i32 %1, 31
  %2 = lshr i32 %sub.i.i50, 3
  %mul.i.i = and i32 %2, 536870908
  %3 = call ptr @memcpy(ptr %pmask, ptr @__cpu_online_mask, i32 %mul.i.i)
  br label %if.end23

if.end23:                                         ; preds = %do.end, %entry.if.end23_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %if.end23.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end23.rcu_read_lock.exit_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end23
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end23.rcu_read_lock.exit_crit_edge
  %cgroups.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 164
  %8 = ptrtoint ptr %cgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %cgroups.i.i, align 16
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.task_cs.exit_crit_edge

rcu_read_lock.exit.task_cs.exit_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call.i2.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.task_cs.exit_crit_edge

lor.lhs.false.i.i.task_cs.exit_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i, align 4
  %and.i.i51 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i51)
  %tobool5.not.i.i = icmp eq i32 %and.i.i51, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false4.i.i.task_cs.exit_crit_edge

lor.lhs.false4.i.i.task_cs.exit_crit_edge:        ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call7.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false6.i.i.task_cs.exit_crit_edge

lor.lhs.false6.i.i.task_cs.exit_crit_edge:        ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false6.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i.task_cs.exit_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i.i.task_cs.exit_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true11.i.i.task_cs.exit_crit_edge, label %if.then.i.i52

land.lhs.true11.i.i.task_cs.exit_crit_edge:       ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

if.then.i.i52:                                    ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 494, ptr noundef nonnull @.str.21) #17
  br label %task_cs.exit

task_cs.exit:                                     ; preds = %if.then.i.i52, %land.lhs.true11.i.i.task_cs.exit_crit_edge, %land.lhs.true.i.i.task_cs.exit_crit_edge, %lor.lhs.false6.i.i.task_cs.exit_crit_edge, %lor.lhs.false4.i.i.task_cs.exit_crit_edge, %lor.lhs.false.i.i.task_cs.exit_crit_edge, %rcu_read_lock.exit.task_cs.exit_crit_edge
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %while.body.if.else.i.i_crit_edge, %task_cs.exit
  %cs.0 = phi ptr [ %13, %task_cs.exit ], [ %18, %while.body.if.else.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %effective_cpus = getelementptr inbounds %struct.cpuset, ptr %cs.0, i32 0, i32 4
  %15 = ptrtoint ptr %effective_cpus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %effective_cpus, align 4
  %call.i.i61 = tail call i32 @__bitmap_intersects(ptr noundef %16, ptr noundef %pmask, i32 noundef %14) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i61)
  %tobool.i.not = icmp eq i32 %call.i.i61, 0
  br i1 %tobool.i.not, label %while.body, label %if.end.i.i72

while.body:                                       ; preds = %if.else.i.i
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cs.0, i32 0, i32 12
  %17 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i, align 8
  %tobool29.not = icmp eq ptr %18, null
  br i1 %tobool29.not, label %while.body.out_unlock_crit_edge, label %while.body.if.else.i.i_crit_edge, !prof !162

while.body.if.else.i.i_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i.i

while.body.out_unlock_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end.i.i72:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %effective_cpus.le = getelementptr inbounds %struct.cpuset, ptr %cs.0, i32 0, i32 4
  %20 = ptrtoint ptr %effective_cpus.le to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %effective_cpus.le, align 4
  %call.i.i71 = tail call i32 @__bitmap_and(ptr noundef %pmask, ptr noundef %pmask, ptr noundef %21, i32 noundef %19) #17
  br label %out_unlock

out_unlock:                                       ; preds = %if.end.i.i72, %while.body.out_unlock_crit_edge
  %call.i75 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i75, label %out_unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i78

out_unlock.rcu_read_unlock.exit_crit_edge:        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i78:                                ; preds = %out_unlock
  %call1.i76 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i76)
  %tobool.not.i77 = icmp eq i32 %call1.i76, 0
  br i1 %tobool.not.i77, label %land.lhs.true.i78.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i80

land.lhs.true.i78.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i80:                               ; preds = %land.lhs.true.i78
  %.b4.i79 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i79, label %land.lhs.true2.i80.rcu_read_unlock.exit_crit_edge, label %if.then.i81

land.lhs.true2.i80.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i80
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i81:                                      ; preds = %land.lhs.true2.i80
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i81, %land.lhs.true2.i80.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i78.rcu_read_unlock.exit_crit_edge, %out_unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %22 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i82 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i82 to ptr
  %preempt_count.i.i.i.i83 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i83, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i83, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cpuset_cpus_allowed_fallback(ptr noundef %tsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %cgroups.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 164
  %4 = ptrtoint ptr %cgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %cgroups.i.i, align 16
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.task_cs.exit_crit_edge

rcu_read_lock.exit.task_cs.exit_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call.i2.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.task_cs.exit_crit_edge

lor.lhs.false.i.i.task_cs.exit_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false4.i.i.task_cs.exit_crit_edge

lor.lhs.false4.i.i.task_cs.exit_crit_edge:        ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call7.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false6.i.i.task_cs.exit_crit_edge

lor.lhs.false6.i.i.task_cs.exit_crit_edge:        ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false6.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i.task_cs.exit_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i.i.task_cs.exit_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true11.i.i.task_cs.exit_crit_edge, label %if.then.i.i

land.lhs.true11.i.i.task_cs.exit_crit_edge:       ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

if.then.i.i:                                      ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 494, ptr noundef nonnull @.str.21) #17
  br label %task_cs.exit

task_cs.exit:                                     ; preds = %if.then.i.i, %land.lhs.true11.i.i.task_cs.exit_crit_edge, %land.lhs.true.i.i.task_cs.exit_crit_edge, %lor.lhs.false6.i.i.task_cs.exit_crit_edge, %lor.lhs.false4.i.i.task_cs.exit_crit_edge, %lor.lhs.false.i.i.task_cs.exit_crit_edge, %rcu_read_lock.exit.task_cs.exit_crit_edge
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %cpus_allowed = getelementptr inbounds %struct.cpuset, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cpus_allowed, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @cpuset_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@cpuset_cpus_allowed_fallback, %lor.rhs.i)) #17
          to label %if.else.i.i [label %lor.rhs.i], !srcloc !171

lor.rhs.i:                                        ; preds = %task_cs.exit
  %12 = load ptr, ptr getelementptr inbounds (%struct.cgroup_subsys, ptr @cpuset_cgrp_subsys, i32 0, i32 22), align 4
  %flags.i = getelementptr inbounds %struct.cgroup_root, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool4.i.not, label %lor.rhs.i.if.end_crit_edge, label %lor.rhs.i.if.else.i.i_crit_edge

lor.rhs.i.if.else.i.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i.i

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.else.i.i:                                      ; preds = %lor.rhs.i.if.else.i.i_crit_edge, %task_cs.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @__bitmap_subset(ptr noundef %11, ptr noundef nonnull @__cpu_possible_mask, i32 noundef %15) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.else.i.i.if.end_crit_edge, label %if.then

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @do_set_cpus_allowed(ptr noundef %tsk, ptr noundef %11) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %if.else.i.i.if.end_crit_edge, %lor.rhs.i.if.end_crit_edge
  %changed.0.off0 = phi i1 [ true, %if.then ], [ false, %if.else.i.i.if.end_crit_edge ], [ false, %lor.rhs.i.if.end_crit_edge ]
  %call.i9 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i9, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i12

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i12:                                ; preds = %if.end
  %call1.i10 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i14

land.lhs.true.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i12
  %.b4.i13 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13, label %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, label %if.then.i15

land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i15:                                      ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i15, %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %16 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i16 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i16 to ptr
  %preempt_count.i.i.i.i17 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i17, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i17, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret i1 %changed.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_set_cpus_allowed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cpuset_init_current_mems_allowed() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mems_allowed = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 160
  %4 = ptrtoint ptr %mems_allowed to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mems_allowed, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpuset_mems_allowed(ptr noundef %tsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @callback_lock) #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %cgroups.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 164
  %4 = ptrtoint ptr %cgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %cgroups.i.i, align 16
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.task_cs.exit_crit_edge

rcu_read_lock.exit.task_cs.exit_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call.i2.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.task_cs.exit_crit_edge

lor.lhs.false.i.i.task_cs.exit_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false4.i.i.task_cs.exit_crit_edge

lor.lhs.false4.i.i.task_cs.exit_crit_edge:        ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call7.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false6.i.i.task_cs.exit_crit_edge

lor.lhs.false6.i.i.task_cs.exit_crit_edge:        ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false6.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i.task_cs.exit_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i.i.task_cs.exit_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true11.i.i.task_cs.exit_crit_edge, label %if.then.i.i

land.lhs.true11.i.i.task_cs.exit_crit_edge:       ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

if.then.i.i:                                      ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 494, ptr noundef nonnull @.str.21) #17
  br label %task_cs.exit

task_cs.exit:                                     ; preds = %if.then.i.i, %land.lhs.true11.i.i.task_cs.exit_crit_edge, %land.lhs.true.i.i.task_cs.exit_crit_edge, %lor.lhs.false6.i.i.task_cs.exit_crit_edge, %lor.lhs.false4.i.i.task_cs.exit_crit_edge, %lor.lhs.false.i.i.task_cs.exit_crit_edge, %rcu_read_lock.exit.task_cs.exit_crit_edge
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4) to i32))
  %10 = load i32, ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4), align 4
  %effective_mems7.i = getelementptr inbounds %struct.cpuset, ptr %9, i32 0, i32 5
  %11 = ptrtoint ptr %effective_mems7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %effective_mems7.i, align 4
  %and.i.i8.i = and i32 %10, 1
  %and4.i.i9.i = and i32 %and.i.i8.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i9.i)
  %tobool.not10.i = icmp eq i32 %and4.i.i9.i, 0
  br i1 %tobool.not10.i, label %task_cs.exit.while.body.i_crit_edge, label %task_cs.exit.guarantee_online_mems.exit_crit_edge

task_cs.exit.guarantee_online_mems.exit_crit_edge: ; preds = %task_cs.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %guarantee_online_mems.exit

task_cs.exit.while.body.i_crit_edge:              ; preds = %task_cs.exit
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %task_cs.exit.while.body.i_crit_edge
  %cs.addr.011.i = phi ptr [ %14, %while.body.i.while.body.i_crit_edge ], [ %9, %task_cs.exit.while.body.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cs.addr.011.i, i32 0, i32 12
  %13 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i.i, align 8
  %effective_mems.i = getelementptr inbounds %struct.cpuset, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %effective_mems.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %effective_mems.i, align 4
  %and4.i.i.i = and i32 %and.i.i8.i, %16
  %tobool.not.i6 = icmp eq i32 %and4.i.i.i, 0
  br i1 %tobool.not.i6, label %while.body.i.while.body.i_crit_edge, label %while.body.i.guarantee_online_mems.exit_crit_edge

while.body.i.guarantee_online_mems.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %guarantee_online_mems.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

guarantee_online_mems.exit:                       ; preds = %while.body.i.guarantee_online_mems.exit_crit_edge, %task_cs.exit.guarantee_online_mems.exit_crit_edge
  %call.i7 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i7, label %guarantee_online_mems.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

guarantee_online_mems.exit.rcu_read_unlock.exit_crit_edge: ; preds = %guarantee_online_mems.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %guarantee_online_mems.exit
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %guarantee_online_mems.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %17 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i14 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i15, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @callback_lock, i32 noundef %call2) #17
  ret i32 1
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cpuset_nodemask_valid_mems_allowed(ptr nocapture noundef readonly %nodemask) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mems_allowed = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 160
  %4 = ptrtoint ptr %nodemask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nodemask, align 4
  %6 = ptrtoint ptr %mems_allowed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mems_allowed, align 4
  %and.i.i = and i32 %5, 1
  %and4.i.i = and i32 %and.i.i, %7
  ret i32 %and4.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__cpuset_node_allowed(i32 noundef %node, i32 noundef %gfp_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i47 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i47 to ptr
  %preempt_count.i48 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i48 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i48, align 4
  %and2 = and i32 %7, 983040
  %or = or i32 %and2, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i49 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i49 to ptr
  %preempt_count.i50 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i50 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i50, align 4
  %and4 = and i32 %11, 65280
  %or5 = or i32 %or, %and4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5)
  %tobool.not = icmp eq i32 %or5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i56 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i56 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %mems_allowed = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 160
  %div3.i = lshr i32 %node, 5
  %arrayidx.i = getelementptr i32, ptr %mems_allowed, i32 %div3.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %node, 31
  %18 = shl nuw i32 1, %and.i
  %19 = and i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool8.not = icmp eq i32 %19, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 111
  %20 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %signal.i, align 16
  %oom_mm.i = getelementptr inbounds %struct.signal_struct, ptr %21, i32 0, i32 59
  %22 = ptrtoint ptr %oom_mm.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %oom_mm.i, align 4
  %tobool.i.not = icmp eq ptr %23, null
  br i1 %tobool.i.not, label %if.end17, label %if.end10.cleanup_crit_edge, !prof !159

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %and18 = and i32 %gfp_mask, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %flags24 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 3
  %24 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags24, align 4
  %and25 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body29, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body29:                                        ; preds = %if.end21
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @callback_lock) #17
  %26 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %do.body29.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.body29.rcu_read_lock.exit_crit_edge:           ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.body29
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.body29.rcu_read_lock.exit_crit_edge
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %cgroups.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 164
  %32 = ptrtoint ptr %cgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %cgroups.i.i, align 16
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.task_cs.exit_crit_edge

rcu_read_lock.exit.task_cs.exit_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call.i2.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.task_cs.exit_crit_edge

lor.lhs.false.i.i.task_cs.exit_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 3
  %34 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i.i, align 4
  %and.i.i57 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i57)
  %tobool5.not.i.i = icmp eq i32 %and.i.i57, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false4.i.i.task_cs.exit_crit_edge

lor.lhs.false4.i.i.task_cs.exit_crit_edge:        ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call7.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false6.i.i.task_cs.exit_crit_edge

lor.lhs.false6.i.i.task_cs.exit_crit_edge:        ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false6.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i.task_cs.exit_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i.i.task_cs.exit_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true11.i.i.task_cs.exit_crit_edge, label %if.then.i.i

land.lhs.true11.i.i.task_cs.exit_crit_edge:       ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

if.then.i.i:                                      ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 494, ptr noundef nonnull @.str.21) #17
  br label %task_cs.exit

task_cs.exit:                                     ; preds = %if.then.i.i, %land.lhs.true11.i.i.task_cs.exit_crit_edge, %land.lhs.true.i.i.task_cs.exit_crit_edge, %lor.lhs.false6.i.i.task_cs.exit_crit_edge, %lor.lhs.false4.i.i.task_cs.exit_crit_edge, %lor.lhs.false.i.i.task_cs.exit_crit_edge, %rcu_read_lock.exit.task_cs.exit_crit_edge
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %task_cs.exit
  %cs.addr.0.i = phi ptr [ %37, %task_cs.exit ], [ %45, %land.rhs.i.while.cond.i_crit_edge ]
  %flags.i.i58 = getelementptr inbounds %struct.cpuset, ptr %cs.addr.0.i, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i.i58 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %flags.i.i58, align 4
  %40 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i59 = icmp eq i32 %40, 0
  br i1 %tobool.not.i59, label %lor.lhs.false.i, label %while.cond.i.nearest_hardwall_ancestor.exit_crit_edge

while.cond.i.nearest_hardwall_ancestor.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nearest_hardwall_ancestor.exit

lor.lhs.false.i:                                  ; preds = %while.cond.i
  %41 = ptrtoint ptr %flags.i.i58 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags.i.i58, align 4
  %43 = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool2.not.i = icmp eq i32 %43, 0
  br i1 %tobool2.not.i, label %land.rhs.i, label %lor.lhs.false.i.nearest_hardwall_ancestor.exit_crit_edge

lor.lhs.false.i.nearest_hardwall_ancestor.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nearest_hardwall_ancestor.exit

land.rhs.i:                                       ; preds = %lor.lhs.false.i
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cs.addr.0.i, i32 0, i32 12
  %44 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parent.i.i, align 8
  %tobool4.not.i = icmp eq ptr %45, null
  br i1 %tobool4.not.i, label %land.rhs.i.nearest_hardwall_ancestor.exit_crit_edge, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.i

land.rhs.i.nearest_hardwall_ancestor.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nearest_hardwall_ancestor.exit

nearest_hardwall_ancestor.exit:                   ; preds = %land.rhs.i.nearest_hardwall_ancestor.exit_crit_edge, %lor.lhs.false.i.nearest_hardwall_ancestor.exit_crit_edge, %while.cond.i.nearest_hardwall_ancestor.exit_crit_edge
  %mems_allowed38 = getelementptr inbounds %struct.cpuset, ptr %cs.addr.0.i, i32 0, i32 3
  %arrayidx.i52 = getelementptr i32, ptr %mems_allowed38, i32 %div3.i
  %46 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx.i52, align 4
  %48 = and i32 %47, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool42 = icmp ne i32 %48, 0
  %call.i60 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i60, label %nearest_hardwall_ancestor.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i63

nearest_hardwall_ancestor.exit.rcu_read_unlock.exit_crit_edge: ; preds = %nearest_hardwall_ancestor.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i63:                                ; preds = %nearest_hardwall_ancestor.exit
  %call1.i61 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i61)
  %tobool.not.i62 = icmp eq i32 %call1.i61, 0
  br i1 %tobool.not.i62, label %land.lhs.true.i63.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i65

land.lhs.true.i63.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i65:                               ; preds = %land.lhs.true.i63
  %.b4.i64 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i64, label %land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge, label %if.then.i66

land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i65
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i66:                                      ; preds = %land.lhs.true2.i65
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i66, %land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i63.rcu_read_unlock.exit_crit_edge, %nearest_hardwall_ancestor.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %49 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i67 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i67 to ptr
  %preempt_count.i.i.i.i68 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i68, align 4
  %sub.i.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i68, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @callback_lock, i32 noundef %call31) #17
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool42, %rcu_read_unlock.exit ], [ true, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ true, %if.end10.cleanup_crit_edge ], [ false, %if.end17.cleanup_crit_edge ], [ true, %if.end21.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpuset_mem_spread_node() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cpuset_mem_spread_rotor = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 162
  %4 = ptrtoint ptr %cpuset_mem_spread_rotor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpuset_mem_spread_rotor, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %cpuset_mem_spread_rotor to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cpuset_mem_spread_rotor, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %cpuset_mem_spread_rotor9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 162
  %9 = ptrtoint ptr %cpuset_mem_spread_rotor9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpuset_mem_spread_rotor9, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %mems_allowed.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 160
  %call1.i = tail call i32 @__next_node_in(i32 noundef %10, ptr noundef %mems_allowed.i) #17
  %15 = ptrtoint ptr %cpuset_mem_spread_rotor9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call1.i, ptr %cpuset_mem_spread_rotor9, align 4
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpuset_slab_spread_node() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cpuset_slab_spread_rotor = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 163
  %4 = ptrtoint ptr %cpuset_slab_spread_rotor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpuset_slab_spread_rotor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %cpuset_slab_spread_rotor to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cpuset_slab_spread_rotor, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %cpuset_slab_spread_rotor9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 163
  %9 = ptrtoint ptr %cpuset_slab_spread_rotor9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpuset_slab_spread_rotor9, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %mems_allowed.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 160
  %call1.i = tail call i32 @__next_node_in(i32 noundef %10, ptr noundef %mems_allowed.i) #17
  %15 = ptrtoint ptr %cpuset_slab_spread_rotor9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call1.i, ptr %cpuset_slab_spread_rotor9, align 4
  ret i32 %call1.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cpuset_mems_allowed_intersects(ptr nocapture noundef readonly %tsk1, ptr nocapture noundef readonly %tsk2) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mems_allowed = getelementptr inbounds %struct.task_struct, ptr %tsk1, i32 0, i32 160
  %mems_allowed1 = getelementptr inbounds %struct.task_struct, ptr %tsk2, i32 0, i32 160
  %0 = ptrtoint ptr %mems_allowed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mems_allowed, align 4
  %2 = ptrtoint ptr %mems_allowed1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mems_allowed1, align 4
  %and.i.i = and i32 %1, 1
  %and4.i.i = and i32 %and.i.i, %3
  ret i32 %and4.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuset_print_current_mems_allowed() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cgroups.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 164
  %8 = ptrtoint ptr %cgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %cgroups.i.i, align 16
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.task_cs.exit_crit_edge

rcu_read_lock.exit.task_cs.exit_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call.i2.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.task_cs.exit_crit_edge

lor.lhs.false.i.i.task_cs.exit_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false4.i.i.task_cs.exit_crit_edge

lor.lhs.false4.i.i.task_cs.exit_crit_edge:        ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call7.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false6.i.i.task_cs.exit_crit_edge

lor.lhs.false6.i.i.task_cs.exit_crit_edge:        ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false6.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i.task_cs.exit_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i.i.task_cs.exit_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true11.i.i.task_cs.exit_crit_edge, label %if.then.i.i

land.lhs.true11.i.i.task_cs.exit_crit_edge:       ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

if.then.i.i:                                      ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 494, ptr noundef nonnull @.str.21) #17
  br label %task_cs.exit

task_cs.exit:                                     ; preds = %if.then.i.i, %land.lhs.true11.i.i.task_cs.exit_crit_edge, %land.lhs.true.i.i.task_cs.exit_crit_edge, %lor.lhs.false6.i.i.task_cs.exit_crit_edge, %lor.lhs.false4.i.i.task_cs.exit_crit_edge, %lor.lhs.false.i.i.task_cs.exit_crit_edge, %rcu_read_lock.exit.task_cs.exit_crit_edge
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #22
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %kn.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %kn.i, align 8
  tail call void @pr_cont_kernfs_name(ptr noundef %17) #17
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %mems_allowed = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 160
  %tobool.not.i15 = icmp ne ptr %mems_allowed, null
  %cond.i = zext i1 %tobool.not.i15 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %cond.i, ptr noundef %mems_allowed) #22
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i16, label %task_cs.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

task_cs.exit.rcu_read_unlock.exit_crit_edge:      ; preds = %task_cs.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %task_cs.exit
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %task_cs.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %20 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i23 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__cpuset_memory_pressure_bump() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cgroups.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 164
  %8 = ptrtoint ptr %cgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %cgroups.i.i, align 16
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.task_cs.exit_crit_edge

rcu_read_lock.exit.task_cs.exit_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call.i2.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.task_cs.exit_crit_edge

lor.lhs.false.i.i.task_cs.exit_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false4.i.i.task_cs.exit_crit_edge

lor.lhs.false4.i.i.task_cs.exit_crit_edge:        ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call7.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false6.i.i.task_cs.exit_crit_edge

lor.lhs.false6.i.i.task_cs.exit_crit_edge:        ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false6.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i.task_cs.exit_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i.i.task_cs.exit_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true11.i.i.task_cs.exit_crit_edge, label %if.then.i.i

land.lhs.true11.i.i.task_cs.exit_crit_edge:       ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_cs.exit

if.then.i.i:                                      ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 494, ptr noundef nonnull @.str.21) #17
  br label %task_cs.exit

task_cs.exit:                                     ; preds = %if.then.i.i, %land.lhs.true11.i.i.task_cs.exit_crit_edge, %land.lhs.true.i.i.task_cs.exit_crit_edge, %lor.lhs.false6.i.i.task_cs.exit_crit_edge, %lor.lhs.false4.i.i.task_cs.exit_crit_edge, %lor.lhs.false.i.i.task_cs.exit_crit_edge, %rcu_read_lock.exit.task_cs.exit_crit_edge
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %fmeter = getelementptr inbounds %struct.cpuset, ptr %13, i32 0, i32 8
  %lock.i = getelementptr inbounds %struct.cpuset, ptr %13, i32 0, i32 8, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #17
  %call.i.i = tail call i64 @ktime_get_seconds() #17
  %time.i.i = getelementptr inbounds %struct.cpuset, ptr %13, i32 0, i32 8, i32 2
  %14 = ptrtoint ptr %time.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %time.i.i, align 8
  %sub.i.i = sub i64 %call.i.i, %15
  %conv.i.i = trunc i64 %sub.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %cmp.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %cmp.i.i, label %task_cs.exit.fmeter_markevent.exit_crit_edge, label %if.end.i.i

task_cs.exit.fmeter_markevent.exit_crit_edge:     ; preds = %task_cs.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %fmeter_markevent.exit

if.end.i.i:                                       ; preds = %task_cs.exit
  %16 = tail call i32 @llvm.umin.i32(i32 %conv.i.i, i32 99) #17
  %val.i.i = getelementptr inbounds %struct.cpuset, ptr %13, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %val.promoted.i.i = load i32, ptr %val.i.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.i.i
  %div26.i.i = phi i32 [ %val.promoted.i.i, %if.end.i.i ], [ %div.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %ticks.025.i.i = phi i32 [ %16, %if.end.i.i ], [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %ticks.025.i.i, -1
  %mul.i.i = mul i32 %div26.i.i, 933
  %div.i.i = sdiv i32 %mul.i.i, 1000
  %cmp4.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp4.not.i.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %18 = ptrtoint ptr %time.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call.i.i, ptr %time.i.i, align 8
  %19 = ptrtoint ptr %fmeter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fmeter, align 8
  %mul8.i.i = mul i32 %20, 67
  %div9.i.i = sdiv i32 %mul8.i.i, 1000
  %add.i.i = add nsw i32 %div9.i.i, %div.i.i
  %21 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.i.i, ptr %val.i.i, align 4
  store i32 0, ptr %fmeter, align 8
  br label %fmeter_markevent.exit

fmeter_markevent.exit:                            ; preds = %while.cond.while.end_crit_edge.i.i, %task_cs.exit.fmeter_markevent.exit_crit_edge
  %22 = ptrtoint ptr %fmeter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fmeter, align 8
  %add.i = add i32 %23, 1000
  %24 = tail call i32 @llvm.smin.i32(i32 %add.i, i32 1000000) #17
  %25 = ptrtoint ptr %fmeter to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %fmeter, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #17
  %call.i2 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i2, label %fmeter_markevent.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

fmeter_markevent.exit.rcu_read_unlock.exit_crit_edge: ; preds = %fmeter_markevent.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %fmeter_markevent.exit
  %call1.i3 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %fmeter_markevent.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %26 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i9 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_cpuset_show(ptr noundef %m, ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %pid, ptr noundef %tsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4096) #20
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i, label %if.end.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.rcu_read_lock.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.rcu_read_lock.exit.i_crit_edge
  %cgroups.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 164
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i, %rcu_read_lock.exit.i
  %5 = ptrtoint ptr %cgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %cgroups.i.i, align 16
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i1.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i1.i, label %lor.lhs.false.i.i, label %while.cond.i.task_css.exit.i_crit_edge

while.cond.i.task_css.exit.i_crit_edge:           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_css.exit.i

lor.lhs.false.i.i:                                ; preds = %while.cond.i
  %call.i2.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.task_css.exit.i_crit_edge

lor.lhs.false.i.i.task_css.exit.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_css.exit.i

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false4.i.i.task_css.exit.i_crit_edge

lor.lhs.false4.i.i.task_css.exit.i_crit_edge:     ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_css.exit.i

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call7.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i2.i, label %lor.lhs.false6.i.i.task_css.exit.i_crit_edge

lor.lhs.false6.i.i.task_css.exit.i_crit_edge:     ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_css.exit.i

land.lhs.true.i2.i:                               ; preds = %lor.lhs.false6.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i2.i.task_css.exit.i_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i2.i.task_css.exit.i_crit_edge:     ; preds = %land.lhs.true.i2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_css.exit.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i2.i
  %.b1.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true11.i.i.task_css.exit.i_crit_edge, label %if.then.i3.i

land.lhs.true11.i.i.task_css.exit.i_crit_edge:    ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_css.exit.i

if.then.i3.i:                                     ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 494, ptr noundef nonnull @.str.21) #17
  br label %task_css.exit.i

task_css.exit.i:                                  ; preds = %if.then.i3.i, %land.lhs.true11.i.i.task_css.exit.i_crit_edge, %land.lhs.true.i2.i.task_css.exit.i_crit_edge, %lor.lhs.false6.i.i.task_css.exit.i_crit_edge, %lor.lhs.false4.i.i.task_css.exit.i_crit_edge, %lor.lhs.false.i.i.task_css.exit.i_crit_edge, %while.cond.i.task_css.exit.i_crit_edge
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %flags.i4.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %flags.i4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i4.i, align 4
  %and.i5.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5.i)
  %tobool.not.i6.i = icmp eq i32 %and.i5.i, 0
  br i1 %tobool.not.i6.i, label %if.then.i7.i, label %task_css.exit.i.while.end.i_crit_edge

task_css.exit.i.while.end.i_crit_edge:            ; preds = %task_css.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

if.then.i7.i:                                     ; preds = %task_css.exit.i
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %10, i32 0, i32 2
  %13 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i.i.i.i, label %if.then.i7.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.then.i7.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %if.then.i7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then.i7.i
  %call1.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true2.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b4.i.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit.i.i.i.i

rcu_read_lock.exit.i.i.i.i:                       ; preds = %if.then.i.i.i.i.i, %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %if.then.i7.i.rcu_read_lock.exit.i.i.i.i_crit_edge
  %17 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %refcnt.i.i, align 4
  %and.i.i.i.i.i = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i1.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i.i.i, label %do.body1.i.i.i.i, label %if.else.i.i.i.i, !prof !159

do.body1.i.i.i.i:                                 ; preds = %rcu_read_lock.exit.i.i.i.i
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !160
  %20 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i2.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i2.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i8.i = add i32 %25, %18
  %26 = inttoptr i32 %add.i.i.i8.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add15.i.i.i.i = add i32 %28, 1
  store i32 %add15.i.i.i.i, ptr %26, align 4
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !161
  %and.i.i.i.i.i9.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i9.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i9.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then29.i.i.i.i, label %do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge, !prof !162

do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge:      ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end31.i.i.i.i

if.then29.i.i.i.i:                                ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end31.i.i.i.i

do.end31.i.i.i.i:                                 ; preds = %if.then29.i.i.i.i, %do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #17, !srcloc !163
  br label %if.end39.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %rcu_read_lock.exit.i.i.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %10, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %31, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %31, i32 1, i32 3, i32 1) #17
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 0, i32 1, ptr elementtype(i32) %31) #17, !srcloc !180
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %if.else.i.i.i.i.atomic_long_add_unless.exit.i.i.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i.i

if.else.i.i.i.i.atomic_long_add_unless.exit.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atomic_long_add_unless.exit.i.i.i.i

do.end11.i.i.i.i.i.i.i.i:                         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !181
  br label %atomic_long_add_unless.exit.i.i.i.i

atomic_long_add_unless.exit.i.i.i.i:              ; preds = %do.end11.i.i.i.i.i.i.i.i, %if.else.i.i.i.i.atomic_long_add_unless.exit.i.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br label %if.end39.i.i.i.i

if.end39.i.i.i.i:                                 ; preds = %atomic_long_add_unless.exit.i.i.i.i, %do.end31.i.i.i.i
  %ret.0.off0.i.i.i.i = phi i1 [ true, %do.end31.i.i.i.i ], [ %cmp.i.i.i.i.i.i.i, %atomic_long_add_unless.exit.i.i.i.i ]
  %call.i3.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i3.i.i.i.i, label %if.end39.i.i.i.i.css_tryget.exit.i_crit_edge, label %land.lhs.true.i6.i.i.i.i

if.end39.i.i.i.i.css_tryget.exit.i_crit_edge:     ; preds = %if.end39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %css_tryget.exit.i

land.lhs.true.i6.i.i.i.i:                         ; preds = %if.end39.i.i.i.i
  %call1.i4.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i.i.i)
  %tobool.not.i5.i.i.i.i = icmp eq i32 %call1.i4.i.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i.i, label %land.lhs.true.i6.i.i.i.i.css_tryget.exit.i_crit_edge, label %land.lhs.true2.i8.i.i.i.i

land.lhs.true.i6.i.i.i.i.css_tryget.exit.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %css_tryget.exit.i

land.lhs.true2.i8.i.i.i.i:                        ; preds = %land.lhs.true.i6.i.i.i.i
  %.b4.i7.i.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i.i.i, label %land.lhs.true2.i8.i.i.i.i.css_tryget.exit.i_crit_edge, label %if.then.i9.i.i.i.i

land.lhs.true2.i8.i.i.i.i.css_tryget.exit.i_crit_edge: ; preds = %land.lhs.true2.i8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %css_tryget.exit.i

if.then.i9.i.i.i.i:                               ; preds = %land.lhs.true2.i8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %css_tryget.exit.i

css_tryget.exit.i:                                ; preds = %if.then.i9.i.i.i.i, %land.lhs.true2.i8.i.i.i.i.css_tryget.exit.i_crit_edge, %land.lhs.true.i6.i.i.i.i.css_tryget.exit.i_crit_edge, %if.end39.i.i.i.i.css_tryget.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %33 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i10.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i10.i.i.i.i to ptr
  %preempt_count.i.i.i.i11.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br i1 %ret.0.off0.i.i.i.i, label %css_tryget.exit.i.while.end.i_crit_edge, label %do.end.i, !prof !159

css_tryget.exit.i.while.end.i_crit_edge:          ; preds = %css_tryget.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

do.end.i:                                         ; preds = %css_tryget.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !182
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !183
  br label %while.cond.i

while.end.i:                                      ; preds = %css_tryget.exit.i.while.end.i_crit_edge, %task_css.exit.i.while.end.i_crit_edge
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i10.i, label %while.end.i.task_get_css.exit_crit_edge, label %land.lhs.true.i13.i

while.end.i.task_get_css.exit_crit_edge:          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_get_css.exit

land.lhs.true.i13.i:                              ; preds = %while.end.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.task_get_css.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.task_get_css.exit_crit_edge:  ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_get_css.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.task_get_css.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.task_get_css.exit_crit_edge: ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %task_get_css.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %task_get_css.exit

task_get_css.exit:                                ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.task_get_css.exit_crit_edge, %land.lhs.true.i13.i.task_get_css.exit_crit_edge, %while.end.i.task_get_css.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %37 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i17.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  %41 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %10, align 8
  %43 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 110
  %47 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nsproxy, align 4
  %cgroup_ns = getelementptr inbounds %struct.nsproxy, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %cgroup_ns to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cgroup_ns, align 4
  %call4 = tail call i32 @cgroup_path_ns(ptr noundef %42, ptr noundef nonnull %call7.i, i32 noundef 4096, ptr noundef %50) #17
  tail call fastcc void @css_put(ptr noundef %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %call4)
  %cmp = icmp sgt i32 %call4, 4095
  %spec.store.select = select i1 %cmp, i32 -36, i32 %call4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp7 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp7, label %task_get_css.exit.out_free_crit_edge, label %if.end9

task_get_css.exit.out_free_crit_edge:             ; preds = %task_get_css.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free

if.end9:                                          ; preds = %task_get_css.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %call7.i) #17
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #17
  br label %out_free

out_free:                                         ; preds = %if.end9, %task_get_css.exit.out_free_crit_edge
  %retval1.0 = phi i32 [ %spec.store.select, %task_get_css.exit.out_free_crit_edge ], [ 0, %if.end9 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #17
  br label %out

out:                                              ; preds = %out_free, %entry.out_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %out_free ], [ -12, %entry.out_crit_edge ]
  ret i32 %retval1.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_path_ns(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @css_put(ptr noundef %css) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %refcnt = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 2
  %2 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i.i, label %if.then.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.rcu_read_lock.exit.i.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.then.rcu_read_lock.exit.i.i_crit_edge
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcnt, align 4
  %and.i.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !159

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !160
  %9 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i2.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %14, %7
  %15 = inttoptr i32 %add.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add15.i.i = add i32 %17, -1
  store i32 %add15.i.i, ptr %15, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !161
  %and.i.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !162

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #17, !srcloc !163
  br label %if.end48.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  %data.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %20, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %20, i32 1, i32 3, i32 1) #17
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #17, !srcloc !185
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then45.i.i, label %if.else.i.i.if.end48.i.i_crit_edge, !prof !162

if.else.i.i.if.end48.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %release.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release.i.i, align 4
  tail call void %25(ptr noundef %refcnt) #17
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %if.else.i.i.if.end48.i.i_crit_edge, %do.end31.i.i
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i3.i.i, label %if.end48.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end48.i.i.percpu_ref_put.exit_crit_edge:       ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %percpu_ref_put.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end48.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %percpu_ref_put.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %percpu_ref_put.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %percpu_ref_put.exit

percpu_ref_put.exit:                              ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, %if.end48.i.i.percpu_ref_put.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %26 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i10.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br label %if.end

if.end:                                           ; preds = %percpu_ref_put.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuset_task_status_allowed(ptr noundef %m, ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mems_allowed = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 160
  %tobool.not.i = icmp ne ptr %mems_allowed, null
  %cond.i = zext i1 %tobool.not.i to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i32 noundef %cond.i, ptr noundef %mems_allowed) #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, i32 noundef %cond.i, ptr noundef %mems_allowed) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_assert_cpus_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_next_descendant_pre(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_rightmost_descendant(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_equal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_sched_domains(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_domain_attr_tree(ptr nocapture noundef %dattr, ptr noundef %root_cs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef %root_cs) #17
  %tobool.not36 = icmp eq ptr %call, null
  br i1 %tobool.not36, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %pos_css.037 = phi ptr [ %call12, %for.inc.for.body_crit_edge ], [ %call, %rcu_read_lock.exit.for.body_crit_edge ]
  %flags.i = getelementptr inbounds %struct.cpuset, ptr %pos_css.037, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i19 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i19, label %for.body.for.inc_crit_edge, label %land.rhs.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.rhs.i:                                       ; preds = %for.body
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos_css.037, i32 0, i32 7
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %is_cpuset_online.exit, label %land.rhs.i.cpumask_empty.exit_crit_edge

land.rhs.i.cpumask_empty.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpumask_empty.exit

is_cpuset_online.exit:                            ; preds = %land.rhs.i
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos_css.037, i32 0, i32 2
  %8 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %refcnt.i.i, align 4
  %and.i.i.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.i, label %is_cpuset_online.exit.cpumask_empty.exit_crit_edge, label %is_cpuset_online.exit.for.inc_crit_edge

is_cpuset_online.exit.for.inc_crit_edge:          ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

is_cpuset_online.exit.cpumask_empty.exit_crit_edge: ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpumask_empty.exit

cpumask_empty.exit:                               ; preds = %is_cpuset_online.exit.cpumask_empty.exit_crit_edge, %land.rhs.i.cpumask_empty.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %cpus_allowed = getelementptr inbounds %struct.cpuset, ptr %pos_css.037, i32 0, i32 2
  %11 = ptrtoint ptr %cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpus_allowed, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %12, i32 noundef %10) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %10)
  %cmp4.i.i = icmp eq i32 %call.i.i, %10
  br i1 %cmp4.i.i, label %if.then4, label %if.end

if.then4:                                         ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #19
  %call5 = tail call ptr @css_rightmost_descendant(ptr noundef nonnull %pos_css.037) #17
  br label %for.inc

if.end:                                           ; preds = %cpumask_empty.exit
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i, align 4
  %15 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not = icmp eq i32 %15, 0
  br i1 %tobool7.not, label %if.end.for.inc_crit_edge, label %if.then8

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then8:                                         ; preds = %if.end
  %16 = ptrtoint ptr %dattr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dattr, align 4
  %relax_domain_level1.i = getelementptr inbounds %struct.cpuset, ptr %pos_css.037, i32 0, i32 11
  %18 = ptrtoint ptr %relax_domain_level1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %relax_domain_level1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.i = icmp slt i32 %17, %19
  br i1 %cmp.i, label %if.then.i25, label %if.then8.for.inc_crit_edge

if.then8.for.inc_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then.i25:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  %20 = ptrtoint ptr %dattr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %dattr, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then.i25, %if.then8.for.inc_crit_edge, %if.end.for.inc_crit_edge, %if.then4, %is_cpuset_online.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %pos_css.1 = phi ptr [ %call5, %if.then4 ], [ %pos_css.037, %if.end.for.inc_crit_edge ], [ %pos_css.037, %is_cpuset_online.exit.for.inc_crit_edge ], [ %pos_css.037, %if.then8.for.inc_crit_edge ], [ %pos_css.037, %if.then.i25 ], [ %pos_css.037, %for.body.for.inc_crit_edge ]
  %call12 = tail call ptr @css_next_descendant_pre(ptr noundef %pos_css.1, ptr noundef %root_cs) #17
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i26 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i26, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i29

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i29:                                ; preds = %for.end
  %call1.i27 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i31

land.lhs.true.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i31:                               ; preds = %land.lhs.true.i29
  %.b4.i30 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i30, label %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, label %if.then.i32

land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i32:                                      ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i32, %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %21 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i33 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i34, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i34, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @housekeeping_cpumask(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @static_key_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @partition_sched_domains_locked(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dl_clear_root_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @css_get(ptr noundef %css) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %refcnt = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 2
  %2 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i.i, label %if.then.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.rcu_read_lock.exit.i.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.then.rcu_read_lock.exit.i.i_crit_edge
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcnt, align 4
  %and.i.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !159

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !160
  %9 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i2.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %14, %7
  %15 = inttoptr i32 %add.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add15.i.i = add i32 %17, 1
  store i32 %add15.i.i, ptr %15, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !161
  %and.i.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !162

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #17, !srcloc !163
  br label %if.end38.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %data.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %20, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %20, i32 1, i32 3, i32 1) #17
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #17, !srcloc !187
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.else.i.i, %do.end31.i.i
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i3.i.i, label %if.end38.i.i.percpu_ref_get.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end38.i.i.percpu_ref_get.exit_crit_edge:       ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %percpu_ref_get.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end38.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_get.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_get.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %percpu_ref_get.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_get.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_get.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %percpu_ref_get.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %percpu_ref_get.exit

percpu_ref_get.exit:                              ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_get.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_get.exit_crit_edge, %if.end38.i.i.percpu_ref_get.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %22 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i10.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br label %if.end

if.end:                                           ; preds = %percpu_ref_get.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @css_task_iter_start(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_task_iter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dl_add_task_root_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @css_task_iter_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_inc_cpuslocked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_prstate(ptr noundef %cs, i32 noundef %new_prs) unnamed_addr #0 align 64 {
entry:
  %tmpmask = alloca %struct.tmpmasks, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %partition_root_state = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 13
  %0 = ptrtoint ptr %partition_root_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %partition_root_state, align 8
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cs, i32 0, i32 12
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmpmask) #17
  %4 = ptrtoint ptr %tmpmask to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmpmask, align 4, !annotation !172
  %5 = getelementptr inbounds %struct.tmpmasks, ptr %tmpmask, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !172
  %7 = getelementptr inbounds %struct.tmpmasks, ptr %tmpmask, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !172
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %new_prs)
  %cmp = icmp eq i32 %1, %new_prs
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_prs)
  %tobool.not = icmp ne i32 %new_prs, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp1 = icmp eq i32 %1, -1
  %or.cond = select i1 %tobool.not, i1 %cmp1, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i = call zeroext i1 @zalloc_cpumask_var(ptr noundef %7, i32 noundef 3264) #17
  br i1 %call.i, label %if.end2.i, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end2.i:                                        ; preds = %if.end3
  %call3.i = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %tmpmask, i32 noundef 3264) #17
  br i1 %call3.i, label %if.end5.i, label %if.end2.i.cleanup.sink.split_crit_edge

if.end2.i.cleanup.sink.split_crit_edge:           ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.end5.i:                                        ; preds = %if.end2.i
  %call6.i = call zeroext i1 @zalloc_cpumask_var(ptr noundef %5, i32 noundef 3264) #17
  br i1 %call6.i, label %if.end7, label %if.end5.i.cleanup.sink.split.sink.split_crit_edge

if.end5.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.sink.split

if.end7:                                          ; preds = %if.end5.i
  %9 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end25 [
    i32 0, label %cpumask_empty.exit
    i32 -1, label %if.then23
  ]

cpumask_empty.exit:                               ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %cpus_allowed = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 2
  %11 = ptrtoint ptr %cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpus_allowed, align 4
  %call.i.i = call i32 @_find_first_bit_be(ptr noundef %12, i32 noundef %10) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %10)
  %cmp4.i.i = icmp eq i32 %call.i.i, %10
  br i1 %cmp4.i.i, label %cpumask_empty.exit.if.end41_crit_edge, label %if.end12

cpumask_empty.exit.if.end41_crit_edge:            ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.end12:                                         ; preds = %cpumask_empty.exit
  %call13 = call fastcc i32 @update_flag(i32 noundef 1, ptr noundef %cs, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.if.end41_crit_edge

if.end12.if.end41_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.end16:                                         ; preds = %if.end12
  %call17 = call fastcc i32 @update_parent_subparts_cpumask(ptr noundef %cs, i32 noundef 0, ptr noundef null, ptr noundef nonnull %tmpmask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.if.end31_crit_edge, label %if.then19

if.end16.if.end31_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  %call20 = call fastcc i32 @update_flag(i32 noundef 1, ptr noundef %cs, i32 noundef 0)
  br label %if.end41

if.then23:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  %call24 = call fastcc i32 @update_flag(i32 noundef 1, ptr noundef %cs, i32 noundef 0)
  br label %notify_partition_change.exit

if.end25:                                         ; preds = %if.end7
  %call26 = call fastcc i32 @update_parent_subparts_cpumask(ptr noundef %cs, i32 noundef 1, ptr noundef null, ptr noundef nonnull %tmpmask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.if.end41_crit_edge

if.end25.if.end41_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  %call30 = call fastcc i32 @update_flag(i32 noundef 1, ptr noundef %cs, i32 noundef 0)
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %if.end16.if.end31_crit_edge
  %cmp32.not = icmp eq ptr %3, @top_cpuset
  br i1 %cmp32.not, label %if.end31.if.end34_crit_edge, label %if.then33

if.end31.if.end34_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @update_tasks_cpumask(ptr noundef %3)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end31.if.end34_crit_edge
  %child_ecpus_count = getelementptr inbounds %struct.cpuset, ptr %3, i32 0, i32 15
  %13 = ptrtoint ptr %child_ecpus_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %child_ecpus_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool35.not = icmp eq i32 %14, 0
  br i1 %tobool35.not, label %if.end34.if.end37_crit_edge, label %if.then36

if.end34.if.end37_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @update_sibling_cpumasks(ptr noundef %3, ptr noundef %cs, ptr noundef nonnull %tmpmask)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end34.if.end37_crit_edge
  call fastcc void @rebuild_sched_domains_locked()
  br label %notify_partition_change.exit

notify_partition_change.exit:                     ; preds = %if.end37, %if.then23
  call void @_raw_spin_lock_irq(ptr noundef nonnull @callback_lock) #17
  %15 = ptrtoint ptr %partition_root_state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %new_prs, ptr %partition_root_state, align 8
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @callback_lock) #17
  %partition_file.i = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 16
  call void @cgroup_file_notify(ptr noundef %partition_file.i) #17
  br label %if.end41

if.end41:                                         ; preds = %notify_partition_change.exit, %if.end25.if.end41_crit_edge, %if.then19, %if.end12.if.end41_crit_edge, %cpumask_empty.exit.if.end41_crit_edge
  %err.176 = phi i32 [ 0, %notify_partition_change.exit ], [ %call17, %if.then19 ], [ %call13, %if.end12.if.end41_crit_edge ], [ -22, %cpumask_empty.exit.if.end41_crit_edge ], [ %call26, %if.end25.if.end41_crit_edge ]
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 4
  call void @free_cpumask_var(ptr noundef %17) #17
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end41, %if.end5.i.cleanup.sink.split.sink.split_crit_edge
  %.sink77.ph = phi ptr [ %5, %if.end41 ], [ %7, %if.end5.i.cleanup.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph = phi i32 [ %err.176, %if.end41 ], [ -12, %if.end5.i.cleanup.sink.split.sink.split_crit_edge ]
  %18 = ptrtoint ptr %tmpmask to i32
  call void @__asan_load4_noabort(i32 %18)
  %.sink = load ptr, ptr %tmpmask, align 4
  call void @free_cpumask_var(ptr noundef %.sink) #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end2.i.cleanup.sink.split_crit_edge
  %.sink77 = phi ptr [ %7, %if.end2.i.cleanup.sink.split_crit_edge ], [ %.sink77.ph, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ -12, %if.end2.i.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  %19 = ptrtoint ptr %.sink77 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.sink77, align 4
  call void @free_cpumask_var(ptr noundef %20) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmpmask) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_flag(i32 noundef %bit, ptr noundef %cs, i32 noundef %turning_on) unnamed_addr #0 align 64 {
entry:
  %it.i = alloca %struct.css_task_iter, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @alloc_trial_cpuset(ptr noundef %cs)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %turning_on)
  %tobool1.not = icmp eq i32 %turning_on, 0
  %flags3 = getelementptr inbounds %struct.cpuset, ptr %call, i32 0, i32 1
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_set_bit(i32 noundef %bit, ptr noundef %flags3) #17
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_clear_bit(i32 noundef %bit, ptr noundef %flags3) #17
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %call5 = tail call fastcc i32 @validate_change(ptr noundef %cs, ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end4.free_cpuset.exit_crit_edge, label %if.end7

if.end4.free_cpuset.exit_crit_edge:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_cpuset.exit

if.end7:                                          ; preds = %if.end4
  %flags.i = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 1
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %flags.i48 = getelementptr inbounds %struct.cpuset, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i48 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i48, align 4
  %shr.i.i69 = xor i32 %3, %1
  %4 = and i32 %shr.i.i69, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp10.not = icmp eq i32 %4, 0
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = ptrtoint ptr %flags.i48 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i48, align 4
  %shr.i.i5270 = xor i32 %8, %6
  %9 = and i32 %shr.i.i5270, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp13.not = icmp eq i32 %9, 0
  br i1 %cmp13.not, label %lor.rhs, label %if.end7.lor.end_crit_edge

if.end7.lor.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.end

lor.rhs:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i, align 4
  %12 = ptrtoint ptr %flags.i48 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i48, align 4
  %shr.i.i5871 = xor i32 %13, %11
  %14 = and i32 %shr.i.i5871, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp17 = icmp ne i32 %14, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end7.lor.end_crit_edge
  %15 = phi i1 [ true, %if.end7.lor.end_crit_edge ], [ %cmp17, %lor.rhs ]
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @callback_lock) #17
  %16 = ptrtoint ptr %flags.i48 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i48, align 8
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %flags.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @callback_lock) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %cpus_allowed = getelementptr inbounds %struct.cpuset, ptr %call, i32 0, i32 2
  %20 = ptrtoint ptr %cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cpus_allowed, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %21, i32 noundef %19) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %19)
  %cmp4.i.i = icmp eq i32 %call.i.i, %19
  %brmerge = select i1 %cmp4.i.i, i1 true, i1 %cmp10.not
  br i1 %brmerge, label %lor.end.if.end24_crit_edge, label %if.then23

lor.end.if.end24_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24

if.then23:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @rebuild_sched_domains_locked()
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %lor.end.if.end24_crit_edge
  br i1 %15, label %if.then26, label %if.end24.free_cpuset.exit_crit_edge

if.end24.free_cpuset.exit_crit_edge:              ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_cpuset.exit

if.then26:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %it.i) #17
  %22 = call ptr @memset(ptr %it.i, i32 255, i32 52)
  call void @css_task_iter_start(ptr noundef %cs, i32 noundef 0, ptr noundef nonnull %it.i) #17
  %call2.i = call ptr @css_task_iter_next(ptr noundef nonnull %it.i) #17
  %tobool.not3.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not3.i, label %if.then26.update_tasks_flags.exit_crit_edge, label %if.then26.while.body.i_crit_edge

if.then26.while.body.i_crit_edge:                 ; preds = %if.then26
  br label %while.body.i

if.then26.update_tasks_flags.exit_crit_edge:      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_tasks_flags.exit

while.body.i:                                     ; preds = %cpuset_update_task_spread_flag.exit.i.while.body.i_crit_edge, %if.then26.while.body.i_crit_edge
  %call4.i = phi ptr [ %call.i, %cpuset_update_task_spread_flag.exit.i.while.body.i_crit_edge ], [ %call2.i, %if.then26.while.body.i_crit_edge ]
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i, align 4
  %25 = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i64 = icmp eq i32 %25, 0
  %atomic_flags.i10.i.i = getelementptr inbounds %struct.task_struct, ptr %call4.i, i32 0, i32 66
  br i1 %tobool.not.i.i64, label %if.else.i.i, label %if.then.i.i65

if.then.i.i65:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @_set_bit(i32 noundef 1, ptr noundef %atomic_flags.i10.i.i) #17
  br label %if.end.i.i66

if.else.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @_clear_bit(i32 noundef 1, ptr noundef %atomic_flags.i10.i.i) #17
  br label %if.end.i.i66

if.end.i.i66:                                     ; preds = %if.else.i.i, %if.then.i.i65
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags.i, align 4
  %28 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool2.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool2.not.i.i, label %if.else4.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #19
  call void @_set_bit(i32 noundef 2, ptr noundef %atomic_flags.i10.i.i) #17
  br label %cpuset_update_task_spread_flag.exit.i

if.else4.i.i:                                     ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #19
  call void @_clear_bit(i32 noundef 2, ptr noundef %atomic_flags.i10.i.i) #17
  br label %cpuset_update_task_spread_flag.exit.i

cpuset_update_task_spread_flag.exit.i:            ; preds = %if.else4.i.i, %if.then3.i.i
  %call.i = call ptr @css_task_iter_next(ptr noundef nonnull %it.i) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cpuset_update_task_spread_flag.exit.i.update_tasks_flags.exit_crit_edge, label %cpuset_update_task_spread_flag.exit.i.while.body.i_crit_edge

cpuset_update_task_spread_flag.exit.i.while.body.i_crit_edge: ; preds = %cpuset_update_task_spread_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

cpuset_update_task_spread_flag.exit.i.update_tasks_flags.exit_crit_edge: ; preds = %cpuset_update_task_spread_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_tasks_flags.exit

update_tasks_flags.exit:                          ; preds = %cpuset_update_task_spread_flag.exit.i.update_tasks_flags.exit_crit_edge, %if.then26.update_tasks_flags.exit_crit_edge
  call void @css_task_iter_end(ptr noundef nonnull %it.i) #17
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %it.i) #17
  br label %free_cpuset.exit

free_cpuset.exit:                                 ; preds = %update_tasks_flags.exit, %if.end24.free_cpuset.exit_crit_edge, %if.end4.free_cpuset.exit_crit_edge
  %cpus_allowed.i.i = getelementptr inbounds %struct.cpuset, ptr %call, i32 0, i32 2
  %29 = ptrtoint ptr %cpus_allowed.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cpus_allowed.i.i, align 4
  call void @free_cpumask_var(ptr noundef %30) #17
  %effective_cpus.i.i = getelementptr inbounds %struct.cpuset, ptr %call, i32 0, i32 4
  %31 = ptrtoint ptr %effective_cpus.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %effective_cpus.i.i, align 4
  call void @free_cpumask_var(ptr noundef %32) #17
  %subparts_cpus.i.i = getelementptr inbounds %struct.cpuset, ptr %call, i32 0, i32 6
  %33 = ptrtoint ptr %subparts_cpus.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %subparts_cpus.i.i, align 4
  call void @free_cpumask_var(ptr noundef %34) #17
  call void @kfree(ptr noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %free_cpuset.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %free_cpuset.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_parent_subparts_cpumask(ptr noundef %cpuset, i32 noundef %cmd, ptr noundef %newmask, ptr nocapture noundef readonly %tmp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cpuset, i32 0, i32 12
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpuset_rwsem, i32 0, i32 5), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !162

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1220, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %partition_root_state.i = getelementptr inbounds %struct.cpuset, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %partition_root_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %partition_root_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp slt i32 %4, 1
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %tobool28.not = icmp eq ptr %newmask, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %tobool28.not, label %cpumask_empty.exit267, label %cpumask_empty.exit

cpumask_empty.exit:                               ; preds = %lor.lhs.false
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull %newmask, i32 noundef %5) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %5)
  %cmp4.i.i = icmp eq i32 %call.i.i, %5
  br i1 %cmp4.i.i, label %cpumask_empty.exit.cleanup_crit_edge, label %cpumask_empty.exit.if.end35_crit_edge

cpumask_empty.exit.if.end35_crit_edge:            ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

cpumask_empty.exit.cleanup_crit_edge:             ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cpumask_empty.exit267:                            ; preds = %lor.lhs.false
  %cpus_allowed = getelementptr inbounds %struct.cpuset, ptr %cpuset, i32 0, i32 2
  %6 = ptrtoint ptr %cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpus_allowed, align 4
  %call.i.i263 = tail call i32 @_find_first_bit_be(ptr noundef %7, i32 noundef %5) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i263, i32 %5)
  %cmp4.i.i264 = icmp eq i32 %call.i.i263, %5
  br i1 %cmp4.i.i264, label %cpumask_empty.exit267.cleanup_crit_edge, label %cpumask_empty.exit267.if.end35_crit_edge

cpumask_empty.exit267.if.end35_crit_edge:         ; preds = %cpumask_empty.exit267
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

cpumask_empty.exit267.cleanup_crit_edge:          ; preds = %cpumask_empty.exit267
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end35:                                         ; preds = %cpumask_empty.exit267.if.end35_crit_edge, %cpumask_empty.exit.if.end35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd)
  %cmp36.not = icmp eq i32 %cmd, 2
  br i1 %cmp36.not, label %if.else.thread, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %if.end35
  %call38 = tail call zeroext i1 @css_has_online_children(ptr noundef %cpuset) #17
  br i1 %call38, label %land.lhs.true37.cleanup_crit_edge, label %if.end40

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end40:                                         ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp41 = icmp eq i32 %cmd, 0
  br i1 %cmp41, label %land.lhs.true42, label %if.else

land.lhs.true42:                                  ; preds = %if.end40
  %cpus_allowed43 = getelementptr inbounds %struct.cpuset, ptr %cpuset, i32 0, i32 2
  %effective_cpus = getelementptr inbounds %struct.cpuset, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = ptrtoint ptr %effective_cpus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %effective_cpus, align 4
  %11 = ptrtoint ptr %cpus_allowed43 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpus_allowed43, align 4
  %call.i.i274 = tail call i32 @__bitmap_subset(ptr noundef %12, ptr noundef %10, i32 noundef %8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i274)
  %tobool45.not = icmp eq i32 %call.i.i274, 0
  br i1 %tobool45.not, label %land.lhs.true42.cleanup_crit_edge, label %lor.lhs.false46

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false46:                                  ; preds = %land.lhs.true42
  %13 = ptrtoint ptr %cpus_allowed43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpus_allowed43, align 4
  %15 = ptrtoint ptr %effective_cpus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %effective_cpus, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i = tail call i32 @__bitmap_equal(ptr noundef %14, ptr noundef %16, i32 noundef %17) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool.i.not = icmp eq i32 %call13.i.i, 0
  br i1 %tobool.i.not, label %if.then53, label %lor.lhs.false46.cleanup_crit_edge

lor.lhs.false46.cleanup_crit_edge:                ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else.thread:                                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  %partition_root_state = getelementptr inbounds %struct.cpuset, ptr %cpuset, i32 0, i32 13
  %18 = ptrtoint ptr %partition_root_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %partition_root_state, align 8
  br label %if.else59

if.then53:                                        ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #19
  %partition_root_state481 = getelementptr inbounds %struct.cpuset, ptr %cpuset, i32 0, i32 13
  %20 = ptrtoint ptr %partition_root_state481 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %partition_root_state481, align 8
  %22 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tmp, align 4
  %24 = ptrtoint ptr %cpus_allowed43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cpus_allowed43, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i286 = add i32 %26, 31
  %27 = lshr i32 %sub.i.i286, 3
  %mul.i.i = and i32 %27, 536870908
  %28 = call ptr @memcpy(ptr %23, ptr %25, i32 %mul.i.i)
  br label %if.end118

if.else:                                          ; preds = %if.end40
  %partition_root_state487 = getelementptr inbounds %struct.cpuset, ptr %cpuset, i32 0, i32 13
  %29 = ptrtoint ptr %partition_root_state487 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %partition_root_state487, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %cmp55 = icmp eq i32 %cmd, 1
  br i1 %cmp55, label %if.end.i.i294, label %if.else.if.else59_crit_edge

if.else.if.else59_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else59

if.end.i.i294:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %31 = load i32, ptr @nr_cpu_ids, align 4
  %subparts_cpus = getelementptr inbounds %struct.cpuset, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %subparts_cpus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %subparts_cpus, align 4
  %cpus_allowed57 = getelementptr inbounds %struct.cpuset, ptr %cpuset, i32 0, i32 2
  %34 = ptrtoint ptr %cpus_allowed57 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cpus_allowed57, align 4
  %delmask = getelementptr inbounds %struct.tmpmasks, ptr %tmp, i32 0, i32 1
  %36 = ptrtoint ptr %delmask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %delmask, align 4
  %call.i.i293 = tail call i32 @__bitmap_and(ptr noundef %37, ptr noundef %35, ptr noundef %33, i32 noundef %31) #17
  br label %if.end118

if.else59:                                        ; preds = %if.else.if.else59_crit_edge, %if.else.thread
  %partition_root_state488491 = phi ptr [ %partition_root_state, %if.else.thread ], [ %partition_root_state487, %if.else.if.else59_crit_edge ]
  %38 = phi i32 [ %19, %if.else.thread ], [ %30, %if.else.if.else59_crit_edge ]
  br i1 %tobool28.not, label %if.else94, label %if.then61

if.then61:                                        ; preds = %if.else59
  %delmask62 = getelementptr inbounds %struct.tmpmasks, ptr %tmp, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %cpus_allowed63 = getelementptr inbounds %struct.cpuset, ptr %cpuset, i32 0, i32 2
  %40 = ptrtoint ptr %cpus_allowed63 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cpus_allowed63, align 4
  %42 = ptrtoint ptr %delmask62 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %delmask62, align 4
  %call.i.i305 = tail call i32 @__bitmap_andnot(ptr noundef %43, ptr noundef %41, ptr noundef nonnull %newmask, i32 noundef %39) #17
  %subparts_cpus67 = getelementptr inbounds %struct.cpuset, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %44 = load i32, ptr @nr_cpu_ids, align 4
  %45 = ptrtoint ptr %subparts_cpus67 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %subparts_cpus67, align 4
  %47 = ptrtoint ptr %delmask62 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %delmask62, align 4
  %call.i.i316 = tail call i32 @__bitmap_and(ptr noundef %48, ptr noundef %48, ptr noundef %46, i32 noundef %44) #17
  %effective_cpus70 = getelementptr inbounds %struct.cpuset, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %49 = load i32, ptr @nr_cpu_ids, align 4
  %50 = ptrtoint ptr %effective_cpus70 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %effective_cpus70, align 4
  %52 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tmp, align 4
  %call.i.i328 = tail call i32 @__bitmap_and(ptr noundef %53, ptr noundef nonnull %newmask, ptr noundef %51, i32 noundef %49) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %54 = load i32, ptr @nr_cpu_ids, align 4
  %55 = ptrtoint ptr %subparts_cpus67 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %subparts_cpus67, align 4
  %57 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tmp, align 4
  %call.i.i341 = tail call i32 @__bitmap_andnot(ptr noundef %58, ptr noundef %58, ptr noundef %56, i32 noundef %54) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i341)
  %tobool76.not = icmp eq i32 %call.i.i341, 0
  br i1 %tobool76.not, label %if.then61.if.end104_crit_edge, label %land.lhs.true77

if.then61.if.end104_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end104

land.lhs.true77:                                  ; preds = %if.then61
  %59 = ptrtoint ptr %effective_cpus70 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %effective_cpus70, align 4
  %61 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tmp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %63 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i362 = tail call i32 @__bitmap_equal(ptr noundef %60, ptr noundef %62, i32 noundef %63) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i362)
  %tobool.i365.not = icmp eq i32 %call13.i.i362, 0
  br i1 %tobool.i365.not, label %land.lhs.true77.if.end104_crit_edge, label %if.then81

land.lhs.true77.if.end104_crit_edge:              ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end104

if.then81:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i316)
  %tobool82.not = icmp eq i32 %call.i.i316, 0
  br i1 %tobool82.not, label %if.then81.cleanup_crit_edge, label %if.end.i.i376

if.then81.cleanup_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i.i376:                                    ; preds = %if.then81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %64 = load i32, ptr @nr_cpu_ids, align 4
  %65 = ptrtoint ptr %delmask62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %delmask62, align 4
  %67 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tmp, align 4
  %call.i.i375 = tail call i32 @__bitmap_and(ptr noundef %68, ptr noundef %66, ptr noundef nonnull @__cpu_active_mask, i32 noundef %64) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i375)
  %tobool88.not = icmp eq i32 %call.i.i375, 0
  br i1 %tobool88.not, label %if.end.i.i376.cleanup_crit_edge, label %if.end90

if.end.i.i376.cleanup_crit_edge:                  ; preds = %if.end.i.i376
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end90:                                         ; preds = %if.end.i.i376
  call void @__sanitizer_cov_trace_pc() #19
  %69 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tmp, align 4
  %71 = ptrtoint ptr %effective_cpus70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %effective_cpus70, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %73 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i379 = add i32 %73, 31
  %74 = lshr i32 %sub.i.i379, 3
  %mul.i.i380 = and i32 %74, 536870908
  %75 = call ptr @memcpy(ptr %70, ptr %72, i32 %mul.i.i380)
  br label %if.end104

if.else94:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #19
  %effective_cpus97 = getelementptr inbounds %struct.cpuset, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %76 = load i32, ptr @nr_cpu_ids, align 4
  %77 = ptrtoint ptr %effective_cpus97 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %effective_cpus97, align 4
  %cpus_allowed96 = getelementptr inbounds %struct.cpuset, ptr %cpuset, i32 0, i32 2
  %79 = ptrtoint ptr %cpus_allowed96 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cpus_allowed96, align 4
  %81 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tmp, align 4
  %call.i.i389 = tail call i32 @__bitmap_and(ptr noundef %82, ptr noundef %80, ptr noundef %78, i32 noundef %76) #17
  %83 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tmp, align 4
  %85 = ptrtoint ptr %effective_cpus97 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %effective_cpus97, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %87 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i410 = tail call i32 @__bitmap_equal(ptr noundef %84, ptr noundef %86, i32 noundef %87) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i410)
  %tobool.i413 = icmp ne i32 %call13.i.i410, 0
  br label %if.end104

if.end104:                                        ; preds = %if.else94, %if.end90, %land.lhs.true77.if.end104_crit_edge, %if.then61.if.end104_crit_edge
  %adding.0 = phi i32 [ %call.i.i341, %if.end90 ], [ %call.i.i341, %land.lhs.true77.if.end104_crit_edge ], [ 0, %if.then61.if.end104_crit_edge ], [ %call.i.i389, %if.else94 ]
  %deleting.0 = phi i32 [ %call.i.i316, %if.end90 ], [ %call.i.i316, %land.lhs.true77.if.end104_crit_edge ], [ %call.i.i316, %if.then61.if.end104_crit_edge ], [ 0, %if.else94 ]
  %part_error.0.off0 = phi i1 [ false, %if.end90 ], [ false, %land.lhs.true77.if.end104_crit_edge ], [ false, %if.then61.if.end104_crit_edge ], [ %tobool.i413, %if.else94 ]
  br i1 %cmp36.not, label %if.then106, label %if.end104.if.end118_crit_edge

if.end104.if.end118_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end118

if.then106:                                       ; preds = %if.end104
  %88 = ptrtoint ptr %partition_root_state488491 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %partition_root_state488491, align 8
  %90 = zext i32 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %89, label %if.then106.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 -1, label %sw.bb112
  ]

if.then106.sw.epilog_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #19
  %spec.select = select i1 %part_error.0.off0, i32 -1, i32 %38
  br label %sw.epilog

sw.bb112:                                         ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #19
  %spec.select254 = select i1 %part_error.0.off0, i32 %38, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb112, %sw.bb, %if.then106.sw.epilog_crit_edge
  %new_prs.0 = phi i32 [ %38, %if.then106.sw.epilog_crit_edge ], [ %spec.select, %sw.bb ], [ %spec.select254, %sw.bb112 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %cmp116 = icmp eq i32 %89, -1
  br label %if.end118

if.end118:                                        ; preds = %sw.epilog, %if.end104.if.end118_crit_edge, %if.end.i.i294, %if.then53
  %deleting.0497 = phi i32 [ %deleting.0, %sw.epilog ], [ %deleting.0, %if.end104.if.end118_crit_edge ], [ %call.i.i293, %if.end.i.i294 ], [ 0, %if.then53 ]
  %adding.0496 = phi i32 [ %adding.0, %sw.epilog ], [ %adding.0, %if.end104.if.end118_crit_edge ], [ 0, %if.end.i.i294 ], [ 1, %if.then53 ]
  %91 = phi i32 [ %38, %sw.epilog ], [ %38, %if.end104.if.end118_crit_edge ], [ %30, %if.end.i.i294 ], [ %21, %if.then53 ]
  %partition_root_state484 = phi ptr [ %partition_root_state488491, %sw.epilog ], [ %partition_root_state488491, %if.end104.if.end118_crit_edge ], [ %partition_root_state487, %if.end.i.i294 ], [ %partition_root_state481, %if.then53 ]
  %new_prs.1 = phi i32 [ %new_prs.0, %sw.epilog ], [ %38, %if.end104.if.end118_crit_edge ], [ %30, %if.end.i.i294 ], [ %21, %if.then53 ]
  %part_error.1.off0 = phi i1 [ %cmp116, %sw.epilog ], [ %part_error.0.off0, %if.end104.if.end118_crit_edge ], [ false, %if.end.i.i294 ], [ false, %if.then53 ]
  %part_error.1.off0.not = xor i1 %part_error.1.off0, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %new_prs.1)
  %cmp121 = icmp eq i32 %new_prs.1, -1
  %or.cond = select i1 %part_error.1.off0.not, i1 %cmp121, i1 false
  br i1 %or.cond, label %if.end118.cleanup_crit_edge, label %if.end123

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end123:                                        ; preds = %if.end118
  br i1 %cmp121, label %if.end.i.i424, label %if.end123.if.end130_crit_edge

if.end123.if.end130_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end130

if.end.i.i424:                                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %92 = load i32, ptr @nr_cpu_ids, align 4
  %subparts_cpus128 = getelementptr inbounds %struct.cpuset, ptr %1, i32 0, i32 6
  %93 = ptrtoint ptr %subparts_cpus128 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %subparts_cpus128, align 4
  %cpus_allowed127 = getelementptr inbounds %struct.cpuset, ptr %cpuset, i32 0, i32 2
  %95 = ptrtoint ptr %cpus_allowed127 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cpus_allowed127, align 4
  %delmask126 = getelementptr inbounds %struct.tmpmasks, ptr %tmp, i32 0, i32 1
  %97 = ptrtoint ptr %delmask126 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %delmask126, align 4
  %call.i.i423 = tail call i32 @__bitmap_and(ptr noundef %98, ptr noundef %96, ptr noundef %94, i32 noundef %92) #17
  br label %if.end130

if.end130:                                        ; preds = %if.end.i.i424, %if.end123.if.end130_crit_edge
  %adding.1 = phi i32 [ %adding.0496, %if.end123.if.end130_crit_edge ], [ 0, %if.end.i.i424 ]
  %deleting.1 = phi i32 [ %deleting.0497, %if.end123.if.end130_crit_edge ], [ %call.i.i423, %if.end.i.i424 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %adding.1)
  %tobool131.not = icmp eq i32 %adding.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deleting.1)
  %tobool133.not = icmp eq i32 %deleting.1, 0
  %or.cond255 = select i1 %tobool131.not, i1 %tobool133.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %new_prs.1, i32 %91)
  %cmp135 = icmp eq i32 %new_prs.1, %91
  %or.cond256 = select i1 %or.cond255, i1 %cmp135, i1 false
  br i1 %or.cond256, label %if.end130.cleanup_crit_edge, label %if.end137

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end137:                                        ; preds = %if.end130
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @callback_lock) #17
  br i1 %tobool131.not, label %if.end137.if.end147_crit_edge, label %if.else.i.i428

if.end137.if.end147_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end147

if.else.i.i428:                                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %99 = load i32, ptr @nr_cpu_ids, align 4
  %100 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tmp, align 4
  %subparts_cpus140 = getelementptr inbounds %struct.cpuset, ptr %1, i32 0, i32 6
  %102 = ptrtoint ptr %subparts_cpus140 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %subparts_cpus140, align 4
  tail call void @__bitmap_or(ptr noundef %103, ptr noundef %103, ptr noundef %101, i32 noundef %99) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %104 = load i32, ptr @nr_cpu_ids, align 4
  %105 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %tmp, align 4
  %effective_cpus143 = getelementptr inbounds %struct.cpuset, ptr %1, i32 0, i32 4
  %107 = ptrtoint ptr %effective_cpus143 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %effective_cpus143, align 4
  %call.i.i438 = tail call i32 @__bitmap_andnot(ptr noundef %108, ptr noundef %108, ptr noundef %106, i32 noundef %104) #17
  br label %if.end147

if.end147:                                        ; preds = %if.else.i.i428, %if.end137.if.end147_crit_edge
  br i1 %tobool133.not, label %if.end147.if.end.i.i476_crit_edge, label %if.then149

if.end147.if.end.i.i476_crit_edge:                ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i476

if.then149:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #19
  %delmask152 = getelementptr inbounds %struct.tmpmasks, ptr %tmp, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %109 = load i32, ptr @nr_cpu_ids, align 4
  %110 = ptrtoint ptr %delmask152 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %delmask152, align 4
  %subparts_cpus150 = getelementptr inbounds %struct.cpuset, ptr %1, i32 0, i32 6
  %112 = ptrtoint ptr %subparts_cpus150 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %subparts_cpus150, align 4
  %call.i.i451 = tail call i32 @__bitmap_andnot(ptr noundef %113, ptr noundef %113, ptr noundef %111, i32 noundef %109) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %114 = load i32, ptr @nr_cpu_ids, align 4
  %115 = ptrtoint ptr %delmask152 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %delmask152, align 4
  %call.i.i463 = tail call i32 @__bitmap_and(ptr noundef %116, ptr noundef %116, ptr noundef nonnull @__cpu_active_mask, i32 noundef %114) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %117 = load i32, ptr @nr_cpu_ids, align 4
  %118 = ptrtoint ptr %delmask152 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %delmask152, align 4
  %effective_cpus157 = getelementptr inbounds %struct.cpuset, ptr %1, i32 0, i32 4
  %120 = ptrtoint ptr %effective_cpus157 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %effective_cpus157, align 4
  tail call void @__bitmap_or(ptr noundef %121, ptr noundef %121, ptr noundef %119, i32 noundef %117) #17
  br label %if.end.i.i476

if.end.i.i476:                                    ; preds = %if.then149, %if.end147.if.end.i.i476_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %122 = load i32, ptr @nr_cpu_ids, align 4
  %subparts_cpus161 = getelementptr inbounds %struct.cpuset, ptr %1, i32 0, i32 6
  %123 = ptrtoint ptr %subparts_cpus161 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %subparts_cpus161, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %124, i32 noundef %122) #17
  %nr_subparts_cpus = getelementptr inbounds %struct.cpuset, ptr %1, i32 0, i32 12
  %125 = ptrtoint ptr %nr_subparts_cpus to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %call4.i.i, ptr %nr_subparts_cpus, align 4
  br i1 %cmp135, label %if.end166.thread, label %if.then.i

if.end166.thread:                                 ; preds = %if.end.i.i476
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @callback_lock) #17
  br label %notify_partition_change.exit

if.then.i:                                        ; preds = %if.end.i.i476
  call void @__sanitizer_cov_trace_pc() #19
  %126 = ptrtoint ptr %partition_root_state484 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %new_prs.1, ptr %partition_root_state484, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @callback_lock) #17
  %partition_file.i = getelementptr inbounds %struct.cpuset, ptr %cpuset, i32 0, i32 16
  tail call void @cgroup_file_notify(ptr noundef %partition_file.i) #17
  br label %notify_partition_change.exit

notify_partition_change.exit:                     ; preds = %if.then.i, %if.end166.thread
  %conv = zext i1 %cmp36.not to i32
  br label %cleanup

cleanup:                                          ; preds = %notify_partition_change.exit, %if.end130.cleanup_crit_edge, %if.end118.cleanup_crit_edge, %if.end.i.i376.cleanup_crit_edge, %if.then81.cleanup_crit_edge, %lor.lhs.false46.cleanup_crit_edge, %land.lhs.true42.cleanup_crit_edge, %land.lhs.true37.cleanup_crit_edge, %cpumask_empty.exit267.cleanup_crit_edge, %cpumask_empty.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %notify_partition_change.exit ], [ -22, %cpumask_empty.exit267.cleanup_crit_edge ], [ -22, %cpumask_empty.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -16, %land.lhs.true37.cleanup_crit_edge ], [ -22, %lor.lhs.false46.cleanup_crit_edge ], [ -22, %land.lhs.true42.cleanup_crit_edge ], [ -22, %if.then81.cleanup_crit_edge ], [ -22, %if.end.i.i376.cleanup_crit_edge ], [ 0, %if.end118.cleanup_crit_edge ], [ 0, %if.end130.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_tasks_cpumask(ptr noundef %cs) unnamed_addr #0 align 64 {
entry:
  %it = alloca %struct.css_task_iter, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %it) #17
  %0 = call ptr @memset(ptr %it, i32 255, i32 52)
  call void @css_task_iter_start(ptr noundef %cs, i32 noundef 0, ptr noundef nonnull %it) #17
  %call3 = call ptr @css_task_iter_next(ptr noundef nonnull %it) #17
  %tobool.not4 = icmp eq ptr %call3, null
  br i1 %tobool.not4, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %effective_cpus = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call5 = phi ptr [ %call3, %while.body.lr.ph ], [ %call, %while.body.while.body_crit_edge ]
  %1 = ptrtoint ptr %effective_cpus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %effective_cpus, align 4
  %call1 = call i32 @set_cpus_allowed_ptr(ptr noundef nonnull %call5, ptr noundef %2) #17
  %call = call ptr @css_task_iter_next(ptr noundef nonnull %it) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @css_task_iter_end(ptr noundef nonnull %it) #17
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %it) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_sibling_cpumasks(ptr noundef %parent, ptr noundef readnone %cs, ptr nocapture noundef readonly %tmp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i63 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpuset_rwsem, i32 0, i32 5), i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp.not = icmp eq i32 %call.i63, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !162

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1553, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call25 = tail call ptr @css_next_child(ptr noundef null, ptr noundef %parent) #17
  %tobool26.not88 = icmp eq ptr %call25, null
  br i1 %tobool26.not88, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %pos_css.089 = phi ptr [ %call43, %for.inc.for.body_crit_edge ], [ %call25, %rcu_read_lock.exit.for.body_crit_edge ]
  %flags.i = getelementptr inbounds %struct.cpuset, ptr %pos_css.089, i32 0, i32 1
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i64 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i64, label %for.body.for.inc_crit_edge, label %land.rhs.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.rhs.i:                                       ; preds = %for.body
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos_css.089, i32 0, i32 7
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %land.rhs.i.is_cpuset_online.exit_crit_edge

land.rhs.i.is_cpuset_online.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %is_cpuset_online.exit

land.rhs.i.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos_css.089, i32 0, i32 2
  %9 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %refcnt.i.i, align 4
  %and.i.i.i = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp eq i32 %and.i.i.i, 0
  br label %is_cpuset_online.exit

is_cpuset_online.exit:                            ; preds = %land.rhs.i.i, %land.rhs.i.is_cpuset_online.exit_crit_edge
  %11 = phi i1 [ true, %land.rhs.i.is_cpuset_online.exit_crit_edge ], [ %tobool.i.i.i, %land.rhs.i.i ]
  %cmp30 = icmp ne ptr %pos_css.089, %cs
  %12 = and i1 %cmp30, %11
  br i1 %12, label %if.end32, label %is_cpuset_online.exit.for.inc_crit_edge

is_cpuset_online.exit.for.inc_crit_edge:          ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end32:                                         ; preds = %is_cpuset_online.exit
  %use_parent_ecpus = getelementptr inbounds %struct.cpuset, ptr %pos_css.089, i32 0, i32 14
  %13 = ptrtoint ptr %use_parent_ecpus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %use_parent_ecpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool33.not = icmp eq i32 %14, 0
  br i1 %tobool33.not, label %if.end32.for.inc_crit_edge, label %if.end35

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end35:                                         ; preds = %if.end32
  %call37 = tail call fastcc zeroext i1 @css_tryget_online(ptr noundef nonnull %pos_css.089)
  br i1 %call37, label %if.end39, label %if.end35.for.inc_crit_edge

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end39:                                         ; preds = %if.end35
  %call.i65 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i65, label %if.end39.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i68

if.end39.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i68:                                ; preds = %if.end39
  %call1.i66 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66)
  %tobool.not.i67 = icmp eq i32 %call1.i66, 0
  br i1 %tobool.not.i67, label %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i70

land.lhs.true.i68.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i70:                               ; preds = %land.lhs.true.i68
  %.b4.i69 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i69, label %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, label %if.then.i71

land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i71:                                      ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i71, %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, %if.end39.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %15 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i72 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i72 to ptr
  %preempt_count.i.i.i.i73 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i73, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i73, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  tail call fastcc void @update_cpumasks_hier(ptr noundef nonnull %pos_css.089, ptr noundef %tmp)
  %19 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i52 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i52 to ptr
  %preempt_count.i.i.i.i53 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i53, align 4
  %add.i.i.i54 = add i32 %22, 1
  store volatile i32 %add.i.i.i54, ptr %preempt_count.i.i.i.i53, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i55 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i55, label %rcu_read_unlock.exit.rcu_read_lock.exit62_crit_edge, label %land.lhs.true.i58

rcu_read_unlock.exit.rcu_read_lock.exit62_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit62

land.lhs.true.i58:                                ; preds = %rcu_read_unlock.exit
  %call1.i56 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56)
  %tobool.not.i57 = icmp eq i32 %call1.i56, 0
  br i1 %tobool.not.i57, label %land.lhs.true.i58.rcu_read_lock.exit62_crit_edge, label %land.lhs.true2.i60

land.lhs.true.i58.rcu_read_lock.exit62_crit_edge: ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit62

land.lhs.true2.i60:                               ; preds = %land.lhs.true.i58
  %.b4.i59 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i59, label %land.lhs.true2.i60.rcu_read_lock.exit62_crit_edge, label %if.then.i61

land.lhs.true2.i60.rcu_read_lock.exit62_crit_edge: ; preds = %land.lhs.true2.i60
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit62

if.then.i61:                                      ; preds = %land.lhs.true2.i60
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit62

rcu_read_lock.exit62:                             ; preds = %if.then.i61, %land.lhs.true2.i60.rcu_read_lock.exit62_crit_edge, %land.lhs.true.i58.rcu_read_lock.exit62_crit_edge, %rcu_read_unlock.exit.rcu_read_lock.exit62_crit_edge
  tail call fastcc void @css_put(ptr noundef nonnull %pos_css.089)
  br label %for.inc

for.inc:                                          ; preds = %rcu_read_lock.exit62, %if.end35.for.inc_crit_edge, %if.end32.for.inc_crit_edge, %is_cpuset_online.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call43 = tail call ptr @css_next_child(ptr noundef nonnull %pos_css.089, ptr noundef %parent) #17
  %tobool26.not = icmp eq ptr %call43, null
  br i1 %tobool26.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i74 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i74, label %for.end.rcu_read_unlock.exit84_crit_edge, label %land.lhs.true.i77

for.end.rcu_read_unlock.exit84_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit84

land.lhs.true.i77:                                ; preds = %for.end
  %call1.i75 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75)
  %tobool.not.i76 = icmp eq i32 %call1.i75, 0
  br i1 %tobool.not.i76, label %land.lhs.true.i77.rcu_read_unlock.exit84_crit_edge, label %land.lhs.true2.i79

land.lhs.true.i77.rcu_read_unlock.exit84_crit_edge: ; preds = %land.lhs.true.i77
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit84

land.lhs.true2.i79:                               ; preds = %land.lhs.true.i77
  %.b4.i78 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i78, label %land.lhs.true2.i79.rcu_read_unlock.exit84_crit_edge, label %if.then.i80

land.lhs.true2.i79.rcu_read_unlock.exit84_crit_edge: ; preds = %land.lhs.true2.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit84

if.then.i80:                                      ; preds = %land.lhs.true2.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit84

rcu_read_unlock.exit84:                           ; preds = %if.then.i80, %land.lhs.true2.i79.rcu_read_unlock.exit84_crit_edge, %land.lhs.true.i77.rcu_read_unlock.exit84_crit_edge, %for.end.rcu_read_unlock.exit84_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %23 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i81 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i81 to ptr
  %preempt_count.i.i.i.i82 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i82, align 4
  %sub.i.i.i83 = add i32 %26, -1
  store volatile i32 %sub.i.i.i83, ptr %preempt_count.i.i.i.i82, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @css_has_online_children(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_andnot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @css_tryget_online(ptr noundef %css) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then:                                          ; preds = %entry
  %refcnt = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 2
  %2 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i, label %if.then.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.rcu_read_lock.exit.i_crit_edge
  %call.i1.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i2.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i2.i, label %land.rhs.i.i, label %rcu_read_lock.exit.i.if.end29.i.i_crit_edge

rcu_read_lock.exit.i.if.end29.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %rcu_read_lock.exit.i
  %.b104.i.i = load i1, ptr @percpu_ref_tryget_live_rcu.__already_done, align 1
  br i1 %.b104.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i3.i, !prof !159

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i.i

if.then.i3.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @percpu_ref_tryget_live_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 280, i32 noundef 9, ptr noundef null) #17
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i3.i, %land.rhs.i.i.if.end29.i.i_crit_edge, %rcu_read_lock.exit.i.if.end29.i.i_crit_edge
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcnt, align 4
  %and.i.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body46.i.i, label %if.else.i.i, !prof !159

do.body46.i.i:                                    ; preds = %if.end29.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !160
  %9 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i105.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i105.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %14, %7
  %15 = inttoptr i32 %add.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add63.i.i = add i32 %17, 1
  store i32 %add63.i.i, ptr %15, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !161
  %and.i.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool74.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool74.not.i.i, label %if.then83.i.i, label %do.body46.i.i.do.end86.i.i_crit_edge, !prof !162

do.body46.i.i.do.end86.i.i_crit_edge:             ; preds = %do.body46.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end86.i.i

if.then83.i.i:                                    ; preds = %do.body46.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end86.i.i

do.end86.i.i:                                     ; preds = %if.then83.i.i, %do.body46.i.i.do.end86.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #17, !srcloc !163
  br label %percpu_ref_tryget_live_rcu.exit.i

if.else.i.i:                                      ; preds = %if.end29.i.i
  %and.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool93.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool93.not.i.i, label %if.then94.i.i, label %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge

if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %percpu_ref_tryget_live_rcu.exit.i

if.then94.i.i:                                    ; preds = %if.else.i.i
  %data.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %20, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %20, i32 1, i32 3, i32 1) #17
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 0, i32 1, ptr elementtype(i32) %20) #17, !srcloc !180
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge: ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atomic_long_inc_not_zero.exit.i.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !181
  br label %atomic_long_inc_not_zero.exit.i.i

atomic_long_inc_not_zero.exit.i.i:                ; preds = %do.end11.i.i.i.i.i.i.i, %if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i.i, 0
  br label %percpu_ref_tryget_live_rcu.exit.i

percpu_ref_tryget_live_rcu.exit.i:                ; preds = %atomic_long_inc_not_zero.exit.i.i, %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge, %do.end86.i.i
  %ret.0.off0.i.i = phi i1 [ true, %do.end86.i.i ], [ false, %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge ], [ %cmp.i.i.i.i.i.i, %atomic_long_inc_not_zero.exit.i.i ]
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i4.i, label %percpu_ref_tryget_live_rcu.exit.i.percpu_ref_tryget_live.exit_crit_edge, label %land.lhs.true.i7.i

percpu_ref_tryget_live_rcu.exit.i.percpu_ref_tryget_live.exit_crit_edge: ; preds = %percpu_ref_tryget_live_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %percpu_ref_tryget_live.exit

land.lhs.true.i7.i:                               ; preds = %percpu_ref_tryget_live_rcu.exit.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.percpu_ref_tryget_live.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.percpu_ref_tryget_live.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %percpu_ref_tryget_live.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.percpu_ref_tryget_live.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.percpu_ref_tryget_live.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %percpu_ref_tryget_live.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %percpu_ref_tryget_live.exit

percpu_ref_tryget_live.exit:                      ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.percpu_ref_tryget_live.exit_crit_edge, %land.lhs.true.i7.i.percpu_ref_tryget_live.exit_crit_edge, %percpu_ref_tryget_live_rcu.exit.i.percpu_ref_tryget_live.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %22 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i11.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br label %return

return:                                           ; preds = %percpu_ref_tryget_live.exit, %entry.return_crit_edge
  %retval.0 = phi i1 [ %ret.0.off0.i.i, %percpu_ref_tryget_live.exit ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_cpumasks_hier(ptr noundef %cs, ptr nocapture noundef readonly %tmp) unnamed_addr #0 align 64 {
entry:
  %it.i452 = alloca %struct.css_task_iter, align 4
  %it.i = alloca %struct.css_task_iter, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef %cs) #17
  %tobool.not490 = icmp eq ptr %call, null
  br i1 %tobool.not490, label %rcu_read_lock.exit.for.end_crit_edge, label %for.body.lr.ph

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %new_cpus = getelementptr inbounds %struct.tmpmasks, ptr %tmp, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos_css.0493 = phi ptr [ %call, %for.body.lr.ph ], [ %call244, %for.inc.for.body_crit_edge ]
  %need_rebuild_sched_domains.0.off0491 = phi i1 [ false, %for.body.lr.ph ], [ %need_rebuild_sched_domains.3.off0, %for.inc.for.body_crit_edge ]
  %flags.i = getelementptr inbounds %struct.cpuset, ptr %pos_css.0493, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i338 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i338, label %for.body.for.inc_crit_edge, label %land.rhs.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.rhs.i:                                       ; preds = %for.body
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos_css.0493, i32 0, i32 7
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %is_cpuset_online.exit, label %land.rhs.i.if.then_crit_edge

land.rhs.i.if.then_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

is_cpuset_online.exit:                            ; preds = %land.rhs.i
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos_css.0493, i32 0, i32 2
  %8 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %refcnt.i.i, align 4
  %and.i.i.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.i, label %is_cpuset_online.exit.if.then_crit_edge, label %is_cpuset_online.exit.for.inc_crit_edge

is_cpuset_online.exit.for.inc_crit_edge:          ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

is_cpuset_online.exit.if.then_crit_edge:          ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %is_cpuset_online.exit.if.then_crit_edge, %land.rhs.i.if.then_crit_edge
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos_css.0493, i32 0, i32 12
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %12 = ptrtoint ptr %new_cpus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %new_cpus, align 4
  call fastcc void @compute_effective_cpumask(ptr noundef %13, ptr noundef nonnull %pos_css.0493, ptr noundef %11)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @cpuset_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@update_cpumasks_hier, %lor.rhs.i)) #17
          to label %cpumask_empty.exit [label %lor.rhs.i], !srcloc !171

lor.rhs.i:                                        ; preds = %if.then
  %14 = load ptr, ptr getelementptr inbounds (%struct.cgroup_subsys, ptr @cpuset_cgrp_subsys, i32 0, i32 22), align 4
  %flags.i339 = getelementptr inbounds %struct.cgroup_root, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %flags.i339 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i339, align 4
  %and.i = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool4.i.not, label %lor.rhs.i.if.else_crit_edge, label %lor.rhs.i.cpumask_empty.exit_crit_edge

lor.rhs.i.cpumask_empty.exit_crit_edge:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpumask_empty.exit

lor.rhs.i.if.else_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

cpumask_empty.exit:                               ; preds = %lor.rhs.i.cpumask_empty.exit_crit_edge, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %18 = ptrtoint ptr %new_cpus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %new_cpus, align 4
  %call.i.i = call i32 @_find_first_bit_be(ptr noundef %19, i32 noundef %17) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %17)
  %cmp4.i.i = icmp eq i32 %call.i.i, %17
  br i1 %cmp4.i.i, label %if.then7, label %cpumask_empty.exit.if.else_crit_edge

cpumask_empty.exit.if.else_crit_edge:             ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then7:                                         ; preds = %cpumask_empty.exit
  %20 = ptrtoint ptr %new_cpus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %new_cpus, align 4
  %effective_cpus = getelementptr inbounds %struct.cpuset, ptr %11, i32 0, i32 4
  %22 = ptrtoint ptr %effective_cpus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %effective_cpus, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i342 = add i32 %24, 31
  %25 = lshr i32 %sub.i.i342, 3
  %mul.i.i = and i32 %25, 536870908
  %26 = call ptr @memcpy(ptr %21, ptr %23, i32 %mul.i.i)
  %use_parent_ecpus = getelementptr inbounds %struct.cpuset, ptr %pos_css.0493, i32 0, i32 14
  %27 = ptrtoint ptr %use_parent_ecpus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %use_parent_ecpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool9.not = icmp eq i32 %28, 0
  br i1 %tobool9.not, label %if.then10, label %if.then7.if.end59_crit_edge

if.then7.if.end59_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %use_parent_ecpus to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %use_parent_ecpus, align 4
  %child_ecpus_count = getelementptr inbounds %struct.cpuset, ptr %11, i32 0, i32 15
  br label %if.end59.sink.split

if.else:                                          ; preds = %cpumask_empty.exit.if.else_crit_edge, %lor.rhs.i.if.else_crit_edge
  %use_parent_ecpus12 = getelementptr inbounds %struct.cpuset, ptr %pos_css.0493, i32 0, i32 14
  %30 = ptrtoint ptr %use_parent_ecpus12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %use_parent_ecpus12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool13.not = icmp eq i32 %31, 0
  br i1 %tobool13.not, label %if.else.if.end59_crit_edge, label %if.then14

if.else.if.end59_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59

if.then14:                                        ; preds = %if.else
  %32 = ptrtoint ptr %use_parent_ecpus12 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %use_parent_ecpus12, align 4
  %child_ecpus_count16 = getelementptr inbounds %struct.cpuset, ptr %11, i32 0, i32 15
  %33 = ptrtoint ptr %child_ecpus_count16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %child_ecpus_count16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool17.not = icmp eq i32 %34, 0
  br i1 %tobool17.not, label %land.rhs, label %if.then14.if.end59.sink.split_crit_edge

if.then14.if.end59.sink.split_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59.sink.split

land.rhs:                                         ; preds = %if.then14
  %.b326 = load i1, ptr @update_cpumasks_hier.__already_done, align 1
  br i1 %.b326, label %land.rhs.if.end59.sink.split_crit_edge, label %if.then26, !prof !159

land.rhs.if.end59.sink.split_crit_edge:           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59.sink.split

if.then26:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @update_cpumasks_hier.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1417, i32 noundef 9, ptr noundef null) #17
  br label %if.end59.sink.split

if.end59.sink.split:                              ; preds = %if.then26, %land.rhs.if.end59.sink.split_crit_edge, %if.then14.if.end59.sink.split_crit_edge, %if.then10
  %child_ecpus_count16.sink495 = phi ptr [ %child_ecpus_count, %if.then10 ], [ %child_ecpus_count16, %if.then14.if.end59.sink.split_crit_edge ], [ %child_ecpus_count16, %if.then26 ], [ %child_ecpus_count16, %land.rhs.if.end59.sink.split_crit_edge ]
  %.sink494 = phi i32 [ 1, %if.then10 ], [ -1, %if.then14.if.end59.sink.split_crit_edge ], [ -1, %if.then26 ], [ -1, %land.rhs.if.end59.sink.split_crit_edge ]
  %35 = ptrtoint ptr %child_ecpus_count16.sink495 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %child_ecpus_count16.sink495, align 8
  %dec = add i32 %36, %.sink494
  store i32 %dec, ptr %child_ecpus_count16.sink495, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %if.else.if.end59_crit_edge, %if.then7.if.end59_crit_edge
  %partition_root_state = getelementptr inbounds %struct.cpuset, ptr %pos_css.0493, i32 0, i32 13
  %37 = ptrtoint ptr %partition_root_state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %partition_root_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool60.not = icmp eq i32 %38, 0
  br i1 %tobool60.not, label %land.lhs.true61, label %if.end59.if.end67_crit_edge

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end67

land.lhs.true61:                                  ; preds = %if.end59
  %39 = ptrtoint ptr %new_cpus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %new_cpus, align 4
  %effective_cpus63 = getelementptr inbounds %struct.cpuset, ptr %pos_css.0493, i32 0, i32 4
  %41 = ptrtoint ptr %effective_cpus63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %effective_cpus63, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %43 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i = call i32 @__bitmap_equal(ptr noundef %40, ptr noundef %42, i32 noundef %43) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool.i.not = icmp eq i32 %call13.i.i, 0
  br i1 %tobool.i.not, label %if.end67thread-pre-split, label %if.then65

if.then65:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #19
  %call66 = call ptr @css_rightmost_descendant(ptr noundef nonnull %pos_css.0493) #17
  br label %for.inc

if.end67thread-pre-split:                         ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #19
  %44 = ptrtoint ptr %partition_root_state to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr = load i32, ptr %partition_root_state, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.end67thread-pre-split, %if.end59.if.end67_crit_edge
  %45 = phi i32 [ %.pr, %if.end67thread-pre-split ], [ %38, %if.end59.if.end67_crit_edge ]
  %cmp.not = icmp eq ptr %pos_css.0493, %cs
  br i1 %cmp.not, label %if.end67.if.end134_crit_edge, label %land.lhs.true69

if.end67.if.end134_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end134

land.lhs.true69:                                  ; preds = %if.end67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool70.not = icmp eq i32 %45, 0
  br i1 %tobool70.not, label %land.lhs.true69.if.end134_crit_edge, label %if.then71

land.lhs.true69.if.end134_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end134

if.then71:                                        ; preds = %land.lhs.true69
  %partition_root_state72 = getelementptr inbounds %struct.cpuset, ptr %11, i32 0, i32 13
  %46 = ptrtoint ptr %partition_root_state72 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %partition_root_state72, align 8
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %47, label %if.then71.if.end134_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb128
    i32 -1, label %sw.bb133
  ]

if.then71.if.end134_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end134

sw.bb:                                            ; preds = %if.then71
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp75.not = icmp eq i32 %45, -1
  br i1 %cmp75.not, label %sw.bb.if.end120_crit_edge, label %land.rhs82

sw.bb.if.end120_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end120

land.rhs82:                                       ; preds = %sw.bb
  %.b316325 = load i1, ptr @update_cpumasks_hier.__already_done.24, align 1
  br i1 %.b316325, label %land.rhs82.if.end120_crit_edge, label %if.then93, !prof !159

land.rhs82.if.end120_crit_edge:                   ; preds = %land.rhs82
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end120

if.then93:                                        ; preds = %land.rhs82
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @update_cpumasks_hier.__already_done.24, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1447, i32 noundef 9, ptr noundef null) #17
  br label %if.end120

if.end120:                                        ; preds = %if.then93, %land.rhs82.if.end120_crit_edge, %sw.bb.if.end120_crit_edge
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i) #17
  br label %if.end134

sw.bb128:                                         ; preds = %if.then71
  %call129 = call fastcc i32 @update_parent_subparts_cpumask(ptr noundef nonnull %pos_css.0493, i32 noundef 2, ptr noundef null, ptr noundef %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %sw.bb128.if.end134_crit_edge, label %if.then131

sw.bb128.if.end134_crit_edge:                     ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end134

if.then131:                                       ; preds = %sw.bb128
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %it.i) #17
  %49 = call ptr @memset(ptr %it.i, i32 255, i32 52)
  call void @css_task_iter_start(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %it.i) #17
  %call3.i = call ptr @css_task_iter_next(ptr noundef nonnull %it.i) #17
  %tobool.not4.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not4.i, label %if.then131.update_tasks_cpumask.exit_crit_edge, label %while.body.lr.ph.i

if.then131.update_tasks_cpumask.exit_crit_edge:   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_tasks_cpumask.exit

while.body.lr.ph.i:                               ; preds = %if.then131
  %effective_cpus.i = getelementptr inbounds %struct.cpuset, ptr %11, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call5.i = phi ptr [ %call3.i, %while.body.lr.ph.i ], [ %call.i352, %while.body.i.while.body.i_crit_edge ]
  %50 = ptrtoint ptr %effective_cpus.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %effective_cpus.i, align 4
  %call1.i351 = call i32 @set_cpus_allowed_ptr(ptr noundef nonnull %call5.i, ptr noundef %51) #17
  %call.i352 = call ptr @css_task_iter_next(ptr noundef nonnull %it.i) #17
  %tobool.not.i353 = icmp eq ptr %call.i352, null
  br i1 %tobool.not.i353, label %while.body.i.update_tasks_cpumask.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

while.body.i.update_tasks_cpumask.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_tasks_cpumask.exit

update_tasks_cpumask.exit:                        ; preds = %while.body.i.update_tasks_cpumask.exit_crit_edge, %if.then131.update_tasks_cpumask.exit_crit_edge
  call void @css_task_iter_end(ptr noundef nonnull %it.i) #17
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %it.i) #17
  br label %if.end134

sw.bb133:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end134

if.end134:                                        ; preds = %sw.bb133, %update_tasks_cpumask.exit, %sw.bb128.if.end134_crit_edge, %if.end120, %if.then71.if.end134_crit_edge, %land.lhs.true69.if.end134_crit_edge, %if.end67.if.end134_crit_edge
  %new_prs.0 = phi i32 [ %45, %if.then71.if.end134_crit_edge ], [ -1, %sw.bb133 ], [ %45, %update_tasks_cpumask.exit ], [ %45, %sw.bb128.if.end134_crit_edge ], [ 0, %if.end120 ], [ 0, %land.lhs.true69.if.end134_crit_edge ], [ %45, %if.end67.if.end134_crit_edge ]
  %call136 = call fastcc zeroext i1 @css_tryget_online(ptr noundef %pos_css.0493)
  br i1 %call136, label %if.end138, label %if.end134.for.inc_crit_edge

if.end134.for.inc_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end138:                                        ; preds = %if.end134
  %call.i354 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i354, label %if.end138.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i357

if.end138.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i357:                               ; preds = %if.end138
  %call1.i355 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i355)
  %tobool.not.i356 = icmp eq i32 %call1.i355, 0
  br i1 %tobool.not.i356, label %land.lhs.true.i357.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i359

land.lhs.true.i357.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i357
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i359:                              ; preds = %land.lhs.true.i357
  %.b4.i358 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i358, label %land.lhs.true2.i359.rcu_read_unlock.exit_crit_edge, label %if.then.i360

land.lhs.true2.i359.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i359
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i360:                                     ; preds = %land.lhs.true2.i359
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i360, %land.lhs.true2.i359.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i357.rcu_read_unlock.exit_crit_edge, %if.end138.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %52 = call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i361 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i361 to ptr
  %preempt_count.i.i.i.i362 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i362 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i362, align 4
  %sub.i.i.i = add i32 %55, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i362, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  call void @_raw_spin_lock_irq(ptr noundef nonnull @callback_lock) #17
  %effective_cpus139 = getelementptr inbounds %struct.cpuset, ptr %pos_css.0493, i32 0, i32 4
  %56 = ptrtoint ptr %effective_cpus139 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %effective_cpus139, align 4
  %58 = ptrtoint ptr %new_cpus to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %new_cpus, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %60 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i363 = add i32 %60, 31
  %61 = lshr i32 %sub.i.i363, 3
  %mul.i.i364 = and i32 %61, 536870908
  %62 = call ptr @memcpy(ptr %57, ptr %59, i32 %mul.i.i364)
  %nr_subparts_cpus = getelementptr inbounds %struct.cpuset, ptr %pos_css.0493, i32 0, i32 12
  %63 = ptrtoint ptr %nr_subparts_cpus to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr_subparts_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool141.not = icmp eq i32 %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_prs.0)
  %cmp143.not = icmp eq i32 %new_prs.0, 1
  %or.cond = select i1 %tobool141.not, i1 true, i1 %cmp143.not
  br i1 %or.cond, label %if.else146, label %if.then144

if.then144:                                       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #19
  %65 = ptrtoint ptr %nr_subparts_cpus to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %nr_subparts_cpus, align 4
  %subparts_cpus = getelementptr inbounds %struct.cpuset, ptr %pos_css.0493, i32 0, i32 6
  %66 = ptrtoint ptr %subparts_cpus to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %subparts_cpus, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %68 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i365 = add i32 %68, 31
  %69 = lshr i32 %sub.i.i365, 3
  %mul.i.i366 = and i32 %69, 536870908
  %70 = call ptr @memset(ptr %67, i32 0, i32 %mul.i.i366)
  br label %if.end177

if.else146:                                       ; preds = %rcu_read_unlock.exit
  br i1 %tobool141.not, label %if.else146.if.end177_crit_edge, label %if.then149

if.else146.if.end177_crit_edge:                   ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end177

if.then149:                                       ; preds = %if.else146
  %subparts_cpus152 = getelementptr inbounds %struct.cpuset, ptr %pos_css.0493, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %71 = load i32, ptr @nr_cpu_ids, align 4
  %72 = ptrtoint ptr %subparts_cpus152 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %subparts_cpus152, align 4
  %74 = ptrtoint ptr %effective_cpus139 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %effective_cpus139, align 4
  %call.i.i373 = call i32 @__bitmap_andnot(ptr noundef %75, ptr noundef %75, ptr noundef %73, i32 noundef %71) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %76 = load i32, ptr @nr_cpu_ids, align 4
  %77 = ptrtoint ptr %effective_cpus139 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %effective_cpus139, align 4
  %call.i.i382 = call i32 @_find_first_bit_be(ptr noundef %78, i32 noundef %76) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i382, i32 %76)
  %cmp4.i.i383 = icmp eq i32 %call.i.i382, %76
  br i1 %cmp4.i.i383, label %if.then156, label %if.else.i.i

if.then156:                                       ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #19
  %79 = ptrtoint ptr %effective_cpus139 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %effective_cpus139, align 4
  %81 = ptrtoint ptr %new_cpus to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %new_cpus, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %83 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i387 = add i32 %83, 31
  %84 = lshr i32 %sub.i.i387, 3
  %mul.i.i388 = and i32 %84, 536870908
  %85 = call ptr @memcpy(ptr %80, ptr %82, i32 %mul.i.i388)
  %86 = ptrtoint ptr %subparts_cpus152 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %subparts_cpus152, align 4
  %88 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i389 = add i32 %88, 31
  %89 = lshr i32 %sub.i.i389, 3
  %mul.i.i390 = and i32 %89, 536870908
  %90 = call ptr @memset(ptr %87, i32 0, i32 %mul.i.i390)
  %91 = ptrtoint ptr %nr_subparts_cpus to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %nr_subparts_cpus, align 4
  br label %if.end177

if.else.i.i:                                      ; preds = %if.then149
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %92 = load i32, ptr @nr_cpu_ids, align 4
  %93 = ptrtoint ptr %new_cpus to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %new_cpus, align 4
  %95 = ptrtoint ptr %subparts_cpus152 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %subparts_cpus152, align 4
  %call.i.i400 = call i32 @__bitmap_subset(ptr noundef %96, ptr noundef %94, i32 noundef %92) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i400)
  %tobool165.not = icmp eq i32 %call.i.i400, 0
  br i1 %tobool165.not, label %if.end.i.i412, label %if.else.i.i.if.end177_crit_edge

if.else.i.i.if.end177_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end177

if.end.i.i412:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %97 = load i32, ptr @nr_cpu_ids, align 4
  %98 = ptrtoint ptr %new_cpus to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %new_cpus, align 4
  %100 = ptrtoint ptr %subparts_cpus152 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %subparts_cpus152, align 4
  %call.i.i411 = call i32 @__bitmap_andnot(ptr noundef %101, ptr noundef %101, ptr noundef %99, i32 noundef %97) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %102 = load i32, ptr @nr_cpu_ids, align 4
  %103 = ptrtoint ptr %subparts_cpus152 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %subparts_cpus152, align 4
  %call4.i.i = call i32 @__bitmap_weight(ptr noundef %104, i32 noundef %102) #17
  %105 = ptrtoint ptr %nr_subparts_cpus to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %call4.i.i, ptr %nr_subparts_cpus, align 4
  br label %if.end177

if.end177:                                        ; preds = %if.end.i.i412, %if.else.i.i.if.end177_crit_edge, %if.then156, %if.else146.if.end177_crit_edge, %if.then144
  call void @__sanitizer_cov_trace_cmp4(i32 %new_prs.0, i32 %45)
  %cmp178.not = icmp eq i32 %new_prs.0, %45
  br i1 %cmp178.not, label %if.end181.thread, label %if.then.i424

if.end181.thread:                                 ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #19
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @callback_lock) #17
  br label %notify_partition_change.exit

if.then.i424:                                     ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #19
  %106 = ptrtoint ptr %partition_root_state to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %new_prs.0, ptr %partition_root_state, align 8
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @callback_lock) #17
  %partition_file.i = getelementptr inbounds %struct.cpuset, ptr %pos_css.0493, i32 0, i32 16
  call void @cgroup_file_notify(ptr noundef %partition_file.i) #17
  br label %notify_partition_change.exit

notify_partition_change.exit:                     ; preds = %if.then.i424, %if.end181.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @cpuset_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@update_cpumasks_hier, %lor.rhs.i428)) #17
          to label %if.end211 [label %lor.rhs.i428], !srcloc !171

lor.rhs.i428:                                     ; preds = %notify_partition_change.exit
  %107 = load ptr, ptr getelementptr inbounds (%struct.cgroup_subsys, ptr @cpuset_cgrp_subsys, i32 0, i32 22), align 4
  %flags.i425 = getelementptr inbounds %struct.cgroup_root, ptr %107, i32 0, i32 7
  %108 = ptrtoint ptr %flags.i425 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flags.i425, align 4
  %and.i426 = and i32 %109, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i426)
  %tobool4.i427.not = icmp eq i32 %and.i426, 0
  br i1 %tobool4.i427.not, label %land.rhs184, label %lor.rhs.i428.if.end211_crit_edge

lor.rhs.i428.if.end211_crit_edge:                 ; preds = %lor.rhs.i428
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end211

land.rhs184:                                      ; preds = %lor.rhs.i428
  %cpus_allowed = getelementptr inbounds %struct.cpuset, ptr %pos_css.0493, i32 0, i32 2
  %110 = ptrtoint ptr %cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cpus_allowed, align 4
  %112 = ptrtoint ptr %effective_cpus139 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %effective_cpus139, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %114 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i447 = call i32 @__bitmap_equal(ptr noundef %111, ptr noundef %113, i32 noundef %114) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i447)
  %tobool.i450.not = icmp eq i32 %call13.i.i447, 0
  br i1 %tobool.i450.not, label %do.end205, label %land.rhs184.if.end211_crit_edge, !prof !162

land.rhs184.if.end211_crit_edge:                  ; preds = %land.rhs184
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end211

do.end205:                                        ; preds = %land.rhs184
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1516, i32 noundef 9, ptr noundef null) #17
  br label %if.end211

if.end211:                                        ; preds = %do.end205, %land.rhs184.if.end211_crit_edge, %lor.rhs.i428.if.end211_crit_edge, %notify_partition_change.exit
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %it.i452) #17
  %115 = call ptr @memset(ptr %it.i452, i32 255, i32 52)
  call void @css_task_iter_start(ptr noundef %pos_css.0493, i32 noundef 0, ptr noundef nonnull %it.i452) #17
  %call3.i453 = call ptr @css_task_iter_next(ptr noundef nonnull %it.i452) #17
  %tobool.not4.i454 = icmp eq ptr %call3.i453, null
  br i1 %tobool.not4.i454, label %if.end211.update_tasks_cpumask.exit462_crit_edge, label %if.end211.while.body.i461_crit_edge

if.end211.while.body.i461_crit_edge:              ; preds = %if.end211
  br label %while.body.i461

if.end211.update_tasks_cpumask.exit462_crit_edge: ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_tasks_cpumask.exit462

while.body.i461:                                  ; preds = %while.body.i461.while.body.i461_crit_edge, %if.end211.while.body.i461_crit_edge
  %call5.i457 = phi ptr [ %call.i459, %while.body.i461.while.body.i461_crit_edge ], [ %call3.i453, %if.end211.while.body.i461_crit_edge ]
  %116 = ptrtoint ptr %effective_cpus139 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %effective_cpus139, align 4
  %call1.i458 = call i32 @set_cpus_allowed_ptr(ptr noundef nonnull %call5.i457, ptr noundef %117) #17
  %call.i459 = call ptr @css_task_iter_next(ptr noundef nonnull %it.i452) #17
  %tobool.not.i460 = icmp eq ptr %call.i459, null
  br i1 %tobool.not.i460, label %while.body.i461.update_tasks_cpumask.exit462_crit_edge, label %while.body.i461.while.body.i461_crit_edge

while.body.i461.while.body.i461_crit_edge:        ; preds = %while.body.i461
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i461

while.body.i461.update_tasks_cpumask.exit462_crit_edge: ; preds = %while.body.i461
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_tasks_cpumask.exit462

update_tasks_cpumask.exit462:                     ; preds = %while.body.i461.update_tasks_cpumask.exit462_crit_edge, %if.end211.update_tasks_cpumask.exit462_crit_edge
  call void @css_task_iter_end(ptr noundef nonnull %it.i452) #17
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %it.i452) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %118 = load i32, ptr @nr_cpu_ids, align 4
  %cpus_allowed219 = getelementptr inbounds %struct.cpuset, ptr %pos_css.0493, i32 0, i32 2
  %119 = ptrtoint ptr %cpus_allowed219 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cpus_allowed219, align 4
  %call.i.i469 = call i32 @_find_first_bit_be(ptr noundef %120, i32 noundef %118) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i469, i32 %118)
  %cmp4.i.i470 = icmp eq i32 %call.i.i469, %118
  br i1 %cmp4.i.i470, label %update_tasks_cpumask.exit462.if.end240_crit_edge, label %land.lhs.true221

update_tasks_cpumask.exit462.if.end240_crit_edge: ; preds = %update_tasks_cpumask.exit462
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end240

land.lhs.true221:                                 ; preds = %update_tasks_cpumask.exit462
  %121 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %flags.i, align 4
  %123 = and i32 %122, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool223.not = icmp eq i32 %123, 0
  br i1 %tobool223.not, label %land.lhs.true221.if.end240_crit_edge, label %land.lhs.true224

land.lhs.true221.if.end240_crit_edge:             ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end240

land.lhs.true224:                                 ; preds = %land.lhs.true221
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @cpuset_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@update_cpumasks_hier, %if.then239)) #17
          to label %lor.lhs.false [label %if.then239], !srcloc !171

lor.lhs.false:                                    ; preds = %land.lhs.true224
  %124 = ptrtoint ptr %partition_root_state to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %partition_root_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %125)
  %cmp.i = icmp slt i32 %125, 1
  br i1 %cmp.i, label %lor.lhs.false.if.end240_crit_edge, label %lor.lhs.false.if.then239_crit_edge

lor.lhs.false.if.then239_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then239

lor.lhs.false.if.end240_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end240

if.then239:                                       ; preds = %lor.lhs.false.if.then239_crit_edge, %land.lhs.true224
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end240

if.end240:                                        ; preds = %if.then239, %lor.lhs.false.if.end240_crit_edge, %land.lhs.true221.if.end240_crit_edge, %update_tasks_cpumask.exit462.if.end240_crit_edge
  %need_rebuild_sched_domains.1.off0 = phi i1 [ %need_rebuild_sched_domains.0.off0491, %update_tasks_cpumask.exit462.if.end240_crit_edge ], [ true, %if.then239 ], [ %need_rebuild_sched_domains.0.off0491, %lor.lhs.false.if.end240_crit_edge ], [ %need_rebuild_sched_domains.0.off0491, %land.lhs.true221.if.end240_crit_edge ]
  %126 = call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i327 = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i.i.i327 to ptr
  %preempt_count.i.i.i.i328 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %preempt_count.i.i.i.i328 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %preempt_count.i.i.i.i328, align 4
  %add.i.i.i329 = add i32 %129, 1
  store volatile i32 %add.i.i.i329, ptr %preempt_count.i.i.i.i328, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i330 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i330, label %if.end240.rcu_read_lock.exit337_crit_edge, label %land.lhs.true.i333

if.end240.rcu_read_lock.exit337_crit_edge:        ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit337

land.lhs.true.i333:                               ; preds = %if.end240
  %call1.i331 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i331)
  %tobool.not.i332 = icmp eq i32 %call1.i331, 0
  br i1 %tobool.not.i332, label %land.lhs.true.i333.rcu_read_lock.exit337_crit_edge, label %land.lhs.true2.i335

land.lhs.true.i333.rcu_read_lock.exit337_crit_edge: ; preds = %land.lhs.true.i333
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit337

land.lhs.true2.i335:                              ; preds = %land.lhs.true.i333
  %.b4.i334 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i334, label %land.lhs.true2.i335.rcu_read_lock.exit337_crit_edge, label %if.then.i336

land.lhs.true2.i335.rcu_read_lock.exit337_crit_edge: ; preds = %land.lhs.true2.i335
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit337

if.then.i336:                                     ; preds = %land.lhs.true2.i335
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit337

rcu_read_lock.exit337:                            ; preds = %if.then.i336, %land.lhs.true2.i335.rcu_read_lock.exit337_crit_edge, %land.lhs.true.i333.rcu_read_lock.exit337_crit_edge, %if.end240.rcu_read_lock.exit337_crit_edge
  call fastcc void @css_put(ptr noundef %pos_css.0493)
  br label %for.inc

for.inc:                                          ; preds = %rcu_read_lock.exit337, %if.end134.for.inc_crit_edge, %if.then65, %is_cpuset_online.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %need_rebuild_sched_domains.3.off0 = phi i1 [ %need_rebuild_sched_domains.0.off0491, %is_cpuset_online.exit.for.inc_crit_edge ], [ %need_rebuild_sched_domains.1.off0, %rcu_read_lock.exit337 ], [ %need_rebuild_sched_domains.0.off0491, %if.then65 ], [ %need_rebuild_sched_domains.0.off0491, %if.end134.for.inc_crit_edge ], [ %need_rebuild_sched_domains.0.off0491, %for.body.for.inc_crit_edge ]
  %pos_css.2 = phi ptr [ %pos_css.0493, %is_cpuset_online.exit.for.inc_crit_edge ], [ %pos_css.0493, %rcu_read_lock.exit337 ], [ %call66, %if.then65 ], [ %pos_css.0493, %if.end134.for.inc_crit_edge ], [ %pos_css.0493, %for.body.for.inc_crit_edge ]
  %call244 = call ptr @css_next_descendant_pre(ptr noundef %pos_css.2, ptr noundef %cs) #17
  %tobool.not = icmp eq ptr %call244, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %need_rebuild_sched_domains.0.off0.lcssa = phi i1 [ false, %rcu_read_lock.exit.for.end_crit_edge ], [ %need_rebuild_sched_domains.3.off0, %for.inc.for.end_crit_edge ]
  %call.i477 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i477, label %for.end.rcu_read_unlock.exit487_crit_edge, label %land.lhs.true.i480

for.end.rcu_read_unlock.exit487_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit487

land.lhs.true.i480:                               ; preds = %for.end
  %call1.i478 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i478)
  %tobool.not.i479 = icmp eq i32 %call1.i478, 0
  br i1 %tobool.not.i479, label %land.lhs.true.i480.rcu_read_unlock.exit487_crit_edge, label %land.lhs.true2.i482

land.lhs.true.i480.rcu_read_unlock.exit487_crit_edge: ; preds = %land.lhs.true.i480
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit487

land.lhs.true2.i482:                              ; preds = %land.lhs.true.i480
  %.b4.i481 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i481, label %land.lhs.true2.i482.rcu_read_unlock.exit487_crit_edge, label %if.then.i483

land.lhs.true2.i482.rcu_read_unlock.exit487_crit_edge: ; preds = %land.lhs.true2.i482
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit487

if.then.i483:                                     ; preds = %land.lhs.true2.i482
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit487

rcu_read_unlock.exit487:                          ; preds = %if.then.i483, %land.lhs.true2.i482.rcu_read_unlock.exit487_crit_edge, %land.lhs.true.i480.rcu_read_unlock.exit487_crit_edge, %for.end.rcu_read_unlock.exit487_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %130 = call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i484 = and i32 %130, -16384
  %131 = inttoptr i32 %and.i.i.i.i.i484 to ptr
  %preempt_count.i.i.i.i485 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %preempt_count.i.i.i.i485 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %preempt_count.i.i.i.i485, align 4
  %sub.i.i.i486 = add i32 %133, -1
  store volatile i32 %sub.i.i.i486, ptr %preempt_count.i.i.i.i485, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br i1 %need_rebuild_sched_domains.0.off0.lcssa, label %if.then246, label %rcu_read_unlock.exit487.if.end247_crit_edge

rcu_read_unlock.exit487.if.end247_crit_edge:      ; preds = %rcu_read_unlock.exit487
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end247

if.then246:                                       ; preds = %rcu_read_unlock.exit487
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @rebuild_sched_domains_locked()
  br label %if.end247

if.end247:                                        ; preds = %if.then246, %rcu_read_unlock.exit487.if.end247_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @compute_effective_cpumask(ptr noundef %new_cpus, ptr nocapture noundef readonly %cs, ptr nocapture noundef readonly %parent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_subparts_cpus = getelementptr inbounds %struct.cpuset, ptr %parent, i32 0, i32 12
  %0 = ptrtoint ptr %nr_subparts_cpus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_subparts_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %tobool.not, label %if.end.i.i36, label %if.else.i.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %subparts_cpus = getelementptr inbounds %struct.cpuset, ptr %parent, i32 0, i32 6
  %3 = ptrtoint ptr %subparts_cpus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %subparts_cpus, align 4
  %effective_cpus = getelementptr inbounds %struct.cpuset, ptr %parent, i32 0, i32 4
  %5 = ptrtoint ptr %effective_cpus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %effective_cpus, align 4
  tail call void @__bitmap_or(ptr noundef %new_cpus, ptr noundef %6, ptr noundef %4, i32 noundef %2) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cpus_allowed = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 2
  %8 = ptrtoint ptr %cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpus_allowed, align 4
  %call.i.i = tail call i32 @__bitmap_and(ptr noundef %new_cpus, ptr noundef %new_cpus, ptr noundef %9, i32 noundef %7) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i23 = tail call i32 @__bitmap_and(ptr noundef %new_cpus, ptr noundef %new_cpus, ptr noundef nonnull @__cpu_active_mask, i32 noundef %10) #17
  br label %if.end

if.end.i.i36:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %effective_cpus3 = getelementptr inbounds %struct.cpuset, ptr %parent, i32 0, i32 4
  %11 = ptrtoint ptr %effective_cpus3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %effective_cpus3, align 4
  %cpus_allowed2 = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 2
  %13 = ptrtoint ptr %cpus_allowed2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpus_allowed2, align 4
  %call.i.i35 = tail call i32 @__bitmap_and(ptr noundef %new_cpus, ptr noundef %14, ptr noundef %12, i32 noundef %2) #17
  br label %if.end

if.end:                                           ; preds = %if.end.i.i36, %if.else.i.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_file_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_trial_cpuset(ptr noundef %cs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef %cs, i32 noundef 352, i32 noundef 3264) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpus_allowed.i = getelementptr inbounds %struct.cpuset, ptr %call, i32 0, i32 2
  %effective_cpus.i = getelementptr inbounds %struct.cpuset, ptr %call, i32 0, i32 4
  %subparts_cpus.i = getelementptr inbounds %struct.cpuset, ptr %call, i32 0, i32 6
  %call.i = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef %cpus_allowed.i, i32 noundef 3264) #17
  br i1 %call.i, label %if.end2.i, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then3

if.end2.i:                                        ; preds = %if.end
  %call3.i = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef %effective_cpus.i, i32 noundef 3264) #17
  br i1 %call3.i, label %if.end5.i, label %if.end2.i.free_one.i_crit_edge

if.end2.i.free_one.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_one.i

if.end5.i:                                        ; preds = %if.end2.i
  %call6.i = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef %subparts_cpus.i, i32 noundef 3264) #17
  br i1 %call6.i, label %if.end4, label %free_two.i

free_two.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %effective_cpus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %effective_cpus.i, align 4
  tail call void @free_cpumask_var(ptr noundef %1) #17
  br label %free_one.i

free_one.i:                                       ; preds = %free_two.i, %if.end2.i.free_one.i_crit_edge
  %2 = ptrtoint ptr %cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpus_allowed.i, align 4
  tail call void @free_cpumask_var(ptr noundef %3) #17
  br label %if.then3

if.then3:                                         ; preds = %free_one.i, %if.end.if.then3_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #17
  br label %cleanup

if.end4:                                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpus_allowed.i, align 4
  %cpus_allowed5 = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 2
  %6 = ptrtoint ptr %cpus_allowed5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpus_allowed5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %8, 31
  %9 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %9, 536870908
  %10 = call ptr @memcpy(ptr %5, ptr %7, i32 %mul.i.i)
  %11 = ptrtoint ptr %effective_cpus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %effective_cpus.i, align 4
  %effective_cpus6 = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 4
  %13 = ptrtoint ptr %effective_cpus6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %effective_cpus6, align 4
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i14 = add i32 %15, 31
  %16 = lshr i32 %sub.i.i14, 3
  %mul.i.i15 = and i32 %16, 536870908
  %17 = call ptr @memcpy(ptr %12, ptr %14, i32 %mul.i.i15)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then3 ], [ %call, %if.end4 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @validate_change(ptr noundef %cur, ptr noundef %trial) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @cpuset_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@validate_change, %lor.rhs.i)) #17
          to label %if.end3 [label %lor.rhs.i], !srcloc !171

lor.rhs.i:                                        ; preds = %rcu_read_lock.exit
  %4 = load ptr, ptr getelementptr inbounds (%struct.cgroup_subsys, ptr @cpuset_cgrp_subsys, i32 0, i32 22), align 4
  %flags.i = getelementptr inbounds %struct.cgroup_root, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool4.i.not, label %if.then, label %lor.rhs.i.if.end3_crit_edge

lor.rhs.i.if.end3_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

if.then:                                          ; preds = %lor.rhs.i
  %call.i97 = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool.not.i98 = icmp eq i32 %call.i97, 0
  br i1 %tobool.not.i98, label %land.rhs.i, label %if.then.if.end29.i_crit_edge

if.then.if.end29.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i

land.rhs.i:                                       ; preds = %if.then
  %.b64.i = load i1, ptr @validate_change_legacy.__already_done, align 1
  br i1 %.b64.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i99, !prof !159

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i

if.then.i99:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @validate_change_legacy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 603, i32 noundef 9, ptr noundef null) #17
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i99, %land.rhs.i.if.end29.i_crit_edge, %if.then.if.end29.i_crit_edge
  %call38.i = tail call ptr @css_next_child(ptr noundef null, ptr noundef %cur) #17
  %tobool39.not111.i = icmp eq ptr %call38.i, null
  br i1 %tobool39.not111.i, label %if.end29.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end29.i.for.end.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end29.i
  %cpus_allowed1.i.i = getelementptr inbounds %struct.cpuset, ptr %trial, i32 0, i32 2
  %mems_allowed2.i.i = getelementptr inbounds %struct.cpuset, ptr %trial, i32 0, i32 3
  %flags.i21.i.i = getelementptr inbounds %struct.cpuset, ptr %trial, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %css.0112.i = phi ptr [ %call38.i, %for.body.lr.ph.i ], [ %call49.i, %for.inc.i.for.body.i_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.cpuset, ptr %css.0112.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.for.inc.i_crit_edge, label %land.rhs.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.rhs.i.i:                                     ; preds = %for.body.i
  %flags.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css.0112.i, i32 0, i32 7
  %9 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %is_cpuset_online.exit.i, label %land.rhs.i.i.if.else.i.i.i.i_crit_edge

land.rhs.i.i.if.else.i.i.i.i_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i.i.i.i

is_cpuset_online.exit.i:                          ; preds = %land.rhs.i.i
  %refcnt.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css.0112.i, i32 0, i32 2
  %11 = ptrtoint ptr %refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %refcnt.i.i.i, align 4
  %and.i.i.i.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.i.i.i, label %is_cpuset_online.exit.i.if.else.i.i.i.i_crit_edge, label %is_cpuset_online.exit.i.for.inc.i_crit_edge

is_cpuset_online.exit.i.for.inc.i_crit_edge:      ; preds = %is_cpuset_online.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

is_cpuset_online.exit.i.if.else.i.i.i.i_crit_edge: ; preds = %is_cpuset_online.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %is_cpuset_online.exit.i.if.else.i.i.i.i_crit_edge, %land.rhs.i.i.if.else.i.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %14 = ptrtoint ptr %cpus_allowed1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpus_allowed1.i.i, align 4
  %cpus_allowed.i.i = getelementptr inbounds %struct.cpuset, ptr %css.0112.i, i32 0, i32 2
  %16 = ptrtoint ptr %cpus_allowed.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cpus_allowed.i.i, align 4
  %call.i.i.i.i = tail call i32 @__bitmap_subset(ptr noundef %17, ptr noundef %15, i32 noundef %13) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i66.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i66.i, label %if.else.i.i.i.i.out_crit_edge, label %land.lhs.true.i.i

if.else.i.i.i.i.out_crit_edge:                    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

land.lhs.true.i.i:                                ; preds = %if.else.i.i.i.i
  %mems_allowed.i.i = getelementptr inbounds %struct.cpuset, ptr %css.0112.i, i32 0, i32 3
  %18 = ptrtoint ptr %mems_allowed.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mems_allowed.i.i, align 4
  %20 = ptrtoint ptr %mems_allowed2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mems_allowed2.i.i, align 4
  %neg.i.i17.i.i = xor i32 %21, -1
  %and.i.i18.i.i = and i32 %19, 1
  %and4.i.i19.i.i = and i32 %and.i.i18.i.i, %neg.i.i17.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and4.i.i19.i.i)
  %tobool4.not.i.i = icmp eq i32 %and4.i.i19.i.i, 1
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.out_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.out_crit_edge:                  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags.i.i, align 4
  %shr.i.i20.i.i = lshr i32 %23, 1
  %and1.i.i.i.i = and i32 %shr.i.i20.i.i, 1
  %24 = ptrtoint ptr %flags.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i21.i.i, align 4
  %shr.i.i22.i.i = lshr i32 %25, 1
  %and1.i.i23.i.i = and i32 %shr.i.i22.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i.i.i.i, i32 %and1.i.i23.i.i)
  %cmp.not.i.i = icmp ugt i32 %and1.i.i.i.i, %and1.i.i23.i.i
  br i1 %cmp.not.i.i, label %land.lhs.true5.i.i.out_crit_edge, label %is_cpuset_subset.exit.i

land.lhs.true5.i.i.out_crit_edge:                 ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

is_cpuset_subset.exit.i:                          ; preds = %land.lhs.true5.i.i
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags.i.i, align 4
  %shr.i.i25.i.i = lshr i32 %27, 2
  %and1.i.i26.i.i = and i32 %shr.i.i25.i.i, 1
  %28 = ptrtoint ptr %flags.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags.i21.i.i, align 4
  %shr.i.i28.i.i = lshr i32 %29, 2
  %and1.i.i29.i.i = and i32 %shr.i.i28.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i.i26.i.i, i32 %and1.i.i29.i.i)
  %cmp10.i.not.i = icmp ugt i32 %and1.i.i26.i.i, %and1.i.i29.i.i
  br i1 %cmp10.i.not.i, label %is_cpuset_subset.exit.i.out_crit_edge, label %is_cpuset_subset.exit.i.for.inc.i_crit_edge

is_cpuset_subset.exit.i.for.inc.i_crit_edge:      ; preds = %is_cpuset_subset.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

is_cpuset_subset.exit.i.out_crit_edge:            ; preds = %is_cpuset_subset.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

for.inc.i:                                        ; preds = %is_cpuset_subset.exit.i.for.inc.i_crit_edge, %is_cpuset_online.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %call49.i = tail call ptr @css_next_child(ptr noundef nonnull %css.0112.i, ptr noundef %cur) #17
  %tobool39.not.i = icmp eq ptr %call49.i, null
  br i1 %tobool39.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end29.i.for.end.i_crit_edge
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cur, i32 0, i32 12
  %30 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent.i.i, align 8
  %tobool51.not.i = icmp eq ptr %31, null
  br i1 %tobool51.not.i, label %for.end.i.if.end3_crit_edge, label %if.else.i.i.i81.i

for.end.i.if.end3_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

if.else.i.i.i81.i:                                ; preds = %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %cpus_allowed1.i70.i = getelementptr inbounds %struct.cpuset, ptr %31, i32 0, i32 2
  %33 = ptrtoint ptr %cpus_allowed1.i70.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cpus_allowed1.i70.i, align 4
  %cpus_allowed.i69.i = getelementptr inbounds %struct.cpuset, ptr %trial, i32 0, i32 2
  %35 = ptrtoint ptr %cpus_allowed.i69.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cpus_allowed.i69.i, align 4
  %call.i.i.i80.i = tail call i32 @__bitmap_subset(ptr noundef %36, ptr noundef %34, i32 noundef %32) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i80.i)
  %tobool.not.i83.i = icmp eq i32 %call.i.i.i80.i, 0
  br i1 %tobool.not.i83.i, label %if.else.i.i.i81.i.out_crit_edge, label %land.lhs.true.i91.i

if.else.i.i.i81.i.out_crit_edge:                  ; preds = %if.else.i.i.i81.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

land.lhs.true.i91.i:                              ; preds = %if.else.i.i.i81.i
  %mems_allowed.i85.i = getelementptr inbounds %struct.cpuset, ptr %trial, i32 0, i32 3
  %mems_allowed2.i86.i = getelementptr inbounds %struct.cpuset, ptr %31, i32 0, i32 3
  %37 = ptrtoint ptr %mems_allowed.i85.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mems_allowed.i85.i, align 4
  %39 = ptrtoint ptr %mems_allowed2.i86.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mems_allowed2.i86.i, align 4
  %neg.i.i17.i87.i = xor i32 %40, -1
  %and.i.i18.i88.i = and i32 %38, 1
  %and4.i.i19.i89.i = and i32 %and.i.i18.i88.i, %neg.i.i17.i87.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and4.i.i19.i89.i)
  %tobool4.not.i90.i = icmp eq i32 %and4.i.i19.i89.i, 1
  br i1 %tobool4.not.i90.i, label %land.lhs.true.i91.i.out_crit_edge, label %land.lhs.true5.i99.i

land.lhs.true.i91.i.out_crit_edge:                ; preds = %land.lhs.true.i91.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

land.lhs.true5.i99.i:                             ; preds = %land.lhs.true.i91.i
  %flags.i.i92.i = getelementptr inbounds %struct.cpuset, ptr %trial, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags.i.i92.i, align 4
  %shr.i.i20.i93.i = lshr i32 %42, 1
  %and1.i.i.i94.i = and i32 %shr.i.i20.i93.i, 1
  %flags.i21.i95.i = getelementptr inbounds %struct.cpuset, ptr %31, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i21.i95.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flags.i21.i95.i, align 4
  %shr.i.i22.i96.i = lshr i32 %44, 1
  %and1.i.i23.i97.i = and i32 %shr.i.i22.i96.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i.i.i94.i, i32 %and1.i.i23.i97.i)
  %cmp.not.i98.i = icmp ugt i32 %and1.i.i.i94.i, %and1.i.i23.i97.i
  br i1 %cmp.not.i98.i, label %land.lhs.true5.i99.i.out_crit_edge, label %is_cpuset_subset.exit107.i

land.lhs.true5.i99.i.out_crit_edge:               ; preds = %land.lhs.true5.i99.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

is_cpuset_subset.exit107.i:                       ; preds = %land.lhs.true5.i99.i
  %45 = ptrtoint ptr %flags.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %flags.i.i92.i, align 4
  %shr.i.i25.i100.i = lshr i32 %46, 2
  %and1.i.i26.i101.i = and i32 %shr.i.i25.i100.i, 1
  %47 = ptrtoint ptr %flags.i21.i95.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags.i21.i95.i, align 4
  %shr.i.i28.i102.i = lshr i32 %48, 2
  %and1.i.i29.i103.i = and i32 %shr.i.i28.i102.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i.i26.i101.i, i32 %and1.i.i29.i103.i)
  %cmp10.i104.not.i = icmp ugt i32 %and1.i.i26.i101.i, %and1.i.i29.i103.i
  br i1 %cmp10.i104.not.i, label %is_cpuset_subset.exit107.i.out_crit_edge, label %is_cpuset_subset.exit107.i.if.end3_crit_edge

is_cpuset_subset.exit107.i.if.end3_crit_edge:     ; preds = %is_cpuset_subset.exit107.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

is_cpuset_subset.exit107.i.out_crit_edge:         ; preds = %is_cpuset_subset.exit107.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end3:                                          ; preds = %is_cpuset_subset.exit107.i.if.end3_crit_edge, %for.end.i.if.end3_crit_edge, %lor.rhs.i.if.end3_crit_edge, %rcu_read_lock.exit
  %cmp = icmp eq ptr %cur, @top_cpuset
  br i1 %cmp, label %if.end3.out_crit_edge, label %if.end5

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end5:                                          ; preds = %if.end3
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cur, i32 0, i32 12
  %49 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %parent.i, align 8
  %call8 = tail call ptr @css_next_child(ptr noundef null, ptr noundef %50) #17
  %tobool9.not161 = icmp eq ptr %call8, null
  br i1 %tobool9.not161, label %if.end5.for.end_crit_edge, label %for.body.lr.ph

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %flags.i108 = getelementptr inbounds %struct.cpuset, ptr %trial, i32 0, i32 1
  %cpus_allowed = getelementptr inbounds %struct.cpuset, ptr %trial, i32 0, i32 2
  %mems_allowed = getelementptr inbounds %struct.cpuset, ptr %trial, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %css.0162 = phi ptr [ %call8, %for.body.lr.ph ], [ %call38, %for.inc.for.body_crit_edge ]
  %flags.i101 = getelementptr inbounds %struct.cpuset, ptr %css.0162, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i101 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %flags.i101, align 4
  %and1.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i102 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i102, label %for.body.for.inc_crit_edge, label %land.rhs.i105

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.rhs.i105:                                    ; preds = %for.body
  %flags.i.i103 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css.0162, i32 0, i32 7
  %53 = ptrtoint ptr %flags.i.i103 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags.i.i103, align 4
  %and.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i104 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i104, label %is_cpuset_online.exit, label %land.rhs.i105.if.then12_crit_edge

land.rhs.i105.if.then12_crit_edge:                ; preds = %land.rhs.i105
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then12

is_cpuset_online.exit:                            ; preds = %land.rhs.i105
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css.0162, i32 0, i32 2
  %55 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %refcnt.i.i, align 4
  %and.i.i.i106 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i106)
  %tobool.i.i.i = icmp eq i32 %and.i.i.i106, 0
  br i1 %tobool.i.i.i, label %is_cpuset_online.exit.if.then12_crit_edge, label %is_cpuset_online.exit.for.inc_crit_edge

is_cpuset_online.exit.for.inc_crit_edge:          ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

is_cpuset_online.exit.if.then12_crit_edge:        ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then12

if.then12:                                        ; preds = %is_cpuset_online.exit.if.then12_crit_edge, %land.rhs.i105.if.then12_crit_edge
  %57 = ptrtoint ptr %flags.i108 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %flags.i108, align 4
  %59 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool14.not = icmp eq i32 %59, 0
  br i1 %tobool14.not, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.then12
  %60 = ptrtoint ptr %flags.i101 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %flags.i101, align 4
  %62 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool16.not = icmp eq i32 %62, 0
  %cmp17.not = icmp eq ptr %css.0162, %cur
  %or.cond = or i1 %cmp17.not, %tobool16.not
  br i1 %or.cond, label %lor.lhs.false.if.end22_crit_edge, label %lor.lhs.false.if.else.i.i_crit_edge

lor.lhs.false.if.else.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i.i

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

land.lhs.true:                                    ; preds = %if.then12
  %cmp17.not.old = icmp eq ptr %css.0162, %cur
  br i1 %cmp17.not.old, label %land.lhs.true.if.end22_crit_edge, label %land.lhs.true.if.else.i.i_crit_edge

land.lhs.true.if.else.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i.i

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

if.else.i.i:                                      ; preds = %land.lhs.true.if.else.i.i_crit_edge, %lor.lhs.false.if.else.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %63 = load i32, ptr @nr_cpu_ids, align 4
  %cpus_allowed19 = getelementptr inbounds %struct.cpuset, ptr %css.0162, i32 0, i32 2
  %64 = ptrtoint ptr %cpus_allowed19 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cpus_allowed19, align 4
  %66 = ptrtoint ptr %cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cpus_allowed, align 4
  %call.i.i = tail call i32 @__bitmap_intersects(ptr noundef %67, ptr noundef %65, i32 noundef %63) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.not, label %if.else.i.i.if.end22_crit_edge, label %if.else.i.i.out_crit_edge

if.else.i.i.out_crit_edge:                        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.else.i.i.if.end22_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

if.end22:                                         ; preds = %if.else.i.i.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %lor.lhs.false.if.end22_crit_edge
  %68 = ptrtoint ptr %flags.i108 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %flags.i108, align 4
  %70 = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool24.not = icmp eq i32 %70, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %land.lhs.true28

lor.lhs.false25:                                  ; preds = %if.end22
  %71 = ptrtoint ptr %flags.i101 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %flags.i101, align 4
  %73 = and i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool27.not = icmp eq i32 %73, 0
  %cmp29.not = icmp eq ptr %css.0162, %cur
  %or.cond96 = or i1 %cmp29.not, %tobool27.not
  br i1 %or.cond96, label %lor.lhs.false25.for.inc_crit_edge, label %lor.lhs.false25.land.lhs.true30_crit_edge

lor.lhs.false25.land.lhs.true30_crit_edge:        ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true30

lor.lhs.false25.for.inc_crit_edge:                ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true28:                                  ; preds = %if.end22
  %cmp29.not.old = icmp eq ptr %css.0162, %cur
  br i1 %cmp29.not.old, label %land.lhs.true28.for.inc_crit_edge, label %land.lhs.true28.land.lhs.true30_crit_edge

land.lhs.true28.land.lhs.true30_crit_edge:        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true30

land.lhs.true28.for.inc_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true30:                                  ; preds = %land.lhs.true28.land.lhs.true30_crit_edge, %lor.lhs.false25.land.lhs.true30_crit_edge
  %mems_allowed31 = getelementptr inbounds %struct.cpuset, ptr %css.0162, i32 0, i32 3
  %74 = ptrtoint ptr %mems_allowed to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mems_allowed, align 4
  %76 = ptrtoint ptr %mems_allowed31 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mems_allowed31, align 4
  %and.i.i121 = and i32 %75, 1
  %and4.i.i122 = and i32 %and.i.i121, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i122)
  %tobool33.not = icmp eq i32 %and4.i.i122, 0
  br i1 %tobool33.not, label %land.lhs.true30.for.inc_crit_edge, label %land.lhs.true30.out_crit_edge

land.lhs.true30.out_crit_edge:                    ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

land.lhs.true30.for.inc_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true30.for.inc_crit_edge, %land.lhs.true28.for.inc_crit_edge, %lor.lhs.false25.for.inc_crit_edge, %is_cpuset_online.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call38 = tail call ptr @css_next_child(ptr noundef nonnull %css.0162, ptr noundef %50) #17
  %tobool9.not = icmp eq ptr %call38, null
  br i1 %tobool9.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end5.for.end_crit_edge
  %78 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cur, align 8
  %nr_populated_csets.i = getelementptr inbounds %struct.cgroup, ptr %79, i32 0, i32 7
  %80 = ptrtoint ptr %nr_populated_csets.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nr_populated_csets.i, align 8
  %nr_populated_domain_children.i = getelementptr inbounds %struct.cgroup, ptr %79, i32 0, i32 8
  %82 = ptrtoint ptr %nr_populated_domain_children.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nr_populated_domain_children.i, align 4
  %add.i = add i32 %83, %81
  %nr_populated_threaded_children.i = getelementptr inbounds %struct.cgroup, ptr %79, i32 0, i32 9
  %84 = ptrtoint ptr %nr_populated_threaded_children.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nr_populated_threaded_children.i, align 8
  %add1.i = sub i32 0, %85
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add1.i)
  %tobool.i123.not = icmp eq i32 %add.i, %add1.i
  br i1 %tobool.i123.not, label %lor.lhs.false41, label %for.end.cpumask_empty.exit_crit_edge

for.end.cpumask_empty.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpumask_empty.exit

lor.lhs.false41:                                  ; preds = %for.end
  %attach_in_progress = getelementptr inbounds %struct.cpuset, ptr %cur, i32 0, i32 9
  %86 = ptrtoint ptr %attach_in_progress to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %attach_in_progress, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool42.not = icmp eq i32 %87, 0
  br i1 %tobool42.not, label %lor.lhs.false41.if.end60_crit_edge, label %lor.lhs.false41.cpumask_empty.exit_crit_edge

lor.lhs.false41.cpumask_empty.exit_crit_edge:     ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpumask_empty.exit

lor.lhs.false41.if.end60_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60

cpumask_empty.exit:                               ; preds = %lor.lhs.false41.cpumask_empty.exit_crit_edge, %for.end.cpumask_empty.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %88 = load i32, ptr @nr_cpu_ids, align 4
  %cpus_allowed44 = getelementptr inbounds %struct.cpuset, ptr %cur, i32 0, i32 2
  %89 = ptrtoint ptr %cpus_allowed44 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cpus_allowed44, align 4
  %call.i.i130 = tail call i32 @_find_first_bit_be(ptr noundef %90, i32 noundef %88) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i130, i32 %88)
  %cmp4.i.i = icmp eq i32 %call.i.i130, %88
  br i1 %cmp4.i.i, label %cpumask_empty.exit.if.end50_crit_edge, label %cpumask_empty.exit142

cpumask_empty.exit.if.end50_crit_edge:            ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

cpumask_empty.exit142:                            ; preds = %cpumask_empty.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %91 = load i32, ptr @nr_cpu_ids, align 4
  %cpus_allowed47 = getelementptr inbounds %struct.cpuset, ptr %trial, i32 0, i32 2
  %92 = ptrtoint ptr %cpus_allowed47 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cpus_allowed47, align 4
  %call.i.i138 = tail call i32 @_find_first_bit_be(ptr noundef %93, i32 noundef %91) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i138, i32 %91)
  %cmp4.i.i139 = icmp eq i32 %call.i.i138, %91
  br i1 %cmp4.i.i139, label %cpumask_empty.exit142.out_crit_edge, label %cpumask_empty.exit142.if.end50_crit_edge

cpumask_empty.exit142.if.end50_crit_edge:         ; preds = %cpumask_empty.exit142
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

cpumask_empty.exit142.out_crit_edge:              ; preds = %cpumask_empty.exit142
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end50:                                         ; preds = %cpumask_empty.exit142.if.end50_crit_edge, %cpumask_empty.exit.if.end50_crit_edge
  %mems_allowed51 = getelementptr inbounds %struct.cpuset, ptr %cur, i32 0, i32 3
  %94 = ptrtoint ptr %mems_allowed51 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mems_allowed51, align 4
  %and3.i.i143 = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i143)
  %tobool53.not.not = icmp eq i32 %and3.i.i143, 0
  br i1 %tobool53.not.not, label %if.end50.if.end60_crit_edge, label %land.lhs.true54

if.end50.if.end60_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60

land.lhs.true54:                                  ; preds = %if.end50
  %mems_allowed55 = getelementptr inbounds %struct.cpuset, ptr %trial, i32 0, i32 3
  %96 = ptrtoint ptr %mems_allowed55 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mems_allowed55, align 4
  %and3.i.i144 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i144)
  %tobool57.not.not = icmp eq i32 %and3.i.i144, 0
  br i1 %tobool57.not.not, label %land.lhs.true54.out_crit_edge, label %land.lhs.true54.if.end60_crit_edge

land.lhs.true54.if.end60_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60

land.lhs.true54.out_crit_edge:                    ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end60:                                         ; preds = %land.lhs.true54.if.end60_crit_edge, %if.end50.if.end60_crit_edge, %lor.lhs.false41.if.end60_crit_edge
  %flags.i145 = getelementptr inbounds %struct.cpuset, ptr %cur, i32 0, i32 1
  %98 = ptrtoint ptr %flags.i145 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %flags.i145, align 4
  %100 = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool62.not = icmp eq i32 %100, 0
  br i1 %tobool62.not, label %if.end60.if.end69_crit_edge, label %land.lhs.true63

if.end60.if.end69_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

land.lhs.true63:                                  ; preds = %if.end60
  %cpus_allowed64 = getelementptr inbounds %struct.cpuset, ptr %cur, i32 0, i32 2
  %101 = ptrtoint ptr %cpus_allowed64 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cpus_allowed64, align 4
  %cpus_allowed65 = getelementptr inbounds %struct.cpuset, ptr %trial, i32 0, i32 2
  %103 = ptrtoint ptr %cpus_allowed65 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cpus_allowed65, align 4
  %call66 = tail call i32 @cpuset_cpumask_can_shrink(ptr noundef %102, ptr noundef %104) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.lhs.true63.out_crit_edge, label %land.lhs.true63.if.end69_crit_edge

land.lhs.true63.if.end69_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

land.lhs.true63.out_crit_edge:                    ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end69:                                         ; preds = %land.lhs.true63.if.end69_crit_edge, %if.end60.if.end69_crit_edge
  br label %out

out:                                              ; preds = %if.end69, %land.lhs.true63.out_crit_edge, %land.lhs.true54.out_crit_edge, %cpumask_empty.exit142.out_crit_edge, %land.lhs.true30.out_crit_edge, %if.else.i.i.out_crit_edge, %if.end3.out_crit_edge, %is_cpuset_subset.exit107.i.out_crit_edge, %land.lhs.true5.i99.i.out_crit_edge, %land.lhs.true.i91.i.out_crit_edge, %if.else.i.i.i81.i.out_crit_edge, %is_cpuset_subset.exit.i.out_crit_edge, %land.lhs.true5.i.i.out_crit_edge, %land.lhs.true.i.i.out_crit_edge, %if.else.i.i.i.i.out_crit_edge
  %ret.1 = phi i32 [ 0, %if.end3.out_crit_edge ], [ 0, %if.end69 ], [ -16, %land.lhs.true63.out_crit_edge ], [ -28, %land.lhs.true54.out_crit_edge ], [ -28, %cpumask_empty.exit142.out_crit_edge ], [ -13, %if.else.i.i.i81.i.out_crit_edge ], [ -13, %land.lhs.true.i91.i.out_crit_edge ], [ -13, %land.lhs.true5.i99.i.out_crit_edge ], [ -13, %is_cpuset_subset.exit107.i.out_crit_edge ], [ -22, %if.else.i.i.out_crit_edge ], [ -22, %land.lhs.true30.out_crit_edge ], [ -16, %is_cpuset_subset.exit.i.out_crit_edge ], [ -16, %land.lhs.true5.i.i.out_crit_edge ], [ -16, %land.lhs.true.i.i.out_crit_edge ], [ -16, %if.else.i.i.i.i.out_crit_edge ]
  %call.i148 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i148, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i151

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i151:                               ; preds = %out
  %call1.i149 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i149)
  %tobool.not.i150 = icmp eq i32 %call1.i149, 0
  br i1 %tobool.not.i150, label %land.lhs.true.i151.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i153

land.lhs.true.i151.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i151
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i153:                              ; preds = %land.lhs.true.i151
  %.b4.i152 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i152, label %land.lhs.true2.i153.rcu_read_unlock.exit_crit_edge, label %if.then.i154

land.lhs.true2.i153.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i153
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i154:                                     ; preds = %land.lhs.true2.i153
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i154, %land.lhs.true2.i153.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i151.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %105 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i155 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i.i.i155 to ptr
  %preempt_count.i.i.i.i156 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %preempt_count.i.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %preempt_count.i.i.i.i156, align 4
  %sub.i.i.i = add i32 %108, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i156, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuset_cpumask_can_shrink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_dec_cpuslocked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_taskset_first(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_can_attach(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_task_setscheduler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_taskset_next(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpuset_change_task_nodemask(ptr noundef %tsk, ptr nocapture noundef readonly %newmems) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #17
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !161
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #17, !srcloc !188
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @trace_hardirqs_off() #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end.__seqprop_spinlock_assert.exit_crit_edge, label %land.rhs.i

if.end.__seqprop_spinlock_assert.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %__seqprop_spinlock_assert.exit

land.rhs.i:                                       ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 161, i32 1
  %2 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock.i, align 4
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__seqprop_spinlock_assert.exit_crit_edge, !prof !162

land.rhs.i.__seqprop_spinlock_assert.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__seqprop_spinlock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 277, i32 noundef 9, ptr noundef null) #17
  br label %__seqprop_spinlock_assert.exit

__seqprop_spinlock_assert.exit:                   ; preds = %do.end.i, %land.rhs.i.__seqprop_spinlock_assert.exit_crit_edge, %if.end.__seqprop_spinlock_assert.exit_crit_edge
  %mems_allowed_seq = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 161
  %4 = ptrtoint ptr %mems_allowed_seq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mems_allowed_seq, align 4
  %inc.i.i.i = add i32 %5, 1
  store i32 %inc.i.i.i, ptr %mems_allowed_seq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !189
  %dep_map.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 161, i32 0, i32 1
  %6 = tail call ptr @llvm.returnaddress(i32 0) #17
  %7 = ptrtoint ptr %6 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %7) #17
  %mems_allowed = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 160
  %8 = ptrtoint ptr %mems_allowed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mems_allowed, align 4
  %10 = ptrtoint ptr %newmems to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %newmems, align 4
  %or.i.i = or i32 %11, %9
  store i32 %or.i.i, ptr %mems_allowed, align 4
  %12 = load i32, ptr %newmems, align 4
  store i32 %12, ptr %mems_allowed, align 64
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %7) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !190
  %13 = ptrtoint ptr %mems_allowed_seq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mems_allowed_seq, align 4
  %inc.i.i = add i32 %14, 1
  store i32 %inc.i.i, ptr %mems_allowed_seq, align 4
  tail call void @trace_hardirqs_on() #17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !191
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_mm(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpuset_migrate_mm(ptr noundef %mm, ptr nocapture noundef readonly %from, ptr nocapture noundef readonly %to) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %from, align 4
  %2 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %to, align 4
  %xor.i.i = xor i32 %3, %1
  %and3.i.i = and i32 %xor.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool.not.not = icmp eq i32 %and3.i.i, 0
  br i1 %tobool.not.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mmput(ptr noundef %mm) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 56) #20
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %mm4 = getelementptr inbounds %struct.cpuset_migrate_mm_work, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %mm4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mm, ptr %mm4, align 4
  %from5 = getelementptr inbounds %struct.cpuset_migrate_mm_work, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %from, align 4
  %8 = ptrtoint ptr %from5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %from5, align 8
  %to6 = getelementptr inbounds %struct.cpuset_migrate_mm_work, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %to, align 4
  %11 = ptrtoint ptr %to6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %to6, align 4
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #17
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.26, ptr noundef nonnull @cpuset_migrate_mm.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry10 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry10, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @cpuset_migrate_mm_workfn, ptr %func, align 4
  %16 = load ptr, ptr @cpuset_migrate_mm_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mmput(ptr noundef %mm) #17
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpuset_migrate_mm_workfn(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mm = getelementptr inbounds %struct.cpuset_migrate_mm_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm, align 4
  tail call void @mmput(ptr noundef %1) #17
  tail call void @kfree(ptr noundef %work) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuset_common_seq_show(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #17
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %priv.i.i = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 8
  %private = getelementptr inbounds %struct.cftype, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @callback_lock) #17
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %9, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb7
    i32 4, label %sw.bb10
    i32 5, label %sw.bb14
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cpus_allowed = getelementptr inbounds %struct.cpuset, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %cpus_allowed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpus_allowed, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.28, i32 noundef %11, ptr noundef %13) #17
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %mems_allowed = getelementptr inbounds %struct.cpuset, ptr %call.i, i32 0, i32 3
  %tobool.not.i = icmp ne ptr %mems_allowed, null
  %cond.i = zext i1 %tobool.not.i to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.28, i32 noundef %cond.i, ptr noundef %mems_allowed) #17
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %effective_cpus = getelementptr inbounds %struct.cpuset, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %effective_cpus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %effective_cpus, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.28, i32 noundef %14, ptr noundef %16) #17
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %effective_mems = getelementptr inbounds %struct.cpuset, ptr %call.i, i32 0, i32 5
  %tobool.not.i30 = icmp ne ptr %effective_mems, null
  %cond.i31 = zext i1 %tobool.not.i30 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.28, i32 noundef %cond.i31, ptr noundef %effective_mems) #17
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %subparts_cpus = getelementptr inbounds %struct.cpuset, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %subparts_cpus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %subparts_cpus, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.28, i32 noundef %17, ptr noundef %19) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb10, %sw.bb7, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb14 ], [ 0, %sw.bb10 ], [ 0, %sw.bb7 ], [ 0, %sw.bb3 ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @callback_lock) #17
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuset_write_resmask(ptr noundef %of, ptr noundef %buf, i32 noundef %nbytes, i64 noundef %off) #0 align 64 {
entry:
  %tmp.i = alloca %struct.tmpmasks, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_css(ptr noundef %of) #17
  %call.i = tail call ptr @strim(ptr noundef %buf) #17
  tail call fastcc void @css_get(ptr noundef %call)
  %0 = ptrtoint ptr %of to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of, align 4
  tail call void @kernfs_break_active_protection(ptr noundef %1) #17
  %call4 = tail call zeroext i1 @flush_work(ptr noundef nonnull @cpuset_hotplug_work) #17
  tail call void @cpus_read_lock() #17
  tail call void @percpu_down_write(ptr noundef nonnull @cpuset_rwsem) #17
  %flags.i = getelementptr inbounds %struct.cpuset, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %entry.out_unlock_crit_edge, label %land.rhs.i

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

land.rhs.i:                                       ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %is_cpuset_online.exit, label %land.rhs.i.if.end_crit_edge

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

is_cpuset_online.exit:                            ; preds = %land.rhs.i
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refcnt.i.i, align 4
  %and.i.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.i, label %is_cpuset_online.exit.if.end_crit_edge, label %is_cpuset_online.exit.out_unlock_crit_edge

is_cpuset_online.exit.out_unlock_crit_edge:       ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

is_cpuset_online.exit.if.end_crit_edge:           ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %is_cpuset_online.exit.if.end_crit_edge, %land.rhs.i.if.end_crit_edge
  %call6 = tail call fastcc ptr @alloc_trial_cpuset(ptr noundef %call)
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end.out_unlock_crit_edge, label %if.end8

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %of to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of, align 4
  %priv.i = getelementptr inbounds %struct.kernfs_node, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  %private = getelementptr inbounds %struct.cftype, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %private, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %13, label %if.end8.free_cpuset.exit_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
  ]

if.end8.free_cpuset.exit_crit_edge:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_cpuset.exit

sw.bb:                                            ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp.i) #17
  %15 = getelementptr inbounds %struct.tmpmasks, ptr %tmp.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.tmpmasks, ptr %tmp.i, i32 0, i32 2
  %cmp.i = icmp eq ptr %call, @top_cpuset
  br i1 %cmp.i, label %sw.bb.update_cpumask.exit_crit_edge, label %if.end.i

sw.bb.update_cpumask.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_cpumask.exit

if.end.i:                                         ; preds = %sw.bb
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %call.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i29 = icmp eq i8 %18, 0
  %cpus_allowed.i = getelementptr inbounds %struct.cpuset, ptr %call6, i32 0, i32 2
  %19 = ptrtoint ptr %cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cpus_allowed.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %tobool.not.i29, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i.i = add i32 %21, 31
  %22 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %22, 536870908
  %23 = call ptr @memset(ptr %20, i32 0, i32 %mul.i.i.i)
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end.i
  %call.i.i = tail call i32 @bitmap_parselist(ptr noundef %call.i, ptr noundef %20, i32 noundef %21) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp4.i, label %if.else.i.update_cpumask.exit_crit_edge, label %if.else.i.i.i

if.else.i.update_cpumask.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_cpumask.exit

if.else.i.i.i:                                    ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %25 = load ptr, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 2), align 4
  %26 = ptrtoint ptr %cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cpus_allowed.i, align 4
  %call.i.i.i = tail call i32 @__bitmap_subset(ptr noundef %27, ptr noundef %25, i32 noundef %24) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool9.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool9.not.i, label %if.else.i.i.i.update_cpumask.exit_crit_edge, label %if.else.i.i.i.if.end12.i_crit_edge

if.else.i.i.i.if.end12.i_crit_edge:               ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

if.else.i.i.i.update_cpumask.exit_crit_edge:      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_cpumask.exit

if.end12.i:                                       ; preds = %if.else.i.i.i.if.end12.i_crit_edge, %if.then2.i
  %cpus_allowed13.i = getelementptr inbounds %struct.cpuset, ptr %call, i32 0, i32 2
  %28 = ptrtoint ptr %cpus_allowed13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cpus_allowed13.i, align 4
  %30 = ptrtoint ptr %cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cpus_allowed.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i.i = tail call i32 @__bitmap_equal(ptr noundef %29, ptr noundef %31, i32 noundef %32) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i.i)
  %tobool.i.not.i = icmp eq i32 %call13.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end17.i, label %if.end12.i.update_cpumask.exit_crit_edge

if.end12.i.update_cpumask.exit_crit_edge:         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_cpumask.exit

if.end17.i:                                       ; preds = %if.end12.i
  %call18.i = tail call fastcc i32 @validate_change(ptr noundef %call, ptr noundef nonnull %call6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end17.i.update_cpumask.exit_crit_edge, label %if.end21.i

if.end17.i.update_cpumask.exit_crit_edge:         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_cpumask.exit

if.end21.i:                                       ; preds = %if.end17.i
  %subparts_cpus.i = getelementptr inbounds %struct.cpuset, ptr %call6, i32 0, i32 6
  %33 = ptrtoint ptr %subparts_cpus.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %subparts_cpus.i, align 4
  %35 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %tmp.i, align 4
  %effective_cpus.i = getelementptr inbounds %struct.cpuset, ptr %call6, i32 0, i32 4
  %36 = ptrtoint ptr %effective_cpus.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %effective_cpus.i, align 4
  %38 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %15, align 4
  %39 = ptrtoint ptr %cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cpus_allowed.i, align 4
  %41 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %16, align 4
  %partition_root_state.i = getelementptr inbounds %struct.cpuset, ptr %call, i32 0, i32 13
  %42 = ptrtoint ptr %partition_root_state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %partition_root_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool23.not.i = icmp eq i32 %43, 0
  br i1 %tobool23.not.i, label %if.end21.i.if.end34.i_crit_edge, label %cpumask_empty.exit.i

if.end21.i.if.end34.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34.i

cpumask_empty.exit.i:                             ; preds = %if.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %44 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i102.i = tail call i32 @_find_first_bit_be(ptr noundef %40, i32 noundef %44) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i102.i, i32 %44)
  %cmp4.i.i.i = icmp eq i32 %call.i.i102.i, %44
  br i1 %cmp4.i.i.i, label %cpumask_empty.exit.i.update_cpumask.exit_crit_edge, label %if.end28.i

cpumask_empty.exit.i.update_cpumask.exit_crit_edge: ; preds = %cpumask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_cpumask.exit

if.end28.i:                                       ; preds = %cpumask_empty.exit.i
  %45 = ptrtoint ptr %cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cpus_allowed.i, align 4
  %call30.i = call fastcc i32 @update_parent_subparts_cpumask(ptr noundef %call, i32 noundef 2, ptr noundef %46, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %if.end28.i.update_cpumask.exit_crit_edge, label %if.end28.i.if.end34.i_crit_edge

if.end28.i.if.end34.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34.i

if.end28.i.update_cpumask.exit_crit_edge:         ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_cpumask.exit

if.end34.i:                                       ; preds = %if.end28.i.if.end34.i_crit_edge, %if.end21.i.if.end34.i_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @callback_lock) #17
  %47 = ptrtoint ptr %cpus_allowed13.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cpus_allowed13.i, align 4
  %49 = ptrtoint ptr %cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cpus_allowed.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %51 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i105.i = add i32 %51, 31
  %52 = lshr i32 %sub.i.i105.i, 3
  %mul.i.i106.i = and i32 %52, 536870908
  %53 = call ptr @memcpy(ptr %48, ptr %50, i32 %mul.i.i106.i)
  %nr_subparts_cpus.i = getelementptr inbounds %struct.cpuset, ptr %call, i32 0, i32 12
  %54 = ptrtoint ptr %nr_subparts_cpus.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_subparts_cpus.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool37.not.i = icmp eq i32 %55, 0
  br i1 %tobool37.not.i, label %if.end34.i.if.end46.i_crit_edge, label %if.then38.i

if.end34.i.if.end46.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46.i

if.then38.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #19
  %subparts_cpus39.i = getelementptr inbounds %struct.cpuset, ptr %call, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %56 = load i32, ptr @nr_cpu_ids, align 4
  %57 = ptrtoint ptr %cpus_allowed13.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cpus_allowed13.i, align 4
  %59 = ptrtoint ptr %subparts_cpus39.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %subparts_cpus39.i, align 4
  %call.i.i113.i = tail call i32 @__bitmap_and(ptr noundef %60, ptr noundef %60, ptr noundef %58, i32 noundef %56) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %61 = load i32, ptr @nr_cpu_ids, align 4
  %62 = ptrtoint ptr %subparts_cpus39.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %subparts_cpus39.i, align 4
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef %63, i32 noundef %61) #17
  %64 = ptrtoint ptr %nr_subparts_cpus.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call4.i.i.i, ptr %nr_subparts_cpus.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then38.i, %if.end34.i.if.end46.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @callback_lock) #17
  call fastcc void @update_cpumasks_hier(ptr noundef %call, ptr noundef nonnull %tmp.i) #17
  %65 = ptrtoint ptr %partition_root_state.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %partition_root_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool48.not.i = icmp eq i32 %66, 0
  br i1 %tobool48.not.i, label %if.end46.i.update_cpumask.exit_crit_edge, label %if.then49.i

if.end46.i.update_cpumask.exit_crit_edge:         ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_cpumask.exit

if.then49.i:                                      ; preds = %if.end46.i
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call, i32 0, i32 12
  %67 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %parent.i.i, align 8
  %child_ecpus_count.i = getelementptr inbounds %struct.cpuset, ptr %68, i32 0, i32 15
  %69 = ptrtoint ptr %child_ecpus_count.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %child_ecpus_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool51.not.i = icmp eq i32 %70, 0
  br i1 %tobool51.not.i, label %if.then49.i.update_cpumask.exit_crit_edge, label %if.then52.i

if.then49.i.update_cpumask.exit_crit_edge:        ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_cpumask.exit

if.then52.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @update_sibling_cpumasks(ptr noundef %68, ptr noundef %call, ptr noundef nonnull %tmp.i) #17
  br label %update_cpumask.exit

update_cpumask.exit:                              ; preds = %if.then52.i, %if.then49.i.update_cpumask.exit_crit_edge, %if.end46.i.update_cpumask.exit_crit_edge, %if.end28.i.update_cpumask.exit_crit_edge, %cpumask_empty.exit.i.update_cpumask.exit_crit_edge, %if.end17.i.update_cpumask.exit_crit_edge, %if.end12.i.update_cpumask.exit_crit_edge, %if.else.i.i.i.update_cpumask.exit_crit_edge, %if.else.i.update_cpumask.exit_crit_edge, %sw.bb.update_cpumask.exit_crit_edge
  %retval.0.i = phi i32 [ -13, %sw.bb.update_cpumask.exit_crit_edge ], [ %call.i.i, %if.else.i.update_cpumask.exit_crit_edge ], [ -22, %if.else.i.i.i.update_cpumask.exit_crit_edge ], [ 0, %if.end12.i.update_cpumask.exit_crit_edge ], [ %call18.i, %if.end17.i.update_cpumask.exit_crit_edge ], [ -22, %cpumask_empty.exit.i.update_cpumask.exit_crit_edge ], [ -22, %if.end28.i.update_cpumask.exit_crit_edge ], [ 0, %if.then49.i.update_cpumask.exit_crit_edge ], [ 0, %if.then52.i ], [ 0, %if.end46.i.update_cpumask.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp.i) #17
  br label %free_cpuset.exit

sw.bb11:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  %call12 = tail call fastcc i32 @update_nodemask(ptr noundef %call, ptr noundef nonnull %call6, ptr noundef %call.i)
  br label %free_cpuset.exit

free_cpuset.exit:                                 ; preds = %sw.bb11, %update_cpumask.exit, %if.end8.free_cpuset.exit_crit_edge
  %retval2.0 = phi i32 [ %call12, %sw.bb11 ], [ %retval.0.i, %update_cpumask.exit ], [ -22, %if.end8.free_cpuset.exit_crit_edge ]
  %cpus_allowed.i.i = getelementptr inbounds %struct.cpuset, ptr %call6, i32 0, i32 2
  %71 = ptrtoint ptr %cpus_allowed.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cpus_allowed.i.i, align 4
  tail call void @free_cpumask_var(ptr noundef %72) #17
  %effective_cpus.i.i = getelementptr inbounds %struct.cpuset, ptr %call6, i32 0, i32 4
  %73 = ptrtoint ptr %effective_cpus.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %effective_cpus.i.i, align 4
  tail call void @free_cpumask_var(ptr noundef %74) #17
  %subparts_cpus.i.i = getelementptr inbounds %struct.cpuset, ptr %call6, i32 0, i32 6
  %75 = ptrtoint ptr %subparts_cpus.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %subparts_cpus.i.i, align 4
  tail call void @free_cpumask_var(ptr noundef %76) #17
  tail call void @kfree(ptr noundef nonnull %call6) #17
  br label %out_unlock

out_unlock:                                       ; preds = %free_cpuset.exit, %if.end.out_unlock_crit_edge, %is_cpuset_online.exit.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %retval2.1 = phi i32 [ %retval2.0, %free_cpuset.exit ], [ -19, %is_cpuset_online.exit.out_unlock_crit_edge ], [ -12, %if.end.out_unlock_crit_edge ], [ -19, %entry.out_unlock_crit_edge ]
  tail call void @percpu_up_write(ptr noundef nonnull @cpuset_rwsem) #17
  tail call void @cpus_read_unlock() #17
  %77 = ptrtoint ptr %of to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %of, align 4
  tail call void @kernfs_unbreak_active_protection(ptr noundef %78) #17
  tail call fastcc void @css_put(ptr noundef %call)
  %79 = load ptr, ptr @cpuset_migrate_mm_wq, align 4
  tail call void @flush_workqueue(ptr noundef %79) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval2.1)
  %tobool15.not = icmp eq i32 %retval2.1, 0
  %spec.select = select i1 %tobool15.not, i32 %nbytes, i32 %retval2.1
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sched_partition_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #17
  %partition_root_state = getelementptr inbounds %struct.cpuset, ptr %call.i, i32 0, i32 13
  %2 = ptrtoint ptr %partition_root_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %partition_root_state, align 8
  %switch.tableidx = add i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.sched_partition_show, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull %switch.load) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sched_partition_write(ptr noundef %of, ptr noundef %buf, i32 noundef %nbytes, i64 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_css(ptr noundef %of) #17
  %call.i = tail call ptr @strim(ptr noundef %buf) #17
  %call4 = tail call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(5) @.str.34) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.else

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.else:                                          ; preds = %entry
  %call5 = tail call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(7) @.str.35) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else.if.end9_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.end9:                                          ; preds = %if.else.if.end9_crit_edge, %entry.if.end9_crit_edge
  %val.0 = phi i32 [ 1, %entry.if.end9_crit_edge ], [ 0, %if.else.if.end9_crit_edge ]
  tail call fastcc void @css_get(ptr noundef %call)
  tail call void @cpus_read_lock() #17
  tail call void @percpu_down_write(ptr noundef nonnull @cpuset_rwsem) #17
  %flags.i = getelementptr inbounds %struct.cpuset, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end9.out_unlock_crit_edge, label %land.rhs.i

if.end9.out_unlock_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

land.rhs.i:                                       ; preds = %if.end9
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %is_cpuset_online.exit, label %land.rhs.i.if.end12_crit_edge

land.rhs.i.if.end12_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

is_cpuset_online.exit:                            ; preds = %land.rhs.i
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refcnt.i.i, align 4
  %and.i.i.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.i, label %is_cpuset_online.exit.if.end12_crit_edge, label %is_cpuset_online.exit.out_unlock_crit_edge

is_cpuset_online.exit.out_unlock_crit_edge:       ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

is_cpuset_online.exit.if.end12_crit_edge:         ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.end12:                                         ; preds = %is_cpuset_online.exit.if.end12_crit_edge, %land.rhs.i.if.end12_crit_edge
  %call13 = tail call fastcc i32 @update_prstate(ptr noundef %call, i32 noundef %val.0)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end12, %is_cpuset_online.exit.out_unlock_crit_edge, %if.end9.out_unlock_crit_edge
  %retval2.0 = phi i32 [ %call13, %if.end12 ], [ -19, %is_cpuset_online.exit.out_unlock_crit_edge ], [ -19, %if.end9.out_unlock_crit_edge ]
  tail call void @percpu_up_write(ptr noundef nonnull @cpuset_rwsem) #17
  tail call void @cpus_read_unlock() #17
  tail call fastcc void @css_put(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval2.0)
  %tobool15.not = icmp eq i32 %retval2.0, 0
  %spec.select = select i1 %tobool15.not, i32 %nbytes, i32 %retval2.0
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ %spec.select, %out_unlock ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_css(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_break_active_protection(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_nodemask(ptr noundef %cs, ptr noundef %trialcs, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %cs, @top_cpuset
  br i1 %cmp, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %mems_allowed = getelementptr inbounds %struct.cpuset, ptr %trialcs, i32 0, i32 3
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %mems_allowed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mems_allowed, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end
  %call.i = tail call i32 @bitmap_parselist(ptr noundef %buf, ptr noundef %mems_allowed, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %if.else.done_crit_edge, label %if.end6

if.else.done_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.end6:                                          ; preds = %if.else
  %3 = ptrtoint ptr %mems_allowed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mems_allowed, align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 3), align 8
  %neg.i.i = xor i32 %5, -1
  %and.i.i = and i32 %4, 1
  %and4.i.i = and i32 %and.i.i, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and4.i.i)
  %tobool9.not = icmp eq i32 %and4.i.i, 1
  br i1 %tobool9.not, label %if.end6.done_crit_edge, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.end6.done_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.end12:                                         ; preds = %if.end6.if.end12_crit_edge, %if.then2
  %mems_allowed13 = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 3
  %mems_allowed14 = getelementptr inbounds %struct.cpuset, ptr %trialcs, i32 0, i32 3
  %6 = ptrtoint ptr %mems_allowed13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mems_allowed13, align 4
  %8 = ptrtoint ptr %mems_allowed14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mems_allowed14, align 4
  %xor.i.i = xor i32 %9, %7
  %and3.i.i = and i32 %xor.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool16.not.not = icmp eq i32 %and3.i.i, 0
  br i1 %tobool16.not.not, label %if.end12.done_crit_edge, label %if.end18

if.end12.done_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.end18:                                         ; preds = %if.end12
  %call19 = tail call fastcc i32 @validate_change(ptr noundef %cs, ptr noundef %trialcs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.done_crit_edge, label %if.end22

if.end18.done_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.end22:                                         ; preds = %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @cpusets_insane_config_key, ptr blockaddress(@update_nodemask, %check_insane_mems_config.exit)) #17
          to label %land.lhs.true.i [label %check_insane_mems_config.exit], !srcloc !171

land.lhs.true.i:                                  ; preds = %if.end22
  %10 = ptrtoint ptr %mems_allowed14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mems_allowed14, align 4
  %and3.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i.i)
  %tobool.not.not.i.i = icmp eq i32 %and3.i.i.i.i, 0
  br i1 %tobool.not.not.i.i, label %land.lhs.true.i.check_insane_mems_config.exit_crit_edge, label %if.end.i.i

land.lhs.true.i.check_insane_mems_config.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %check_insane_mems_config.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i
  %call.i.i.i = tail call i32 @_find_first_bit_be(ptr noundef %mems_allowed14, i32 noundef 1) #17
  %tobool.not.i.i.i.i = icmp eq ptr %mems_allowed14, null
  br i1 %tobool.not.i.i.i.i, label %land.rhs.i.i.i.i, label %if.end.i.i.if.end.i.i.i.i_crit_edge, !prof !159

if.end.i.i.if.end.i.i.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1) to i32))
  %12 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i.i.i.i = icmp ult i32 %12, 2
  br i1 %cmp.i.i.i.i, label %land.rhs.i.i.i.i.movable_only_nodes.exit.i_crit_edge, label %land.rhs.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !159

land.rhs.i.i.i.i.if.end.i.i.i.i_crit_edge:        ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i.i.i

land.rhs.i.i.i.i.movable_only_nodes.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %movable_only_nodes.exit.i

if.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i.if.end.i.i.i.i_crit_edge, %if.end.i.i.if.end.i.i.i.i_crit_edge
  %call3.i.i.i.i = tail call ptr @__next_zones_zonelist(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), i32 noundef 1, ptr noundef %mems_allowed14) #17
  br label %movable_only_nodes.exit.i

movable_only_nodes.exit.i:                        ; preds = %if.end.i.i.i.i, %land.rhs.i.i.i.i.movable_only_nodes.exit.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %call3.i.i.i.i, %if.end.i.i.i.i ], [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), %land.rhs.i.i.i.i.movable_only_nodes.exit.i_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %retval.0.i.i.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %14, null
  br i1 %tobool4.not.i.i, label %if.then.i, label %movable_only_nodes.exit.i.check_insane_mems_config.exit_crit_edge

movable_only_nodes.exit.i.check_insane_mems_config.exit_crit_edge: ; preds = %movable_only_nodes.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %check_insane_mems_config.exit

if.then.i:                                        ; preds = %movable_only_nodes.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @static_key_enable(ptr noundef nonnull @cpusets_insane_config_key) #17
  %tobool.not.i.i = icmp ne ptr %mems_allowed14, null
  %cond.i.i = zext i1 %tobool.not.i.i to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %cond.i.i, ptr noundef %mems_allowed14) #22
  br label %check_insane_mems_config.exit

check_insane_mems_config.exit:                    ; preds = %if.then.i, %movable_only_nodes.exit.i.check_insane_mems_config.exit_crit_edge, %land.lhs.true.i.check_insane_mems_config.exit_crit_edge, %if.end22
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @callback_lock) #17
  %15 = ptrtoint ptr %mems_allowed14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mems_allowed14, align 8
  %17 = ptrtoint ptr %mems_allowed13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %mems_allowed13, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @callback_lock) #17
  tail call fastcc void @update_nodemasks_hier(ptr noundef %cs, ptr noundef %mems_allowed14)
  br label %done

done:                                             ; preds = %check_insane_mems_config.exit, %if.end18.done_crit_edge, %if.end12.done_crit_edge, %if.end6.done_crit_edge, %if.else.done_crit_edge, %entry.done_crit_edge
  %retval1.0 = phi i32 [ %call.i, %if.else.done_crit_edge ], [ %call19, %if.end18.done_crit_edge ], [ %call19, %check_insane_mems_config.exit ], [ -13, %entry.done_crit_edge ], [ -22, %if.end6.done_crit_edge ], [ 0, %if.end12.done_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_unbreak_active_protection(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parselist(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_nodemasks_hier(ptr noundef %cs, ptr nocapture noundef %new_mems) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef %cs) #17
  %tobool.not112 = icmp eq ptr %call, null
  br i1 %tobool.not112, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %pos_css.0113 = phi ptr [ %call50, %for.inc.for.body_crit_edge ], [ %call, %rcu_read_lock.exit.for.body_crit_edge ]
  %flags.i = getelementptr inbounds %struct.cpuset, ptr %pos_css.0113, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i80 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i80, label %for.body.for.inc_crit_edge, label %land.rhs.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.rhs.i:                                       ; preds = %for.body
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos_css.0113, i32 0, i32 7
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %is_cpuset_online.exit, label %land.rhs.i.if.then_crit_edge

land.rhs.i.if.then_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

is_cpuset_online.exit:                            ; preds = %land.rhs.i
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos_css.0113, i32 0, i32 2
  %8 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %refcnt.i.i, align 4
  %and.i.i.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.i, label %is_cpuset_online.exit.if.then_crit_edge, label %is_cpuset_online.exit.for.inc_crit_edge

is_cpuset_online.exit.for.inc_crit_edge:          ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

is_cpuset_online.exit.if.then_crit_edge:          ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %is_cpuset_online.exit.if.then_crit_edge, %land.rhs.i.if.then_crit_edge
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos_css.0113, i32 0, i32 12
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %mems_allowed = getelementptr inbounds %struct.cpuset, ptr %pos_css.0113, i32 0, i32 3
  %effective_mems = getelementptr inbounds %struct.cpuset, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %mems_allowed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mems_allowed, align 4
  %14 = ptrtoint ptr %effective_mems to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %effective_mems, align 4
  %and.i.i81 = and i32 %13, 1
  %and4.i.i = and i32 %and.i.i81, %15
  %16 = ptrtoint ptr %new_mems to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and4.i.i, ptr %new_mems, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @cpuset_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@update_nodemasks_hier, %lor.rhs.i)) #17
          to label %land.lhs.true [label %lor.rhs.i], !srcloc !171

lor.rhs.i:                                        ; preds = %if.then
  %17 = load ptr, ptr getelementptr inbounds (%struct.cgroup_subsys, ptr @cpuset_cgrp_subsys, i32 0, i32 22), align 4
  %flags.i82 = getelementptr inbounds %struct.cgroup_root, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %flags.i82 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i82, align 4
  %and.i = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool4.i.not, label %lor.rhs.i.if.end_crit_edge, label %lor.rhs.i.land.lhs.true_crit_edge

lor.rhs.i.land.lhs.true_crit_edge:                ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %lor.rhs.i.land.lhs.true_crit_edge, %if.then
  %20 = ptrtoint ptr %new_mems to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %new_mems, align 4
  %and3.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool6.not.not = icmp eq i32 %and3.i.i, 0
  br i1 %tobool6.not.not, label %if.then7, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %effective_mems to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %effective_mems, align 8
  %24 = ptrtoint ptr %new_mems to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %new_mems, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true.if.end_crit_edge, %lor.rhs.i.if.end_crit_edge
  %effective_mems9 = getelementptr inbounds %struct.cpuset, ptr %pos_css.0113, i32 0, i32 5
  %25 = ptrtoint ptr %new_mems to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %new_mems, align 4
  %27 = ptrtoint ptr %effective_mems9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %effective_mems9, align 4
  %xor.i.i = xor i32 %28, %26
  %and3.i.i83 = and i32 %xor.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i83)
  %tobool11.not.not = icmp eq i32 %and3.i.i83, 0
  br i1 %tobool11.not.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call13 = tail call ptr @css_rightmost_descendant(ptr noundef nonnull %pos_css.0113) #17
  br label %for.inc

if.end14:                                         ; preds = %if.end
  %call16 = tail call fastcc zeroext i1 @css_tryget_online(ptr noundef nonnull %pos_css.0113)
  br i1 %call16, label %if.end18, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end18:                                         ; preds = %if.end14
  %call.i84 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i84, label %if.end18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i87

if.end18.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i87:                                ; preds = %if.end18
  %call1.i85 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85)
  %tobool.not.i86 = icmp eq i32 %call1.i85, 0
  br i1 %tobool.not.i86, label %land.lhs.true.i87.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i89

land.lhs.true.i87.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i89:                               ; preds = %land.lhs.true.i87
  %.b4.i88 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i88, label %land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge, label %if.then.i90

land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i89
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i90:                                      ; preds = %land.lhs.true2.i89
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i90, %land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i87.rcu_read_unlock.exit_crit_edge, %if.end18.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %29 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i91 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i91 to ptr
  %preempt_count.i.i.i.i92 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i92, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i92, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @callback_lock) #17
  %33 = ptrtoint ptr %new_mems to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %new_mems, align 4
  %35 = ptrtoint ptr %effective_mems9 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %effective_mems9, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @callback_lock) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @cpuset_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@update_nodemasks_hier, %lor.rhs.i96)) #17
          to label %if.end40 [label %lor.rhs.i96], !srcloc !171

lor.rhs.i96:                                      ; preds = %rcu_read_unlock.exit
  %36 = load ptr, ptr getelementptr inbounds (%struct.cgroup_subsys, ptr @cpuset_cgrp_subsys, i32 0, i32 22), align 4
  %flags.i93 = getelementptr inbounds %struct.cgroup_root, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %flags.i93 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i93, align 4
  %and.i94 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %tobool4.i95.not = icmp eq i32 %and.i94, 0
  br i1 %tobool4.i95.not, label %land.rhs, label %lor.rhs.i96.if.end40_crit_edge

lor.rhs.i96.if.end40_crit_edge:                   ; preds = %lor.rhs.i96
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

land.rhs:                                         ; preds = %lor.rhs.i96
  %39 = ptrtoint ptr %mems_allowed to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mems_allowed, align 4
  %41 = ptrtoint ptr %effective_mems9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %effective_mems9, align 4
  %xor.i.i98 = xor i32 %42, %40
  %and3.i.i99 = and i32 %xor.i.i98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i99)
  %tobool24.not.not = icmp eq i32 %and3.i.i99, 0
  br i1 %tobool24.not.not, label %land.rhs.if.end40_crit_edge, label %do.end, !prof !159

land.rhs.if.end40_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1855, i32 noundef 9, ptr noundef null) #17
  br label %if.end40

if.end40:                                         ; preds = %do.end, %land.rhs.if.end40_crit_edge, %lor.rhs.i96.if.end40_crit_edge, %rcu_read_unlock.exit
  tail call fastcc void @update_tasks_nodemask(ptr noundef nonnull %pos_css.0113)
  %43 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i69 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i69 to ptr
  %preempt_count.i.i.i.i70 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i70, align 4
  %add.i.i.i71 = add i32 %46, 1
  store volatile i32 %add.i.i.i71, ptr %preempt_count.i.i.i.i70, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i72 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i72, label %if.end40.rcu_read_lock.exit79_crit_edge, label %land.lhs.true.i75

if.end40.rcu_read_lock.exit79_crit_edge:          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit79

land.lhs.true.i75:                                ; preds = %if.end40
  %call1.i73 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %tobool.not.i74 = icmp eq i32 %call1.i73, 0
  br i1 %tobool.not.i74, label %land.lhs.true.i75.rcu_read_lock.exit79_crit_edge, label %land.lhs.true2.i77

land.lhs.true.i75.rcu_read_lock.exit79_crit_edge: ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit79

land.lhs.true2.i77:                               ; preds = %land.lhs.true.i75
  %.b4.i76 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i76, label %land.lhs.true2.i77.rcu_read_lock.exit79_crit_edge, label %if.then.i78

land.lhs.true2.i77.rcu_read_lock.exit79_crit_edge: ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit79

if.then.i78:                                      ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit79

rcu_read_lock.exit79:                             ; preds = %if.then.i78, %land.lhs.true2.i77.rcu_read_lock.exit79_crit_edge, %land.lhs.true.i75.rcu_read_lock.exit79_crit_edge, %if.end40.rcu_read_lock.exit79_crit_edge
  tail call fastcc void @css_put(ptr noundef nonnull %pos_css.0113)
  br label %for.inc

for.inc:                                          ; preds = %rcu_read_lock.exit79, %if.end14.for.inc_crit_edge, %if.then12, %is_cpuset_online.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %pos_css.2 = phi ptr [ %pos_css.0113, %is_cpuset_online.exit.for.inc_crit_edge ], [ %call13, %if.then12 ], [ %pos_css.0113, %rcu_read_lock.exit79 ], [ %pos_css.0113, %if.end14.for.inc_crit_edge ], [ %pos_css.0113, %for.body.for.inc_crit_edge ]
  %call50 = tail call ptr @css_next_descendant_pre(ptr noundef %pos_css.2, ptr noundef %cs) #17
  %tobool.not = icmp eq ptr %call50, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i100 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i100, label %for.end.rcu_read_unlock.exit110_crit_edge, label %land.lhs.true.i103

for.end.rcu_read_unlock.exit110_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit110

land.lhs.true.i103:                               ; preds = %for.end
  %call1.i101 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101)
  %tobool.not.i102 = icmp eq i32 %call1.i101, 0
  br i1 %tobool.not.i102, label %land.lhs.true.i103.rcu_read_unlock.exit110_crit_edge, label %land.lhs.true2.i105

land.lhs.true.i103.rcu_read_unlock.exit110_crit_edge: ; preds = %land.lhs.true.i103
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit110

land.lhs.true2.i105:                              ; preds = %land.lhs.true.i103
  %.b4.i104 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i104, label %land.lhs.true2.i105.rcu_read_unlock.exit110_crit_edge, label %if.then.i106

land.lhs.true2.i105.rcu_read_unlock.exit110_crit_edge: ; preds = %land.lhs.true2.i105
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit110

if.then.i106:                                     ; preds = %land.lhs.true2.i105
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit110

rcu_read_unlock.exit110:                          ; preds = %if.then.i106, %land.lhs.true2.i105.rcu_read_unlock.exit110_crit_edge, %land.lhs.true.i103.rcu_read_unlock.exit110_crit_edge, %for.end.rcu_read_unlock.exit110_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %47 = tail call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i107 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i107 to ptr
  %preempt_count.i.i.i.i108 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i108, align 4
  %sub.i.i.i109 = add i32 %50, -1
  store volatile i32 %sub.i.i.i109, ptr %preempt_count.i.i.i.i108, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__next_zones_zonelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_tasks_nodemask(ptr noundef %cs) unnamed_addr #0 align 64 {
entry:
  %it = alloca %struct.css_task_iter, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %it) #17
  %0 = call ptr @memset(ptr %it, i32 255, i32 52)
  store ptr %cs, ptr @cpuset_being_rebound, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4) to i32))
  %1 = load i32, ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4), align 4
  %effective_mems7.i = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 5
  %2 = ptrtoint ptr %effective_mems7.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %effective_mems7.i, align 4
  %and.i.i8.i = and i32 %1, 1
  %and4.i.i9.i = and i32 %and.i.i8.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i9.i)
  %tobool.not10.i = icmp eq i32 %and4.i.i9.i, 0
  br i1 %tobool.not10.i, label %entry.while.body.i_crit_edge, label %entry.guarantee_online_mems.exit_crit_edge

entry.guarantee_online_mems.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %guarantee_online_mems.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %cs.addr.011.i = phi ptr [ %5, %while.body.i.while.body.i_crit_edge ], [ %cs, %entry.while.body.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cs.addr.011.i, i32 0, i32 12
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 8
  %effective_mems.i = getelementptr inbounds %struct.cpuset, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %effective_mems.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %effective_mems.i, align 4
  %and4.i.i.i = and i32 %and.i.i8.i, %7
  %tobool.not.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %tobool.not.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.guarantee_online_mems.exit_crit_edge

while.body.i.guarantee_online_mems.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %guarantee_online_mems.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

guarantee_online_mems.exit:                       ; preds = %while.body.i.guarantee_online_mems.exit_crit_edge, %entry.guarantee_online_mems.exit_crit_edge
  store i32 1, ptr @update_tasks_nodemask.newmems, align 4
  call void @css_task_iter_start(ptr noundef %cs, i32 noundef 0, ptr noundef nonnull %it) #17
  %call20 = call ptr @css_task_iter_next(ptr noundef nonnull %it) #17
  %tobool.not21 = icmp eq ptr %call20, null
  br i1 %tobool.not21, label %guarantee_online_mems.exit.while.end_crit_edge, label %while.body.lr.ph

guarantee_online_mems.exit.while.end_crit_edge:   ; preds = %guarantee_online_mems.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.lr.ph:                                 ; preds = %guarantee_online_mems.exit
  %flags.i = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 1
  %old_mems_allowed = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %call22 = phi ptr [ %call20, %while.body.lr.ph ], [ %call, %cleanup.while.body_crit_edge ]
  call fastcc void @cpuset_change_task_nodemask(ptr noundef nonnull %call22, ptr noundef nonnull @update_tasks_nodemask.newmems)
  %call1 = call ptr @get_task_mm(ptr noundef nonnull %call22) #17
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %while.body
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  %10 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @cpuset_migrate_mm(ptr noundef nonnull %call1, ptr noundef %old_mems_allowed, ptr noundef nonnull @update_tasks_nodemask.newmems)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @mmput(ptr noundef nonnull %call1) #17
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %while.body.cleanup_crit_edge
  %call = call ptr @css_task_iter_next(ptr noundef nonnull %it) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %guarantee_online_mems.exit.while.end_crit_edge
  call void @css_task_iter_end(ptr noundef nonnull %it) #17
  %old_mems_allowed9 = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 7
  %11 = load i32, ptr @update_tasks_nodemask.newmems, align 4
  %12 = ptrtoint ptr %old_mems_allowed9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %old_mems_allowed9, align 8
  store ptr null, ptr @cpuset_being_rebound, align 4
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %it) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @cpuset_read_u64(ptr noundef %css, ptr nocapture noundef readonly %cft) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.cftype, ptr %cft, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %1, label %do.body [
    i32 6, label %sw.bb
    i32 7, label %sw.bb2
    i32 8, label %sw.bb5
    i32 9, label %sw.bb8
    i32 0, label %sw.bb11
    i32 12, label %sw.bb14
    i32 13, label %sw.bb16
    i32 14, label %sw.bb19
    i32 15, label %sw.bb22
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %flags.i = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 1
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %shr.i.i = lshr i32 %4, 1
  %and1.i.i = and i32 %shr.i.i, 1
  %5 = zext i32 %and1.i.i to i64
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %flags.i36 = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 1
  %6 = ptrtoint ptr %flags.i36 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i36, align 4
  %shr.i.i37 = lshr i32 %7, 2
  %and1.i.i38 = and i32 %shr.i.i37, 1
  %8 = zext i32 %and1.i.i38 to i64
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %flags.i39 = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i39 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i39, align 4
  %shr.i.i40 = lshr i32 %10, 3
  %and1.i.i41 = and i32 %shr.i.i40, 1
  %11 = zext i32 %and1.i.i41 to i64
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %flags.i42 = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i42 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i42, align 4
  %shr.i.i43 = lshr i32 %13, 5
  %and1.i.i44 = and i32 %shr.i.i43, 1
  %14 = zext i32 %and1.i.i44 to i64
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %flags.i45 = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i45 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i45, align 4
  %shr.i.i46 = lshr i32 %16, 4
  %and1.i.i47 = and i32 %shr.i.i46, 1
  %17 = zext i32 %and1.i.i47 to i64
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %18 = load i32, ptr @cpuset_memory_pressure_enabled, align 4
  %conv15 = sext i32 %18 to i64
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %fmeter = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 8
  %lock.i = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 8, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #17
  %call.i.i = tail call i64 @ktime_get_seconds() #17
  %time.i.i = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 8, i32 2
  %19 = ptrtoint ptr %time.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %time.i.i, align 8
  %sub.i.i = sub i64 %call.i.i, %20
  %conv.i.i = trunc i64 %sub.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %cmp.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %cmp.i.i, label %sw.bb16.fmeter_getrate.exit_crit_edge, label %if.end.i.i

sw.bb16.fmeter_getrate.exit_crit_edge:            ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #19
  br label %fmeter_getrate.exit

if.end.i.i:                                       ; preds = %sw.bb16
  %21 = tail call i32 @llvm.umin.i32(i32 %conv.i.i, i32 99) #17
  %val.i.i = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %val.promoted.i.i = load i32, ptr %val.i.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.i.i
  %div26.i.i = phi i32 [ %val.promoted.i.i, %if.end.i.i ], [ %div.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %ticks.025.i.i = phi i32 [ %21, %if.end.i.i ], [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %ticks.025.i.i, -1
  %mul.i.i = mul i32 %div26.i.i, 933
  %div.i.i = sdiv i32 %mul.i.i, 1000
  %cmp4.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp4.not.i.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %time.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %call.i.i, ptr %time.i.i, align 8
  %24 = ptrtoint ptr %fmeter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fmeter, align 8
  %mul8.i.i = mul i32 %25, 67
  %div9.i.i = sdiv i32 %mul8.i.i, 1000
  %add.i.i = add nsw i32 %div9.i.i, %div.i.i
  %26 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add.i.i, ptr %val.i.i, align 4
  store i32 0, ptr %fmeter, align 8
  br label %fmeter_getrate.exit

fmeter_getrate.exit:                              ; preds = %while.cond.while.end_crit_edge.i.i, %sw.bb16.fmeter_getrate.exit_crit_edge
  %val1.i = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %val1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val1.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #17
  %conv18 = sext i32 %28 to i64
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %flags.i48 = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags.i48, align 4
  %shr.i.i49 = lshr i32 %30, 6
  %and1.i.i50 = and i32 %shr.i.i49, 1
  %31 = zext i32 %and1.i.i50 to i64
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %flags.i51 = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags.i51, align 4
  %shr.i.i52 = lshr i32 %33, 7
  %and1.i.i53 = and i32 %shr.i.i52, 1
  %34 = zext i32 %and1.i.i53 to i64
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cpuset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2577, 0\0A.popsection", ""() #17, !srcloc !192
  unreachable

cleanup:                                          ; preds = %sw.bb22, %sw.bb19, %fmeter_getrate.exit, %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb
  %retval.0 = phi i64 [ %34, %sw.bb22 ], [ %31, %sw.bb19 ], [ %conv18, %fmeter_getrate.exit ], [ %conv15, %sw.bb14 ], [ %17, %sw.bb11 ], [ %14, %sw.bb8 ], [ %11, %sw.bb5 ], [ %8, %sw.bb2 ], [ %5, %sw.bb ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuset_write_u64(ptr noundef %css, ptr nocapture noundef readonly %cft, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.cftype, ptr %cft, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  tail call void @cpus_read_lock() #17
  tail call void @percpu_down_write(ptr noundef nonnull @cpuset_rwsem) #17
  %flags.i = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %entry.out_unlock_crit_edge, label %land.rhs.i

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

land.rhs.i:                                       ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 7
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %is_cpuset_online.exit, label %land.rhs.i.if.end_crit_edge

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

is_cpuset_online.exit:                            ; preds = %land.rhs.i
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 2
  %6 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refcnt.i.i, align 4
  %and.i.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.i, label %is_cpuset_online.exit.if.end_crit_edge, label %is_cpuset_online.exit.out_unlock_crit_edge

is_cpuset_online.exit.out_unlock_crit_edge:       ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

is_cpuset_online.exit.if.end_crit_edge:           ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %is_cpuset_online.exit.if.end_crit_edge, %land.rhs.i.if.end_crit_edge
  %8 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %1, label %if.end.out_unlock_crit_edge [
    i32 6, label %sw.bb
    i32 7, label %sw.bb4
    i32 8, label %sw.bb7
    i32 9, label %sw.bb10
    i32 0, label %sw.bb13
    i32 12, label %sw.bb16
    i32 14, label %sw.bb18
    i32 15, label %sw.bb21
  ]

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %conv = trunc i64 %val to i32
  %call3 = tail call fastcc i32 @update_flag(i32 noundef 1, ptr noundef %css, i32 noundef %conv)
  br label %out_unlock

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %conv5 = trunc i64 %val to i32
  %call6 = tail call fastcc i32 @update_flag(i32 noundef 2, ptr noundef %css, i32 noundef %conv5)
  br label %out_unlock

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %conv8 = trunc i64 %val to i32
  %call9 = tail call fastcc i32 @update_flag(i32 noundef 3, ptr noundef %css, i32 noundef %conv8)
  br label %out_unlock

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %conv11 = trunc i64 %val to i32
  %call12 = tail call fastcc i32 @update_flag(i32 noundef 5, ptr noundef %css, i32 noundef %conv11)
  br label %out_unlock

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %conv14 = trunc i64 %val to i32
  %call15 = tail call fastcc i32 @update_flag(i32 noundef 4, ptr noundef %css, i32 noundef %conv14)
  br label %out_unlock

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool = icmp ne i64 %val, 0
  %lnot.ext = zext i1 %tobool to i32
  store i32 %lnot.ext, ptr @cpuset_memory_pressure_enabled, align 4
  br label %out_unlock

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %conv19 = trunc i64 %val to i32
  %call20 = tail call fastcc i32 @update_flag(i32 noundef 6, ptr noundef %css, i32 noundef %conv19)
  br label %out_unlock

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %conv22 = trunc i64 %val to i32
  %call23 = tail call fastcc i32 @update_flag(i32 noundef 7, ptr noundef %css, i32 noundef %conv22)
  br label %out_unlock

out_unlock:                                       ; preds = %sw.bb21, %sw.bb18, %sw.bb16, %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb, %if.end.out_unlock_crit_edge, %is_cpuset_online.exit.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %retval1.0 = phi i32 [ %call23, %sw.bb21 ], [ %call20, %sw.bb18 ], [ 0, %sw.bb16 ], [ %call15, %sw.bb13 ], [ %call12, %sw.bb10 ], [ %call9, %sw.bb7 ], [ %call6, %sw.bb4 ], [ %call3, %sw.bb ], [ -19, %is_cpuset_online.exit.out_unlock_crit_edge ], [ -22, %if.end.out_unlock_crit_edge ], [ -19, %entry.out_unlock_crit_edge ]
  tail call void @percpu_up_write(ptr noundef nonnull @cpuset_rwsem) #17
  tail call void @cpus_read_unlock() #17
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @cpuset_read_s64(ptr nocapture noundef readonly %css, ptr nocapture noundef readonly %cft) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.cftype, ptr %cft, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cond = icmp eq i32 %1, 11
  br i1 %cond, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %relax_domain_level = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 11
  %2 = ptrtoint ptr %relax_domain_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %relax_domain_level, align 8
  %conv = sext i32 %3 to i64
  ret i64 %conv

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cpuset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2592, 0\0A.popsection", ""() #17, !srcloc !193
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuset_write_s64(ptr noundef %css, ptr nocapture noundef readonly %cft, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.cftype, ptr %cft, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  tail call void @cpus_read_lock() #17
  tail call void @percpu_down_write(ptr noundef nonnull @cpuset_rwsem) #17
  %flags.i = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %entry.out_unlock_crit_edge, label %land.rhs.i

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

land.rhs.i:                                       ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 7
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %is_cpuset_online.exit, label %land.rhs.i.if.end_crit_edge

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

is_cpuset_online.exit:                            ; preds = %land.rhs.i
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 2
  %6 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refcnt.i.i, align 4
  %and.i.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.i, label %is_cpuset_online.exit.if.end_crit_edge, label %is_cpuset_online.exit.out_unlock_crit_edge

is_cpuset_online.exit.out_unlock_crit_edge:       ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

is_cpuset_online.exit.if.end_crit_edge:           ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %is_cpuset_online.exit.if.end_crit_edge, %land.rhs.i.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cond = icmp ne i32 %1, 11
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %val)
  %cmp.i = icmp slt i64 %val, -1
  %or.cond = or i1 %cmp.i, %cond
  br i1 %or.cond, label %if.end.out_unlock_crit_edge, label %lor.lhs.false.i

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

lor.lhs.false.i:                                  ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sched_domain_level_max to i32))
  %8 = load i32, ptr @sched_domain_level_max, align 4
  %conv.i = sext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %val)
  %cmp1.not.i = icmp sgt i64 %conv.i, %val
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.out_unlock_crit_edge

lor.lhs.false.i.out_unlock_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end.i:                                         ; preds = %lor.lhs.false.i
  %relax_domain_level.i = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 11
  %9 = ptrtoint ptr %relax_domain_level.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %relax_domain_level.i, align 8
  %conv3.i = sext i32 %10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv3.i, i64 %val)
  %cmp4.not.i = icmp eq i64 %conv3.i, %val
  br i1 %cmp4.not.i, label %if.end.i.out_unlock_crit_edge, label %if.then6.i

if.end.i.out_unlock_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.then6.i:                                       ; preds = %if.end.i
  %conv7.i = trunc i64 %val to i32
  %11 = ptrtoint ptr %relax_domain_level.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv7.i, ptr %relax_domain_level.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cpus_allowed.i = getelementptr inbounds %struct.cpuset, ptr %css, i32 0, i32 2
  %13 = ptrtoint ptr %cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpus_allowed.i, align 4
  %call.i.i.i = tail call i32 @_find_first_bit_be(ptr noundef %14, i32 noundef %12) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %12)
  %cmp4.i.i.i = icmp eq i32 %call.i.i.i, %12
  br i1 %cmp4.i.i.i, label %if.then6.i.out_unlock_crit_edge, label %land.lhs.true.i

if.then6.i.out_unlock_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

land.lhs.true.i:                                  ; preds = %if.then6.i
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i, align 4
  %17 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i7 = icmp eq i32 %17, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i.out_unlock_crit_edge, label %if.then10.i

land.lhs.true.i.out_unlock_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @rebuild_sched_domains_locked() #17
  br label %out_unlock

out_unlock:                                       ; preds = %if.then10.i, %land.lhs.true.i.out_unlock_crit_edge, %if.then6.i.out_unlock_crit_edge, %if.end.i.out_unlock_crit_edge, %lor.lhs.false.i.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %is_cpuset_online.exit.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %retval1.0 = phi i32 [ -19, %is_cpuset_online.exit.out_unlock_crit_edge ], [ -22, %if.end.out_unlock_crit_edge ], [ -22, %lor.lhs.false.i.out_unlock_crit_edge ], [ 0, %if.then6.i.out_unlock_crit_edge ], [ 0, %land.lhs.true.i.out_unlock_crit_edge ], [ 0, %if.then10.i ], [ 0, %if.end.i.out_unlock_crit_edge ], [ -19, %entry.out_unlock_crit_edge ]
  tail call void @percpu_up_write(ptr noundef nonnull @cpuset_rwsem) #17
  tail call void @cpus_read_unlock() #17
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpuset_hotplug_workfn(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  %tmp = alloca %struct.tmpmasks, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @cpuset_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@cpuset_hotplug_workfn, %lor.rhs.i)) #17
          to label %is_in_v2_mode.exit [label %lor.rhs.i], !srcloc !171

lor.rhs.i:                                        ; preds = %entry
  %0 = load ptr, ptr getelementptr inbounds (%struct.cgroup_subsys, ptr @cpuset_cgrp_subsys, i32 0, i32 22), align 4
  %flags.i = getelementptr inbounds %struct.cgroup_root, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp) #17
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp, align 4, !annotation !172
  %4 = getelementptr inbounds %struct.tmpmasks, ptr %tmp, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !172
  %6 = getelementptr inbounds %struct.tmpmasks, ptr %tmp, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !172
  br i1 %tobool4.i.not, label %lor.rhs.i.if.end_crit_edge, label %lor.rhs.i.land.lhs.true_crit_edge

lor.rhs.i.land.lhs.true_crit_edge:                ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

is_in_v2_mode.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp) #17
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp, align 4, !annotation !172
  %9 = getelementptr inbounds %struct.tmpmasks, ptr %tmp, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %9, align 4, !annotation !172
  %11 = getelementptr inbounds %struct.tmpmasks, ptr %tmp, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %11, align 4, !annotation !172
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %is_in_v2_mode.exit, %lor.rhs.i.land.lhs.true_crit_edge
  %13 = phi ptr [ %6, %lor.rhs.i.land.lhs.true_crit_edge ], [ %11, %is_in_v2_mode.exit ]
  %14 = phi ptr [ %4, %lor.rhs.i.land.lhs.true_crit_edge ], [ %9, %is_in_v2_mode.exit ]
  %call.i80 = call zeroext i1 @zalloc_cpumask_var(ptr noundef %13, i32 noundef 3264) #17
  br i1 %call.i80, label %if.end2.i, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end2.i:                                        ; preds = %land.lhs.true
  %call3.i = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %tmp, i32 noundef 3264) #17
  br i1 %call3.i, label %if.end5.i, label %if.end2.i.free_one.i_crit_edge

if.end2.i.free_one.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_one.i

if.end5.i:                                        ; preds = %if.end2.i
  %call6.i = call zeroext i1 @zalloc_cpumask_var(ptr noundef %14, i32 noundef 3264) #17
  br i1 %call6.i, label %if.end5.i.if.end_crit_edge, label %free_two.i

if.end5.i.if.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

free_two.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tmp, align 4
  call void @free_cpumask_var(ptr noundef %16) #17
  br label %free_one.i

free_one.i:                                       ; preds = %free_two.i, %if.end2.i.free_one.i_crit_edge
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %13, align 4
  call void @free_cpumask_var(ptr noundef %18) #17
  br label %if.end

if.end:                                           ; preds = %free_one.i, %if.end5.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %lor.rhs.i.if.end_crit_edge
  %19 = phi i1 [ false, %lor.rhs.i.if.end_crit_edge ], [ true, %if.end5.i.if.end_crit_edge ], [ true, %free_one.i ], [ true, %land.lhs.true.if.end_crit_edge ]
  %ptmp.0 = phi ptr [ null, %lor.rhs.i.if.end_crit_edge ], [ %tmp, %if.end5.i.if.end_crit_edge ], [ null, %free_one.i ], [ null, %land.lhs.true.if.end_crit_edge ]
  call void @percpu_down_write(ptr noundef nonnull @cpuset_rwsem) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %20, 31
  %21 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %21, 536870908
  %22 = call ptr @memcpy(ptr @cpuset_hotplug_workfn.new_cpus, ptr @__cpu_active_mask, i32 %mul.i.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4) to i32))
  %23 = load i32, ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4), align 4
  store i32 %23, ptr @cpuset_hotplug_workfn.new_mems.0, align 4
  %24 = load ptr, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 4), align 4
  %call13.i.i = call i32 @__bitmap_equal(ptr noundef %24, ptr noundef nonnull @cpuset_hotplug_workfn.new_cpus, i32 noundef %20) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool.i.not = icmp eq i32 %call13.i.i, 0
  %25 = load i32, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 5), align 8
  %26 = load i32, ptr @cpuset_hotplug_workfn.new_mems.0, align 4
  %xor.i.i82 = xor i32 %26, %25
  %and3.i.i83 = and i32 %xor.i.i82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i83)
  %tobool6.not.not = icmp eq i32 %and3.i.i83, 0
  br i1 %tobool.i.not, label %if.end.if.then15_crit_edge, label %if.end13

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then15

if.end13:                                         ; preds = %if.end
  %27 = load i32, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool11.not.not = icmp eq i32 %27, 0
  br i1 %tobool11.not.not, label %if.end27.thread, label %if.end13.if.then15_crit_edge

if.end13.if.then15_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then15

if.then15:                                        ; preds = %if.end13.if.then15_crit_edge, %if.end.if.then15_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef nonnull @callback_lock) #17
  br i1 %19, label %if.then15.if.end18_crit_edge, label %if.then17

if.then15.if.end18_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  %28 = load ptr, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i84 = add i32 %29, 31
  %30 = lshr i32 %sub.i.i84, 3
  %mul.i.i85 = and i32 %30, 536870908
  %31 = call ptr @memcpy(ptr %28, ptr @cpuset_hotplug_workfn.new_cpus, i32 %mul.i.i85)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then15.if.end18_crit_edge
  %32 = load i32, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool19.not = icmp eq i32 %32, 0
  br i1 %tobool19.not, label %if.end18.if.end27_crit_edge, label %if.else.i.i

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

if.else.i.i:                                      ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %33 = load i32, ptr @nr_cpu_ids, align 4
  %34 = load ptr, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 6), align 4
  %call.i.i = call i32 @__bitmap_subset(ptr noundef nonnull @cpuset_hotplug_workfn.new_cpus, ptr noundef %34, i32 noundef %33) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool22.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool22.not, label %if.end.i.i105, label %if.then23

if.then23:                                        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i32 0, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 12), align 4
  %35 = load ptr, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 6), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %36 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i95 = add i32 %36, 31
  %37 = lshr i32 %sub.i.i95, 3
  %mul.i.i96 = and i32 %37, 536870908
  %38 = call ptr @memset(ptr %35, i32 0, i32 %mul.i.i96)
  br label %if.end27

if.end.i.i105:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %40 = load ptr, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 6), align 4
  %call.i.i104 = call i32 @__bitmap_andnot(ptr noundef nonnull @cpuset_hotplug_workfn.new_cpus, ptr noundef nonnull @cpuset_hotplug_workfn.new_cpus, ptr noundef %40, i32 noundef %39) #17
  br label %if.end27

if.end27:                                         ; preds = %if.end.i.i105, %if.then23, %if.end18.if.end27_crit_edge
  %41 = load ptr, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 4), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %42 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i107 = add i32 %42, 31
  %43 = lshr i32 %sub.i.i107, 3
  %mul.i.i108 = and i32 %43, 536870908
  %44 = call ptr @memcpy(ptr %41, ptr @cpuset_hotplug_workfn.new_cpus, i32 %mul.i.i108)
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @callback_lock) #17
  br i1 %tobool6.not.not, label %if.end27.if.then36_crit_edge, label %if.end27.if.then29_crit_edge

if.end27.if.then29_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then29

if.end27.if.then36_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then36

if.end27.thread:                                  ; preds = %if.end13
  br i1 %tobool6.not.not, label %if.end49.thread, label %if.end27.thread.if.then29_crit_edge

if.end27.thread.if.then29_crit_edge:              ; preds = %if.end27.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then29

if.end49.thread:                                  ; preds = %if.end27.thread
  call void @__sanitizer_cov_trace_pc() #19
  call void @percpu_up_write(ptr noundef nonnull @cpuset_rwsem) #17
  br label %lor.lhs.false51

if.then29:                                        ; preds = %if.end27.thread.if.then29_crit_edge, %if.end27.if.then29_crit_edge
  %cpus_updated.0.shrunk138151 = phi i1 [ false, %if.end27.thread.if.then29_crit_edge ], [ true, %if.end27.if.then29_crit_edge ]
  call void @_raw_spin_lock_irq(ptr noundef nonnull @callback_lock) #17
  br i1 %19, label %if.then29.if.end33.thread_crit_edge, label %if.then31

if.then29.if.end33.thread_crit_edge:              ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33.thread

if.then31:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #19
  %45 = load i32, ptr @cpuset_hotplug_workfn.new_mems.0, align 4
  store i32 %45, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 3), align 8
  br label %if.end33.thread

if.end33.thread:                                  ; preds = %if.then31, %if.then29.if.end33.thread_crit_edge
  %46 = load i32, ptr @cpuset_hotplug_workfn.new_mems.0, align 4
  store i32 %46, ptr getelementptr inbounds (%struct.cpuset, ptr @top_cpuset, i32 0, i32 5), align 8
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @callback_lock) #17
  call fastcc void @update_tasks_nodemask(ptr noundef nonnull @top_cpuset)
  br label %if.then36

if.then36:                                        ; preds = %if.end33.thread, %if.end27.if.then36_crit_edge
  %cpus_updated.0.shrunk138150 = phi i1 [ %cpus_updated.0.shrunk138151, %if.end33.thread ], [ true, %if.end27.if.then36_crit_edge ]
  call void @percpu_up_write(ptr noundef nonnull @cpuset_rwsem) #17
  %47 = call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %50, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %if.then36.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then36.rcu_read_lock.exit_crit_edge:           ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then36
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then36.rcu_read_lock.exit_crit_edge
  %call37 = call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef nonnull @top_cpuset) #17
  %tobool38.not144 = icmp eq ptr %call37, null
  br i1 %tobool38.not144, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %pos_css.0145 = phi ptr [ %call48, %for.inc.for.body_crit_edge ], [ %call37, %rcu_read_lock.exit.for.body_crit_edge ]
  %flags.i109 = getelementptr inbounds %struct.cpuset, ptr %pos_css.0145, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i109 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %flags.i109, align 4
  %and1.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i110 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i110, label %for.body.for.inc_crit_edge, label %land.rhs.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.rhs.i:                                       ; preds = %for.body
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos_css.0145, i32 0, i32 7
  %53 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags.i.i, align 4
  %and.i.i111 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i111)
  %tobool.not.i.i112 = icmp eq i32 %and.i.i111, 0
  br i1 %tobool.not.i.i112, label %land.rhs.i.i, label %land.rhs.i.is_cpuset_online.exit_crit_edge

land.rhs.i.is_cpuset_online.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %is_cpuset_online.exit

land.rhs.i.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos_css.0145, i32 0, i32 2
  %55 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %refcnt.i.i, align 4
  %and.i.i.i = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp eq i32 %and.i.i.i, 0
  br label %is_cpuset_online.exit

is_cpuset_online.exit:                            ; preds = %land.rhs.i.i, %land.rhs.i.is_cpuset_online.exit_crit_edge
  %57 = phi i1 [ true, %land.rhs.i.is_cpuset_online.exit_crit_edge ], [ %tobool.i.i.i, %land.rhs.i.i ]
  %cmp = icmp ne ptr %pos_css.0145, @top_cpuset
  %58 = and i1 %cmp, %57
  br i1 %58, label %lor.lhs.false42, label %is_cpuset_online.exit.for.inc_crit_edge

is_cpuset_online.exit.for.inc_crit_edge:          ; preds = %is_cpuset_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

lor.lhs.false42:                                  ; preds = %is_cpuset_online.exit
  %call43 = call fastcc zeroext i1 @css_tryget_online(ptr noundef nonnull %pos_css.0145)
  br i1 %call43, label %if.end45, label %lor.lhs.false42.for.inc_crit_edge

lor.lhs.false42.for.inc_crit_edge:                ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end45:                                         ; preds = %lor.lhs.false42
  %call.i113 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i113, label %if.end45.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i116

if.end45.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i116:                               ; preds = %if.end45
  %call1.i114 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i114)
  %tobool.not.i115 = icmp eq i32 %call1.i114, 0
  br i1 %tobool.not.i115, label %land.lhs.true.i116.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i118

land.lhs.true.i116.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i118:                              ; preds = %land.lhs.true.i116
  %.b4.i117 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i117, label %land.lhs.true2.i118.rcu_read_unlock.exit_crit_edge, label %if.then.i119

land.lhs.true2.i118.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i118
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i119:                                     ; preds = %land.lhs.true2.i118
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i119, %land.lhs.true2.i118.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i116.rcu_read_unlock.exit_crit_edge, %if.end45.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %59 = call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i120 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i120 to ptr
  %preempt_count.i.i.i.i121 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i121, align 4
  %sub.i.i.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i121, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  call fastcc void @cpuset_hotplug_update_tasks(ptr noundef nonnull %pos_css.0145, ptr noundef %ptmp.0)
  %63 = call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i69 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i69 to ptr
  %preempt_count.i.i.i.i70 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i70, align 4
  %add.i.i.i71 = add i32 %66, 1
  store volatile i32 %add.i.i.i71, ptr %preempt_count.i.i.i.i70, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !168
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i72 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i72, label %rcu_read_unlock.exit.rcu_read_lock.exit79_crit_edge, label %land.lhs.true.i75

rcu_read_unlock.exit.rcu_read_lock.exit79_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit79

land.lhs.true.i75:                                ; preds = %rcu_read_unlock.exit
  %call1.i73 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %tobool.not.i74 = icmp eq i32 %call1.i73, 0
  br i1 %tobool.not.i74, label %land.lhs.true.i75.rcu_read_lock.exit79_crit_edge, label %land.lhs.true2.i77

land.lhs.true.i75.rcu_read_lock.exit79_crit_edge: ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit79

land.lhs.true2.i77:                               ; preds = %land.lhs.true.i75
  %.b4.i76 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i76, label %land.lhs.true2.i77.rcu_read_lock.exit79_crit_edge, label %if.then.i78

land.lhs.true2.i77.rcu_read_lock.exit79_crit_edge: ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit79

if.then.i78:                                      ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #17
  br label %rcu_read_lock.exit79

rcu_read_lock.exit79:                             ; preds = %if.then.i78, %land.lhs.true2.i77.rcu_read_lock.exit79_crit_edge, %land.lhs.true.i75.rcu_read_lock.exit79_crit_edge, %rcu_read_unlock.exit.rcu_read_lock.exit79_crit_edge
  call fastcc void @css_put(ptr noundef nonnull %pos_css.0145)
  br label %for.inc

for.inc:                                          ; preds = %rcu_read_lock.exit79, %lor.lhs.false42.for.inc_crit_edge, %is_cpuset_online.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call48 = call ptr @css_next_descendant_pre(ptr noundef nonnull %pos_css.0145, ptr noundef nonnull @top_cpuset) #17
  %tobool38.not = icmp eq ptr %call48, null
  br i1 %tobool38.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i122 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i122, label %for.end.if.end49_crit_edge, label %land.lhs.true.i125

for.end.if.end49_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

land.lhs.true.i125:                               ; preds = %for.end
  %call1.i123 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i123)
  %tobool.not.i124 = icmp eq i32 %call1.i123, 0
  br i1 %tobool.not.i124, label %land.lhs.true.i125.if.end49_crit_edge, label %land.lhs.true2.i127

land.lhs.true.i125.if.end49_crit_edge:            ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

land.lhs.true2.i127:                              ; preds = %land.lhs.true.i125
  %.b4.i126 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i126, label %land.lhs.true2.i127.if.end49_crit_edge, label %if.then.i128

land.lhs.true2.i127.if.end49_crit_edge:           ; preds = %land.lhs.true2.i127
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.then.i128:                                     ; preds = %land.lhs.true2.i127
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.22) #17
  br label %if.end49

if.end49:                                         ; preds = %if.then.i128, %land.lhs.true2.i127.if.end49_crit_edge, %land.lhs.true.i125.if.end49_crit_edge, %for.end.if.end49_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !169
  %67 = call i32 @llvm.read_register.i32(metadata !148) #17
  %and.i.i.i.i.i129 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i129 to ptr
  %preempt_count.i.i.i.i130 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i130, align 4
  %sub.i.i.i131 = add i32 %70, -1
  store volatile i32 %sub.i.i.i131, ptr %preempt_count.i.i.i.i130, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br i1 %cpus_updated.0.shrunk138150, label %if.end49.if.then53_crit_edge, label %if.end49.lor.lhs.false51_crit_edge

if.end49.lor.lhs.false51_crit_edge:               ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false51

if.end49.if.then53_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then53

lor.lhs.false51:                                  ; preds = %if.end49.lor.lhs.false51_crit_edge, %if.end49.thread
  %.b67 = load i1, ptr @force_rebuild, align 1
  br i1 %.b67, label %lor.lhs.false51.if.then53_crit_edge, label %lor.lhs.false51.if.end54_crit_edge

lor.lhs.false51.if.end54_crit_edge:               ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end54

lor.lhs.false51.if.then53_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then53

if.then53:                                        ; preds = %lor.lhs.false51.if.then53_crit_edge, %if.end49.if.then53_crit_edge
  store i1 false, ptr @force_rebuild, align 1
  call void @cpus_read_lock() #17
  call void @percpu_down_write(ptr noundef nonnull @cpuset_rwsem) #17
  call fastcc void @rebuild_sched_domains_locked() #17
  call void @percpu_up_write(ptr noundef nonnull @cpuset_rwsem) #17
  call void @cpus_read_unlock() #17
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %lor.lhs.false51.if.end54_crit_edge
  %tobool1.not.i = icmp eq ptr %ptmp.0, null
  br i1 %tobool1.not.i, label %if.end54.free_cpumasks.exit_crit_edge, label %if.then2.i

if.end54.free_cpumasks.exit_crit_edge:            ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_cpumasks.exit

if.then2.i:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  %new_cpus.i133 = getelementptr inbounds %struct.tmpmasks, ptr %ptmp.0, i32 0, i32 2
  %71 = ptrtoint ptr %new_cpus.i133 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %new_cpus.i133, align 4
  call void @free_cpumask_var(ptr noundef %72) #17
  %73 = ptrtoint ptr %ptmp.0 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ptmp.0, align 4
  call void @free_cpumask_var(ptr noundef %74) #17
  %delmask.i134 = getelementptr inbounds %struct.tmpmasks, ptr %ptmp.0, i32 0, i32 1
  %75 = ptrtoint ptr %delmask.i134 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %delmask.i134, align 4
  call void @free_cpumask_var(ptr noundef %76) #17
  br label %free_cpumasks.exit

free_cpumasks.exit:                               ; preds = %if.then2.i, %if.end54.free_cpumasks.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpuset_hotplug_update_tasks(ptr noundef %cs, ptr noundef readonly %tmp) unnamed_addr #0 align 64 {
entry:
  %it.i.i167 = alloca %struct.css_task_iter, align 4
  %it.i.i = alloca %struct.css_task_iter, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %attach_in_progress = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 9
  br label %retry

retry:                                            ; preds = %if.then13, %entry
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 3147) #17
  %0 = ptrtoint ptr %attach_in_progress to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attach_in_progress, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %retry.do.end11_crit_edge, label %if.end

retry.do.end11_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end11

if.end:                                           ; preds = %retry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #17
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #17
  %call197 = call i32 @prepare_to_wait_event(ptr noundef nonnull @cpuset_attach_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #17
  %3 = ptrtoint ptr %attach_in_progress to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %attach_in_progress, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp6198 = icmp eq i32 %4, 0
  br i1 %cmp6198, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #17
  %call = call i32 @prepare_to_wait_event(ptr noundef nonnull @cpuset_attach_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #17
  %5 = ptrtoint ptr %attach_in_progress to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %attach_in_progress, align 8
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @cpuset_attach_wq, ptr noundef nonnull %__wq_entry) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #17
  br label %do.end11

do.end11:                                         ; preds = %for.end, %retry.do.end11_crit_edge
  call void @percpu_down_write(ptr noundef nonnull @cpuset_rwsem) #17
  %7 = ptrtoint ptr %attach_in_progress to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %attach_in_progress, align 8
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #19
  call void @percpu_up_write(ptr noundef nonnull @cpuset_rwsem) #17
  br label %retry

if.end14:                                         ; preds = %do.end11
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cs, i32 0, i32 12
  %9 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i, align 8
  call fastcc void @compute_effective_cpumask(ptr noundef nonnull @cpuset_hotplug_update_tasks.new_cpus, ptr noundef %cs, ptr noundef %10)
  %mems_allowed = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 3
  %effective_mems = getelementptr inbounds %struct.cpuset, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %mems_allowed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mems_allowed, align 4
  %13 = ptrtoint ptr %effective_mems to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %effective_mems, align 4
  %and.i.i = and i32 %12, 1
  %and4.i.i = and i32 %and.i.i, %14
  store i32 %and4.i.i, ptr @cpuset_hotplug_update_tasks.new_mems, align 4
  %nr_subparts_cpus = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 12
  %15 = ptrtoint ptr %nr_subparts_cpus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_subparts_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool16.not = icmp eq i32 %16, 0
  br i1 %tobool16.not, label %if.end14.if.end19_crit_edge, label %if.end.i.i

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %subparts_cpus = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 6
  %18 = ptrtoint ptr %subparts_cpus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %subparts_cpus, align 4
  %call.i.i = call i32 @__bitmap_andnot(ptr noundef nonnull @cpuset_hotplug_update_tasks.new_cpus, ptr noundef nonnull @cpuset_hotplug_update_tasks.new_cpus, ptr noundef %19, i32 noundef %17) #17
  br label %if.end19

if.end19:                                         ; preds = %if.end.i.i, %if.end14.if.end19_crit_edge
  %tobool20.not = icmp eq ptr %tmp, null
  br i1 %tobool20.not, label %if.end19.update_tasks_crit_edge, label %lor.lhs.false

if.end19.update_tasks_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_tasks

lor.lhs.false:                                    ; preds = %if.end19
  %partition_root_state = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 13
  %20 = ptrtoint ptr %partition_root_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %partition_root_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool21.not = icmp eq i32 %21, 0
  br i1 %tobool21.not, label %lor.lhs.false.update_tasks_crit_edge, label %if.end23

lor.lhs.false.update_tasks_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_tasks

if.end23:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i = icmp slt i32 %21, 1
  br i1 %cmp.i, label %if.end23.if.end49_crit_edge, label %cpumask_empty.exit

if.end23.if.end49_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

cpumask_empty.exit:                               ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i121 = call i32 @_find_first_bit_be(ptr noundef nonnull @cpuset_hotplug_update_tasks.new_cpus, i32 noundef %22) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i121, i32 %22)
  %cmp4.i.i = icmp eq i32 %call.i.i121, %22
  br i1 %cmp4.i.i, label %cpumask_empty.exit.if.then30_crit_edge, label %lor.lhs.false27

cpumask_empty.exit.if.then30_crit_edge:           ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then30

lor.lhs.false27:                                  ; preds = %cpumask_empty.exit
  %partition_root_state28 = getelementptr inbounds %struct.cpuset, ptr %10, i32 0, i32 13
  %23 = ptrtoint ptr %partition_root_state28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %partition_root_state28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp29 = icmp eq i32 %24, -1
  br i1 %cmp29, label %lor.lhs.false27.if.then30_crit_edge, label %lor.lhs.false27.if.end49_crit_edge

lor.lhs.false27.if.end49_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

lor.lhs.false27.if.then30_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false27.if.then30_crit_edge, %cpumask_empty.exit.if.then30_crit_edge
  %25 = ptrtoint ptr %nr_subparts_cpus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_subparts_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool32.not = icmp eq i32 %26, 0
  br i1 %tobool32.not, label %if.then30.if.end36_crit_edge, label %if.then33

if.then30.if.end36_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

if.then33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #19
  call void @_raw_spin_lock_irq(ptr noundef nonnull @callback_lock) #17
  %27 = ptrtoint ptr %nr_subparts_cpus to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %nr_subparts_cpus, align 4
  %subparts_cpus35 = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 6
  %28 = ptrtoint ptr %subparts_cpus35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %subparts_cpus35, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %30 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i124 = add i32 %30, 31
  %31 = lshr i32 %sub.i.i124, 3
  %mul.i.i = and i32 %31, 536870908
  %32 = call ptr @memset(ptr %29, i32 0, i32 %mul.i.i)
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @callback_lock) #17
  call fastcc void @compute_effective_cpumask(ptr noundef nonnull @cpuset_hotplug_update_tasks.new_cpus, ptr noundef %cs, ptr noundef %10)
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.then30.if.end36_crit_edge
  %partition_root_state37 = getelementptr inbounds %struct.cpuset, ptr %10, i32 0, i32 13
  %33 = ptrtoint ptr %partition_root_state37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %partition_root_state37, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp38 = icmp eq i32 %34, -1
  br i1 %cmp38, label %if.end36.if.then41_crit_edge, label %cpumask_empty.exit135

if.end36.if.then41_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then41

cpumask_empty.exit135:                            ; preds = %if.end36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %35 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i131 = call i32 @_find_first_bit_be(ptr noundef nonnull @cpuset_hotplug_update_tasks.new_cpus, i32 noundef %35) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i131, i32 %35)
  %cmp4.i.i132 = icmp eq i32 %call.i.i131, %35
  br i1 %cmp4.i.i132, label %cpumask_empty.exit135.if.then41_crit_edge, label %cpumask_empty.exit135.if.end48_crit_edge

cpumask_empty.exit135.if.end48_crit_edge:         ; preds = %cpumask_empty.exit135
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48

cpumask_empty.exit135.if.then41_crit_edge:        ; preds = %cpumask_empty.exit135
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then41

if.then41:                                        ; preds = %cpumask_empty.exit135.if.then41_crit_edge, %if.end36.if.then41_crit_edge
  %call42 = call fastcc i32 @update_parent_subparts_cpumask(ptr noundef %cs, i32 noundef 1, ptr noundef null, ptr noundef nonnull %tmp)
  %36 = ptrtoint ptr %partition_root_state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %partition_root_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp44.not = icmp eq i32 %37, -1
  br i1 %cmp44.not, label %if.then41.if.end48_crit_edge, label %notify_partition_change.exit

if.then41.if.end48_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48

notify_partition_change.exit:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #19
  call void @_raw_spin_lock_irq(ptr noundef nonnull @callback_lock) #17
  %38 = ptrtoint ptr %partition_root_state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %partition_root_state, align 8
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @callback_lock) #17
  %partition_file.i = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 16
  call void @cgroup_file_notify(ptr noundef %partition_file.i) #17
  br label %if.end48

if.end48:                                         ; preds = %notify_partition_change.exit, %if.then41.if.end48_crit_edge, %cpumask_empty.exit135.if.end48_crit_edge
  store i1 true, ptr @force_rebuild, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %lor.lhs.false27.if.end49_crit_edge, %if.end23.if.end49_crit_edge
  %partition_root_state.i136 = getelementptr inbounds %struct.cpuset, ptr %10, i32 0, i32 13
  %39 = ptrtoint ptr %partition_root_state.i136 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %partition_root_state.i136, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i137 = icmp slt i32 %40, 1
  br i1 %cmp.i137, label %if.end49.update_tasks_crit_edge, label %land.lhs.true52

if.end49.update_tasks_crit_edge:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_tasks

land.lhs.true52:                                  ; preds = %if.end49
  %41 = ptrtoint ptr %partition_root_state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %partition_root_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp54 = icmp eq i32 %42, -1
  br i1 %cmp54, label %land.lhs.true52.land.lhs.true58_crit_edge, label %if.else.i.i

land.lhs.true52.land.lhs.true58_crit_edge:        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true58

if.else.i.i:                                      ; preds = %land.lhs.true52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %43 = load i32, ptr @nr_cpu_ids, align 4
  %subparts_cpus56 = getelementptr inbounds %struct.cpuset, ptr %10, i32 0, i32 6
  %44 = ptrtoint ptr %subparts_cpus56 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %subparts_cpus56, align 4
  %call.i.i147 = call i32 @__bitmap_intersects(ptr noundef nonnull @cpuset_hotplug_update_tasks.new_cpus, ptr noundef %45, i32 noundef %43) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i147)
  %tobool.i.not = icmp eq i32 %call.i.i147, 0
  br i1 %tobool.i.not, label %if.else.i.i.land.lhs.true58_crit_edge, label %if.else.i.i.update_tasks_crit_edge

if.else.i.i.update_tasks_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_tasks

if.else.i.i.land.lhs.true58_crit_edge:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true58

land.lhs.true58:                                  ; preds = %if.else.i.i.land.lhs.true58_crit_edge, %land.lhs.true52.land.lhs.true58_crit_edge
  %call59 = call fastcc i32 @update_parent_subparts_cpumask(ptr noundef %cs, i32 noundef 2, ptr noundef null, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true58.update_tasks_crit_edge, label %if.then61

land.lhs.true58.update_tasks_crit_edge:           ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_tasks

if.then61:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @force_rebuild, align 1
  br label %update_tasks

update_tasks:                                     ; preds = %if.then61, %land.lhs.true58.update_tasks_crit_edge, %if.else.i.i.update_tasks_crit_edge, %if.end49.update_tasks_crit_edge, %lor.lhs.false.update_tasks_crit_edge, %if.end19.update_tasks_crit_edge
  %effective_cpus = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 4
  %46 = ptrtoint ptr %effective_cpus to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %effective_cpus, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %48 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i = call i32 @__bitmap_equal(ptr noundef nonnull @cpuset_hotplug_update_tasks.new_cpus, ptr noundef %47, i32 noundef %48) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool.i158.not = icmp eq i32 %call13.i.i, 0
  %effective_mems64 = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 5
  %49 = load i32, ptr @cpuset_hotplug_update_tasks.new_mems, align 4
  %50 = ptrtoint ptr %effective_mems64 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %effective_mems64, align 4
  %xor.i.i159 = xor i32 %51, %49
  %and3.i.i160 = and i32 %xor.i.i159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i160)
  %tobool66.not.not = icmp eq i32 %and3.i.i160, 0
  br i1 %tobool66.not.not, label %update_tasks.if.end71_crit_edge, label %if.then70

update_tasks.if.end71_crit_edge:                  ; preds = %update_tasks
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end71

if.then70:                                        ; preds = %update_tasks
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @cpusets_insane_config_key, ptr blockaddress(@cpuset_hotplug_update_tasks, %if.end71)) #17
          to label %land.lhs.true.i [label %if.end71], !srcloc !171

land.lhs.true.i:                                  ; preds = %if.then70
  %52 = load i32, ptr @cpuset_hotplug_update_tasks.new_mems, align 4
  %and3.i.i.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i.i)
  %tobool.not.not.i.i = icmp eq i32 %and3.i.i.i.i, 0
  br i1 %tobool.not.not.i.i, label %land.lhs.true.i.if.end71_crit_edge, label %if.end.i.i161

land.lhs.true.i.if.end71_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end71

if.end.i.i161:                                    ; preds = %land.lhs.true.i
  %call.i.i.i = call i32 @_find_first_bit_be(ptr noundef nonnull @cpuset_hotplug_update_tasks.new_mems, i32 noundef 1) #17
  %call3.i.i.i.i = call ptr @__next_zones_zonelist(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), i32 noundef 1, ptr noundef nonnull @cpuset_hotplug_update_tasks.new_mems) #17
  %53 = ptrtoint ptr %call3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call3.i.i.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %54, null
  br i1 %tobool4.not.i.i, label %if.then.i162, label %if.end.i.i161.if.end71_crit_edge

if.end.i.i161.if.end71_crit_edge:                 ; preds = %if.end.i.i161
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end71

if.then.i162:                                     ; preds = %if.end.i.i161
  call void @__sanitizer_cov_trace_pc() #19
  call void @static_key_enable(ptr noundef nonnull @cpusets_insane_config_key) #17
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef 1, ptr noundef nonnull @cpuset_hotplug_update_tasks.new_mems) #22
  br label %if.end71

if.end71:                                         ; preds = %if.then.i162, %if.end.i.i161.if.end71_crit_edge, %land.lhs.true.i.if.end71_crit_edge, %if.then70, %update_tasks.if.end71_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @cpuset_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@cpuset_hotplug_update_tasks, %lor.rhs.i)) #17
          to label %cpumask_empty.exit.i [label %lor.rhs.i], !srcloc !171

lor.rhs.i:                                        ; preds = %if.end71
  %55 = load ptr, ptr getelementptr inbounds (%struct.cgroup_subsys, ptr @cpuset_cgrp_subsys, i32 0, i32 22), align 4
  %flags.i = getelementptr inbounds %struct.cgroup_root, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %57, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool4.i.not, label %if.else, label %lor.rhs.i.cpumask_empty.exit.i_crit_edge

lor.rhs.i.cpumask_empty.exit.i_crit_edge:         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpumask_empty.exit.i

cpumask_empty.exit.i:                             ; preds = %lor.rhs.i.cpumask_empty.exit.i_crit_edge, %if.end71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %58 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i163 = call i32 @_find_first_bit_be(ptr noundef nonnull @cpuset_hotplug_update_tasks.new_cpus, i32 noundef %58) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i163, i32 %58)
  %cmp4.i.i.i = icmp eq i32 %call.i.i.i163, %58
  br i1 %cmp4.i.i.i, label %if.then.i164, label %cpumask_empty.exit.i.if.end.i_crit_edge

cpumask_empty.exit.i.if.end.i_crit_edge:          ; preds = %cpumask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i164:                                     ; preds = %cpumask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %59 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %parent.i, align 8
  %effective_cpus.i = getelementptr inbounds %struct.cpuset, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %effective_cpus.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %effective_cpus.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %63 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i1.i = add i32 %63, 31
  %64 = lshr i32 %sub.i.i1.i, 3
  %mul.i.i.i = and i32 %64, 536870908
  %65 = call ptr @memcpy(ptr @cpuset_hotplug_update_tasks.new_cpus, ptr %62, i32 %mul.i.i.i)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i164, %cpumask_empty.exit.i.if.end.i_crit_edge
  %66 = load i32, ptr @cpuset_hotplug_update_tasks.new_mems, align 4
  %and3.i.i2.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i2.i)
  %tobool.not.not.i = icmp eq i32 %and3.i.i2.i, 0
  br i1 %tobool.not.not.i, label %if.then4.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %67 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %parent.i, align 8
  %effective_mems.i = getelementptr inbounds %struct.cpuset, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %effective_mems.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %effective_mems.i, align 8
  store i32 %70, ptr @cpuset_hotplug_update_tasks.new_mems, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef nonnull @callback_lock) #17
  %71 = ptrtoint ptr %effective_cpus to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %effective_cpus, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %73 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i4.i = add i32 %73, 31
  %74 = lshr i32 %sub.i.i4.i, 3
  %mul.i.i5.i = and i32 %74, 536870908
  %75 = call ptr @memcpy(ptr %72, ptr @cpuset_hotplug_update_tasks.new_cpus, i32 %mul.i.i5.i)
  %76 = load i32, ptr @cpuset_hotplug_update_tasks.new_mems, align 4
  %77 = ptrtoint ptr %effective_mems64 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %effective_mems64, align 8
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @callback_lock) #17
  br i1 %tobool.i158.not, label %if.then10.i, label %if.end6.i.if.end11.i_crit_edge

if.end6.i.if.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %it.i.i) #17
  %78 = call ptr @memset(ptr %it.i.i, i32 255, i32 52)
  call void @css_task_iter_start(ptr noundef %cs, i32 noundef 0, ptr noundef nonnull %it.i.i) #17
  %call3.i.i = call ptr @css_task_iter_next(ptr noundef nonnull %it.i.i) #17
  %tobool.not4.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not4.i.i, label %if.then10.i.update_tasks_cpumask.exit.i_crit_edge, label %if.then10.i.while.body.i.i_crit_edge

if.then10.i.while.body.i.i_crit_edge:             ; preds = %if.then10.i
  br label %while.body.i.i

if.then10.i.update_tasks_cpumask.exit.i_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_tasks_cpumask.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then10.i.while.body.i.i_crit_edge
  %call5.i.i = phi ptr [ %call.i.i165, %while.body.i.i.while.body.i.i_crit_edge ], [ %call3.i.i, %if.then10.i.while.body.i.i_crit_edge ]
  %79 = ptrtoint ptr %effective_cpus to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %effective_cpus, align 4
  %call1.i.i = call i32 @set_cpus_allowed_ptr(ptr noundef nonnull %call5.i.i, ptr noundef %80) #17
  %call.i.i165 = call ptr @css_task_iter_next(ptr noundef nonnull %it.i.i) #17
  %tobool.not.i.i166 = icmp eq ptr %call.i.i165, null
  br i1 %tobool.not.i.i166, label %while.body.i.i.update_tasks_cpumask.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i

while.body.i.i.update_tasks_cpumask.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_tasks_cpumask.exit.i

update_tasks_cpumask.exit.i:                      ; preds = %while.body.i.i.update_tasks_cpumask.exit.i_crit_edge, %if.then10.i.update_tasks_cpumask.exit.i_crit_edge
  call void @css_task_iter_end(ptr noundef nonnull %it.i.i) #17
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %it.i.i) #17
  br label %if.end11.i

if.end11.i:                                       ; preds = %update_tasks_cpumask.exit.i, %if.end6.i.if.end11.i_crit_edge
  br i1 %tobool66.not.not, label %if.end11.i.if.end78_crit_edge, label %if.then13.i

if.end11.i.if.end78_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end78

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @update_tasks_nodemask(ptr noundef %cs) #17
  br label %if.end78

if.else:                                          ; preds = %lor.rhs.i
  call void @_raw_spin_lock_irq(ptr noundef nonnull @callback_lock) #17
  %cpus_allowed.i = getelementptr inbounds %struct.cpuset, ptr %cs, i32 0, i32 2
  %81 = ptrtoint ptr %cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cpus_allowed.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %83 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i168 = add i32 %83, 31
  %84 = lshr i32 %sub.i.i.i168, 3
  %mul.i.i.i169 = and i32 %84, 536870908
  %85 = call ptr @memcpy(ptr %82, ptr @cpuset_hotplug_update_tasks.new_cpus, i32 %mul.i.i.i169)
  %86 = ptrtoint ptr %effective_cpus to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %effective_cpus, align 4
  %88 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i1.i171 = add i32 %88, 31
  %89 = lshr i32 %sub.i.i1.i171, 3
  %mul.i.i2.i = and i32 %89, 536870908
  %90 = call ptr @memcpy(ptr %87, ptr @cpuset_hotplug_update_tasks.new_cpus, i32 %mul.i.i2.i)
  %91 = load i32, ptr @cpuset_hotplug_update_tasks.new_mems, align 4
  %92 = ptrtoint ptr %mems_allowed to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %mems_allowed, align 8
  %93 = ptrtoint ptr %effective_mems64 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %91, ptr %effective_mems64, align 8
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @callback_lock) #17
  br i1 %tobool.i158.not, label %cpumask_empty.exit.i181, label %if.else.if.end.i191_crit_edge

if.else.if.end.i191_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i191

cpumask_empty.exit.i181:                          ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %94 = load i32, ptr @nr_cpu_ids, align 4
  %95 = ptrtoint ptr %cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cpus_allowed.i, align 4
  %call.i.i.i179 = call i32 @_find_first_bit_be(ptr noundef %96, i32 noundef %94) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i179, i32 %94)
  %cmp4.i.i.i180 = icmp eq i32 %call.i.i.i179, %94
  br i1 %cmp4.i.i.i180, label %cpumask_empty.exit.i181.if.end.i191_crit_edge, label %if.then.i184

cpumask_empty.exit.i181.if.end.i191_crit_edge:    ; preds = %cpumask_empty.exit.i181
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i191

if.then.i184:                                     ; preds = %cpumask_empty.exit.i181
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %it.i.i167) #17
  %97 = call ptr @memset(ptr %it.i.i167, i32 255, i32 52)
  call void @css_task_iter_start(ptr noundef %cs, i32 noundef 0, ptr noundef nonnull %it.i.i167) #17
  %call3.i.i182 = call ptr @css_task_iter_next(ptr noundef nonnull %it.i.i167) #17
  %tobool.not4.i.i183 = icmp eq ptr %call3.i.i182, null
  br i1 %tobool.not4.i.i183, label %if.then.i184.update_tasks_cpumask.exit.i190_crit_edge, label %if.then.i184.while.body.i.i189_crit_edge

if.then.i184.while.body.i.i189_crit_edge:         ; preds = %if.then.i184
  br label %while.body.i.i189

if.then.i184.update_tasks_cpumask.exit.i190_crit_edge: ; preds = %if.then.i184
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_tasks_cpumask.exit.i190

while.body.i.i189:                                ; preds = %while.body.i.i189.while.body.i.i189_crit_edge, %if.then.i184.while.body.i.i189_crit_edge
  %call5.i.i185 = phi ptr [ %call.i.i187, %while.body.i.i189.while.body.i.i189_crit_edge ], [ %call3.i.i182, %if.then.i184.while.body.i.i189_crit_edge ]
  %98 = ptrtoint ptr %effective_cpus to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %effective_cpus, align 4
  %call1.i.i186 = call i32 @set_cpus_allowed_ptr(ptr noundef nonnull %call5.i.i185, ptr noundef %99) #17
  %call.i.i187 = call ptr @css_task_iter_next(ptr noundef nonnull %it.i.i167) #17
  %tobool.not.i.i188 = icmp eq ptr %call.i.i187, null
  br i1 %tobool.not.i.i188, label %while.body.i.i189.update_tasks_cpumask.exit.i190_crit_edge, label %while.body.i.i189.while.body.i.i189_crit_edge

while.body.i.i189.while.body.i.i189_crit_edge:    ; preds = %while.body.i.i189
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i189

while.body.i.i189.update_tasks_cpumask.exit.i190_crit_edge: ; preds = %while.body.i.i189
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_tasks_cpumask.exit.i190

update_tasks_cpumask.exit.i190:                   ; preds = %while.body.i.i189.update_tasks_cpumask.exit.i190_crit_edge, %if.then.i184.update_tasks_cpumask.exit.i190_crit_edge
  call void @css_task_iter_end(ptr noundef nonnull %it.i.i167) #17
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %it.i.i167) #17
  br label %if.end.i191

if.end.i191:                                      ; preds = %update_tasks_cpumask.exit.i190, %cpumask_empty.exit.i181.if.end.i191_crit_edge, %if.else.if.end.i191_crit_edge
  br i1 %tobool66.not.not, label %if.end.i191.cpumask_empty.exit15.i_crit_edge, label %land.lhs.true4.i

if.end.i191.cpumask_empty.exit15.i_crit_edge:     ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpumask_empty.exit15.i

land.lhs.true4.i:                                 ; preds = %if.end.i191
  %100 = ptrtoint ptr %mems_allowed to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mems_allowed, align 4
  %and3.i.i4.i = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i4.i)
  %tobool7.not.not.i = icmp eq i32 %and3.i.i4.i, 0
  br i1 %tobool7.not.not.i, label %land.lhs.true4.i.cpumask_empty.exit15.i_crit_edge, label %if.then8.i

land.lhs.true4.i.cpumask_empty.exit15.i_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpumask_empty.exit15.i

if.then8.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @update_tasks_nodemask(ptr noundef %cs) #17
  br label %cpumask_empty.exit15.i

cpumask_empty.exit15.i:                           ; preds = %if.then8.i, %land.lhs.true4.i.cpumask_empty.exit15.i_crit_edge, %if.end.i191.cpumask_empty.exit15.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %102 = load i32, ptr @nr_cpu_ids, align 4
  %103 = ptrtoint ptr %cpus_allowed.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cpus_allowed.i, align 4
  %call.i.i11.i = call i32 @_find_first_bit_be(ptr noundef %104, i32 noundef %102) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i11.i, i32 %102)
  %cmp4.i.i12.i = icmp eq i32 %call.i.i11.i, %102
  br i1 %cmp4.i.i12.i, label %if.then17.critedge.i, label %lor.rhs.i192

lor.rhs.i192:                                     ; preds = %cpumask_empty.exit15.i
  %105 = ptrtoint ptr %mems_allowed to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mems_allowed, align 4
  %and3.i.i16.i = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i16.i)
  %tobool14.not.not.i = icmp eq i32 %and3.i.i16.i, 0
  call void @percpu_up_write(ptr noundef nonnull @cpuset_rwsem) #17
  br i1 %tobool14.not.not.i, label %lor.rhs.i192.while.cond.i.i.preheader_crit_edge, label %lor.rhs.i192.hotplug_update_tasks_legacy.exit_crit_edge

lor.rhs.i192.hotplug_update_tasks_legacy.exit_crit_edge: ; preds = %lor.rhs.i192
  call void @__sanitizer_cov_trace_pc() #19
  br label %hotplug_update_tasks_legacy.exit

lor.rhs.i192.while.cond.i.i.preheader_crit_edge:  ; preds = %lor.rhs.i192
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.i.i.preheader

if.then17.critedge.i:                             ; preds = %cpumask_empty.exit15.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @percpu_up_write(ptr noundef nonnull @cpuset_rwsem) #17
  br label %while.cond.i.i.preheader

while.cond.i.i.preheader:                         ; preds = %if.then17.critedge.i, %lor.rhs.i192.while.cond.i.i.preheader_crit_edge
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.backedge, %while.cond.i.i.preheader
  %cs.pn.i.i = phi ptr [ %cs, %while.cond.i.i.preheader ], [ %parent.0.i.i, %while.cond.i.i.backedge ]
  %parent.0.in.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cs.pn.i.i, i32 0, i32 12
  %107 = ptrtoint ptr %parent.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %parent.0.i.i = load ptr, ptr %parent.0.in.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %108 = load i32, ptr @nr_cpu_ids, align 4
  %cpus_allowed.i.i = getelementptr inbounds %struct.cpuset, ptr %parent.0.i.i, i32 0, i32 2
  %109 = ptrtoint ptr %cpus_allowed.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cpus_allowed.i.i, align 4
  %call.i.i.i.i = call i32 @_find_first_bit_be(ptr noundef %110, i32 noundef %108) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i.i, i32 %108)
  %cmp4.i.i.i.i = icmp eq i32 %call.i.i.i.i, %108
  br i1 %cmp4.i.i.i.i, label %while.cond.i.i.while.cond.i.i.backedge_crit_edge, label %lor.rhs.i.i

while.cond.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.i.i.backedge

lor.rhs.i.i:                                      ; preds = %while.cond.i.i
  %mems_allowed.i.i = getelementptr inbounds %struct.cpuset, ptr %parent.0.i.i, i32 0, i32 3
  %111 = ptrtoint ptr %mems_allowed.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %mems_allowed.i.i, align 4
  %and3.i.i21.i.i = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i21.i.i)
  %tobool.not.not.i.i194 = icmp eq i32 %and3.i.i21.i.i, 0
  br i1 %tobool.not.not.i.i194, label %lor.rhs.i.i.while.cond.i.i.backedge_crit_edge, label %while.end.i.i

lor.rhs.i.i.while.cond.i.i.backedge_crit_edge:    ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.i.i.backedge

while.cond.i.i.backedge:                          ; preds = %lor.rhs.i.i.while.cond.i.i.backedge_crit_edge, %while.cond.i.i.while.cond.i.i.backedge_crit_edge
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %lor.rhs.i.i
  %113 = ptrtoint ptr %parent.0.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %parent.0.i.i, align 8
  %115 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cs, align 8
  %call6.i.i = call i32 @cgroup_transfer_tasks(ptr noundef %114, ptr noundef %116) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %while.end.i.i.hotplug_update_tasks_legacy.exit_crit_edge, label %do.end.i.i

while.end.i.i.hotplug_update_tasks_legacy.exit_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %hotplug_update_tasks_legacy.exit

do.end.i.i:                                       ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #22
  %117 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cs, align 8
  %kn.i.i.i = getelementptr inbounds %struct.cgroup, ptr %118, i32 0, i32 11
  %119 = ptrtoint ptr %kn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %kn.i.i.i, align 8
  call void @pr_cont_kernfs_name(ptr noundef %120) #17
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #22
  br label %hotplug_update_tasks_legacy.exit

hotplug_update_tasks_legacy.exit:                 ; preds = %do.end.i.i, %while.end.i.i.hotplug_update_tasks_legacy.exit_crit_edge, %lor.rhs.i192.hotplug_update_tasks_legacy.exit_crit_edge
  call void @percpu_down_write(ptr noundef nonnull @cpuset_rwsem) #17
  br label %if.end78

if.end78:                                         ; preds = %hotplug_update_tasks_legacy.exit, %if.then13.i, %if.end11.i.if.end78_crit_edge
  call void @percpu_up_write(ptr noundef nonnull @cpuset_rwsem) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_transfer_tasks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__next_node_in(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pr_cont_kernfs_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind readonly }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { cold nounwind }
attributes #23 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !50, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !92, !93, !95, !97, !99, !101, !102, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !125, !126, !128, !130, !132, !134, !136, !137, !138, !139, !141, !142, !143, !145, !147}
!llvm.named.register.sp = !{!148}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !{ptr @cpusets_pre_enable_key, !1, !"cpusets_pre_enable_key", i1 false, i1 false}
!1 = !{!"../kernel/cgroup/cpuset.c", i32 69, i32 1}
!2 = !{ptr @cpusets_enabled_key, !3, !"cpusets_enabled_key", i1 false, i1 false}
!3 = !{!"../kernel/cgroup/cpuset.c", i32 70, i32 1}
!4 = !{ptr @cpusets_insane_config_key, !5, !"cpusets_insane_config_key", i1 false, i1 false}
!5 = !{!"../kernel/cgroup/cpuset.c", i32 77, i32 1}
!6 = !{ptr @cpuset_cgrp_subsys, !7, !"cpuset_cgrp_subsys", i1 false, i1 false}
!7 = !{!"../kernel/cgroup/cpuset.c", i32 2991, i32 22}
!8 = !{ptr @cpuset_init.rwsem_key, !9, !"rwsem_key", i1 false, i1 false}
!9 = !{!"../kernel/cgroup/cpuset.c", i32 3016, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/cgroup/cpuset.c", i32 3402, i32 25}
!13 = !{ptr @__ksymtab_cpuset_mem_spread_node, !14, !"__ksymtab_cpuset_mem_spread_node", i1 false, i1 false}
!14 = !{!"../kernel/cgroup/cpuset.c", i32 3651, i32 1}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../kernel/cgroup/cpuset.c", i32 3683, i32 2}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cpuset_print_current_mems_allowed._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @cpuset_print_current_mems_allowed._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../kernel/cgroup/cpuset.c", i32 3685, i32 2}
!23 = !{ptr @cpuset_print_current_mems_allowed._entry.5, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @cpuset_print_current_mems_allowed._entry_ptr.7, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/cgroup/cpuset.c", i32 3767, i32 16}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/cgroup/cpuset.c", i32 3769, i32 16}
!29 = !{ptr @__pcpu_unique___percpu_rwsem_rc_cpuset_rwsem, !30, !"__pcpu_unique___percpu_rwsem_rc_cpuset_rwsem", i1 false, i1 false}
!30 = !{!"../kernel/cgroup/cpuset.c", i32 358, i32 1}
!31 = !{ptr @__percpu_rwsem_rc_cpuset_rwsem, !30, !"__percpu_rwsem_rc_cpuset_rwsem", i1 false, i1 false}
!32 = !{ptr @cpuset_migrate_mm_wq, !33, !"cpuset_migrate_mm_wq", i1 false, i1 false}
!33 = !{!"../kernel/cgroup/cpuset.c", i32 372, i32 33}
!34 = !{ptr @cpuset_being_rebound, !35, !"cpuset_being_rebound", i1 false, i1 false}
!35 = !{!"../kernel/cgroup/cpuset.c", i32 1749, i32 14}
!36 = !{ptr @cpus_attach, !37, !"cpus_attach", i1 false, i1 false}
!37 = !{!"../kernel/cgroup/cpuset.c", i32 2277, i32 22}
!38 = distinct !{null, !39, !"force_rebuild", i1 false, i1 false}
!39 = !{!"../kernel/cgroup/cpuset.c", i32 3123, i32 13}
!40 = !{ptr @cpuset_memory_pressure_enabled, !41, !"cpuset_memory_pressure_enabled", i1 false, i1 false}
!41 = !{!"../kernel/cgroup/cpuset.c", i32 3697, i32 5}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!46 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @cpuset_rwsem, !30, !"cpuset_rwsem", i1 false, i1 false}
!52 = !{ptr @generate_sched_domains.warnings, !53, !"warnings", i1 false, i1 false}
!53 = !{!"../kernel/cgroup/cpuset.c", i32 938, i32 15}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../kernel/cgroup/cpuset.c", i32 940, i32 5}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @generate_sched_domains._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @generate_sched_domains._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!61 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/cgroup.h", i32 494, i32 9}
!65 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!69 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../include/linux/percpu-refcount.h", i32 280, i32 2}
!72 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../kernel/cgroup/cpuset.c", i32 1417, i32 4}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../kernel/cgroup/cpuset.c", i32 1446, i32 5}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../kernel/cgroup/cpuset.c", i32 603, i32 2}
!79 = !{ptr @cpuset_attach_old_cs, !80, !"cpuset_attach_old_cs", i1 false, i1 false}
!80 = !{!"../kernel/cgroup/cpuset.c", i32 2219, i32 23}
!81 = !{ptr @cpuset_attach.cpuset_attach_nodemask_to, !82, !"cpuset_attach_nodemask_to", i1 false, i1 false}
!82 = !{!"../kernel/cgroup/cpuset.c", i32 2282, i32 20}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../kernel/cgroup/cpuset.c", i32 2306, i32 3}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/seqlock.h", i32 277, i32 1}
!87 = !{ptr @cpuset_migrate_mm.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../kernel/cgroup/cpuset.c", i32 1709, i32 3}
!89 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../kernel/cgroup/cpuset.c", i32 380, i32 8}
!92 = !{ptr @cpuset_attach_wq, !91, !"cpuset_attach_wq", i1 false, i1 false}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../include/linux/cgroup.h", i32 538, i32 9}
!95 = !{ptr @dfl_files, !96, !"dfl_files", i1 false, i1 false}
!96 = !{!"../kernel/cgroup/cpuset.c", i32 2760, i32 22}
!97 = !{ptr @.str.28, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../kernel/cgroup/cpuset.c", i32 2531, i32 18}
!99 = !{ptr @.str.29, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../kernel/cgroup/cpuset.c", i32 387, i32 3}
!101 = !{ptr @.str.30, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @check_insane_mems_config._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @check_insane_mems_config._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @update_tasks_nodemask.newmems, !105, !"newmems", i1 false, i1 false}
!105 = !{!"../kernel/cgroup/cpuset.c", i32 1761, i32 20}
!106 = !{ptr @.str.31, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../kernel/cgroup/cpuset.c", i32 2605, i32 17}
!108 = !{ptr @.str.32, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../kernel/cgroup/cpuset.c", i32 2608, i32 17}
!110 = !{ptr @.str.33, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../kernel/cgroup/cpuset.c", i32 2611, i32 17}
!112 = !{ptr @.str.34, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../kernel/cgroup/cpuset.c", i32 2629, i32 19}
!114 = !{ptr @.str.35, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../kernel/cgroup/cpuset.c", i32 2631, i32 24}
!116 = !{ptr @legacy_files, !117, !"legacy_files", i1 false, i1 false}
!117 = !{!"../kernel/cgroup/cpuset.c", i32 2654, i32 22}
!118 = !{ptr @top_cpuset, !119, !"top_cpuset", i1 false, i1 false}
!119 = !{!"../kernel/cgroup/cpuset.c", i32 286, i32 22}
!120 = !{ptr @fmeter_init.__key, !121, !"__key", i1 false, i1 false}
!121 = !{!"../kernel/cgroup/cpuset.c", i32 2174, i32 2}
!122 = !{ptr @.str.36, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.37, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../kernel/cgroup/cpuset.c", i32 378, i32 8}
!125 = !{ptr @cpuset_hotplug_work, !124, !"cpuset_hotplug_work", i1 false, i1 false}
!126 = !{ptr @cpuset_hotplug_workfn.new_cpus, !127, !"new_cpus", i1 false, i1 false}
!127 = !{!"../kernel/cgroup/cpuset.c", i32 3258, i32 19}
!128 = distinct !{null, !129, !"new_mems", i1 false, i1 false}
!129 = !{!"../kernel/cgroup/cpuset.c", i32 3259, i32 20}
!130 = !{ptr @cpuset_hotplug_update_tasks.new_cpus, !131, !"new_cpus", i1 false, i1 false}
!131 = !{!"../kernel/cgroup/cpuset.c", i32 3141, i32 19}
!132 = !{ptr @cpuset_hotplug_update_tasks.new_mems, !133, !"new_mems", i1 false, i1 false}
!133 = !{!"../kernel/cgroup/cpuset.c", i32 3142, i32 20}
!134 = !{ptr @.str.38, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../kernel/cgroup/cpuset.c", i32 3057, i32 3}
!136 = !{ptr @.str.39, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @remove_tasks_in_empty_cpuset._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @remove_tasks_in_empty_cpuset._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.41, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../kernel/cgroup/cpuset.c", i32 3059, i32 3}
!141 = !{ptr @remove_tasks_in_empty_cpuset._entry.40, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @remove_tasks_in_empty_cpuset._entry_ptr.42, !140, !"_entry_ptr", i1 false, i1 false}
!143 = distinct !{null, !144, !"cpuset_track_online_nodes_nb", i1 false, i1 false}
!144 = !{!"../kernel/cgroup/cpuset.c", i32 3381, i32 30}
!145 = !{ptr @.str.43, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../kernel/cgroup/cpuset.c", i32 370, i32 8}
!147 = !{ptr @callback_lock, !146, !"callback_lock", i1 false, i1 false}
!148 = !{!"sp"}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"min_enum_size", i32 4}
!151 = !{i32 8, !"branch-target-enforcement", i32 0}
!152 = !{i32 8, !"sign-return-address", i32 0}
!153 = !{i32 8, !"sign-return-address-all", i32 0}
!154 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!158 = !{i64 2153452064}
!159 = !{!"branch_weights", i32 2000, i32 1}
!160 = !{i64 975261, i64 975322}
!161 = !{i64 977993}
!162 = !{!"branch_weights", i32 1, i32 2000}
!163 = !{i64 978278}
!164 = !{i64 2153460914}
!165 = !{i64 2153470868}
!166 = !{i64 2153480363}
!167 = !{i64 2153489840}
!168 = !{i64 2149408517}
!169 = !{i64 2149408783}
!170 = !{i64 2155230856, i64 2155231343, i64 2155230893, i64 2155230949, i64 2155230983, i64 2155231007, i64 2155231048, i64 2155231069, i64 2155231097, i64 2155231131}
!171 = !{i64 2148394396, i64 2148394401, i64 2148394414, i64 2148394458, i64 2148394492, i64 2148394513}
!172 = !{!"auto-init"}
!173 = !{i64 2155269936, i64 2155270424, i64 2155269973, i64 2155270029, i64 2155270063, i64 2155270087, i64 2155270128, i64 2155270149, i64 2155270177, i64 2155270211}
!174 = !{i64 2155271967, i64 2155272455, i64 2155272004, i64 2155272060, i64 2155272094, i64 2155272118, i64 2155272159, i64 2155272180, i64 2155272208, i64 2155272242}
!175 = !{i64 2155274002, i64 2155274490, i64 2155274039, i64 2155274095, i64 2155274129, i64 2155274153, i64 2155274194, i64 2155274215, i64 2155274243, i64 2155274277}
!176 = !{i64 2155276037, i64 2155276525, i64 2155276074, i64 2155276130, i64 2155276164, i64 2155276188, i64 2155276229, i64 2155276250, i64 2155276278, i64 2155276312}
!177 = !{i64 2155278348, i64 2155278836, i64 2155278385, i64 2155278441, i64 2155278475, i64 2155278499, i64 2155278540, i64 2155278561, i64 2155278589, i64 2155278623}
!178 = !{i64 2155285912, i64 2155286400, i64 2155285949, i64 2155286005, i64 2155286039, i64 2155286063, i64 2155286104, i64 2155286125, i64 2155286153, i64 2155286187}
!179 = !{i64 2148580422}
!180 = !{i64 1067022, i64 1067047, i64 1067069, i64 1067085, i64 1067097, i64 1067117, i64 1067141, i64 1067157, i64 1067169}
!181 = !{i64 2148580610}
!182 = !{i64 2154939013}
!183 = !{i64 2154938855}
!184 = !{i64 2148669455}
!185 = !{i64 2148584188, i64 2148584220, i64 2148584249, i64 2148584283, i64 2148584314, i64 2148584337}
!186 = !{i64 2148669684}
!187 = !{i64 2148581003, i64 2148581029, i64 2148581058, i64 2148581092, i64 2148581123, i64 2148581146}
!188 = !{i64 975696}
!189 = !{i64 2150336373}
!190 = !{i64 2150336698}
!191 = !{i64 975506}
!192 = !{i64 2155263426, i64 2155263914, i64 2155263463, i64 2155263519, i64 2155263553, i64 2155263577, i64 2155263618, i64 2155263639, i64 2155263667, i64 2155263701}
!193 = !{i64 2155264916, i64 2155265404, i64 2155264953, i64 2155265009, i64 2155265043, i64 2155265067, i64 2155265108, i64 2155265129, i64 2155265157, i64 2155265191}
