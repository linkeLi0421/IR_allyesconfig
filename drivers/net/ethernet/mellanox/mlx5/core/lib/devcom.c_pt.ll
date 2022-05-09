; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/lib/devcom.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/lib/devcom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.129, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.152, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.129 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.130] }
%struct.anon.130 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.131 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.131 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.152 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5_devcom_list = type { %struct.list_head, [1 x %struct.mlx5_devcom_component], [2 x ptr] }
%struct.mlx5_devcom_component = type { [2 x %struct.anon], ptr, %struct.rw_semaphore, i8 }
%struct.anon = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_devcom = type { ptr, i32 }

@devcom_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @devcom_list, ptr @devcom_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/lib/devcom.c\00", [43 x i8] zeroinitializer }, align 32
@mlx5_devcom_list_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&comp->sem\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.2 = private unnamed_addr constant [12 x i8] c"devcom_list\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 7, i32 8 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 158, i32 2 }
@___asan_gen_.8 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [56 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/lib/devcom.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 47, i32 3 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @devcom_list, ptr @.str, ptr @mlx5_devcom_list_alloc.__key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devcom_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_devcom_list_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_devcom_register_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup41_crit_edge

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup41

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @mlx5_query_nic_system_image_guid(ptr noundef %dev) #4
  %iter.072 = load ptr, ptr @devcom_list, align 4
  %cmp.not73 = icmp eq ptr %iter.072, @devcom_list
  br i1 %cmp.not73, label %if.end.if.then23_crit_edge, label %if.end.for.cond2.preheader_crit_edge

if.end.for.cond2.preheader_crit_edge:             ; preds = %if.end
  br label %for.cond2.preheader

if.end.if.then23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

for.cond:                                         ; preds = %if.end11.for.cond_crit_edge, %for.cond2.preheader.for.cond_crit_edge
  %2 = ptrtoint ptr %iter.075 to i32
  call void @__asan_load4_noabort(i32 %2)
  %iter.0 = load ptr, ptr %iter.075, align 4
  %cmp.not = icmp eq ptr %iter.0, @devcom_list
  br i1 %cmp.not, label %for.cond.for.end21_crit_edge, label %for.cond.for.cond2.preheader_crit_edge

for.cond.for.cond2.preheader_crit_edge:           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond2.preheader

for.cond.for.end21_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end21

for.cond2.preheader:                              ; preds = %for.cond.for.cond2.preheader_crit_edge, %if.end.for.cond2.preheader_crit_edge
  %iter.075 = phi ptr [ %iter.0, %for.cond.for.cond2.preheader_crit_edge ], [ %iter.072, %if.end.for.cond2.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.mlx5_devcom_list, ptr %iter.075, i32 0, i32 2, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp ne ptr %4, null
  %i.0.idx.1 = sext i1 %tobool.not to i32
  %arrayidx.1 = getelementptr %struct.mlx5_devcom_list, ptr %iter.075, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %6, null
  %i.0.idx.1.1 = select i1 %tobool.not.1, i32 1, i32 %i.0.idx.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.idx.1.1)
  %cmp9 = icmp eq i32 %i.0.idx.1.1, -1
  br i1 %cmp9, label %for.cond2.preheader.for.cond_crit_edge, label %if.end11

for.cond2.preheader.for.cond_crit_edge:           ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

if.end11:                                         ; preds = %for.cond2.preheader
  %tmp_dev.0..1 = select i1 %tobool.not.1, ptr %4, ptr %6
  %call12 = tail call i64 @mlx5_query_nic_system_image_guid(ptr noundef %tmp_dev.0..1) #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %call12)
  %cmp13.not = icmp eq i64 %call1, %call12
  br i1 %cmp13.not, label %if.end11.for.end21_crit_edge, label %if.end11.for.cond_crit_edge

if.end11.for.cond_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

if.end11.for.end21_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end21

for.end21:                                        ; preds = %if.end11.for.end21_crit_edge, %for.cond.for.end21_crit_edge
  %priv.2 = phi ptr [ null, %for.cond.for.end21_crit_edge ], [ %iter.075, %if.end11.for.end21_crit_edge ]
  %tobool22.not = icmp eq ptr %priv.2, null
  br i1 %tobool22.not, label %for.end21.if.then23_crit_edge, label %for.end21.if.end29_crit_edge

for.end21.if.end29_crit_edge:                     ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

for.end21.if.then23_crit_edge:                    ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

if.then23:                                        ; preds = %for.end21.if.then23_crit_edge, %if.end.if.then23_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 128) #7
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then23.cleanup41_crit_edge, label %mlx5_devcom_list_alloc.exit

if.then23.cleanup41_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup41

mlx5_devcom_list_alloc.exit:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  %sem.i = getelementptr %struct.mlx5_devcom_list, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 2
  tail call void @__init_rwsem(ptr noundef %sem.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @mlx5_devcom_list_alloc.__key) #4
  br label %if.end29

if.end29:                                         ; preds = %mlx5_devcom_list_alloc.exit, %for.end21.if.end29_crit_edge
  %tobool22.not87 = phi i1 [ false, %for.end21.if.end29_crit_edge ], [ true, %mlx5_devcom_list_alloc.exit ]
  %idx.4 = phi i32 [ %i.0.idx.1.1, %for.end21.if.end29_crit_edge ], [ 0, %mlx5_devcom_list_alloc.exit ]
  %priv.3 = phi ptr [ %priv.2, %for.end21.if.end29_crit_edge ], [ %call7.i.i.i, %mlx5_devcom_list_alloc.exit ]
  %arrayidx31 = getelementptr %struct.mlx5_devcom_list, ptr %priv.3, i32 0, i32 2, i32 %idx.4
  %8 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %arrayidx31, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i67 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 8) #7
  %tobool.not.i68 = icmp eq ptr %call7.i.i.i67, null
  br i1 %tobool.not.i68, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %priv.3) #4
  br label %cleanup41

if.end36:                                         ; preds = %if.end29
  %10 = ptrtoint ptr %call7.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %priv.3, ptr %call7.i.i.i67, align 8
  %conv.i = and i32 %idx.4, 255
  %idx2.i = getelementptr inbounds %struct.mlx5_devcom, ptr %call7.i.i.i67, i32 0, i32 1
  %11 = ptrtoint ptr %idx2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i, ptr %idx2.i, align 4
  br i1 %tobool22.not87, label %if.then38, label %if.end36.cleanup41_crit_edge

if.end36.cleanup41_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup41

if.then38:                                        ; preds = %if.end36
  %12 = load ptr, ptr @devcom_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %priv.3, ptr noundef nonnull @devcom_list, ptr noundef %12) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then38.cleanup41_crit_edge

if.then38.cleanup41_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup41

if.end.i.i:                                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %priv.3, ptr %prev1.i.i, align 4
  %14 = ptrtoint ptr %priv.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %priv.3, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %priv.3, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @devcom_list, ptr %prev3.i.i, align 4
  store volatile ptr %priv.3, ptr @devcom_list, align 4
  br label %cleanup41

cleanup41:                                        ; preds = %if.end.i.i, %if.then38.cleanup41_crit_edge, %if.end36.cleanup41_crit_edge, %if.then34, %if.then23.cleanup41_crit_edge, %entry.cleanup41_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then34 ], [ null, %entry.cleanup41_crit_edge ], [ %call7.i.i.i67, %if.end36.cleanup41_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then23.cleanup41_crit_edge ], [ %call7.i.i.i67, %if.then38.cleanup41_crit_edge ], [ %call7.i.i.i67, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlx5_query_nic_system_image_guid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_devcom_unregister_device(ptr noundef %devcom) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %devcom, null
  %cmp.i = icmp ugt ptr %devcom, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %devcom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devcom, align 4
  %idx = getelementptr inbounds %struct.mlx5_devcom, ptr %devcom, i32 0, i32 1
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %arrayidx = getelementptr %struct.mlx5_devcom_list, ptr %1, i32 0, i32 2, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef nonnull %devcom) #4
  %arrayidx3 = getelementptr %struct.mlx5_devcom_list, ptr %1, i32 0, i32 2, i32 0
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.inc, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %if.end
  %arrayidx3.1 = getelementptr %struct.mlx5_devcom_list, ptr %1, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx3.1, align 4
  %tobool.not.1 = icmp eq ptr %8, null
  br i1 %tobool.not.1, label %if.end8, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %for.inc
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_del.exit_crit_edge

if.end8.list_del.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end8.list_del.exit_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %1) #4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_devcom_register_component(ptr noundef readonly %devcom, i32 noundef %id, ptr noundef %handler, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %devcom, null
  %cmp.i = icmp ugt ptr %devcom, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %do.end, label %if.end.if.end16_crit_edge, !prof !16

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 158, i32 noundef 9, ptr noundef null) #4
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.end.if.end16_crit_edge
  %0 = ptrtoint ptr %devcom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devcom, align 4
  %arrayidx = getelementptr %struct.mlx5_devcom_list, ptr %1, i32 0, i32 1, i32 %id
  %sem = getelementptr %struct.mlx5_devcom_list, ptr %1, i32 0, i32 1, i32 %id, i32 2
  tail call void @down_write(ptr noundef %sem) #4
  %handler23 = getelementptr %struct.mlx5_devcom_list, ptr %1, i32 0, i32 1, i32 %id, i32 1
  %2 = ptrtoint ptr %handler23 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %handler, ptr %handler23, align 4
  %idx = getelementptr inbounds %struct.mlx5_devcom, ptr %devcom, i32 0, i32 1
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx, align 4
  %arrayidx24 = getelementptr [2 x %struct.anon], ptr %arrayidx, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data, ptr %arrayidx24, align 4
  tail call void @up_write(ptr noundef %sem) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_devcom_unregister_component(ptr noundef readonly %devcom, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %devcom, null
  %cmp.i = icmp ugt ptr %devcom, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %devcom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devcom, align 4
  %arrayidx = getelementptr %struct.mlx5_devcom_list, ptr %1, i32 0, i32 1, i32 %id
  %sem = getelementptr %struct.mlx5_devcom_list, ptr %1, i32 0, i32 1, i32 %id, i32 2
  tail call void @down_write(ptr noundef %sem) #4
  %idx = getelementptr inbounds %struct.mlx5_devcom, ptr %devcom, i32 0, i32 1
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %arrayidx1 = getelementptr [2 x %struct.anon], ptr %arrayidx, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx1, align 4
  tail call void @up_write(ptr noundef %sem) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_devcom_send_event(ptr noundef readonly %devcom, i32 noundef %id, i32 noundef %event, ptr noundef %event_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %devcom, null
  %cmp.i = icmp ugt ptr %devcom, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %devcom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devcom, align 4
  %arrayidx = getelementptr %struct.mlx5_devcom_list, ptr %1, i32 0, i32 1, i32 %id
  %sem = getelementptr %struct.mlx5_devcom_list, ptr %1, i32 0, i32 1, i32 %id, i32 2
  tail call void @down_write(ptr noundef %sem) #4
  %idx = getelementptr inbounds %struct.mlx5_devcom, ptr %devcom, i32 0, i32 1
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end.land.lhs.true.1_crit_edge, label %land.lhs.true

if.end.land.lhs.true.1_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.1

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.inc, label %land.lhs.true.if.then3_crit_edge

land.lhs.true.if.then3_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.then3:                                         ; preds = %land.lhs.true.1.if.then3_crit_edge, %land.lhs.true.if.then3_crit_edge
  %.lcssa = phi ptr [ %5, %land.lhs.true.if.then3_crit_edge ], [ %9, %land.lhs.true.1.if.then3_crit_edge ]
  %handler = getelementptr %struct.mlx5_devcom_list, ptr %1, i32 0, i32 1, i32 %id, i32 1
  %6 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handler, align 4
  %call7 = tail call i32 %7(i32 noundef %event, ptr noundef nonnull %.lcssa, ptr noundef %event_data) #4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.not.1 = icmp eq i32 %3, 1
  br i1 %cmp1.not.1, label %for.inc.for.end_crit_edge, label %for.inc.land.lhs.true.1_crit_edge

for.inc.land.lhs.true.1_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

land.lhs.true.1:                                  ; preds = %for.inc.land.lhs.true.1_crit_edge, %if.end.land.lhs.true.1_crit_edge
  %arrayidx2.1 = getelementptr [2 x %struct.anon], ptr %arrayidx, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %land.lhs.true.1.for.end_crit_edge, label %land.lhs.true.1.if.then3_crit_edge

land.lhs.true.1.if.then3_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

land.lhs.true.1.for.end_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %land.lhs.true.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.then3
  %err.0 = phi i32 [ %call7, %if.then3 ], [ -19, %land.lhs.true.1.for.end_crit_edge ], [ -19, %for.inc.for.end_crit_edge ]
  tail call void @up_write(ptr noundef %sem) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %for.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_devcom_set_paired(ptr nocapture noundef readonly %devcom, i32 noundef %id, i1 noundef zeroext %paired) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %devcom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devcom, align 4
  %sem = getelementptr %struct.mlx5_devcom_list, ptr %1, i32 0, i32 1, i32 %id, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #4
  %2 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %do.end, label %entry.if.end_crit_edge, !prof !16

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 212, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %frombool = zext i1 %paired to i8
  %paired22 = getelementptr %struct.mlx5_devcom_list, ptr %1, i32 0, i32 1, i32 %id, i32 3
  %4 = ptrtoint ptr %paired22 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %paired22, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5_devcom_is_paired(ptr noundef readonly %devcom, i32 noundef %id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %devcom, null
  %cmp.i = icmp ugt ptr %devcom, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %devcom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devcom, align 4
  %paired = getelementptr %struct.mlx5_devcom_list, ptr %1, i32 0, i32 1, i32 %id, i32 3
  %2 = ptrtoint ptr %paired to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %paired, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_devcom_get_peer_data(ptr noundef readonly %devcom, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %devcom, null
  %cmp.i = icmp ugt ptr %devcom, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %devcom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devcom, align 4
  %sem = getelementptr %struct.mlx5_devcom_list, ptr %1, i32 0, i32 1, i32 %id, i32 2
  tail call void @down_read(ptr noundef %sem) #4
  %paired = getelementptr %struct.mlx5_devcom_list, ptr %1, i32 0, i32 1, i32 %id, i32 3
  %2 = ptrtoint ptr %paired to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %paired, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.mlx5_devcom_list, ptr %1, i32 0, i32 1, i32 %id
  %idx = getelementptr inbounds %struct.mlx5_devcom, ptr %devcom, i32 0, i32 1
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not = icmp eq i32 %5, 0
  %spec.select = zext i1 %cmp4.not to i32
  %arrayidx7 = getelementptr [2 x %struct.anon], ptr %arrayidx, i32 0, i32 %spec.select
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @up_read(ptr noundef %sem) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %for.cond.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %for.cond.preheader ], [ null, %if.then1 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_devcom_release_peer_data(ptr nocapture noundef readonly %devcom, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %devcom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devcom, align 4
  %sem = getelementptr %struct.mlx5_devcom_list, ptr %1, i32 0, i32 1, i32 %id, i32 2
  tail call void @up_read(ptr noundef %sem) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/devcom.c", i32 158, i32 2}
!2 = !{ptr @devcom_list, !3, !"devcom_list", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/devcom.c", i32 7, i32 8}
!4 = !{ptr @mlx5_devcom_list_alloc.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/devcom.c", i32 47, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i8 0, i8 2}
