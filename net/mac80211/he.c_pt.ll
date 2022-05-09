; ModuleID = '/llk/IR_all_yes/net/mac80211/he.c_pt.bc'
source_filename = "../net/mac80211/he.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.141, [17 x i16], %struct.anon.142, %struct.anon.143, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, ptr, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.anon.141 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.142 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.143 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
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
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.153, %struct.anon.187, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.126, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.126 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.cfg80211_bss_selection = type { i32, %union.anon.127 }
%union.anon.127 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.153 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.anon.187 = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.130, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.130 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.131] }
%struct.anon.131 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.123 }>
%struct.anon.123 = type { ptr, i32 }
%struct.ieee80211_he_operation = type <{ i32, i16, [0 x i8] }>
%struct.ieee80211_he_spr = type { i8, [0 x i8] }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/cfg80211.h\00", [41 x i8] zeroinitializer }, align 32
@switch.table.ieee80211_he_cap_ie_to_sta_he_cap = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_ = private constant [21 x i8] c"../net/mac80211/he.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [26 x i8] c"../include/net/cfg80211.h\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 510, i32 6 }
@___asan_gen_.4 = private unnamed_addr constant [47 x i8] c"switch.table.ieee80211_he_cap_ie_to_sta_he_cap\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @switch.table.ieee80211_he_cap_ie_to_sta_he_cap], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ieee80211_he_cap_ie_to_sta_he_cap to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_he_cap_ie_to_sta_he_cap(ptr nocapture noundef readonly %sdata, ptr nocapture noundef readonly %sband, ptr noundef readonly %he_cap_ie, i8 noundef zeroext %he_cap_len, ptr noundef readonly %he_6ghz_capa, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %he_cap2 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6
  %0 = call ptr @memset(ptr %he_cap2, i32 0, i32 55)
  %tobool.not = icmp eq ptr %he_cap_ie, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %1 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vif, align 8
  %p2p.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 3
  %3 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %p2p.i, align 2, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %lor.lhs.false.ieee80211_vif_type_p2p.exit_crit_edge, label %if.then.i.i

lor.lhs.false.ieee80211_vif_type_p2p.exit_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee80211_vif_type_p2p.exit

if.then.i.i:                                      ; preds = %lor.lhs.false
  %5 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge [
    i32 2, label %if.then.i.i.for.cond.preheader.i.i_crit_edge
    i32 3, label %sw.bb1.i.i
  ]

if.then.i.i.for.cond.preheader.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader.i.i

if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee80211_vif_type_p2p.exit

sw.bb1.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader.i.i

ieee80211_vif_type_p2p.exit:                      ; preds = %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge, %lor.lhs.false.ieee80211_vif_type_p2p.exit_crit_edge
  %conv = trunc i32 %2 to i8
  %conv.i.i = and i32 %2, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %conv)
  %cmp.i.i = icmp ugt i8 %conv, 11
  br i1 %cmp.i.i, label %do.end.i.i, label %ieee80211_vif_type_p2p.exit.for.cond.preheader.i.i_crit_edge, !prof !12

ieee80211_vif_type_p2p.exit.for.cond.preheader.i.i_crit_edge: ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %ieee80211_vif_type_p2p.exit.for.cond.preheader.i.i_crit_edge, %sw.bb1.i.i, %if.then.i.i.for.cond.preheader.i.i_crit_edge
  %conv.i.i272 = phi i32 [ %conv.i.i, %ieee80211_vif_type_p2p.exit.for.cond.preheader.i.i_crit_edge ], [ 8, %if.then.i.i.for.cond.preheader.i.i_crit_edge ], [ 9, %sw.bb1.i.i ]
  %n_iftype_data.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 9
  %6 = ptrtoint ptr %n_iftype_data.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %n_iftype_data.i.i, align 4
  %conv23.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp2438.not.i.i = icmp eq i16 %7, 0
  br i1 %cmp2438.not.i.i, label %for.cond.preheader.i.i.cleanup_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.cleanup_crit_edge:         ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %iftype_data.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 10
  %8 = ptrtoint ptr %iftype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iftype_data.i.i, align 4
  %shl.i.i = shl nuw i32 1, %conv.i.i272
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 510, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.039.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv23.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.039.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %9, i32 %i.039.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i.i, align 4
  %conv26.i.i = zext i16 %11 to i32
  %and.i.i = and i32 %shl.i.i, %conv26.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool28.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool28.not.i.i, label %for.cond.i.i, label %ieee80211_get_sband_iftype_data.exit.i

ieee80211_get_sband_iftype_data.exit.i:           ; preds = %for.body.i.i
  %tobool.not.i186 = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i186, label %ieee80211_get_sband_iftype_data.exit.i.cleanup_crit_edge, label %land.lhs.true.i

ieee80211_get_sband_iftype_data.exit.i.cleanup_crit_edge: ; preds = %ieee80211_get_sband_iftype_data.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %ieee80211_get_sband_iftype_data.exit.i
  %he_cap.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %9, i32 %i.039.i.i, i32 1
  %12 = ptrtoint ptr %he_cap.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %he_cap.i, align 2, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i = icmp eq i8 %13, 0
  %tobool4.not = icmp eq ptr %he_cap.i, null
  %or.cond275 = or i1 %tobool4.not, %tobool1.not.i
  br i1 %or.cond275, label %land.lhs.true.i.cleanup_crit_edge, label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  %14 = ptrtoint ptr %iftype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iftype_data.i.i, align 4
  %own_he_cap.sroa.4.0.he_cap5.sroa_idx = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %15, i32 0, i32 1, i32 1, i32 1
  %16 = ptrtoint ptr %own_he_cap.sroa.4.0.he_cap5.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %own_he_cap.sroa.4.0.copyload = load i8, ptr %own_he_cap.sroa.4.0.he_cap5.sroa_idx, align 1
  %own_he_cap.sroa.6266.0.he_cap5.sroa_idx = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %15, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %own_he_cap.sroa.6266.0.he_cap5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %17)
  %own_he_cap.sroa.6266.0.copyload = load i16, ptr %own_he_cap.sroa.6266.0.he_cap5.sroa_idx, align 2
  %own_he_cap.sroa.7.0.he_cap5.sroa_idx = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %15, i32 0, i32 1, i32 2, i32 1
  %18 = ptrtoint ptr %own_he_cap.sroa.7.0.he_cap5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %18)
  %own_he_cap.sroa.7.0.copyload = load i16, ptr %own_he_cap.sroa.7.0.he_cap5.sroa_idx, align 2
  %own_he_cap.sroa.8.0.he_cap5.sroa_idx = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %15, i32 0, i32 1, i32 2, i32 2
  %19 = ptrtoint ptr %own_he_cap.sroa.8.0.he_cap5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %19)
  %own_he_cap.sroa.8.0.copyload = load i16, ptr %own_he_cap.sroa.8.0.he_cap5.sroa_idx, align 2
  %own_he_cap.sroa.9.0.he_cap5.sroa_idx = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %15, i32 0, i32 1, i32 2, i32 3
  %20 = ptrtoint ptr %own_he_cap.sroa.9.0.he_cap5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %20)
  %own_he_cap.sroa.9.0.copyload = load i16, ptr %own_he_cap.sroa.9.0.he_cap5.sroa_idx, align 2
  %own_he_cap.sroa.10.0.he_cap5.sroa_idx = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %15, i32 0, i32 1, i32 2, i32 4
  %21 = ptrtoint ptr %own_he_cap.sroa.10.0.he_cap5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %21)
  %own_he_cap.sroa.10.0.copyload = load i16, ptr %own_he_cap.sroa.10.0.he_cap5.sroa_idx, align 2
  %own_he_cap.sroa.11.0.he_cap5.sroa_idx = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %15, i32 0, i32 1, i32 2, i32 5
  %22 = ptrtoint ptr %own_he_cap.sroa.11.0.he_cap5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %22)
  %own_he_cap.sroa.11.0.copyload = load i16, ptr %own_he_cap.sroa.11.0.he_cap5.sroa_idx, align 2
  %phy_cap_info.i = getelementptr inbounds %struct.ieee80211_he_cap_elem, ptr %he_cap_ie, i32 0, i32 1
  %23 = ptrtoint ptr %phy_cap_info.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %phy_cap_info.i, align 1
  %25 = and i8 %24, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i187 = icmp eq i8 %25, 0
  %spec.select.i = select i1 %tobool.not.i187, i8 4, i8 8
  %26 = and i8 %24, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool7.not.i = icmp eq i8 %26, 0
  %narrow.i = add nuw nsw i8 %spec.select.i, 4
  %count.1.i = select i1 %tobool7.not.i, i8 %spec.select.i, i8 %narrow.i
  %conv7 = zext i8 %count.1.i to i32
  %add = add nuw nsw i32 %conv7, 17
  %arrayidx = getelementptr i8, ptr %he_cap_ie, i32 %add
  %arrayidx.i = getelementptr %struct.ieee80211_he_cap_elem, ptr %he_cap_ie, i32 0, i32 1, i32 6
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %cmp.i = icmp sgt i8 %28, -1
  br i1 %cmp.i, label %if.end.ieee80211_he_ppe_size.exit_crit_edge, label %if.end.i188

if.end.ieee80211_he_ppe_size.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee80211_he_ppe_size.exit

if.end.i188:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx, align 1
  %conv2.i = zext i8 %30 to i32
  %and3.i = and i32 %conv2.i, 120
  %call.i.i = tail call i32 @__sw_hweight8(i32 noundef %and3.i) #5
  %and82.i = and i32 %conv2.i, 7
  %31 = mul nuw nsw i32 %and82.i, 6
  %mul.i = add nuw nsw i32 %31, 6
  %32 = mul i32 %call.i.i, %mul.i
  %conv90.i = add i32 %32, 7
  %conv91.i = and i32 %conv90.i, 255
  %sub.i = add nuw nsw i32 %conv91.i, 7
  %div107.i = lshr i32 %sub.i, 3
  %conv93.i = trunc i32 %div107.i to i8
  br label %ieee80211_he_ppe_size.exit

ieee80211_he_ppe_size.exit:                       ; preds = %if.end.i188, %if.end.ieee80211_he_ppe_size.exit_crit_edge
  %retval.0.i189 = phi i8 [ %conv93.i, %if.end.i188 ], [ 0, %if.end.ieee80211_he_ppe_size.exit_crit_edge ]
  %conv11 = zext i8 %retval.0.i189 to i32
  %33 = trunc i32 %add to i8
  %conv13 = add nuw nsw i8 %retval.0.i189, %33
  call void @__sanitizer_cov_trace_cmp1(i8 %conv13, i8 %he_cap_len)
  %cmp = icmp ugt i8 %conv13, %he_cap_len
  br i1 %cmp, label %ieee80211_he_ppe_size.exit.cleanup_crit_edge, label %if.end18

ieee80211_he_ppe_size.exit.cleanup_crit_edge:     ; preds = %ieee80211_he_ppe_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %ieee80211_he_ppe_size.exit
  %he_cap_elem = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6, i32 1
  %34 = call ptr @memcpy(ptr %he_cap_elem, ptr %he_cap_ie, i32 17)
  %he_mcs_nss_supp = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6, i32 2
  %arrayidx19 = getelementptr i8, ptr %he_cap_ie, i32 17
  %35 = call ptr @memcpy(ptr %he_mcs_nss_supp, ptr %arrayidx19, i32 %conv7)
  %phy_cap_info22 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6, i32 1, i32 1
  %arrayidx23 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6, i32 1, i32 1, i32 6
  %36 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %tobool25.not = icmp sgt i8 %37, -1
  br i1 %tobool25.not, label %if.end18.if.end32_crit_edge, label %if.then26

if.end18.if.end32_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %ppe_thres = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6, i32 3
  %38 = call ptr @memcpy(ptr %ppe_thres, ptr %arrayidx, i32 %conv11)
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.end18.if.end32_crit_edge
  %39 = ptrtoint ptr %he_cap2 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %he_cap2, align 1
  %call33 = tail call i32 @ieee80211_sta_cap_rx_bw(ptr noundef %sta) #5
  %cur_max_bandwidth = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 41
  %40 = ptrtoint ptr %cur_max_bandwidth to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call33, ptr %cur_max_bandwidth, align 4
  %call34 = tail call i32 @ieee80211_sta_cur_vht_bw(ptr noundef %sta) #5
  %bandwidth = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 14
  %41 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call34, ptr %bandwidth, align 8
  %band = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 2
  %42 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp36 = icmp ne i32 %43, 3
  %tobool38.not = icmp eq ptr %he_6ghz_capa, null
  %or.cond = or i1 %tobool38.not, %cmp36
  br i1 %or.cond, label %if.end32.if.end40_crit_edge, label %if.then39

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then39:                                        ; preds = %if.end32
  %sdata.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %44 = ptrtoint ptr %sdata.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sdata.i, align 4
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %45, i32 0, i32 59
  %46 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vif.i, align 8
  %.off.i = add i32 %47, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then.i, label %if.then39.ieee80211_update_from_he_6ghz_capa.exit_crit_edge

if.then39.ieee80211_update_from_he_6ghz_capa.exit_crit_edge: ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee80211_update_from_he_6ghz_capa.exit

if.then.i:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %he_6ghz_capa to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %he_6ghz_capa, align 1
  %50 = lshr i16 %49, 1
  %51 = and i16 %50, 3
  %52 = xor i16 %51, 2
  %53 = zext i16 %52 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ieee80211_he_cap_ie_to_sta_he_cap, i32 0, i32 %53
  %54 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %54)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ieee80211_update_from_he_6ghz_capa.exit

ieee80211_update_from_he_6ghz_capa.exit:          ; preds = %if.then.i, %if.then39.ieee80211_update_from_he_6ghz_capa.exit_crit_edge
  %.sink.i = phi i32 [ 1, %if.then39.ieee80211_update_from_he_6ghz_capa.exit_crit_edge ], [ %switch.load, %if.then.i ]
  %smps_mode10.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 15
  %55 = ptrtoint ptr %smps_mode10.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink.i, ptr %smps_mode10.i, align 4
  %56 = ptrtoint ptr %he_6ghz_capa to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %he_6ghz_capa, align 1
  %sum.shift.i = lshr i16 %57, 14
  %trunc.i = trunc i16 %sum.shift.i to i2
  %58 = sext i2 %trunc.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %58)
  %switch.selectcmp.i = icmp eq i2 %trunc.i, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i16 7991, i16 3895
  %59 = sext i2 %trunc.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %59)
  %switch.selectcmp42.i = icmp eq i2 %trunc.i, -2
  %switch.select43.i = select i1 %switch.selectcmp42.i, i16 11454, i16 %switch.select.i
  %max_amsdu_len21.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 21
  %60 = ptrtoint ptr %max_amsdu_len21.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %switch.select43.i, ptr %max_amsdu_len21.i, align 8
  %he_6ghz_capa24.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 7
  %61 = ptrtoint ptr %he_6ghz_capa to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %he_6ghz_capa, align 1
  %63 = ptrtoint ptr %he_6ghz_capa24.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 %62, ptr %he_6ghz_capa24.i, align 1
  br label %if.end40

if.end40:                                         ; preds = %ieee80211_update_from_he_6ghz_capa.exit, %if.end32.if.end40_crit_edge
  %tx_mcs_8046 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6, i32 2, i32 1
  %64 = tail call i16 @llvm.bswap.i16(i16 %own_he_cap.sroa.6266.0.copyload) #5
  %conv.i = zext i16 %64 to i32
  %65 = tail call i16 @llvm.bswap.i16(i16 %own_he_cap.sroa.7.0.copyload) #5
  %conv2.i192 = zext i16 %65 to i32
  %66 = ptrtoint ptr %he_mcs_nss_supp to i32
  call void @__asan_load2_noabort(i32 %66)
  %he_mcs_nss_supp.promoted = load i16, ptr %he_mcs_nss_supp, align 2
  %67 = ptrtoint ptr %tx_mcs_8046 to i32
  call void @__asan_load2_noabort(i32 %67)
  %tx_mcs_8046.promoted = load i16, ptr %tx_mcs_8046, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end40
  %or75103.i280 = phi i16 [ %tx_mcs_8046.promoted, %if.end40 ], [ %or75103.i, %for.body.i.for.body.i_crit_edge ]
  %or102.i279 = phi i16 [ %he_mcs_nss_supp.promoted, %if.end40 ], [ %or102.i, %for.body.i.for.body.i_crit_edge ]
  %i.0106.i = phi i32 [ 0, %if.end40 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i191 = shl nuw nsw i32 %i.0106.i, 1
  %shr.i = lshr i32 %conv.i, %mul.i191
  %68 = trunc i32 %shr.i to i16
  %conv1.i = and i16 %68, 3
  %shr4.i = lshr i32 %conv2.i192, %mul.i191
  %69 = trunc i32 %shr4.i to i16
  %conv6.i = and i16 %69, 3
  %70 = tail call i16 @llvm.bswap.i16(i16 %or102.i279) #5
  %conv7.i = zext i16 %70 to i32
  %shr9.i = lshr i32 %conv7.i, %mul.i191
  %71 = trunc i32 %shr9.i to i16
  %conv11.i = and i16 %71, 3
  %72 = tail call i16 @llvm.bswap.i16(i16 %or75103.i280) #5
  %conv12.i = zext i16 %72 to i32
  %shr14.i = lshr i32 %conv12.i, %mul.i191
  %73 = trunc i32 %shr14.i to i16
  %conv16.i = and i16 %73, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv16.i)
  %cmp18.not.i = icmp eq i16 %conv16.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv1.i)
  %cmp21.i = icmp eq i16 %conv1.i, 3
  %or.cond.i = select i1 %cmp18.not.i, i1 true, i1 %cmp21.i
  %74 = tail call i16 @llvm.umin.i16(i16 %conv1.i, i16 %conv16.i) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv11.i)
  %cmp32.not.i = icmp eq i16 %conv11.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv6.i)
  %cmp36.i = icmp eq i16 %conv6.i, 3
  %or.cond105.i = select i1 %cmp32.not.i, i1 true, i1 %cmp36.i
  %75 = tail call i16 @llvm.umin.i16(i16 %conv6.i, i16 %conv11.i) #5
  %shl.i = shl nuw nsw i32 3, %mul.i191
  %conv49.i = trunc i32 %shl.i to i16
  %76 = xor i16 %conv49.i, -1
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #5
  %conv53.i = and i16 %77, %or102.i279
  %78 = zext i16 %75 to i32
  %conv54.i = select i1 %or.cond105.i, i32 3, i32 %78
  %shl56.i = shl nuw nsw i32 %conv54.i, %mul.i191
  %conv57.i = trunc i32 %shl56.i to i16
  %79 = tail call i16 @llvm.bswap.i16(i16 %conv57.i) #5
  %or102.i = or i16 %79, %conv53.i
  %conv68.i = and i16 %77, %or75103.i280
  %80 = zext i16 %74 to i32
  %conv69.i = select i1 %or.cond.i, i32 3, i32 %80
  %shl71.i = shl nuw nsw i32 %conv69.i, %mul.i191
  %conv72.i = trunc i32 %shl71.i to i16
  %81 = tail call i16 @llvm.bswap.i16(i16 %conv72.i) #5
  %or75103.i = or i16 %81, %conv68.i
  %inc.i = add nuw nsw i32 %i.0106.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %ieee80211_he_mcs_intersection.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

ieee80211_he_mcs_intersection.exit:               ; preds = %for.body.i
  %82 = ptrtoint ptr %he_mcs_nss_supp to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %or102.i, ptr %he_mcs_nss_supp, align 2
  %83 = ptrtoint ptr %tx_mcs_8046 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %or75103.i, ptr %tx_mcs_8046, align 2
  %84 = and i8 %own_he_cap.sroa.4.0.copyload, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool52.not = icmp eq i8 %84, 0
  %85 = ptrtoint ptr %phy_cap_info22 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %phy_cap_info22, align 1
  %87 = and i8 %86, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool58.not = icmp eq i8 %87, 0
  %brmerge = select i1 %tobool58.not, i1 true, i1 %tobool52.not
  br i1 %brmerge, label %if.else, label %if.then65

if.then65:                                        ; preds = %ieee80211_he_mcs_intersection.exit
  %rx_mcs_16068 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6, i32 2, i32 2
  %tx_mcs_16071 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6, i32 2, i32 3
  %88 = tail call i16 @llvm.bswap.i16(i16 %own_he_cap.sroa.8.0.copyload) #5
  %conv.i194 = zext i16 %88 to i32
  %89 = tail call i16 @llvm.bswap.i16(i16 %own_he_cap.sroa.9.0.copyload) #5
  %conv2.i198 = zext i16 %89 to i32
  %90 = ptrtoint ptr %rx_mcs_16068 to i32
  call void @__asan_load2_noabort(i32 %90)
  %rx_mcs_16068.promoted = load i16, ptr %rx_mcs_16068, align 2
  %91 = ptrtoint ptr %tx_mcs_16071 to i32
  call void @__asan_load2_noabort(i32 %91)
  %tx_mcs_16071.promoted = load i16, ptr %tx_mcs_16071, align 2
  br label %for.body.i227

for.body.i227:                                    ; preds = %for.body.i227.for.body.i227_crit_edge, %if.then65
  %or75103.i224282 = phi i16 [ %tx_mcs_16071.promoted, %if.then65 ], [ %or75103.i224, %for.body.i227.for.body.i227_crit_edge ]
  %or102.i219281 = phi i16 [ %rx_mcs_16068.promoted, %if.then65 ], [ %or102.i219, %for.body.i227.for.body.i227_crit_edge ]
  %i.0106.i193 = phi i32 [ 0, %if.then65 ], [ %inc.i225, %for.body.i227.for.body.i227_crit_edge ]
  %mul.i195 = shl nuw nsw i32 %i.0106.i193, 1
  %shr.i196 = lshr i32 %conv.i194, %mul.i195
  %92 = trunc i32 %shr.i196 to i16
  %conv1.i197 = and i16 %92, 3
  %shr4.i199 = lshr i32 %conv2.i198, %mul.i195
  %93 = trunc i32 %shr4.i199 to i16
  %conv6.i200 = and i16 %93, 3
  %94 = tail call i16 @llvm.bswap.i16(i16 %or102.i219281) #5
  %conv7.i201 = zext i16 %94 to i32
  %shr9.i202 = lshr i32 %conv7.i201, %mul.i195
  %95 = trunc i32 %shr9.i202 to i16
  %conv11.i203 = and i16 %95, 3
  %96 = tail call i16 @llvm.bswap.i16(i16 %or75103.i224282) #5
  %conv12.i204 = zext i16 %96 to i32
  %shr14.i205 = lshr i32 %conv12.i204, %mul.i195
  %97 = trunc i32 %shr14.i205 to i16
  %conv16.i206 = and i16 %97, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv16.i206)
  %cmp18.not.i207 = icmp eq i16 %conv16.i206, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv1.i197)
  %cmp21.i208 = icmp eq i16 %conv1.i197, 3
  %or.cond.i209 = select i1 %cmp18.not.i207, i1 true, i1 %cmp21.i208
  %98 = tail call i16 @llvm.umin.i16(i16 %conv1.i197, i16 %conv16.i206) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv11.i203)
  %cmp32.not.i210 = icmp eq i16 %conv11.i203, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv6.i200)
  %cmp36.i211 = icmp eq i16 %conv6.i200, 3
  %or.cond105.i212 = select i1 %cmp32.not.i210, i1 true, i1 %cmp36.i211
  %99 = tail call i16 @llvm.umin.i16(i16 %conv6.i200, i16 %conv11.i203) #5
  %shl.i213 = shl nuw nsw i32 3, %mul.i195
  %conv49.i214 = trunc i32 %shl.i213 to i16
  %100 = xor i16 %conv49.i214, -1
  %101 = tail call i16 @llvm.bswap.i16(i16 %100) #5
  %conv53.i215 = and i16 %101, %or102.i219281
  %102 = zext i16 %99 to i32
  %conv54.i216 = select i1 %or.cond105.i212, i32 3, i32 %102
  %shl56.i217 = shl nuw nsw i32 %conv54.i216, %mul.i195
  %conv57.i218 = trunc i32 %shl56.i217 to i16
  %103 = tail call i16 @llvm.bswap.i16(i16 %conv57.i218) #5
  %or102.i219 = or i16 %103, %conv53.i215
  %conv68.i220 = and i16 %101, %or75103.i224282
  %104 = zext i16 %98 to i32
  %conv69.i221 = select i1 %or.cond.i209, i32 3, i32 %104
  %shl71.i222 = shl nuw nsw i32 %conv69.i221, %mul.i195
  %conv72.i223 = trunc i32 %shl71.i222 to i16
  %105 = tail call i16 @llvm.bswap.i16(i16 %conv72.i223) #5
  %or75103.i224 = or i16 %105, %conv68.i220
  %inc.i225 = add nuw nsw i32 %i.0106.i193, 1
  %exitcond.not.i226 = icmp eq i32 %inc.i225, 8
  br i1 %exitcond.not.i226, label %if.end88.loopexit, label %for.body.i227.for.body.i227_crit_edge

for.body.i227.for.body.i227_crit_edge:            ; preds = %for.body.i227
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i227

if.else:                                          ; preds = %ieee80211_he_mcs_intersection.exit
  %tobool52.not.not = xor i1 %tobool52.not, true
  %brmerge183 = select i1 %tobool58.not, i1 true, i1 %tobool52.not.not
  br i1 %brmerge183, label %if.else.if.end88_crit_edge, label %if.then76

if.else.if.end88_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

if.then76:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %rx_mcs_16078 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6, i32 2, i32 2
  %106 = ptrtoint ptr %rx_mcs_16078 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 -1, ptr %rx_mcs_16078, align 2
  %tx_mcs_16080 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6, i32 2, i32 3
  %107 = ptrtoint ptr %tx_mcs_16080 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 -1, ptr %tx_mcs_16080, align 2
  %108 = and i8 %86, -9
  %109 = ptrtoint ptr %phy_cap_info22 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %phy_cap_info22, align 1
  br label %if.end88

if.end88.loopexit:                                ; preds = %for.body.i227
  call void @__sanitizer_cov_trace_pc() #7
  %110 = ptrtoint ptr %rx_mcs_16068 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %or102.i219, ptr %rx_mcs_16068, align 2
  %111 = ptrtoint ptr %tx_mcs_16071 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %or75103.i224, ptr %tx_mcs_16071, align 2
  br label %if.end88

if.end88:                                         ; preds = %if.end88.loopexit, %if.then76, %if.else.if.end88_crit_edge
  %112 = and i8 %own_he_cap.sroa.4.0.copyload, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool94.not = icmp eq i8 %112, 0
  %113 = ptrtoint ptr %phy_cap_info22 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %phy_cap_info22, align 1
  %115 = and i8 %114, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool101.not = icmp eq i8 %115, 0
  %brmerge184 = select i1 %tobool101.not, i1 true, i1 %tobool94.not
  br i1 %brmerge184, label %if.else115, label %if.then108

if.then108:                                       ; preds = %if.end88
  %rx_mcs_80p80111 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6, i32 2, i32 4
  %tx_mcs_80p80114 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6, i32 2, i32 5
  %116 = tail call i16 @llvm.bswap.i16(i16 %own_he_cap.sroa.10.0.copyload) #5
  %conv.i230 = zext i16 %116 to i32
  %117 = tail call i16 @llvm.bswap.i16(i16 %own_he_cap.sroa.11.0.copyload) #5
  %conv2.i234 = zext i16 %117 to i32
  %118 = ptrtoint ptr %rx_mcs_80p80111 to i32
  call void @__asan_load2_noabort(i32 %118)
  %rx_mcs_80p80111.promoted = load i16, ptr %rx_mcs_80p80111, align 2
  %119 = ptrtoint ptr %tx_mcs_80p80114 to i32
  call void @__asan_load2_noabort(i32 %119)
  %tx_mcs_80p80114.promoted = load i16, ptr %tx_mcs_80p80114, align 2
  br label %for.body.i263

for.body.i263:                                    ; preds = %for.body.i263.for.body.i263_crit_edge, %if.then108
  %or75103.i260284 = phi i16 [ %tx_mcs_80p80114.promoted, %if.then108 ], [ %or75103.i260, %for.body.i263.for.body.i263_crit_edge ]
  %or102.i255283 = phi i16 [ %rx_mcs_80p80111.promoted, %if.then108 ], [ %or102.i255, %for.body.i263.for.body.i263_crit_edge ]
  %i.0106.i229 = phi i32 [ 0, %if.then108 ], [ %inc.i261, %for.body.i263.for.body.i263_crit_edge ]
  %mul.i231 = shl nuw nsw i32 %i.0106.i229, 1
  %shr.i232 = lshr i32 %conv.i230, %mul.i231
  %120 = trunc i32 %shr.i232 to i16
  %conv1.i233 = and i16 %120, 3
  %shr4.i235 = lshr i32 %conv2.i234, %mul.i231
  %121 = trunc i32 %shr4.i235 to i16
  %conv6.i236 = and i16 %121, 3
  %122 = tail call i16 @llvm.bswap.i16(i16 %or102.i255283) #5
  %conv7.i237 = zext i16 %122 to i32
  %shr9.i238 = lshr i32 %conv7.i237, %mul.i231
  %123 = trunc i32 %shr9.i238 to i16
  %conv11.i239 = and i16 %123, 3
  %124 = tail call i16 @llvm.bswap.i16(i16 %or75103.i260284) #5
  %conv12.i240 = zext i16 %124 to i32
  %shr14.i241 = lshr i32 %conv12.i240, %mul.i231
  %125 = trunc i32 %shr14.i241 to i16
  %conv16.i242 = and i16 %125, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv16.i242)
  %cmp18.not.i243 = icmp eq i16 %conv16.i242, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv1.i233)
  %cmp21.i244 = icmp eq i16 %conv1.i233, 3
  %or.cond.i245 = select i1 %cmp18.not.i243, i1 true, i1 %cmp21.i244
  %126 = tail call i16 @llvm.umin.i16(i16 %conv1.i233, i16 %conv16.i242) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv11.i239)
  %cmp32.not.i246 = icmp eq i16 %conv11.i239, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv6.i236)
  %cmp36.i247 = icmp eq i16 %conv6.i236, 3
  %or.cond105.i248 = select i1 %cmp32.not.i246, i1 true, i1 %cmp36.i247
  %127 = tail call i16 @llvm.umin.i16(i16 %conv6.i236, i16 %conv11.i239) #5
  %shl.i249 = shl nuw nsw i32 3, %mul.i231
  %conv49.i250 = trunc i32 %shl.i249 to i16
  %128 = xor i16 %conv49.i250, -1
  %129 = tail call i16 @llvm.bswap.i16(i16 %128) #5
  %conv53.i251 = and i16 %129, %or102.i255283
  %130 = zext i16 %127 to i32
  %conv54.i252 = select i1 %or.cond105.i248, i32 3, i32 %130
  %shl56.i253 = shl nuw nsw i32 %conv54.i252, %mul.i231
  %conv57.i254 = trunc i32 %shl56.i253 to i16
  %131 = tail call i16 @llvm.bswap.i16(i16 %conv57.i254) #5
  %or102.i255 = or i16 %131, %conv53.i251
  %conv68.i256 = and i16 %129, %or75103.i260284
  %132 = zext i16 %126 to i32
  %conv69.i257 = select i1 %or.cond.i245, i32 3, i32 %132
  %shl71.i258 = shl nuw nsw i32 %conv69.i257, %mul.i231
  %conv72.i259 = trunc i32 %shl71.i258 to i16
  %133 = tail call i16 @llvm.bswap.i16(i16 %conv72.i259) #5
  %or75103.i260 = or i16 %133, %conv68.i256
  %inc.i261 = add nuw nsw i32 %i.0106.i229, 1
  %exitcond.not.i262 = icmp eq i32 %inc.i261, 8
  br i1 %exitcond.not.i262, label %cleanup.loopexit, label %for.body.i263.for.body.i263_crit_edge

for.body.i263.for.body.i263_crit_edge:            ; preds = %for.body.i263
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i263

if.else115:                                       ; preds = %if.end88
  %tobool94.not.not = xor i1 %tobool94.not, true
  %brmerge185 = select i1 %tobool101.not, i1 true, i1 %tobool94.not.not
  br i1 %brmerge185, label %if.else115.cleanup_crit_edge, label %if.then120

if.else115.cleanup_crit_edge:                     ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then120:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #7
  %rx_mcs_80p80122 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6, i32 2, i32 4
  %134 = ptrtoint ptr %rx_mcs_80p80122 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 -1, ptr %rx_mcs_80p80122, align 2
  %tx_mcs_80p80124 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6, i32 2, i32 5
  %135 = ptrtoint ptr %tx_mcs_80p80124 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 -1, ptr %tx_mcs_80p80124, align 2
  %136 = and i8 %114, -17
  %137 = ptrtoint ptr %phy_cap_info22 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %phy_cap_info22, align 1
  br label %cleanup

cleanup.loopexit:                                 ; preds = %for.body.i263
  call void @__sanitizer_cov_trace_pc() #7
  %138 = ptrtoint ptr %rx_mcs_80p80111 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %or102.i255, ptr %rx_mcs_80p80111, align 2
  %139 = ptrtoint ptr %tx_mcs_80p80114 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %or75103.i260, ptr %tx_mcs_80p80114, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.then120, %if.else115.cleanup_crit_edge, %ieee80211_he_ppe_size.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %ieee80211_get_sband_iftype_data.exit.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %do.end.i.i, %for.cond.preheader.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_cap_rx_bw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_cur_vht_bw(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ieee80211_he_op_ie_to_bss_conf(ptr nocapture noundef writeonly %vif, ptr noundef readonly %he_op_ie) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %he_oper = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 56
  %0 = ptrtoint ptr %he_oper to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %he_oper, align 4
  %tobool.not = icmp eq ptr %he_op_ie, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %he_op_ie to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %he_op_ie, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %he_oper to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %he_oper, align 4
  %he_mcs_nss_set = getelementptr inbounds %struct.ieee80211_he_operation, ptr %he_op_ie, i32 0, i32 1
  %5 = ptrtoint ptr %he_mcs_nss_set to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %he_mcs_nss_set, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %nss_set = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 56, i32 1
  %8 = ptrtoint ptr %nss_set to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %nss_set, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ieee80211_he_spr_ie_to_bss_conf(ptr nocapture noundef writeonly %vif, ptr noundef readonly %he_spr_ie_elem) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %he_obss_pd1 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 57
  %0 = call ptr @memset(ptr %he_obss_pd1, i32 0, i32 21)
  %tobool.not = icmp eq ptr %he_spr_ie_elem, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %he_spr_ie_elem to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %he_spr_ie_elem, align 1
  %3 = and i8 %2, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool8.not = icmp eq i8 %3, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = and i8 %2, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  %optional = getelementptr inbounds %struct.ieee80211_he_spr, ptr %he_spr_ie_elem, i32 0, i32 1
  %incdec.ptr = getelementptr %struct.ieee80211_he_spr, ptr %he_spr_ie_elem, i32 2
  %spec.select = select i1 %tobool2.not, ptr %optional, ptr %incdec.ptr
  %incdec.ptr10 = getelementptr i8, ptr %spec.select, i32 1
  %5 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %spec.select, align 1
  %max_offset = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 57, i32 4
  %7 = ptrtoint ptr %max_offset to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %max_offset, align 1
  %8 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr10, align 1
  %min_offset = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 57, i32 3
  %10 = ptrtoint ptr %min_offset to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %min_offset, align 1
  %11 = ptrtoint ptr %he_obss_pd1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %he_obss_pd1, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../include/net/cfg80211.h", i32 510, i32 6}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i8 0, i8 2}
!12 = !{!"branch_weights", i32 1, i32 2000}
