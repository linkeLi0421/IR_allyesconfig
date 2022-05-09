; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/odm_HWConfig.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/odm_HWConfig.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dm_odm_t = type { ptr, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i8, i8, i8, i8, i8, i32, i8, i32, i8, i64, i64, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, %struct.odm_noise_monitor, [32 x ptr], i8, %struct.odm_phy_dbg_info, ptr, %struct.fat_t, %struct.dig_t, %struct.ps_t, %struct.dynamic_primary_CCA, %struct.rxhp_t, %struct.ra_t, %struct.false_ALARM_STATISTICS, %struct.false_ALARM_STATISTICS, %struct.swat_t, i8, %struct.cfo_tracking, %struct.edca_t, i32, %struct.pathdiv_t, ptr, ptr, ptr, i8, %struct.timer_list, i8, i8, i8, i8, %struct.timer_list, i8, %struct.odm_rate_adaptive, %struct.ant_detected_info, %struct.odm_rf_cal_t, [4 x i8], i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, [4 x i8], %struct.timer_list, %struct.timer_list, %struct.timer_list }
%struct.odm_noise_monitor = type { [4 x i8], i16 }
%struct.odm_phy_dbg_info = type { [4 x i8], i32, i32, i32, i8, [4 x i32] }
%struct.fat_t = type { [6 x i8], i8, i8, i8, i8, [7 x i32], [7 x i32], [7 x i32], i8, i32, [32 x i8], [32 x i8], [32 x i8], [32 x i32], [32 x i32], [32 x i32], [32 x i32], i8, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dig_t = type { i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, ptr }
%struct.ps_t = type { i8, i8, i8, i8, i32, i8, i32, i32, i32, i32 }
%struct.dynamic_primary_CCA = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.rxhp_t = type { i8, i8, [80 x i8], i8, i8, i8, i8, i8, i8, i8, %struct.timer_list }
%struct.ra_t = type { i8 }
%struct.false_ALARM_STATISTICS = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.swat_t = type { i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i8, i8, i8, %struct.timer_list, %struct.timer_list, i32, i8 }
%struct.cfo_tracking = type { i8, i8, i8, i8, i8, [2 x i32], i32, i32, i32, i8, i8 }
%struct.edca_t = type { i8, i8, i32 }
%struct.pathdiv_t = type { i8, [32 x i8], [32 x i32], [32 x i32], [32 x i32], [32 x i32] }
%struct.odm_rate_adaptive = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.ant_detected_info = type { i8, i32, i32, i32 }
%struct.odm_rf_cal_t = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, [8 x i8], i8, [14 x %struct.iqk_matrix_regs_setting], i8, i8, i8, i8, i8, [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [16 x i32], [4 x i32], [9 x i32], [9 x i32], [2 x [3 x [2 x i32]]], [2 x [2 x [2 x i32]]], [2 x [2 x i32]], i8, i8, i8, i8, i8, i8, [2 x i32] }
%struct.iqk_matrix_regs_setting = type { i8, [3 x [8 x i32]], [3 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.odm_phy_info = type { i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i16], [4 x i16], i8, i8, i8, i8, [4 x i8], [4 x i8], i8, i8 }
%struct.phy_status_rpt_8192cd_t = type { [2 x %struct.phy_rx_agc_info_t], [2 x i8], i8, i8, i8, i8, i8, [2 x i8], [2 x i8], [2 x i8], [2 x i8], i8, [3 x i8], [2 x i8], [2 x i8], i8, i8, i8 }
%struct.phy_rx_agc_info_t = type { i8 }
%struct.odm_packet_info = type { i8, i8, i8, i8, i8 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i32, %struct.rssi_sta, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i8, i16 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.ht_priv = type { i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }

@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 3, i64 0, i64 1, i64 4, i64 6]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @odm_signal_scale_mapping(ptr nocapture noundef readonly %dm_odm, i32 noundef %curr_sig) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %SupportInterface = getelementptr inbounds %struct.dm_odm_t, ptr %dm_odm, i32 0, i32 14
  %0 = ptrtoint ptr %SupportInterface to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %SupportInterface, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp = icmp eq i8 %1, 4
  br i1 %cmp, label %if.then, label %entry.if.end70_crit_edge

entry.if.end70_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

if.then:                                          ; preds = %entry
  %2 = add i32 %curr_sig, -51
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %2)
  %3 = icmp ult i32 %2, 50
  br i1 %3, label %if.then.if.end70_crit_edge, label %if.else

if.then.if.end70_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

if.else:                                          ; preds = %if.then
  %4 = add i32 %curr_sig, -41
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %4)
  %5 = icmp ult i32 %4, 10
  br i1 %5, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %sub = shl nuw nsw i32 %curr_sig, 1
  br label %if.end70

if.else13:                                        ; preds = %if.else
  %6 = add i32 %curr_sig, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %6)
  %7 = icmp ult i32 %6, 10
  br i1 %7, label %if.then19, label %if.else22

if.then19:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #6
  %add21 = add nuw nsw i32 %curr_sig, 36
  br label %if.end70

if.else22:                                        ; preds = %if.else13
  %8 = add i32 %curr_sig, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %8)
  %9 = icmp ult i32 %8, 10
  br i1 %9, label %if.then28, label %if.else31

if.then28:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #6
  %add30 = add nuw nsw i32 %curr_sig, 34
  br label %if.end70

if.else31:                                        ; preds = %if.else22
  %10 = add i32 %curr_sig, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %10)
  %11 = icmp ult i32 %10, 11
  br i1 %11, label %if.then37, label %if.else41

if.then37:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #6
  %curr_sig.tr = trunc i32 %curr_sig to i8
  %12 = shl nuw nsw i8 %curr_sig.tr, 1
  %div97.lhs.trunc = add nsw i8 %12, -20
  %div9798 = udiv i8 %div97.lhs.trunc, 3
  %narrow = add nuw nsw i8 %div9798, 42
  %add40 = zext i8 %narrow to i32
  br label %if.end70

if.else41:                                        ; preds = %if.else31
  %13 = add i32 %curr_sig, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %14 = icmp ult i32 %13, 5
  br i1 %14, label %if.then47, label %if.else52

if.then47:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #6
  %15 = mul nuw nsw i32 %curr_sig, 3
  %div5099.lhs.trunc = add nuw nsw i32 %15, 241
  %div5099100104 = lshr i32 %div5099.lhs.trunc, 1
  %div5099.zext = and i32 %div5099100104, 127
  %add51 = add nuw nsw i32 %div5099.zext, 22
  br label %if.end70

if.else52:                                        ; preds = %if.else41
  %16 = add i32 %curr_sig, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %if.then58, label %if.else52.if.end70_crit_edge

if.else52.if.end70_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

if.then58:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #6
  %18 = mul nuw nsw i32 %curr_sig, 3
  %div61101.lhs.trunc = add nuw nsw i32 %18, 253
  %div61101102103 = lshr i32 %div61101.lhs.trunc, 1
  %div61101.zext = and i32 %div61101102103, 127
  %add62 = add nuw nsw i32 %div61101.zext, 6
  br label %if.end70

if.end70:                                         ; preds = %if.then58, %if.else52.if.end70_crit_edge, %if.then47, %if.then37, %if.then28, %if.then19, %if.then12, %if.then.if.end70_crit_edge, %entry.if.end70_crit_edge
  %ret_sig.0 = phi i32 [ %sub, %if.then12 ], [ %add21, %if.then19 ], [ %add30, %if.then28 ], [ %add40, %if.then37 ], [ %add51, %if.then47 ], [ %add62, %if.then58 ], [ 0, %entry.if.end70_crit_edge ], [ 100, %if.then.if.end70_crit_edge ], [ %curr_sig, %if.else52.if.end70_crit_edge ]
  ret i32 %ret_sig.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_phy_status_query(ptr noundef %dm_odm, ptr noundef %phy_info, ptr noundef %phy_status, ptr noundef %pkt_info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt_info to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pkt_info, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp.i = icmp ult i8 %1, 4
  %rx_mimo_signal_quality.i = getelementptr inbounds %struct.odm_phy_info, ptr %phy_info, i32 0, i32 2
  %2 = ptrtoint ptr %rx_mimo_signal_quality.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %rx_mimo_signal_quality.i, align 2
  %arrayidx3.i = getelementptr %struct.odm_phy_info, ptr %phy_info, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %arrayidx3.i, align 1
  br i1 %cmp.i, label %if.then.i, label %if.else111.i

if.then.i:                                        ; preds = %entry
  %NumQryPhyStatusCCK.i = getelementptr inbounds %struct.dm_odm_t, ptr %dm_odm, i32 0, i32 128, i32 2
  %4 = ptrtoint ptr %NumQryPhyStatusCCK.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %NumQryPhyStatusCCK.i, align 8
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %NumQryPhyStatusCCK.i, align 8
  %cck_agc_rpt_ofdm_cfosho_a.i = getelementptr inbounds %struct.phy_status_rpt_8192cd_t, ptr %phy_status, i32 0, i32 3
  %6 = ptrtoint ptr %cck_agc_rpt_ofdm_cfosho_a.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cck_agc_rpt_ofdm_cfosho_a.i, align 1
  %8 = lshr i8 %7, 5
  %9 = and i8 %7, 31
  %trunc.i = trunc i8 %8 to i3
  %10 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i3 %trunc.i, label %if.then.i.odm_cck_rssi.exit.thread234.i_crit_edge [
    i3 -2, label %if.then.i.sw.bb.i.i_crit_edge
    i3 -4, label %sw.bb3.i.i
    i3 1, label %if.then.i.odm_cck_rssi.exit.i_crit_edge
    i3 0, label %sw.bb13.i.i
  ]

if.then.i.odm_cck_rssi.exit.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %odm_cck_rssi.exit.i

if.then.i.sw.bb.i.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i

if.then.i.odm_cck_rssi.exit.thread234.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %odm_cck_rssi.exit.thread234.i

sw.bb3.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i

sw.bb13.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %odm_cck_rssi.exit.i

odm_cck_rssi.exit.i:                              ; preds = %sw.bb13.i.i, %if.then.i.odm_cck_rssi.exit.i_crit_edge
  %.sink.i = phi i8 [ 16, %sw.bb13.i.i ], [ 6, %if.then.i.odm_cck_rssi.exit.i_crit_edge ]
  %mul10.neg.i.i = mul nsw i8 %9, -2
  %sub11.i.i = add nsw i8 %.sink.i, %mul10.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %sub11.i.i)
  %cmp6.i.i = icmp sgt i8 %sub11.i.i, -1
  %add.i.i = add nsw i8 %sub11.i.i, 100
  br i1 %cmp6.i.i, label %odm_cck_rssi.exit.i.odm_cck_rssi.exit.thread234.i_crit_edge, label %odm_cck_rssi.exit.i..thread.i_crit_edge

odm_cck_rssi.exit.i..thread.i_crit_edge:          ; preds = %odm_cck_rssi.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %.thread.i

odm_cck_rssi.exit.i.odm_cck_rssi.exit.thread234.i_crit_edge: ; preds = %odm_cck_rssi.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %odm_cck_rssi.exit.thread234.i

odm_cck_rssi.exit.thread234.i:                    ; preds = %odm_cck_rssi.exit.i.odm_cck_rssi.exit.thread234.i_crit_edge, %if.then.i.odm_cck_rssi.exit.thread234.i_crit_edge
  %rx_pwr_all.0.i238.i = phi i8 [ %sub11.i.i, %odm_cck_rssi.exit.i.odm_cck_rssi.exit.thread234.i_crit_edge ], [ 0, %if.then.i.odm_cck_rssi.exit.thread234.i_crit_edge ]
  br label %.thread.i

.thread.i:                                        ; preds = %odm_cck_rssi.exit.thread234.i, %odm_cck_rssi.exit.i..thread.i_crit_edge
  %rx_pwr_all.0.i233.ph.i = phi i8 [ %sub11.i.i, %odm_cck_rssi.exit.i..thread.i_crit_edge ], [ %rx_pwr_all.0.i238.i, %odm_cck_rssi.exit.thread234.i ]
  %.ph.i = phi i8 [ %add.i.i, %odm_cck_rssi.exit.i..thread.i_crit_edge ], [ 100, %odm_cck_rssi.exit.thread234.i ]
  %11 = ptrtoint ptr %phy_info to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.ph.i, ptr %phy_info, align 2
  %bt_rx_rssi_percentage248.i = getelementptr inbounds %struct.odm_phy_info, ptr %phy_info, i32 0, i32 9
  %12 = ptrtoint ptr %bt_rx_rssi_percentage248.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.ph.i, ptr %bt_rx_rssi_percentage248.i, align 2
  %recv_signal_power249.i = getelementptr inbounds %struct.odm_phy_info, ptr %phy_info, i32 0, i32 8
  %13 = ptrtoint ptr %recv_signal_power249.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %rx_pwr_all.0.i233.ph.i, ptr %recv_signal_power249.i, align 1
  br label %land.lhs.true.i

sw.bb.i.i:                                        ; preds = %sw.bb3.i.i, %if.then.i.sw.bb.i.i_crit_edge
  %.sink251.i = phi i8 [ -14, %sw.bb3.i.i ], [ -34, %if.then.i.sw.bb.i.i_crit_edge ]
  %mul.neg.i.i = mul nsw i8 %9, -2
  %sub.i.i = add nsw i8 %.sink251.i, %mul.neg.i.i
  %add.i232.i = add nsw i8 %sub.i.i, 100
  %14 = ptrtoint ptr %phy_info to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %add.i232.i, ptr %phy_info, align 2
  %bt_rx_rssi_percentage.i = getelementptr inbounds %struct.odm_phy_info, ptr %phy_info, i32 0, i32 9
  %15 = ptrtoint ptr %bt_rx_rssi_percentage.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %add.i232.i, ptr %bt_rx_rssi_percentage.i, align 2
  %recv_signal_power.i = getelementptr inbounds %struct.odm_phy_info, ptr %phy_info, i32 0, i32 8
  %16 = ptrtoint ptr %recv_signal_power.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %sub.i.i, ptr %recv_signal_power.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %add.i232.i)
  %cmp16.i = icmp ugt i8 %add.i232.i, 40
  br i1 %cmp16.i, label %sw.bb.i.i.land.lhs.true.i_crit_edge, label %sw.bb.i.i.if.else.i_crit_edge

sw.bb.i.i.if.else.i_crit_edge:                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

sw.bb.i.i.land.lhs.true.i_crit_edge:              ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sw.bb.i.i.land.lhs.true.i_crit_edge, %.thread.i
  %17 = phi i8 [ %.ph.i, %.thread.i ], [ %add.i232.i, %sw.bb.i.i.land.lhs.true.i_crit_edge ]
  %bInHctTest.i = getelementptr inbounds %struct.dm_odm_t, ptr %dm_odm, i32 0, i32 29
  %18 = ptrtoint ptr %bInHctTest.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bInHctTest.i, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool18.not.i = icmp eq i8 %19, 0
  br i1 %tobool18.not.i, label %land.lhs.true.i.if.then107.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true.i.if.then107.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then107.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.bb.i.i.if.else.i_crit_edge
  %20 = phi i8 [ %17, %land.lhs.true.i.if.else.i_crit_edge ], [ %add.i232.i, %sw.bb.i.i.if.else.i_crit_edge ]
  %cck_sig_qual_ofdm_pwdb_all.i = getelementptr inbounds %struct.phy_status_rpt_8192cd_t, ptr %phy_status, i32 0, i32 2
  %21 = ptrtoint ptr %cck_sig_qual_ofdm_pwdb_all.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cck_sig_qual_ofdm_pwdb_all.i, align 1
  %conv20.i = zext i8 %22 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %22)
  %cmp21.i = icmp ugt i8 %22, 64
  br i1 %cmp21.i, label %if.else.i.if.then107.i_crit_edge, label %if.else24.i

if.else.i.if.then107.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then107.i

if.else24.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %22)
  %cmp26.i = icmp ult i8 %22, 20
  br i1 %cmp26.i, label %if.else24.i.if.then107.i_crit_edge, label %if.else29.i

if.else24.i.if.then107.i_crit_edge:               ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then107.i

if.else29.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = sub nsw i16 64, %conv20.i
  %mul.i = mul nsw i16 %sub.i, 100
  %div243.i = sdiv i16 %mul.i, 44
  %conv31.i = trunc i16 %div243.i to i8
  br label %if.then107.i

if.then107.i:                                     ; preds = %if.else29.i, %if.else24.i.if.then107.i_crit_edge, %if.else.i.if.then107.i_crit_edge, %land.lhs.true.i.if.then107.i_crit_edge
  %23 = phi i8 [ %20, %if.else29.i ], [ %17, %land.lhs.true.i.if.then107.i_crit_edge ], [ %20, %if.else.i.if.then107.i_crit_edge ], [ %20, %if.else24.i.if.then107.i_crit_edge ]
  %sq.0.i = phi i8 [ %conv31.i, %if.else29.i ], [ 100, %land.lhs.true.i.if.then107.i_crit_edge ], [ 0, %if.else.i.if.then107.i_crit_edge ], [ 100, %if.else24.i.if.then107.i_crit_edge ]
  %signal_quality.i = getelementptr inbounds %struct.odm_phy_info, ptr %phy_info, i32 0, i32 1
  %24 = ptrtoint ptr %signal_quality.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %sq.0.i, ptr %signal_quality.i, align 1
  %25 = ptrtoint ptr %rx_mimo_signal_quality.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %sq.0.i, ptr %rx_mimo_signal_quality.i, align 2
  %26 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %arrayidx3.i, align 1
  %conv108.i = zext i8 %23 to i32
  %SupportInterface.i.i = getelementptr inbounds %struct.dm_odm_t, ptr %dm_odm, i32 0, i32 14
  %27 = ptrtoint ptr %SupportInterface.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %SupportInterface.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %28)
  %cmp.i196.i = icmp eq i8 %28, 4
  br i1 %cmp.i196.i, label %if.then.i.i, label %if.then107.i.if.end125.sink.split.i_crit_edge

if.then107.i.if.end125.sink.split.i_crit_edge:    ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125.sink.split.i

if.then.i.i:                                      ; preds = %if.then107.i
  %29 = add nsw i32 %conv108.i, -51
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %29)
  %30 = icmp ult i32 %29, 50
  br i1 %30, label %if.then.i.i.if.end125.sink.split.i_crit_edge, label %if.else.i.i

if.then.i.i.if.end125.sink.split.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125.sink.split.i

if.else.i.i:                                      ; preds = %if.then.i.i
  %31 = add nsw i32 %conv108.i, -41
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %31)
  %32 = icmp ult i32 %31, 10
  br i1 %32, label %if.then12.i.i, label %if.else13.i.i

if.then12.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i197.i = shl nuw nsw i32 %conv108.i, 1
  br label %if.end125.sink.split.i

if.else13.i.i:                                    ; preds = %if.else.i.i
  %33 = add nsw i32 %conv108.i, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %33)
  %34 = icmp ult i32 %33, 10
  br i1 %34, label %if.then19.i.i, label %if.else22.i.i

if.then19.i.i:                                    ; preds = %if.else13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %add21.i.i = add nuw nsw i32 %conv108.i, 36
  br label %if.end125.sink.split.i

if.else22.i.i:                                    ; preds = %if.else13.i.i
  %35 = add nsw i32 %conv108.i, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %35)
  %36 = icmp ult i32 %35, 10
  br i1 %36, label %if.then28.i.i, label %if.else31.i.i

if.then28.i.i:                                    ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %add30.i.i = add nuw nsw i32 %conv108.i, 34
  br label %if.end125.sink.split.i

if.else31.i.i:                                    ; preds = %if.else22.i.i
  %37 = add nsw i32 %conv108.i, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %37)
  %38 = icmp ult i32 %37, 11
  br i1 %38, label %if.then37.i.i, label %if.else41.i.i

if.then37.i.i:                                    ; preds = %if.else31.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %39 = shl nuw nsw i8 %23, 1
  %div97.lhs.trunc.i.i = add nsw i8 %39, -20
  %div9798.i.i = udiv i8 %div97.lhs.trunc.i.i, 3
  %narrow.i.i = add nuw nsw i8 %div9798.i.i, 42
  %add40.i.i = zext i8 %narrow.i.i to i32
  br label %if.end125.sink.split.i

if.else41.i.i:                                    ; preds = %if.else31.i.i
  %40 = add nsw i32 %conv108.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %40)
  %41 = icmp ult i32 %40, 5
  br i1 %41, label %if.then47.i.i, label %if.else41.i.i.if.end125.sink.split.i_crit_edge

if.else41.i.i.if.end125.sink.split.i_crit_edge:   ; preds = %if.else41.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125.sink.split.i

if.then47.i.i:                                    ; preds = %if.else41.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %42 = mul nuw nsw i32 %conv108.i, 3
  %div5099.lhs.trunc.i.i = add nuw nsw i32 %42, 241
  %div5099100104.i.i = lshr i32 %div5099.lhs.trunc.i.i, 1
  %div5099.zext.i.i = and i32 %div5099100104.i.i, 127
  %add51.i.i = add nuw nsw i32 %div5099.zext.i.i, 22
  br label %if.end125.sink.split.i

if.else111.i:                                     ; preds = %entry
  %PhyDbgInfo40.i = getelementptr inbounds %struct.dm_odm_t, ptr %dm_odm, i32 0, i32 128
  %NumQryPhyStatusOFDM.i = getelementptr inbounds %struct.dm_odm_t, ptr %dm_odm, i32 0, i32 128, i32 3
  %43 = ptrtoint ptr %NumQryPhyStatusOFDM.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %NumQryPhyStatusOFDM.i, align 4
  %inc41.i = add i32 %44, 1
  store i32 %inc41.i, ptr %NumQryPhyStatusOFDM.i, align 4
  %RFPathRxEnable.i = getelementptr inbounds %struct.dm_odm_t, ptr %dm_odm, i32 0, i32 10
  %45 = ptrtoint ptr %RFPathRxEnable.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %RFPathRxEnable.i, align 1
  %47 = and i8 %46, 1
  %48 = ptrtoint ptr %phy_status to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i = load i8, ptr %phy_status, align 1
  %49 = shl i8 %bf.load.i, 1
  %50 = and i8 %49, 126
  %sub56.i = add nsw i8 %50, -110
  %arrayidx64.i = getelementptr %struct.odm_phy_info, ptr %phy_info, i32 0, i32 11, i32 0
  %51 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %sub56.i, ptr %arrayidx64.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %50)
  %52 = icmp ult i8 %50, 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 109, i8 %50)
  %cmp6.i188.i = icmp ugt i8 %50, 109
  %add.i189.i = add nsw i8 %50, -10
  %spec.select.i190.i = select i1 %cmp6.i188.i, i8 100, i8 %add.i189.i
  %retval.0.i191.i = select i1 %52, i8 0, i8 %spec.select.i190.i
  %arrayidx72.i = getelementptr %struct.odm_phy_info, ptr %phy_info, i32 0, i32 4, i32 0
  %53 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %retval.0.i191.i, ptr %arrayidx72.i, align 1
  %arrayidx74.i = getelementptr %struct.phy_status_rpt_8192cd_t, ptr %phy_status, i32 0, i32 10, i32 0
  %54 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx74.i, align 1
  %56 = lshr i8 %55, 1
  %57 = ptrtoint ptr %PhyDbgInfo40.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %PhyDbgInfo40.i, align 1
  %arrayidx82.i = getelementptr %struct.odm_phy_info, ptr %phy_info, i32 0, i32 12, i32 0
  %58 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %56, ptr %arrayidx82.i, align 1
  %59 = ptrtoint ptr %RFPathRxEnable.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %RFPathRxEnable.i, align 1
  %61 = lshr i8 %60, 1
  %.lobit.i = and i8 %61, 1
  %spec.select.1.i = add nuw nsw i8 %.lobit.i, %47
  %arrayidx52.1.i = getelementptr [2 x %struct.phy_rx_agc_info_t], ptr %phy_status, i32 0, i32 1
  %62 = ptrtoint ptr %arrayidx52.1.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load.1.i = load i8, ptr %arrayidx52.1.i, align 1
  %63 = shl i8 %bf.load.1.i, 1
  %64 = and i8 %63, 126
  %sub56.1.i = add nsw i8 %64, -110
  %arrayidx64.1.i = getelementptr %struct.odm_phy_info, ptr %phy_info, i32 0, i32 11, i32 1
  %65 = ptrtoint ptr %arrayidx64.1.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %sub56.1.i, ptr %arrayidx64.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %64)
  %66 = icmp ult i8 %64, 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 109, i8 %64)
  %cmp6.i188.1.i = icmp ugt i8 %64, 109
  %add.i189.1.i = add nsw i8 %64, -10
  %spec.select.i190.1.i = select i1 %cmp6.i188.1.i, i8 100, i8 %add.i189.1.i
  %retval.0.i191.1.i = select i1 %66, i8 0, i8 %spec.select.i190.1.i
  %arrayidx72.1.i = getelementptr %struct.odm_phy_info, ptr %phy_info, i32 0, i32 4, i32 1
  %67 = ptrtoint ptr %arrayidx72.1.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %retval.0.i191.1.i, ptr %arrayidx72.1.i, align 1
  %arrayidx74.1.i = getelementptr %struct.phy_status_rpt_8192cd_t, ptr %phy_status, i32 0, i32 10, i32 1
  %68 = ptrtoint ptr %arrayidx74.1.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx74.1.i, align 1
  %70 = lshr i8 %69, 1
  %arrayidx80.1.i = getelementptr %struct.dm_odm_t, ptr %dm_odm, i32 0, i32 128, i32 0, i32 1
  %71 = ptrtoint ptr %arrayidx80.1.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx80.1.i, align 1
  %arrayidx82.1.i = getelementptr %struct.odm_phy_info, ptr %phy_info, i32 0, i32 12, i32 1
  %72 = ptrtoint ptr %arrayidx82.1.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %70, ptr %arrayidx82.1.i, align 1
  %cck_sig_qual_ofdm_pwdb_all84.i = getelementptr inbounds %struct.phy_status_rpt_8192cd_t, ptr %phy_status, i32 0, i32 2
  %73 = ptrtoint ptr %cck_sig_qual_ofdm_pwdb_all84.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %cck_sig_qual_ofdm_pwdb_all84.i, align 1
  %75 = lshr i8 %74, 1
  %sub88.i = add nsw i8 %75, -110
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %74)
  %76 = icmp ult i8 %74, 22
  call void @__sanitizer_cov_trace_const_cmp1(i8 -37, i8 %74)
  %cmp6.i192.i = icmp ugt i8 %74, -37
  %add.i193.i = add nsw i8 %75, -10
  %spec.select.i194.i = select i1 %cmp6.i192.i, i8 100, i8 %add.i193.i
  %retval.0.i195.i = select i1 %76, i8 0, i8 %spec.select.i194.i
  %77 = ptrtoint ptr %phy_info to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %retval.0.i195.i, ptr %phy_info, align 2
  %bt_rx_rssi_percentage92.i = getelementptr inbounds %struct.odm_phy_info, ptr %phy_info, i32 0, i32 9
  %78 = ptrtoint ptr %bt_rx_rssi_percentage92.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %retval.0.i195.i, ptr %bt_rx_rssi_percentage92.i, align 2
  %rx_power.i = getelementptr inbounds %struct.odm_phy_info, ptr %phy_info, i32 0, i32 7
  %79 = ptrtoint ptr %rx_power.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %sub88.i, ptr %rx_power.i, align 2
  %recv_signal_power93.i = getelementptr inbounds %struct.odm_phy_info, ptr %phy_info, i32 0, i32 8
  %80 = ptrtoint ptr %recv_signal_power93.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %sub88.i, ptr %recv_signal_power93.i, align 1
  %stream_rxevm.i = getelementptr inbounds %struct.phy_status_rpt_8192cd_t, ptr %phy_status, i32 0, i32 9
  %81 = ptrtoint ptr %stream_rxevm.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %stream_rxevm.i, align 1
  %83 = sdiv i8 %82, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %82)
  %cmp.i.i = icmp sgt i8 %82, -2
  %84 = tail call i8 @llvm.smax.i8(i8 %83, i8 -33) #4
  %.op.i.i = mul i8 %84, -3
  %mul.i.i = select i1 %cmp.i.i, i8 0, i8 %.op.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %mul.i.i)
  %cmp14.i.i = icmp eq i8 %mul.i.i, 99
  %spec.store.select18.i.i = select i1 %cmp14.i.i, i8 100, i8 %mul.i.i
  %signal_quality99.i = getelementptr inbounds %struct.odm_phy_info, ptr %phy_info, i32 0, i32 1
  %85 = ptrtoint ptr %signal_quality99.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %spec.store.select18.i.i, ptr %signal_quality99.i, align 1
  %86 = ptrtoint ptr %rx_mimo_signal_quality.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %spec.store.select18.i.i, ptr %rx_mimo_signal_quality.i, align 2
  %path_cfotail.i = getelementptr inbounds %struct.phy_status_rpt_8192cd_t, ptr %phy_status, i32 0, i32 7
  tail call void @odm_parsing_cfo(ptr noundef %dm_odm, ptr noundef %pkt_info, ptr noundef %path_cfotail.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.1.i)
  %cmp113.not.i = icmp eq i8 %spec.select.1.i, 0
  br i1 %cmp113.not.i, label %if.else111.i.odm_rx_phy_status_parsing.exit_crit_edge, label %if.then115.i

if.else111.i.odm_rx_phy_status_parsing.exit_crit_edge: ; preds = %if.else111.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %odm_rx_phy_status_parsing.exit

if.then115.i:                                     ; preds = %if.else111.i
  %add.1.i = add i8 %retval.0.i191.1.i, %retval.0.i191.i
  %87 = udiv i8 %add.1.i, %spec.select.1.i
  %conv120.i = zext i8 %87 to i32
  %SupportInterface.i198.i = getelementptr inbounds %struct.dm_odm_t, ptr %dm_odm, i32 0, i32 14
  %88 = ptrtoint ptr %SupportInterface.i198.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %SupportInterface.i198.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %89)
  %cmp.i199.i = icmp eq i8 %89, 4
  br i1 %cmp.i199.i, label %if.then.i200.i, label %if.then115.i.if.end125.sink.split.i_crit_edge

if.then115.i.if.end125.sink.split.i_crit_edge:    ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125.sink.split.i

if.then.i200.i:                                   ; preds = %if.then115.i
  %90 = add nsw i32 %conv120.i, -51
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %90)
  %91 = icmp ult i32 %90, 50
  br i1 %91, label %if.then.i200.i.if.end125.sink.split.i_crit_edge, label %if.else.i201.i

if.then.i200.i.if.end125.sink.split.i_crit_edge:  ; preds = %if.then.i200.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125.sink.split.i

if.else.i201.i:                                   ; preds = %if.then.i200.i
  %92 = add nsw i32 %conv120.i, -41
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %92)
  %93 = icmp ult i32 %92, 10
  br i1 %93, label %if.then12.i203.i, label %if.else13.i204.i

if.then12.i203.i:                                 ; preds = %if.else.i201.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i202.i = shl nuw nsw i32 %conv120.i, 1
  br label %if.end125.sink.split.i

if.else13.i204.i:                                 ; preds = %if.else.i201.i
  %94 = add nsw i32 %conv120.i, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %94)
  %95 = icmp ult i32 %94, 10
  br i1 %95, label %if.then19.i206.i, label %if.else22.i207.i

if.then19.i206.i:                                 ; preds = %if.else13.i204.i
  call void @__sanitizer_cov_trace_pc() #6
  %add21.i205.i = add nuw nsw i32 %conv120.i, 36
  br label %if.end125.sink.split.i

if.else22.i207.i:                                 ; preds = %if.else13.i204.i
  %96 = add nsw i32 %conv120.i, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %96)
  %97 = icmp ult i32 %96, 10
  br i1 %97, label %if.then28.i209.i, label %if.else31.i210.i

if.then28.i209.i:                                 ; preds = %if.else22.i207.i
  call void @__sanitizer_cov_trace_pc() #6
  %add30.i208.i = add nuw nsw i32 %conv120.i, 34
  br label %if.end125.sink.split.i

if.else31.i210.i:                                 ; preds = %if.else22.i207.i
  %98 = add nsw i32 %conv120.i, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %98)
  %99 = icmp ult i32 %98, 11
  br i1 %99, label %if.then37.i215.i, label %if.else41.i216.i

if.then37.i215.i:                                 ; preds = %if.else31.i210.i
  call void @__sanitizer_cov_trace_pc() #6
  %100 = shl nuw nsw i8 %87, 1
  %div97.lhs.trunc.i211.i = add nsw i8 %100, -20
  %div9798.i212.i = udiv i8 %div97.lhs.trunc.i211.i, 3
  %narrow.i213.i = add nuw nsw i8 %div9798.i212.i, 42
  %add40.i214.i = zext i8 %narrow.i213.i to i32
  br label %if.end125.sink.split.i

if.else41.i216.i:                                 ; preds = %if.else31.i210.i
  %101 = add nsw i32 %conv120.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %101)
  %102 = icmp ult i32 %101, 5
  br i1 %102, label %if.then47.i221.i, label %if.else52.i222.i

if.then47.i221.i:                                 ; preds = %if.else41.i216.i
  call void @__sanitizer_cov_trace_pc() #6
  %103 = mul nuw nsw i32 %conv120.i, 3
  %div5099.lhs.trunc.i217.i = add nuw nsw i32 %103, 241
  %div5099100104.i218.i = lshr i32 %div5099.lhs.trunc.i217.i, 1
  %div5099.zext.i219.i = and i32 %div5099100104.i218.i, 127
  %add51.i220.i = add nuw nsw i32 %div5099.zext.i219.i, 22
  br label %if.end125.sink.split.i

if.else52.i222.i:                                 ; preds = %if.else41.i216.i
  %104 = add nsw i32 %conv120.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %104)
  %105 = icmp ult i32 %104, 4
  br i1 %105, label %if.then58.i227.i, label %if.else52.i222.i.if.end125.sink.split.i_crit_edge

if.else52.i222.i.if.end125.sink.split.i_crit_edge: ; preds = %if.else52.i222.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125.sink.split.i

if.then58.i227.i:                                 ; preds = %if.else52.i222.i
  call void @__sanitizer_cov_trace_pc() #6
  %106 = mul nuw nsw i32 %conv120.i, 3
  %div61101.lhs.trunc.i223.i = add nuw nsw i32 %106, 253
  %div61101102103.i224.i = lshr i32 %div61101.lhs.trunc.i223.i, 1
  %div61101.zext.i225.i = and i32 %div61101102103.i224.i, 127
  %add62.i226.i = add nuw nsw i32 %div61101.zext.i225.i, 6
  br label %if.end125.sink.split.i

if.end125.sink.split.i:                           ; preds = %if.then58.i227.i, %if.else52.i222.i.if.end125.sink.split.i_crit_edge, %if.then47.i221.i, %if.then37.i215.i, %if.then28.i209.i, %if.then19.i206.i, %if.then12.i203.i, %if.then.i200.i.if.end125.sink.split.i_crit_edge, %if.then115.i.if.end125.sink.split.i_crit_edge, %if.then47.i.i, %if.else41.i.i.if.end125.sink.split.i_crit_edge, %if.then37.i.i, %if.then28.i.i, %if.then19.i.i, %if.then12.i.i, %if.then.i.i.if.end125.sink.split.i_crit_edge, %if.then107.i.if.end125.sink.split.i_crit_edge
  %ret_sig.0.i228.sink.i = phi i32 [ %sub.i197.i, %if.then12.i.i ], [ %add21.i.i, %if.then19.i.i ], [ %add30.i.i, %if.then28.i.i ], [ %add40.i.i, %if.then37.i.i ], [ %add51.i.i, %if.then47.i.i ], [ 0, %if.then107.i.if.end125.sink.split.i_crit_edge ], [ 100, %if.then.i.i.if.end125.sink.split.i_crit_edge ], [ 10, %if.else41.i.i.if.end125.sink.split.i_crit_edge ], [ %sub.i202.i, %if.then12.i203.i ], [ %add21.i205.i, %if.then19.i206.i ], [ %add30.i208.i, %if.then28.i209.i ], [ %add40.i214.i, %if.then37.i215.i ], [ %add51.i220.i, %if.then47.i221.i ], [ %add62.i226.i, %if.then58.i227.i ], [ 0, %if.then115.i.if.end125.sink.split.i_crit_edge ], [ 100, %if.then.i200.i.if.end125.sink.split.i_crit_edge ], [ %conv120.i, %if.else52.i222.i.if.end125.sink.split.i_crit_edge ]
  %conv122.i = trunc i32 %ret_sig.0.i228.sink.i to i8
  %signal_strength123.i = getelementptr inbounds %struct.odm_phy_info, ptr %phy_info, i32 0, i32 10
  %107 = ptrtoint ptr %signal_strength123.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv122.i, ptr %signal_strength123.i, align 1
  br label %odm_rx_phy_status_parsing.exit

odm_rx_phy_status_parsing.exit:                   ; preds = %if.end125.sink.split.i, %if.else111.i.odm_rx_phy_status_parsing.exit_crit_edge
  %RSSI_test = getelementptr inbounds %struct.dm_odm_t, ptr %dm_odm, i32 0, i32 139
  %108 = ptrtoint ptr %RSSI_test to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %RSSI_test, align 8, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not = icmp eq i8 %109, 0
  br i1 %tobool.not, label %if.then, label %odm_rx_phy_status_parsing.exit.if.end_crit_edge

odm_rx_phy_status_parsing.exit.if.end_crit_edge:  ; preds = %odm_rx_phy_status_parsing.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %odm_rx_phy_status_parsing.exit
  %station_id.i = getelementptr inbounds %struct.odm_packet_info, ptr %pkt_info, i32 0, i32 1
  %110 = ptrtoint ptr %station_id.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %station_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %111)
  %cmp.i5 = icmp eq i8 %111, -1
  br i1 %cmp.i5, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %conv.i = zext i8 %111 to i32
  %arrayidx.i = getelementptr %struct.dm_odm_t, ptr %dm_odm, i32 0, i32 126, i32 %conv.i
  %112 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %113, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.end4.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i
  %bssid_match.i = getelementptr inbounds %struct.odm_packet_info, ptr %pkt_info, i32 0, i32 2
  %114 = ptrtoint ptr %bssid_match.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %bssid_match.i, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool5.not.i = icmp eq i8 %115, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.end_crit_edge, label %if.end7.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end7.i:                                        ; preds = %if.end4.i
  %is_beacon.i = getelementptr inbounds %struct.odm_packet_info, ptr %pkt_info, i32 0, i32 4
  %116 = ptrtoint ptr %is_beacon.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %is_beacon.i, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool8.not.i = icmp eq i8 %117, 0
  br i1 %tobool8.not.i, label %if.end7.i.if.end10.i_crit_edge, label %if.then9.i

if.end7.i.if.end10.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  %NumQryBeaconPkt.i = getelementptr inbounds %struct.dm_odm_t, ptr %dm_odm, i32 0, i32 128, i32 4
  %118 = ptrtoint ptr %NumQryBeaconPkt.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %NumQryBeaconPkt.i, align 8
  %inc.i6 = add i8 %119, 1
  store i8 %inc.i6, ptr %NumQryBeaconPkt.i, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end10.i_crit_edge
  %120 = ptrtoint ptr %pkt_info to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %pkt_info, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %121)
  %cmp12.i = icmp ult i8 %121, 4
  %RxRate.i = getelementptr inbounds %struct.dm_odm_t, ptr %dm_odm, i32 0, i32 79
  %122 = ptrtoint ptr %RxRate.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %RxRate.i, align 8
  %rssi_stat.i = getelementptr inbounds %struct.sta_info, ptr %113, i32 0, i32 74
  %UndecoratedSmoothedCCK19.i = getelementptr inbounds %struct.sta_info, ptr %113, i32 0, i32 74, i32 1
  %123 = ptrtoint ptr %UndecoratedSmoothedCCK19.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %UndecoratedSmoothedCCK19.i, align 4
  %UndecoratedSmoothedOFDM21.i = getelementptr inbounds %struct.sta_info, ptr %113, i32 0, i32 74, i32 2
  %125 = ptrtoint ptr %UndecoratedSmoothedOFDM21.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %UndecoratedSmoothedOFDM21.i, align 8
  %to_self.i = getelementptr inbounds %struct.odm_packet_info, ptr %pkt_info, i32 0, i32 3
  %127 = ptrtoint ptr %to_self.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %to_self.i, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool24.not.i = icmp eq i8 %128, 0
  br i1 %tobool24.not.i, label %lor.lhs.false.i, label %if.end10.i.if.then29.i_crit_edge

if.end10.i.if.then29.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then29.i

lor.lhs.false.i:                                  ; preds = %if.end10.i
  %129 = ptrtoint ptr %is_beacon.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %is_beacon.i, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool27.not.i = icmp eq i8 %130, 0
  br i1 %tobool27.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %lor.lhs.false.i.if.then29.i_crit_edge

lor.lhs.false.i.if.then29.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then29.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then29.i:                                      ; preds = %lor.lhs.false.i.if.then29.i_crit_edge, %if.end10.i.if.then29.i_crit_edge
  br i1 %cmp12.i, label %if.else118.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.then29.i
  %rx_mimo_signal_strength.i = getelementptr inbounds %struct.odm_phy_info, ptr %phy_info, i32 0, i32 4
  %arrayidx32.i = getelementptr %struct.odm_phy_info, ptr %phy_info, i32 0, i32 4, i32 1
  %131 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx32.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %cmp34.i = icmp eq i8 %132, 0
  %133 = ptrtoint ptr %rx_mimo_signal_strength.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %rx_mimo_signal_strength.i, align 2
  br i1 %cmp34.i, label %if.then36.i, label %if.else.i8

if.then36.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv39.i = zext i8 %134 to i32
  %RSSI_A.i = getelementptr inbounds %struct.dm_odm_t, ptr %dm_odm, i32 0, i32 73
  %135 = ptrtoint ptr %RSSI_A.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %RSSI_A.i, align 2
  %RSSI_B.i = getelementptr inbounds %struct.dm_odm_t, ptr %dm_odm, i32 0, i32 74
  %136 = ptrtoint ptr %RSSI_B.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %RSSI_B.i, align 1
  br label %if.end97.i

if.else.i8:                                       ; preds = %if.then31.i
  %RSSI_A44.i = getelementptr inbounds %struct.dm_odm_t, ptr %dm_odm, i32 0, i32 73
  %137 = ptrtoint ptr %RSSI_A44.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %134, ptr %RSSI_A44.i, align 2
  %138 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx32.i, align 1
  %RSSI_B47.i = getelementptr inbounds %struct.dm_odm_t, ptr %dm_odm, i32 0, i32 74
  %140 = ptrtoint ptr %RSSI_B47.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %RSSI_B47.i, align 1
  %141 = ptrtoint ptr %rx_mimo_signal_strength.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %rx_mimo_signal_strength.i, align 2
  %143 = load i8, ptr %arrayidx32.i, align 1
  %144 = tail call i8 @llvm.umax.i8(i8 %142, i8 %143) #4
  %145 = tail call i8 @llvm.umin.i8(i8 %142, i8 %143) #4
  %conv67.i = zext i8 %144 to i32
  %conv68.i = zext i8 %145 to i32
  %sub.i7 = sub nsw i32 %conv67.i, %conv68.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i7)
  %cmp69.i = icmp slt i32 %sub.i7, 3
  br i1 %cmp69.i, label %if.else.i8.if.end97.i_crit_edge, label %if.else73.i

if.else.i8.if.end97.i_crit_edge:                  ; preds = %if.else.i8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end97.i

if.else73.i:                                      ; preds = %if.else.i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub.i7)
  %cmp77.i = icmp ult i32 %sub.i7, 6
  br i1 %cmp77.i, label %if.then79.i, label %if.else82.i

if.then79.i:                                      ; preds = %if.else73.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub81.i = add nsw i32 %conv67.i, -1
  br label %if.end97.i

if.else82.i:                                      ; preds = %if.else73.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub.i7)
  %cmp86.i = icmp ult i32 %sub.i7, 10
  br i1 %cmp86.i, label %if.then88.i, label %if.else91.i

if.then88.i:                                      ; preds = %if.else82.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub90.i = add nsw i32 %conv67.i, -2
  br label %if.end97.i

if.else91.i:                                      ; preds = %if.else82.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub93.i = add nsw i32 %conv67.i, -3
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.else91.i, %if.then88.i, %if.then79.i, %if.else.i8.if.end97.i_crit_edge, %if.then36.i
  %RSSI_Ave.0.i = phi i32 [ %conv39.i, %if.then36.i ], [ %sub81.i, %if.then79.i ], [ %sub90.i, %if.then88.i ], [ %sub93.i, %if.else91.i ], [ %conv67.i, %if.else.i8.if.end97.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %126)
  %cmp98.i = icmp slt i32 %126, 1
  %146 = ptrtoint ptr %phy_info to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %phy_info, align 2
  %conv101.i = zext i8 %147 to i32
  br i1 %cmp98.i, label %if.end97.i.if.end114.i_crit_edge, label %if.else102.i

if.end97.i.if.end114.i_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114.i

if.else102.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %conv101.i)
  %cmp105.i = icmp ult i32 %126, %conv101.i
  %mul.i9 = mul i32 %126, 19
  %add.i = add i32 %RSSI_Ave.0.i, %mul.i9
  %div.i = sdiv i32 %add.i, 20
  %add108.i = zext i1 %cmp105.i to i32
  %spec.select.i = add nsw i32 %div.i, %add108.i
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.else102.i, %if.end97.i.if.end114.i_crit_edge
  %UndecoratedSmoothedOFDM.0.i = phi i32 [ %conv101.i, %if.end97.i.if.end114.i_crit_edge ], [ %spec.select.i, %if.else102.i ]
  %PacketMap.i = getelementptr inbounds %struct.sta_info, ptr %113, i32 0, i32 74, i32 3
  %148 = ptrtoint ptr %PacketMap.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %PacketMap.i, align 8
  %shl.i = shl i64 %149, 1
  %or.i = or i64 %shl.i, 1
  store i64 %or.i, ptr %PacketMap.i, align 8
  br label %if.end154.i

if.else118.i:                                     ; preds = %if.then29.i
  %150 = ptrtoint ptr %phy_info to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %phy_info, align 2
  %RSSI_A122.i = getelementptr inbounds %struct.dm_odm_t, ptr %dm_odm, i32 0, i32 73
  %152 = ptrtoint ptr %RSSI_A122.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %RSSI_A122.i, align 2
  %RSSI_B123.i = getelementptr inbounds %struct.dm_odm_t, ptr %dm_odm, i32 0, i32 74
  %153 = ptrtoint ptr %RSSI_B123.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %RSSI_B123.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %124)
  %cmp124.i = icmp slt i32 %124, 1
  %154 = ptrtoint ptr %phy_info to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %phy_info, align 2
  %conv128.i = zext i8 %155 to i32
  br i1 %cmp124.i, label %if.else118.i.if.end148.i_crit_edge, label %if.else129.i

if.else118.i.if.end148.i_crit_edge:               ; preds = %if.else118.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end148.i

if.else129.i:                                     ; preds = %if.else118.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %conv128.i)
  %cmp132.i = icmp ult i32 %124, %conv128.i
  %mul135.i = mul i32 %124, 19
  %add138.i = add i32 %mul135.i, %conv128.i
  %div139.i = sdiv i32 %add138.i, 20
  %add140.i = zext i1 %cmp132.i to i32
  %spec.select327.i = add nsw i32 %div139.i, %add140.i
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.else129.i, %if.else118.i.if.end148.i_crit_edge
  %UndecoratedSmoothedCCK.0.i = phi i32 [ %conv128.i, %if.else118.i.if.end148.i_crit_edge ], [ %spec.select327.i, %if.else129.i ]
  %PacketMap150.i = getelementptr inbounds %struct.sta_info, ptr %113, i32 0, i32 74, i32 3
  %156 = ptrtoint ptr %PacketMap150.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %PacketMap150.i, align 8
  %shl151.i = shl i64 %157, 1
  store i64 %shl151.i, ptr %PacketMap150.i, align 8
  br label %if.end154.i

if.end154.i:                                      ; preds = %if.end148.i, %if.end114.i
  %UndecoratedSmoothedCCK.1.i = phi i32 [ %UndecoratedSmoothedCCK.0.i, %if.end148.i ], [ %124, %if.end114.i ]
  %UndecoratedSmoothedOFDM.1.i = phi i32 [ %126, %if.end148.i ], [ %UndecoratedSmoothedOFDM.0.i, %if.end114.i ]
  %ValidBit.i = getelementptr inbounds %struct.sta_info, ptr %113, i32 0, i32 74, i32 4
  %158 = ptrtoint ptr %ValidBit.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %ValidBit.i, align 8
  %inc165.i = add i8 %159, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %159)
  %cmp157.inv.i = icmp ult i8 %159, 64
  %storemerge.i = select i1 %cmp157.inv.i, i8 %inc165.i, i8 64
  %160 = ptrtoint ptr %ValidBit.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %storemerge.i, ptr %ValidBit.i, align 8
  %PacketMap174.i = getelementptr inbounds %struct.sta_info, ptr %113, i32 0, i32 74, i32 3
  %161 = ptrtoint ptr %PacketMap174.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %PacketMap174.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end154.i
  %OFDM_pkt.0323.i = phi i32 [ 0, %if.end154.i ], [ %add179.i, %for.body.i.for.body.i_crit_edge ]
  %i.0322.i = phi i8 [ 0, %if.end154.i ], [ %inc180.i, %for.body.i.for.body.i_crit_edge ]
  %sh_prom.i = zext i8 %i.0322.i to i64
  %shr.i = lshr i64 %162, %sh_prom.i
  %conv176.i = trunc i64 %shr.i to i32
  %and178.i = and i32 %conv176.i, 1
  %add179.i = add i32 %and178.i, %OFDM_pkt.0323.i
  %inc180.i = add nuw i8 %i.0322.i, 1
  %cmp171.i = icmp ult i8 %inc180.i, %storemerge.i
  br i1 %cmp171.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %storemerge.i)
  %cond.i = icmp eq i8 %storemerge.i, 64
  br i1 %cond.i, label %if.then186.i, label %if.then203.i

if.then186.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %shl187.i = shl i32 %add179.i, 4
  %163 = tail call i32 @llvm.umin.i32(i32 %shl187.i, i32 64) #4
  %mul192.i = mul i32 %163, %UndecoratedSmoothedOFDM.1.i
  %sub193.i = sub nuw nsw i32 64, %163
  %mul194.i = mul i32 %sub193.i, %UndecoratedSmoothedCCK.1.i
  %add195.i = add i32 %mul194.i, %mul192.i
  %shr196.i = lshr i32 %add195.i, 6
  br label %if.end217.i

if.then203.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv170.le.i = zext i8 %storemerge.i to i32
  %mul204.i = mul i32 %add179.i, %UndecoratedSmoothedOFDM.1.i
  %sub208.i = sub i32 %conv170.le.i, %add179.i
  %mul209.i = mul i32 %sub208.i, %UndecoratedSmoothedCCK.1.i
  %add210.i = add i32 %mul209.i, %mul204.i
  %div214.i = udiv i32 %add210.i, %conv170.le.i
  br label %if.end217.i

if.end217.i:                                      ; preds = %if.then203.i, %if.then186.i
  %UndecoratedSmoothedPWDB.0.i = phi i32 [ %shr196.i, %if.then186.i ], [ %div214.i, %if.then203.i ]
  %164 = ptrtoint ptr %UndecoratedSmoothedCCK19.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %UndecoratedSmoothedCCK.1.i, ptr %UndecoratedSmoothedCCK19.i, align 4
  %165 = ptrtoint ptr %UndecoratedSmoothedOFDM21.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %UndecoratedSmoothedOFDM.1.i, ptr %UndecoratedSmoothedOFDM21.i, align 8
  %166 = ptrtoint ptr %rssi_stat.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %UndecoratedSmoothedPWDB.0.i, ptr %rssi_stat.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end217.i, %lor.lhs.false.i.if.end_crit_edge, %if.end4.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %odm_rx_phy_status_parsing.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ODM_ConfigRFWithHeaderFile(ptr noundef %pDM_Odm, i32 noundef %ConfigType, i32 noundef %eRFPath) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %ConfigType to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %ConfigType, label %entry.if.end3_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then2
  ]

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ODM_ReadAndConfig_MP_8723B_RadioA(ptr noundef %pDM_Odm) #4
  br label %if.end3

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ODM_ReadAndConfig_MP_8723B_TXPWR_LMT(ptr noundef %pDM_Odm) #4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then, %entry.if.end3_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_ReadAndConfig_MP_8723B_RadioA(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_ReadAndConfig_MP_8723B_TXPWR_LMT(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ODM_ConfigRFWithTxPwrTrackHeaderFile(ptr noundef %pDM_Odm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %SupportInterface = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 14
  %0 = ptrtoint ptr %SupportInterface to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %SupportInterface, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp = icmp eq i8 %1, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ODM_ReadAndConfig_MP_8723B_TxPowerTrack_SDIO(ptr noundef %pDM_Odm) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_ReadAndConfig_MP_8723B_TxPowerTrack_SDIO(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ODM_ConfigBBWithHeaderFile(ptr noundef %pDM_Odm, i32 noundef %ConfigType) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %ConfigType to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %ConfigType, label %entry.if.end7_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then2
    i32 3, label %if.then5
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ODM_ReadAndConfig_MP_8723B_PHY_REG(ptr noundef %pDM_Odm) #4
  br label %if.end7

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ODM_ReadAndConfig_MP_8723B_AGC_TAB(ptr noundef %pDM_Odm) #4
  br label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ODM_ReadAndConfig_MP_8723B_PHY_REG_PG(ptr noundef %pDM_Odm) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then2, %if.then, %entry.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_ReadAndConfig_MP_8723B_PHY_REG(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_ReadAndConfig_MP_8723B_AGC_TAB(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_ReadAndConfig_MP_8723B_PHY_REG_PG(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_parsing_cfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i8 0, i8 2}
