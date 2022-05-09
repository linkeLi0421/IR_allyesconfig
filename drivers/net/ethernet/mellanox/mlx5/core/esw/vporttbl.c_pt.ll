; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/esw/vporttbl.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/esw/vporttbl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_flow_table_attr = type { i32, i32, i32, i32, ptr, %struct.anon.177 }
%struct.anon.177 = type { i32, i32 }
%struct.mlx5_vport_key = type <{ i32, i16, i16, i16, ptr }>
%struct.mlx5_eswitch = type { ptr, %struct.mlx5_nb, %struct.mlx5_eswitch_fdb, [256 x %struct.hlist_head], %struct.esw_mc_addr, ptr, %struct.xarray, i32, i32, i32, %struct.mutex, %struct.rw_semaphore, %struct.atomic64_t, %struct.anon.171, ptr, %struct.mlx5_esw_offload, i32, i16, i16, %struct.mlx5_esw_functions, %struct.anon.172, %struct.blocking_notifier_head, %struct.lock_class_key }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlx5_eswitch_fdb = type { %union.anon.169, i32 }
%union.anon.169 = type { %struct.offloads_fdb }
%struct.offloads_fdb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.170, ptr }
%struct.anon.170 = type { [256 x %struct.hlist_head], %struct.mutex }
%struct.hlist_head = type { ptr }
%struct.esw_mc_addr = type { %struct.l2addr_node, ptr, i32 }
%struct.l2addr_node = type { %struct.hlist_node, [6 x i8] }
%struct.hlist_node = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.anon.171 = type { i32, ptr, %struct.list_head, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mlx5_esw_offload = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.list_head, %struct.mutex, %struct.mutex, [256 x %struct.hlist_head], %struct.mutex, [256 x %struct.hlist_head], %struct.mod_hdr_tbl, [256 x %struct.hlist_head], %struct.mutex, %struct.xarray, [2 x ptr], i8, %struct.atomic64_t, i32, %struct.ida, i32 }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.ida = type { %struct.xarray }
%struct.mlx5_esw_functions = type { %struct.mlx5_nb, i16 }
%struct.anon.172 = type { i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.mlx5_vport_tbl_attr = type { i32, i16, i16, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.165, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.138 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.anon.165 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
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
%struct.mlx5_vport_table = type { %struct.hlist_node, ptr, i32, %struct.mlx5_vport_key }
%struct.esw_vport_tbl_namespace = type { i32, i32, i32 }

@mlx5_esw_vporttbl_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 98, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"E-Switch: Failed to get FDB namespace\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_esw_vporttbl_get\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/esw/vporttbl.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_esw_vporttbl_get._entry_ptr = internal global ptr @mlx5_esw_vporttbl_get._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@esw_vport_tbl_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 41, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"E-Switch: Failed to create per vport FDB Table err %ld\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"esw_vport_tbl_create\00", [43 x i8] zeroinitializer }, align 32
@esw_vport_tbl_create._entry_ptr = internal global ptr @esw_vport_tbl_create._entry, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 98, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [58 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/esw/vporttbl.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 40, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @esw_vport_tbl_create._entry, ptr @esw_vport_tbl_create._entry_ptr, ptr @mlx5_esw_vporttbl_get._entry, ptr @mlx5_esw_vporttbl_get._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_vporttbl_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_vport_tbl_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_esw_vporttbl_get(ptr noundef %esw, ptr nocapture noundef readonly %attr) local_unnamed_addr #0 align 64 {
entry:
  %ft_attr.i = alloca %struct.mlx5_flow_table_attr, align 4
  %skey = alloca %struct.mlx5_vport_key, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %skey) #7
  %2 = getelementptr inbounds %struct.mlx5_vport_key, ptr %skey, i32 0, i32 1
  %3 = getelementptr inbounds %struct.mlx5_vport_key, ptr %skey, i32 0, i32 2
  %4 = getelementptr inbounds %struct.mlx5_vport_key, ptr %skey, i32 0, i32 3
  %5 = getelementptr inbounds %struct.mlx5_vport_key, ptr %skey, i32 0, i32 4
  %vports = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 13
  %lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 13, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %vport.i = getelementptr inbounds %struct.mlx5_vport_tbl_attr, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %vport.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vport.i, align 2
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %3, align 2
  %9 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attr, align 4
  %11 = ptrtoint ptr %skey to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %skey, align 4
  %prio.i = getelementptr inbounds %struct.mlx5_vport_tbl_attr, ptr %attr, i32 0, i32 1
  %12 = ptrtoint ptr %prio.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %prio.i, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %2, align 4
  %15 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %18, i32 1
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i, align 4
  %conv.i = trunc i32 %20 to i16
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %4, align 4
  %vport_ns.i = getelementptr inbounds %struct.mlx5_vport_tbl_attr, ptr %attr, i32 0, i32 3
  %22 = ptrtoint ptr %vport_ns.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vport_ns.i, align 4
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store ptr %23, ptr %5, align 2
  %25 = load i32, ptr %2, align 4
  %add4.i.i = add i32 %25, -559038723
  %26 = load i32, ptr %4, align 4
  %add7.i.i = add i32 %26, -559038723
  %27 = sub i32 %10, %26
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add7.i.i, i32 %add7.i.i, i32 4) #7
  %xor.i.i = xor i32 %or.i.i.i, %27
  %add9.i.i = add i32 %add7.i.i, %add4.i.i
  %sub10.i.i = sub i32 %add4.i.i, %xor.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i.i, i32 %xor.i.i, i32 6) #7
  %xor12.i.i = xor i32 %sub10.i.i, %or.i1.i.i
  %add13.i.i = add i32 %xor.i.i, %add9.i.i
  %sub14.i.i = sub i32 %add9.i.i, %xor12.i.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i.i, i32 %xor12.i.i, i32 8) #7
  %xor16.i.i = xor i32 %sub14.i.i, %or.i2.i.i
  %add17.i.i = add i32 %xor12.i.i, %add13.i.i
  %sub18.i.i = sub i32 %add13.i.i, %xor16.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i.i, i32 %xor16.i.i, i32 16) #7
  %xor20.i.i = xor i32 %sub18.i.i, %or.i3.i.i
  %add21.i.i = add i32 %xor16.i.i, %add17.i.i
  %sub22.i.i = sub i32 %add17.i.i, %xor20.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i.i, i32 %xor20.i.i, i32 19) #7
  %xor24.i.i = xor i32 %sub22.i.i, %or.i4.i.i
  %add25.i.i = add i32 %xor20.i.i, %add21.i.i
  %sub26.i.i = sub i32 %add21.i.i, %xor24.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i.i, i32 %xor24.i.i, i32 4) #7
  %xor28.i.i = xor i32 %sub26.i.i, %or.i5.i.i
  %add29.i.i = add i32 %xor24.i.i, %add25.i.i
  %28 = ptrtoint ptr %23 to i32
  %trunc.i = trunc i32 %28 to i16
  %rev.i = tail call i16 @llvm.bswap.i16(i16 %trunc.i) #7
  %add80.i.i = zext i16 %rev.i to i32
  %add84.i.i = add i32 %add25.i.i, %add80.i.i
  %xor85.i.i = xor i32 %xor28.i.i, %add29.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %add29.i.i, i32 %add29.i.i, i32 14) #7
  %sub87.i.i = sub i32 %xor85.i.i, %or.i6.i.i
  %xor88.i.i = xor i32 %sub87.i.i, %add84.i.i
  %or.i7.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i, i32 %sub87.i.i, i32 11) #7
  %sub90.i.i = sub i32 %xor88.i.i, %or.i7.i.i
  %xor91.i.i = xor i32 %sub90.i.i, %add29.i.i
  %or.i8.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i, i32 %sub90.i.i, i32 25) #7
  %sub93.i.i = sub i32 %xor91.i.i, %or.i8.i.i
  %xor94.i.i = xor i32 %sub93.i.i, %sub87.i.i
  %or.i9.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i, i32 %sub93.i.i, i32 16) #7
  %sub96.i.i = sub i32 %xor94.i.i, %or.i9.i.i
  %xor97.i.i = xor i32 %sub96.i.i, %sub90.i.i
  %or.i10.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i, i32 %sub96.i.i, i32 4) #7
  %sub99.i.i = sub i32 %xor97.i.i, %or.i10.i.i
  %xor100.i.i = xor i32 %sub99.i.i, %sub93.i.i
  %or.i11.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i, i32 %sub99.i.i, i32 14) #7
  %sub102.i.i = sub i32 %xor100.i.i, %or.i11.i.i
  %xor103.i.i = xor i32 %sub102.i.i, %sub96.i.i
  %or.i12.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i, i32 %sub102.i.i, i32 24) #7
  %sub105.i.i = sub i32 %xor103.i.i, %or.i12.i.i
  %mul.i.i.i = mul i32 %sub105.i.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr %vports, i32 0, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %e.0.in.i = phi ptr [ %arrayidx.i, %entry ], [ %e.0.i, %for.body.i.for.cond.i_crit_edge ]
  %29 = ptrtoint ptr %e.0.in.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %e.0.i = load ptr, ptr %e.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %e.0.i, null
  br i1 %tobool2.not.i, label %if.end, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %key3.i = getelementptr inbounds %struct.mlx5_vport_table, ptr %e.0.i, i32 0, i32 3
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(14) %key3.i, ptr noundef nonnull dereferenceable(14) %skey, i32 14) #10
  %tobool5.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool5.not.i, label %if.then, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %num_rules = getelementptr inbounds %struct.mlx5_vport_table, ptr %e.0.i, i32 0, i32 2
  %30 = ptrtoint ptr %num_rules to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_rules, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %num_rules, align 4
  br label %out

if.end:                                           ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 32) #11
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.err_alloc_crit_edge, label %if.end7

if.end.err_alloc_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_alloc

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @mlx5_get_flow_namespace(ptr noundef %1, i32 noundef 8) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str) #12
  br label %err_ns

if.end12:                                         ; preds = %if.end7
  %35 = ptrtoint ptr %vport_ns.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vport_ns.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i) #7
  %37 = getelementptr inbounds i8, ptr %ft_attr.i, i32 8
  %38 = call ptr @memset(ptr %37, i32 0, i32 20)
  %max_num_groups.i = getelementptr inbounds %struct.esw_vport_tbl_namespace, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %max_num_groups.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_num_groups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end12.if.end.i_crit_edge

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %params.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 20
  %41 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %params.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.end12.if.end.i_crit_edge
  %.sink.i = phi i32 [ %42, %if.else.i ], [ %40, %if.end12.if.end.i_crit_edge ]
  %43 = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 5
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink.i, ptr %43, align 4
  %45 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %36, align 4
  %max_fte5.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 1
  %47 = ptrtoint ptr %max_fte5.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %max_fte5.i, align 4
  %48 = ptrtoint ptr %ft_attr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 6, ptr %ft_attr.i, align 4
  %flags.i = getelementptr inbounds %struct.esw_vport_tbl_namespace, ptr %36, i32 0, i32 2
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i, align 4
  %flags6.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 3
  %51 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %flags6.i, align 4
  %call.i = call ptr @mlx5_create_auto_grouped_flow_table(ptr noundef nonnull %call8, ptr noundef nonnull %ft_attr.i) #7
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %esw_vport_tbl_create.exit.thread, label %if.end16

esw_vport_tbl_create.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %esw, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  %56 = ptrtoint ptr %call.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.5, i32 noundef %56) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #7
  br label %err_ns

if.end16:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #7
  %fdb17 = getelementptr inbounds %struct.mlx5_vport_table, ptr %call7.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %fdb17 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %fdb17, align 8
  %num_rules18 = getelementptr inbounds %struct.mlx5_vport_table, ptr %call7.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %num_rules18 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %num_rules18, align 4
  %key = getelementptr inbounds %struct.mlx5_vport_table, ptr %call7.i.i, i32 0, i32 3
  %59 = call ptr @memcpy(ptr %key, ptr %skey, i32 14)
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i, align 4
  %62 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %61, ptr %call7.i.i, align 8
  %tobool.not.i55 = icmp eq ptr %61, null
  br i1 %tobool.not.i55, label %if.end16.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end16.hlist_add_head.exit_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %61, i32 0, i32 1
  %63 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %call7.i.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end16.hlist_add_head.exit_crit_edge
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %call7.i.i, ptr %arrayidx.i, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %arrayidx.i, ptr %pprev34.i, align 4
  br label %out

out:                                              ; preds = %hlist_add_head.exit, %if.then
  %e.0 = phi ptr [ %e.0.i, %if.then ], [ %call7.i.i, %hlist_add_head.exit ]
  call void @mutex_unlock(ptr noundef %lock) #7
  %fdb25 = getelementptr inbounds %struct.mlx5_vport_table, ptr %e.0, i32 0, i32 1
  %66 = ptrtoint ptr %fdb25 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fdb25, align 4
  br label %cleanup

err_ns:                                           ; preds = %esw_vport_tbl_create.exit.thread, %do.end
  %fdb.0 = phi ptr [ inttoptr (i32 -2 to ptr), %do.end ], [ %call.i, %esw_vport_tbl_create.exit.thread ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %err_alloc

err_alloc:                                        ; preds = %err_ns, %if.end.err_alloc_crit_edge
  %fdb.1 = phi ptr [ %fdb.0, %err_ns ], [ inttoptr (i32 -12 to ptr), %if.end.err_alloc_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %err_alloc, %out
  %retval.0 = phi ptr [ %67, %out ], [ %fdb.1, %err_alloc ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %skey) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_flow_namespace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_esw_vporttbl_put(ptr noundef %esw, ptr nocapture noundef readonly %attr) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.mlx5_vport_key, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %key) #7
  %0 = getelementptr inbounds %struct.mlx5_vport_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mlx5_vport_key, ptr %key, i32 0, i32 2
  %2 = getelementptr inbounds %struct.mlx5_vport_key, ptr %key, i32 0, i32 3
  %3 = getelementptr inbounds %struct.mlx5_vport_key, ptr %key, i32 0, i32 4
  %lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 13, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %vport.i = getelementptr inbounds %struct.mlx5_vport_tbl_attr, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %vport.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vport.i, align 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 2
  %7 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %attr, align 4
  %9 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %key, align 4
  %prio.i = getelementptr inbounds %struct.mlx5_vport_tbl_attr, ptr %attr, i32 0, i32 1
  %10 = ptrtoint ptr %prio.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %prio.i, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %0, align 4
  %13 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %16, i32 1
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  %conv.i = trunc i32 %18 to i16
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %2, align 4
  %vport_ns.i = getelementptr inbounds %struct.mlx5_vport_tbl_attr, ptr %attr, i32 0, i32 3
  %20 = ptrtoint ptr %vport_ns.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vport_ns.i, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store ptr %21, ptr %3, align 2
  %23 = load i32, ptr %0, align 4
  %add4.i.i = add i32 %23, -559038723
  %24 = load i32, ptr %2, align 4
  %add7.i.i = add i32 %24, -559038723
  %25 = sub i32 %8, %24
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add7.i.i, i32 %add7.i.i, i32 4) #7
  %xor.i.i = xor i32 %or.i.i.i, %25
  %add9.i.i = add i32 %add7.i.i, %add4.i.i
  %sub10.i.i = sub i32 %add4.i.i, %xor.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i.i, i32 %xor.i.i, i32 6) #7
  %xor12.i.i = xor i32 %sub10.i.i, %or.i1.i.i
  %add13.i.i = add i32 %xor.i.i, %add9.i.i
  %sub14.i.i = sub i32 %add9.i.i, %xor12.i.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i.i, i32 %xor12.i.i, i32 8) #7
  %xor16.i.i = xor i32 %sub14.i.i, %or.i2.i.i
  %add17.i.i = add i32 %xor12.i.i, %add13.i.i
  %sub18.i.i = sub i32 %add13.i.i, %xor16.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i.i, i32 %xor16.i.i, i32 16) #7
  %xor20.i.i = xor i32 %sub18.i.i, %or.i3.i.i
  %add21.i.i = add i32 %xor16.i.i, %add17.i.i
  %sub22.i.i = sub i32 %add17.i.i, %xor20.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i.i, i32 %xor20.i.i, i32 19) #7
  %xor24.i.i = xor i32 %sub22.i.i, %or.i4.i.i
  %add25.i.i = add i32 %xor20.i.i, %add21.i.i
  %sub26.i.i = sub i32 %add21.i.i, %xor24.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i.i, i32 %xor24.i.i, i32 4) #7
  %xor28.i.i = xor i32 %sub26.i.i, %or.i5.i.i
  %add29.i.i = add i32 %xor24.i.i, %add25.i.i
  %26 = ptrtoint ptr %21 to i32
  %trunc.i = trunc i32 %26 to i16
  %rev.i = tail call i16 @llvm.bswap.i16(i16 %trunc.i) #7
  %add80.i.i = zext i16 %rev.i to i32
  %add84.i.i = add i32 %add25.i.i, %add80.i.i
  %xor85.i.i = xor i32 %xor28.i.i, %add29.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %add29.i.i, i32 %add29.i.i, i32 14) #7
  %sub87.i.i = sub i32 %xor85.i.i, %or.i6.i.i
  %xor88.i.i = xor i32 %sub87.i.i, %add84.i.i
  %or.i7.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i, i32 %sub87.i.i, i32 11) #7
  %sub90.i.i = sub i32 %xor88.i.i, %or.i7.i.i
  %xor91.i.i = xor i32 %sub90.i.i, %add29.i.i
  %or.i8.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i, i32 %sub90.i.i, i32 25) #7
  %sub93.i.i = sub i32 %xor91.i.i, %or.i8.i.i
  %xor94.i.i = xor i32 %sub93.i.i, %sub87.i.i
  %or.i9.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i, i32 %sub93.i.i, i32 16) #7
  %sub96.i.i = sub i32 %xor94.i.i, %or.i9.i.i
  %xor97.i.i = xor i32 %sub96.i.i, %sub90.i.i
  %or.i10.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i, i32 %sub96.i.i, i32 4) #7
  %sub99.i.i = sub i32 %xor97.i.i, %or.i10.i.i
  %xor100.i.i = xor i32 %sub99.i.i, %sub93.i.i
  %or.i11.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i, i32 %sub99.i.i, i32 14) #7
  %sub102.i.i = sub i32 %xor100.i.i, %or.i11.i.i
  %xor103.i.i = xor i32 %sub102.i.i, %sub96.i.i
  %or.i12.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i, i32 %sub102.i.i, i32 24) #7
  %sub105.i.i = sub i32 %xor103.i.i, %or.i12.i.i
  %vports.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 13
  %mul.i.i.i = mul i32 %sub105.i.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr %vports.i, i32 0, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %e.0.in.i = phi ptr [ %arrayidx.i, %entry ], [ %e.0.i, %for.body.i.for.cond.i_crit_edge ]
  %27 = ptrtoint ptr %e.0.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %e.0.i = load ptr, ptr %e.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %e.0.i, null
  br i1 %tobool2.not.i, label %for.cond.i.out_crit_edge, label %for.body.i

for.cond.i.out_crit_edge:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body.i:                                       ; preds = %for.cond.i
  %key3.i = getelementptr inbounds %struct.mlx5_vport_table, ptr %e.0.i, i32 0, i32 3
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(14) %key3.i, ptr noundef nonnull dereferenceable(14) %key, i32 14) #10
  %tobool5.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

lor.lhs.false:                                    ; preds = %for.body.i
  %num_rules = getelementptr inbounds %struct.mlx5_vport_table, ptr %e.0.i, i32 0, i32 2
  %28 = ptrtoint ptr %num_rules to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_rules, align 4
  %dec = add i32 %29, -1
  store i32 %dec, ptr %num_rules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %e.0.i, i32 0, i32 1
  %30 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.not.i.i, label %if.end.hash_del.exit_crit_edge, label %if.then.i.i

if.end.hash_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %if.end
  %32 = ptrtoint ptr %e.0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %e.0.i, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %33, ptr %31, align 4
  %tobool.not.i3.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %33, i32 0, i32 1
  %35 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %31, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %36 = ptrtoint ptr %e.0.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %e.0.i, align 4
  %37 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %if.end.hash_del.exit_crit_edge
  %fdb = getelementptr inbounds %struct.mlx5_vport_table, ptr %e.0.i, i32 0, i32 1
  %38 = ptrtoint ptr %fdb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fdb, align 4
  %call3 = tail call i32 @mlx5_destroy_flow_table(ptr noundef %39) #7
  tail call void @kfree(ptr noundef nonnull %e.0.i) #7
  br label %out

out:                                              ; preds = %hash_del.exit, %lor.lhs.false.out_crit_edge, %for.cond.i.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %key) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_destroy_flow_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_auto_grouped_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/vporttbl.c", i32 98, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_esw_vporttbl_get._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_esw_vporttbl_get._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/vporttbl.c", i32 40, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @esw_vport_tbl_create._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @esw_vport_tbl_create._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
