; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/fpga/cmd.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/fpga/cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.151, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
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
%struct.anon.128 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.mlx5_fpga_query = type { i32, i32, i32 }
%struct.mlx5_fpga_qp_counters = type { i64, i64, i64, i64, i64 }

@mlx5_fpga_sbu_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:%d:(pid %d): Not enough buffer %u for FPGA SBU caps %u\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5_fpga_sbu_caps\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/fpga/cmd.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_fpga_sbu_caps._entry_ptr = internal global ptr @mlx5_fpga_sbu_caps._entry, section ".printk_index", align 4
@mlx5_fpga_sbu_caps._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 113, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s:%d:(pid %d): Error reading FPGA SBU caps %u bytes at address 0x%llx: %d\00", [53 x i8] zeroinitializer }, align 32
@mlx5_fpga_sbu_caps._entry_ptr.7 = internal global ptr @mlx5_fpga_sbu_caps._entry.5, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 101, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [54 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/fpga/cmd.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 112, i32 4 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @mlx5_fpga_sbu_caps._entry, ptr @mlx5_fpga_sbu_caps._entry.5, ptr @mlx5_fpga_sbu_caps._entry_ptr, ptr @mlx5_fpga_sbu_caps._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_sbu_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_sbu_caps._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fpga_access_reg(ptr noundef %dev, i8 noundef zeroext %size, i64 noundef %addr, ptr nocapture noundef %buf, i1 noundef zeroext %write) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [68 x i32], align 4
  %out = alloca [68 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %in) #6
  %0 = call ptr @memset(ptr %in, i32 0, i32 272)
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %out) #6
  %1 = call ptr @memset(ptr %out, i32 255, i32 272)
  %conv = zext i8 %size to i32
  %and = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and1 = and i64 %addr, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp ne i64 %and1, 0
  %or.cond.not = or i1 %tobool.not, %tobool2.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %size)
  %cmp = icmp ugt i8 %size, 64
  %or.cond61 = or i1 %cmp, %or.cond.not
  br i1 %or.cond61, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i32, ptr %in, i32 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and11 = and i32 %3, -65536
  %or = or i32 %and11, %conv
  store i32 %or, ptr %add.ptr, align 4
  %add.ptr26 = getelementptr inbounds i64, ptr %in, i32 1
  %4 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %addr, ptr %add.ptr26, align 8
  br i1 %write, label %if.then32, label %do.body.if.end36_crit_edge

do.body.if.end36_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr34 = getelementptr inbounds i8, ptr %in, i32 16
  %5 = call ptr @memcpy(ptr %add.ptr34, ptr %buf, i32 %conv)
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %do.body.if.end36_crit_edge
  %conv40 = zext i1 %write to i32
  %call = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 272, ptr noundef nonnull %out, i32 noundef 272, i16 noundef zeroext 16420, i32 noundef 0, i32 noundef %conv40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool41.not = icmp ne i32 %call, 0
  %brmerge = or i1 %tobool41.not, %write
  br i1 %brmerge, label %if.end36.cleanup_crit_edge, label %if.then45

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr47 = getelementptr inbounds i8, ptr %out, i32 16
  %6 = call ptr @memcpy(ptr %buf, ptr %add.ptr47, i32 %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end36.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end36.cleanup_crit_edge ], [ 0, %if.then45 ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %out) #6
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_access_reg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fpga_caps(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %in) #6
  %0 = call ptr @memset(ptr %in, i32 0, i32 256)
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 3
  %call = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 256, ptr noundef %fpga, i32 noundef 256, i16 noundef zeroext 16418, i32 noundef 0, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fpga_ctrl_op(ptr noundef %dev, i8 noundef zeroext %op) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #6
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #6
  %conv = zext i8 %op to i32
  %shl = shl nuw nsw i32 %conv, 16
  %2 = call ptr @memset(ptr %out, i32 255, i32 16)
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl, ptr %in, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16, i16 noundef zeroext 16419, i32 noundef 0, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fpga_sbu_caps(ptr noundef %dev, ptr nocapture noundef writeonly %caps, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [68 x i32], align 4
  %out.i = alloca [68 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 3, i32 31
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %and = and i32 %1, 65535
  %add.ptr5 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 3, i32 32
  %2 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %size)
  %cmp = icmp ugt i32 %and, %size
  br i1 %cmp, label %do.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6.not50 = icmp eq i32 %and, 0
  br i1 %cmp6.not50, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %add.ptr.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %add.ptr26.i = getelementptr inbounds i64, ptr %in.i, i32 1
  %add.ptr47.i = getelementptr inbounds i8, ptr %out.i, i32 16
  br label %while.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 102, i32 noundef %11, i32 noundef %size, i32 noundef %and) #9
  br label %cleanup

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.body.lr.ph
  %addr.053 = phi i64 [ %3, %while.body.lr.ph ], [ %add, %if.end17.while.body_crit_edge ]
  %cap_size.052 = phi i32 [ %and, %while.body.lr.ph ], [ %sub, %if.end17.while.body_crit_edge ]
  %caps.addr.051 = phi ptr [ %caps, %while.body.lr.ph ], [ %add.ptr19, %if.end17.while.body_crit_edge ]
  %12 = call i32 @llvm.umin.i32(i32 %cap_size.052, i32 64)
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %in.i) #6
  %13 = call ptr @memset(ptr %in.i, i32 0, i32 272)
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %out.i) #6
  %14 = call ptr @memset(ptr %out.i, i32 255, i32 272)
  %and.i44 = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %tobool.not.i = icmp ne i32 %and.i44, 0
  %and1.i = and i64 %addr.053, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i = icmp ne i64 %and1.i, 0
  %or.cond.not.i = or i1 %tobool.not.i, %tobool2.not.i
  br i1 %or.cond.not.i, label %while.body.do.end12_crit_edge, label %do.body.i

while.body.do.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.body.i:                                        ; preds = %while.body
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 4
  %and11.i = and i32 %16, -65536
  %or.i = or i32 %and11.i, %12
  store i32 %or.i, ptr %add.ptr.i, align 4
  %17 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %addr.053, ptr %add.ptr26.i, align 8
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 272, ptr noundef nonnull %out.i, i32 noundef 272, i16 noundef zeroext 16420, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool41.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool41.not.i.not, label %if.end17, label %do.body.i.do.end12_crit_edge

do.body.i.do.end12_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end12:                                         ; preds = %do.body.i.do.end12_crit_edge, %while.body.do.end12_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %do.body.i.do.end12_crit_edge ], [ -22, %while.body.do.end12_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %out.i) #6
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in.i) #6
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %20 = call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i45 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i45 to ptr
  %task15 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task15, align 8
  %pid16 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid16, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef %25, i32 noundef %12, i64 noundef %addr.053, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end17:                                         ; preds = %do.body.i
  %26 = call ptr @memcpy(ptr %caps.addr.051, ptr %add.ptr47.i, i32 %12)
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %out.i) #6
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in.i) #6
  %sub = sub i32 %cap_size.052, %12
  %conv18 = zext i32 %12 to i64
  %add = add i64 %addr.053, %conv18
  %add.ptr19 = getelementptr i8, ptr %caps.addr.051, i32 %12
  %cmp6.not = icmp eq i32 %sub, 0
  br i1 %cmp6.not, label %if.end17.cleanup_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end17.cleanup_crit_edge, %do.end12, %do.end, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i.ph, %do.end12 ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fpga_query(ptr noundef %dev, ptr nocapture noundef writeonly %query) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #6
  %0 = call ptr @memset(ptr %in, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #6
  %1 = call ptr @memset(ptr %out, i32 255, i32 16)
  %call = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16, i16 noundef zeroext 16419, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = getelementptr inbounds [4 x i32], ptr %out, i32 0, i32 1
  %3 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %out, align 4
  %and = and i32 %4, 255
  %status = getelementptr inbounds %struct.mlx5_fpga_query, ptr %query, i32 0, i32 2
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %status, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %2, align 4
  %shr5 = lshr i32 %7, 16
  %and6 = and i32 %shr5, 255
  %8 = ptrtoint ptr %query to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and6, ptr %query, align 4
  %and10 = and i32 %7, 255
  %oper_image = getelementptr inbounds %struct.mlx5_fpga_query, ptr %query, i32 0, i32 1
  %9 = ptrtoint ptr %oper_image to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and10, ptr %oper_image, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fpga_create_qp(ptr noundef %dev, ptr nocapture noundef %fpga_qpc, ptr nocapture noundef writeonly %fpga_qpn) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [28 x i32], align 4
  %in = alloca [28 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %out) #6
  %0 = call ptr @memset(ptr %out, i32 0, i32 112)
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %in) #6
  %1 = getelementptr inbounds i8, ptr %in, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 157286400, ptr %in, align 4
  %add.ptr8 = getelementptr inbounds i8, ptr %in, i32 16
  %4 = call ptr @memcpy(ptr %add.ptr8, ptr %fpga_qpc, i32 96)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 112, ptr noundef nonnull %out, i32 noundef 112) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr12 = getelementptr inbounds i8, ptr %out, i32 16
  %5 = call ptr @memcpy(ptr %fpga_qpc, ptr %add.ptr12, i32 96)
  %add.ptr14 = getelementptr inbounds i32, ptr %out, i32 2
  %6 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr14, align 4
  %and15 = and i32 %7, 16777215
  %8 = ptrtoint ptr %fpga_qpn to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and15, ptr %fpga_qpn, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %in) #6
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %out) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fpga_modify_qp(ptr noundef %dev, i32 noundef %fpga_qpn, i32 noundef %fields, ptr nocapture noundef readonly %fpga_qpc) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [28 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %in) #6
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 157351936, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 3
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %fields, ptr %add.ptr13, align 4
  %add.ptr28 = getelementptr inbounds i32, ptr %in, i32 2
  %and30 = and i32 %fpga_qpn, 16777215
  %4 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and30, ptr %add.ptr28, align 4
  %add.ptr38 = getelementptr inbounds i8, ptr %in, i32 16
  %5 = call ptr @memcpy(ptr %add.ptr38, ptr %fpga_qpc, i32 96)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #6
  %6 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 112, ptr noundef nonnull %_out, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #6
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %in) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fpga_query_qp(ptr noundef %dev, i32 noundef %fpga_qpn, ptr nocapture noundef writeonly %fpga_qpc) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [28 x i32], align 4
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %out) #6
  %0 = call ptr @memset(ptr %out, i32 0, i32 112)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #6
  %1 = getelementptr inbounds i8, ptr %in, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 157417472, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %fpga_qpn, 16777215
  %4 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and15, ptr %add.ptr13, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 112) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr25 = getelementptr inbounds i8, ptr %out, i32 16
  %5 = call ptr @memcpy(ptr %fpga_qpc, ptr %add.ptr25, i32 96)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #6
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %out) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fpga_destroy_qp(ptr noundef %dev, i32 noundef %fpga_qpn) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #6
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 157483008, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %fpga_qpn, 16777215
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and15, ptr %add.ptr13, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #6
  %4 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fpga_query_qp_counters(ptr noundef %dev, i32 noundef %fpga_qpn, i1 noundef zeroext %clear, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [28 x i32], align 4
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %out) #6
  %0 = call ptr @memset(ptr %out, i32 0, i32 112)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #6
  %1 = getelementptr inbounds i8, ptr %in, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 157548544, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %shl16 = select i1 %clear, i32 -2147483648, i32 0
  %and30 = and i32 %fpga_qpn, 16777215
  %or17 = or i32 %shl16, %and30
  %4 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or17, ptr %add.ptr13, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 112) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool39.not = icmp eq i32 %call, 0
  br i1 %tobool39.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr41 = getelementptr inbounds i64, ptr %out, i32 2
  %5 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr41, align 8
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %data, align 8
  %add.ptr43 = getelementptr inbounds i64, ptr %out, i32 3
  %8 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr43, align 8
  %rx_send_packets = getelementptr inbounds %struct.mlx5_fpga_qp_counters, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %rx_send_packets to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %rx_send_packets, align 8
  %add.ptr45 = getelementptr inbounds i64, ptr %out, i32 4
  %11 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr45, align 8
  %tx_ack_packets = getelementptr inbounds %struct.mlx5_fpga_qp_counters, ptr %data, i32 0, i32 2
  %13 = ptrtoint ptr %tx_ack_packets to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %tx_ack_packets, align 8
  %add.ptr47 = getelementptr inbounds i64, ptr %out, i32 5
  %14 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr47, align 8
  %tx_send_packets = getelementptr inbounds %struct.mlx5_fpga_qp_counters, ptr %data, i32 0, i32 3
  %16 = ptrtoint ptr %tx_send_packets to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %tx_send_packets, align 8
  %add.ptr49 = getelementptr inbounds i64, ptr %out, i32 6
  %17 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %add.ptr49, align 8
  %rx_total_drop = getelementptr inbounds %struct.mlx5_fpga_qp_counters, ptr %data, i32 0, i32 4
  %19 = ptrtoint ptr %rx_total_drop to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %rx_total_drop, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #6
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %out) #6
  ret i32 %call
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11}
!llvm.named.register.sp = !{!12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/cmd.c", i32 101, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_fpga_sbu_caps._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_fpga_sbu_caps._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/cmd.c", i32 112, i32 4}
!10 = !{ptr @mlx5_fpga_sbu_caps._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mlx5_fpga_sbu_caps._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{!"sp"}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
