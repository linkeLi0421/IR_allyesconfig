; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/apm/xgene-v2/mac.c_pt.bc'
source_filename = "../drivers/net/ethernet/apm/xgene-v2/mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xge_pdata = type { %struct.xge_resource, ptr, ptr, ptr, [16 x i8], ptr, ptr, %struct.napi_struct, %struct.xge_stats, i32, i8 }
%struct.xge_resource = type { ptr, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.xge_stats = type { i64, i64, i64, i64, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.143 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xge_mac_reset(ptr noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 40960, i32 noundef -2147483648) #2
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 40960, i32 noundef 0) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xge_wr_csr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xge_mac_set_speed(ptr noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xge_rd_csr(ptr noundef %pdata, i32 noundef 11264) #2
  %call1 = tail call i32 @xge_rd_csr(ptr noundef %pdata, i32 noundef 11272) #2
  %call2 = tail call i32 @xge_rd_csr(ptr noundef %pdata, i32 noundef 11520) #2
  %call3 = tail call i32 @xge_rd_csr(ptr noundef %pdata, i32 noundef 10208) #2
  %call4 = tail call i32 @xge_rd_csr(ptr noundef %pdata, i32 noundef 40964) #2
  %call5 = tail call i32 @xge_rd_csr(ptr noundef %pdata, i32 noundef 41016) #2
  %phy_speed = getelementptr inbounds %struct.xge_pdata, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %phy_speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_speed, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 10, label %sw.bb
    i32 100, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %and4.i = and i32 %call4, -1793
  %or.i = or i32 %and4.i, 256
  %and4.i20 = and i32 %call5, -234881025
  %and4.i21 = and i32 %call, -1835009
  %and4.i22 = and i32 %call1, -131072
  %or.i23 = or i32 %and4.i22, 500
  %and4.i24 = and i32 %call3, -50331649
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %and4.i25 = and i32 %call4, -1793
  %or.i26 = or i32 %and4.i25, 256
  %and4.i27 = and i32 %call5, -234881025
  %or.i28 = or i32 %and4.i27, 33554432
  %and4.i29 = and i32 %call, -1835009
  %or.i30 = or i32 %and4.i29, 262144
  %and4.i31 = and i32 %call1, -131072
  %or.i32 = or i32 %and4.i31, 80
  %and4.i33 = and i32 %call3, -50331649
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %and4.i34 = and i32 %call4, -1793
  %or.i35 = or i32 %and4.i34, 512
  %and4.i36 = and i32 %call5, -234881025
  %or.i37 = or i32 %and4.i36, 67108864
  %and4.i38 = and i32 %call, -1835009
  %or.i39 = or i32 %and4.i38, 524288
  %and4.i40 = and i32 %call1, -131072
  %or.i41 = or i32 %and4.i40, 16
  %and4.i42 = and i32 %call3, -50331649
  %or.i43 = or i32 %and4.i42, 16777216
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb
  %icm0.0 = phi i32 [ %or.i39, %sw.default ], [ %or.i30, %sw.bb6 ], [ %and4.i21, %sw.bb ]
  %icm2.0 = phi i32 [ %or.i41, %sw.default ], [ %or.i32, %sw.bb6 ], [ %or.i23, %sw.bb ]
  %mc2.0 = phi i32 [ %or.i35, %sw.default ], [ %or.i26, %sw.bb6 ], [ %or.i, %sw.bb ]
  %intf_ctrl.0 = phi i32 [ %or.i37, %sw.default ], [ %or.i28, %sw.bb6 ], [ %and4.i20, %sw.bb ]
  %rgmii.0 = phi i32 [ %or.i43, %sw.default ], [ %and4.i33, %sw.bb6 ], [ %and4.i24, %sw.bb ]
  %or7 = or i32 %mc2.0, 7
  %and4.i44 = and i32 %call2, -256
  %or.i45 = or i32 %and4.i44, 50
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 40964, i32 noundef %or7) #2
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 41016, i32 noundef %intf_ctrl.0) #2
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 10208, i32 noundef %rgmii.0) #2
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 11264, i32 noundef %icm0.0) #2
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 11272, i32 noundef %icm2.0) #2
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 11520, i32 noundef %or.i45) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xge_rd_csr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xge_mac_set_station_addr(ptr noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.xge_pdata, ptr %pdata, i32 0, i32 6
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %dev_addr1 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr1, align 64
  %arrayidx = getelementptr i8, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx2 = getelementptr i8, ptr %3, i32 2
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %7 to i32
  %shl4 = shl nuw nsw i32 %conv3, 16
  %or = or i32 %shl4, %shl
  %arrayidx5 = getelementptr i8, ptr %3, i32 1
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %9 to i32
  %shl7 = shl nuw nsw i32 %conv6, 8
  %or8 = or i32 %or, %shl7
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %3, align 1
  %conv10 = zext i8 %11 to i32
  %or11 = or i32 %or8, %conv10
  %arrayidx12 = getelementptr i8, ptr %3, i32 5
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %13 to i32
  %shl14 = shl nuw i32 %conv13, 24
  %arrayidx15 = getelementptr i8, ptr %3, i32 4
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %15 to i32
  %shl17 = shl nuw nsw i32 %conv16, 16
  %or18 = or i32 %shl17, %shl14
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 41024, i32 noundef %or11) #2
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 41028, i32 noundef %or18) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xge_mac_init(ptr noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 40960, i32 noundef -2147483648) #2
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 40960, i32 noundef 0) #2
  tail call void @xge_mac_set_speed(ptr noundef %pdata)
  %ndev.i = getelementptr inbounds %struct.xge_pdata, ptr %pdata, i32 0, i32 6
  %0 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev.i, align 4
  %dev_addr1.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr1.i, align 64
  %arrayidx.i = getelementptr i8, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx2.i = getelementptr i8, ptr %3, i32 2
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %7 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 16
  %or.i = or i32 %shl4.i, %shl.i
  %arrayidx5.i = getelementptr i8, ptr %3, i32 1
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %9 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 8
  %or8.i = or i32 %or.i, %shl7.i
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %3, align 1
  %conv10.i = zext i8 %11 to i32
  %or11.i = or i32 %or8.i, %conv10.i
  %arrayidx12.i = getelementptr i8, ptr %3, i32 5
  %12 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %13 to i32
  %shl14.i = shl nuw i32 %conv13.i, 24
  %arrayidx15.i = getelementptr i8, ptr %3, i32 4
  %14 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %15 to i32
  %shl17.i = shl nuw nsw i32 %conv16.i, 16
  %or18.i = or i32 %shl17.i, %shl14.i
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 41024, i32 noundef %or11.i) #2
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 41028, i32 noundef %or18.i) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xge_mac_enable(ptr noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xge_rd_csr(ptr noundef %pdata, i32 noundef 40960) #2
  %or = or i32 %call, 5
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 40960, i32 noundef %or) #2
  %call1 = tail call i32 @xge_rd_csr(ptr noundef %pdata, i32 noundef 40960) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xge_mac_disable(ptr noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xge_rd_csr(ptr noundef %pdata, i32 noundef 40960) #2
  %and = and i32 %call, -6
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 40960, i32 noundef %and) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

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
