; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_desc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_desc = type { i32, i32, i32, i32 }
%struct.dma_edesc = type { i32, i32, i32, i32, %struct.dma_desc }

@dwxgmac210_desc_ops = dso_local constant { %struct.stmmac_desc_ops, [36 x i8] } { %struct.stmmac_desc_ops { ptr @dwxgmac2_init_rx_desc, ptr @dwxgmac2_init_tx_desc, ptr @dwxgmac2_prepare_tx_desc, ptr @dwxgmac2_prepare_tso_tx_desc, ptr @dwxgmac2_set_tx_owner, ptr @dwxgmac2_get_tx_owner, ptr @dwxgmac2_release_tx_desc, ptr @dwxgmac2_set_tx_ic, ptr @dwxgmac2_get_tx_ls, ptr @dwxgmac2_get_tx_status, ptr @dwxgmac2_get_tx_len, ptr @dwxgmac2_set_rx_owner, ptr @dwxgmac2_get_rx_frame_len, ptr @dwxgmac2_get_rx_status, ptr null, ptr @dwxgmac2_enable_tx_timestamp, ptr @dwxgmac2_get_tx_timestamp_status, ptr @dwxgmac2_get_timestamp, ptr @dwxgmac2_get_rx_timestamp_status, ptr null, ptr @dwxgmac2_set_mss, ptr @dwxgmac2_get_addr, ptr @dwxgmac2_set_addr, ptr @dwxgmac2_clear, ptr @dwxgmac2_get_rx_hash, ptr @dwxgmac2_get_rx_header_len, ptr @dwxgmac2_set_sec_addr, ptr @dwxgmac2_set_sarc, ptr @dwxgmac2_set_vlan_tag, ptr @dwxgmac2_set_vlan, ptr @dwxgmac2_set_tbs }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"dwxgmac210_desc_ops\00", align 1
@___asan_gen_.2 = private constant [56 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 349, i32 30 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @dwxgmac210_desc_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwxgmac210_desc_ops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwxgmac2_init_rx_desc(ptr nocapture noundef %p, i32 noundef %disable_rx_ic, i32 noundef %mode, i32 noundef %end, i32 noundef %bfsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des3.i = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %des3.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disable_rx_ic)
  %tobool.not.i = icmp eq i32 %disable_rx_ic, 0
  %spec.select.v.i = select i1 %tobool.not.i, i32 192, i32 128
  %spec.select.i = or i32 %1, %spec.select.v.i
  %2 = ptrtoint ptr %des3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select.i, ptr %des3.i, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwxgmac2_init_tx_desc(ptr nocapture noundef writeonly %p, i32 noundef %mode, i32 noundef %end) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %p, i32 0, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_prepare_tx_desc(ptr nocapture noundef %p, i32 noundef %is_fs, i32 noundef %len, i1 noundef zeroext %csum_flag, i32 noundef %mode, i1 noundef zeroext %tx_own, i1 noundef zeroext %ls, i32 noundef %tot_pkt_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3, align 4
  %and = and i32 %len, 16383
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %3 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %des2, align 4
  %or = or i32 %4, %2
  store i32 %or, ptr %des2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_fs)
  %tobool.not = icmp eq i32 %is_fs, 0
  %tx_own.not = xor i1 %tx_own, true
  %brmerge = or i1 %tobool.not, %tx_own.not
  br i1 %brmerge, label %entry.if.end26_crit_edge, label %if.then25

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !11
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %entry.if.end26_crit_edge
  %5 = and i32 %1, -817
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %and3 = and i32 %tot_pkt_len, 32767
  %masksel = select i1 %tobool.not, i32 0, i32 536870912
  %masksel40 = select i1 %csum_flag, i32 196608, i32 0
  %masksel41 = select i1 %ls, i32 268435456, i32 0
  %and6.masked.masked = or i32 %masksel40, %masksel
  %and11.masked = or i32 %and6.masked.masked, %masksel41
  %and17 = or i32 %and11.masked, %and3
  %tdes3.2 = or i32 %and17, %6
  %or21 = or i32 %tdes3.2, -2147483648
  %tdes3.3 = select i1 %tx_own, i32 %or21, i32 %tdes3.2
  %7 = tail call i32 @llvm.bswap.i32(i32 %tdes3.3)
  %8 = ptrtoint ptr %des3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %des3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_prepare_tso_tx_desc(ptr nocapture noundef %p, i32 noundef %is_fs, i32 noundef %len1, i32 noundef %len2, i1 noundef zeroext %tx_own, i1 noundef zeroext %ls, i32 noundef %tcphdrlen, i32 noundef %tcppayloadlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len1)
  %tobool.not = icmp eq i32 %len1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %len1, 16383
  %3 = tail call i32 @llvm.bswap.i32(i32 %and)
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %4 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %des2, align 4
  %or = or i32 %5, %3
  store i32 %or, ptr %des2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len2)
  %tobool2.not = icmp eq i32 %len2, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl i32 %len2, 16
  %and4 = and i32 %shl, 1073676288
  %6 = tail call i32 @llvm.bswap.i32(i32 %and4)
  %des25 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %7 = ptrtoint ptr %des25 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %des25, align 4
  %or6 = or i32 %8, %6
  store i32 %or6, ptr %des25, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_fs)
  %tobool8.not = icmp eq i32 %is_fs, 0
  br i1 %tobool8.not, label %if.end17.thread, label %if.end17

if.end17.thread:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %and16 = and i32 %2, -536870913
  br label %if.end31

if.end17:                                         ; preds = %if.end7
  %shl11 = shl i32 %tcphdrlen, 19
  %and12 = and i32 %shl11, 7864320
  %and14 = and i32 %tcppayloadlen, 262143
  %or10 = or i32 %and12, %and14
  %or13 = or i32 %or10, %2
  %or15 = or i32 %or13, 537133056
  %tx_own.not = xor i1 %tx_own, true
  %brmerge = or i1 %tobool8.not, %tx_own.not
  br i1 %brmerge, label %if.end17.if.end31_crit_edge, label %if.then30

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then30:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !12
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end17.if.end31_crit_edge, %if.end17.thread
  %tdes3.050 = phi i32 [ %and16, %if.end17.thread ], [ %or15, %if.end17.if.end31_crit_edge ], [ %or15, %if.then30 ]
  %and22 = and i32 %tdes3.050, -268435457
  %masksel = select i1 %ls, i32 268435456, i32 0
  %tdes3.1 = or i32 %and22, %masksel
  %or26 = or i32 %tdes3.1, -2147483648
  %tdes3.2 = select i1 %tx_own, i32 %or26, i32 %tdes3.1
  %9 = tail call i32 @llvm.bswap.i32(i32 %tdes3.2)
  %10 = ptrtoint ptr %des3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %des3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwxgmac2_set_tx_owner(ptr nocapture noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3, align 4
  %or = or i32 %1, 128
  store i32 %or, ptr %des3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dwxgmac2_get_tx_owner(ptr nocapture noundef readonly %p) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3, align 4
  %.mask = lshr i32 %1, 7
  %.mask.lobit = and i32 %.mask, 1
  ret i32 %.mask.lobit
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwxgmac2_release_tx_desc(ptr nocapture noundef writeonly %p, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %p, i32 0, i32 16)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwxgmac2_set_tx_ic(ptr nocapture noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des2, align 4
  %or = or i32 %1, 128
  store i32 %or, ptr %des2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dwxgmac2_get_tx_ls(ptr nocapture noundef readonly %p) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3, align 4
  %2 = lshr i32 %1, 4
  %.lobit = and i32 %2, 1
  ret i32 %.lobit
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dwxgmac2_get_tx_status(ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %x, ptr nocapture noundef readonly %p, ptr nocapture noundef readnone %ioaddr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  %and3 = lshr i32 %2, 28
  %and3.lobit = and i32 %and3, 1
  %3 = xor i32 %and3.lobit, 1
  %retval.0 = select i1 %tobool.not, i32 %3, i32 4, !prof !13
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dwxgmac2_get_tx_len(ptr nocapture noundef readonly %p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des2, align 4
  %2 = and i32 %1, -12648448
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwxgmac2_set_rx_owner(ptr nocapture noundef %p, i32 noundef %disable_rx_ic) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disable_rx_ic)
  %tobool.not = icmp eq i32 %disable_rx_ic, 0
  %spec.select.v = select i1 %tobool.not, i32 192, i32 128
  %spec.select = or i32 %1, %spec.select.v
  %2 = ptrtoint ptr %des3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %des3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dwxgmac2_get_rx_frame_len(ptr nocapture noundef readonly %p, i32 noundef %rx_coe) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3, align 4
  %2 = and i32 %1, -12648448
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dwxgmac2_get_rx_status(ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %x, ptr nocapture noundef readonly %p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !13

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end12, label %if.end.cleanup_crit_edge, !prof !13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %and13 = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end24, !prof !13

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %and25 = lshr i32 %2, 15
  %and25.lobit = and i32 %and25, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 16, %if.end12.cleanup_crit_edge ], [ %and25.lobit, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwxgmac2_enable_tx_timestamp(ptr nocapture noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des2, align 4
  %or = or i32 %1, 64
  store i32 %or, ptr %des2, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dwxgmac2_get_tx_timestamp_status(ptr nocapture noundef readnone %p) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwxgmac2_get_timestamp(ptr nocapture noundef readonly %desc, i32 noundef %ats, ptr nocapture noundef writeonly %ts) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %des1 = getelementptr inbounds %struct.dma_desc, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des1, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %conv = zext i32 %2 to i64
  %mul = mul nuw nsw i64 %conv, 1000000000
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %desc, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %conv1 = zext i32 %5 to i64
  %add2 = add nuw nsw i64 %mul, %conv1
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %add2, ptr %ts, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwxgmac2_get_rx_timestamp_status(ptr nocapture noundef readonly %desc, ptr nocapture noundef readonly %next_desc, i32 noundef %ats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %desc, i32 0, i32 3
  %0 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !14

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %des3.i = getelementptr inbounds %struct.dma_desc, ptr %next_desc, i32 0, i32 3
  %3 = ptrtoint ptr %des3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %des3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !15
  %5 = and i32 %4, 1342177472
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435520, i32 %5)
  %.not.i = icmp eq i32 %5, 268435520
  br i1 %.not.i, label %if.then.i, label %if.then.if.end_crit_edge, !prof !16

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %6 = ptrtoint ptr %next_desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %next_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i = icmp eq i32 %7, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %des1.i = getelementptr inbounds %struct.dma_desc, ptr %next_desc, i32 0, i32 1
  %8 = ptrtoint ptr %des1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %des1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp16.i = icmp eq i32 %9, -1
  br i1 %cmp16.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.end.i, %land.lhs.true.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ], [ 0, %land.lhs.true.i.if.end_crit_edge ], [ 1, %if.end.i ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwxgmac2_set_mss(ptr nocapture noundef writeonly %p, i32 noundef %mss) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %p, align 4
  %des1 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 1
  %1 = ptrtoint ptr %des1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %des1, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %mss)
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %3 = ptrtoint ptr %des2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %des2, align 4
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %4 = ptrtoint ptr %des3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 68, ptr %des3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwxgmac2_get_addr(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %addr) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %addr, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwxgmac2_set_addr(ptr nocapture noundef writeonly %p, i32 noundef %addr) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %1 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %p, align 4
  %des1 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %des1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %des1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwxgmac2_clear(ptr nocapture noundef writeonly %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %p, i32 0, i32 16)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dwxgmac2_get_rx_hash(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %hash, ptr nocapture noundef writeonly %type) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %and = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and1 = lshr i32 %2, 20
  %shr = and i32 %and1, 15
  %3 = add nsw i32 %shr, -1
  %switch.and = and i32 %3, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %4 = select i1 %switch.selectcmp, i32 3, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %type, align 4
  %des1 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 1
  %6 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %des1, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %hash, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwxgmac2_get_rx_header_len(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %len) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3, align 4
  %2 = and i32 %1, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %3 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %des2, align 4
  %5 = and i32 %4, -16580608
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwxgmac2_set_sec_addr(ptr nocapture noundef writeonly %p, i32 noundef %addr, i1 noundef zeroext %is_valid) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %1 = ptrtoint ptr %des2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %des2, align 4
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %des3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %des3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwxgmac2_set_sarc(ptr nocapture noundef %p, i32 noundef %sarc_type) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %sarc_type, 23
  %and = and i32 %shl, 58720256
  %0 = tail call i32 @llvm.bswap.i32(i32 %and)
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %1 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %des3, align 4
  %or = or i32 %2, %0
  store i32 %or, ptr %des3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwxgmac2_set_vlan_tag(ptr nocapture noundef %p, i16 noundef zeroext %tag, i16 noundef zeroext %inner_tag, i32 noundef %inner_type) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inner_type)
  %tobool.not = icmp eq i32 %inner_type, 0
  %0 = call ptr @memset(ptr %p, i32 0, i32 16)
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %1 = tail call i16 @llvm.bswap.i16(i16 %inner_tag)
  %2 = zext i16 %1 to i32
  %3 = ptrtoint ptr %des2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %des2, align 4
  %4 = shl i32 %inner_type, 10
  %or = and i32 %4, 3072
  %5 = or i32 %or, 512
  %6 = ptrtoint ptr %des3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %des3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv5 = zext i16 %tag to i32
  %7 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %des3, align 4
  %9 = or i32 %conv5, 1073807360
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %or12 = or i32 %10, %8
  %11 = ptrtoint ptr %des3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or12, ptr %des3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwxgmac2_set_vlan(ptr nocapture noundef %p, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %type, 22
  %and = and i32 %shl, 12582912
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des2, align 4
  %or = or i32 %1, %and
  store i32 %or, ptr %des2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwxgmac2_set_tbs(ptr nocapture noundef writeonly %p, i32 noundef %sec, i32 noundef %nsec) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %sec, 255
  %or = or i32 %and, -2147483648
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %1 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %p, align 4
  %and1 = and i32 %nsec, -256
  %2 = tail call i32 @llvm.bswap.i32(i32 %and1)
  %des5 = getelementptr inbounds %struct.dma_edesc, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %des5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %des5, align 4
  %des6 = getelementptr inbounds %struct.dma_edesc, ptr %p, i32 0, i32 2
  %4 = ptrtoint ptr %des6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %des6, align 4
  %des7 = getelementptr inbounds %struct.dma_edesc, ptr %p, i32 0, i32 3
  %5 = ptrtoint ptr %des7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %des7, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @dwxgmac210_desc_ops, !1, !"dwxgmac210_desc_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c", i32 349, i32 30}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 2156637395}
!12 = !{i64 2156642359}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2156633342}
!16 = !{!"branch_weights", i32 4000000, i32 4001}
