; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/qos.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/qos.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5_qos_is_supported(ptr nocapture noundef readonly %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 16
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 12
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx3, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %9 = and i32 %8, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %9)
  %.not = icmp eq i32 %9, 12582912
  br i1 %.not, label %if.end22, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %10 = and i32 %8, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool31.not = icmp ne i32 %10, 0
  br label %return

return:                                           ; preds = %if.end22, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ %tobool31.not, %if.end22 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5_qos_max_leaf_nodes(ptr nocapture noundef readonly %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 12
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %3, 16
  %and = and i32 %shr, 31
  %shl = shl nuw i32 1, %and
  ret i32 %shl
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_qos_create_leaf_node(ptr noundef %mdev, i32 noundef %parent_id, i32 noundef %bw_share, i32 noundef %max_avg_bw, ptr noundef %id) local_unnamed_addr #1 align 64 {
entry:
  %sched_ctx = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sched_ctx) #4
  %0 = getelementptr inbounds i8, ptr %sched_ctx, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 60)
  %add.ptr = getelementptr inbounds i32, ptr %sched_ctx, i32 2
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %parent_id, ptr %add.ptr, align 4
  %3 = ptrtoint ptr %sched_ctx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 67108864, ptr %sched_ctx, align 4
  %add.ptr28 = getelementptr inbounds i32, ptr %sched_ctx, i32 5
  %4 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %bw_share, ptr %add.ptr28, align 4
  %add.ptr43 = getelementptr inbounds i32, ptr %sched_ctx, i32 6
  %5 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %max_avg_bw, ptr %add.ptr43, align 4
  %call = call i32 @mlx5_create_scheduling_element_cmd(ptr noundef %mdev, i8 noundef zeroext 3, ptr noundef nonnull %sched_ctx, ptr noundef %id) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sched_ctx) #4
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_create_scheduling_element_cmd(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_qos_create_inner_node(ptr noundef %mdev, i32 noundef %parent_id, i32 noundef %bw_share, i32 noundef %max_avg_bw, ptr noundef %id) local_unnamed_addr #1 align 64 {
entry:
  %sched_ctx = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sched_ctx) #4
  %0 = getelementptr inbounds i8, ptr %sched_ctx, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 52)
  %add.ptr = getelementptr inbounds i32, ptr %sched_ctx, i32 2
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %parent_id, ptr %add.ptr, align 4
  %3 = ptrtoint ptr %sched_ctx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %sched_ctx, align 4
  %add.ptr28 = getelementptr inbounds i32, ptr %sched_ctx, i32 5
  %4 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %bw_share, ptr %add.ptr28, align 4
  %add.ptr43 = getelementptr inbounds i32, ptr %sched_ctx, i32 6
  %5 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %max_avg_bw, ptr %add.ptr43, align 4
  %add.ptr53 = getelementptr inbounds i8, ptr %sched_ctx, i32 4
  %6 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %add.ptr53, align 4
  %call = call i32 @mlx5_create_scheduling_element_cmd(ptr noundef %mdev, i8 noundef zeroext 3, ptr noundef nonnull %sched_ctx, ptr noundef %id) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sched_ctx) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_qos_create_root_node(ptr noundef %mdev, ptr noundef %id) local_unnamed_addr #1 align 64 {
entry:
  %sched_ctx.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sched_ctx.i) #4
  %0 = call ptr @memset(ptr %sched_ctx.i, i32 0, i32 64)
  %call.i = call i32 @mlx5_create_scheduling_element_cmd(ptr noundef %mdev, i8 noundef zeroext 3, ptr noundef nonnull %sched_ctx.i, ptr noundef %id) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sched_ctx.i) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_qos_update_node(ptr noundef %mdev, i32 noundef %parent_id, i32 noundef %bw_share, i32 noundef %max_avg_bw, i32 noundef %id) local_unnamed_addr #1 align 64 {
entry:
  %sched_ctx = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sched_ctx) #4
  %0 = call ptr @memset(ptr %sched_ctx, i32 0, i32 64)
  %add.ptr = getelementptr inbounds i32, ptr %sched_ctx, i32 2
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %parent_id, ptr %add.ptr, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %sched_ctx, i32 5
  %2 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %bw_share, ptr %add.ptr13, align 4
  %add.ptr28 = getelementptr inbounds i32, ptr %sched_ctx, i32 6
  %3 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %max_avg_bw, ptr %add.ptr28, align 4
  %call = call i32 @mlx5_modify_scheduling_element_cmd(ptr noundef %mdev, i8 noundef zeroext 3, ptr noundef nonnull %sched_ctx, i32 noundef %id, i32 noundef 3) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sched_ctx) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_modify_scheduling_element_cmd(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_qos_destroy_node(ptr noundef %mdev, i32 noundef %id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlx5_destroy_scheduling_element_cmd(ptr noundef %mdev, i8 noundef zeroext 3, i32 noundef %id) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_destroy_scheduling_element_cmd(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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
