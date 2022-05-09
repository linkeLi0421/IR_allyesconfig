; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/fs_ft_pool.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/fs_ft_pool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.155, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.133] }
%struct.anon.133 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.134 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.134 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.155 = type { %struct.mlx5_rsvd_gids, i32 }
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

@FT_POOLS = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4194304, i32 1048576, i32 65536, i32 128, i32 1], [44 x i8] zeroinitializer }, align 32
@mlx5_ft_pool_put_sz.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/fs_ft_pool.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Couldn't find size %d in flow table size pool\00", [50 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.2 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 128, i64 65536, i64 1048576, i64 4194304]
@___asan_gen_.3 = private unnamed_addr constant [9 x i8] c"FT_POOLS\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 15, i32 27 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [56 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/fs_ft_pool.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 84, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @FT_POOLS, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FT_POOLS to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ft_pool_init(ptr nocapture noundef writeonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx1 = getelementptr [5 x i32], ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16777216, ptr %arrayidx1, align 8
  %arrayidx1.1 = getelementptr [5 x i32], ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 131072, ptr %arrayidx1.1, align 4
  %arrayidx1.2 = getelementptr [5 x i32], ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 256, ptr %arrayidx1.2, align 8
  %arrayidx1.3 = getelementptr [5 x i32], ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %arrayidx1.3, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %call7.i.i, align 8
  %ft_pool2 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 37
  %6 = ptrtoint ptr %ft_pool2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %ft_pool2, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.preheader ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_ft_pool_destroy(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ft_pool = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 37
  %0 = ptrtoint ptr %ft_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ft_pool, align 8
  tail call void @kfree(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ft_pool_get_avail_sz(ptr nocapture noundef readonly %dev, i32 noundef %table_type, i32 noundef %desired_size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %table_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %table_type, label %entry.cond.end116_crit_edge [
    i32 0, label %cond.true
    i32 1, label %cond.true2
    i32 2, label %cond.true13
    i32 3, label %cond.true24
    i32 4, label %cond.true35
    i32 5, label %cond.true46
    i32 6, label %cond.true57
    i32 7, label %cond.true68
    i32 8, label %cond.true79
    i32 9, label %cond.true90
  ]

entry.cond.end116_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end116

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %2, i32 17
  br label %cond.end116.sink.split

cond.true2:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx5 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx5, align 4
  %add.ptr8 = getelementptr i32, ptr %4, i32 65
  br label %cond.end116.sink.split

cond.true13:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx16 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 8
  %5 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx16, align 8
  %add.ptr19 = getelementptr i32, ptr %6, i32 49
  br label %cond.end116.sink.split

cond.true24:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx27 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 8
  %7 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx27, align 8
  %add.ptr30 = getelementptr i32, ptr %8, i32 33
  br label %cond.end116.sink.split

cond.true35:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx38 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 8
  %9 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx38, align 8
  %add.ptr41 = getelementptr i32, ptr %10, i32 17
  br label %cond.end116.sink.split

cond.true46:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx49 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %11 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx49, align 4
  %add.ptr52 = getelementptr i32, ptr %12, i32 49
  br label %cond.end116.sink.split

cond.true57:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx60 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %13 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx60, align 4
  %add.ptr63 = getelementptr i32, ptr %14, i32 97
  br label %cond.end116.sink.split

cond.true68:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx71 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %15 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx71, align 4
  %add.ptr74 = getelementptr i32, ptr %16, i32 33
  br label %cond.end116.sink.split

cond.true79:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx82 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %17 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx82, align 4
  %add.ptr85 = getelementptr i32, ptr %18, i32 81
  br label %cond.end116.sink.split

cond.true90:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx93 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 37
  %19 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx93, align 4
  %add.ptr96 = getelementptr i32, ptr %20, i32 17
  br label %cond.end116.sink.split

cond.end116.sink.split:                           ; preds = %cond.true90, %cond.true79, %cond.true68, %cond.true57, %cond.true46, %cond.true35, %cond.true24, %cond.true13, %cond.true2, %cond.true
  %add.ptr8.sink = phi ptr [ %add.ptr8, %cond.true2 ], [ %add.ptr30, %cond.true24 ], [ %add.ptr52, %cond.true46 ], [ %add.ptr74, %cond.true68 ], [ %add.ptr96, %cond.true90 ], [ %add.ptr85, %cond.true79 ], [ %add.ptr63, %cond.true57 ], [ %add.ptr41, %cond.true35 ], [ %add.ptr19, %cond.true13 ], [ %add.ptr, %cond.true ]
  %21 = ptrtoint ptr %add.ptr8.sink to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr8.sink, align 4
  %shr9 = lshr i32 %22, 24
  %and10 = and i32 %shr9, 63
  br label %cond.end116

cond.end116:                                      ; preds = %cond.end116.sink.split, %entry.cond.end116_crit_edge
  %cond117 = phi i32 [ 0, %entry.cond.end116_crit_edge ], [ %and10, %cond.end116.sink.split ]
  %ft_pool = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 37
  %23 = ptrtoint ptr %ft_pool to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ft_pool, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %desired_size)
  %cmp125.not = icmp eq i32 %desired_size, 0
  %arrayidx119 = getelementptr [5 x i32], ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %cond.end116.for.inc_crit_edge, label %land.lhs.true

cond.end116.for.inc_crit_edge:                    ; preds = %cond.end116
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %cond.end116
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %desired_size)
  %cmp121.not = icmp ugt i32 %desired_size, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %desired_size)
  %.not = icmp eq i32 %desired_size, 1
  %found_i.0174.mux = select i1 %cmp121.not, i32 -1, i32 4
  br i1 %.not, label %land.lhs.true.if.then129_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true.if.then129_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then129

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %cond.end116.for.inc_crit_edge
  %found_i.1 = phi i32 [ %found_i.0174.mux, %land.lhs.true.for.inc_crit_edge ], [ -1, %cond.end116.for.inc_crit_edge ]
  %arrayidx119.1 = getelementptr [5 x i32], ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx119.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx119.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.1 = icmp eq i32 %28, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %desired_size)
  %cmp121.not.1 = icmp ugt i32 %desired_size, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cond117)
  %cmp124.not.1 = icmp ult i32 %cond117, 7
  %or.cond.1 = select i1 %cmp121.not.1, i1 true, i1 %cmp124.not.1
  %brmerge.1 = or i1 %or.cond.1, %cmp125.not
  %found_i.0174.mux.1 = select i1 %or.cond.1, i32 %found_i.1, i32 3
  br i1 %brmerge.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true.1.if.then129_crit_edge

land.lhs.true.1.if.then129_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then129

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %found_i.1.1 = phi i32 [ %found_i.0174.mux.1, %land.lhs.true.1.for.inc.1_crit_edge ], [ %found_i.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx119.2 = getelementptr [5 x i32], ptr %24, i32 0, i32 2
  %29 = ptrtoint ptr %arrayidx119.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx119.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.2 = icmp eq i32 %30, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %desired_size)
  %cmp121.not.2 = icmp ugt i32 %desired_size, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %cond117)
  %cmp124.not.2 = icmp ult i32 %cond117, 16
  %or.cond.2 = select i1 %cmp121.not.2, i1 true, i1 %cmp124.not.2
  %brmerge.2 = or i1 %or.cond.2, %cmp125.not
  %found_i.0174.mux.2 = select i1 %or.cond.2, i32 %found_i.1.1, i32 2
  br i1 %brmerge.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true.2.if.then129_crit_edge

land.lhs.true.2.if.then129_crit_edge:             ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then129

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %found_i.1.2 = phi i32 [ %found_i.0174.mux.2, %land.lhs.true.2.for.inc.2_crit_edge ], [ %found_i.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx119.3 = getelementptr [5 x i32], ptr %24, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx119.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx119.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.3 = icmp eq i32 %32, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %desired_size)
  %cmp121.not.3 = icmp ugt i32 %desired_size, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %cond117)
  %cmp124.not.3 = icmp ult i32 %cond117, 20
  %or.cond.3 = select i1 %cmp121.not.3, i1 true, i1 %cmp124.not.3
  %brmerge.3 = or i1 %or.cond.3, %cmp125.not
  %found_i.0174.mux.3 = select i1 %or.cond.3, i32 %found_i.1.2, i32 1
  br i1 %brmerge.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true.3.if.then129_crit_edge

land.lhs.true.3.if.then129_crit_edge:             ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then129

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %found_i.1.3 = phi i32 [ %found_i.0174.mux.3, %land.lhs.true.3.for.inc.3_crit_edge ], [ %found_i.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.4 = icmp eq i32 %34, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %desired_size)
  %cmp121.not.4 = icmp ugt i32 %desired_size, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %cond117)
  %cmp124.not.4 = icmp ult i32 %cond117, 22
  %or.cond.4 = select i1 %cmp121.not.4, i1 true, i1 %cmp124.not.4
  %brmerge.4 = or i1 %or.cond.4, %cmp125.not
  %found_i.0174.mux.4 = select i1 %or.cond.4, i32 %found_i.1.3, i32 0
  br i1 %brmerge.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true.4.if.then129_crit_edge

land.lhs.true.4.if.then129_crit_edge:             ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then129

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %found_i.1.4 = phi i32 [ %found_i.0174.mux.4, %land.lhs.true.4.for.inc.4_crit_edge ], [ %found_i.1.3, %for.inc.3.for.inc.4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %found_i.1.4)
  %cmp128.not = icmp eq i32 %found_i.1.4, -1
  br i1 %cmp128.not, label %for.inc.4.cleanup_crit_edge, label %for.inc.4.if.then129_crit_edge

for.inc.4.if.then129_crit_edge:                   ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then129

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then129:                                       ; preds = %for.inc.4.if.then129_crit_edge, %land.lhs.true.4.if.then129_crit_edge, %land.lhs.true.3.if.then129_crit_edge, %land.lhs.true.2.if.then129_crit_edge, %land.lhs.true.1.if.then129_crit_edge, %land.lhs.true.if.then129_crit_edge
  %found_i.2169 = phi i32 [ %found_i.1.4, %for.inc.4.if.then129_crit_edge ], [ 4, %land.lhs.true.if.then129_crit_edge ], [ 3, %land.lhs.true.1.if.then129_crit_edge ], [ 2, %land.lhs.true.2.if.then129_crit_edge ], [ 1, %land.lhs.true.3.if.then129_crit_edge ], [ 0, %land.lhs.true.4.if.then129_crit_edge ]
  %35 = ptrtoint ptr %ft_pool to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ft_pool, align 8
  %arrayidx133 = getelementptr [5 x i32], ptr %36, i32 0, i32 %found_i.2169
  %37 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx133, align 4
  %dec134 = add i32 %38, -1
  store i32 %dec134, ptr %arrayidx133, align 4
  %arrayidx135 = getelementptr [5 x i32], ptr @FT_POOLS, i32 0, i32 %found_i.2169
  %39 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx135, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then129, %for.inc.4.cleanup_crit_edge
  %retval.0 = phi i32 [ %40, %if.then129 ], [ 0, %for.inc.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_ft_pool_put_sz(ptr nocapture noundef readonly %dev, i32 noundef %sz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sz to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %sz, label %for.inc.4 [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %entry.if.then2_crit_edge
    i32 128, label %if.then2.fold.split
    i32 65536, label %if.then2.fold.split51
    i32 1048576, label %if.then2.fold.split52
    i32 4194304, label %if.then2.fold.split53
  ]

entry.if.then2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

if.then2.fold.split51:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

if.then2.fold.split52:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

if.then2.fold.split53:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

if.then2:                                         ; preds = %if.then2.fold.split53, %if.then2.fold.split52, %if.then2.fold.split51, %if.then2.fold.split, %entry.if.then2_crit_edge
  %i.049.lcssa = phi i32 [ 4, %entry.if.then2_crit_edge ], [ 3, %if.then2.fold.split ], [ 2, %if.then2.fold.split51 ], [ 1, %if.then2.fold.split52 ], [ 0, %if.then2.fold.split53 ]
  %ft_pool = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 37
  %1 = ptrtoint ptr %ft_pool to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ft_pool, align 8
  %arrayidx3 = getelementptr [5 x i32], ptr %2, i32 0, i32 %i.049.lcssa
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx3, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %arrayidx3, align 4
  br label %cleanup

for.inc.4:                                        ; preds = %entry
  %.b47 = load i1, ptr @mlx5_ft_pool_put_sz.__already_done, align 1
  br i1 %.b47, label %for.inc.4.cleanup_crit_edge, label %if.then10, !prof !15

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then10:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @mlx5_ft_pool_put_sz.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %sz) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %for.inc.4.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_ft_pool.c", i32 84, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @FT_POOLS, !5, !"FT_POOLS", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_ft_pool.c", i32 15, i32 27}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 2000, i32 1}
