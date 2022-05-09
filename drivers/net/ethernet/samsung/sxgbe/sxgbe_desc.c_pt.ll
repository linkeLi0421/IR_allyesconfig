; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/samsung/sxgbe/sxgbe_desc.c_pt.bc'
source_filename = "../drivers/net/ethernet/samsung/sxgbe/sxgbe_desc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sxgbe_desc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sxgbe_tx_norm_desc = type { i64, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, %union.anon.0, i16 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i16, [2 x i8] }
%struct.sxgbe_tx_ctxt_desc = type { i32, i32, i64 }
%struct.sxgbe_rx_norm_desc = type { %union.anon.3, %union.anon.5 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i64 }
%struct.sxgbe_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sxgbe_rx_ctxt_desc = type { i32, i32, i32, i32 }

@desc_ops = internal constant { %struct.sxgbe_desc_ops, [32 x i8] } { %struct.sxgbe_desc_ops { ptr @sxgbe_init_tx_desc, ptr @sxgbe_tx_desc_enable_tse, ptr @sxgbe_prepare_tx_desc, ptr @sxgbe_tx_vlanctl_desc, ptr @sxgbe_set_tx_owner, ptr @sxgbe_get_tx_owner, ptr @sxgbe_close_tx_desc, ptr @sxgbe_release_tx_desc, ptr @sxgbe_clear_tx_ic, ptr @sxgbe_get_tx_ls, ptr @sxgbe_get_tx_len, ptr @sxgbe_tx_enable_tstamp, ptr @sxgbe_get_tx_timestamp_status, ptr @sxgbe_tx_ctxt_desc_set_ctxt, ptr @sxgbe_tx_ctxt_desc_set_owner, ptr @sxgbe_tx_ctxt_desc_get_owner, ptr @sxgbe_tx_ctxt_desc_set_mss, ptr @sxgbe_tx_ctxt_desc_get_mss, ptr @sxgbe_tx_ctxt_desc_set_tcmssv, ptr @sxgbe_tx_ctxt_desc_reset_ostc, ptr @sxgbe_tx_ctxt_desc_set_ivlantag, ptr @sxgbe_tx_ctxt_desc_get_ivlantag, ptr @sxgbe_tx_ctxt_desc_set_vlantag, ptr @sxgbe_tx_ctxt_desc_get_vlantag, ptr @sxgbe_tx_ctxt_desc_set_tstamp, ptr @sxgbe_tx_ctxt_desc_close, ptr @sxgbe_tx_ctxt_desc_get_cde, ptr @sxgbe_init_rx_desc, ptr @sxgbe_get_rx_owner, ptr @sxgbe_set_rx_owner, ptr @sxgbe_set_rx_int_on_com, ptr @sxgbe_get_rx_frame_len, ptr @sxgbe_get_rx_fd_status, ptr @sxgbe_get_rx_ld_status, ptr @sxgbe_rx_wbstatus, ptr @sxgbe_get_rx_ctxt_owner, ptr @sxgbe_set_ctxt_rx_owner, ptr @sxgbe_rx_ctxt_wbstatus, ptr @sxgbe_get_rx_ctxt_tstamp_status, ptr @sxgbe_get_rx_timestamp }, [32 x i8] zeroinitializer }, align 32
@sxgbe_rx_wbstatus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013samsung_sxgbe: Invalid Error type\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sxgbe_rx_wbstatus\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/samsung/sxgbe/sxgbe_desc.c\00", [48 x i8] zeroinitializer }, align 32
@sxgbe_rx_wbstatus._entry_ptr = internal global ptr @sxgbe_rx_wbstatus._entry, section ".printk_index", align 4
@sxgbe_rx_wbstatus._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013samsung_sxgbe: Invalid L2 Packet type\0A\00", [55 x i8] zeroinitializer }, align 32
@sxgbe_rx_wbstatus._entry_ptr.5 = internal global ptr @sxgbe_rx_wbstatus._entry.3, section ".printk_index", align 4
@sxgbe_rx_wbstatus._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013samsung_sxgbe: Invalid L3/L4 Packet type\0A\00", [52 x i8] zeroinitializer }, align 32
@sxgbe_rx_wbstatus._entry_ptr.8 = internal global ptr @sxgbe_rx_wbstatus._entry.6, section ".printk_index", align 4
@sxgbe_get_rx_ctxt_tstamp_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013samsung_sxgbe: Time stamp corrupted\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sxgbe_get_rx_ctxt_tstamp_status\00", [32 x i8] zeroinitializer }, align 32
@sxgbe_get_rx_ctxt_tstamp_status._entry_ptr = internal global ptr @sxgbe_get_rx_ctxt_tstamp_status._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.11 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.12 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 7, i64 9, i64 10, i64 11, i64 15]
@__sancov_gen_cov_switch_values.13 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 15]
@___asan_gen_.14 = private unnamed_addr constant [9 x i8] c"desc_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 473, i32 36 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 296, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 341, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 376, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [51 x i8] c"../drivers/net/ethernet/samsung/sxgbe/sxgbe_desc.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 455, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @sxgbe_get_rx_ctxt_tstamp_status._entry, ptr @sxgbe_get_rx_ctxt_tstamp_status._entry_ptr, ptr @sxgbe_rx_wbstatus._entry, ptr @sxgbe_rx_wbstatus._entry.3, ptr @sxgbe_rx_wbstatus._entry.6, ptr @sxgbe_rx_wbstatus._entry_ptr, ptr @sxgbe_rx_wbstatus._entry_ptr.5, ptr @sxgbe_rx_wbstatus._entry_ptr.8, ptr @desc_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @desc_ops to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_rx_wbstatus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_rx_wbstatus._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_rx_wbstatus._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_get_rx_ctxt_tstamp_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @sxgbe_get_desc_ops() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @desc_ops
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_init_tx_desc(ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %own_bit = getelementptr inbounds %struct.sxgbe_tx_norm_desc, ptr %p, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %own_bit to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %own_bit, align 8
  %bf.clear = and i16 %bf.load, -2
  store i16 %bf.clear, ptr %own_bit, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_tx_desc_enable_tse(ptr nocapture noundef %p, i8 noundef zeroext %is_tse, i32 noundef %total_hdr_len, i32 noundef %tcp_hdr_len, i32 noundef %tcp_payload_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tdes23 = getelementptr inbounds %struct.sxgbe_tx_norm_desc, ptr %p, i32 0, i32 1
  %tse_bit = getelementptr inbounds %struct.sxgbe_tx_norm_desc, ptr %p, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %tse_bit to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %tse_bit, align 8
  %1 = and i8 %is_tse, 1
  %bf.value = zext i8 %1 to i16
  %bf.shl = shl nuw nsw i16 %bf.value, 13
  %bf.clear = and i16 %bf.load, -15873
  %bf.set = or i16 %bf.clear, %bf.shl
  %2 = ptrtoint ptr %tdes23 to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load2 = load i32, ptr %tdes23, align 8
  %bf.shl4 = shl i32 %total_hdr_len, 18
  %bf.clear5 = and i32 %bf.load2, 262143
  %bf.set6 = or i32 %bf.clear5, %bf.shl4
  store i32 %bf.set6, ptr %tdes23, align 8
  %3 = trunc i32 %tcp_hdr_len to i16
  %4 = shl i16 %3, 7
  %bf.shl12 = and i16 %4, 7680
  %bf.set14 = or i16 %bf.set, %bf.shl12
  store i16 %bf.set14, ptr %tse_bit, align 8
  %conv15 = trunc i32 %tcp_payload_len to i16
  %tx_pkt_len = getelementptr inbounds %struct.sxgbe_tx_norm_desc, ptr %p, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %tx_pkt_len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv15, ptr %tx_pkt_len, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_prepare_tx_desc(ptr nocapture noundef %p, i8 noundef zeroext %is_fd, i32 noundef %buf1_len, i32 noundef %pkt_len, i32 noundef %cksum) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tdes23 = getelementptr inbounds %struct.sxgbe_tx_norm_desc, ptr %p, i32 0, i32 1
  %first_desc = getelementptr inbounds %struct.sxgbe_tx_norm_desc, ptr %p, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %first_desc to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %first_desc, align 8
  %1 = shl i8 %is_fd, 2
  %2 = and i8 %1, 4
  %bf.shl = zext i8 %2 to i16
  %bf.clear = and i16 %bf.load, -5
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %first_desc, align 8
  %3 = ptrtoint ptr %tdes23 to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load2 = load i32, ptr %tdes23, align 8
  %bf.shl4 = shl i32 %buf1_len, 18
  %bf.clear5 = and i32 %bf.load2, 262143
  %bf.set6 = or i32 %bf.clear5, %bf.shl4
  store i32 %bf.set6, ptr %tdes23, align 8
  %tx_pkt_len = getelementptr inbounds %struct.sxgbe_tx_norm_desc, ptr %p, i32 0, i32 1, i32 0, i32 1
  %4 = trunc i32 %pkt_len to i16
  %5 = ptrtoint ptr %tx_pkt_len to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load8 = load i16, ptr %tx_pkt_len, align 4
  %bf.shl10 = shl i16 %4, 1
  %bf.clear11 = and i16 %bf.load8, 1
  %bf.set12 = or i16 %bf.clear11, %bf.shl10
  store i16 %bf.set12, ptr %tx_pkt_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cksum)
  %tobool.not = icmp eq i32 %cksum, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set16 = or i16 %bf.set, -16384
  %6 = ptrtoint ptr %first_desc to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %bf.set16, ptr %first_desc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_tx_vlanctl_desc(ptr nocapture noundef %p, i32 noundef %vlan_ctl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tdes23 = getelementptr inbounds %struct.sxgbe_tx_norm_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %tdes23 to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %tdes23, align 8
  %bf.value = shl i32 %vlan_ctl, 16
  %bf.shl = and i32 %bf.value, 196608
  %bf.clear = and i32 %bf.load, -196609
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %tdes23, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_set_tx_owner(ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %own_bit = getelementptr inbounds %struct.sxgbe_tx_norm_desc, ptr %p, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %own_bit to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %own_bit, align 8
  %bf.set = or i16 %bf.load, 1
  store i16 %bf.set, ptr %own_bit, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sxgbe_get_tx_owner(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %own_bit = getelementptr inbounds %struct.sxgbe_tx_norm_desc, ptr %p, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %own_bit to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %own_bit, align 8
  %bf.clear = and i16 %bf.load, 1
  %conv = zext i16 %bf.clear to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_close_tx_desc(ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tdes23 = getelementptr inbounds %struct.sxgbe_tx_norm_desc, ptr %p, i32 0, i32 1
  %last_desc = getelementptr inbounds %struct.sxgbe_tx_norm_desc, ptr %p, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %last_desc to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %last_desc, align 8
  %bf.set = or i16 %bf.load, 8
  store i16 %bf.set, ptr %last_desc, align 8
  %1 = ptrtoint ptr %tdes23 to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load2 = load i32, ptr %tdes23, align 8
  %bf.set4 = or i32 %bf.load2, 1
  store i32 %bf.set4, ptr %tdes23, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @sxgbe_release_tx_desc(ptr nocapture noundef writeonly %p) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %p, i32 0, i32 24)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_clear_tx_ic(ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tdes23 = getelementptr inbounds %struct.sxgbe_tx_norm_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %tdes23 to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %tdes23, align 8
  %bf.clear = and i32 %bf.load, -2
  store i32 %bf.clear, ptr %tdes23, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sxgbe_get_tx_ls(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %last_desc = getelementptr inbounds %struct.sxgbe_tx_norm_desc, ptr %p, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %last_desc to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %last_desc, align 8
  %bf.lshr = lshr i16 %bf.load, 3
  %bf.clear = and i16 %bf.lshr, 1
  %conv = zext i16 %bf.clear to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sxgbe_get_tx_len(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tdes23 = getelementptr inbounds %struct.sxgbe_tx_norm_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %tdes23 to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %tdes23, align 8
  %bf.lshr = lshr i32 %bf.load, 18
  ret i32 %bf.lshr
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_tx_enable_tstamp(ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tdes23 = getelementptr inbounds %struct.sxgbe_tx_norm_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %tdes23 to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %tdes23, align 8
  %bf.set = or i32 %bf.load, 2
  store i32 %bf.set, ptr %tdes23, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sxgbe_get_tx_timestamp_status(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tdes23 = getelementptr inbounds %struct.sxgbe_tx_norm_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %tdes23 to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %tdes23, align 8
  %bf.lshr = lshr i32 %bf.load, 1
  %bf.clear = and i32 %bf.lshr, 1
  ret i32 %bf.clear
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_tx_ctxt_desc_set_ctxt(ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctxt_bit = getelementptr inbounds %struct.sxgbe_tx_ctxt_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %ctxt_bit to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load = load i64, ptr %ctxt_bit, align 4
  %bf.set = or i64 %bf.load, 2
  store i64 %bf.set, ptr %ctxt_bit, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_tx_ctxt_desc_set_owner(ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %own_bit = getelementptr inbounds %struct.sxgbe_tx_ctxt_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %own_bit to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load = load i64, ptr %own_bit, align 4
  %bf.set = or i64 %bf.load, 1
  store i64 %bf.set, ptr %own_bit, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sxgbe_tx_ctxt_desc_get_owner(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %own_bit = getelementptr inbounds %struct.sxgbe_tx_ctxt_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %own_bit to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load = load i64, ptr %own_bit, align 4
  %1 = trunc i64 %bf.load to i32
  %bf.cast = and i32 %1, 1
  ret i32 %bf.cast
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_tx_ctxt_desc_set_mss(ptr nocapture noundef %p, i16 noundef zeroext %mss) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %maxseg_size = getelementptr inbounds %struct.sxgbe_tx_ctxt_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %maxseg_size to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load = load i64, ptr %maxseg_size, align 4
  %bf.value = zext i16 %mss to i64
  %bf.shl = shl i64 %bf.value, 49
  %bf.clear = and i64 %bf.load, 562949953421311
  %bf.set = or i64 %bf.clear, %bf.shl
  store i64 %bf.set, ptr %maxseg_size, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sxgbe_tx_ctxt_desc_get_mss(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %maxseg_size = getelementptr inbounds %struct.sxgbe_tx_ctxt_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %maxseg_size to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load = load i64, ptr %maxseg_size, align 4
  %bf.lshr = lshr i64 %bf.load, 49
  %bf.cast = trunc i64 %bf.lshr to i32
  ret i32 %bf.cast
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_tx_ctxt_desc_set_tcmssv(ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tcmssv = getelementptr inbounds %struct.sxgbe_tx_ctxt_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %tcmssv to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load = load i64, ptr %tcmssv, align 4
  %bf.set = or i64 %bf.load, 16
  store i64 %bf.set, ptr %tcmssv, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_tx_ctxt_desc_reset_ostc(ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ostc = getelementptr inbounds %struct.sxgbe_tx_ctxt_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %ostc to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load = load i64, ptr %ostc, align 4
  %bf.clear = and i64 %bf.load, -33
  store i64 %bf.clear, ptr %ostc, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_tx_ctxt_desc_set_ivlantag(ptr nocapture noundef %p, i32 noundef %is_ivlanvalid, i32 noundef %ivlan_tag, i32 noundef %ivlan_ctl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_ivlanvalid)
  %tobool.not = icmp eq i32 %is_ivlanvalid, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ivlan_tag_valid = getelementptr inbounds %struct.sxgbe_tx_ctxt_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %ivlan_tag_valid to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load = load i64, ptr %ivlan_tag_valid, align 4
  %1 = shl i32 %is_ivlanvalid, 14
  %2 = and i32 %1, 16384
  %bf.shl = zext i32 %2 to i64
  %bf.clear = and i64 %bf.load, -281470681772033
  %bf.set = or i64 %bf.clear, %bf.shl
  %3 = and i32 %ivlan_tag, 65535
  %bf.value3 = zext i32 %3 to i64
  %bf.shl4 = shl nuw nsw i64 %bf.value3, 32
  %bf.set6 = or i64 %bf.set, %bf.shl4
  %4 = shl i32 %ivlan_ctl, 12
  %5 = and i32 %4, 12288
  %bf.shl10 = zext i32 %5 to i64
  %bf.set12 = or i64 %bf.set6, %bf.shl10
  store i64 %bf.set12, ptr %ivlan_tag_valid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sxgbe_tx_ctxt_desc_get_ivlantag(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ivlan_tag = getelementptr inbounds %struct.sxgbe_tx_ctxt_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %ivlan_tag to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load = load i64, ptr %ivlan_tag, align 4
  %bf.lshr = lshr i64 %bf.load, 32
  %1 = trunc i64 %bf.lshr to i32
  %bf.cast = and i32 %1, 65535
  ret i32 %bf.cast
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_tx_ctxt_desc_set_vlantag(ptr nocapture noundef %p, i32 noundef %is_vlanvalid, i32 noundef %vlan_tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_vlanvalid)
  %tobool.not = icmp eq i32 %is_vlanvalid, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %vltag_valid = getelementptr inbounds %struct.sxgbe_tx_ctxt_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %vltag_valid to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load = load i64, ptr %vltag_valid, align 4
  %1 = shl i32 %is_vlanvalid, 15
  %bf.clear = and i64 %bf.load, -4294934529
  %2 = shl i32 %vlan_tag, 16
  %3 = and i32 %1, 32768
  %bf.clear510 = or i32 %2, %3
  %bf.clear5 = zext i32 %bf.clear510 to i64
  %bf.set6 = or i64 %bf.clear, %bf.clear5
  store i64 %bf.set6, ptr %vltag_valid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sxgbe_tx_ctxt_desc_get_vlantag(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_tag = getelementptr inbounds %struct.sxgbe_tx_ctxt_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load = load i64, ptr %vlan_tag, align 4
  %1 = trunc i64 %bf.load to i32
  %2 = lshr i32 %1, 16
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_tx_ctxt_desc_set_tstamp(ptr nocapture noundef %p, i8 noundef zeroext %ostc_enable, i64 noundef %tstamp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ostc_enable)
  %tobool.not = icmp eq i8 %ostc_enable, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ostc = getelementptr inbounds %struct.sxgbe_tx_ctxt_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %ostc to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load = load i64, ptr %ostc, align 4
  %1 = shl i8 %ostc_enable, 5
  %2 = and i8 %1, 32
  %bf.shl = zext i8 %2 to i64
  %bf.clear = and i64 %bf.load, -33
  %bf.set = or i64 %bf.clear, %bf.shl
  store i64 %bf.set, ptr %ostc, align 4
  %conv1 = trunc i64 %tstamp to i32
  %3 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv1, ptr %p, align 4
  %shr = lshr i64 %tstamp, 32
  %conv2 = trunc i64 %shr to i32
  %tstamp_hi = getelementptr inbounds %struct.sxgbe_tx_ctxt_desc, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %tstamp_hi to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv2, ptr %tstamp_hi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_tx_ctxt_desc_close(ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %own_bit = getelementptr inbounds %struct.sxgbe_tx_ctxt_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %own_bit to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load = load i64, ptr %own_bit, align 4
  %bf.set = or i64 %bf.load, 1
  store i64 %bf.set, ptr %own_bit, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sxgbe_tx_ctxt_desc_get_cde(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctxt_desc_err = getelementptr inbounds %struct.sxgbe_tx_ctxt_desc, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %ctxt_desc_err to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load = load i64, ptr %ctxt_desc_err, align 4
  %1 = trunc i64 %bf.load to i32
  %2 = lshr i32 %1, 8
  %bf.cast = and i32 %2, 1
  ret i32 %bf.cast
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_init_rx_desc(ptr nocapture noundef %p, i32 noundef %disable_rx_ic, i32 noundef %mode, i32 noundef %end) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rdes23 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %rdes23 to i32
  call void @__asan_load8_noabort(i32 %0)
  %bf.load = load i64, ptr %rdes23, align 8
  %bf.set = or i64 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disable_rx_ic)
  %tobool.not = icmp eq i32 %disable_rx_ic, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = shl i32 %disable_rx_ic, 1
  %2 = and i32 %1, 2
  %bf.shl = zext i32 %2 to i64
  %bf.clear3 = and i64 %bf.set, -3
  %bf.set4 = or i64 %bf.clear3, %bf.shl
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %storemerge = phi i64 [ %bf.set4, %if.then ], [ %bf.set, %entry.if.end_crit_edge ]
  %3 = ptrtoint ptr %rdes23 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %storemerge, ptr %rdes23, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sxgbe_get_rx_owner(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rdes23 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %rdes23 to i32
  call void @__asan_load8_noabort(i32 %0)
  %bf.load = load i64, ptr %rdes23, align 8
  %1 = trunc i64 %bf.load to i32
  %bf.cast = and i32 %1, 1
  ret i32 %bf.cast
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_set_rx_owner(ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rdes23 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %rdes23 to i32
  call void @__asan_load8_noabort(i32 %0)
  %bf.load = load i64, ptr %rdes23, align 8
  %bf.set = or i64 %bf.load, 1
  store i64 %bf.set, ptr %rdes23, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_set_rx_int_on_com(ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rdes23 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %rdes23 to i32
  call void @__asan_load8_noabort(i32 %0)
  %bf.load = load i64, ptr %rdes23, align 8
  %bf.set = or i64 %bf.load, 2
  store i64 %bf.set, ptr %rdes23, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sxgbe_get_rx_frame_len(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rdes23 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %rdes23 to i32
  call void @__asan_load8_noabort(i32 %0)
  %bf.load = load i64, ptr %rdes23, align 8
  %1 = trunc i64 %bf.load to i32
  %2 = lshr i32 %1, 18
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sxgbe_get_rx_fd_status(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rdes23 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %rdes23 to i32
  call void @__asan_load8_noabort(i32 %0)
  %bf.load = load i64, ptr %rdes23, align 8
  %1 = trunc i64 %bf.load to i32
  %2 = lshr i32 %1, 2
  %bf.cast = and i32 %2, 1
  ret i32 %bf.cast
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sxgbe_get_rx_ld_status(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rdes23 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %rdes23 to i32
  call void @__asan_load8_noabort(i32 %0)
  %bf.load = load i64, ptr %rdes23, align 8
  %1 = trunc i64 %bf.load to i32
  %2 = lshr i32 %1, 3
  %bf.cast = and i32 %2, 1
  ret i32 %bf.cast
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_rx_wbstatus(ptr nocapture noundef readonly %p, ptr noundef %x, ptr nocapture noundef writeonly %checksum) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %checksum to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %checksum, align 4
  %rdes23 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, ptr %p, i32 0, i32 1
  %1 = ptrtoint ptr %rdes23 to i32
  call void @__asan_load8_noabort(i32 %1)
  %bf.load = load i64, ptr %rdes23, align 8
  %2 = and i64 %bf.load, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool.not = icmp eq i64 %2, 0
  %3 = trunc i64 %bf.load to i32
  %4 = lshr i32 %3, 12
  %bf.cast22 = and i32 %4, 15
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = zext i32 %bf.cast22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.cast22, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb8
    i32 4, label %sw.bb10
    i32 5, label %sw.bb12
    i32 6, label %sw.bb14
    i32 7, label %sw.bb16
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %rx_code_gmii_err = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 31
  %6 = ptrtoint ptr %rx_code_gmii_err to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_code_gmii_err, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %rx_code_gmii_err, align 4
  br label %if.end

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %rx_watchdog_err = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 32
  %8 = ptrtoint ptr %rx_watchdog_err to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_watchdog_err, align 4
  %inc7 = add i32 %9, 1
  store i32 %inc7, ptr %rx_watchdog_err, align 4
  br label %if.end

sw.bb8:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %rx_crc_err = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 33
  %10 = ptrtoint ptr %rx_crc_err to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_crc_err, align 4
  %inc9 = add i32 %11, 1
  store i32 %inc9, ptr %rx_crc_err, align 4
  br label %if.end

sw.bb10:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %rx_gaint_pkt_err = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 34
  %12 = ptrtoint ptr %rx_gaint_pkt_err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_gaint_pkt_err, align 4
  %inc11 = add i32 %13, 1
  store i32 %inc11, ptr %rx_gaint_pkt_err, align 4
  br label %if.end

sw.bb12:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %checksum to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %checksum, align 4
  %ip_hdr_err = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 35
  %15 = ptrtoint ptr %ip_hdr_err to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ip_hdr_err, align 4
  %inc13 = add i32 %16, 1
  store i32 %inc13, ptr %ip_hdr_err, align 4
  br label %if.end

sw.bb14:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %checksum to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %checksum, align 4
  %ip_payload_err = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 36
  %18 = ptrtoint ptr %ip_payload_err to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ip_payload_err, align 4
  %inc15 = add i32 %19, 1
  store i32 %inc15, ptr %ip_payload_err, align 4
  br label %if.end

sw.bb16:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %overflow_error = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 37
  %20 = ptrtoint ptr %overflow_error to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %overflow_error, align 4
  %inc17 = add i32 %21, 1
  store i32 %inc17, ptr %overflow_error, align 4
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = zext i32 %bf.cast22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %bf.cast22, label %do.end53 [
    i32 0, label %sw.bb23
    i32 1, label %sw.bb25
    i32 2, label %sw.bb27
    i32 3, label %sw.bb29
    i32 4, label %sw.bb31
    i32 5, label %sw.bb33
    i32 7, label %sw.bb35
    i32 8, label %sw.bb37
    i32 9, label %sw.bb39
    i32 10, label %sw.bb41
    i32 11, label %sw.bb43
    i32 12, label %sw.bb45
    i32 13, label %sw.bb47
  ]

sw.bb23:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %len_pkt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 38
  %23 = ptrtoint ptr %len_pkt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len_pkt, align 4
  %inc24 = add i32 %24, 1
  store i32 %inc24, ptr %len_pkt, align 4
  br label %if.end

sw.bb25:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %mac_ctl_pkt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 39
  %25 = ptrtoint ptr %mac_ctl_pkt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mac_ctl_pkt, align 4
  %inc26 = add i32 %26, 1
  store i32 %inc26, ptr %mac_ctl_pkt, align 4
  br label %if.end

sw.bb27:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dcb_ctl_pkt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 40
  %27 = ptrtoint ptr %dcb_ctl_pkt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dcb_ctl_pkt, align 4
  %inc28 = add i32 %28, 1
  store i32 %inc28, ptr %dcb_ctl_pkt, align 4
  br label %if.end

sw.bb29:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %arp_pkt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 41
  %29 = ptrtoint ptr %arp_pkt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arp_pkt, align 4
  %inc30 = add i32 %30, 1
  store i32 %inc30, ptr %arp_pkt, align 4
  br label %if.end

sw.bb31:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %oam_pkt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 42
  %31 = ptrtoint ptr %oam_pkt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %oam_pkt, align 4
  %inc32 = add i32 %32, 1
  store i32 %inc32, ptr %oam_pkt, align 4
  br label %if.end

sw.bb33:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %untag_okt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 43
  %33 = ptrtoint ptr %untag_okt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %untag_okt, align 4
  %inc34 = add i32 %34, 1
  store i32 %inc34, ptr %untag_okt, align 4
  br label %if.end

sw.bb35:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %other_pkt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 44
  %35 = ptrtoint ptr %other_pkt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %other_pkt, align 4
  %inc36 = add i32 %36, 1
  store i32 %inc36, ptr %other_pkt, align 4
  br label %if.end

sw.bb37:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %svlan_tag_pkt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 45
  %37 = ptrtoint ptr %svlan_tag_pkt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %svlan_tag_pkt, align 4
  %inc38 = add i32 %38, 1
  store i32 %inc38, ptr %svlan_tag_pkt, align 4
  br label %if.end

sw.bb39:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %cvlan_tag_pkt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 46
  %39 = ptrtoint ptr %cvlan_tag_pkt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cvlan_tag_pkt, align 4
  %inc40 = add i32 %40, 1
  store i32 %inc40, ptr %cvlan_tag_pkt, align 4
  br label %if.end

sw.bb41:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dvlan_ocvlan_icvlan_pkt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 47
  %41 = ptrtoint ptr %dvlan_ocvlan_icvlan_pkt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dvlan_ocvlan_icvlan_pkt, align 4
  %inc42 = add i32 %42, 1
  store i32 %inc42, ptr %dvlan_ocvlan_icvlan_pkt, align 4
  br label %if.end

sw.bb43:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dvlan_osvlan_isvlan_pkt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 48
  %43 = ptrtoint ptr %dvlan_osvlan_isvlan_pkt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dvlan_osvlan_isvlan_pkt, align 4
  %inc44 = add i32 %44, 1
  store i32 %inc44, ptr %dvlan_osvlan_isvlan_pkt, align 4
  br label %if.end

sw.bb45:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dvlan_osvlan_icvlan_pkt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 49
  %45 = ptrtoint ptr %dvlan_osvlan_icvlan_pkt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dvlan_osvlan_icvlan_pkt, align 4
  %inc46 = add i32 %46, 1
  store i32 %inc46, ptr %dvlan_osvlan_icvlan_pkt, align 4
  br label %if.end

sw.bb47:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dvlan_ocvlan_icvlan_pkt48 = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 47
  %47 = ptrtoint ptr %dvlan_ocvlan_icvlan_pkt48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dvlan_ocvlan_icvlan_pkt48, align 4
  %inc49 = add i32 %48, 1
  store i32 %inc49, ptr %dvlan_ocvlan_icvlan_pkt48, align 4
  br label %if.end

do.end53:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %if.end

if.end:                                           ; preds = %do.end53, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %do.end, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb
  %status.0 = phi i32 [ 0, %do.end ], [ -22, %sw.bb16 ], [ 0, %sw.bb14 ], [ 0, %sw.bb12 ], [ -22, %sw.bb10 ], [ -22, %sw.bb8 ], [ -22, %sw.bb6 ], [ -22, %sw.bb ], [ 0, %do.end53 ], [ 0, %sw.bb47 ], [ 0, %sw.bb45 ], [ 0, %sw.bb43 ], [ 0, %sw.bb41 ], [ 0, %sw.bb39 ], [ 0, %sw.bb37 ], [ 0, %sw.bb35 ], [ 0, %sw.bb33 ], [ 0, %sw.bb31 ], [ 0, %sw.bb29 ], [ 0, %sw.bb27 ], [ 0, %sw.bb25 ], [ 0, %sw.bb23 ]
  %49 = ptrtoint ptr %rdes23 to i32
  call void @__asan_load8_noabort(i32 %49)
  %bf.load58 = load i64, ptr %rdes23, align 8
  %50 = trunc i64 %bf.load58 to i32
  %51 = lshr i32 %50, 8
  %bf.cast61 = and i32 %51, 15
  %52 = zext i32 %bf.cast61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %bf.cast61, label %do.end83 [
    i32 0, label %sw.bb62
    i32 1, label %sw.bb64
    i32 2, label %sw.bb66
    i32 3, label %sw.bb68
    i32 7, label %sw.bb70
    i32 9, label %sw.bb72
    i32 10, label %sw.bb74
    i32 11, label %sw.bb76
    i32 15, label %sw.bb78
  ]

sw.bb62:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %not_ip_pkt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 51
  %53 = ptrtoint ptr %not_ip_pkt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %not_ip_pkt, align 4
  %inc63 = add i32 %54, 1
  store i32 %inc63, ptr %not_ip_pkt, align 4
  br label %sw.epilog86

sw.bb64:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ip4_tcp_pkt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 52
  %55 = ptrtoint ptr %ip4_tcp_pkt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ip4_tcp_pkt, align 4
  %inc65 = add i32 %56, 1
  store i32 %inc65, ptr %ip4_tcp_pkt, align 4
  br label %sw.epilog86

sw.bb66:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ip4_udp_pkt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 53
  %57 = ptrtoint ptr %ip4_udp_pkt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ip4_udp_pkt, align 4
  %inc67 = add i32 %58, 1
  store i32 %inc67, ptr %ip4_udp_pkt, align 4
  br label %sw.epilog86

sw.bb68:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ip4_icmp_pkt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 54
  %59 = ptrtoint ptr %ip4_icmp_pkt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ip4_icmp_pkt, align 4
  %inc69 = add i32 %60, 1
  store i32 %inc69, ptr %ip4_icmp_pkt, align 4
  br label %sw.epilog86

sw.bb70:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ip4_unknown_pkt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 55
  %61 = ptrtoint ptr %ip4_unknown_pkt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ip4_unknown_pkt, align 4
  %inc71 = add i32 %62, 1
  store i32 %inc71, ptr %ip4_unknown_pkt, align 4
  br label %sw.epilog86

sw.bb72:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ip6_tcp_pkt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 56
  %63 = ptrtoint ptr %ip6_tcp_pkt to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ip6_tcp_pkt, align 4
  %inc73 = add i32 %64, 1
  store i32 %inc73, ptr %ip6_tcp_pkt, align 4
  br label %sw.epilog86

sw.bb74:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ip6_udp_pkt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 57
  %65 = ptrtoint ptr %ip6_udp_pkt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ip6_udp_pkt, align 4
  %inc75 = add i32 %66, 1
  store i32 %inc75, ptr %ip6_udp_pkt, align 4
  br label %sw.epilog86

sw.bb76:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ip6_icmp_pkt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 58
  %67 = ptrtoint ptr %ip6_icmp_pkt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ip6_icmp_pkt, align 4
  %inc77 = add i32 %68, 1
  store i32 %inc77, ptr %ip6_icmp_pkt, align 4
  br label %sw.epilog86

sw.bb78:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ip6_unknown_pkt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 59
  %69 = ptrtoint ptr %ip6_unknown_pkt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ip6_unknown_pkt, align 4
  %inc79 = add i32 %70, 1
  store i32 %inc79, ptr %ip6_unknown_pkt, align 4
  br label %sw.epilog86

do.end83:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %sw.epilog86

sw.epilog86:                                      ; preds = %do.end83, %sw.bb78, %sw.bb76, %sw.bb74, %sw.bb72, %sw.bb70, %sw.bb68, %sw.bb66, %sw.bb64, %sw.bb62
  %71 = ptrtoint ptr %rdes23 to i32
  call void @__asan_load8_noabort(i32 %71)
  %bf.load88 = load i64, ptr %rdes23, align 8
  %72 = and i64 %bf.load88, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %72)
  %tobool92.not = icmp eq i64 %72, 0
  br i1 %tobool92.not, label %sw.epilog86.if.end95_crit_edge, label %if.then93

sw.epilog86.if.end95_crit_edge:                   ; preds = %sw.epilog86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then93:                                        ; preds = %sw.epilog86
  call void @__sanitizer_cov_trace_pc() #8
  %vlan_filter_match = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 60
  %73 = ptrtoint ptr %vlan_filter_match to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vlan_filter_match, align 4
  %inc94 = add i32 %74, 1
  store i32 %inc94, ptr %vlan_filter_match, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %sw.epilog86.if.end95_crit_edge
  %75 = ptrtoint ptr %rdes23 to i32
  call void @__asan_load8_noabort(i32 %75)
  %bf.load97 = load i64, ptr %rdes23, align 8
  %76 = and i64 %bf.load97, 140737488355328
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %76)
  %tobool101.not = icmp eq i64 %76, 0
  br i1 %tobool101.not, label %if.end95.if.end104_crit_edge, label %if.then102

if.end95.if.end104_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.then102:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  %sa_filter_fail = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 61
  %77 = ptrtoint ptr %sa_filter_fail to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sa_filter_fail, align 4
  %inc103 = add i32 %78, 1
  store i32 %inc103, ptr %sa_filter_fail, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end95.if.end104_crit_edge
  %status.1 = phi i32 [ -22, %if.then102 ], [ %status.0, %if.end95.if.end104_crit_edge ]
  %79 = ptrtoint ptr %rdes23 to i32
  call void @__asan_load8_noabort(i32 %79)
  %bf.load106 = load i64, ptr %rdes23, align 8
  %80 = and i64 %bf.load106, 70368744177664
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %80)
  %tobool110.not = icmp eq i64 %80, 0
  br i1 %tobool110.not, label %if.end104.if.end113_crit_edge, label %if.then111

if.end104.if.end113_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

if.then111:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  %da_filter_fail = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 62
  %81 = ptrtoint ptr %da_filter_fail to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %da_filter_fail, align 4
  %inc112 = add i32 %82, 1
  store i32 %inc112, ptr %da_filter_fail, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.end104.if.end113_crit_edge
  %status.2 = phi i32 [ -22, %if.then111 ], [ %status.1, %if.end104.if.end113_crit_edge ]
  %83 = ptrtoint ptr %rdes23 to i32
  call void @__asan_load8_noabort(i32 %83)
  %bf.load115 = load i64, ptr %rdes23, align 8
  %84 = and i64 %bf.load115, 35184372088832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %84)
  %tobool119.not = icmp eq i64 %84, 0
  br i1 %tobool119.not, label %if.end113.if.end122_crit_edge, label %if.then120

if.end113.if.end122_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end122

if.then120:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  %hash_filter_pass = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 63
  %85 = ptrtoint ptr %hash_filter_pass to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %hash_filter_pass, align 4
  %inc121 = add i32 %86, 1
  store i32 %inc121, ptr %hash_filter_pass, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.end113.if.end122_crit_edge
  %87 = ptrtoint ptr %rdes23 to i32
  call void @__asan_load8_noabort(i32 %87)
  %bf.load124 = load i64, ptr %rdes23, align 8
  %88 = and i64 %bf.load124, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %88)
  %tobool128.not = icmp eq i64 %88, 0
  br i1 %tobool128.not, label %if.end122.if.end131_crit_edge, label %if.then129

if.end122.if.end131_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

if.then129:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  %l3_filter_match = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 64
  %89 = ptrtoint ptr %l3_filter_match to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %l3_filter_match, align 4
  %inc130 = add i32 %90, 1
  store i32 %inc130, ptr %l3_filter_match, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %if.end122.if.end131_crit_edge
  %91 = ptrtoint ptr %rdes23 to i32
  call void @__asan_load8_noabort(i32 %91)
  %bf.load133 = load i64, ptr %rdes23, align 8
  %92 = and i64 %bf.load133, 34359738368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %92)
  %tobool137.not = icmp eq i64 %92, 0
  br i1 %tobool137.not, label %if.end131.if.end140_crit_edge, label %if.then138

if.end131.if.end140_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end140

if.then138:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  %l4_filter_match = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 65
  %93 = ptrtoint ptr %l4_filter_match to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %l4_filter_match, align 4
  %inc139 = add i32 %94, 1
  store i32 %inc139, ptr %l4_filter_match, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.end131.if.end140_crit_edge
  ret i32 %status.2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sxgbe_get_rx_ctxt_owner(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %own_bit = getelementptr inbounds %struct.sxgbe_rx_ctxt_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %own_bit to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %own_bit, align 4
  %bf.clear = and i32 %bf.load, 1
  ret i32 %bf.clear
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_set_ctxt_rx_owner(ptr nocapture noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %own_bit = getelementptr inbounds %struct.sxgbe_rx_ctxt_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %own_bit to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %own_bit, align 4
  %bf.set = or i32 %bf.load, 1
  store i32 %bf.set, ptr %own_bit, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sxgbe_rx_ctxt_wbstatus(ptr nocapture noundef readonly %p, ptr nocapture noundef %x) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tstamp_dropped = getelementptr inbounds %struct.sxgbe_rx_ctxt_desc, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %tstamp_dropped to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %tstamp_dropped, align 4
  %1 = and i32 %bf.load, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %timestamp_dropped = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 66
  %2 = ptrtoint ptr %timestamp_dropped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timestamp_dropped, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %timestamp_dropped, align 4
  %4 = ptrtoint ptr %tstamp_dropped to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load1.pr = load i32, ptr %tstamp_dropped, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bf.load1 = phi i32 [ %bf.load1.pr, %if.then ], [ %bf.load, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %bf.load1)
  %cmp = icmp ult i32 %bf.load1, 268435456
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rx_msg_type_no_ptp = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 67
  br label %if.end92.sink.split

if.else:                                          ; preds = %if.end
  %bf.lshr2 = lshr i32 %bf.load1, 28
  %5 = zext i32 %bf.lshr2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %bf.lshr2, label %if.else.if.end92_crit_edge [
    i32 1, label %if.then9
    i32 2, label %if.then16
    i32 3, label %if.then23
    i32 4, label %if.then30
    i32 5, label %if.then37
    i32 6, label %if.then44
    i32 7, label %if.then51
    i32 8, label %if.then58
    i32 9, label %if.then65
    i32 10, label %if.then72
    i32 15, label %if.then79
  ]

if.else.if.end92_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %rx_ptp_type_sync = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 68
  br label %if.end92.sink.split

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %rx_ptp_type_follow_up = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 69
  br label %if.end92.sink.split

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %rx_ptp_type_delay_req = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 70
  br label %if.end92.sink.split

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %rx_ptp_type_delay_resp = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 71
  br label %if.end92.sink.split

if.then37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %rx_ptp_type_pdelay_req = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 72
  br label %if.end92.sink.split

if.then44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %rx_ptp_type_pdelay_resp = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 73
  br label %if.end92.sink.split

if.then51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %rx_ptp_type_pdelay_follow_up = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 74
  br label %if.end92.sink.split

if.then58:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %rx_ptp_announce = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 75
  br label %if.end92.sink.split

if.then65:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %rx_ptp_mgmt = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 76
  br label %if.end92.sink.split

if.then72:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %rx_ptp_signal = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 77
  br label %if.end92.sink.split

if.then79:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %rx_ptp_resv_msg_type = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 78
  br label %if.end92.sink.split

if.end92.sink.split:                              ; preds = %if.then79, %if.then72, %if.then65, %if.then58, %if.then51, %if.then44, %if.then37, %if.then30, %if.then23, %if.then16, %if.then9, %if.then3
  %rx_ptp_type_sync.sink117 = phi ptr [ %rx_ptp_type_sync, %if.then9 ], [ %rx_ptp_type_delay_req, %if.then23 ], [ %rx_ptp_type_pdelay_req, %if.then37 ], [ %rx_ptp_type_pdelay_follow_up, %if.then51 ], [ %rx_ptp_mgmt, %if.then65 ], [ %rx_ptp_resv_msg_type, %if.then79 ], [ %rx_ptp_signal, %if.then72 ], [ %rx_ptp_announce, %if.then58 ], [ %rx_ptp_type_pdelay_resp, %if.then44 ], [ %rx_ptp_type_delay_resp, %if.then30 ], [ %rx_ptp_type_follow_up, %if.then16 ], [ %rx_msg_type_no_ptp, %if.then3 ]
  %6 = ptrtoint ptr %rx_ptp_type_sync.sink117 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_ptp_type_sync.sink117, align 4
  %inc10 = add i32 %7, 1
  store i32 %inc10, ptr %rx_ptp_type_sync.sink117, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.end92.sink.split, %if.else.if.end92_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_get_rx_ctxt_tstamp_status(ptr nocapture noundef readonly %p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tstamp_hi = getelementptr inbounds %struct.sxgbe_rx_ctxt_desc, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %tstamp_hi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tstamp_hi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp1 = icmp eq i32 %3, -1
  br i1 %cmp1, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tstamp_available = getelementptr inbounds %struct.sxgbe_rx_ctxt_desc, ptr %p, i32 0, i32 3
  %4 = ptrtoint ptr %tstamp_available to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %tstamp_available, align 4
  %bf.lshr = lshr i32 %bf.load, 27
  %bf.clear = and i32 %bf.lshr, 1
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %bf.clear, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @sxgbe_get_rx_timestamp(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %conv = zext i32 %1 to i64
  %tstamp_hi = getelementptr inbounds %struct.sxgbe_rx_ctxt_desc, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %tstamp_hi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tstamp_hi, align 4
  %conv1 = zext i32 %3 to i64
  %shl = shl nuw i64 %conv1, 32
  %or = or i64 %shl, %conv
  ret i64 %or
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @desc_ops, !1, !"desc_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_desc.c", i32 473, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_desc.c", i32 296, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sxgbe_rx_wbstatus._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @sxgbe_rx_wbstatus._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_desc.c", i32 341, i32 4}
!10 = !{ptr @sxgbe_rx_wbstatus._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @sxgbe_rx_wbstatus._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_desc.c", i32 376, i32 3}
!14 = !{ptr @sxgbe_rx_wbstatus._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @sxgbe_rx_wbstatus._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_desc.c", i32 455, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sxgbe_get_rx_ctxt_tstamp_status._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @sxgbe_get_rx_ctxt_tstamp_status._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
