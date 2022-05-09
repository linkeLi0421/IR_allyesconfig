; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/mcdi_port.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/mcdi_port.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.efx_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.efx_msi_context], [2 x ptr], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.efx_rss_context, %struct.mutex, i32, i32, i32, i8, i8, %struct.efx_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, i16, %struct.efx_buffer, i64, i64, i8, i32, ptr, %struct.mdio_if_info, i32, i32, [3 x i32], i32, %struct.efx_link_state, i32, i8, %union.efx_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, ptr, %struct.rw_semaphore, ptr, %struct.mutex, i32, [8 x %struct.efx_async_filter_insertion], %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, ptr, i8, ptr, i8, %struct.notifier_block, i32, i32, %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.efx_msi_context = type { ptr, i32, [22 x i8] }
%struct.efx_rss_context = type { %struct.list_head, i32, i32, i8, [40 x i8], [128 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.efx_buffer = type { ptr, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.efx_link_state = type { i8, i8, i8, i32 }
%union.efx_multicast_hash = type { [2 x %union.efx_oword] }
%union.efx_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.efx_async_filter_insertion = type { ptr, %struct.efx_filter_spec, %struct.work_struct, i16, i32 }
%struct.efx_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.efx_mcdi_phy_data = type { i32, i32, i32, i32, i32, i32, [20 x i8], i32, i32, [20 x i8], i32 }
%union.efx_dword = type { [1 x i32] }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efx_mcdi_phy_get_caps(ptr nocapture noundef readonly %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 91
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 16
  %supported_cap = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %supported_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %supported_cap, align 4
  ret i32 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @efx_mcdi_mac_check_fault(ptr noundef %efx) local_unnamed_addr #2 align 64 {
entry:
  %outbuf = alloca [7 x %union.efx_dword], align 4
  %outlength = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %outbuf) #5
  %0 = call ptr @memset(ptr %outbuf, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlength) #5
  %1 = ptrtoint ptr %outlength to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlength, align 4, !annotation !9
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 41, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 28, ptr noundef nonnull %outlength) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 6
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp ne i32 %3, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end ], [ true, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlength) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %outbuf) #5
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_port_probe(ptr noundef %efx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_support = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 92, i32 2
  %0 = ptrtoint ptr %mode_support to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 6, ptr %mode_support, align 4
  %mdio_read = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 92, i32 4
  %1 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @efx_mcdi_mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 92, i32 5
  %2 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @efx_mcdi_mdio_write, ptr %mdio_write, align 4
  %call = tail call i32 @efx_mcdi_phy_probe(ptr noundef %efx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @efx_mcdi_mac_init_stats(ptr noundef %efx) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_mcdi_mdio_read(ptr noundef %net_dev, i32 noundef %prtad, i32 noundef %devad, i16 noundef zeroext %addr) #2 align 64 {
entry:
  %inbuf = alloca [4 x %union.efx_dword], align 4
  %outbuf = alloca [2 x %union.efx_dword], align 8
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inbuf) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf) #5
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %outbuf, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #5
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !9
  %mdio_bus = getelementptr i8, ptr %net_dev, i32 4812
  %2 = ptrtoint ptr %mdio_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mdio_bus, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %inbuf, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %prtad)
  %add.ptr8 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %7 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr8, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %devad)
  %add.ptr18 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 2
  %9 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr18, align 4
  %conv23 = zext i16 %addr to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv23)
  %add.ptr29 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 3
  %11 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %add.ptr29, align 4
  %call35 = call i32 @efx_mcdi_rpc(ptr noundef %add.ptr.i, i32 noundef 16, ptr noundef nonnull %inbuf, i32 noundef 16, ptr noundef nonnull %outbuf, i32 noundef 8, ptr noundef nonnull %outlen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool.not = icmp eq i32 %call35, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr37 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 1
  %12 = ptrtoint ptr %add.ptr37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %13)
  %cmp.not = icmp eq i32 %13, 134217728
  br i1 %cmp.not, label %if.end41, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %outbuf, align 8
  %16 = and i32 %15, -65536
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.end41 ], [ %call35, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inbuf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_mcdi_mdio_write(ptr noundef %net_dev, i32 noundef %prtad, i32 noundef %devad, i16 noundef zeroext %addr, i16 noundef zeroext %value) #2 align 64 {
entry:
  %inbuf = alloca [5 x %union.efx_dword], align 4
  %outbuf = alloca [1 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %inbuf) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outbuf) #5
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %outbuf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #5
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !9
  %mdio_bus = getelementptr i8, ptr %net_dev, i32 4812
  %2 = ptrtoint ptr %mdio_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mdio_bus, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %inbuf, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %prtad)
  %add.ptr8 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %7 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr8, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %devad)
  %add.ptr18 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 2
  %9 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr18, align 4
  %conv23 = zext i16 %addr to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv23)
  %add.ptr29 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 3
  %11 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %add.ptr29, align 4
  %conv34 = zext i16 %value to i32
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv34)
  %add.ptr40 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 4
  %13 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr40, align 4
  %call46 = call i32 @efx_mcdi_rpc(ptr noundef %add.ptr.i, i32 noundef 17, ptr noundef nonnull %inbuf, i32 noundef 20, ptr noundef nonnull %outbuf, i32 noundef 4, ptr noundef nonnull %outlen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool.not = icmp eq i32 %call46, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %outbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %15)
  %cmp.not = icmp eq i32 %15, 134217728
  %. = select i1 %cmp.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call46, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %inbuf) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_phy_probe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_mac_init_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_port_remove(ptr noundef %efx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @efx_mcdi_phy_remove(ptr noundef %efx) #5
  tail call void @efx_mcdi_mac_fini_stats(ptr noundef %efx) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_phy_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_mac_fini_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

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
