; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/pool.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/xsk/pool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xsk_buff_pool = type { ptr, ptr, %struct.list_head, %struct.spinlock, %struct.refcount_struct, ptr, %struct.work_struct, %struct.list_head, i32, i16, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, %struct.spinlock, [0 x ptr], [16 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mlx5e_xsk_param = type { i16, i16 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.199, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.201, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.199 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.200] }
%struct.anon.200 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.178 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.178 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.201 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.198, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.198 = type { ptr }
%struct.xdp_umem = type { ptr, i64, i32, i32, i32, i32, ptr, %struct.refcount_struct, i8, i8, ptr, i32, %struct.list_head, %struct.work_struct }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5e_build_xsk_param(ptr nocapture noundef readonly %pool, ptr nocapture noundef writeonly %xsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %headroom.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 19
  %0 = ptrtoint ptr %headroom.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %headroom.i, align 4
  %2 = trunc i32 %1 to i16
  %conv = add i16 %2, 256
  %3 = ptrtoint ptr %xsk to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %xsk, align 2
  %chunk_size.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 20
  %4 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chunk_size.i, align 16
  %conv2 = trunc i32 %5 to i16
  %chunk_size = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %6 = ptrtoint ptr %chunk_size to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv2, ptr %chunk_size, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_xsk_setup_pool(ptr noundef %dev, ptr noundef %pool, i16 noundef zeroext %qid) local_unnamed_addr #1 align 64 {
entry:
  %xsk.i.i = alloca %struct.mlx5e_xsk_param, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %params1 = getelementptr i8, ptr %dev, i32 6028
  %num_channels.i = getelementptr i8, ptr %dev, i32 6032
  %0 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_channels.i, align 4
  %conv.i = zext i16 %1 to i32
  %conv1.i = zext i16 %qid to i32
  %sub.i = sub nsw i32 %conv1.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %2 = icmp ult i32 %sub.i, %conv.i
  br i1 %2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv5.i = trunc i32 %sub.i to i16
  %tobool5.not = icmp eq ptr %pool, null
  %state_lock.i13 = getelementptr i8, ptr %dev, i32 2420
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i13, i32 noundef 0) #5
  %channels.i.i14 = getelementptr i8, ptr %dev, i32 6016
  br i1 %tobool5.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xsk.i.i) #5
  %3 = ptrtoint ptr %xsk.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %xsk.i.i, align 2, !annotation !9
  %4 = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %4, align 2, !annotation !9
  %xsk4.i.i = getelementptr i8, ptr %dev, i32 30260
  %6 = ptrtoint ptr %xsk4.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xsk4.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i.i.i, label %cond.true.if.end.i.i_crit_edge, label %if.end.i.i.i

cond.true.if.end.i.i_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %cond.true
  %8 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %conv5.i)
  %cmp.not.i.i.i = icmp ugt i16 %9, %conv5.i
  br i1 %cmp.not.i.i.i, label %mlx5e_xsk_get_pool.exit.i.i, label %if.end.i.i.i.if.end.i.i_crit_edge, !prof !10

if.end.i.i.i.if.end.i.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

mlx5e_xsk_get_pool.exit.i.i:                      ; preds = %if.end.i.i.i
  %conv.i.i.i = and i32 %sub.i, 65535
  %arrayidx.i.i.i = getelementptr ptr, ptr %7, i32 %conv.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %mlx5e_xsk_get_pool.exit.i.i.if.end.i.i_crit_edge, label %mlx5e_xsk_get_pool.exit.i.i.mlx5e_xsk_enable_pool.exit_crit_edge, !prof !10

mlx5e_xsk_get_pool.exit.i.i.mlx5e_xsk_enable_pool.exit_crit_edge: ; preds = %mlx5e_xsk_get_pool.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_xsk_enable_pool.exit

mlx5e_xsk_get_pool.exit.i.i.if.end.i.i_crit_edge: ; preds = %mlx5e_xsk_get_pool.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %mlx5e_xsk_get_pool.exit.i.i.if.end.i.i_crit_edge, %if.end.i.i.i.if.end.i.i_crit_edge, %cond.true.if.end.i.i_crit_edge
  %headroom.i.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 19
  %12 = ptrtoint ptr %headroom.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %headroom.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i.i.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i.i, 65536
  br i1 %cmp.i.i.i, label %mlx5e_xsk_is_pool_sane.exit.i.i, label %if.end.i.i.mlx5e_xsk_enable_pool.exit_crit_edge, !prof !11

if.end.i.i.mlx5e_xsk_enable_pool.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_xsk_enable_pool.exit

mlx5e_xsk_is_pool_sane.exit.i.i:                  ; preds = %if.end.i.i
  %chunk_size.i.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 20
  %14 = ptrtoint ptr %chunk_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chunk_size.i.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %15)
  %cmp2.i.i.i = icmp ult i32 %15, 65536
  br i1 %cmp2.i.i.i, label %if.end17.i.i, label %mlx5e_xsk_is_pool_sane.exit.i.i.mlx5e_xsk_enable_pool.exit_crit_edge, !prof !10

mlx5e_xsk_is_pool_sane.exit.i.i.mlx5e_xsk_enable_pool.exit_crit_edge: ; preds = %mlx5e_xsk_is_pool_sane.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_xsk_enable_pool.exit

if.end17.i.i:                                     ; preds = %mlx5e_xsk_is_pool_sane.exit.i.i
  %mdev.i.i.i = getelementptr i8, ptr %dev, i32 11328
  %16 = ptrtoint ptr %mdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdev.i.i.i, align 64
  %pdev.i.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %pdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i.i.i.i, align 8
  %dev1.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %umem1.i.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 5
  %20 = ptrtoint ptr %umem1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %umem1.i.i.i.i, align 64
  %pgs.i.i.i.i = getelementptr inbounds %struct.xdp_umem, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %pgs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pgs.i.i.i.i, align 4
  %npgs.i.i.i.i = getelementptr inbounds %struct.xdp_umem, ptr %21, i32 0, i32 5
  %24 = ptrtoint ptr %npgs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %npgs.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @xp_dma_map(ptr noundef nonnull %pool, ptr noundef %dev1.i.i.i.i, i32 noundef 32, ptr noundef %23, i32 noundef %25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool19.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end27.i.i, label %if.end17.i.i.mlx5e_xsk_enable_pool.exit_crit_edge, !prof !10

if.end17.i.i.mlx5e_xsk_enable_pool.exit_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_xsk_enable_pool.exit

if.end27.i.i:                                     ; preds = %if.end17.i.i
  %26 = ptrtoint ptr %xsk4.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xsk4.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %if.end27.i.i.if.end38.i.i_crit_edge

if.end27.i.i.if.end38.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i.i

if.then.i.i.i.i:                                  ; preds = %if.end27.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 512) #8
  %29 = ptrtoint ptr %xsk4.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i.i.i.i.i.i, ptr %xsk4.i.i, align 4
  %tobool3.not.i.i.i.i = icmp eq ptr %call7.i.i.i.i.i.i.i, null
  br i1 %tobool3.not.i.i.i.i, label %if.then.i.i.i.i.err_unmap_pool.i.i_crit_edge, label %if.then.i.i.i.i.if.end38.i.i_crit_edge, !prof !12

if.then.i.i.i.i.if.end38.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i.i

if.then.i.i.i.i.err_unmap_pool.i.i_crit_edge:     ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unmap_pool.i.i

if.end38.i.i:                                     ; preds = %if.then.i.i.i.i.if.end38.i.i_crit_edge, %if.end27.i.i.if.end38.i.i_crit_edge
  %refcnt.i.i.i.i = getelementptr i8, ptr %dev, i32 30264
  %30 = ptrtoint ptr %refcnt.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %refcnt.i.i.i.i, align 4
  %inc.i.i.i.i = add i16 %31, 1
  store i16 %inc.i.i.i.i, ptr %refcnt.i.i.i.i, align 4
  %ever_used.i.i.i.i = getelementptr i8, ptr %dev, i32 30266
  %32 = ptrtoint ptr %ever_used.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %ever_used.i.i.i.i, align 2
  %33 = ptrtoint ptr %xsk4.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xsk4.i.i, align 4
  %idxprom.i.i.i = and i32 %sub.i, 65535
  %arrayidx.i107.i.i = getelementptr ptr, ptr %34, i32 %idxprom.i.i.i
  %35 = ptrtoint ptr %arrayidx.i107.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %pool, ptr %arrayidx.i107.i.i, align 4
  %36 = ptrtoint ptr %headroom.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %headroom.i.i.i.i, align 4
  %38 = trunc i32 %37 to i16
  %conv.i111.i.i = add i16 %38, 256
  %39 = ptrtoint ptr %xsk.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i111.i.i, ptr %xsk.i.i, align 2
  %40 = ptrtoint ptr %chunk_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chunk_size.i.i.i.i, align 16
  %conv2.i.i.i = trunc i32 %41 to i16
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv2.i.i.i, ptr %4, align 2
  %state.i.i = getelementptr i8, ptr %dev, i32 2416
  %43 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool40.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool40.not.i.i, label %if.end38.i.i.validate_closed.i.i_crit_edge, label %if.end42.i.i

if.end38.i.i.validate_closed.i.i_crit_edge:       ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %validate_closed.i.i

if.end42.i.i:                                     ; preds = %if.end38.i.i
  %xdp_prog.i.i = getelementptr i8, ptr %dev, i32 6152
  %45 = ptrtoint ptr %xdp_prog.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %xdp_prog.i.i, align 4
  %tobool43.not.i.i = icmp eq ptr %46, null
  br i1 %tobool43.not.i.i, label %if.end42.i.i.validate_closed.i.i_crit_edge, label %if.end45.i.i

if.end42.i.i.validate_closed.i.i_crit_edge:       ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %validate_closed.i.i

if.end45.i.i:                                     ; preds = %if.end42.i.i
  %47 = ptrtoint ptr %channels.i.i14 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %channels.i.i14, align 128
  %arrayidx.i.i = getelementptr ptr, ptr %48, i32 %idxprom.i.i.i
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i, align 4
  %call48.i.i = call i32 @mlx5e_open_xsk(ptr noundef %add.ptr.i, ptr noundef %params1, ptr noundef nonnull %xsk.i.i, ptr noundef nonnull %pool, ptr noundef %50) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i)
  %tobool49.not.i.i = icmp eq i32 %call48.i.i, 0
  br i1 %tobool49.not.i.i, label %if.end57.i.i, label %if.end45.i.i.err_remove_pool.i.i_crit_edge, !prof !10

if.end45.i.i.err_remove_pool.i.i_crit_edge:       ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_remove_pool.i.i

if.end57.i.i:                                     ; preds = %if.end45.i.i
  call void @mlx5e_activate_xsk(ptr noundef %50) #5
  %rx_res.i.i = getelementptr i8, ptr %dev, i32 6236
  %51 = ptrtoint ptr %rx_res.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rx_res.i.i, align 4
  %call59.i.i = call i32 @mlx5e_rx_res_xsk_activate(ptr noundef %52, ptr noundef %channels.i.i14, i32 noundef %idxprom.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i.i)
  %tobool60.not.i.i = icmp eq i32 %call59.i.i, 0
  br i1 %tobool60.not.i.i, label %if.end57.i.i.mlx5e_xsk_enable_pool.exit_crit_edge, label %err_deactivate.i.i, !prof !10

if.end57.i.i.mlx5e_xsk_enable_pool.exit_crit_edge: ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_xsk_enable_pool.exit

err_deactivate.i.i:                               ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @mlx5e_deactivate_xsk(ptr noundef %50) #5
  call void @mlx5e_close_xsk(ptr noundef %50) #5
  br label %err_remove_pool.i.i

err_remove_pool.i.i:                              ; preds = %validate_closed.i.i.err_remove_pool.i.i_crit_edge, %err_deactivate.i.i, %if.end45.i.i.err_remove_pool.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call48.i.i, %if.end45.i.i.err_remove_pool.i.i_crit_edge ], [ %call59.i.i, %err_deactivate.i.i ], [ -22, %validate_closed.i.i.err_remove_pool.i.i_crit_edge ]
  %53 = ptrtoint ptr %xsk4.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xsk4.i.i, align 4
  %arrayidx.i114.i.i = getelementptr ptr, ptr %54, i32 %idxprom.i.i.i
  %55 = ptrtoint ptr %arrayidx.i114.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %arrayidx.i114.i.i, align 4
  %56 = ptrtoint ptr %refcnt.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %refcnt.i.i.i.i, align 4
  %dec.i.i.i.i = add i16 %57, -1
  store i16 %dec.i.i.i.i, ptr %refcnt.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.i.i.i.i)
  %tobool.not.i.i116.i.i = icmp eq i16 %dec.i.i.i.i, 0
  br i1 %tobool.not.i.i116.i.i, label %if.then.i.i117.i.i, label %err_remove_pool.i.i.err_unmap_pool.i.i_crit_edge

err_remove_pool.i.i.err_unmap_pool.i.i_crit_edge: ; preds = %err_remove_pool.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unmap_pool.i.i

if.then.i.i117.i.i:                               ; preds = %err_remove_pool.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %xsk4.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %xsk4.i.i, align 4
  call void @kfree(ptr noundef %59) #5
  %60 = ptrtoint ptr %xsk4.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %xsk4.i.i, align 4
  br label %err_unmap_pool.i.i

err_unmap_pool.i.i:                               ; preds = %if.then.i.i117.i.i, %err_remove_pool.i.i.err_unmap_pool.i.i_crit_edge, %if.then.i.i.i.i.err_unmap_pool.i.i_crit_edge
  %err.1.i.i = phi i32 [ -12, %if.then.i.i.i.i.err_unmap_pool.i.i_crit_edge ], [ %err.0.i.i, %err_remove_pool.i.i.err_unmap_pool.i.i_crit_edge ], [ %err.0.i.i, %if.then.i.i117.i.i ]
  call void @xp_dma_unmap(ptr noundef nonnull %pool, i32 noundef 32) #5
  br label %mlx5e_xsk_enable_pool.exit

validate_closed.i.i:                              ; preds = %if.end42.i.i.validate_closed.i.i_crit_edge, %if.end38.i.i.validate_closed.i.i_crit_edge
  %61 = ptrtoint ptr %mdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mdev.i.i.i, align 64
  %call70.i.i = call zeroext i1 @mlx5e_validate_xsk_param(ptr noundef %params1, ptr noundef nonnull %xsk.i.i, ptr noundef %62) #5
  br i1 %call70.i.i, label %validate_closed.i.i.mlx5e_xsk_enable_pool.exit_crit_edge, label %validate_closed.i.i.err_remove_pool.i.i_crit_edge

validate_closed.i.i.err_remove_pool.i.i_crit_edge: ; preds = %validate_closed.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_remove_pool.i.i

validate_closed.i.i.mlx5e_xsk_enable_pool.exit_crit_edge: ; preds = %validate_closed.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_xsk_enable_pool.exit

mlx5e_xsk_enable_pool.exit:                       ; preds = %validate_closed.i.i.mlx5e_xsk_enable_pool.exit_crit_edge, %err_unmap_pool.i.i, %if.end57.i.i.mlx5e_xsk_enable_pool.exit_crit_edge, %if.end17.i.i.mlx5e_xsk_enable_pool.exit_crit_edge, %mlx5e_xsk_is_pool_sane.exit.i.i.mlx5e_xsk_enable_pool.exit_crit_edge, %if.end.i.i.mlx5e_xsk_enable_pool.exit_crit_edge, %mlx5e_xsk_get_pool.exit.i.i.mlx5e_xsk_enable_pool.exit_crit_edge
  %retval.0.i.i = phi i32 [ %err.1.i.i, %err_unmap_pool.i.i ], [ -16, %mlx5e_xsk_get_pool.exit.i.i.mlx5e_xsk_enable_pool.exit_crit_edge ], [ -22, %mlx5e_xsk_is_pool_sane.exit.i.i.mlx5e_xsk_enable_pool.exit_crit_edge ], [ %call.i.i.i.i, %if.end17.i.i.mlx5e_xsk_enable_pool.exit_crit_edge ], [ 0, %if.end57.i.i.mlx5e_xsk_enable_pool.exit_crit_edge ], [ 0, %validate_closed.i.i.mlx5e_xsk_enable_pool.exit_crit_edge ], [ -22, %if.end.i.i.mlx5e_xsk_enable_pool.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xsk.i.i) #5
  call void @mutex_unlock(ptr noundef %state_lock.i13) #5
  br label %cleanup

cond.false:                                       ; preds = %if.end
  %xsk.i.i15 = getelementptr i8, ptr %dev, i32 30260
  %63 = ptrtoint ptr %xsk.i.i15 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %xsk.i.i15, align 4
  %tobool1.not.i.i.i16 = icmp eq ptr %64, null
  br i1 %tobool1.not.i.i.i16, label %cond.false.mlx5e_xsk_disable_pool.exit_crit_edge, label %if.end.i.i.i19

cond.false.mlx5e_xsk_disable_pool.exit_crit_edge: ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_xsk_disable_pool.exit

if.end.i.i.i19:                                   ; preds = %cond.false
  %65 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %66, i16 %conv5.i)
  %cmp.not.i.i.i18 = icmp ugt i16 %66, %conv5.i
  br i1 %cmp.not.i.i.i18, label %mlx5e_xsk_get_pool.exit.i.i23, label %if.end.i.i.i19.mlx5e_xsk_disable_pool.exit_crit_edge, !prof !10

if.end.i.i.i19.mlx5e_xsk_disable_pool.exit_crit_edge: ; preds = %if.end.i.i.i19
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_xsk_disable_pool.exit

mlx5e_xsk_get_pool.exit.i.i23:                    ; preds = %if.end.i.i.i19
  %conv.i.i.i20 = and i32 %sub.i, 65535
  %arrayidx.i.i.i21 = getelementptr ptr, ptr %64, i32 %conv.i.i.i20
  %67 = ptrtoint ptr %arrayidx.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i.i.i21, align 4
  %tobool.not.i.i22 = icmp eq ptr %68, null
  br i1 %tobool.not.i.i22, label %mlx5e_xsk_get_pool.exit.i.i23.mlx5e_xsk_disable_pool.exit_crit_edge, label %if.end.i.i26, !prof !12

mlx5e_xsk_get_pool.exit.i.i23.mlx5e_xsk_disable_pool.exit_crit_edge: ; preds = %mlx5e_xsk_get_pool.exit.i.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_xsk_disable_pool.exit

if.end.i.i26:                                     ; preds = %mlx5e_xsk_get_pool.exit.i.i23
  %state.i.i24 = getelementptr i8, ptr %dev, i32 2416
  %69 = ptrtoint ptr %state.i.i24 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %state.i.i24, align 4
  %and1.i.i.i25 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i25)
  %tobool5.not.i.i = icmp eq i32 %and1.i.i.i25, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i26.remove_pool.i.i_crit_edge, label %if.end7.i.i

if.end.i.i26.remove_pool.i.i_crit_edge:           ; preds = %if.end.i.i26
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_pool.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i26
  %xdp_prog.i.i27 = getelementptr i8, ptr %dev, i32 6152
  %71 = ptrtoint ptr %xdp_prog.i.i27 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %xdp_prog.i.i27, align 4
  %tobool10.not.i.i = icmp eq ptr %72, null
  br i1 %tobool10.not.i.i, label %if.end7.i.i.remove_pool.i.i_crit_edge, label %if.end12.i.i

if.end7.i.i.remove_pool.i.i_crit_edge:            ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_pool.i.i

if.end12.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %channels.i.i14 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %channels.i.i14, align 128
  %arrayidx.i.i28 = getelementptr ptr, ptr %74, i32 %conv.i.i.i20
  %75 = ptrtoint ptr %arrayidx.i.i28 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i28, align 4
  %rx_res.i.i29 = getelementptr i8, ptr %dev, i32 6236
  %77 = ptrtoint ptr %rx_res.i.i29 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rx_res.i.i29, align 4
  %call15.i.i = tail call i32 @mlx5e_rx_res_xsk_deactivate(ptr noundef %78, i32 noundef %conv.i.i.i20) #5
  tail call void @mlx5e_deactivate_xsk(ptr noundef %76) #5
  tail call void @mlx5e_close_xsk(ptr noundef %76) #5
  br label %remove_pool.i.i

remove_pool.i.i:                                  ; preds = %if.end12.i.i, %if.end7.i.i.remove_pool.i.i_crit_edge, %if.end.i.i26.remove_pool.i.i_crit_edge
  %79 = ptrtoint ptr %xsk.i.i15 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %xsk.i.i15, align 4
  %arrayidx.i30.i.i = getelementptr ptr, ptr %80, i32 %conv.i.i.i20
  %81 = ptrtoint ptr %arrayidx.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %arrayidx.i30.i.i, align 4
  %refcnt.i.i.i.i30 = getelementptr i8, ptr %dev, i32 30264
  %82 = ptrtoint ptr %refcnt.i.i.i.i30 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %refcnt.i.i.i.i30, align 4
  %dec.i.i.i.i31 = add i16 %83, -1
  store i16 %dec.i.i.i.i31, ptr %refcnt.i.i.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.i.i.i.i31)
  %tobool.not.i.i.i.i32 = icmp eq i16 %dec.i.i.i.i31, 0
  br i1 %tobool.not.i.i.i.i32, label %if.then.i.i.i.i33, label %remove_pool.i.i.mlx5e_xsk_remove_pool.exit.i.i_crit_edge

remove_pool.i.i.mlx5e_xsk_remove_pool.exit.i.i_crit_edge: ; preds = %remove_pool.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_xsk_remove_pool.exit.i.i

if.then.i.i.i.i33:                                ; preds = %remove_pool.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %xsk.i.i15 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %xsk.i.i15, align 4
  tail call void @kfree(ptr noundef %85) #5
  %86 = ptrtoint ptr %xsk.i.i15 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %xsk.i.i15, align 4
  br label %mlx5e_xsk_remove_pool.exit.i.i

mlx5e_xsk_remove_pool.exit.i.i:                   ; preds = %if.then.i.i.i.i33, %remove_pool.i.i.mlx5e_xsk_remove_pool.exit.i.i_crit_edge
  tail call void @xp_dma_unmap(ptr noundef nonnull %68, i32 noundef 32) #5
  br label %mlx5e_xsk_disable_pool.exit

mlx5e_xsk_disable_pool.exit:                      ; preds = %mlx5e_xsk_remove_pool.exit.i.i, %mlx5e_xsk_get_pool.exit.i.i23.mlx5e_xsk_disable_pool.exit_crit_edge, %if.end.i.i.i19.mlx5e_xsk_disable_pool.exit_crit_edge, %cond.false.mlx5e_xsk_disable_pool.exit_crit_edge
  %retval.0.i.i34 = phi i32 [ 0, %mlx5e_xsk_remove_pool.exit.i.i ], [ -22, %mlx5e_xsk_get_pool.exit.i.i23.mlx5e_xsk_disable_pool.exit_crit_edge ], [ -22, %cond.false.mlx5e_xsk_disable_pool.exit_crit_edge ], [ -22, %if.end.i.i.i19.mlx5e_xsk_disable_pool.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_lock.i13) #5
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_xsk_disable_pool.exit, %mlx5e_xsk_enable_pool.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %mlx5e_xsk_enable_pool.exit ], [ %retval.0.i.i34, %mlx5e_xsk_disable_pool.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_open_xsk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_activate_xsk(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_res_xsk_activate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_deactivate_xsk(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_close_xsk(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_validate_xsk_param(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xp_dma_map(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_dma_unmap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_res_xsk_deactivate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 2146410443, i32 1073205}
!12 = !{!"branch_weights", i32 1, i32 2000}
