; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/esw/indir_table.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/esw/indir_table.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_esw_indir_table = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.mlx5_flow_attr = type { i32, ptr, ptr, %struct.mlx5_ct_attr, ptr, ptr, i32, i16, i32, ptr, ptr, i8, i8, i8, i8, i32, %union.anon.182 }
%struct.mlx5_ct_attr = type { i16, i16, ptr, ptr, i32 }
%union.anon.182 = type { [0 x %struct.mlx5_esw_flow_attr] }
%struct.mlx5_esw_flow_attr = type { ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x i16], [2 x i16], [2 x i8], i8, [32 x %struct.anon.183], ptr, ptr }
%struct.anon.183 = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.mlx5_eswitch_rep = type { [2 x %struct.mlx5_eswitch_rep_data], i16, i16, i16, i32, ptr }
%struct.mlx5_eswitch_rep_data = type { ptr, %struct.atomic_t }
%struct.mlx5_flow_destination = type { i32, %union.anon.140 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { i16, i16, ptr, i8 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.187, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.187 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.mlx5_flow_table_attr = type { i32, i32, i32, i32, ptr, %struct.anon.211 }
%struct.anon.211 = type { i32, i32 }
%struct.mlx5_eswitch = type { ptr, %struct.mlx5_nb, %struct.mlx5_eswitch_fdb, [256 x %struct.hlist_head], %struct.esw_mc_addr, ptr, %struct.xarray, i32, i32, i32, %struct.mutex, %struct.rw_semaphore, %struct.atomic64_t, %struct.anon.175, ptr, %struct.mlx5_esw_offload, i32, i16, i16, %struct.mlx5_esw_functions, %struct.anon.177, %struct.blocking_notifier_head, %struct.lock_class_key }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlx5_eswitch_fdb = type { %union.anon.173, i32 }
%union.anon.173 = type { %struct.offloads_fdb }
%struct.offloads_fdb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.174, ptr }
%struct.anon.174 = type { [256 x %struct.hlist_head], %struct.mutex }
%struct.esw_mc_addr = type { %struct.l2addr_node, ptr, i32 }
%struct.l2addr_node = type { %struct.hlist_node, [6 x i8] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.anon.175 = type { i32, ptr, %struct.list_head, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mlx5_esw_offload = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.list_head, %struct.mutex, %struct.mutex, [256 x %struct.hlist_head], %struct.mutex, [256 x %struct.hlist_head], %struct.mod_hdr_tbl, [256 x %struct.hlist_head], %struct.mutex, %struct.xarray, [2 x ptr], i8, %struct.atomic64_t, i32, %struct.ida, i32 }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.ida = type { %struct.xarray }
%struct.mlx5_esw_functions = type { %struct.mlx5_nb, i16 }
%struct.anon.177 = type { i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.mlx5_esw_indir_table_entry = type { %struct.hlist_node, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, i16, i8 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.169, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.143] }
%struct.anon.143 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.144 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.144 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.169 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5e_tc_mod_hdr_acts = type { i32, i32, i8, ptr }
%struct.mlx5_rx_tun_attr = type { i16, %union.anon.184, %union.anon.185, i32 }
%union.anon.184 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%union.anon.185 = type { %struct.in6_addr }
%struct.mlx5_esw_indir_table_rule = type { %struct.list_head, ptr, %union.anon.186, i32, ptr, %struct.refcount_struct }
%union.anon.186 = type { %struct.in6_addr }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }

@mlx5_esw_indir_table_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&indir->lock\00", [19 x i8] zeroinitializer }, align 32
@mlx5_esw_indir_table_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 480, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"E-Switch: Failed to create indirection table, err %d.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5_esw_indir_table_get\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/esw/indir_table.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_esw_indir_table_get._entry_ptr = internal global ptr @mlx5_esw_indir_table_get._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 6]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 6]
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 62, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [61 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/esw/indir_table.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 480, i32 4 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @mlx5_esw_indir_table_get._entry, ptr @mlx5_esw_indir_table_get._entry_ptr, ptr @mlx5_esw_indir_table_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_indir_table_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_indir_table_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_esw_indir_table_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1116, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mutex_init(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5_esw_indir_table_init.__key) #9
  %table = getelementptr inbounds %struct.mlx5_esw_indir_table, ptr %call.i.i, i32 0, i32 1
  %0 = call ptr @memset(ptr %table, i32 0, i32 1024)
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.i, %do.body ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_esw_indir_table_destroy(ptr noundef %indir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_destroy(ptr noundef %indir) #9
  tail call void @kvfree(ptr noundef %indir) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5_esw_indir_table_needed(ptr noundef %esw, ptr nocapture noundef readonly %attr, i16 noundef zeroext %vport_num, ptr noundef readnone %dest_mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %vport = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %cmp = icmp eq i16 %4, -1
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @mlx5_eswitch_is_vf_vport(ptr noundef %esw, i16 noundef zeroext %vport_num) #9
  br i1 %call, label %land.lhs.true3, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %5 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %esw, align 8
  %cmp4 = icmp eq ptr %6, %dest_mdev
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true3.land.end_crit_edge

land.lhs.true3.land.end_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %ip_version = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 13
  %7 = ptrtoint ptr %ip_version to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ip_version, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %land.lhs.true6.land.end_crit_edge, label %land.rhs

land.lhs.true6.land.end_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 15
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6.land.end_crit_edge, %land.lhs.true3.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %11 = phi i1 [ false, %land.lhs.true6.land.end_crit_edge ], [ false, %land.lhs.true3.land.end_crit_edge ], [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %tobool8, %land.rhs ]
  ret i1 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_eswitch_is_vf_vport(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @mlx5_esw_indir_table_decap_vport(ptr nocapture noundef readonly %attr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_tun_attr = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 13, i32 7
  %0 = ptrtoint ptr %rx_tun_attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_tun_attr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i16 [ %3, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i16 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_esw_indir_table_get(ptr noundef %esw, ptr nocapture noundef readonly %attr, ptr nocapture noundef readonly %spec, i16 noundef zeroext %vport, i1 noundef zeroext %decap) local_unnamed_addr #0 align 64 {
entry:
  %dest.i.i = alloca %struct.mlx5_flow_destination, align 4
  %flow_act.i.i = alloca %struct.mlx5_flow_act, align 4
  %ft_attr.i = alloca %struct.mlx5_flow_table_attr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %indir = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 14
  %0 = ptrtoint ptr %indir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indir, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %ip_version = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 13
  %2 = ptrtoint ptr %ip_version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ip_version, align 2
  %conv.i = zext i16 %vport to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %conv1.i = zext i8 %3 to i32
  %or.i = or i32 %shl.i, %conv1.i
  %4 = ptrtoint ptr %indir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %indir, align 4
  %mul.i.i.i = mul i32 %or.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr %struct.mlx5_esw_indir_table, ptr %5, i32 0, i32 1, i32 %shr.i.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %e.034.i = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not35.i = icmp eq ptr %e.034.i, null
  br i1 %tobool3.not35.i, label %entry.if.else7_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.else7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else7

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %e.036.i = phi ptr [ %e.0.i, %for.inc.i.for.body.i_crit_edge ], [ %e.034.i, %entry.for.body.i_crit_edge ]
  %vport4.i = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %e.036.i, i32 0, i32 8
  %7 = ptrtoint ptr %vport4.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vport4.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %vport)
  %cmp.i = icmp eq i16 %8, %vport
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %ip_version8.i = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %e.036.i, i32 0, i32 9
  %9 = ptrtoint ptr %ip_version8.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ip_version8.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %3)
  %cmp11.i = icmp eq i8 %10, %3
  br i1 %cmp11.i, label %if.then, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %e.036.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %e.0.i = load ptr, ptr %e.036.i, align 4
  %tobool3.not.i = icmp eq ptr %e.0.i, null
  br i1 %tobool3.not.i, label %for.inc.i.if.else7_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.else7_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else7

if.then:                                          ; preds = %land.lhs.true.i
  br i1 %decap, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %fwd_ref = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %e.036.i, i32 0, i32 7
  %12 = ptrtoint ptr %fwd_ref to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fwd_ref, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %fwd_ref, align 4
  br label %if.end14

if.else:                                          ; preds = %if.then
  %call3 = tail call fastcc i32 @mlx5_esw_indir_table_rule_get(ptr noundef %esw, ptr noundef %attr, ptr noundef %spec, ptr noundef nonnull %e.036.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else.if.end14_crit_edge, label %if.else.out_err_crit_edge

if.else.out_err_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.else7:                                         ; preds = %for.inc.i.if.else7_crit_edge, %entry.if.else7_crit_edge
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i) #9
  %14 = getelementptr inbounds i8, ptr %ft_attr.i, i32 16
  %15 = call ptr @memset(ptr %14, i32 0, i32 12)
  %16 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %esw, align 8
  %call.i = tail call ptr @mlx5_get_flow_namespace(ptr noundef %17, i32 noundef 8) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.else7.mlx5_esw_indir_table_entry_create.exit.thread_crit_edge, label %if.end.i

if.else7.mlx5_esw_indir_table_entry_create.exit.thread_crit_edge: ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_esw_indir_table_entry_create.exit.thread

if.end.i:                                         ; preds = %if.else7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 44) #13
  %tobool3.not.i41 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i41, label %if.end.i.mlx5_esw_indir_table_entry_create.exit.thread_crit_edge, label %if.end6.i

if.end.i.mlx5_esw_indir_table_entry_create.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_esw_indir_table_entry_create.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %19 = ptrtoint ptr %ft_attr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %ft_attr.i, align 4
  %max_fte.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 1
  %20 = ptrtoint ptr %max_fte.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 128, ptr %max_fte.i, align 4
  %flags.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 3
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %flags.i, align 4
  %level.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 2
  %22 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %level.i, align 4
  %call7.i = call ptr @mlx5_create_flow_table(ptr noundef nonnull %call.i, ptr noundef nonnull %ft_attr.i) #9
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %call7.i to i32
  br label %tbl_err.i

if.end11.i:                                       ; preds = %if.end6.i
  %ft12.i = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %call7.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %ft12.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i, ptr %ft12.i, align 8
  %vport13.i = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %call7.i.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %vport13.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %vport, ptr %vport13.i, align 8
  %26 = ptrtoint ptr %ip_version to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ip_version, align 2
  %ip_version14.i = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %call7.i.i.i, i32 0, i32 9
  %28 = ptrtoint ptr %ip_version14.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %ip_version14.i, align 2
  %lnot.i = xor i1 %decap, true
  %lnot.ext.i = zext i1 %lnot.i to i32
  %fwd_ref.i = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %call7.i.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %fwd_ref.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %lnot.ext.i, ptr %fwd_ref.i, align 4
  %call.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end11.i.recirc_grp_err.i_crit_edge, label %do.body.i.i

if.end11.i.recirc_grp_err.i_crit_edge:            ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %recirc_grp_err.i

do.body.i.i:                                      ; preds = %if.end11.i
  %add.ptr.i.i = getelementptr i32, ptr %call.i.i.i.i, i32 15
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %31, -256
  %or.i.i = or i32 %and.i.i, 11
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %32 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %esw, align 8
  %arrayidx.i.i = getelementptr %struct.mlx5_core_dev, ptr %33, i32 0, i32 8, i32 0, i32 7
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr7.i.i = getelementptr i32, ptr %35, i32 24
  %36 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr7.i.i, align 4
  %38 = and i32 %37, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool9.not.i.i = icmp eq i32 %38, 0
  %..i.i = select i1 %tobool9.not.i.i, i32 68, i32 80
  %.3.i.i = select i1 %tobool9.not.i.i, i32 65535, i32 7680
  %add.ptr28.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 %..i.i
  %39 = ptrtoint ptr %add.ptr28.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr28.i.i, align 4
  %or30.i.i = or i32 %.3.i.i, %40
  store i32 %or30.i.i, ptr %add.ptr28.i.i, align 4
  %41 = ptrtoint ptr %ip_version to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ip_version, align 2
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i8 %42, label %mlx5_create_indir_recirc_group.exit.thread90.i [
    i8 4, label %do.end40.i.i
    i8 6, label %if.then52.i.i
  ]

mlx5_create_indir_recirc_group.exit.thread90.i:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #9
  br label %recirc_grp_err.i

do.end40.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr41.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 124
  %44 = ptrtoint ptr %add.ptr41.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %add.ptr41.i.i, align 4
  br label %do.end60.i.i

if.then52.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr53.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 112
  %45 = call ptr @memset(ptr %add.ptr53.i.i, i32 255, i32 16)
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then52.i.i, %do.end40.i.i
  %add.ptr61.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 148
  %46 = ptrtoint ptr %add.ptr61.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr61.i.i, align 4
  %or63.i.i = or i32 %47, -256
  store i32 %or63.i.i, ptr %add.ptr61.i.i, align 4
  %add.ptr73.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 300
  %48 = ptrtoint ptr %add.ptr73.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -65536, ptr %add.ptr73.i.i, align 4
  %add.ptr86.i.i = getelementptr i32, ptr %call.i.i.i.i, i32 7
  %49 = ptrtoint ptr %add.ptr86.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %add.ptr86.i.i, align 4
  %add.ptr99.i.i = getelementptr i32, ptr %call.i.i.i.i, i32 9
  %50 = ptrtoint ptr %add.ptr99.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 126, ptr %add.ptr99.i.i, align 4
  %51 = ptrtoint ptr %ft12.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ft12.i, align 8
  %call107.i.i = call ptr @mlx5_create_flow_group(ptr noundef %52, ptr noundef nonnull %call.i.i.i.i) #9
  %recirc_grp.i.i = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %call7.i.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %recirc_grp.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call107.i.i, ptr %recirc_grp.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call107.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %mlx5_create_indir_recirc_group.exit.i, label %mlx5_create_indir_recirc_group.exit.thread87.i

mlx5_create_indir_recirc_group.exit.thread87.i:   ; preds = %do.end60.i.i
  %recirc_rules.i.i = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %call7.i.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %recirc_rules.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %recirc_rules.i.i, ptr %recirc_rules.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %55 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %recirc_rules.i.i, ptr %prev.i.i.i, align 4
  %recirc_cnt.i.i = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %call7.i.i.i, i32 0, i32 6
  %56 = ptrtoint ptr %recirc_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %recirc_cnt.i.i, align 8
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #9
  br i1 %decap, label %if.then21.i, label %mlx5_create_indir_recirc_group.exit.thread87.i.if.end26.i_crit_edge

mlx5_create_indir_recirc_group.exit.thread87.i.if.end26.i_crit_edge: ; preds = %mlx5_create_indir_recirc_group.exit.thread87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

mlx5_create_indir_recirc_group.exit.i:            ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %call107.i.i to i32
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #9
  br label %recirc_grp_err.i

if.then21.i:                                      ; preds = %mlx5_create_indir_recirc_group.exit.thread87.i
  %call22.i = call fastcc i32 @mlx5_esw_indir_table_rule_get(ptr noundef %esw, ptr noundef %attr, ptr noundef %spec, ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then21.i.if.end26.i_crit_edge, label %if.then21.i.recirc_rule_err.i_crit_edge

if.then21.i.recirc_rule_err.i_crit_edge:          ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %recirc_rule_err.i

if.then21.i.if.end26.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then21.i.if.end26.i_crit_edge, %mlx5_create_indir_recirc_group.exit.thread87.i.if.end26.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i.i) #9
  %58 = call ptr @memset(ptr %dest.i.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i.i) #9
  %59 = call ptr @memset(ptr %flow_act.i.i, i32 0, i32 36)
  %call.i.i.i76.i = call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i77.i = icmp eq ptr %call.i.i.i76.i, null
  br i1 %tobool.not.i77.i, label %if.end26.i.mlx5_create_indir_fwd_group.exit.thread.i_crit_edge, label %if.end.i.i

if.end26.i.mlx5_create_indir_fwd_group.exit.thread.i_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_create_indir_fwd_group.exit.thread.i

if.end.i.i:                                       ; preds = %if.end26.i
  %call.i.i64.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #12
  %tobool2.not.i.i = icmp eq ptr %call.i.i64.i.i, null
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %do.body.i81.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kvfree(ptr noundef nonnull %call.i.i.i76.i) #9
  br label %mlx5_create_indir_fwd_group.exit.thread.i

do.body.i81.i:                                    ; preds = %if.end.i.i
  %add.ptr.i78.i = getelementptr i32, ptr %call.i.i.i76.i, i32 7
  %60 = ptrtoint ptr %add.ptr.i78.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 127, ptr %add.ptr.i78.i, align 4
  %add.ptr15.i.i = getelementptr i32, ptr %call.i.i.i76.i, i32 9
  %61 = ptrtoint ptr %add.ptr15.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 127, ptr %add.ptr15.i.i, align 4
  %62 = ptrtoint ptr %ft12.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ft12.i, align 8
  %call23.i.i = call ptr @mlx5_create_flow_group(ptr noundef %63, ptr noundef nonnull %call.i.i.i76.i) #9
  %fwd_grp.i.i = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %call7.i.i.i, i32 0, i32 3
  %64 = ptrtoint ptr %fwd_grp.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call23.i.i, ptr %fwd_grp.i.i, align 8
  %cmp.i.i80.i = icmp ugt ptr %call23.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i80.i, label %if.then26.i.i, label %if.end29.i.i

if.then26.i.i:                                    ; preds = %do.body.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %call23.i.i to i32
  br label %mlx5_create_indir_fwd_group.exit.i

if.end29.i.i:                                     ; preds = %do.body.i81.i
  %66 = ptrtoint ptr %flow_act.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 4, ptr %flow_act.i.i, align 4
  %67 = ptrtoint ptr %dest.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %dest.i.i, align 4
  %68 = ptrtoint ptr %vport13.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %vport13.i, align 8
  %70 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %69, ptr %70, align 4
  %72 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %esw, align 8
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %caps.i.i, align 8
  %add.ptr30.i.i = getelementptr i32, ptr %75, i32 1
  %76 = ptrtoint ptr %add.ptr30.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr30.i.i, align 4
  %conv.i.i = trunc i32 %77 to i16
  %vhca_id.i.i = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i.i, i32 0, i32 1, i32 0, i32 1
  %78 = ptrtoint ptr %vhca_id.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv.i.i, ptr %vhca_id.i.i, align 2
  %flags.i.i = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i.i, i32 0, i32 1, i32 0, i32 3
  %79 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %flags.i.i, align 4
  %80 = ptrtoint ptr %ft12.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ft12.i, align 8
  %call33.i.i = call ptr @mlx5_add_flow_rules(ptr noundef %81, ptr noundef nonnull %call.i.i64.i.i, ptr noundef nonnull %flow_act.i.i, ptr noundef nonnull %dest.i.i, i32 noundef 1) #9
  %fwd_rule.i.i = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %call7.i.i.i, i32 0, i32 4
  %82 = ptrtoint ptr %fwd_rule.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call33.i.i, ptr %fwd_rule.i.i, align 4
  %cmp.i65.i.i = icmp ugt ptr %call33.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65.i.i, label %if.then36.i.i, label %if.end29.i.i.mlx5_create_indir_fwd_group.exit.i_crit_edge

if.end29.i.i.mlx5_create_indir_fwd_group.exit.i_crit_edge: ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_create_indir_fwd_group.exit.i

if.then36.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %fwd_grp.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fwd_grp.i.i, align 8
  call void @mlx5_destroy_flow_group(ptr noundef %84) #9
  %85 = ptrtoint ptr %fwd_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fwd_rule.i.i, align 4
  %87 = ptrtoint ptr %86 to i32
  br label %mlx5_create_indir_fwd_group.exit.i

mlx5_create_indir_fwd_group.exit.thread.i:        ; preds = %if.then3.i.i, %if.end26.i.mlx5_create_indir_fwd_group.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i.i) #9
  br label %fwd_grp_err.i

mlx5_create_indir_fwd_group.exit.i:               ; preds = %if.then36.i.i, %if.end29.i.i.mlx5_create_indir_fwd_group.exit.i_crit_edge, %if.then26.i.i
  %err.0.i82.i = phi i32 [ %65, %if.then26.i.i ], [ %87, %if.then36.i.i ], [ 0, %if.end29.i.i.mlx5_create_indir_fwd_group.exit.i_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i64.i.i) #9
  call void @kvfree(ptr noundef nonnull %call.i.i.i76.i) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i82.i)
  %tobool28.not.i = icmp eq i32 %err.0.i82.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %mlx5_create_indir_fwd_group.exit.i.fwd_grp_err.i_crit_edge

mlx5_create_indir_fwd_group.exit.i.fwd_grp_err.i_crit_edge: ; preds = %mlx5_create_indir_fwd_group.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fwd_grp_err.i

if.end30.i:                                       ; preds = %mlx5_create_indir_fwd_group.exit.i
  %88 = ptrtoint ptr %indir to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %indir, align 4
  %90 = ptrtoint ptr %ip_version to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ip_version, align 2
  %conv32.i = zext i8 %91 to i32
  %or.i45 = or i32 %shl.i, %conv32.i
  %mul.i.i.i46 = mul i32 %or.i45, 1640531527
  %shr.i.i47 = lshr i32 %mul.i.i.i46, 24
  %arrayidx.i48 = getelementptr %struct.mlx5_esw_indir_table, ptr %89, i32 0, i32 1, i32 %shr.i.i47
  %92 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i48, align 4
  %94 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %93, ptr %call7.i.i.i, align 8
  %tobool.not.i84.i = icmp eq ptr %93, null
  br i1 %tobool.not.i84.i, label %if.end30.i.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

if.end30.i.hlist_add_head.exit.i_crit_edge:       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %93, i32 0, i32 1
  %95 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %call7.i.i.i, ptr %pprev.i.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.end30.i.hlist_add_head.exit.i_crit_edge
  %96 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %call7.i.i.i, ptr %arrayidx.i48, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %arrayidx.i48, ptr %pprev34.i.i, align 4
  br label %mlx5_esw_indir_table_entry_create.exit

fwd_grp_err.i:                                    ; preds = %mlx5_create_indir_fwd_group.exit.i.fwd_grp_err.i_crit_edge, %mlx5_create_indir_fwd_group.exit.thread.i
  %retval.0.i8395.i = phi i32 [ -12, %mlx5_create_indir_fwd_group.exit.thread.i ], [ %err.0.i82.i, %mlx5_create_indir_fwd_group.exit.i.fwd_grp_err.i_crit_edge ]
  br i1 %decap, label %if.then35.i, label %fwd_grp_err.i.recirc_rule_err.i_crit_edge

fwd_grp_err.i.recirc_rule_err.i_crit_edge:        ; preds = %fwd_grp_err.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %recirc_rule_err.i

if.then35.i:                                      ; preds = %fwd_grp_err.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @mlx5_esw_indir_table_rule_put(ptr noundef %esw, ptr noundef %attr, ptr noundef nonnull %call7.i.i.i) #9
  br label %recirc_rule_err.i

recirc_rule_err.i:                                ; preds = %if.then35.i, %fwd_grp_err.i.recirc_rule_err.i_crit_edge, %if.then21.i.recirc_rule_err.i_crit_edge
  %err.0.i = phi i32 [ %call22.i, %if.then21.i.recirc_rule_err.i_crit_edge ], [ %retval.0.i8395.i, %if.then35.i ], [ %retval.0.i8395.i, %fwd_grp_err.i.recirc_rule_err.i_crit_edge ]
  %98 = ptrtoint ptr %recirc_grp.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %recirc_grp.i.i, align 4
  call void @mlx5_destroy_flow_group(ptr noundef %99) #9
  br label %recirc_grp_err.i

recirc_grp_err.i:                                 ; preds = %recirc_rule_err.i, %mlx5_create_indir_recirc_group.exit.i, %mlx5_create_indir_recirc_group.exit.thread90.i, %if.end11.i.recirc_grp_err.i_crit_edge
  %err.1.i = phi i32 [ %57, %mlx5_create_indir_recirc_group.exit.i ], [ %err.0.i, %recirc_rule_err.i ], [ -95, %mlx5_create_indir_recirc_group.exit.thread90.i ], [ -12, %if.end11.i.recirc_grp_err.i_crit_edge ]
  %100 = ptrtoint ptr %ft12.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ft12.i, align 8
  %call38.i = call i32 @mlx5_destroy_flow_table(ptr noundef %101) #9
  br label %tbl_err.i

tbl_err.i:                                        ; preds = %recirc_grp_err.i, %if.then9.i
  %err.2.i = phi i32 [ %23, %if.then9.i ], [ %err.1.i, %recirc_grp_err.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  %102 = inttoptr i32 %err.2.i to ptr
  br label %mlx5_esw_indir_table_entry_create.exit

mlx5_esw_indir_table_entry_create.exit.thread:    ; preds = %if.end.i.mlx5_esw_indir_table_entry_create.exit.thread_crit_edge, %if.else7.mlx5_esw_indir_table_entry_create.exit.thread_crit_edge
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end.i.mlx5_esw_indir_table_entry_create.exit.thread_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.else7.mlx5_esw_indir_table_entry_create.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #9
  br label %if.then11

mlx5_esw_indir_table_entry_create.exit:           ; preds = %tbl_err.i, %hlist_add_head.exit.i
  %retval.0.i = phi ptr [ %102, %tbl_err.i ], [ %call7.i.i.i, %hlist_add_head.exit.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #9
  %cmp.i49 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49, label %mlx5_esw_indir_table_entry_create.exit.if.then11_crit_edge, label %mlx5_esw_indir_table_entry_create.exit.if.end14_crit_edge

mlx5_esw_indir_table_entry_create.exit.if.end14_crit_edge: ; preds = %mlx5_esw_indir_table_entry_create.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

mlx5_esw_indir_table_entry_create.exit.if.then11_crit_edge: ; preds = %mlx5_esw_indir_table_entry_create.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.then11:                                        ; preds = %mlx5_esw_indir_table_entry_create.exit.if.then11_crit_edge, %mlx5_esw_indir_table_entry_create.exit.thread
  %retval.0.i54 = phi ptr [ %retval.0.i.ph, %mlx5_esw_indir_table_entry_create.exit.thread ], [ %retval.0.i, %mlx5_esw_indir_table_entry_create.exit.if.then11_crit_edge ]
  %103 = ptrtoint ptr %retval.0.i54 to i32
  %104 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %esw, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %107, ptr noundef nonnull @.str.1, i32 noundef %103) #14
  br label %out_err

if.end14:                                         ; preds = %mlx5_esw_indir_table_entry_create.exit.if.end14_crit_edge, %if.else.if.end14_crit_edge, %if.then2
  %e.0 = phi ptr [ %e.036.i, %if.else.if.end14_crit_edge ], [ %e.036.i, %if.then2 ], [ %retval.0.i, %mlx5_esw_indir_table_entry_create.exit.if.end14_crit_edge ]
  %108 = ptrtoint ptr %indir to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %indir, align 4
  call void @mutex_unlock(ptr noundef %109) #9
  %ft = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %e.0, i32 0, i32 1
  %110 = ptrtoint ptr %ft to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ft, align 4
  br label %cleanup

out_err:                                          ; preds = %if.then11, %if.else.out_err_crit_edge
  %err.0 = phi i32 [ %call3, %if.else.out_err_crit_edge ], [ %103, %if.then11 ]
  %112 = ptrtoint ptr %indir to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %indir, align 4
  call void @mutex_unlock(ptr noundef %113) #9
  %114 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end14
  %retval.0 = phi ptr [ %114, %out_err ], [ %111, %if.end14 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_esw_indir_table_rule_get(ptr noundef %esw, ptr nocapture noundef readonly %attr, ptr nocapture noundef readonly %spec, ptr noundef %e) unnamed_addr #0 align 64 {
entry:
  %mod_acts = alloca %struct.mlx5e_tc_mod_hdr_acts, align 4
  %dest = alloca %struct.mlx5_flow_destination, align 4
  %flow_act = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %esw_chains_priv = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 12
  %0 = ptrtoint ptr %esw_chains_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw_chains_priv, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mod_acts) #9
  %2 = call ptr @memset(ptr %mod_acts, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest) #9
  %3 = call ptr @memset(ptr %dest, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act) #9
  %4 = call ptr @memset(ptr %flow_act, i32 0, i32 36)
  %recirc_rules.i = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %e, i32 0, i32 5
  %5 = ptrtoint ptr %recirc_rules.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %rule.019.i = load ptr, ptr %recirc_rules.i, align 4
  %cmp.not20.i = icmp eq ptr %rule.019.i, %recirc_rules.i
  br i1 %cmp.not20.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %rx_tun_attr.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 13, i32 7
  %6 = ptrtoint ptr %rx_tun_attr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_tun_attr.i, align 4
  %vni2.i = getelementptr inbounds %struct.mlx5_rx_tun_attr, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %vni2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vni2.i, align 4
  %dst_ip5.i = getelementptr inbounds %struct.mlx5_rx_tun_attr, ptr %7, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rule.021.i = phi ptr [ %rule.019.i, %for.body.lr.ph.i ], [ %rule.0.i, %for.inc.i.for.body.i_crit_edge ]
  %vni.i = getelementptr inbounds %struct.mlx5_esw_indir_table_rule, ptr %rule.021.i, i32 0, i32 3
  %10 = ptrtoint ptr %vni.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vni.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp3.i = icmp eq i32 %11, %9
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %dst_ip.i = getelementptr inbounds %struct.mlx5_esw_indir_table_rule, ptr %rule.021.i, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %dst_ip.i, ptr noundef dereferenceable(16) %dst_ip5.i, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %found.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %12 = ptrtoint ptr %rule.021.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %rule.0.i = load ptr, ptr %rule.021.i, align 4
  %cmp.not.i = icmp eq ptr %rule.0.i, %recirc_rules.i
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

found.i:                                          ; preds = %land.lhs.true.i
  %refcnt.i = getelementptr inbounds %struct.mlx5_esw_indir_table_rule, ptr %rule.021.i, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #9, !srcloc !20
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %found.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !21

found.i.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %found.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.mlx5_esw_indir_table_rule_lookup.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !22

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.mlx5_esw_indir_table_rule_lookup.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_esw_indir_table_rule_lookup.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %found.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %found.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #9
  br label %mlx5_esw_indir_table_rule_lookup.exit

mlx5_esw_indir_table_rule_lookup.exit:            ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.mlx5_esw_indir_table_rule_lookup.exit_crit_edge
  %tobool.not = icmp eq ptr %rule.021.i, null
  br i1 %tobool.not, label %mlx5_esw_indir_table_rule_lookup.exit.if.end_crit_edge, label %mlx5_esw_indir_table_rule_lookup.exit.cleanup_crit_edge

mlx5_esw_indir_table_rule_lookup.exit.cleanup_crit_edge: ; preds = %mlx5_esw_indir_table_rule_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mlx5_esw_indir_table_rule_lookup.exit.if.end_crit_edge: ; preds = %mlx5_esw_indir_table_rule_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %mlx5_esw_indir_table_rule_lookup.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %recirc_cnt = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %e, i32 0, i32 6
  %15 = ptrtoint ptr %recirc_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %recirc_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %16)
  %cmp = icmp eq i32 %16, 126
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #12
  %tobool4.not = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 40) #13
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end6.out_crit_edge, label %if.end10

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end10:                                         ; preds = %if.end6
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 11, ptr %call.i.i, align 4
  %19 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %esw, align 8
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %20, i32 0, i32 8, i32 0, i32 7
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %22, i32 24
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr, align 4
  %25 = and i32 %24, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool12.not = icmp eq i32 %25, 0
  br i1 %tobool12.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr16 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr16, align 4
  %or = or i32 %27, 7680
  store i32 %or, ptr %add.ptr16, align 4
  %ip_version = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 13
  %28 = ptrtoint ptr %ip_version to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ip_version, align 2
  %add.ptr30 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 4
  %30 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr30, align 4
  %and31 = and i32 %31, -7681
  %32 = and i8 %29, 15
  %and32 = zext i8 %32 to i32
  %shl33 = shl nuw nsw i32 %and32, 9
  %or34 = or i32 %shl33, %and31
  store i32 %or34, ptr %add.ptr30, align 4
  br label %if.end80

if.else:                                          ; preds = %if.end10
  %ip_version40 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 13
  %33 = ptrtoint ptr %ip_version40 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ip_version40, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool41.not = icmp eq i8 %34, 0
  br i1 %tobool41.not, label %if.else.err_ethertype_crit_edge, label %do.end46

if.else.err_ethertype_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ethertype

do.end46:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr49 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr49, align 4
  %or51 = or i32 %36, 65535
  store i32 %or51, ptr %add.ptr49, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %34)
  %cmp61 = icmp eq i8 %34, 4
  %cond = select i1 %cmp61, i32 2048, i32 34525
  %add.ptr68 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %add.ptr68 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr68, align 4
  %and69 = and i32 %38, -65536
  %or72 = or i32 %and69, %cond
  store i32 %or72, ptr %add.ptr68, align 4
  br label %if.end80

if.end80:                                         ; preds = %do.end46, %do.body
  %ip_version81 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 13
  %39 = ptrtoint ptr %ip_version81 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ip_version81, align 2
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %40, label %if.end80.do.end136_crit_edge [
    i8 4, label %do.end89
    i8 6, label %if.then122
  ]

if.end80.do.end136_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end136

do.end89:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr92 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 15
  %42 = ptrtoint ptr %add.ptr92 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %add.ptr92, align 4
  %rx_tun_attr = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 13, i32 7
  %43 = ptrtoint ptr %rx_tun_attr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_tun_attr, align 4
  %dst_ip = getelementptr inbounds %struct.mlx5_rx_tun_attr, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %dst_ip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dst_ip, align 4
  %add.ptr107 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 15
  %47 = ptrtoint ptr %add.ptr107 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %add.ptr107, align 4
  br label %do.end136

if.then122:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr125 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 12
  %48 = call ptr @memset(ptr %add.ptr125, i32 255, i32 16)
  %add.ptr128 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 12
  %rx_tun_attr129 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 13, i32 7
  %49 = ptrtoint ptr %rx_tun_attr129 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rx_tun_attr129, align 4
  %dst_ip130 = getelementptr inbounds %struct.mlx5_rx_tun_attr, ptr %50, i32 0, i32 2
  %51 = call ptr @memcpy(ptr %add.ptr128, ptr %dst_ip130, i32 16)
  br label %do.end136

do.end136:                                        ; preds = %if.then122, %do.end89, %if.end80.do.end136_crit_edge
  %add.ptr139 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 21
  %52 = ptrtoint ptr %add.ptr139 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr139, align 4
  %or141 = or i32 %53, -256
  store i32 %or141, ptr %add.ptr139, align 4
  %add.ptr151 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 21
  %54 = ptrtoint ptr %add.ptr151 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr151, align 4
  %shr152 = and i32 %55, -256
  %add.ptr159 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 21
  %56 = ptrtoint ptr %add.ptr159 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr159, align 4
  %and160 = and i32 %57, 255
  %or163 = or i32 %and160, %shr152
  store i32 %or163, ptr %add.ptr159, align 4
  %add.ptr177 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 59
  %58 = ptrtoint ptr %add.ptr177 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -65536, ptr %add.ptr177, align 4
  %in_mdev = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 1, i32 1
  %59 = ptrtoint ptr %in_mdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %in_mdev, align 4
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %60, i32 0, i32 17, i32 28
  %61 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %eswitch, align 4
  %call189 = tail call i32 @mlx5_eswitch_get_vport_metadata_for_match(ptr noundef %62, i16 noundef zeroext -1) #9
  %add.ptr195 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 59
  %63 = ptrtoint ptr %add.ptr195 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call189, ptr %add.ptr195, align 4
  %rx_tun_attr205 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 13, i32 7
  %64 = ptrtoint ptr %rx_tun_attr205 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx_tun_attr205, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %65, align 4
  %call206 = tail call i32 @mlx5_eswitch_get_vport_metadata_for_set(ptr noundef %esw, i16 noundef zeroext %67) #9
  %68 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %esw, align 8
  %call208 = call i32 @mlx5e_tc_match_to_reg_set(ptr noundef %69, ptr noundef nonnull %mod_acts, i32 noundef 8, i32 noundef 1, i32 noundef %call206) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %if.end211, label %do.end136.err_ethertype_crit_edge

do.end136.err_ethertype_crit_edge:                ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ethertype

if.end211:                                        ; preds = %do.end136
  %70 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %esw, align 8
  %call213 = call i32 @mlx5e_tc_match_to_reg_set(ptr noundef %71, ptr noundef nonnull %mod_acts, i32 noundef 8, i32 noundef 2, i32 noundef 2047) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %if.end216, label %if.end211.err_mod_hdr_regc1_crit_edge

if.end211.err_mod_hdr_regc1_crit_edge:            ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_mod_hdr_regc1

if.end216:                                        ; preds = %if.end211
  %72 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %esw, align 8
  %74 = ptrtoint ptr %mod_acts to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mod_acts, align 4
  %conv218 = trunc i32 %75 to i8
  %actions = getelementptr inbounds %struct.mlx5e_tc_mod_hdr_acts, ptr %mod_acts, i32 0, i32 3
  %76 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %actions, align 4
  %call219 = call ptr @mlx5_modify_header_alloc(ptr noundef %73, i8 noundef zeroext 8, i8 noundef zeroext %conv218, ptr noundef %77) #9
  %modify_hdr = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act, i32 0, i32 1
  %78 = ptrtoint ptr %modify_hdr to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call219, ptr %modify_hdr, align 4
  %cmp.i = icmp ugt ptr %call219, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then222, label %if.end225

if.then222:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %call219 to i32
  br label %err_mod_hdr_regc1

if.end225:                                        ; preds = %if.end216
  %80 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 68, ptr %flow_act, align 4
  %flags = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act, i32 0, i32 4
  %81 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 3, ptr %flags, align 4
  %82 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %dest, align 4
  %call226 = call ptr @mlx5_chains_get_table(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0) #9
  %83 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest, i32 0, i32 1
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call226, ptr %83, align 4
  %cmp.i315 = icmp ugt ptr %call226, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i315, label %if.end225.err_table_crit_edge, label %if.end230

if.end225.err_table_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_table

if.end230:                                        ; preds = %if.end225
  %ft = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %e, i32 0, i32 1
  %85 = ptrtoint ptr %ft to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ft, align 4
  %call231 = call ptr @mlx5_add_flow_rules(ptr noundef %86, ptr noundef nonnull %call.i.i, ptr noundef nonnull %flow_act, ptr noundef nonnull %dest, i32 noundef 1) #9
  %cmp.i316 = icmp ugt ptr %call231, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i316, label %if.then233, label %if.end235

if.then233:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #11
  call void @mlx5_chains_put_table(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0) #9
  br label %err_table

if.end235:                                        ; preds = %if.end230
  call void @mlx5e_mod_hdr_dealloc(ptr noundef nonnull %mod_acts) #9
  %handle236 = getelementptr inbounds %struct.mlx5_esw_indir_table_rule, ptr %call7.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %handle236 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call231, ptr %handle236, align 8
  %88 = ptrtoint ptr %rx_tun_attr205 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rx_tun_attr205, align 4
  %vni = getelementptr inbounds %struct.mlx5_rx_tun_attr, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %vni to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %vni, align 4
  %vni238 = getelementptr inbounds %struct.mlx5_esw_indir_table_rule, ptr %call7.i.i, i32 0, i32 3
  %92 = ptrtoint ptr %vni238 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %vni238, align 4
  %93 = ptrtoint ptr %modify_hdr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %modify_hdr, align 4
  %mh = getelementptr inbounds %struct.mlx5_esw_indir_table_rule, ptr %call7.i.i, i32 0, i32 4
  %95 = ptrtoint ptr %mh to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %mh, align 8
  %dst_ip240 = getelementptr inbounds %struct.mlx5_esw_indir_table_rule, ptr %call7.i.i, i32 0, i32 2
  %dst_ip242 = getelementptr inbounds %struct.mlx5_rx_tun_attr, ptr %89, i32 0, i32 2
  %96 = call ptr @memcpy(ptr %dst_ip240, ptr %dst_ip242, i32 16)
  %refcnt = getelementptr inbounds %struct.mlx5_esw_indir_table_rule, ptr %call7.i.i, i32 0, i32 5
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #9
  %97 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 1, ptr %refcnt, align 4
  %98 = ptrtoint ptr %recirc_rules.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %recirc_rules.i, align 4
  %call.i.i317 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %recirc_rules.i, ptr noundef %99) #9
  br i1 %call.i.i317, label %if.end.i.i, label %if.end235.list_add.exit_crit_edge

if.end235.list_add.exit_crit_edge:                ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %101 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %99, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %102 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %recirc_rules.i, ptr %prev3.i.i, align 4
  %103 = ptrtoint ptr %recirc_rules.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %call7.i.i, ptr %recirc_rules.i, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end235.list_add.exit_crit_edge
  %104 = ptrtoint ptr %recirc_cnt to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %recirc_cnt, align 4
  %inc = add i32 %105, 1
  store i32 %inc, ptr %recirc_cnt, align 4
  br label %out

err_table:                                        ; preds = %if.then233, %if.end225.err_table_crit_edge
  %err.0.in = phi ptr [ %call231, %if.then233 ], [ %call226, %if.end225.err_table_crit_edge ]
  %err.0 = ptrtoint ptr %err.0.in to i32
  %106 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %esw, align 8
  %108 = ptrtoint ptr %modify_hdr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %modify_hdr, align 4
  call void @mlx5_modify_header_dealloc(ptr noundef %107, ptr noundef %109) #9
  br label %err_mod_hdr_regc1

err_mod_hdr_regc1:                                ; preds = %err_table, %if.then222, %if.end211.err_mod_hdr_regc1_crit_edge
  %err.1 = phi i32 [ %call213, %if.end211.err_mod_hdr_regc1_crit_edge ], [ %79, %if.then222 ], [ %err.0, %err_table ]
  call void @mlx5e_mod_hdr_dealloc(ptr noundef nonnull %mod_acts) #9
  br label %err_ethertype

err_ethertype:                                    ; preds = %err_mod_hdr_regc1, %do.end136.err_ethertype_crit_edge, %if.else.err_ethertype_crit_edge
  %err.2 = phi i32 [ %call208, %do.end136.err_ethertype_crit_edge ], [ %err.1, %err_mod_hdr_regc1 ], [ -95, %if.else.err_ethertype_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %out

out:                                              ; preds = %err_ethertype, %list_add.exit, %if.end6.out_crit_edge
  %err.3 = phi i32 [ %err.2, %err_ethertype ], [ 0, %list_add.exit ], [ -12, %if.end6.out_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mlx5_esw_indir_table_rule_lookup.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %out ], [ 0, %mlx5_esw_indir_table_rule_lookup.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mod_acts) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_esw_indir_table_put(ptr nocapture noundef readonly %esw, ptr nocapture noundef readonly %attr, i16 noundef zeroext %vport, i1 noundef zeroext %decap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %indir = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 14
  %0 = ptrtoint ptr %indir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indir, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %ip_version = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 13
  %2 = ptrtoint ptr %ip_version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ip_version, align 2
  %conv.i = zext i16 %vport to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %conv1.i = zext i8 %3 to i32
  %or.i = or i32 %shl.i, %conv1.i
  %4 = ptrtoint ptr %indir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %indir, align 4
  %mul.i.i.i = mul i32 %or.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr %struct.mlx5_esw_indir_table, ptr %5, i32 0, i32 1, i32 %shr.i.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %e.034.i = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not35.i = icmp eq ptr %e.034.i, null
  br i1 %tobool3.not35.i, label %entry.out_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %e.036.i = phi ptr [ %e.0.i, %for.inc.i.for.body.i_crit_edge ], [ %e.034.i, %entry.for.body.i_crit_edge ]
  %vport4.i = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %e.036.i, i32 0, i32 8
  %7 = ptrtoint ptr %vport4.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vport4.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %vport)
  %cmp.i = icmp eq i16 %8, %vport
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %ip_version8.i = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %e.036.i, i32 0, i32 9
  %9 = ptrtoint ptr %ip_version8.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ip_version8.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %3)
  %cmp11.i = icmp eq i8 %10, %3
  br i1 %cmp11.i, label %if.end, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %e.036.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %e.0.i = load ptr, ptr %e.036.i, align 4
  %tobool3.not.i = icmp eq ptr %e.0.i, null
  br i1 %tobool3.not.i, label %for.inc.i.out_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %land.lhs.true.i
  br i1 %decap, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %fwd_ref = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %e.036.i, i32 0, i32 7
  %12 = ptrtoint ptr %fwd_ref to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fwd_ref, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %fwd_ref, align 4
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mlx5_esw_indir_table_rule_put(ptr noundef %esw, ptr noundef %attr, ptr noundef nonnull %e.036.i)
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %fwd_ref4 = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %e.036.i, i32 0, i32 7
  %14 = ptrtoint ptr %fwd_ref4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fwd_ref4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false:                                    ; preds = %if.end3
  %recirc_cnt = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %e.036.i, i32 0, i32 6
  %16 = ptrtoint ptr %recirc_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %recirc_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool6.not = icmp eq i32 %17, 0
  br i1 %tobool6.not, label %if.end8, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8:                                          ; preds = %lor.lhs.false
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %e.036.i, i32 0, i32 1
  %18 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.not.i.i, label %if.end8.hash_del.exit_crit_edge, label %if.then.i.i

if.end8.hash_del.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %if.end8
  %20 = ptrtoint ptr %e.036.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %e.036.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %21, ptr %19, align 4
  %tobool.not.i3.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %19, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %24 = ptrtoint ptr %e.036.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %e.036.i, align 4
  %25 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %if.end8.hash_del.exit_crit_edge
  %recirc_grp = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %e.036.i, i32 0, i32 2
  %26 = ptrtoint ptr %recirc_grp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %recirc_grp, align 4
  tail call void @mlx5_destroy_flow_group(ptr noundef %27) #9
  %fwd_rule = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %e.036.i, i32 0, i32 4
  %28 = ptrtoint ptr %fwd_rule to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fwd_rule, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %29) #9
  %fwd_grp = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %e.036.i, i32 0, i32 3
  %30 = ptrtoint ptr %fwd_grp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fwd_grp, align 4
  tail call void @mlx5_destroy_flow_group(ptr noundef %31) #9
  %ft = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %e.036.i, i32 0, i32 1
  %32 = ptrtoint ptr %ft to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ft, align 4
  %call9 = tail call i32 @mlx5_destroy_flow_table(ptr noundef %33) #9
  tail call void @kfree(ptr noundef nonnull %e.036.i) #9
  br label %out

out:                                              ; preds = %hash_del.exit, %lor.lhs.false.out_crit_edge, %if.end3.out_crit_edge, %for.inc.i.out_crit_edge, %entry.out_crit_edge
  %34 = ptrtoint ptr %indir to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %indir, align 4
  tail call void @mutex_unlock(ptr noundef %35) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_esw_indir_table_rule_put(ptr nocapture noundef readonly %esw, ptr nocapture noundef readonly %attr, ptr noundef %e) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %esw_chains_priv = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 12
  %0 = ptrtoint ptr %esw_chains_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw_chains_priv, align 4
  %recirc_rules = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %e, i32 0, i32 5
  %2 = ptrtoint ptr %recirc_rules to i32
  call void @__asan_load4_noabort(i32 %2)
  %rule.031 = load ptr, ptr %recirc_rules, align 4
  %cmp.not32 = icmp eq ptr %rule.031, %recirc_rules
  br i1 %cmp.not32, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %rx_tun_attr = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 13, i32 7
  %3 = ptrtoint ptr %rx_tun_attr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_tun_attr, align 4
  %vni2 = getelementptr inbounds %struct.mlx5_rx_tun_attr, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %vni2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vni2, align 4
  %dst_ip5 = getelementptr inbounds %struct.mlx5_rx_tun_attr, ptr %4, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rule.033 = phi ptr [ %rule.031, %for.body.lr.ph ], [ %rule.0, %for.inc.for.body_crit_edge ]
  %vni = getelementptr inbounds %struct.mlx5_esw_indir_table_rule, ptr %rule.033, i32 0, i32 3
  %7 = ptrtoint ptr %vni to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vni, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp3 = icmp eq i32 %8, %6
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %dst_ip = getelementptr inbounds %struct.mlx5_esw_indir_table_rule, ptr %rule.033, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %dst_ip, ptr noundef dereferenceable(16) %dst_ip5, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %found, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %rule.033 to i32
  call void @__asan_load4_noabort(i32 %9)
  %rule.0 = load ptr, ptr %rule.033, align 4
  %cmp.not = icmp eq ptr %rule.0, %recirc_rules
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

found:                                            ; preds = %land.lhs.true
  %refcnt = getelementptr inbounds %struct.mlx5_esw_indir_table_rule, ptr %rule.033, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !23
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #9, !srcloc !24
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end13, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %found
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !22

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #9
  br label %cleanup

if.end13:                                         ; preds = %found
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !25
  %handle = getelementptr inbounds %struct.mlx5_esw_indir_table_rule, ptr %rule.033, i32 0, i32 1
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %handle, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %12) #9
  tail call void @mlx5_chains_put_table(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0) #9
  %13 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %esw, align 8
  %mh = getelementptr inbounds %struct.mlx5_esw_indir_table_rule, ptr %rule.033, i32 0, i32 4
  %15 = ptrtoint ptr %mh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mh, align 4
  tail call void @mlx5_modify_header_dealloc(ptr noundef %14, ptr noundef %16) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rule.033) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end13.list_del.exit_crit_edge

if.end13.list_del.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rule.033, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %rule.033 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rule.033, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end13.list_del.exit_crit_edge
  %23 = ptrtoint ptr %rule.033 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %rule.033, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %rule.033, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %rule.033) #9
  %recirc_cnt = getelementptr inbounds %struct.mlx5_esw_indir_table_entry, ptr %e, i32 0, i32 6
  %25 = ptrtoint ptr %recirc_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %recirc_cnt, align 4
  %dec = add i32 %26, -1
  store i32 %dec, ptr %recirc_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_destroy_flow_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_destroy_flow_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eswitch_get_vport_metadata_for_match(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eswitch_get_vport_metadata_for_set(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_match_to_reg_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_modify_header_alloc(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_chains_get_table(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_mod_hdr_dealloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_chains_put_table(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_modify_header_dealloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_flow_namespace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @mlx5_esw_indir_table_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/indir_table.c", i32 62, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/indir_table.c", i32 480, i32 4}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mlx5_esw_indir_table_get._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @mlx5_esw_indir_table_get._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 2148381998, i64 2148382030, i64 2148382059, i64 2148382093, i64 2148382124, i64 2148382147}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2148469999}
!24 = !{i64 2148384463, i64 2148384495, i64 2148384524, i64 2148384558, i64 2148384589, i64 2148384612}
!25 = !{i64 2150551652}
