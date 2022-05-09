; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_desc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dma_desc = type { i32, i32, i32, i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_extended_desc = type { %struct.dma_desc, i32, i32, i32, i32 }
%struct.dma_edesc = type { i32, i32, i32, i32, %struct.dma_desc }

@dwmac4_desc_ops = dso_local constant { %struct.stmmac_desc_ops, [36 x i8] } { %struct.stmmac_desc_ops { ptr @dwmac4_rd_init_rx_desc, ptr @dwmac4_rd_init_tx_desc, ptr @dwmac4_rd_prepare_tx_desc, ptr @dwmac4_rd_prepare_tso_tx_desc, ptr @dwmac4_set_tx_owner, ptr @dwmac4_get_tx_owner, ptr @dwmac4_release_tx_desc, ptr @dwmac4_rd_set_tx_ic, ptr @dwmac4_get_tx_ls, ptr @dwmac4_wrback_get_tx_status, ptr @dwmac4_rd_get_tx_len, ptr @dwmac4_set_rx_owner, ptr @dwmac4_wrback_get_rx_frame_len, ptr @dwmac4_wrback_get_rx_status, ptr null, ptr @dwmac4_rd_enable_tx_timestamp, ptr @dwmac4_wrback_get_tx_timestamp_status, ptr @dwmac4_get_timestamp, ptr @dwmac4_wrback_get_rx_timestamp_status, ptr @dwmac4_display_ring, ptr @dwmac4_set_mss_ctxt, ptr @dwmac4_get_addr, ptr @dwmac4_set_addr, ptr @dwmac4_clear, ptr null, ptr @dwmac4_get_rx_header_len, ptr @dwmac4_set_sec_addr, ptr @dwmac4_set_sarc, ptr @dwmac4_set_vlan_tag, ptr @dwmac4_set_vlan, ptr @dwmac4_set_tbs }, [36 x i8] zeroinitializer }, align 32
@dwmac4_ring_mode_ops = dso_local constant { %struct.stmmac_mode_ops, [36 x i8] } { %struct.stmmac_mode_ops { ptr null, ptr null, ptr null, ptr @set_16kib_bfsize, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dwmac4_display_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s descriptor ring:\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dwmac4_display_ring\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c\00", [45 x i8] zeroinitializer }, align 32
@dwmac4_display_ring._entry_ptr = internal global ptr @dwmac4_display_ring._entry, section ".printk_index", align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@dwmac4_display_ring._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%03d [%pad]: 0x%x 0x%x 0x%x 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@dwmac4_display_ring._entry_ptr.7 = internal global ptr @dwmac4_display_ring._entry.5, section ".printk_index", align 4
@dwmac4_display_ring._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%03d [%pad]: 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@dwmac4_display_ring._entry_ptr.10 = internal global ptr @dwmac4_display_ring._entry.8, section ".printk_index", align 4
@dwmac4_display_ring._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dwmac4_display_ring._entry_ptr.12 = internal global ptr @dwmac4_display_ring._entry.11, section ".printk_index", align 4
@dwmac4_display_ring._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013unsupported descriptor!\00", [38 x i8] zeroinitializer }, align 32
@dwmac4_display_ring._entry_ptr.15 = internal global ptr @dwmac4_display_ring._entry.13, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 15]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"dwmac4_desc_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 557, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"dwmac4_ring_mode_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 589, i32 30 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 413, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 420, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 431, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 444, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [54 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 453, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @dwmac4_display_ring._entry, ptr @dwmac4_display_ring._entry.11, ptr @dwmac4_display_ring._entry.13, ptr @dwmac4_display_ring._entry.5, ptr @dwmac4_display_ring._entry.8, ptr @dwmac4_display_ring._entry_ptr, ptr @dwmac4_display_ring._entry_ptr.10, ptr @dwmac4_display_ring._entry_ptr.12, ptr @dwmac4_display_ring._entry_ptr.15, ptr @dwmac4_display_ring._entry_ptr.7, ptr @dwmac4_desc_ops, ptr @dwmac4_ring_mode_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.14], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac4_desc_ops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac4_ring_mode_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac4_display_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac4_display_ring._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac4_display_ring._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac4_display_ring._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac4_display_ring._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwmac4_rd_init_rx_desc(ptr nocapture noundef %p, i32 noundef %disable_rx_ic, i32 noundef %mode, i32 noundef %end, i32 noundef %bfsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %des3.i = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %des3.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disable_rx_ic)
  %tobool.not.i = icmp eq i32 %disable_rx_ic, 0
  %spec.select.v.i = select i1 %tobool.not.i, i32 193, i32 129
  %spec.select.i = or i32 %1, %spec.select.v.i
  %2 = ptrtoint ptr %des3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select.i, ptr %des3.i, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwmac4_rd_init_tx_desc(ptr nocapture noundef writeonly %p, i32 noundef %mode, i32 noundef %end) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %p, i32 0, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_rd_prepare_tx_desc(ptr nocapture noundef %p, i32 noundef %is_fs, i32 noundef %len, i1 noundef zeroext %csum_flag, i32 noundef %mode, i1 noundef zeroext %tx_own, i1 noundef zeroext %ls, i32 noundef %tot_pkt_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  %and3 = and i32 %tot_pkt_len, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_fs)
  %tobool.not = icmp eq i32 %is_fs, 0
  %5 = and i32 %1, -33
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %masksel = select i1 %tobool.not, i32 0, i32 536870912
  %and6 = or i32 %and3, %masksel
  %tdes3.0 = or i32 %and6, %6
  br i1 %csum_flag, label %if.then10, label %if.else12, !prof !36

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %or11 = or i32 %tdes3.0, 196608
  br label %if.end14

if.else12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %and13 = and i32 %tdes3.0, -196609
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then10
  %tdes3.1 = phi i32 [ %or11, %if.then10 ], [ %and13, %if.else12 ]
  %tx_own.not = xor i1 %tx_own, true
  %brmerge = or i1 %tobool.not, %tx_own.not
  br i1 %brmerge, label %if.end14.if.end28_crit_edge, label %if.then27

if.end14.if.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then27:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !37
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end14.if.end28_crit_edge
  %and19 = and i32 %tdes3.1, -268435457
  %masksel42 = select i1 %ls, i32 268435456, i32 0
  %tdes3.2 = or i32 %and19, %masksel42
  %or23 = or i32 %tdes3.2, -2147483648
  %tdes3.3 = select i1 %tx_own, i32 %or23, i32 %tdes3.2
  %7 = tail call i32 @llvm.bswap.i32(i32 %tdes3.3)
  %8 = ptrtoint ptr %des3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %des3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_rd_prepare_tso_tx_desc(ptr nocapture noundef %p, i32 noundef %is_fs, i32 noundef %len1, i32 noundef %len2, i1 noundef zeroext %tx_own, i1 noundef zeroext %ls, i32 noundef %tcphdrlen, i32 noundef %tcppayloadlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  %and16 = and i32 %2, -536870913
  br label %if.end31

if.end17:                                         ; preds = %if.end7
  %shl10 = shl i32 %tcphdrlen, 19
  %and11 = and i32 %shl10, 7864320
  %and13 = and i32 %tcppayloadlen, 262143
  %or12 = or i32 %and13, %and11
  %or14 = or i32 %or12, %2
  %or15 = or i32 %or14, 537133056
  %tx_own.not = xor i1 %tx_own, true
  %brmerge = or i1 %tobool8.not, %tx_own.not
  br i1 %brmerge, label %if.end17.if.end31_crit_edge, label %if.then30

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then30:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !38
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end17.if.end31_crit_edge, %if.end17.thread
  %tdes3.048 = phi i32 [ %and16, %if.end17.thread ], [ %or15, %if.end17.if.end31_crit_edge ], [ %or15, %if.then30 ]
  %and22 = and i32 %tdes3.048, -268435457
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
define internal void @dwmac4_set_tx_owner(ptr nocapture noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
define internal i32 @dwmac4_get_tx_owner(ptr nocapture noundef readonly %p) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3, align 4
  %2 = lshr i32 %1, 7
  %shr = and i32 %2, 1
  ret i32 %shr
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwmac4_release_tx_desc(ptr nocapture noundef writeonly %p, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %p, i32 0, i32 16)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwmac4_rd_set_tx_ic(ptr nocapture noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
define internal i32 @dwmac4_get_tx_ls(ptr nocapture noundef readonly %p) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3, align 4
  %2 = lshr i32 %1, 4
  %shr = and i32 %2, 1
  ret i32 %shr
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dwmac4_wrback_get_tx_status(ptr nocapture noundef %data, ptr nocapture noundef %x, ptr nocapture noundef readonly %p, ptr nocapture noundef readnone %ioaddr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !36

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end14, !prof !36

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %and15 = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end127_crit_edge, label %if.then23, !prof !36

if.end14.if.end127_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127

if.then23:                                        ; preds = %if.end14
  %and24 = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then23.if.end33_crit_edge, label %if.then32, !prof !36

if.then23.if.end33_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then32:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  %tx_jabber = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 6
  %3 = ptrtoint ptr %tx_jabber to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_jabber, align 8
  %inc = add i32 %4, 1
  store i32 %inc, ptr %tx_jabber, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then23.if.end33_crit_edge
  %and34 = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end44_crit_edge, label %if.then42, !prof !36

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then42:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %tx_frame_flushed = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 7
  %5 = ptrtoint ptr %tx_frame_flushed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_frame_flushed, align 4
  %inc43 = add i32 %6, 1
  store i32 %inc43, ptr %tx_frame_flushed, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end33.if.end44_crit_edge
  %and45 = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end56_crit_edge, label %if.then53, !prof !36

if.end44.if.end56_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then53:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %tx_losscarrier = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 2
  %7 = ptrtoint ptr %tx_losscarrier to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_losscarrier, align 8
  %inc54 = add i32 %8, 1
  store i32 %inc54, ptr %tx_losscarrier, align 8
  %tx_carrier_errors = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 17
  %9 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_carrier_errors, align 4
  %inc55 = add i32 %10, 1
  store i32 %inc55, ptr %tx_carrier_errors, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end44.if.end56_crit_edge
  %and57 = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end69_crit_edge, label %if.then65, !prof !36

if.end56.if.end69_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then65:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  %tx_carrier = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 1
  %11 = ptrtoint ptr %tx_carrier to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_carrier, align 4
  %inc66 = add i32 %12, 1
  store i32 %inc66, ptr %tx_carrier, align 4
  %tx_carrier_errors67 = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 17
  %13 = ptrtoint ptr %tx_carrier_errors67 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_carrier_errors67, align 4
  %inc68 = add i32 %14, 1
  store i32 %inc68, ptr %tx_carrier_errors67, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %if.end56.if.end69_crit_edge
  %15 = and i32 %2, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %if.end69.if.end82_crit_edge, label %if.then80, !prof !36

if.end69.if.end82_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

if.then80:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  %and81 = lshr i32 %2, 4
  %shr = and i32 %and81, 15
  %collisions = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 9
  %16 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %collisions, align 4
  %add = add i32 %17, %shr
  store i32 %add, ptr %collisions, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end69.if.end82_crit_edge
  %and83 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end82.if.end93_crit_edge, label %if.then91, !prof !36

if.end82.if.end93_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

if.then91:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  %tx_deferred = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 4
  %18 = ptrtoint ptr %tx_deferred to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_deferred, align 16
  %inc92 = add i32 %19, 1
  store i32 %inc92, ptr %tx_deferred, align 16
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end82.if.end93_crit_edge
  %and94 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end93.if.end104_crit_edge, label %if.then102, !prof !36

if.end93.if.end104_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104

if.then102:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %x, align 128
  %inc103 = add i32 %21, 1
  store i32 %inc103, ptr %x, align 128
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end93.if.end104_crit_edge
  %ret.0 = phi i32 [ 10, %if.then102 ], [ 2, %if.end93.if.end104_crit_edge ]
  %and105 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end104.if.end115_crit_edge, label %if.then113, !prof !36

if.end104.if.end115_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end115

if.then113:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  %tx_ip_header_error = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 9
  %22 = ptrtoint ptr %tx_ip_header_error to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_ip_header_error, align 4
  %inc114 = add i32 %23, 1
  store i32 %inc114, ptr %tx_ip_header_error, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.end104.if.end115_crit_edge
  %and116 = and i32 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end127_crit_edge, label %if.then124, !prof !36

if.end115.if.end127_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127

if.then124:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #15
  %tx_payload_error = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 8
  %24 = ptrtoint ptr %tx_payload_error to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_payload_error, align 32
  %inc125 = add i32 %25, 1
  store i32 %inc125, ptr %tx_payload_error, align 32
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %if.end115.if.end127_crit_edge, %if.end14.if.end127_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.then124 ], [ %ret.0, %if.end115.if.end127_crit_edge ], [ 0, %if.end14.if.end127_crit_edge ]
  %and128 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end127.cleanup_crit_edge, label %if.then136, !prof !36

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then136:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  %tx_deferred137 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 4
  %26 = ptrtoint ptr %tx_deferred137 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_deferred137, align 16
  %inc138 = add i32 %27, 1
  store i32 %inc138, ptr %tx_deferred137, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.then136, %if.end127.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ %ret.1, %if.then136 ], [ %ret.1, %if.end127.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dwmac4_rd_get_tx_len(ptr nocapture noundef readonly %p) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
define internal void @dwmac4_set_rx_owner(ptr nocapture noundef %p, i32 noundef %disable_rx_ic) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disable_rx_ic)
  %tobool.not = icmp eq i32 %disable_rx_ic, 0
  %spec.select.v = select i1 %tobool.not, i32 193, i32 129
  %spec.select = or i32 %1, %spec.select.v
  %2 = ptrtoint ptr %des3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %des3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dwmac4_wrback_get_rx_frame_len(ptr nocapture noundef readonly %p, i32 noundef %rx_coe) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3, align 4
  %2 = and i32 %1, -8454144
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dwmac4_wrback_get_rx_status(ptr nocapture noundef %data, ptr noundef %x, ptr nocapture noundef readonly %p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %des1 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des1, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %3 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %des2, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %6 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %des3, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not = icmp sgt i32 %8, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !36

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end12, label %if.end.cleanup_crit_edge, !prof !36

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %and13 = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end24, !prof !36

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  %and25 = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end101_crit_edge, label %if.then33, !prof !36

if.end24.if.end101_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

if.then33:                                        ; preds = %if.end24
  %and34 = and i32 %8, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.then33.if.end43_crit_edge, label %if.then42, !prof !36

if.then33.if.end43_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then42:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  %rx_length_errors = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 10
  %9 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_length_errors, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %rx_length_errors, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.then33.if.end43_crit_edge
  %and44 = and i32 %8, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end54_crit_edge, label %if.then52, !prof !36

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then52:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  %rx_gmac_overflow = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 20
  %11 = ptrtoint ptr %rx_gmac_overflow to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_gmac_overflow, align 16
  %inc53 = add i32 %12, 1
  store i32 %inc53, ptr %rx_gmac_overflow, align 16
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end43.if.end54_crit_edge
  %and55 = and i32 %8, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.if.end65_crit_edge, label %if.then63, !prof !36

if.end54.if.end65_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.then63:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  %rx_watchdog = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 21
  %13 = ptrtoint ptr %rx_watchdog to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_watchdog, align 4
  %inc64 = add i32 %14, 1
  store i32 %inc64, ptr %rx_watchdog, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end54.if.end65_crit_edge
  %and66 = and i32 %8, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end76_crit_edge, label %if.then74, !prof !36

if.end65.if.end76_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

if.then74:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  %rx_mii = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 18
  %15 = ptrtoint ptr %rx_mii to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_mii, align 8
  %inc75 = add i32 %16, 1
  store i32 %inc75, ptr %rx_mii, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end65.if.end76_crit_edge
  %and77 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end76.if.end89_crit_edge, label %if.then85, !prof !36

if.end76.if.end89_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.then85:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  %rx_crc_errors = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 15
  %17 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_crc_errors, align 4
  %inc86 = add i32 %18, 1
  store i32 %inc86, ptr %rx_crc_errors, align 4
  %rx_crc_errors87 = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 12
  %19 = ptrtoint ptr %rx_crc_errors87 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_crc_errors87, align 4
  %inc88 = add i32 %20, 1
  store i32 %inc88, ptr %rx_crc_errors87, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %if.end76.if.end89_crit_edge
  %and90 = and i32 %8, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end89.if.end101_crit_edge, label %if.then98, !prof !36

if.end89.if.end101_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

if.then98:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  %dribbling_bit = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 16
  %21 = ptrtoint ptr %dribbling_bit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dribbling_bit, align 64
  %inc99 = add i32 %22, 1
  store i32 %inc99, ptr %dribbling_bit, align 64
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %if.end89.if.end101_crit_edge, %if.end24.if.end101_crit_edge
  %ret.0 = phi i32 [ 0, %if.end24.if.end101_crit_edge ], [ 1, %if.then98 ], [ 1, %if.end89.if.end101_crit_edge ]
  %and102 = lshr i32 %2, 8
  %shr = and i32 %and102, 15
  %and103 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end101.if.end107_crit_edge, label %if.then105

if.end101.if.end107_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

if.then105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  %ip_hdr_err = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 56
  %23 = ptrtoint ptr %ip_hdr_err to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ip_hdr_err, align 32
  %inc106 = add i32 %24, 1
  store i32 %inc106, ptr %ip_hdr_err, align 32
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.end101.if.end107_crit_edge
  %and108 = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end107.if.end112_crit_edge, label %if.then110

if.end107.if.end112_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  %ip_csum_bypassed = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 58
  %25 = ptrtoint ptr %ip_csum_bypassed to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ip_csum_bypassed, align 8
  %inc111 = add i32 %26, 1
  store i32 %inc111, ptr %ip_csum_bypassed, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.end107.if.end112_crit_edge
  %and113 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end112.if.end117_crit_edge, label %if.then115

if.end112.if.end117_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end117

if.then115:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  %ipv4_pkt_rcvd = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 59
  %27 = ptrtoint ptr %ipv4_pkt_rcvd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ipv4_pkt_rcvd, align 4
  %inc116 = add i32 %28, 1
  store i32 %inc116, ptr %ipv4_pkt_rcvd, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %if.end112.if.end117_crit_edge
  %and118 = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end117.if.end122_crit_edge, label %if.then120

if.end117.if.end122_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end122

if.then120:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  %ipv6_pkt_rcvd = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 60
  %29 = ptrtoint ptr %ipv6_pkt_rcvd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ipv6_pkt_rcvd, align 16
  %inc121 = add i32 %30, 1
  store i32 %inc121, ptr %ipv6_pkt_rcvd, align 16
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.end117.if.end122_crit_edge
  %31 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %if.end122.if.end174_crit_edge [
    i32 0, label %if.then123
    i32 1, label %if.then126
    i32 2, label %if.then130
    i32 3, label %if.then134
    i32 4, label %if.then138
    i32 5, label %if.then142
    i32 6, label %if.then146
    i32 7, label %if.then150
    i32 8, label %if.then154
    i32 9, label %if.then158
    i32 15, label %if.then162
  ]

if.end122.if.end174_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end174

if.then123:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  %no_ptp_rx_msg_type_ext = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 61
  %32 = ptrtoint ptr %no_ptp_rx_msg_type_ext to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %no_ptp_rx_msg_type_ext, align 4
  %inc124 = add i32 %33, 1
  store i32 %inc124, ptr %no_ptp_rx_msg_type_ext, align 4
  br label %if.end174

if.then126:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  %ptp_rx_msg_type_sync = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 62
  %34 = ptrtoint ptr %ptp_rx_msg_type_sync to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ptp_rx_msg_type_sync, align 8
  %inc127 = add i32 %35, 1
  store i32 %inc127, ptr %ptp_rx_msg_type_sync, align 8
  br label %if.end174

if.then130:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  %ptp_rx_msg_type_follow_up = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 63
  %36 = ptrtoint ptr %ptp_rx_msg_type_follow_up to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ptp_rx_msg_type_follow_up, align 4
  %inc131 = add i32 %37, 1
  store i32 %inc131, ptr %ptp_rx_msg_type_follow_up, align 4
  br label %if.end174

if.then134:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  %ptp_rx_msg_type_delay_req = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 64
  %38 = ptrtoint ptr %ptp_rx_msg_type_delay_req to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ptp_rx_msg_type_delay_req, align 128
  %inc135 = add i32 %39, 1
  store i32 %inc135, ptr %ptp_rx_msg_type_delay_req, align 128
  br label %if.end174

if.then138:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  %ptp_rx_msg_type_delay_resp = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 65
  %40 = ptrtoint ptr %ptp_rx_msg_type_delay_resp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ptp_rx_msg_type_delay_resp, align 4
  %inc139 = add i32 %41, 1
  store i32 %inc139, ptr %ptp_rx_msg_type_delay_resp, align 4
  br label %if.end174

if.then142:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  %ptp_rx_msg_type_pdelay_req = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 66
  %42 = ptrtoint ptr %ptp_rx_msg_type_pdelay_req to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ptp_rx_msg_type_pdelay_req, align 8
  %inc143 = add i32 %43, 1
  store i32 %inc143, ptr %ptp_rx_msg_type_pdelay_req, align 8
  br label %if.end174

if.then146:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  %ptp_rx_msg_type_pdelay_resp = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 67
  %44 = ptrtoint ptr %ptp_rx_msg_type_pdelay_resp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ptp_rx_msg_type_pdelay_resp, align 4
  %inc147 = add i32 %45, 1
  store i32 %inc147, ptr %ptp_rx_msg_type_pdelay_resp, align 4
  br label %if.end174

if.then150:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  %ptp_rx_msg_type_pdelay_follow_up = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 68
  %46 = ptrtoint ptr %ptp_rx_msg_type_pdelay_follow_up to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ptp_rx_msg_type_pdelay_follow_up, align 16
  %inc151 = add i32 %47, 1
  store i32 %inc151, ptr %ptp_rx_msg_type_pdelay_follow_up, align 16
  br label %if.end174

if.then154:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  %ptp_rx_msg_type_announce = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 69
  %48 = ptrtoint ptr %ptp_rx_msg_type_announce to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ptp_rx_msg_type_announce, align 4
  %inc155 = add i32 %49, 1
  store i32 %inc155, ptr %ptp_rx_msg_type_announce, align 4
  br label %if.end174

if.then158:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  %ptp_rx_msg_type_management = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 70
  %50 = ptrtoint ptr %ptp_rx_msg_type_management to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ptp_rx_msg_type_management, align 8
  %inc159 = add i32 %51, 1
  store i32 %inc159, ptr %ptp_rx_msg_type_management, align 8
  br label %if.end174

if.then162:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  %ptp_rx_msg_pkt_reserved_type = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 71
  %52 = ptrtoint ptr %ptp_rx_msg_pkt_reserved_type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ptp_rx_msg_pkt_reserved_type, align 4
  %inc163 = add i32 %53, 1
  store i32 %inc163, ptr %ptp_rx_msg_pkt_reserved_type, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then162, %if.then158, %if.then154, %if.then150, %if.then146, %if.then142, %if.then138, %if.then134, %if.then130, %if.then126, %if.then123, %if.end122.if.end174_crit_edge
  %and175 = and i32 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.end174.if.end179_crit_edge, label %if.then177

if.end174.if.end179_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end179

if.then177:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #15
  %ptp_frame_type = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 72
  %54 = ptrtoint ptr %ptp_frame_type to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ptp_frame_type, align 32
  %inc178 = add i32 %55, 1
  store i32 %inc178, ptr %ptp_frame_type, align 32
  br label %if.end179

if.end179:                                        ; preds = %if.then177, %if.end174.if.end179_crit_edge
  %and180 = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %if.end179.if.end184_crit_edge, label %if.then182

if.end179.if.end184_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end184

if.then182:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #15
  %ptp_ver = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 73
  %56 = ptrtoint ptr %ptp_ver to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ptp_ver, align 4
  %inc183 = add i32 %57, 1
  store i32 %inc183, ptr %ptp_ver, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.then182, %if.end179.if.end184_crit_edge
  %and185 = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %if.end184.if.end189_crit_edge, label %if.then187

if.end184.if.end189_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end189

if.then187:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #15
  %timestamp_dropped = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 74
  %58 = ptrtoint ptr %timestamp_dropped to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %timestamp_dropped, align 8
  %inc188 = add i32 %59, 1
  store i32 %inc188, ptr %timestamp_dropped, align 8
  br label %if.end189

if.end189:                                        ; preds = %if.then187, %if.end184.if.end189_crit_edge
  %and190 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %if.end189.if.end200_crit_edge, label %if.then198, !prof !36

if.end189.if.end200_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end200

if.then198:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #15
  %sa_rx_filter_fail = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 23
  %60 = ptrtoint ptr %sa_rx_filter_fail to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sa_rx_filter_fail, align 4
  %inc199 = add i32 %61, 1
  store i32 %inc199, ptr %sa_rx_filter_fail, align 4
  br label %if.end200

if.end200:                                        ; preds = %if.then198, %if.end189.if.end200_crit_edge
  %ret.1 = phi i32 [ 1, %if.then198 ], [ %ret.0, %if.end189.if.end200_crit_edge ]
  %and201 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %if.end200.if.end211_crit_edge, label %if.then209, !prof !36

if.end200.if.end211_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end211

if.then209:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #15
  %da_rx_filter_fail = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 22
  %62 = ptrtoint ptr %da_rx_filter_fail to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %da_rx_filter_fail, align 8
  %inc210 = add i32 %63, 1
  store i32 %inc210, ptr %da_rx_filter_fail, align 8
  br label %if.end211

if.end211:                                        ; preds = %if.then209, %if.end200.if.end211_crit_edge
  %ret.2 = phi i32 [ 1, %if.then209 ], [ %ret.1, %if.end200.if.end211_crit_edge ]
  %and212 = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  br i1 %tobool213.not, label %if.end211.if.end216_crit_edge, label %if.then214

if.end211.if.end216_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end216

if.then214:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #15
  %l3_filter_match = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 78
  %64 = ptrtoint ptr %l3_filter_match to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %l3_filter_match, align 8
  %inc215 = add i32 %65, 1
  store i32 %inc215, ptr %l3_filter_match, align 8
  br label %if.end216

if.end216:                                        ; preds = %if.then214, %if.end211.if.end216_crit_edge
  %and217 = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %if.end216.if.end221_crit_edge, label %if.then219

if.end216.if.end221_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end221

if.then219:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #15
  %l4_filter_match = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 79
  %66 = ptrtoint ptr %l4_filter_match to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %l4_filter_match, align 4
  %inc220 = add i32 %67, 1
  store i32 %inc220, ptr %l4_filter_match, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.then219, %if.end216.if.end221_crit_edge
  %68 = and i32 %5, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool224.not = icmp eq i32 %68, 0
  br i1 %tobool224.not, label %if.end221.cleanup_crit_edge, label %if.then225

if.end221.cleanup_crit_edge:                      ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then225:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #15
  %l3_l4_filter_no_match = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 80
  %69 = ptrtoint ptr %l3_l4_filter_no_match to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %l3_l4_filter_no_match, align 64
  %inc226 = add i32 %70, 1
  store i32 %inc226, ptr %l3_l4_filter_no_match, align 64
  br label %cleanup

cleanup:                                          ; preds = %if.then225, %if.end221.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 16, %if.end12.cleanup_crit_edge ], [ %ret.2, %if.then225 ], [ %ret.2, %if.end221.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwmac4_rd_enable_tx_timestamp(ptr nocapture noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des2, align 4
  %or = or i32 %1, 64
  store i32 %or, ptr %des2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dwmac4_wrback_get_tx_timestamp_status(ptr nocapture noundef readonly %p) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %and = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = lshr i32 %2, 17
  %and2.lobit = and i32 %and2, 1
  %retval.0 = select i1 %tobool.not, i32 %and2.lobit, i32 0
  ret i32 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwmac4_get_timestamp(ptr nocapture noundef readonly %desc, i32 noundef %ats, ptr nocapture noundef writeonly %ts) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %conv = zext i32 %2 to i64
  %des1 = getelementptr inbounds %struct.dma_desc, ptr %desc, i32 0, i32 1
  %3 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %des1, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %conv1 = zext i32 %5 to i64
  %mul = mul nuw nsw i64 %conv1, 1000000000
  %add = add nuw nsw i64 %mul, %conv
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %add, ptr %ts, align 8
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @dwmac4_wrback_get_rx_timestamp_status(ptr nocapture noundef readonly %desc, ptr nocapture noundef readonly %next_desc, i32 noundef %ats) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %desc, i32 0, i32 3
  %0 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des3, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.exit.thread_crit_edge, label %if.then, !prof !39

entry.exit.thread_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit.thread

if.then:                                          ; preds = %entry
  %des1 = getelementptr inbounds %struct.dma_desc, ptr %desc, i32 0, i32 1
  %3 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %des1, align 4
  %5 = and i32 %4, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.then.exit.thread_crit_edge, label %do.body.preheader, !prof !39

if.then.exit.thread_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit.thread

do.body.preheader:                                ; preds = %if.then
  %6 = ptrtoint ptr %next_desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %next_desc, align 4
  %des1.i = getelementptr inbounds %struct.dma_desc, ptr %next_desc, i32 0, i32 1
  %8 = ptrtoint ptr %des1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %des1.i, align 4
  %des3.i = getelementptr inbounds %struct.dma_desc, ptr %next_desc, i32 0, i32 3
  %10 = ptrtoint ptr %des3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %des3.i, align 4
  %12 = and i32 %11, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %12)
  %13 = icmp eq i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i = icmp eq i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp5.i = icmp eq i32 %9, -1
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.i, i1 false
  %spec.select.i = select i1 %or.cond.i, i32 -22, i32 0
  %ret.0.i = select i1 %13, i32 %spec.select.i, i32 1, !prof !36
  %cmp = select i1 %13, i1 %or.cond.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.i)
  %cmp13 = icmp eq i32 %ret.0.i, 1
  br i1 %cmp, label %do.body.preheader.exit.thread_crit_edge, label %do.body.preheader.do.body_crit_edge

do.body.preheader.do.body_crit_edge:              ; preds = %do.body.preheader
  br label %do.body

do.body.preheader.exit.thread_crit_edge:          ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit.thread

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader.do.body_crit_edge
  %i.0 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %do.body.preheader.do.body_crit_edge ]
  %inc = add nuw nsw i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.0)
  %cmp14 = icmp ult i32 %i.0, 9
  %or.cond = select i1 %cmp13, i1 %cmp14, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc)
  %cmp15 = icmp ne i32 %inc, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp20 = icmp eq i32 %ret.0.i, 0
  %or.cond38 = select i1 %cmp15, i1 %cmp20, i1 false
  %spec.select = zext i1 %or.cond38 to i32
  br label %exit.thread

exit.thread:                                      ; preds = %do.end, %do.body.preheader.exit.thread_crit_edge, %if.then.exit.thread_crit_edge, %entry.exit.thread_crit_edge
  %14 = phi i32 [ 0, %if.then.exit.thread_crit_edge ], [ 0, %entry.exit.thread_crit_edge ], [ %spec.select, %do.end ], [ 0, %do.body.preheader.exit.thread_crit_edge ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac4_display_ring(ptr nocapture noundef readonly %head, i32 noundef %size, i1 noundef zeroext %rx, i32 noundef %dma_rx_phy, i32 noundef %desc_size) #2 align 64 {
entry:
  %dma_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr) #13
  %cond = select i1 %rx, ptr @.str.3, ptr @.str.4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %cond) #16
  %0 = zext i32 %desc_size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %desc_size, label %do.end62 [
    i32 16, label %for.cond.preheader
    i32 32, label %for.cond9.preheader
  ]

for.cond9.preheader:                              ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp10107.not = icmp eq i32 %size, 0
  br i1 %cmp10107.not, label %for.cond9.preheader.if.end66_crit_edge, label %for.cond9.preheader.for.body11_crit_edge

for.cond9.preheader.for.body11_crit_edge:         ; preds = %for.cond9.preheader
  br label %for.body11

for.cond9.preheader.if.end66_crit_edge:           ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp1110.not = icmp eq i32 %size, 0
  br i1 %cmp1110.not, label %for.cond.preheader.if.end66_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end66_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0112 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %p.0111 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %head, %for.cond.preheader.for.body_crit_edge ]
  %mul = shl i32 %i.0112, 4
  %add = add i32 %mul, %dma_rx_phy
  %1 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %dma_addr, align 4
  %2 = ptrtoint ptr %p.0111 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p.0111, align 4
  %4 = call i32 @llvm.bswap.i32(i32 %3)
  %des1 = getelementptr inbounds %struct.dma_desc, ptr %p.0111, i32 0, i32 1
  %5 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %des1, align 4
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p.0111, i32 0, i32 2
  %8 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %des2, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p.0111, i32 0, i32 3
  %11 = ptrtoint ptr %des3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %des3, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %i.0112, ptr noundef nonnull %dma_addr, i32 noundef %4, i32 noundef %7, i32 noundef %10, i32 noundef %13) #16
  %incdec.ptr = getelementptr %struct.dma_desc, ptr %p.0111, i32 1
  %inc = add nuw i32 %i.0112, 1
  %exitcond114.not = icmp eq i32 %inc, %size
  br i1 %exitcond114.not, label %for.body.if.end66_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.if.end66_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.cond9.preheader.for.body11_crit_edge
  %i.1109 = phi i32 [ %inc28, %for.body11.for.body11_crit_edge ], [ 0, %for.cond9.preheader.for.body11_crit_edge ]
  %extp.0108 = phi ptr [ %incdec.ptr26, %for.body11.for.body11_crit_edge ], [ %head, %for.cond9.preheader.for.body11_crit_edge ]
  %mul12 = shl i32 %i.1109, 5
  %add13 = add i32 %mul12, %dma_rx_phy
  %14 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add13, ptr %dma_addr, align 4
  %15 = ptrtoint ptr %extp.0108 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %extp.0108, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %des120 = getelementptr inbounds %struct.dma_desc, ptr %extp.0108, i32 0, i32 1
  %18 = ptrtoint ptr %des120 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %des120, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %des222 = getelementptr inbounds %struct.dma_desc, ptr %extp.0108, i32 0, i32 2
  %21 = ptrtoint ptr %des222 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %des222, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %des324 = getelementptr inbounds %struct.dma_desc, ptr %extp.0108, i32 0, i32 3
  %24 = ptrtoint ptr %des324 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %des324, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %des4 = getelementptr inbounds %struct.dma_extended_desc, ptr %extp.0108, i32 0, i32 1
  %27 = ptrtoint ptr %des4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %des4, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %des5 = getelementptr inbounds %struct.dma_extended_desc, ptr %extp.0108, i32 0, i32 2
  %30 = ptrtoint ptr %des5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %des5, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %des6 = getelementptr inbounds %struct.dma_extended_desc, ptr %extp.0108, i32 0, i32 3
  %33 = ptrtoint ptr %des6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %des6, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %des7 = getelementptr inbounds %struct.dma_extended_desc, ptr %extp.0108, i32 0, i32 4
  %36 = ptrtoint ptr %des7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %des7, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %i.1109, ptr noundef nonnull %dma_addr, i32 noundef %17, i32 noundef %20, i32 noundef %23, i32 noundef %26, i32 noundef %29, i32 noundef %32, i32 noundef %35, i32 noundef %38) #16
  %incdec.ptr26 = getelementptr %struct.dma_extended_desc, ptr %extp.0108, i32 1
  %inc28 = add nuw i32 %i.1109, 1
  %exitcond.not = icmp eq i32 %inc28, %size
  br i1 %exitcond.not, label %for.body11.if.end66_crit_edge, label %for.body11.for.body11_crit_edge

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body11

for.body11.if.end66_crit_edge:                    ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

do.end62:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #16
  br label %if.end66

if.end66:                                         ; preds = %do.end62, %for.body11.if.end66_crit_edge, %for.body.if.end66_crit_edge, %for.cond.preheader.if.end66_crit_edge, %for.cond9.preheader.if.end66_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwmac4_set_mss_ctxt(ptr nocapture noundef writeonly %p, i32 noundef %mss) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
define internal void @dwmac4_get_addr(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
define internal void @dwmac4_set_addr(ptr nocapture noundef writeonly %p, i32 noundef %addr) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
define internal void @dwmac4_clear(ptr nocapture noundef writeonly %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %p, i32 0, i32 16)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwmac4_get_rx_header_len(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %des2, align 4
  %2 = and i32 %1, -16580608
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %len, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dwmac4_set_sec_addr(ptr nocapture noundef writeonly %p, i32 noundef %addr, i1 noundef zeroext %buf2_valid) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %des2 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 2
  %1 = ptrtoint ptr %des2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %des2, align 4
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  %. = select i1 %buf2_valid, i32 2, i32 0
  %2 = ptrtoint ptr %des3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %., ptr %des3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwmac4_set_sarc(ptr nocapture noundef %p, i32 noundef %sarc_type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
define internal void @dwmac4_set_vlan_tag(ptr nocapture noundef %p, i16 noundef zeroext %tag, i16 noundef zeroext %inner_tag, i32 noundef %inner_type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %des3 = getelementptr inbounds %struct.dma_desc, ptr %p, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inner_type)
  %tobool.not = icmp eq i32 %inner_type, 0
  %0 = call ptr @memset(ptr %p, i32 0, i32 16)
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
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
define internal void @dwmac4_set_vlan(ptr nocapture noundef %p, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
define internal void @dwmac4_set_tbs(ptr nocapture noundef writeonly %p, i32 noundef %sec, i32 noundef %nsec) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @set_16kib_bfsize(i32 noundef %mtu) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8187, i32 %mtu)
  %cmp = icmp sgt i32 %mtu, 8187
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !prof !39

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 16368, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @dwmac4_desc_ops, !1, !"dwmac4_desc_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c", i32 557, i32 30}
!2 = !{ptr @dwmac4_ring_mode_ops, !3, !"dwmac4_ring_mode_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c", i32 589, i32 30}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c", i32 413, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @dwmac4_display_ring._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @dwmac4_display_ring._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c", i32 420, i32 4}
!14 = !{ptr @dwmac4_display_ring._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @dwmac4_display_ring._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c", i32 431, i32 4}
!18 = !{ptr @dwmac4_display_ring._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @dwmac4_display_ring._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @dwmac4_display_ring._entry.11, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c", i32 444, i32 4}
!22 = !{ptr @dwmac4_display_ring._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c", i32 453, i32 3}
!25 = !{ptr @dwmac4_display_ring._entry.13, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @dwmac4_display_ring._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2156654648}
!38 = !{i64 2156659632}
!39 = !{!"branch_weights", i32 1, i32 2000}
