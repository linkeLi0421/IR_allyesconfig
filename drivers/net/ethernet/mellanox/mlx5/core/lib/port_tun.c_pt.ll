; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/lib/port_tun.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/lib/port_tun.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_tun_entropy = type { ptr, i32, i32, i8, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.151, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.128 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.llist_head = type { ptr }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.129] }
%struct.anon.129 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.130 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.130 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.151 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@mlx5_init_port_tun_entropy.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tun_entropy->lock\00", [45 x i8] zeroinitializer }, align 32
@mlx5_set_entropy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 115, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s:%d:(pid %d): Unexpected entropy calc setting - expected %d\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mlx5_set_entropy\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/lib/port_tun.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_set_entropy._entry_ptr = internal global ptr @mlx5_set_entropy._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 78, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [58 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/lib/port_tun.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 113, i32 4 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @mlx5_set_entropy._entry, ptr @mlx5_set_entropy._entry_ptr, ptr @mlx5_init_port_tun_entropy.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_port_tun_entropy.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_set_entropy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_init_port_tun_entropy(ptr noundef %tun_entropy, ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  %out.i = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tun_entropy to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mdev, ptr %tun_entropy, align 4
  %lock = getelementptr inbounds %struct.mlx5_tun_entropy, ptr %tun_entropy, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5_init_port_tun_entropy.__key) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %out.i) #5
  %1 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %out.i, align 4, !annotation !21
  %2 = getelementptr inbounds [3 x i32], ptr %out.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !21
  %4 = getelementptr inbounds [3 x i32], ptr %out.i, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !21
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %6 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %7, i32 13
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %10 = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %entry.mlx5_query_port_tun_entropy.exit.thread_crit_edge, label %if.end.i

entry.mlx5_query_port_tun_entropy.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5_query_port_tun_entropy.exit.thread

if.end.i:                                         ; preds = %entry
  %call.i = call i32 @mlx5_query_ports_check(ptr noundef %mdev, ptr noundef nonnull %out.i, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %mlx5_query_port_tun_entropy.exit, label %if.end.i.mlx5_query_port_tun_entropy.exit.thread_crit_edge

if.end.i.mlx5_query_port_tun_entropy.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5_query_port_tun_entropy.exit.thread

mlx5_query_port_tun_entropy.exit.thread:          ; preds = %if.end.i.mlx5_query_port_tun_entropy.exit.thread_crit_edge, %entry.mlx5_query_port_tun_entropy.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %out.i) #5
  %num_enabling_entries11 = getelementptr inbounds %struct.mlx5_tun_entropy, ptr %tun_entropy, i32 0, i32 1
  %11 = ptrtoint ptr %num_enabling_entries11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %num_enabling_entries11, align 4
  %num_disabling_entries12 = getelementptr inbounds %struct.mlx5_tun_entropy, ptr %tun_entropy, i32 0, i32 2
  %12 = ptrtoint ptr %num_disabling_entries12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %num_disabling_entries12, align 4
  br label %cond.end

mlx5_query_port_tun_entropy.exit:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %2, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %4, align 4
  %17 = lshr i32 %16, 30
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %out.i) #5
  %num_enabling_entries = getelementptr inbounds %struct.mlx5_tun_entropy, ptr %tun_entropy, i32 0, i32 1
  %20 = ptrtoint ptr %num_enabling_entries to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %num_enabling_entries, align 4
  %num_disabling_entries = getelementptr inbounds %struct.mlx5_tun_entropy, ptr %tun_entropy, i32 0, i32 2
  %21 = ptrtoint ptr %num_disabling_entries to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %num_disabling_entries, align 4
  %22 = and i32 %14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  %spec.select = select i1 %tobool.not, i8 1, i8 %19
  br label %cond.end

cond.end:                                         ; preds = %mlx5_query_port_tun_entropy.exit, %mlx5_query_port_tun_entropy.exit.thread
  %cond = phi i8 [ 1, %mlx5_query_port_tun_entropy.exit.thread ], [ %spec.select, %mlx5_query_port_tun_entropy.exit ]
  %enabled = getelementptr inbounds %struct.mlx5_tun_entropy, ptr %tun_entropy, i32 0, i32 3
  %23 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %cond, ptr %enabled, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_tun_entropy_refcount_inc(ptr noundef %tun_entropy, i32 noundef %reformat_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlx5_tun_entropy, ptr %tun_entropy, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %0 = zext i32 %reformat_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reformat_type, label %entry.if.end15_crit_edge [
    i32 0, label %entry.land.lhs.true_crit_edge
    i32 4, label %entry.land.lhs.true_crit_edge30
    i32 1, label %entry.if.then4_crit_edge
  ]

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

entry.land.lhs.true_crit_edge30:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge30
  %enabled = getelementptr inbounds %struct.mlx5_tun_entropy, ptr %tun_entropy, i32 0, i32 3
  %1 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %num_enabling_entries = getelementptr inbounds %struct.mlx5_tun_entropy, ptr %tun_entropy, i32 0, i32 1
  br label %if.end15.sink.split

if.else:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reformat_type)
  %cmp2 = icmp eq i32 %reformat_type, 1
  br i1 %cmp2, label %if.else.if.then4_crit_edge, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.else.if.then4_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4:                                         ; preds = %if.else.if.then4_crit_edge, %entry.if.then4_crit_edge
  %num_disabling_entries = getelementptr inbounds %struct.mlx5_tun_entropy, ptr %tun_entropy, i32 0, i32 2
  %3 = ptrtoint ptr %num_disabling_entries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_disabling_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5 = icmp eq i32 %4, 0
  br i1 %cmp5, label %if.end, label %if.then4.if.end15.sink.split_crit_edge

if.then4.if.end15.sink.split_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split

if.end:                                           ; preds = %if.then4
  %call = tail call fastcc i32 @mlx5_set_entropy(ptr noundef %tun_entropy, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end.if.end15.sink.split_crit_edge, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end.if.end15.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.end.if.end15.sink.split_crit_edge, %if.then4.if.end15.sink.split_crit_edge, %if.then
  %num_disabling_entries.sink29 = phi ptr [ %num_enabling_entries, %if.then ], [ %num_disabling_entries, %if.then4.if.end15.sink.split_crit_edge ], [ %num_disabling_entries, %if.end.if.end15.sink.split_crit_edge ]
  %5 = ptrtoint ptr %num_disabling_entries.sink29 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_disabling_entries.sink29, align 4
  %inc12 = add i32 %6, 1
  store i32 %inc12, ptr %num_disabling_entries.sink29, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.end.if.end15_crit_edge, %if.else.if.end15_crit_edge, %entry.if.end15_crit_edge
  %err.1 = phi i32 [ %call, %if.end.if.end15_crit_edge ], [ -95, %if.else.if.end15_crit_edge ], [ -95, %entry.if.end15_crit_edge ], [ 0, %if.end15.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_set_entropy(ptr nocapture noundef %tun_entropy, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %in.i4 = alloca [3 x i32], align 4
  %in.i = alloca [3 x i32], align 4
  %out.i = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %0 = ptrtoint ptr %tun_entropy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tun_entropy, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %out.i) #5
  %2 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %out.i, align 4, !annotation !21
  %3 = getelementptr inbounds [3 x i32], ptr %out.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !21
  %5 = getelementptr inbounds [3 x i32], ptr %out.i, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !21
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %8, i32 13
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %11 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %entry.if.else.thread_crit_edge, label %if.end.i

entry.if.else.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.thread

if.end.i:                                         ; preds = %entry
  %call.i = call i32 @mlx5_query_ports_check(ptr noundef %1, ptr noundef nonnull %out.i, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %mlx5_query_port_tun_entropy.exit, label %if.end.i.if.else.thread_crit_edge

if.end.i.if.else.thread_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.thread

if.else.thread:                                   ; preds = %if.end.i.if.else.thread_crit_edge, %entry.if.else.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %out.i) #5
  br label %if.end58

mlx5_query_port_tun_entropy.exit:                 ; preds = %if.end.i
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %5, align 4
  %16 = lshr i32 %15, 30
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %out.i) #5
  %19 = and i32 %13, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %mlx5_query_port_tun_entropy.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool1.not = icmp sgt i32 %13, -1
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %20 = ptrtoint ptr %tun_entropy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tun_entropy, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %in.i) #5
  %22 = call ptr @memset(ptr %in.i, i32 0, i32 12)
  %call.i1 = call i32 @mlx5_query_ports_check(ptr noundef %21, ptr noundef nonnull %in.i, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool.not.i2 = icmp eq i32 %call.i1, 0
  br i1 %tobool.not.i2, label %mlx5_set_port_gre_tun_entropy_calc.exit, label %mlx5_set_port_gre_tun_entropy_calc.exit.thread

mlx5_set_port_gre_tun_entropy_calc.exit.thread:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %in.i) #5
  br label %cleanup

mlx5_set_port_gre_tun_entropy_calc.exit:          ; preds = %if.end
  %23 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %in.i, align 4
  %and.i = and i32 %24, -16711681
  %or.i = or i32 %and.i, 65536
  store i32 %or.i, ptr %in.i, align 4
  %add.ptr14.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %25 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr14.i, align 4
  %and15.i = and i32 %26, 1610612735
  %or18.i = select i1 %enable, i32 536870912, i32 -2147483648
  %or34.i = or i32 %or18.i, %and15.i
  store i32 %or34.i, ptr %add.ptr14.i, align 4
  %call40.i = call i32 @mlx5_set_ports_check(ptr noundef %21, ptr noundef nonnull %in.i, i32 noundef 12) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %in.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool7.not = icmp eq i32 %call40.i, 0
  br i1 %tobool7.not, label %mlx5_set_port_gre_tun_entropy_calc.exit.if.end58_crit_edge, label %mlx5_set_port_gre_tun_entropy_calc.exit.cleanup_crit_edge

mlx5_set_port_gre_tun_entropy_calc.exit.cleanup_crit_edge: ; preds = %mlx5_set_port_gre_tun_entropy_calc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

mlx5_set_port_gre_tun_entropy_calc.exit.if.end58_crit_edge: ; preds = %mlx5_set_port_gre_tun_entropy_calc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.else:                                          ; preds = %mlx5_query_port_tun_entropy.exit
  %27 = and i32 %13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool10.not = icmp eq i32 %27, 0
  br i1 %tobool10.not, label %if.else.if.end58_crit_edge, label %if.then11

if.else.if.end58_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp slt i32 %15, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %frombool)
  %cmp19 = icmp eq i8 %18, %frombool
  %or.cond = select i1 %tobool12.not, i1 %cmp19, i1 false
  br i1 %or.cond, label %do.end, label %if.end28

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %tun_entropy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tun_entropy, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %32 = call i32 @llvm.read_register.i32(metadata !11) #5
  %and.i3 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i3 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 68
  %36 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pid, align 8
  %38 = xor i8 %frombool, 1
  %39 = zext i8 %38 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 115, i32 noundef %37, i32 noundef %39) #8
  br label %cleanup

if.end28:                                         ; preds = %if.then11
  %num_enabling_entries = getelementptr inbounds %struct.mlx5_tun_entropy, ptr %tun_entropy, i32 0, i32 1
  %40 = ptrtoint ptr %num_enabling_entries to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_enabling_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool29.not = icmp eq i32 %41, 0
  br i1 %tobool29.not, label %if.end31, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  %42 = ptrtoint ptr %tun_entropy to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tun_entropy, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %in.i4) #5
  %44 = call ptr @memset(ptr %in.i4, i32 0, i32 12)
  %call.i5 = call i32 @mlx5_query_ports_check(ptr noundef %43, ptr noundef nonnull %in.i4, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool.not.i6 = icmp eq i32 %call.i5, 0
  br i1 %tobool.not.i6, label %mlx5_set_port_tun_entropy_calc.exit, label %mlx5_set_port_tun_entropy_calc.exit.thread

mlx5_set_port_tun_entropy_calc.exit.thread:       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %in.i4) #5
  br label %cleanup

mlx5_set_port_tun_entropy_calc.exit:              ; preds = %if.end31
  %45 = ptrtoint ptr %in.i4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %in.i4, align 4
  %and.i7 = and i32 %46, -16711681
  %or.i8 = or i32 %and.i7, 65536
  store i32 %or.i8, ptr %in.i4, align 4
  %add.ptr14.i9 = getelementptr inbounds i32, ptr %in.i4, i32 2
  %47 = ptrtoint ptr %add.ptr14.i9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr14.i9, align 4
  %and15.i10 = and i32 %48, 1073741823
  %shl17.i12 = and i32 %13, -2147483648
  %shl33.i15 = select i1 %enable, i32 1073741824, i32 0
  %or18.i13 = or i32 %shl17.i12, %shl33.i15
  %or34.i16 = or i32 %or18.i13, %and15.i10
  store i32 %or34.i16, ptr %add.ptr14.i9, align 4
  %call40.i17 = call i32 @mlx5_set_ports_check(ptr noundef %43, ptr noundef nonnull %in.i4, i32 noundef 12) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %in.i4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i17)
  %tobool39.not = icmp eq i32 %call40.i17, 0
  br i1 %tobool39.not, label %if.end41, label %mlx5_set_port_tun_entropy_calc.exit.cleanup_crit_edge

mlx5_set_port_tun_entropy_calc.exit.cleanup_crit_edge: ; preds = %mlx5_set_port_tun_entropy_calc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end41:                                         ; preds = %mlx5_set_port_tun_entropy_calc.exit
  %enabled = getelementptr inbounds %struct.mlx5_tun_entropy, ptr %tun_entropy, i32 0, i32 3
  %49 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %frombool, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool45.not = icmp slt i32 %13, 0
  %50 = and i1 %tobool45.not, %enable
  br i1 %50, label %if.then50, label %if.end41.if.end58_crit_edge

if.end41.if.end58_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then50:                                        ; preds = %if.end41
  %51 = ptrtoint ptr %tun_entropy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tun_entropy, align 4
  %call52 = call fastcc i32 @mlx5_set_port_tun_entropy_calc(ptr noundef %52, i8 noundef zeroext 1, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then50.if.end58_crit_edge, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then50.if.end58_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.end58:                                         ; preds = %if.then50.if.end58_crit_edge, %if.end41.if.end58_crit_edge, %if.else.if.end58_crit_edge, %mlx5_set_port_gre_tun_entropy_calc.exit.if.end58_crit_edge, %if.else.thread
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then50.cleanup_crit_edge, %mlx5_set_port_tun_entropy_calc.exit.cleanup_crit_edge, %mlx5_set_port_tun_entropy_calc.exit.thread, %if.end28.cleanup_crit_edge, %do.end, %mlx5_set_port_gre_tun_entropy_calc.exit.cleanup_crit_edge, %mlx5_set_port_gre_tun_entropy_calc.exit.thread, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end58 ], [ -95, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ %call40.i, %mlx5_set_port_gre_tun_entropy_calc.exit.cleanup_crit_edge ], [ -95, %if.end28.cleanup_crit_edge ], [ %call40.i17, %mlx5_set_port_tun_entropy_calc.exit.cleanup_crit_edge ], [ %call52, %if.then50.cleanup_crit_edge ], [ %call.i1, %mlx5_set_port_gre_tun_entropy_calc.exit.thread ], [ %call.i5, %mlx5_set_port_tun_entropy_calc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_tun_entropy_refcount_dec(ptr noundef %tun_entropy, i32 noundef %reformat_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlx5_tun_entropy, ptr %tun_entropy, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %0 = zext i32 %reformat_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %reformat_type, label %entry.if.end5_crit_edge [
    i32 0, label %if.then
    i32 1, label %land.lhs.true
  ]

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %num_enabling_entries = getelementptr inbounds %struct.mlx5_tun_entropy, ptr %tun_entropy, i32 0, i32 1
  %1 = ptrtoint ptr %num_enabling_entries to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_enabling_entries, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr %num_enabling_entries, align 4
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %num_disabling_entries = getelementptr inbounds %struct.mlx5_tun_entropy, ptr %tun_entropy, i32 0, i32 2
  %3 = ptrtoint ptr %num_disabling_entries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_disabling_entries, align 4
  %dec2 = add i32 %4, -1
  store i32 %dec2, ptr %num_disabling_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec2)
  %cmp3 = icmp eq i32 %dec2, 0
  br i1 %cmp3, label %if.then4, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %5 = tail call fastcc i32 @mlx5_set_entropy(ptr noundef %tun_entropy, i1 noundef zeroext true)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true.if.end5_crit_edge, %if.then, %entry.if.end5_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_ports_check(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_set_port_tun_entropy_calc(ptr noundef %mdev, i8 noundef zeroext %enable, i8 noundef zeroext %force) unnamed_addr #0 align 64 {
entry:
  %in = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %in) #5
  %0 = call ptr @memset(ptr %in, i32 0, i32 12)
  %call = call i32 @mlx5_query_ports_check(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %in, align 4
  %and = and i32 %2, -16711681
  %or = or i32 %and, 65536
  store i32 %or, ptr %in, align 4
  %add.ptr14 = getelementptr inbounds i32, ptr %in, i32 2
  %3 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr14, align 4
  %and15 = and i32 %4, 1073741823
  %and16 = zext i8 %force to i32
  %shl17 = shl i32 %and16, 31
  %or18 = or i32 %and15, %shl17
  %5 = and i8 %enable, 1
  %and32 = zext i8 %5 to i32
  %shl33 = shl nuw nsw i32 %and32, 30
  %or34 = or i32 %or18, %shl33
  store i32 %or34, ptr %add.ptr14, align 4
  %call40 = call i32 @mlx5_set_ports_check(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 12) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %do.body ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %in) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_set_ports_check(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10}
!llvm.named.register.sp = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @mlx5_init_port_tun_entropy.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/port_tun.c", i32 78, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/port_tun.c", i32 113, i32 4}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mlx5_set_entropy._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @mlx5_set_entropy._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{!"sp"}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
