; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw88/sec.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw88/sec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rtw_sec_desc = type { i8, i32, [32 x %struct.rtw_cam_entry], [1 x i32] }
%struct.rtw_cam_entry = type { i8, i8, [6 x i8], i8, ptr }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.rtw_dev = type { ptr, ptr, %struct.rtw_hci, %struct.rtw_hw_scan_info, ptr, %struct.rtw_hal, %struct.rtw_fifo_conf, %struct.rtw_fw_state, %struct.rtw_efuse, %struct.rtw_sec_desc, %struct.rtw_traffic_stats, %struct.rtw_regd, %struct.rtw_bf_info, %struct.rtw_dm_info, %struct.rtw_coex, %struct.mutex, %struct.spinlock, %struct.delayed_work, i32, %struct.list_head, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, %struct.spinlock, %struct.list_head, ptr, %struct.work_struct, %struct.work_struct, %struct.rtw_tx_report, %struct.anon.134, %struct.rtw_lps_conf, i8, i8, %struct.completion, ptr, i8, i32, [1 x i32], [1 x i32], i8, %struct.rtw_path_div, %struct.rtw_fw_state, %struct.rtw_wow_param, i8, %struct.completion, [0 x i8] }
%struct.rtw_hci = type { ptr, i32, i32, i32, i8 }
%struct.rtw_hw_scan_info = type { ptr, i8, i8, i8, i8 }
%struct.rtw_hal = type { i32, i32, i8, i8, i8, %struct.rtw_phy_cond, i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i32, i32, i8, %struct.mutex, [4 x [84 x i8]], [4 x [84 x i8]], [4 x [6 x i8]], [4 x [6 x i8]], [11 x [3 x [6 x [14 x i8]]]], [11 x [3 x [6 x [49 x i8]]]], [4 x [84 x i8]], i32, %struct.rtw_sar }
%struct.rtw_phy_cond = type { i32 }
%struct.rtw_sar = type { i32, [4 x [6 x %union.rtw_sar_cfg]] }
%union.rtw_sar_cfg = type { [4 x i8] }
%struct.rtw_fifo_conf = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.rtw_efuse = type { i32, i32, i32, i32, [6 x i8], i8, [2 x i8], i8, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.132, [4 x %struct.rtw_txpwr_idx] }
%struct.anon.132 = type { i8, i8, i8, i8, i8 }
%struct.rtw_txpwr_idx = type { %struct.rtw_2g_txpwr_idx, %struct.rtw_5g_txpwr_idx }
%struct.rtw_2g_txpwr_idx = type { [6 x i8], [5 x i8], %struct.rtw_2g_1s_pwr_idx_diff, %struct.rtw_2g_ns_pwr_idx_diff, %struct.rtw_2g_ns_pwr_idx_diff, %struct.rtw_2g_ns_pwr_idx_diff }
%struct.rtw_2g_1s_pwr_idx_diff = type { i8 }
%struct.rtw_2g_ns_pwr_idx_diff = type { i16 }
%struct.rtw_5g_txpwr_idx = type { [14 x i8], %struct.rtw_5g_ht_1s_pwr_idx_diff, %struct.rtw_5g_ht_ns_pwr_idx_diff, %struct.rtw_5g_ht_ns_pwr_idx_diff, %struct.rtw_5g_ht_ns_pwr_idx_diff, %struct.rtw_5g_ofdm_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff }
%struct.rtw_5g_ht_1s_pwr_idx_diff = type { i8 }
%struct.rtw_5g_ht_ns_pwr_idx_diff = type { i8 }
%struct.rtw_5g_ofdm_ns_pwr_idx_diff = type { i16 }
%struct.rtw_5g_vht_ns_pwr_idx_diff = type { i8 }
%struct.rtw_traffic_stats = type { i64, i64, i64, i64, i32, i32, %struct.ewma_tp, %struct.ewma_tp }
%struct.ewma_tp = type { i32 }
%struct.rtw_regd = type { i32, ptr, i32 }
%struct.rtw_bf_info = type { i8, i8, [1 x i32], i8 }
%struct.rtw_dm_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [4 x i16], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, [4 x i8], i8, i8, [4 x i8], [4 x i8], i8, i8, i8, [4 x %struct.ewma_thermal], i8, i8, [4 x i32], [4 x [2 x [15 x i16]]], [4 x [2 x [2 x i8]]], %struct.rtw_dpk_info, %struct.rtw_cfo_track, [2 x [4 x i8]], i32, i8, [4 x i8], [4 x i8], [4 x i16], [4 x i8], i8, %struct.rtw_pkt_count, %struct.rtw_pkt_count, [4 x %struct.ewma_evm], [12 x %struct.ewma_snr], i32, %struct.rtw_iqk_info, %struct.rtw_gapk_info, i8, i8, i32, i8 }
%struct.ewma_thermal = type { i32 }
%struct.rtw_dpk_info = type { i8, i8, [1 x i32], [2 x i8], [2 x %struct.ewma_thermal], i32, i32, [4 x i8], [4 x i8], [4 x [20 x i32]], [4 x i16], [4 x i8], [4 x i8], i8, i8, i8 }
%struct.rtw_cfo_track = type { i8, i8, [4 x i32], [4 x i32], i32, i32 }
%struct.rtw_pkt_count = type { i16, [84 x i16] }
%struct.ewma_evm = type { i32 }
%struct.ewma_snr = type { i32 }
%struct.rtw_iqk_info = type { i8, %struct.anon.133 }
%struct.anon.133 = type { i32, i32, i32, i32 }
%struct.rtw_gapk_info = type { [5 x [11 x [4 x i32]]], [4 x [11 x i32]], i8, [11 x [4 x i8]], [11 x [4 x i8]], i8, i8 }
%struct.rtw_coex = type { %struct.mutex, %struct.sk_buff_head, %struct.wait_queue_head, i8, i8, i8, i8, i8, i8, %struct.rtw_coex_stat, %struct.rtw_coex_dm, %struct.rtw_coex_rfe, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rtw_coex_stat = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, [6 x [10 x i8]], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, [10 x i8], [10 x i8], i8, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i16, i16, [13 x i32], [8 x i32], [6 x i32], i32, i32 }
%struct.rtw_coex_dm = type { i8, i8, i8, i8, [4 x i8], [4 x i8], [3 x i8], i8, i8, [5 x i8], i8, i8, i8, i8, i32, i32, i32, [5 x i8] }
%struct.rtw_coex_rfe = type { i8, i8, i8, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rtw_tx_report = type { %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, %struct.timer_list }
%struct.anon.134 = type { i8, %struct.spinlock, i32 }
%struct.rtw_lps_conf = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.rtw_path_div = type { i32, i32, i32, i16, i16 }
%struct.rtw_fw_state = type { ptr, ptr, %struct.completion, %struct.rtw_fwcd_desc, i16, i8, i8, i16, i32 }
%struct.rtw_fwcd_desc = type { i32, ptr, ptr }
%struct.rtw_wow_param = type { ptr, [1 x i32], i8, i8, [12 x %struct.rtw_wow_pattern], i8, %struct.rtw_pno_request }
%struct.rtw_wow_pattern = type { i16, i8, i8, [16 x i8] }
%struct.rtw_pno_request = type { i8, i32, ptr, i8, ptr, %struct.cfg80211_sched_scan_plan }
%struct.cfg80211_sched_scan_plan = type { i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rtw_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 6, i64 7]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_sec_get_free_cam(ptr noundef %sec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sec, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cam_map1 = getelementptr inbounds %struct.rtw_sec_desc, ptr %sec, i32 0, i32 3
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 @_find_next_zero_bit_be(ptr noundef %cam_map1, i32 noundef 32, i32 noundef 4) #2
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call3 = tail call i32 @_find_first_zero_bit_be(ptr noundef %cam_map1, i32 noundef 32) #2
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_sec_write_cam(ptr noundef %rtwdev, ptr noundef %sec, ptr noundef readonly %sta, ptr noundef %key, i8 noundef zeroext %hw_key_type, i8 noundef zeroext %hw_key_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %hw_key_idx to i32
  %arrayidx = getelementptr %struct.rtw_sec_desc, ptr %sec, i32 0, i32 2, i32 %idxprom
  %cam_map = getelementptr inbounds %struct.rtw_sec_desc, ptr %sec, i32 0, i32 3
  tail call void @_set_bit(i32 noundef %idxprom, ptr noundef %cam_map) #2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %arrayidx, align 4
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags, align 8
  %group = getelementptr %struct.rtw_sec_desc, ptr %sec, i32 0, i32 2, i32 %idxprom, i32 1
  %3 = trunc i16 %2 to i8
  %4 = lshr i8 %3, 3
  %5 = and i8 %4, 1
  %6 = xor i8 %5, 1
  %7 = ptrtoint ptr %group to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %group, align 1
  %hw_key_type2 = getelementptr %struct.rtw_sec_desc, ptr %sec, i32 0, i32 2, i32 %idxprom, i32 3
  %8 = ptrtoint ptr %hw_key_type2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %hw_key_type, ptr %hw_key_type2, align 4
  %key3 = getelementptr %struct.rtw_sec_desc, ptr %sec, i32 0, i32 2, i32 %idxprom, i32 4
  %9 = ptrtoint ptr %key3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %key, ptr %key3, align 4
  %tobool4.not = icmp eq ptr %sta, null
  %addr9 = getelementptr %struct.rtw_sec_desc, ptr %sec, i32 0, i32 2, i32 %idxprom, i32 2
  br i1 %tobool4.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %addr7 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %10 = ptrtoint ptr %addr7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr7, align 4
  %12 = ptrtoint ptr %addr9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %addr9, align 4
  %add.ptr.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %addr9, i32 4
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %add.ptr1.i, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %16 = call ptr @memset(ptr %addr9, i32 255, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %shl = shl nuw nsw i32 %idxprom, 3
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %arrayidx40 = getelementptr %struct.rtw_sec_desc, ptr %sec, i32 0, i32 2, i32 %idxprom, i32 2, i32 2
  %arrayidx43 = getelementptr %struct.rtw_sec_desc, ptr %sec, i32 0, i32 2, i32 %idxprom, i32 2, i32 3
  %arrayidx48 = getelementptr %struct.rtw_sec_desc, ptr %sec, i32 0, i32 2, i32 %idxprom, i32 2, i32 4
  %arrayidx53 = getelementptr %struct.rtw_sec_desc, ptr %sec, i32 0, i32 2, i32 %idxprom, i32 2, i32 5
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %17 = shl i8 %hw_key_type, 2
  %18 = and i8 %17, 28
  %addr28 = getelementptr %struct.rtw_sec_desc, ptr %sec, i32 0, i32 2, i32 %idxprom, i32 2
  %arrayidx34 = getelementptr %struct.rtw_sec_desc, ptr %sec, i32 0, i32 2, i32 %idxprom, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %if.end
  %i.0118 = phi i32 [ 7, %if.end ], [ %dec, %sw.epilog.for.body_crit_edge ]
  %19 = zext i32 %i.0118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.0118, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb38
    i32 6, label %for.body.sw.epilog_crit_edge
    i32 7, label %for.body.sw.epilog_crit_edge120
  ]

for.body.sw.epilog_crit_edge120:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %20 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %keyidx, align 1
  %22 = and i8 %21, 3
  %or114 = or i8 %18, %22
  %23 = ptrtoint ptr %group to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %group, align 1, !range !9
  %25 = shl nuw nsw i8 %24, 6
  %or22115 = or i8 %or114, %25
  %or22 = zext i8 %or22115 to i32
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 4, !range !9
  %28 = zext i8 %27 to i32
  %shl26 = shl nuw nsw i32 %28, 15
  %or27 = or i32 %shl26, %or22
  %29 = ptrtoint ptr %addr28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %addr28, align 2
  %conv30 = zext i8 %30 to i32
  %shl31 = shl nuw nsw i32 %conv30, 16
  %or32 = or i32 %or27, %shl31
  br label %sw.epilog.sink.split

sw.bb38:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %31 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx40, align 2
  %conv41 = zext i8 %32 to i32
  %33 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %34 to i32
  %shl45 = shl nuw nsw i32 %conv44, 8
  %or46 = or i32 %shl45, %conv41
  %35 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx48, align 2
  %conv49 = zext i8 %36 to i32
  %shl50 = shl nuw nsw i32 %conv49, 16
  %or51 = or i32 %or46, %shl50
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %sub = shl i32 %i.0118, 2
  %shl58 = add nsw i32 %sub, -8
  %arrayidx60 = getelementptr %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8, i32 %shl58
  %37 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %38 to i32
  %add = add nsw i32 %sub, -7
  %arrayidx63 = getelementptr %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8, i32 %add
  %39 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %40 to i32
  %shl65 = shl nuw nsw i32 %conv64, 8
  %or66 = or i32 %shl65, %conv61
  %add68 = add nsw i32 %sub, -6
  %arrayidx69 = getelementptr %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8, i32 %add68
  %41 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %42 to i32
  %shl71 = shl nuw nsw i32 %conv70, 16
  %or72 = or i32 %or66, %shl71
  %add74 = add nsw i32 %sub, -5
  %arrayidx75 = getelementptr %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8, i32 %add74
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.default, %sw.bb38, %sw.bb
  %arrayidx75.sink = phi ptr [ %arrayidx75, %sw.default ], [ %arrayidx53, %sw.bb38 ], [ %arrayidx34, %sw.bb ]
  %or72.sink = phi i32 [ %or72, %sw.default ], [ %or51, %sw.bb38 ], [ %or32, %sw.bb ]
  %43 = ptrtoint ptr %arrayidx75.sink to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx75.sink, align 1
  %conv76 = zext i8 %44 to i32
  %shl77 = shl nuw i32 %conv76, 24
  %or78 = or i32 %or72.sink, %shl77
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge120
  %content.0 = phi i32 [ 0, %for.body.sw.epilog_crit_edge ], [ 0, %for.body.sw.epilog_crit_edge120 ], [ %or78, %sw.epilog.sink.split ]
  %add79 = add nuw nsw i32 %i.0118, %shl
  %or80 = or i32 %add79, -2147418112
  %45 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write32.i, align 4
  tail call void %48(ptr noundef %rtwdev, i32 noundef 1652, i32 noundef %content.0) #2
  %49 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hci.i, align 8
  %write32.i117 = getelementptr inbounds %struct.rtw_hci_ops, ptr %50, i32 0, i32 16
  %51 = ptrtoint ptr %write32.i117 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write32.i117, align 4
  tail call void %52(ptr noundef %rtwdev, i32 noundef 1648, i32 noundef %or80) #2
  %dec = add nsw i32 %i.0118, -1
  %cmp.not = icmp eq i32 %i.0118, 0
  br i1 %cmp.not, label %for.end, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_sec_clear_cam(ptr noundef %rtwdev, ptr noundef %sec, i8 noundef zeroext %hw_key_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %hw_key_idx to i32
  %arrayidx = getelementptr %struct.rtw_sec_desc, ptr %sec, i32 0, i32 2, i32 %idxprom
  %cam_map = getelementptr inbounds %struct.rtw_sec_desc, ptr %sec, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef %idxprom, ptr noundef %cam_map) #2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %arrayidx, align 4
  %key = getelementptr %struct.rtw_sec_desc, ptr %sec, i32 0, i32 2, i32 %idxprom, i32 4
  %1 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %key, align 4
  %addr1 = getelementptr %struct.rtw_sec_desc, ptr %sec, i32 0, i32 2, i32 %idxprom, i32 2
  %2 = call ptr @memset(ptr %addr1, i32 0, i32 6)
  %shl = shl nuw nsw i32 %idxprom, 3
  %or = or i32 %shl, -2147418112
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %3 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write32.i, align 4
  tail call void %6(ptr noundef %rtwdev, i32 noundef 1652, i32 noundef 0) #2
  %7 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i, align 8
  %write32.i11 = getelementptr inbounds %struct.rtw_hci_ops, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %write32.i11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write32.i11, align 4
  tail call void %10(ptr noundef %rtwdev, i32 noundef 1648, i32 noundef %or) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_sec_cam_pg_backup(ptr noundef %rtwdev, ptr noundef writeonly %used_cam) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %used_cam, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %cam_map = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 9, i32 3
  %call = tail call i32 @_find_next_bit_be(ptr noundef %cam_map, i32 noundef 32, i32 noundef 0) #2
  %conv5 = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv5)
  %cmp6 = icmp eq i32 %conv5, 32
  br i1 %cmp6, label %for.cond.preheader.cleanup_crit_edge, label %if.end9

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end9:                                          ; preds = %for.cond.preheader
  %conv4 = trunc i32 %call to i8
  %0 = ptrtoint ptr %used_cam to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv4, ptr %used_cam, align 1
  %add = add i32 %call, 1
  %conv3.1 = and i32 %add, 255
  %call.1 = tail call i32 @_find_next_bit_be(ptr noundef %cam_map, i32 noundef 32, i32 noundef %conv3.1) #2
  %conv5.1 = and i32 %call.1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv5.1)
  %cmp6.1 = icmp eq i32 %conv5.1, 32
  br i1 %cmp6.1, label %if.end9.cleanup_crit_edge, label %if.end9.1

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end9.1:                                        ; preds = %if.end9
  %conv4.1 = trunc i32 %call.1 to i8
  %arrayidx.1 = getelementptr i8, ptr %used_cam, i32 1
  %1 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv4.1, ptr %arrayidx.1, align 1
  %add.1 = add i32 %call.1, 1
  %conv3.2 = and i32 %add.1, 255
  %call.2 = tail call i32 @_find_next_bit_be(ptr noundef %cam_map, i32 noundef 32, i32 noundef %conv3.2) #2
  %conv5.2 = and i32 %call.2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv5.2)
  %cmp6.2 = icmp eq i32 %conv5.2, 32
  br i1 %cmp6.2, label %if.end9.1.cleanup_crit_edge, label %if.end9.2

if.end9.1.cleanup_crit_edge:                      ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end9.2:                                        ; preds = %if.end9.1
  %conv4.2 = trunc i32 %call.2 to i8
  %arrayidx.2 = getelementptr i8, ptr %used_cam, i32 2
  %2 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv4.2, ptr %arrayidx.2, align 1
  %add.2 = add i32 %call.2, 1
  %conv3.3 = and i32 %add.2, 255
  %call.3 = tail call i32 @_find_next_bit_be(ptr noundef %cam_map, i32 noundef 32, i32 noundef %conv3.3) #2
  %conv5.3 = and i32 %call.3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv5.3)
  %cmp6.3 = icmp eq i32 %conv5.3, 32
  br i1 %cmp6.3, label %if.end9.2.cleanup_crit_edge, label %if.end9.3

if.end9.2.cleanup_crit_edge:                      ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end9.3:                                        ; preds = %if.end9.2
  %conv4.3 = trunc i32 %call.3 to i8
  %arrayidx.3 = getelementptr i8, ptr %used_cam, i32 3
  %3 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv4.3, ptr %arrayidx.3, align 1
  %add.3 = add i32 %call.3, 1
  %conv3.4 = and i32 %add.3, 255
  %call.4 = tail call i32 @_find_next_bit_be(ptr noundef %cam_map, i32 noundef 32, i32 noundef %conv3.4) #2
  %conv5.4 = and i32 %call.4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv5.4)
  %cmp6.4 = icmp eq i32 %conv5.4, 32
  br i1 %cmp6.4, label %if.end9.3.cleanup_crit_edge, label %if.end9.4

if.end9.3.cleanup_crit_edge:                      ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end9.4:                                        ; preds = %if.end9.3
  %conv4.4 = trunc i32 %call.4 to i8
  %arrayidx.4 = getelementptr i8, ptr %used_cam, i32 4
  %4 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv4.4, ptr %arrayidx.4, align 1
  %add.4 = add i32 %call.4, 1
  %conv3.5 = and i32 %add.4, 255
  %call.5 = tail call i32 @_find_next_bit_be(ptr noundef %cam_map, i32 noundef 32, i32 noundef %conv3.5) #2
  %conv5.5 = and i32 %call.5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv5.5)
  %cmp6.5 = icmp eq i32 %conv5.5, 32
  br i1 %cmp6.5, label %if.end9.4.cleanup_crit_edge, label %if.end9.5

if.end9.4.cleanup_crit_edge:                      ; preds = %if.end9.4
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end9.5:                                        ; preds = %if.end9.4
  %conv4.5 = trunc i32 %call.5 to i8
  %arrayidx.5 = getelementptr i8, ptr %used_cam, i32 5
  %5 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4.5, ptr %arrayidx.5, align 1
  %add.5 = add i32 %call.5, 1
  %conv3.6 = and i32 %add.5, 255
  %call.6 = tail call i32 @_find_next_bit_be(ptr noundef %cam_map, i32 noundef 32, i32 noundef %conv3.6) #2
  %conv5.6 = and i32 %call.6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv5.6)
  %cmp6.6 = icmp eq i32 %conv5.6, 32
  br i1 %cmp6.6, label %if.end9.5.cleanup_crit_edge, label %if.end9.6

if.end9.5.cleanup_crit_edge:                      ; preds = %if.end9.5
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end9.6:                                        ; preds = %if.end9.5
  %conv4.6 = trunc i32 %call.6 to i8
  %arrayidx.6 = getelementptr i8, ptr %used_cam, i32 6
  %6 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv4.6, ptr %arrayidx.6, align 1
  %add.6 = add i32 %call.6, 1
  %conv3.7 = and i32 %add.6, 255
  %call.7 = tail call i32 @_find_next_bit_be(ptr noundef %cam_map, i32 noundef 32, i32 noundef %conv3.7) #2
  %conv5.7 = and i32 %call.7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv5.7)
  %cmp6.7 = icmp eq i32 %conv5.7, 32
  br i1 %cmp6.7, label %if.end9.6.cleanup_crit_edge, label %if.end9.7

if.end9.6.cleanup_crit_edge:                      ; preds = %if.end9.6
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end9.7:                                        ; preds = %if.end9.6
  call void @__sanitizer_cov_trace_pc() #4
  %conv4.7 = trunc i32 %call.7 to i8
  %arrayidx.7 = getelementptr i8, ptr %used_cam, i32 7
  %7 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv4.7, ptr %arrayidx.7, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end9.7, %if.end9.6.cleanup_crit_edge, %if.end9.5.cleanup_crit_edge, %if.end9.4.cleanup_crit_edge, %if.end9.3.cleanup_crit_edge, %if.end9.2.cleanup_crit_edge, %if.end9.1.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 1, %if.end9.cleanup_crit_edge ], [ 2, %if.end9.1.cleanup_crit_edge ], [ 3, %if.end9.2.cleanup_crit_edge ], [ 4, %if.end9.3.cleanup_crit_edge ], [ 5, %if.end9.4.cleanup_crit_edge ], [ 6, %if.end9.5.cleanup_crit_edge ], [ 7, %if.end9.6.cleanup_crit_edge ], [ 8, %if.end9.7 ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_sec_enable_sec_engine(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %sec1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 9
  %0 = ptrtoint ptr %sec1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %sec1, align 4
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %1 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hci.i, align 8
  %read16.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read16.i, align 4
  %call.i = tail call zeroext i16 %4(ptr noundef %rtwdev, i32 noundef 256) #2
  %5 = or i16 %call.i, 512
  %6 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i, align 8
  %write16.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write16.i, align 4
  tail call void %9(ptr noundef %rtwdev, i32 noundef 256, i16 noundef zeroext %5) #2
  %10 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci.i, align 8
  %read16.i21 = getelementptr inbounds %struct.rtw_hci_ops, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %read16.i21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read16.i21, align 4
  %call.i22 = tail call zeroext i16 %13(ptr noundef %rtwdev, i32 noundef 1664) #2
  %14 = ptrtoint ptr %sec1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sec1, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  %spec.select.v = select i1 %tobool.not, i16 12, i16 207
  %spec.select = or i16 %spec.select.v, %call.i22
  %16 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i, align 8
  %write16.i24 = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %write16.i24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write16.i24, align 4
  tail call void %19(ptr noundef %rtwdev, i32 noundef 1664, i16 noundef zeroext %spec.select) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
!9 = !{i8 0, i8 2}
