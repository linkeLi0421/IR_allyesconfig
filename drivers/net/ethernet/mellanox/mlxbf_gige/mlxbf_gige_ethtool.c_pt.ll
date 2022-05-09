; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.121 = type { [32 x i8] }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }

@mlxbf_gige_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr @mlxbf_gige_get_regs_len, ptr @mlxbf_gige_get_regs, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlxbf_gige_get_ringparam, ptr null, ptr null, ptr @mlxbf_gige_get_pauseparam, ptr null, ptr null, ptr @mlxbf_gige_get_strings, ptr null, ptr @mlxbf_gige_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @mlxbf_gige_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@mlxbf_gige_ethtool_stats_keys = internal constant { [12 x %struct.anon.121], [96 x i8] } { [12 x %struct.anon.121] [%struct.anon.121 { [32 x i8] c"hw_access_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.121 { [32 x i8] c"tx_invalid_checksums\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.121 { [32 x i8] c"tx_small_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.121 { [32 x i8] c"tx_index_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.121 { [32 x i8] c"sw_config_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.121 { [32 x i8] c"sw_access_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.121 { [32 x i8] c"rx_truncate_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.121 { [32 x i8] c"rx_mac_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.121 { [32 x i8] c"rx_din_dropped_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.121 { [32 x i8] c"tx_fifo_full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.121 { [32 x i8] c"rx_filter_passed_pkts\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.121 { [32 x i8] c"rx_filter_discard_pkts\00\00\00\00\00\00\00\00\00\00" }], [96 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"mlxbf_gige_ethtool_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 129, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [30 x i8] c"mlxbf_gige_ethtool_stats_keys\00", align 1
@___asan_gen_.5 = private constant [65 x i8] c"../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_ethtool.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 52, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @mlxbf_gige_ethtool_ops, ptr @mlxbf_gige_ethtool_stats_keys], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxbf_gige_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxbf_gige_ethtool_stats_keys to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxbf_gige_get_regs_len(ptr nocapture noundef readnone %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1520
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxbf_gige_get_regs(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %regs, ptr noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %version, align 4
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 8
  tail call void @mmiocpy(ptr noundef %p, ptr noundef %2, i32 noundef 1520) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxbf_gige_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ering, ptr nocapture noundef readnone %kernel_ering, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1024, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 256, ptr %tx_max_pending, align 4
  %rx_q_entries = getelementptr i8, ptr %netdev, i32 2380
  %2 = ptrtoint ptr %rx_q_entries to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rx_q_entries, align 4
  %conv = zext i16 %3 to i32
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %rx_pending, align 4
  %tx_q_entries = getelementptr i8, ptr %netdev, i32 2382
  %5 = ptrtoint ptr %tx_q_entries to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tx_q_entries, align 2
  %conv1 = zext i16 %6 to i32
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv1, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @mlxbf_gige_get_pauseparam(ptr nocapture noundef readnone %netdev, ptr nocapture noundef writeonly %pause) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %autoneg, align 4
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %1 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %rx_pause, align 4
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %2 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %tx_pause, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxbf_gige_get_strings(ptr nocapture noundef readnone %netdev, i32 noundef %stringset, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = call ptr @memcpy(ptr %buf, ptr @mlxbf_gige_ethtool_stats_keys, i32 384)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxbf_gige_get_ethtool_stats(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readnone %estats, ptr nocapture noundef writeonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %stats = getelementptr i8, ptr %netdev, i32 7816
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %stats, align 8
  %incdec.ptr = getelementptr i64, ptr %data, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %data, align 8
  %tx_invalid_checksums = getelementptr i8, ptr %netdev, i32 7824
  %3 = ptrtoint ptr %tx_invalid_checksums to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tx_invalid_checksums, align 8
  %incdec.ptr2 = getelementptr i64, ptr %data, i32 2
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %incdec.ptr, align 8
  %tx_small_frames = getelementptr i8, ptr %netdev, i32 7832
  %6 = ptrtoint ptr %tx_small_frames to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tx_small_frames, align 8
  %incdec.ptr4 = getelementptr i64, ptr %data, i32 3
  %8 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %incdec.ptr2, align 8
  %tx_index_errors = getelementptr i8, ptr %netdev, i32 7840
  %9 = ptrtoint ptr %tx_index_errors to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tx_index_errors, align 8
  %incdec.ptr6 = getelementptr i64, ptr %data, i32 4
  %11 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %incdec.ptr4, align 8
  %sw_config_errors = getelementptr i8, ptr %netdev, i32 7848
  %12 = ptrtoint ptr %sw_config_errors to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sw_config_errors, align 8
  %incdec.ptr8 = getelementptr i64, ptr %data, i32 5
  %14 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %incdec.ptr6, align 8
  %sw_access_errors = getelementptr i8, ptr %netdev, i32 7856
  %15 = ptrtoint ptr %sw_access_errors to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %sw_access_errors, align 8
  %incdec.ptr10 = getelementptr i64, ptr %data, i32 6
  %17 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %incdec.ptr8, align 8
  %rx_truncate_errors = getelementptr i8, ptr %netdev, i32 7864
  %18 = ptrtoint ptr %rx_truncate_errors to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rx_truncate_errors, align 8
  %incdec.ptr12 = getelementptr i64, ptr %data, i32 7
  %20 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %incdec.ptr10, align 8
  %rx_mac_errors = getelementptr i8, ptr %netdev, i32 7872
  %21 = ptrtoint ptr %rx_mac_errors to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %rx_mac_errors, align 8
  %incdec.ptr14 = getelementptr i64, ptr %data, i32 8
  %23 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %incdec.ptr12, align 8
  %rx_din_dropped_pkts = getelementptr i8, ptr %netdev, i32 7880
  %24 = ptrtoint ptr %rx_din_dropped_pkts to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rx_din_dropped_pkts, align 8
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %27, i32 608
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !14
  %add.ptr.i57 = getelementptr i8, ptr %27, i32 612
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #7, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !15
  %30 = zext i32 %29 to i64
  %31 = zext i32 %28 to i64
  %32 = shl nuw i64 %31, 32
  %33 = or i64 %32, %30
  %34 = tail call i64 @llvm.bswap.i64(i64 %33) #7
  %add = add i64 %34, %25
  %incdec.ptr17 = getelementptr i64, ptr %data, i32 9
  %35 = ptrtoint ptr %incdec.ptr14 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %add, ptr %incdec.ptr14, align 8
  %tx_fifo_full = getelementptr i8, ptr %netdev, i32 7888
  %36 = ptrtoint ptr %tx_fifo_full to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %tx_fifo_full, align 8
  %incdec.ptr19 = getelementptr i64, ptr %data, i32 10
  %38 = ptrtoint ptr %incdec.ptr17 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %incdec.ptr17, align 8
  %rx_filter_passed_pkts = getelementptr i8, ptr %netdev, i32 7896
  %39 = ptrtoint ptr %rx_filter_passed_pkts to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %rx_filter_passed_pkts, align 8
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr22 = getelementptr i8, ptr %42, i32 1360
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #7, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !14
  %add.ptr.i58 = getelementptr i8, ptr %42, i32 1364
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #7, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !15
  %45 = zext i32 %44 to i64
  %46 = zext i32 %43 to i64
  %47 = shl nuw i64 %46, 32
  %48 = or i64 %47, %45
  %49 = tail call i64 @llvm.bswap.i64(i64 %48) #7
  %add24 = add i64 %49, %40
  %incdec.ptr25 = getelementptr i64, ptr %data, i32 11
  %50 = ptrtoint ptr %incdec.ptr19 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %add24, ptr %incdec.ptr19, align 8
  %rx_filter_discard_pkts = getelementptr i8, ptr %netdev, i32 7904
  %51 = ptrtoint ptr %rx_filter_discard_pkts to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %rx_filter_discard_pkts, align 8
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr28 = getelementptr i8, ptr %54, i32 1376
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #7, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !14
  %add.ptr.i59 = getelementptr i8, ptr %54, i32 1380
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #7, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !15
  %57 = zext i32 %56 to i64
  %58 = zext i32 %55 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or i64 %59, %57
  %61 = tail call i64 @llvm.bswap.i64(i64 %60) #7
  %add30 = add i64 %61, %52
  %62 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %add30, ptr %incdec.ptr25, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxbf_gige_get_sset_count(ptr nocapture noundef readnone %netdev, i32 noundef %stringset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  %. = select i1 %cmp.not, i32 12, i32 -95
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @mlxbf_gige_ethtool_ops, !1, !"mlxbf_gige_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_ethtool.c", i32 129, i32 26}
!2 = !{ptr @mlxbf_gige_ethtool_stats_keys, !3, !"mlxbf_gige_ethtool_stats_keys", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_ethtool.c", i32 52, i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 6234740}
!14 = !{i64 2155276723}
!15 = !{i64 2155277161}
