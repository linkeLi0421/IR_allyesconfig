; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/port.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/port.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.161, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.138 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.139] }
%struct.anon.139 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.140 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.140 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.161 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5e_port_eth_proto = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.119, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.119 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@mlx5e_port_query_priority2buffer.__UNIQUE_ID_ddebug644 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mlx5e_port_query_priority2buffer\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/port.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d:(pid %d): prio %d, buffer %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx5e_ext_link_speed = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 100, i32 1000, i32 0, i32 5000, i32 10000, i32 40000, i32 25000, i32 50000, i32 50000, i32 100000, i32 100000, i32 100000, i32 200000, i32 200000, i32 0, i32 400000, i32 400000], [60 x i8] zeroinitializer }, align 32
@mlx5e_link_speed = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 1000, i32 1000, i32 10000, i32 10000, i32 10000, i32 20000, i32 40000, i32 40000, i32 56000, i32 0, i32 0, i32 0, i32 10000, i32 10000, i32 10000, i32 40000, i32 40000, i32 0, i32 50000, i32 0, i32 100000, i32 100000, i32 100000, i32 100000, i32 100, i32 1000, i32 10000, i32 25000, i32 25000, i32 25000, i32 50000, i32 50000], [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.4 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 315, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [21 x i8] c"mlx5e_ext_link_speed\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 66, i32 18 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"mlx5e_link_speed\00", align 1
@___asan_gen_.21 = private constant [53 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/port.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 36, i32 18 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mlx5e_ext_link_speed, ptr @mlx5e_link_speed], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_ext_link_speed to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_link_speed to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5e_ptys_ext_supported(ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  %out.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 1, i32 13
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %2 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i) #6
  %3 = call ptr @memset(ptr %out.i, i32 255, i32 64)
  %call.i = call i32 @mlx5_query_port_ptys(ptr noundef %mdev, ptr noundef nonnull %out.i, i32 noundef 64, i32 noundef 4, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3, label %mlx5_port_query_eth_proto.exit

mlx5_port_query_eth_proto.exit:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i) #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr7.i = getelementptr inbounds i32, ptr %out.i, i32 2
  %4 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr7.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4 = icmp ne i32 %5, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %mlx5_port_query_eth_proto.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool4, %if.end3 ], [ true, %entry.cleanup_crit_edge ], [ false, %mlx5_port_query_eth_proto.exit ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_port_query_eth_proto(ptr noundef %dev, i8 noundef zeroext %port, i1 noundef zeroext %ext, ptr noundef writeonly %eproto) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out) #6
  %0 = call ptr @memset(ptr %out, i32 255, i32 64)
  %tobool.not = icmp eq ptr %eproto, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @mlx5_query_port_ptys(ptr noundef %dev, ptr noundef nonnull %out, i32 noundef 64, i32 noundef 4, i8 noundef zeroext %port) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %. = select i1 %ext, i32 2, i32 3
  %.47 = select i1 %ext, i32 5, i32 6
  %.48 = select i1 %ext, i32 8, i32 9
  %add.ptr7 = getelementptr inbounds i32, ptr %out, i32 %.
  %1 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr7, align 4
  %3 = ptrtoint ptr %eproto to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %eproto, align 4
  %add.ptr18 = getelementptr inbounds i32, ptr %out, i32 %.47
  %4 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr18, align 4
  %add.ptr31 = getelementptr inbounds i32, ptr %out, i32 %.48
  %6 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr31, align 4
  %8 = getelementptr inbounds %struct.mlx5e_port_eth_proto, ptr %eproto, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %5, ptr %8, align 4
  %oper = getelementptr inbounds %struct.mlx5e_port_eth_proto, ptr %eproto, i32 0, i32 2
  %10 = ptrtoint ptr %oper to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %oper, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_port_ptys(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_port_query_eth_autoneg(ptr noundef %dev, ptr nocapture noundef writeonly %an_status, ptr nocapture noundef writeonly %an_disable_cap, ptr nocapture noundef writeonly %an_disable_admin) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out) #6
  %0 = call ptr @memset(ptr %out, i32 255, i32 64)
  %1 = ptrtoint ptr %an_status to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %an_status, align 1
  %2 = ptrtoint ptr %an_disable_cap to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %an_disable_cap, align 1
  %3 = ptrtoint ptr %an_disable_admin to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %an_disable_admin, align 1
  %call = call i32 @mlx5_query_port_ptys(ptr noundef %dev, ptr noundef nonnull %out, i32 noundef 64, i32 noundef 4, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr inbounds i32, ptr %out, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %5, 28
  %conv = trunc i32 %shr to i8
  %6 = ptrtoint ptr %an_status to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %an_status, align 1
  %7 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out, align 4
  %shr4 = lshr i32 %8, 29
  %9 = trunc i32 %shr4 to i8
  %conv6 = and i8 %9, 1
  %10 = ptrtoint ptr %an_disable_cap to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6, ptr %an_disable_cap, align 1
  %shr9 = lshr i32 %8, 30
  %11 = trunc i32 %shr9 to i8
  %conv11 = and i8 %11, 1
  %12 = ptrtoint ptr %an_disable_admin to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv11, ptr %an_disable_admin, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_port_set_eth_ptys(ptr noundef %dev, i1 noundef zeroext %an_disable, i32 noundef %proto_admin, i1 noundef zeroext %ext) local_unnamed_addr #0 align 64 {
entry:
  %out.i = alloca [16 x i32], align 4
  %out = alloca [16 x i32], align 4
  %in = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out) #6
  %0 = call ptr @memset(ptr %out, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i) #6
  %1 = call ptr @memset(ptr %out.i, i32 255, i32 64)
  %call.i = call i32 @mlx5_query_port_ptys(ptr noundef %dev, ptr noundef nonnull %out.i, i32 noundef 64, i32 noundef 4, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mlx5_port_query_eth_autoneg.exit_crit_edge

entry.mlx5_port_query_eth_autoneg.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5_port_query_eth_autoneg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out.i, align 4
  %4 = and i32 %3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %phi.cmp = icmp ne i32 %4, 0
  br label %mlx5_port_query_eth_autoneg.exit

mlx5_port_query_eth_autoneg.exit:                 ; preds = %if.end.i, %entry.mlx5_port_query_eth_autoneg.exit_crit_edge
  %an_disable_cap.0 = phi i1 [ %phi.cmp, %if.end.i ], [ false, %entry.mlx5_port_query_eth_autoneg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i) #6
  %an_disable.not = xor i1 %an_disable, true
  %brmerge = or i1 %an_disable_cap.0, %an_disable.not
  br i1 %brmerge, label %if.end, label %mlx5_port_query_eth_autoneg.exit.cleanup_crit_edge

mlx5_port_query_eth_autoneg.exit.cleanup_crit_edge: ; preds = %mlx5_port_query_eth_autoneg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %mlx5_port_query_eth_autoneg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %5 = getelementptr inbounds i8, ptr %in, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 60)
  %or = select i1 %an_disable, i32 1073807364, i32 65540
  %7 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %in, align 4
  %. = select i1 %ext, i32 5, i32 6
  %add.ptr64 = getelementptr inbounds i32, ptr %in, i32 %.
  %8 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %proto_admin, ptr %add.ptr64, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 64, ptr noundef nonnull %out, i32 noundef 64, i16 noundef zeroext 20484, i32 noundef 0, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mlx5_port_query_eth_autoneg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -1, %mlx5_port_query_eth_autoneg.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_access_reg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_port_ptys2speed(ptr noundef %mdev, i32 noundef %eth_proto_oper, i1 noundef zeroext %force_legacy) local_unnamed_addr #0 align 64 {
entry:
  %out.i.i.i = alloca [16 x i32], align 4
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #6
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %eth_proto_oper, ptr %temp, align 4
  br i1 %force_legacy, label %entry.cond.end.thread.i_crit_edge, label %cond.false.i

entry.cond.end.thread.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.thread.i

cond.false.i:                                     ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 1, i32 13
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i.i, align 4
  %3 = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %cond.false.i.mlx5e_port_get_speed_arr.exit_crit_edge

cond.false.i.mlx5e_port_get_speed_arr.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_port_get_speed_arr.exit

if.end.i.i:                                       ; preds = %cond.false.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i.i.i) #6
  %4 = call ptr @memset(ptr %out.i.i.i, i32 255, i32 64)
  %call.i.i.i = call i32 @mlx5_query_port_ptys(ptr noundef %mdev, ptr noundef nonnull %out.i.i.i, i32 noundef 64, i32 noundef 4, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %cond.end.i, label %cond.end.thread13.i

cond.end.thread13.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i.i.i) #6
  br label %cond.end.thread.i

cond.end.i:                                       ; preds = %if.end.i.i
  %add.ptr7.i.i.i = getelementptr inbounds i32, ptr %out.i.i.i, i32 2
  %5 = ptrtoint ptr %add.ptr7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr7.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool4.i.not.i, label %cond.end.i.cond.end.thread.i_crit_edge, label %cond.end.i.mlx5e_port_get_speed_arr.exit_crit_edge

cond.end.i.mlx5e_port_get_speed_arr.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_port_get_speed_arr.exit

cond.end.i.cond.end.thread.i_crit_edge:           ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.thread.i

cond.end.thread.i:                                ; preds = %cond.end.i.cond.end.thread.i_crit_edge, %cond.end.thread13.i, %entry.cond.end.thread.i_crit_edge
  br label %mlx5e_port_get_speed_arr.exit

mlx5e_port_get_speed_arr.exit:                    ; preds = %cond.end.thread.i, %cond.end.i.mlx5e_port_get_speed_arr.exit_crit_edge, %cond.false.i.mlx5e_port_get_speed_arr.exit_crit_edge
  %storemerge.i = phi i32 [ 32, %cond.end.thread.i ], [ 17, %cond.end.i.mlx5e_port_get_speed_arr.exit_crit_edge ], [ 17, %cond.false.i.mlx5e_port_get_speed_arr.exit_crit_edge ]
  %7 = phi ptr [ @mlx5e_link_speed, %cond.end.thread.i ], [ @mlx5e_ext_link_speed, %cond.end.i.mlx5e_port_get_speed_arr.exit_crit_edge ], [ @mlx5e_ext_link_speed, %cond.false.i.mlx5e_port_get_speed_arr.exit_crit_edge ]
  %call = call i32 @_find_first_bit_be(ptr noundef nonnull %temp, i32 noundef %storemerge.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %storemerge.i)
  %cmp = icmp ult i32 %call, %storemerge.i
  br i1 %cmp, label %if.then, label %mlx5e_port_get_speed_arr.exit.if.end_crit_edge

mlx5e_port_get_speed_arr.exit.if.end_crit_edge:   ; preds = %mlx5e_port_get_speed_arr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %mlx5e_port_get_speed_arr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i32, ptr %7, i32 %call
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %mlx5e_port_get_speed_arr.exit.if.end_crit_edge
  %speed.0 = phi i32 [ %9, %if.then ], [ 0, %mlx5e_port_get_speed_arr.exit.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #6
  ret i32 %speed.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_port_linkspeed(ptr noundef %mdev, ptr nocapture noundef writeonly %speed) local_unnamed_addr #0 align 64 {
entry:
  %out.i.i.i.i = alloca [16 x i32], align 4
  %temp.i = alloca i32, align 4
  %out.i26 = alloca [16 x i32], align 4
  %out.i = alloca [16 x i32], align 4
  %out.i.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 1, i32 13
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %2 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mlx5e_ptys_ext_supported.exit_crit_edge

entry.mlx5e_ptys_ext_supported.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_ptys_ext_supported.exit

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i.i) #6
  %3 = call ptr @memset(ptr %out.i.i, i32 255, i32 64)
  %call.i.i = call i32 @mlx5_query_port_ptys(ptr noundef %mdev, ptr noundef nonnull %out.i.i, i32 noundef 64, i32 noundef 4, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end3.i, label %mlx5_port_query_eth_proto.exit.i

mlx5_port_query_eth_proto.exit.i:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i.i) #6
  br label %mlx5e_ptys_ext_supported.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr7.i.i = getelementptr inbounds i32, ptr %out.i.i, i32 2
  %4 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr7.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.i = icmp ne i32 %5, 0
  br label %mlx5e_ptys_ext_supported.exit

mlx5e_ptys_ext_supported.exit:                    ; preds = %if.end3.i, %mlx5_port_query_eth_proto.exit.i, %entry.mlx5e_ptys_ext_supported.exit_crit_edge
  %retval.0.i = phi i1 [ %tobool4.i, %if.end3.i ], [ true, %entry.mlx5e_ptys_ext_supported.exit_crit_edge ], [ false, %mlx5_port_query_eth_proto.exit.i ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i) #6
  %6 = call ptr @memset(ptr %out.i, i32 255, i32 64)
  %call.i = call i32 @mlx5_query_port_ptys(ptr noundef %mdev, ptr noundef nonnull %out.i, i32 noundef 64, i32 noundef 4, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end, label %mlx5_port_query_eth_proto.exit

mlx5_port_query_eth_proto.exit:                   ; preds = %mlx5e_ptys_ext_supported.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i) #6
  br label %out

if.end:                                           ; preds = %mlx5e_ptys_ext_supported.exit
  %.47.i = select i1 %retval.0.i, i32 5, i32 6
  %.48.i = select i1 %retval.0.i, i32 8, i32 9
  %add.ptr18.i = getelementptr inbounds i32, ptr %out.i, i32 %.47.i
  %7 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr18.i, align 4
  %add.ptr31.i = getelementptr inbounds i32, ptr %out.i, i32 %.48.i
  %9 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr31.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  %or.cond = select i1 %retval.0.i, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %if.then5, label %cond.false.i.i

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i26) #6
  %11 = call ptr @memset(ptr %out.i26, i32 255, i32 64)
  %call.i27 = call i32 @mlx5_query_port_ptys(ptr noundef %mdev, ptr noundef nonnull %out.i26, i32 noundef 64, i32 noundef 4, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool1.not.i28 = icmp eq i32 %call.i27, 0
  br i1 %tobool1.not.i28, label %if.end10, label %mlx5_port_query_eth_proto.exit36

mlx5_port_query_eth_proto.exit36:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i26) #6
  br label %out

if.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr31.i32 = getelementptr inbounds i32, ptr %out.i26, i32 9
  %12 = ptrtoint ptr %add.ptr31.i32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr31.i32, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i26) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #6
  %14 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %temp.i, align 4
  br label %cond.end.thread.i.i

cond.false.i.i:                                   ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #6
  %15 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %10, ptr %temp.i, align 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i, align 4
  %18 = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %cond.false.i.i.mlx5e_port_get_speed_arr.exit.i_crit_edge

cond.false.i.i.mlx5e_port_get_speed_arr.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_port_get_speed_arr.exit.i

if.end.i.i.i:                                     ; preds = %cond.false.i.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i.i.i.i) #6
  %19 = call ptr @memset(ptr %out.i.i.i.i, i32 255, i32 64)
  %call.i.i.i.i = call i32 @mlx5_query_port_ptys(ptr noundef %mdev, ptr noundef nonnull %out.i.i.i.i, i32 noundef 64, i32 noundef 4, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %cond.end.i.i, label %cond.end.thread13.i.i

cond.end.thread13.i.i:                            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i.i.i.i) #6
  br label %cond.end.thread.i.i

cond.end.i.i:                                     ; preds = %if.end.i.i.i
  %add.ptr7.i.i.i.i = getelementptr inbounds i32, ptr %out.i.i.i.i, i32 2
  %20 = ptrtoint ptr %add.ptr7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr7.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.i.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool4.i.not.i.i, label %cond.end.i.i.cond.end.thread.i.i_crit_edge, label %cond.end.i.i.mlx5e_port_get_speed_arr.exit.i_crit_edge

cond.end.i.i.mlx5e_port_get_speed_arr.exit.i_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_port_get_speed_arr.exit.i

cond.end.i.i.cond.end.thread.i.i_crit_edge:       ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.thread.i.i

cond.end.thread.i.i:                              ; preds = %cond.end.i.i.cond.end.thread.i.i_crit_edge, %cond.end.thread13.i.i, %if.end10
  br label %mlx5e_port_get_speed_arr.exit.i

mlx5e_port_get_speed_arr.exit.i:                  ; preds = %cond.end.thread.i.i, %cond.end.i.i.mlx5e_port_get_speed_arr.exit.i_crit_edge, %cond.false.i.i.mlx5e_port_get_speed_arr.exit.i_crit_edge
  %storemerge.i.i = phi i32 [ 32, %cond.end.thread.i.i ], [ 17, %cond.end.i.i.mlx5e_port_get_speed_arr.exit.i_crit_edge ], [ 17, %cond.false.i.i.mlx5e_port_get_speed_arr.exit.i_crit_edge ]
  %22 = phi ptr [ @mlx5e_link_speed, %cond.end.thread.i.i ], [ @mlx5e_ext_link_speed, %cond.end.i.i.mlx5e_port_get_speed_arr.exit.i_crit_edge ], [ @mlx5e_ext_link_speed, %cond.false.i.i.mlx5e_port_get_speed_arr.exit.i_crit_edge ]
  %call.i37 = call i32 @_find_first_bit_be(ptr noundef nonnull %temp.i, i32 noundef %storemerge.i.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i37, i32 %storemerge.i.i)
  %cmp.i = icmp ult i32 %call.i37, %storemerge.i.i
  br i1 %cmp.i, label %mlx5e_port_ptys2speed.exit, label %mlx5e_port_ptys2speed.exit.thread

mlx5e_port_ptys2speed.exit.thread:                ; preds = %mlx5e_port_get_speed_arr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #6
  %23 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %speed, align 4
  br label %27

mlx5e_port_ptys2speed.exit:                       ; preds = %mlx5e_port_get_speed_arr.exit.i
  %arrayidx.i = getelementptr i32, ptr %22, i32 %call.i37
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #6
  %26 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool13.not = icmp eq i32 %25, 0
  br i1 %tobool13.not, label %mlx5e_port_ptys2speed.exit._crit_edge, label %mlx5e_port_ptys2speed.exit.out_crit_edge

mlx5e_port_ptys2speed.exit.out_crit_edge:         ; preds = %mlx5e_port_ptys2speed.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

mlx5e_port_ptys2speed.exit._crit_edge:            ; preds = %mlx5e_port_ptys2speed.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %27

27:                                               ; preds = %mlx5e_port_ptys2speed.exit._crit_edge, %mlx5e_port_ptys2speed.exit.thread
  br label %out

out:                                              ; preds = %27, %mlx5e_port_ptys2speed.exit.out_crit_edge, %mlx5_port_query_eth_proto.exit36, %mlx5_port_query_eth_proto.exit
  %err.1 = phi i32 [ %call.i, %mlx5_port_query_eth_proto.exit ], [ %call.i27, %mlx5_port_query_eth_proto.exit36 ], [ -22, %27 ], [ 0, %mlx5e_port_ptys2speed.exit.out_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_port_max_linkspeed(ptr noundef %mdev, ptr nocapture noundef writeonly %speed) local_unnamed_addr #0 align 64 {
entry:
  %out.i.i.i = alloca [16 x i32], align 4
  %out.i = alloca [16 x i32], align 4
  %out.i.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 1, i32 13
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %2 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mlx5e_ptys_ext_supported.exit_crit_edge

entry.mlx5e_ptys_ext_supported.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_ptys_ext_supported.exit

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i.i) #6
  %3 = call ptr @memset(ptr %out.i.i, i32 255, i32 64)
  %call.i.i = call i32 @mlx5_query_port_ptys(ptr noundef %mdev, ptr noundef nonnull %out.i.i, i32 noundef 64, i32 noundef 4, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end3.i, label %mlx5_port_query_eth_proto.exit.i

mlx5_port_query_eth_proto.exit.i:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i.i) #6
  br label %mlx5e_ptys_ext_supported.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr7.i.i = getelementptr inbounds i32, ptr %out.i.i, i32 2
  %4 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr7.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.i.not = icmp eq i32 %5, 0
  %phi.sel = select i1 %tobool4.i.not, i32 3, i32 2
  br label %mlx5e_ptys_ext_supported.exit

mlx5e_ptys_ext_supported.exit:                    ; preds = %if.end3.i, %mlx5_port_query_eth_proto.exit.i, %entry.mlx5e_ptys_ext_supported.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.sel, %if.end3.i ], [ 2, %entry.mlx5e_ptys_ext_supported.exit_crit_edge ], [ 3, %mlx5_port_query_eth_proto.exit.i ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i) #6
  %6 = call ptr @memset(ptr %out.i, i32 255, i32 64)
  %call.i = call i32 @mlx5_query_port_ptys(ptr noundef %mdev, ptr noundef nonnull %out.i, i32 noundef 64, i32 noundef 4, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end, label %mlx5_port_query_eth_proto.exit

mlx5_port_query_eth_proto.exit:                   ; preds = %mlx5e_ptys_ext_supported.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i) #6
  br label %cleanup

if.end:                                           ; preds = %mlx5e_ptys_ext_supported.exit
  %add.ptr7.i = getelementptr inbounds i32, ptr %out.i, i32 %retval.0.i
  %7 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr7.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i) #6
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %11 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.mlx5e_port_get_speed_arr.exit_crit_edge

if.end.mlx5e_port_get_speed_arr.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_port_get_speed_arr.exit

if.end.i.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i.i.i) #6
  %12 = call ptr @memset(ptr %out.i.i.i, i32 255, i32 64)
  %call.i.i.i = call i32 @mlx5_query_port_ptys(ptr noundef %mdev, ptr noundef nonnull %out.i.i.i, i32 noundef 64, i32 noundef 4, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %cond.end.i, label %cond.end.thread13.i

cond.end.thread13.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i.i.i) #6
  br label %cond.end.thread.i

cond.end.i:                                       ; preds = %if.end.i.i
  %add.ptr7.i.i.i = getelementptr inbounds i32, ptr %out.i.i.i, i32 2
  %13 = ptrtoint ptr %add.ptr7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr7.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool4.i.not.i, label %cond.end.i.cond.end.thread.i_crit_edge, label %cond.end.i.mlx5e_port_get_speed_arr.exit_crit_edge

cond.end.i.mlx5e_port_get_speed_arr.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_port_get_speed_arr.exit

cond.end.i.cond.end.thread.i_crit_edge:           ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.thread.i

cond.end.thread.i:                                ; preds = %cond.end.i.cond.end.thread.i_crit_edge, %cond.end.thread13.i
  br label %mlx5e_port_get_speed_arr.exit

mlx5e_port_get_speed_arr.exit:                    ; preds = %cond.end.thread.i, %cond.end.i.mlx5e_port_get_speed_arr.exit_crit_edge, %if.end.mlx5e_port_get_speed_arr.exit_crit_edge
  %storemerge.i = phi i32 [ 32, %cond.end.thread.i ], [ 17, %cond.end.i.mlx5e_port_get_speed_arr.exit_crit_edge ], [ 17, %if.end.mlx5e_port_get_speed_arr.exit_crit_edge ]
  %15 = phi ptr [ @mlx5e_link_speed, %cond.end.thread.i ], [ @mlx5e_ext_link_speed, %cond.end.i.mlx5e_port_get_speed_arr.exit_crit_edge ], [ @mlx5e_ext_link_speed, %if.end.mlx5e_port_get_speed_arr.exit_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %mlx5e_port_get_speed_arr.exit
  %i.030 = phi i32 [ 0, %mlx5e_port_get_speed_arr.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %max_speed.029 = phi i32 [ 0, %mlx5e_port_get_speed_arr.exit ], [ %max_speed.1, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.030
  %and = and i32 %shl, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i32, ptr %15, i32 %i.030
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %18 = call i32 @llvm.umax.i32(i32 %max_speed.029, i32 %17)
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %max_speed.1 = phi i32 [ %18, %if.then4 ], [ %max_speed.029, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, %storemerge.i
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %max_speed.1, ptr %speed, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %mlx5_port_query_eth_proto.exit
  %retval.0 = phi i32 [ 0, %for.end ], [ %call.i, %mlx5_port_query_eth_proto.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_port_speed2linkmodes(ptr noundef %mdev, i32 noundef %speed, i1 noundef zeroext %force_legacy) local_unnamed_addr #0 align 64 {
entry:
  %out.i.i.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %force_legacy, label %entry.cond.end.thread.i_crit_edge, label %cond.false.i

entry.cond.end.thread.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.thread.i

cond.false.i:                                     ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 1, i32 13
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %cond.false.i.mlx5e_port_get_speed_arr.exit_crit_edge

cond.false.i.mlx5e_port_get_speed_arr.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_port_get_speed_arr.exit

if.end.i.i:                                       ; preds = %cond.false.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i.i.i) #6
  %3 = call ptr @memset(ptr %out.i.i.i, i32 255, i32 64)
  %call.i.i.i = call i32 @mlx5_query_port_ptys(ptr noundef %mdev, ptr noundef nonnull %out.i.i.i, i32 noundef 64, i32 noundef 4, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %cond.end.i, label %cond.end.thread13.i

cond.end.thread13.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i.i.i) #6
  br label %cond.end.thread.i

cond.end.i:                                       ; preds = %if.end.i.i
  %add.ptr7.i.i.i = getelementptr inbounds i32, ptr %out.i.i.i, i32 2
  %4 = ptrtoint ptr %add.ptr7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr7.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool4.i.not.i, label %cond.end.i.cond.end.thread.i_crit_edge, label %cond.end.i.mlx5e_port_get_speed_arr.exit_crit_edge

cond.end.i.mlx5e_port_get_speed_arr.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_port_get_speed_arr.exit

cond.end.i.cond.end.thread.i_crit_edge:           ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.thread.i

cond.end.thread.i:                                ; preds = %cond.end.i.cond.end.thread.i_crit_edge, %cond.end.thread13.i, %entry.cond.end.thread.i_crit_edge
  br label %mlx5e_port_get_speed_arr.exit

mlx5e_port_get_speed_arr.exit:                    ; preds = %cond.end.thread.i, %cond.end.i.mlx5e_port_get_speed_arr.exit_crit_edge, %cond.false.i.mlx5e_port_get_speed_arr.exit_crit_edge
  %storemerge.i = phi i32 [ 32, %cond.end.thread.i ], [ 17, %cond.end.i.mlx5e_port_get_speed_arr.exit_crit_edge ], [ 17, %cond.false.i.mlx5e_port_get_speed_arr.exit_crit_edge ]
  %6 = phi ptr [ @mlx5e_link_speed, %cond.end.thread.i ], [ @mlx5e_ext_link_speed, %cond.end.i.mlx5e_port_get_speed_arr.exit_crit_edge ], [ @mlx5e_ext_link_speed, %cond.false.i.mlx5e_port_get_speed_arr.exit_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %mlx5e_port_get_speed_arr.exit
  %i.07 = phi i32 [ 0, %mlx5e_port_get_speed_arr.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %link_modes.06 = phi i32 [ 0, %mlx5e_port_get_speed_arr.exit ], [ %link_modes.1, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %6, i32 %i.07
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %speed)
  %cmp1 = icmp eq i32 %8, %speed
  %shl = shl nuw i32 1, %i.07
  %or = select i1 %cmp1, i32 %shl, i32 0
  %link_modes.1 = or i32 %or, %link_modes.06
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %storemerge.i
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 %link_modes.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_port_query_pbmc(ptr noundef %mdev, ptr noundef %out) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 108) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call7.i.i, align 8
  %and = and i32 %2, -16711681
  %or = or i32 %and, 65536
  store i32 %or, ptr %call7.i.i, align 8
  %call6 = tail call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %call7.i.i, i32 noundef 108, ptr noundef %out, i32 noundef 108, i16 noundef zeroext 20492, i32 noundef 0, i32 noundef 0) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_port_set_pbmc(ptr noundef %mdev, ptr noundef %in) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 108) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %in, align 4
  %and = and i32 %2, -16711681
  %or = or i32 %and, 65536
  store i32 %or, ptr %in, align 4
  %call6 = tail call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef %in, i32 noundef 108, ptr noundef nonnull %call7.i.i, i32 noundef 108, i16 noundef zeroext 20492, i32 noundef 0, i32 noundef 1) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_port_query_priority2buffer(ptr noundef %mdev, ptr nocapture noundef %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i49 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call7.i.i49, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.out30_crit_edge, label %do.body

entry.out30_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out30

do.body:                                          ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call7.i.i, align 8
  %and = and i32 %3, -16711681
  %or = or i32 %and, 65536
  store i32 %or, ptr %call7.i.i, align 8
  %call8 = tail call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %call7.i.i, i32 noundef 12, ptr noundef nonnull %call7.i.i49, i32 noundef 12, i16 noundef zeroext 20491, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.body.out30_crit_edge

do.body.out30_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out30

if.end11:                                         ; preds = %do.body
  %add.ptr12 = getelementptr i32, ptr %call7.i.i49, i32 1
  %4 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr12, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11
  %prio.051 = phi i32 [ 0, %if.end11 ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl i32 %prio.051, 2
  %shr14 = lshr i32 %5, %mul
  %6 = trunc i32 %shr14 to i8
  %conv17 = and i8 %6, 15
  %arrayidx = getelementptr i8, ptr %buffer, i32 %prio.051
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv17, ptr %arrayidx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_port_query_priority2buffer.__UNIQUE_ID_ddebug644, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_port_query_priority2buffer, %if.then23)) #6
          to label %for.inc [label %if.then23], !srcloc !20

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !10) #6
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %conv26 = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_port_query_priority2buffer.__UNIQUE_ID_ddebug644, ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 315, i32 noundef %15, i32 noundef %prio.051, i32 noundef %conv26) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %for.body
  %inc = add nuw nsw i32 %prio.051, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.out30_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.out30_crit_edge:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %out30

out30:                                            ; preds = %for.inc.out30_crit_edge, %do.body.out30_crit_edge, %entry.out30_crit_edge
  %err.0 = phi i32 [ %call8, %do.body.out30_crit_edge ], [ -12, %entry.out30_crit_edge ], [ 0, %for.inc.out30_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  tail call void @kfree(ptr noundef %call7.i.i49) #6
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_port_set_priority2buffer(ptr noundef %mdev, ptr nocapture noundef readonly %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i83 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call7.i.i83, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.out54_crit_edge, label %do.body

entry.out54_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out54

do.body:                                          ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call7.i.i, align 8
  %and = and i32 %3, -16711681
  %or = or i32 %and, 65536
  store i32 %or, ptr %call7.i.i, align 8
  %call8 = tail call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %call7.i.i, i32 noundef 12, ptr noundef nonnull %call7.i.i83, i32 noundef 12, i16 noundef zeroext 20491, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.body.out54_crit_edge

do.body.out54_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out54

if.end11:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = call ptr @memcpy(ptr %call7.i.i, ptr %call7.i.i83, i32 12)
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call7.i.i, align 8
  %and18 = and i32 %6, -16711936
  %or34 = or i32 %and18, 65791
  store i32 %or34, ptr %call7.i.i, align 8
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buffer, align 1
  %conv = zext i8 %8 to i32
  %arrayidx.1 = getelementptr i8, ptr %buffer, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %10 to i32
  %shl38.1 = shl nuw nsw i32 %conv.1, 4
  %or39.1 = or i32 %shl38.1, %conv
  %arrayidx.2 = getelementptr i8, ptr %buffer, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %12 to i32
  %shl38.2 = shl nuw nsw i32 %conv.2, 8
  %or39.2 = or i32 %shl38.2, %or39.1
  %arrayidx.3 = getelementptr i8, ptr %buffer, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %14 to i32
  %shl38.3 = shl nuw nsw i32 %conv.3, 12
  %or39.3 = or i32 %shl38.3, %or39.2
  %arrayidx.4 = getelementptr i8, ptr %buffer, i32 4
  %15 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %16 to i32
  %shl38.4 = shl nuw nsw i32 %conv.4, 16
  %or39.4 = or i32 %shl38.4, %or39.3
  %arrayidx.5 = getelementptr i8, ptr %buffer, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %18 to i32
  %shl38.5 = shl nuw nsw i32 %conv.5, 20
  %or39.5 = or i32 %shl38.5, %or39.4
  %arrayidx.6 = getelementptr i8, ptr %buffer, i32 6
  %19 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = zext i8 %20 to i32
  %shl38.6 = shl nuw i32 %conv.6, 24
  %or39.6 = or i32 %shl38.6, %or39.5
  %arrayidx.7 = getelementptr i8, ptr %buffer, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = zext i8 %22 to i32
  %shl38.7 = shl i32 %conv.7, 28
  %or39.7 = or i32 %shl38.7, %or39.6
  %add.ptr45 = getelementptr i32, ptr %call7.i.i, i32 1
  %23 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or39.7, ptr %add.ptr45, align 4
  %call53 = tail call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %call7.i.i, i32 noundef 12, ptr noundef nonnull %call7.i.i83, i32 noundef 12, i16 noundef zeroext 20491, i32 noundef 0, i32 noundef 1) #6
  br label %out54

out54:                                            ; preds = %if.end11, %do.body.out54_crit_edge, %entry.out54_crit_edge
  %err.0 = phi i32 [ %call8, %do.body.out54_crit_edge ], [ %call53, %if.end11 ], [ -12, %entry.out54_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  tail call void @kfree(ptr noundef %call7.i.i83) #6
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5e_fec_in_caps(ptr noundef %dev, i32 noundef %fec_policy) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [20 x i32], align 4
  %in = alloca [20 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %add.ptr = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 1, i32 13
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %2 = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp ne i32 %2, 0
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %out) #6
  %3 = call ptr @memset(ptr %out, i32 0, i32 80)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %in) #6
  %4 = call ptr @memset(ptr %in, i32 0, i32 80)
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %caps, align 8
  %add.ptr3 = getelementptr i32, ptr %6, i32 13
  %7 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr3, align 4
  %9 = and i32 %8, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %entry.cleanup38_crit_edge, label %lor.lhs.false

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup38

lor.lhs.false:                                    ; preds = %entry
  %add.ptr10 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 1, i32 4
  %10 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr10, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %lor.lhs.false.cleanup38_crit_edge, label %do.body

lor.lhs.false.cleanup38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup38

do.body:                                          ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %in, align 4
  %and17 = and i32 %14, -16711681
  %or = or i32 %and17, 65536
  store i32 %or, ptr %in, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 80, ptr noundef nonnull %out, i32 noundef 80, i16 noundef zeroext 20515, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool25.not = icmp eq i32 %call, 0
  br i1 %tobool25.not, label %for.cond.preheader, label %do.body.cleanup38_crit_edge

do.body.cleanup38_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup38

for.cond.preheader:                               ; preds = %do.body
  %add.ptr37.i = getelementptr inbounds i32, ptr %out, i32 6
  %add.ptr27.i = getelementptr inbounds i32, ptr %out, i32 7
  %add.ptr17.i = getelementptr inbounds i32, ptr %out, i32 4
  br label %if.end31

for.cond:                                         ; preds = %mlx5e_get_fec_cap_field.exit
  %inc = add nuw nsw i32 %i.054, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.054)
  %cmp = icmp ult i32 %i.054, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.054)
  %cmp28 = icmp ult i32 %i.054, 4
  %brmerge = select i1 %cmp28, i1 true, i1 %tobool.not
  %or.cond = select i1 %cmp, i1 %brmerge, i1 false
  br i1 %or.cond, label %for.cond.if.end31_crit_edge, label %for.cond.cleanup38.loopexit_crit_edge

for.cond.cleanup38.loopexit_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup38.loopexit

for.cond.if.end31_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end31:                                         ; preds = %for.cond.if.end31_crit_edge, %for.cond.preheader
  %i.054 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.if.end31_crit_edge ]
  %15 = zext i32 %i.054 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.054, label %if.end31.mlx5e_get_fec_cap_field.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb6.i
    i32 3, label %sw.bb11.i
    i32 4, label %sw.bb16.i
    i32 5, label %sw.bb21.i
    i32 6, label %sw.bb26.i
    i32 7, label %sw.bb31.i
    i32 8, label %sw.bb36.i
  ]

if.end31.mlx5e_get_fec_cap_field.exit_crit_edge:  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_get_fec_cap_field.exit

sw.bb.i:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr17.i, align 4
  %18 = trunc i32 %17 to i16
  %conv.i = and i16 %18, 15
  br label %mlx5e_get_fec_cap_field.exit

sw.bb1.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr17.i, align 4
  %21 = trunc i32 %20 to i16
  %22 = lshr i16 %21, 4
  %conv5.i = and i16 %22, 15
  br label %mlx5e_get_fec_cap_field.exit

sw.bb6.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr17.i, align 4
  %25 = trunc i32 %24 to i16
  %26 = lshr i16 %25, 8
  %conv10.i = and i16 %26, 15
  br label %mlx5e_get_fec_cap_field.exit

sw.bb11.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr17.i, align 4
  %shr13.i = lshr i32 %28, 16
  %29 = trunc i32 %shr13.i to i16
  %conv15.i = and i16 %29, 15
  br label %mlx5e_get_fec_cap_field.exit

sw.bb16.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr17.i, align 4
  %32 = trunc i32 %31 to i16
  %33 = lshr i16 %32, 12
  br label %mlx5e_get_fec_cap_field.exit

sw.bb21.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr27.i, align 4
  %conv25.i = trunc i32 %35 to i16
  br label %mlx5e_get_fec_cap_field.exit

sw.bb26.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr27.i, align 4
  %shr28.i = lshr i32 %37, 16
  %conv30.i = trunc i32 %shr28.i to i16
  br label %mlx5e_get_fec_cap_field.exit

sw.bb31.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %add.ptr37.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr37.i, align 4
  %conv35.i = trunc i32 %39 to i16
  br label %mlx5e_get_fec_cap_field.exit

sw.bb36.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %add.ptr37.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr37.i, align 4
  %shr38.i = lshr i32 %41, 16
  %conv40.i = trunc i32 %shr38.i to i16
  br label %mlx5e_get_fec_cap_field.exit

mlx5e_get_fec_cap_field.exit:                     ; preds = %sw.bb36.i, %sw.bb31.i, %sw.bb26.i, %sw.bb21.i, %sw.bb16.i, %sw.bb11.i, %sw.bb6.i, %sw.bb1.i, %sw.bb.i, %if.end31.mlx5e_get_fec_cap_field.exit_crit_edge
  %fec_caps.0 = phi i16 [ -1, %if.end31.mlx5e_get_fec_cap_field.exit_crit_edge ], [ %conv.i, %sw.bb.i ], [ %conv5.i, %sw.bb1.i ], [ %conv10.i, %sw.bb6.i ], [ %conv15.i, %sw.bb11.i ], [ %33, %sw.bb16.i ], [ %conv25.i, %sw.bb21.i ], [ %conv30.i, %sw.bb26.i ], [ %conv35.i, %sw.bb31.i ], [ %conv40.i, %sw.bb36.i ]
  %conv = zext i16 %fec_caps.0 to i32
  %and34 = and i32 %conv, %fec_policy
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %for.cond, label %mlx5e_get_fec_cap_field.exit.cleanup38.loopexit_crit_edge

mlx5e_get_fec_cap_field.exit.cleanup38.loopexit_crit_edge: ; preds = %mlx5e_get_fec_cap_field.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup38.loopexit

cleanup38.loopexit:                               ; preds = %mlx5e_get_fec_cap_field.exit.cleanup38.loopexit_crit_edge, %for.cond.cleanup38.loopexit_crit_edge
  %42 = xor i1 %tobool35.not, true
  br label %cleanup38

cleanup38:                                        ; preds = %cleanup38.loopexit, %do.body.cleanup38_crit_edge, %lor.lhs.false.cleanup38_crit_edge, %entry.cleanup38_crit_edge
  %retval.2 = phi i1 [ false, %lor.lhs.false.cleanup38_crit_edge ], [ false, %entry.cleanup38_crit_edge ], [ false, %do.body.cleanup38_crit_edge ], [ %42, %cleanup38.loopexit ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %in) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %out) #6
  ret i1 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_get_fec_mode(ptr noundef %dev, ptr nocapture noundef writeonly %fec_mode_active, ptr noundef %fec_configured_mode) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [20 x i32], align 4
  %in = alloca [20 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %add.ptr = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 1, i32 13
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %2 = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp ne i32 %2, 0
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %out) #6
  %3 = call ptr @memset(ptr %out, i32 0, i32 80)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %in) #6
  %4 = call ptr @memset(ptr %in, i32 0, i32 80)
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %caps, align 8
  %add.ptr3 = getelementptr i32, ptr %6, i32 13
  %7 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr3, align 4
  %9 = and i32 %8, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr10 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 1, i32 4
  %10 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr10, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  %13 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %in, align 4
  %and19 = and i32 %14, -16711681
  %or = or i32 %and19, 65536
  store i32 %or, ptr %in, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 80, ptr noundef nonnull %out, i32 noundef 80, i16 noundef zeroext 20515, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool27.not = icmp eq i32 %call, 0
  br i1 %tobool27.not, label %if.end29, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %do.body
  %add.ptr31 = getelementptr inbounds i32, ptr %out, i32 3
  %15 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr31, align 4
  %and33 = and i32 %16, 16777215
  %17 = ptrtoint ptr %fec_mode_active to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and33, ptr %fec_mode_active, align 4
  %tobool34.not = icmp eq ptr %fec_configured_mode, null
  br i1 %tobool34.not, label %if.end29.cleanup_crit_edge, label %if.end36

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %18 = ptrtoint ptr %fec_configured_mode to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %fec_configured_mode, align 2
  %add.ptr229.i = getelementptr inbounds i32, ptr %out, i32 8
  %add.ptr173.i = getelementptr inbounds i32, ptr %out, i32 9
  %add.ptr117.i = getelementptr inbounds i32, ptr %out, i32 5
  br label %if.end40

for.cond:                                         ; preds = %mlx5e_fec_admin_field.exit
  %inc = add nuw nsw i32 %i.064, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.064)
  %cmp = icmp ult i32 %i.064, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.064)
  %cmp37 = icmp ult i32 %i.064, 4
  %brmerge = select i1 %cmp37, i1 true, i1 %tobool.not
  %or.cond = select i1 %cmp, i1 %brmerge, i1 false
  br i1 %or.cond, label %for.cond.if.end40_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.if.end40_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.end40:                                         ; preds = %for.cond.if.end40_crit_edge, %if.end36
  %i.064 = phi i32 [ 0, %if.end36 ], [ %inc, %for.cond.if.end40_crit_edge ]
  %19 = zext i32 %i.064 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %i.064, label %mlx5e_fec_admin_field.exitthread-pre-split [
    i32 0, label %do.body.i
    i32 1, label %do.body13.i
    i32 2, label %do.body41.i
    i32 3, label %do.body69.i
    i32 4, label %do.body97.i
    i32 5, label %do.body125.i
    i32 6, label %do.body153.i
    i32 7, label %do.body181.i
    i32 8, label %do.body209.i
  ]

do.body.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %add.ptr117.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr117.i, align 4
  %22 = trunc i32 %21 to i16
  %conv9.i = and i16 %22, 15
  %23 = ptrtoint ptr %fec_configured_mode to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv9.i, ptr %fec_configured_mode, align 2
  br label %mlx5e_fec_admin_field.exit

do.body13.i:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %add.ptr117.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr117.i, align 4
  %26 = trunc i32 %25 to i16
  %27 = lshr i16 %26, 4
  %conv36.i = and i16 %27, 15
  %28 = ptrtoint ptr %fec_configured_mode to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv36.i, ptr %fec_configured_mode, align 2
  br label %mlx5e_fec_admin_field.exit

do.body41.i:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %add.ptr117.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr117.i, align 4
  %31 = trunc i32 %30 to i16
  %32 = lshr i16 %31, 8
  %conv64.i = and i16 %32, 15
  %33 = ptrtoint ptr %fec_configured_mode to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv64.i, ptr %fec_configured_mode, align 2
  br label %mlx5e_fec_admin_field.exit

do.body69.i:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %add.ptr117.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr117.i, align 4
  %shr90.i = lshr i32 %35, 16
  %36 = trunc i32 %shr90.i to i16
  %conv92.i = and i16 %36, 15
  %37 = ptrtoint ptr %fec_configured_mode to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv92.i, ptr %fec_configured_mode, align 2
  br label %mlx5e_fec_admin_field.exit

do.body97.i:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %add.ptr117.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr117.i, align 4
  %40 = trunc i32 %39 to i16
  %41 = lshr i16 %40, 12
  %42 = ptrtoint ptr %fec_configured_mode to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %fec_configured_mode, align 2
  br label %mlx5e_fec_admin_field.exit

do.body125.i:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %add.ptr173.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr173.i, align 4
  %conv148.i = trunc i32 %44 to i16
  %45 = ptrtoint ptr %fec_configured_mode to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv148.i, ptr %fec_configured_mode, align 2
  br label %mlx5e_fec_admin_field.exit

do.body153.i:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %add.ptr173.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr173.i, align 4
  %shr174.i = lshr i32 %47, 16
  %conv176.i = trunc i32 %shr174.i to i16
  %48 = ptrtoint ptr %fec_configured_mode to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv176.i, ptr %fec_configured_mode, align 2
  br label %mlx5e_fec_admin_field.exit

do.body181.i:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %add.ptr229.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr229.i, align 4
  %conv204.i = trunc i32 %50 to i16
  %51 = ptrtoint ptr %fec_configured_mode to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv204.i, ptr %fec_configured_mode, align 2
  br label %mlx5e_fec_admin_field.exit

do.body209.i:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %add.ptr229.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr229.i, align 4
  %shr230.i = lshr i32 %53, 16
  %conv232.i = trunc i32 %shr230.i to i16
  %54 = ptrtoint ptr %fec_configured_mode to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv232.i, ptr %fec_configured_mode, align 2
  br label %mlx5e_fec_admin_field.exit

mlx5e_fec_admin_field.exitthread-pre-split:       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %fec_configured_mode to i32
  call void @__asan_load2_noabort(i32 %55)
  %.pr = load i16, ptr %fec_configured_mode, align 2
  br label %mlx5e_fec_admin_field.exit

mlx5e_fec_admin_field.exit:                       ; preds = %mlx5e_fec_admin_field.exitthread-pre-split, %do.body209.i, %do.body181.i, %do.body153.i, %do.body125.i, %do.body97.i, %do.body69.i, %do.body41.i, %do.body13.i, %do.body.i
  %56 = phi i16 [ %.pr, %mlx5e_fec_admin_field.exitthread-pre-split ], [ %conv9.i, %do.body.i ], [ %conv36.i, %do.body13.i ], [ %conv64.i, %do.body41.i ], [ %conv92.i, %do.body69.i ], [ %41, %do.body97.i ], [ %conv148.i, %do.body125.i ], [ %conv176.i, %do.body153.i ], [ %conv204.i, %do.body181.i ], [ %conv232.i, %do.body209.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp43.not = icmp eq i16 %56, 0
  br i1 %cmp43.not, label %for.cond, label %mlx5e_fec_admin_field.exit.cleanup_crit_edge

mlx5e_fec_admin_field.exit.cleanup_crit_edge:     ; preds = %mlx5e_fec_admin_field.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_fec_admin_field.exit.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call, %do.body.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 0, %mlx5e_fec_admin_field.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %in) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %out) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_set_fec_mode(ptr noundef %dev, i16 noundef zeroext %fec_policy) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [20 x i32], align 4
  %in = alloca [20 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %add.ptr = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 1, i32 13
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %2 = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp ne i32 %2, 0
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %out) #6
  %3 = call ptr @memset(ptr %out, i32 0, i32 80)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %in) #6
  %4 = call ptr @memset(ptr %in, i32 0, i32 80)
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %caps, align 8
  %add.ptr3 = getelementptr i32, ptr %6, i32 13
  %7 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr3, align 4
  %9 = and i32 %8, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %entry.cleanup88_crit_edge, label %if.end

entry.cleanup88_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

if.end:                                           ; preds = %entry
  %add.ptr10 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 1, i32 4
  %10 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr10, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %if.end.cleanup88_crit_edge, label %if.end15

if.end.cleanup88_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

if.end15:                                         ; preds = %if.end
  %conv = zext i16 %fec_policy to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %fec_policy)
  %cmp = icmp ult i16 %fec_policy, 512
  %brmerge = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end19, label %if.end15.cleanup88_crit_edge

if.end15.cleanup88_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %fec_policy)
  %tobool21.not = icmp eq i16 %fec_policy, 0
  br i1 %tobool21.not, label %if.end19.do.body_crit_edge, label %land.lhs.true22

if.end19.do.body_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true22:                                  ; preds = %if.end19
  %call = tail call zeroext i1 @mlx5e_fec_in_caps(ptr noundef %dev, i32 noundef %conv)
  br i1 %call, label %land.lhs.true22.do.body_crit_edge, label %land.lhs.true22.cleanup88_crit_edge

land.lhs.true22.cleanup88_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

land.lhs.true22.do.body_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %land.lhs.true22.do.body_crit_edge, %if.end19.do.body_crit_edge
  %13 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %in, align 4
  %and29 = and i32 %14, -16711681
  %or = or i32 %and29, 65536
  store i32 %or, ptr %in, align 4
  %call37 = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 80, ptr noundef nonnull %out, i32 noundef 80, i16 noundef zeroext 20515, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %mlx5e_get_fec_cap_field.exit, label %do.body.cleanup88_crit_edge

do.body.cleanup88_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

mlx5e_get_fec_cap_field.exit:                     ; preds = %do.body
  %15 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %out, align 4
  %and48 = and i32 %16, -16711681
  %or51 = or i32 %and48, 65536
  store i32 %or51, ptr %out, align 4
  %add.ptr17.i = getelementptr inbounds i32, ptr %out, i32 4
  %add.ptr220.i = getelementptr inbounds i32, ptr %out, i32 8
  %add.ptr164.i = getelementptr inbounds i32, ptr %out, i32 9
  %add.ptr108.i = getelementptr inbounds i32, ptr %out, i32 5
  %17 = ptrtoint ptr %add.ptr220.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %add.ptr220.i.promoted = load i32, ptr %add.ptr220.i, align 4
  %18 = ptrtoint ptr %add.ptr164.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %add.ptr164.i.promoted = load i32, ptr %add.ptr164.i, align 4
  %19 = ptrtoint ptr %add.ptr108.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %add.ptr108.i.promoted = load i32, ptr %add.ptr108.i, align 4
  %20 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr17.i, align 4
  %22 = trunc i32 %21 to i16
  %conv.i = and i16 %22, 15
  %and76114 = and i16 %conv.i, %fec_policy
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and76114)
  %tobool77.not = icmp eq i16 %and76114, 0
  %and.i122 = and i32 %add.ptr108.i.promoted, -1048576
  %23 = and i16 %fec_policy, 15
  %narrow = select i1 %tobool77.not, i16 0, i16 %23
  %or.i = zext i16 %narrow to i32
  %24 = or i32 %and.i122, %or.i
  %25 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr17.i, align 4
  %27 = trunc i32 %26 to i16
  %28 = lshr i16 %27, 4
  %conv5.i.1 = and i16 %28, 15
  %and76114.1 = and i16 %conv5.i.1, %fec_policy
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and76114.1)
  %tobool77.not.1 = icmp eq i16 %and76114.1, 0
  %29 = shl i16 %fec_policy, 4
  %30 = and i16 %29, 240
  %narrow191 = select i1 %tobool77.not.1, i16 0, i16 %30
  %or28.i.1 = zext i16 %narrow191 to i32
  %31 = or i32 %24, %or28.i.1
  %32 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr17.i, align 4
  %34 = trunc i32 %33 to i16
  %35 = lshr i16 %34, 8
  %conv10.i.2 = and i16 %35, 15
  %and76114.2 = and i16 %conv10.i.2, %fec_policy
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and76114.2)
  %tobool77.not.2 = icmp eq i16 %and76114.2, 0
  %36 = shl i16 %fec_policy, 8
  %37 = and i16 %36, 3840
  %narrow192 = select i1 %tobool77.not.2, i16 0, i16 %37
  %or56.i.2 = zext i16 %narrow192 to i32
  %38 = or i32 %31, %or56.i.2
  %39 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr17.i, align 4
  %shr13.i.3 = lshr i32 %40, 16
  %41 = trunc i32 %shr13.i.3 to i16
  %conv15.i.3 = and i16 %41, 15
  %and76114.3 = and i16 %conv15.i.3, %fec_policy
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and76114.3)
  %tobool77.not.3 = icmp eq i16 %and76114.3, 0
  %42 = and i16 %fec_policy, 15
  %and82.i.3 = zext i16 %42 to i32
  %shl83.i.3 = shl nuw nsw i32 %and82.i.3, 16
  %or84.i.3 = select i1 %tobool77.not.3, i32 0, i32 %shl83.i.3
  %43 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr17.i, align 4
  %45 = trunc i32 %44 to i16
  %46 = lshr i16 %45, 12
  %and76114.4 = and i16 %46, %fec_policy
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and76114.4)
  %tobool77.not.4 = icmp eq i16 %and76114.4, 0
  %and109.i143.4 = or i32 %38, %or84.i.3
  %47 = shl i16 %fec_policy, 12
  %narrow193 = select i1 %tobool77.not.4, i16 0, i16 %47
  %or112.i.4 = zext i16 %narrow193 to i32
  %and109.i143.4.sink = or i32 %and109.i143.4, %or112.i.4
  %48 = ptrtoint ptr %add.ptr108.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and109.i143.4.sink, ptr %add.ptr108.i, align 4
  br i1 %tobool.not, label %mlx5e_get_fec_cap_field.exit.5, label %mlx5e_get_fec_cap_field.exit.for.end_crit_edge

mlx5e_get_fec_cap_field.exit.for.end_crit_edge:   ; preds = %mlx5e_get_fec_cap_field.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

mlx5e_get_fec_cap_field.exit.5:                   ; preds = %mlx5e_get_fec_cap_field.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr27.i = getelementptr inbounds i32, ptr %out, i32 7
  %add.ptr37.i = getelementptr inbounds i32, ptr %out, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %fec_policy)
  %cmp65.not = icmp eq i16 %fec_policy, 4
  %spec.select.5 = select i1 %cmp65.not, i16 128, i16 %fec_policy
  %49 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr27.i, align 4
  %conv25.i.5 = trunc i32 %50 to i16
  %and76114.5 = and i16 %spec.select.5, %conv25.i.5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and76114.5)
  %tobool77.not.5 = icmp eq i16 %and76114.5, 0
  %conv132.i.5 = zext i16 %spec.select.5 to i32
  %and137.i.5 = and i32 %add.ptr164.i.promoted, -65536
  %or140.i.5 = or i32 %and137.i.5, %conv132.i.5
  %and137.i149.5 = and i32 %add.ptr164.i.promoted, -65536
  %51 = select i1 %tobool77.not.5, i32 %and137.i149.5, i32 %or140.i.5
  %52 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr27.i, align 4
  %shr28.i.6 = lshr i32 %53, 16
  %conv30.i.6 = trunc i32 %shr28.i.6 to i16
  %and76114.6 = and i16 %spec.select.5, %conv30.i.6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and76114.6)
  %tobool77.not.6 = icmp eq i16 %and76114.6, 0
  %conv160.i.6 = zext i16 %spec.select.5 to i32
  %and165.i.6 = and i32 %51, 65535
  %shl167.i.6 = shl nuw i32 %conv160.i.6, 16
  %or168.i.6 = or i32 %and165.i.6, %shl167.i.6
  %and165.i154.6 = and i32 %51, 65535
  %or168.i.6.sink = select i1 %tobool77.not.6, i32 %and165.i154.6, i32 %or168.i.6
  %54 = ptrtoint ptr %add.ptr164.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or168.i.6.sink, ptr %add.ptr164.i, align 4
  %55 = ptrtoint ptr %add.ptr37.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr37.i, align 4
  %conv35.i.7 = trunc i32 %56 to i16
  %and76114.7 = and i16 %spec.select.5, %conv35.i.7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and76114.7)
  %tobool77.not.7 = icmp eq i16 %and76114.7, 0
  %conv188.i.7 = zext i16 %spec.select.5 to i32
  %and193.i.7 = and i32 %add.ptr220.i.promoted, -65536
  %or196.i.7 = or i32 %and193.i.7, %conv188.i.7
  %and193.i160.7 = and i32 %add.ptr220.i.promoted, -65536
  %57 = select i1 %tobool77.not.7, i32 %and193.i160.7, i32 %or196.i.7
  %58 = ptrtoint ptr %add.ptr37.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr37.i, align 4
  %shr38.i.8 = lshr i32 %59, 16
  %conv40.i.8 = trunc i32 %shr38.i.8 to i16
  %and76114.8 = and i16 %spec.select.5, %conv40.i.8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and76114.8)
  %tobool77.not.8 = icmp eq i16 %and76114.8, 0
  %conv216.i.8 = zext i16 %spec.select.5 to i32
  %and221.i.8 = and i32 %57, 65535
  %shl223.i.8 = shl nuw i32 %conv216.i.8, 16
  %or224.i.8 = or i32 %and221.i.8, %shl223.i.8
  %and221.i165.8 = and i32 %57, 65535
  %or224.i.8.sink = select i1 %tobool77.not.8, i32 %and221.i165.8, i32 %or224.i.8
  %60 = ptrtoint ptr %add.ptr220.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or224.i.8.sink, ptr %add.ptr220.i, align 4
  br label %for.end

for.end:                                          ; preds = %mlx5e_get_fec_cap_field.exit.5, %mlx5e_get_fec_cap_field.exit.for.end_crit_edge
  %call87 = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %out, i32 noundef 80, ptr noundef nonnull %out, i32 noundef 80, i16 noundef zeroext 20515, i32 noundef 0, i32 noundef 1) #6
  br label %cleanup88

cleanup88:                                        ; preds = %for.end, %do.body.cleanup88_crit_edge, %land.lhs.true22.cleanup88_crit_edge, %if.end15.cleanup88_crit_edge, %if.end.cleanup88_crit_edge, %entry.cleanup88_crit_edge
  %retval.0 = phi i32 [ %call87, %for.end ], [ -95, %entry.cleanup88_crit_edge ], [ -95, %if.end.cleanup88_crit_edge ], [ -95, %if.end15.cleanup88_crit_edge ], [ -95, %land.lhs.true22.cleanup88_crit_edge ], [ %call37, %do.body.cleanup88_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %in) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %out) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8}
!llvm.named.register.sp = !{!10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/port.c", i32 315, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mlx5e_port_query_priority2buffer.__UNIQUE_ID_ddebug644, !1, !"__UNIQUE_ID_ddebug644", i1 false, i1 false}
!6 = !{ptr @mlx5e_ext_link_speed, !7, !"mlx5e_ext_link_speed", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/port.c", i32 66, i32 18}
!8 = !{ptr @mlx5e_link_speed, !9, !"mlx5e_link_speed", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/port.c", i32 36, i32 18}
!10 = !{!"sp"}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 2148742409, i64 2148742414, i64 2148742427, i64 2148742471, i64 2148742505, i64 2148742526}
