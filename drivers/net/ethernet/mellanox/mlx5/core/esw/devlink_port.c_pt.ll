; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/esw/devlink_port.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/esw/devlink_port.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.140 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.140 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.165, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.139] }
%struct.anon.139 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.anon.165 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.137, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%union.anon.137 = type { ptr }
%struct.mlx5_eswitch = type { ptr, %struct.mlx5_nb, %struct.mlx5_eswitch_fdb, [256 x %struct.hlist_head], %struct.esw_mc_addr, ptr, %struct.xarray, i32, i32, i32, %struct.mutex, %struct.rw_semaphore, %struct.atomic64_t, %struct.anon.171, ptr, %struct.mlx5_esw_offload, i32, i16, i16, %struct.mlx5_esw_functions, %struct.anon.172, %struct.blocking_notifier_head, %struct.lock_class_key }
%struct.mlx5_eswitch_fdb = type { %union.anon.169, i32 }
%union.anon.169 = type { %struct.offloads_fdb }
%struct.offloads_fdb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.170, ptr }
%struct.anon.170 = type { [256 x %struct.hlist_head], %struct.mutex }
%struct.esw_mc_addr = type { %struct.l2addr_node, ptr, i32 }
%struct.l2addr_node = type { %struct.hlist_node, [6 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.anon.171 = type { i32, ptr, %struct.list_head, %struct.refcount_struct }
%struct.mlx5_esw_offload = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.list_head, %struct.mutex, %struct.mutex, [256 x %struct.hlist_head], %struct.mutex, [256 x %struct.hlist_head], %struct.mod_hdr_tbl, [256 x %struct.hlist_head], %struct.mutex, %struct.xarray, [2 x ptr], i8, %struct.atomic64_t, i32, %struct.ida, i32 }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.mlx5_esw_functions = type { %struct.mlx5_nb, i16 }
%struct.anon.172 = type { i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.mlx5_vport = type { ptr, [256 x %struct.hlist_head], [256 x %struct.hlist_head], ptr, ptr, %struct.work_struct, %struct.vport_ingress, %struct.vport_egress, i32, i32, %struct.mlx5_vport_info, %struct.anon.182, i16, i8, i32, i32, ptr }
%struct.vport_ingress = type { ptr, ptr, %struct.anon.177, %struct.anon.178 }
%struct.anon.177 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.178 = type { ptr, ptr, ptr, ptr }
%struct.vport_egress = type { ptr, ptr, ptr, %union.anon.179 }
%union.anon.179 = type { %struct.anon.181 }
%struct.anon.181 = type { ptr, ptr, ptr, ptr }
%struct.mlx5_vport_info = type { [6 x i8], i16, i64, i32, i8, i8 }
%struct.anon.182 = type { i8, i32, i32, i32, i32, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_offloads_devlink_port_register(ptr noundef %esw, i16 noundef zeroext %vport_num) local_unnamed_addr #0 align 64 {
entry:
  %attrs.i = alloca %struct.devlink_port_attrs, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %vport_num)
  %cmp.i = icmp eq i16 %vport_num, -1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %embedded_cpu.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 5
  %2 = ptrtoint ptr %embedded_cpu.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %embedded_cpu.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i = icmp ne i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vport_num)
  %cmp4.i = icmp eq i16 %vport_num, 0
  %or.cond.i = and i1 %cmp4.i, %tobool.i.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end_crit_edge, label %mlx5_esw_devlink_port_supported.exit

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

mlx5_esw_devlink_port_supported.exit:             ; preds = %lor.lhs.false.i
  %call6.i = tail call zeroext i1 @mlx5_eswitch_is_vf_vport(ptr noundef %esw, i16 noundef zeroext %vport_num) #4
  br i1 %call6.i, label %mlx5_esw_devlink_port_supported.exit.if.end_crit_edge, label %mlx5_esw_devlink_port_supported.exit.cleanup_crit_edge

mlx5_esw_devlink_port_supported.exit.cleanup_crit_edge: ; preds = %mlx5_esw_devlink_port_supported.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

mlx5_esw_devlink_port_supported.exit.if.end_crit_edge: ; preds = %mlx5_esw_devlink_port_supported.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %mlx5_esw_devlink_port_supported.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call ptr @mlx5_eswitch_get_vport(ptr noundef %esw, i16 noundef zeroext %vport_num) #4
  %cmp.i43 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %esw, align 8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %attrs.i) #4
  %7 = call ptr @memset(ptr %attrs.i, i32 0, i32 60)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 356) #7
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %mlx5_esw_dl_port_alloc.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end6
  %call.i.i = tail call i64 @mlx5_query_nic_system_image_guid(ptr noundef %6) #4
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %6, i32 0, i32 8
  %9 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %10, i32 48
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i, align 4
  %shr.i.i = lshr i32 %12, 16
  %and.i.i = and i32 %shr.i.i, 255
  %13 = add nsw i32 %and.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %if.end.i.mlx5_get_dev_index.exit.i_crit_edge, label %if.else.i.i

if.end.i.mlx5_get_dev_index.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlx5_get_dev_index.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %pdev.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %6, i32 0, i32 2
  %15 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i.i, align 8
  %devfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %devfn.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %devfn.i.i, align 4
  %and2.i.i = and i32 %18, 7
  br label %mlx5_get_dev_index.exit.i

mlx5_get_dev_index.exit.i:                        ; preds = %if.else.i.i, %if.end.i.mlx5_get_dev_index.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %and2.i.i, %if.else.i.i ], [ %13, %if.end.i.mlx5_get_dev_index.exit.i_crit_edge ]
  %conv.i = trunc i32 %retval.0.i.i to i16
  %embedded_cpu.i.i44 = getelementptr inbounds %struct.mlx5_core_dev, ptr %6, i32 0, i32 8, i32 5
  %19 = ptrtoint ptr %embedded_cpu.i.i44 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %embedded_cpu.i.i44, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %mlx5_get_dev_index.exit.i.if.end6.i_crit_edge, label %mlx5_core_is_ecpf_esw_manager.exit.i

mlx5_get_dev_index.exit.i.if.end6.i_crit_edge:    ; preds = %mlx5_get_dev_index.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i

mlx5_core_is_ecpf_esw_manager.exit.i:             ; preds = %mlx5_get_dev_index.exit.i
  %add.ptr.i82.i = getelementptr i32, ptr %10, i32 13
  %21 = ptrtoint ptr %add.ptr.i82.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i82.i, align 4
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool2.i.not.i = icmp eq i32 %23, 0
  br i1 %tobool2.i.not.i, label %mlx5_core_is_ecpf_esw_manager.exit.i.if.end6.i_crit_edge, label %if.then5.i

mlx5_core_is_ecpf_esw_manager.exit.i.if.end6.i_crit_edge: ; preds = %mlx5_core_is_ecpf_esw_manager.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i

if.then5.i:                                       ; preds = %mlx5_core_is_ecpf_esw_manager.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %6, i32 0, i32 17, i32 28
  %24 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %eswitch.i, align 4
  %host_number.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %25, i32 0, i32 15, i32 22
  %26 = ptrtoint ptr %host_number.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %host_number.i, align 8
  %add.i = add i32 %27, 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %mlx5_core_is_ecpf_esw_manager.exit.i.if.end6.i_crit_edge, %mlx5_get_dev_index.exit.i.if.end6.i_crit_edge
  %28 = phi i1 [ true, %if.then5.i ], [ false, %mlx5_core_is_ecpf_esw_manager.exit.i.if.end6.i_crit_edge ], [ false, %mlx5_get_dev_index.exit.i.if.end6.i_crit_edge ]
  %controller_num.0.i = phi i32 [ %add.i, %if.then5.i ], [ 0, %mlx5_core_is_ecpf_esw_manager.exit.i.if.end6.i_crit_edge ], [ 0, %mlx5_get_dev_index.exit.i.if.end6.i_crit_edge ]
  %29 = zext i16 %vport_num to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i16 %vport_num, label %if.else34.i [
    i16 -1, label %if.then9.i
    i16 0, label %if.then20.i
  ]

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %flavour.i = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs.i, i32 0, i32 2
  %30 = ptrtoint ptr %flavour.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %flavour.i, align 4
  %31 = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs.i, i32 0, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i.i, ptr %31, align 4
  %switch_id.i = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs.i, i32 0, i32 3
  %33 = ptrtoint ptr %switch_id.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %call.i.i, ptr %switch_id.i, align 4
  %id_len16.i = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs.i, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %id_len16.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 8, ptr %id_len16.i, align 4
  call void @devlink_port_attrs_set(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %attrs.i) #4
  br label %if.end9

if.then20.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %switch_id22.i = getelementptr inbounds %struct.devlink_port, ptr %call7.i.i.i, i32 0, i32 9, i32 3
  %35 = ptrtoint ptr %switch_id22.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %call.i.i, ptr %switch_id22.i, align 4
  %id_len32.i = getelementptr inbounds %struct.devlink_port, ptr %call7.i.i.i, i32 0, i32 9, i32 3, i32 1
  %36 = ptrtoint ptr %id_len32.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 8, ptr %id_len32.i, align 4
  tail call void @devlink_port_attrs_pci_pf_set(ptr noundef nonnull %call7.i.i.i, i32 noundef %controller_num.0.i, i16 noundef zeroext %conv.i, i1 noundef zeroext %28) #4
  br label %if.end9

if.else34.i:                                      ; preds = %if.end6.i
  %call35.i = tail call zeroext i1 @mlx5_eswitch_is_vf_vport(ptr noundef %esw, i16 noundef zeroext %vport_num) #4
  br i1 %call35.i, label %if.then36.i, label %if.else34.i.if.end9_crit_edge

if.else34.i.if.end9_crit_edge:                    ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then36.i:                                      ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #6
  %switch_id38.i = getelementptr inbounds %struct.devlink_port, ptr %call7.i.i.i, i32 0, i32 9, i32 3
  %37 = ptrtoint ptr %switch_id38.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %call.i.i, ptr %switch_id38.i, align 4
  %id_len48.i = getelementptr inbounds %struct.devlink_port, ptr %call7.i.i.i, i32 0, i32 9, i32 3, i32 1
  %38 = ptrtoint ptr %id_len48.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %id_len48.i, align 4
  %sub.i = add i16 %vport_num, -1
  tail call void @devlink_port_attrs_pci_vf_set(ptr noundef nonnull %call7.i.i.i, i32 noundef %controller_num.0.i, i16 noundef zeroext %conv.i, i16 noundef zeroext %sub.i, i1 noundef zeroext %28) #4
  br label %if.end9

mlx5_esw_dl_port_alloc.exit:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %attrs.i) #4
  br label %cleanup

if.end9:                                          ; preds = %if.then36.i, %if.else34.i.if.end9_crit_edge, %if.then20.i, %if.then9.i
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %attrs.i) #4
  %call10 = call ptr @priv_to_devlink(ptr noundef %1) #4
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %40, i32 1
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i, align 4
  %shl.i = shl i32 %42, 16
  %conv.i45 = zext i16 %vport_num to i32
  %or.i = or i32 %shl.i, %conv.i45
  %call12 = call i32 @devlink_port_register(ptr noundef %call10, ptr noundef nonnull %call7.i.i.i, i32 noundef %or.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.reg_err_crit_edge

if.end9.reg_err_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %reg_err

if.end15:                                         ; preds = %if.end9
  %call16 = call i32 @devlink_rate_leaf_create(ptr noundef nonnull %call7.i.i.i, ptr noundef %call2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %rate_err

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %dl_port20 = getelementptr inbounds %struct.mlx5_vport, ptr %call2, i32 0, i32 16
  %43 = ptrtoint ptr %dl_port20 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i.i, ptr %dl_port20, align 4
  br label %cleanup

rate_err:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  call void @devlink_port_unregister(ptr noundef nonnull %call7.i.i.i) #4
  br label %reg_err

reg_err:                                          ; preds = %rate_err, %if.end9.reg_err_crit_edge
  %err.0 = phi i32 [ %call12, %if.end9.reg_err_crit_edge ], [ %call16, %rate_err ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %reg_err, %if.end19, %mlx5_esw_dl_port_alloc.exit, %if.then4, %mlx5_esw_devlink_port_supported.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then4 ], [ %err.0, %reg_err ], [ 0, %if.end19 ], [ 0, %mlx5_esw_devlink_port_supported.exit.cleanup_crit_edge ], [ -12, %mlx5_esw_dl_port_alloc.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eswitch_get_vport(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_port_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_rate_leaf_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_esw_offloads_devlink_port_unregister(ptr noundef %esw, i16 noundef zeroext %vport_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %vport_num)
  %cmp.i = icmp eq i16 %vport_num, -1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %embedded_cpu.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 5
  %2 = ptrtoint ptr %embedded_cpu.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %embedded_cpu.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i = icmp ne i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vport_num)
  %cmp4.i = icmp eq i16 %vport_num, 0
  %or.cond.i = and i1 %cmp4.i, %tobool.i.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end_crit_edge, label %mlx5_esw_devlink_port_supported.exit

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

mlx5_esw_devlink_port_supported.exit:             ; preds = %lor.lhs.false.i
  %call6.i = tail call zeroext i1 @mlx5_eswitch_is_vf_vport(ptr noundef %esw, i16 noundef zeroext %vport_num) #4
  br i1 %call6.i, label %mlx5_esw_devlink_port_supported.exit.if.end_crit_edge, label %mlx5_esw_devlink_port_supported.exit.cleanup_crit_edge

mlx5_esw_devlink_port_supported.exit.cleanup_crit_edge: ; preds = %mlx5_esw_devlink_port_supported.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

mlx5_esw_devlink_port_supported.exit.if.end_crit_edge: ; preds = %mlx5_esw_devlink_port_supported.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %mlx5_esw_devlink_port_supported.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call ptr @mlx5_eswitch_get_vport(ptr noundef %esw, i16 noundef zeroext %vport_num) #4
  %cmp.i21 = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i21, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dl_port = getelementptr inbounds %struct.mlx5_vport, ptr %call1, i32 0, i32 16
  %4 = ptrtoint ptr %dl_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dl_port, align 4
  %devlink_rate = getelementptr inbounds %struct.devlink_port, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %devlink_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devlink_rate, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end4.if.end8_crit_edge, label %if.then5

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 @mlx5_esw_qos_vport_update_group(ptr noundef %esw, ptr noundef %call1, ptr noundef null, ptr noundef null) #4
  %8 = ptrtoint ptr %dl_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dl_port, align 4
  tail call void @devlink_rate_leaf_destroy(ptr noundef %9) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end4.if.end8_crit_edge
  %10 = ptrtoint ptr %dl_port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dl_port, align 4
  tail call void @devlink_port_unregister(ptr noundef %11) #4
  %12 = ptrtoint ptr %dl_port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dl_port, align 4
  tail call void @kfree(ptr noundef %13) #4
  %14 = ptrtoint ptr %dl_port to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %dl_port, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %mlx5_esw_devlink_port_supported.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_qos_vport_update_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_rate_leaf_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_esw_offloads_devlink_port(ptr noundef %esw, i16 noundef zeroext %vport_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx5_eswitch_get_vport(ptr noundef %esw, i16 noundef zeroext %vport_num) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dl_port = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 16
  %0 = ptrtoint ptr %dl_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dl_port, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.false ], [ %call, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_devlink_sf_port_register(ptr noundef %esw, ptr noundef %dl_port, i16 noundef zeroext %vport_num, i32 noundef %controller, i32 noundef %sfnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %call = tail call ptr @mlx5_eswitch_get_vport(ptr noundef %esw, i16 noundef zeroext %vport_num) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %4, i32 48
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %shr.i = lshr i32 %6, 16
  %and.i = and i32 %shr.i, 255
  %7 = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %if.end.mlx5_get_dev_index.exit_crit_edge, label %if.else.i

if.end.mlx5_get_dev_index.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlx5_get_dev_index.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %pdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 8
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %devfn.i, align 4
  %and2.i = and i32 %12, 7
  br label %mlx5_get_dev_index.exit

mlx5_get_dev_index.exit:                          ; preds = %if.else.i, %if.end.mlx5_get_dev_index.exit_crit_edge
  %retval.0.i = phi i32 [ %and2.i, %if.else.i ], [ %7, %if.end.mlx5_get_dev_index.exit_crit_edge ]
  %conv = trunc i32 %retval.0.i to i16
  %call.i = tail call i64 @mlx5_query_nic_system_image_guid(ptr noundef %1) #4
  %switch_id = getelementptr inbounds %struct.devlink_port, ptr %dl_port, i32 0, i32 9, i32 3
  %13 = ptrtoint ptr %switch_id to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %call.i, ptr %switch_id, align 4
  %id_len10 = getelementptr inbounds %struct.devlink_port, ptr %dl_port, i32 0, i32 9, i32 3, i32 1
  %14 = ptrtoint ptr %id_len10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %id_len10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %controller)
  %tobool = icmp ne i32 %controller, 0
  tail call void @devlink_port_attrs_pci_sf_set(ptr noundef %dl_port, i32 noundef %controller, i16 noundef zeroext %conv, i32 noundef %sfnum, i1 noundef zeroext %tobool) #4
  %call12 = tail call ptr @priv_to_devlink(ptr noundef %1) #4
  %15 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %caps.i, align 8
  %add.ptr.i48 = getelementptr i32, ptr %16, i32 1
  %17 = ptrtoint ptr %add.ptr.i48 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i48, align 4
  %shl.i = shl i32 %18, 16
  %conv.i = zext i16 %vport_num to i32
  %or.i = or i32 %shl.i, %conv.i
  %call14 = tail call i32 @devlink_port_register(ptr noundef %call12, ptr noundef %dl_port, i32 noundef %or.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %mlx5_get_dev_index.exit.cleanup_crit_edge

mlx5_get_dev_index.exit.cleanup_crit_edge:        ; preds = %mlx5_get_dev_index.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %mlx5_get_dev_index.exit
  %call18 = tail call i32 @devlink_rate_leaf_create(ptr noundef %dl_port, ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %rate_err

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %dl_port22 = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 16
  %19 = ptrtoint ptr %dl_port22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dl_port, ptr %dl_port22, align 4
  br label %cleanup

rate_err:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @devlink_port_unregister(ptr noundef %dl_port) #4
  br label %cleanup

cleanup:                                          ; preds = %rate_err, %if.end21, %mlx5_get_dev_index.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call18, %rate_err ], [ 0, %if.end21 ], [ %call14, %mlx5_get_dev_index.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_attrs_pci_sf_set(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_esw_devlink_sf_port_unregister(ptr noundef %esw, i16 noundef zeroext %vport_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx5_eswitch_get_vport(ptr noundef %esw, i16 noundef zeroext %vport_num) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dl_port = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 16
  %0 = ptrtoint ptr %dl_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dl_port, align 4
  %devlink_rate = getelementptr inbounds %struct.devlink_port, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %devlink_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devlink_rate, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 @mlx5_esw_qos_vport_update_group(ptr noundef %esw, ptr noundef %call, ptr noundef null, ptr noundef null) #4
  %4 = ptrtoint ptr %dl_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dl_port, align 4
  tail call void @devlink_rate_leaf_destroy(ptr noundef %5) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %6 = ptrtoint ptr %dl_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dl_port, align 4
  tail call void @devlink_port_unregister(ptr noundef %7) #4
  %8 = ptrtoint ptr %dl_port to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %dl_port, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_eswitch_is_vf_vport(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_attrs_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_attrs_pci_pf_set(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_attrs_pci_vf_set(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlx5_query_nic_system_image_guid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

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
