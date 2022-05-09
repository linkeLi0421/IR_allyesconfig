; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt7601u/main.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt7601u/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.mt7601u_dev = type { ptr, ptr, i32, %struct.mutex, [4 x i32], %struct.cfg80211_chan_def, ptr, %struct.mt7601u_mcu, %struct.delayed_work, %struct.delayed_work, ptr, %struct.delayed_work, ptr, [128 x ptr], %struct.spinlock, %struct.spinlock, ptr, [6 x i8], ptr, %struct.mutex, ptr, %struct.mutex, %struct.mutex, i32, i32, [8 x i8], [8 x i8], i16, i16, %struct.spinlock, %struct.tasklet_struct, ptr, %struct.sk_buff_head, %struct.atomic_t, %struct.spinlock, %struct.tasklet_struct, %struct.mt7601u_rx_queue, %struct.spinlock, [6 x i8], i8, i8, %struct.ewma_rssi, i8, %struct.mt7601u_freq_cal, i8, i8, i8, i16, i32, i32, i32, i32, i8, i8, i8, i8, [2 x i32], %struct.mac_stats }
%struct.mt7601u_mcu = type { %struct.mutex, i8, %struct.mt7601u_dma_buf, %struct.completion }
%struct.mt7601u_dma_buf = type { ptr, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.mt7601u_rx_queue = type { ptr, [16 x %struct.mt7601u_dma_buf_rx], i32, i32, i32, i32 }
%struct.mt7601u_dma_buf_rx = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ewma_rssi = type { i32 }
%struct.mt7601u_freq_cal = type { %struct.delayed_work, i8, i8, i8 }
%struct.mac_stats = type { [6 x i64], [6 x i64], [2 x i64], [32 x i64], [2 x i64] }
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
%struct.mt76_vif = type { i8, %struct.mt76_wcid }
%struct.mt76_wcid = type { i8, i8, i16, i8, i8 }
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
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_sta_rates = type { %struct.callback_head, [4 x %struct.anon.129] }
%struct.callback_head = type { ptr, ptr }
%struct.anon.129 = type { i8, i8, i8, i8, i16 }
%struct.ieee80211_ampdu_params = type { i32, ptr, i16, i16, i16, i8, i16 }
%struct.mt76_sta = type { %struct.mt76_wcid, [16 x i16] }

@mt7601u_ops = dso_local constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @mt7601u_tx, ptr @mt7601u_start, ptr @mt7601u_stop, ptr null, ptr null, ptr null, ptr @mt7601u_add_interface, ptr null, ptr @mt7601u_remove_interface, ptr @mt7601u_config, ptr @mt7601u_bss_info_changed, ptr null, ptr null, ptr null, ptr @mt76_configure_filter, ptr null, ptr null, ptr @mt7601u_set_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7601u_sw_scan, ptr @mt7601u_sw_scan_complete, ptr null, ptr null, ptr null, ptr @mt7601u_set_rts_threshold, ptr @mt7601u_sta_add, ptr @mt7601u_sta_remove, ptr null, ptr @mt7601u_sta_notify, ptr null, ptr null, ptr null, ptr null, ptr @mt76_sta_rate_tbl_update, ptr null, ptr @mt7601u_conf_tx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76_ampdu_action, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@mt76_sta_rate_tbl_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/mediatek/mt7601u/main.c\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.5 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6]
@___asan_gen_.6 = private unnamed_addr constant [12 x i8] c"mt7601u_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 407, i32 28 }
@___asan_gen_.13 = private constant [48 x i8] c"../drivers/net/wireless/mediatek/mt7601u/main.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 394, i32 10 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 695, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 723, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @mt7601u_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_tx(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7601u_start(ptr nocapture noundef readonly %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call i32 @mt7601u_mac_start(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %mac_work = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 9
  tail call void @ieee80211_queue_delayed_work(ptr noundef %3, ptr noundef %mac_work, i32 noundef 400) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %cal_work = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 8
  tail call void @ieee80211_queue_delayed_work(ptr noundef %5, ptr noundef %cal_work, i32 noundef 400) #8
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7601u_stop(ptr nocapture noundef readonly %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %cal_work = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 8
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %cal_work) #8
  %mac_work = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 9
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work) #8
  tail call void @mt7601u_mac_stop(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7601u_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %drv_priv, align 2
  %macaddr = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 17
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %3 = ptrtoint ptr %macaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %macaddr, align 4
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %6, %4
  %add.ptr.i = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 17, i32 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %10, %8
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mt7601u_set_macaddr(ptr noundef %1, ptr noundef %addr) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %and = and i32 %12, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %12, 1073741824
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %arrayidx, align 4
  %group_wcid = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %14 = ptrtoint ptr %group_wcid to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 126, ptr %group_wcid, align 2
  %hw_key_idx = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %hw_key_idx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -28, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mt7601u_remove_interface(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %group_wcid = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %2 = ptrtoint ptr %group_wcid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %group_wcid, align 2
  %conv = zext i8 %3 to i32
  %rem = and i32 %conv, 31
  %shl = shl nuw i32 1, %rem
  %neg = xor i32 %shl, -1
  %div2 = lshr i32 %conv, 5
  %arrayidx = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 4, i32 %div2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7601u_config(ptr noundef %hw, i32 noundef %changed) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %and = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_stop_queues(ptr noundef %hw) #8
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %call = tail call i32 @mt7601u_phy_set_channel(ptr noundef %1, ptr noundef %chandef) #8
  tail call void @ieee80211_wake_queues(ptr noundef %hw) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7601u_bss_info_changed(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr noundef %info, i32 noundef %changed) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %and = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mt7601u_phy_con_cal_onoff(ptr noundef %1, ptr noundef %info) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  tail call void @mt7601u_addr_wr(ptr noundef %1, i32 noundef 4112, ptr noundef %3) #8
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %9 to i32
  %or.i = or i32 %7, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then5, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mt7601u_mac_config_tsf(ptr noundef %1, i1 noundef zeroext false, i32 noundef 0) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then3.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %and8 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end11_crit_edge, label %if.then10

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %basic_rates = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 24
  %10 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %basic_rates, align 8
  tail call void @mt7601u_wr(ptr noundef %1, i32 noundef 5128, i32 noundef %11) #8
  tail call void @mt7601u_wr(ptr noundef %1, i32 noundef 4948, i32 noundef 1698898176) #8
  tail call void @mt7601u_wr(ptr noundef %1, i32 noundef 4952, i32 noundef -305419904) #8
  tail call void @mt7601u_wr(ptr noundef %1, i32 noundef 4956, i32 noundef -305419896) #8
  tail call void @mt7601u_wr(ptr noundef %1, i32 noundef 4960, i32 noundef 8448) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %and12 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end15_crit_edge, label %if.then14

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %beacon_int = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 19
  %12 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %beacon_int, align 2
  %conv = zext i16 %13 to i32
  tail call void @mt7601u_mac_config_tsf(ptr noundef %1, i1 noundef zeroext true, i32 noundef %conv) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11.if.end15_crit_edge
  %14 = and i32 %changed, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %if.end15.if.end23_crit_edge, label %if.then20

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %use_cts_prot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 14
  %16 = ptrtoint ptr %use_cts_prot to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %use_cts_prot, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool21 = icmp ne i8 %17, 0
  %ht_operation_mode = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 27
  %18 = ptrtoint ptr %ht_operation_mode to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ht_operation_mode, align 8
  %conv22 = zext i16 %19 to i32
  tail call void @mt7601u_mac_set_protection(ptr noundef %1, i1 noundef zeroext %tobool21, i32 noundef %conv22) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end15.if.end23_crit_edge
  %and24 = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end28_crit_edge, label %if.then26

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %use_short_preamble = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 15
  %20 = ptrtoint ptr %use_short_preamble to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_short_preamble, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool27 = icmp ne i8 %21, 0
  tail call void @mt7601u_mac_set_short_preamble(ptr noundef %1, i1 noundef zeroext %tobool27) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.if.end28_crit_edge
  %and29 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end52_crit_edge, label %if.then31

if.end28.if.end52_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %use_short_slot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 16
  %22 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %use_short_slot, align 2, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool32.not = icmp eq i8 %23, 0
  %cond = select i1 %tobool32.not, i32 20, i32 9
  %call.i = tail call i32 @mt7601u_rmw(ptr noundef %1, i32 noundef 4356, i32 noundef 255, i32 noundef %cond) #8
  br label %if.end52

if.end52:                                         ; preds = %if.then31, %if.end28.if.end52_crit_edge
  br i1 %tobool.not, label %if.end52.if.end56_crit_edge, label %if.then55

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mt7601u_phy_recalibrate_after_assoc(ptr noundef %1) #8
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end52.if.end56_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt76_configure_filter(ptr nocapture noundef readonly %hw, i32 noundef %changed_flags, ptr nocapture noundef %total_flags, i64 noundef %multicast) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %rxfilter = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %rxfilter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxfilter, align 4
  %and = and i32 %3, -9
  store i32 %and, ptr %rxfilter, align 4
  %4 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total_flags, align 4
  %and1 = and i32 %5, 64
  %and3 = and i32 %3, -13
  %and1.lobit = lshr exact i32 %and1, 4
  %6 = or i32 %and1.lobit, %and3
  %or6 = xor i32 %6, 4
  store i32 %or6, ptr %rxfilter, align 4
  %7 = load i32, ptr %total_flags, align 4
  %and8 = and i32 %7, 4
  %or9 = or i32 %and8, %and1
  %and11 = and i32 %or6, -10
  %and8.lobit = lshr exact i32 %and8, 2
  %8 = or i32 %and11, %and8.lobit
  %or18 = xor i32 %8, 1
  store i32 %or18, ptr %rxfilter, align 4
  %9 = load i32, ptr %total_flags, align 4
  %and22 = and i32 %9, 8
  %or23 = or i32 %or9, %and22
  %and25 = and i32 %or18, -11
  %and22.lobit = lshr exact i32 %and22, 2
  %10 = or i32 %and25, %and22.lobit
  %or32 = xor i32 %10, 2
  store i32 %or32, ptr %rxfilter, align 4
  %11 = load i32, ptr %total_flags, align 4
  %and36 = and i32 %11, 32
  %or37 = or i32 %or23, %and36
  %and39 = and i32 %or32, -85769
  %and36.lobit = lshr exact i32 %and36, 5
  %12 = xor i32 %and36.lobit, 1
  %mul44 = mul nuw nsw i32 %12, 85760
  %or46 = or i32 %and39, %mul44
  store i32 %or46, ptr %rxfilter, align 4
  %13 = load i32, ptr %total_flags, align 4
  %and50 = and i32 %13, 128
  %or51 = or i32 %or37, %and50
  %and53 = and i32 %or46, -8201
  %14 = shl nuw nsw i32 %and50, 6
  %15 = or i32 %and53, %14
  %or60 = xor i32 %15, 8192
  store i32 %or60, ptr %rxfilter, align 4
  store i32 %or51, ptr %total_flags, align 4
  %16 = load i32, ptr %rxfilter, align 4
  tail call void @mt7601u_wr(ptr noundef %1, i32 noundef 5120, i32 noundef %16) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7601u_set_key(ptr nocapture noundef readonly %hw, i32 noundef %cmd, ptr nocapture noundef %vif, ptr noundef %sta, ptr noundef %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %tobool.not = icmp eq ptr %sta, null
  %drv_priv1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %spec.select = select i1 %tobool.not, ptr null, ptr %drv_priv1
  %tobool3.not = icmp eq ptr %spec.select, null
  %group_wcid = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv, i32 0, i32 1
  %cond8 = select i1 %tobool3.not, ptr %group_wcid, ptr %spec.select
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %2 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %keyidx, align 1
  %conv = sext i8 %3 to i32
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %4 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cipher, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 1027073, label %entry.sw.epilog_crit_edge
    i32 1027077, label %entry.sw.epilog_crit_edge67
    i32 1027074, label %entry.sw.epilog_crit_edge68
    i32 1027076, label %entry.sw.epilog_crit_edge69
  ]

entry.sw.epilog_crit_edge69:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge68:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge67:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge67, %entry.sw.epilog_crit_edge68, %entry.sw.epilog_crit_edge69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %cond8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cond8, align 2
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %9 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %hw_key_idx, align 2
  %hw_key_idx12 = getelementptr inbounds %struct.mt76_wcid, ptr %cond8, i32 0, i32 1
  %10 = ptrtoint ptr %hw_key_idx12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %3, ptr %hw_key_idx12, align 1
  br label %if.end19

if.else:                                          ; preds = %sw.epilog
  %hw_key_idx13 = getelementptr inbounds %struct.mt76_wcid, ptr %cond8, i32 0, i32 1
  %11 = ptrtoint ptr %hw_key_idx13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hw_key_idx13, align 1
  %conv14 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv14)
  %cmp15 = icmp eq i32 %conv, %conv14
  br i1 %cmp15, label %if.then17, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %hw_key_idx13 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %hw_key_idx13, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.else.if.end19_crit_edge, %if.then
  %key.addr.0 = phi ptr [ %key, %if.then ], [ null, %if.then17 ], [ null, %if.else.if.end19_crit_edge ]
  br i1 %tobool3.not, label %if.then21, label %if.end36

if.then21:                                        ; preds = %if.end19
  %tobool22.not = icmp eq ptr %key.addr.0, null
  br i1 %tobool22.not, label %lor.lhs.false, label %if.then21.if.then27_crit_edge

if.then21.if.then27_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.then21
  %hw_key_idx23 = getelementptr inbounds %struct.mt76_wcid, ptr %cond8, i32 0, i32 1
  %14 = ptrtoint ptr %hw_key_idx23 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hw_key_idx23, align 1
  %conv24 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv24, i32 %conv)
  %cmp25 = icmp eq i32 %conv24, %conv
  br i1 %cmp25, label %lor.lhs.false.if.then27_crit_edge, label %lor.lhs.false.if.end32_crit_edge

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.then21.if.then27_crit_edge
  %16 = ptrtoint ptr %cond8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cond8, align 2
  %call = tail call i32 @mt76_mac_wcid_set_key(ptr noundef %1, i8 noundef zeroext %17, ptr noundef %key.addr.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool29.not = icmp eq i32 %call, 0
  br i1 %tobool29.not, label %if.then27.if.end32_crit_edge, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end32:                                         ; preds = %if.then27.if.end32_crit_edge, %lor.lhs.false.if.end32_crit_edge
  %18 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %drv_priv, align 2
  %call35 = tail call i32 @mt76_mac_shared_key_setup(ptr noundef %1, i8 noundef zeroext %19, i8 noundef zeroext %3, ptr noundef %key.addr.0) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %spec.select, align 2
  %call39 = tail call i32 @mt76_mac_wcid_set_key(ptr noundef %1, i8 noundef zeroext %21, ptr noundef %key.addr.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end32, %if.then27.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %if.end36 ], [ %call35, %if.end32 ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.then27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7601u_sw_scan(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readnone %mac_addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @mt7601u_agc_save(ptr noundef %1) #8
  %state = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 4, ptr noundef %state) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7601u_sw_scan_complete(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @mt7601u_agc_restore(ptr noundef %1) #8
  %state = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %cal_work = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 8
  tail call void @ieee80211_queue_delayed_work(ptr noundef %3, ptr noundef %cal_work, i32 noundef 400) #8
  %enabled = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 43, i32 2
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %freq_cal = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 43
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void @ieee80211_queue_delayed_work(ptr noundef %7, ptr noundef %freq_cal, i32 noundef 3000) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7601u_set_rts_threshold(ptr nocapture noundef readonly %hw, i32 noundef %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %shl = shl i32 %value, 8
  %and13 = and i32 %shl, 16776960
  %call.i = tail call i32 @mt7601u_rmw(ptr noundef %1, i32 noundef 4932, i32 noundef 16776960, i32 noundef %and13) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7601u_sta_add(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif, ptr noundef %sta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %arrayidx.i = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 4, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %iszero.i = icmp eq i32 %3, -1
  br i1 %iszero.i, label %for.inc.i, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i:                                        ; preds = %entry
  %arrayidx.1.i = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %iszero.1.i = icmp eq i32 %5, -1
  br i1 %iszero.1.i, label %for.inc.1.i, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %iszero.2.i = icmp eq i32 %7, -1
  br i1 %iszero.2.i, label %for.inc.2.i, label %for.inc.1.i.for.end.i_crit_edge

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %iszero.3.i = icmp eq i32 %9, -1
  br i1 %iszero.3.i, label %for.inc.2.i.out_crit_edge, label %for.inc.2.i.for.end.i_crit_edge

for.inc.2.i.for.end.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.2.i.out_crit_edge:                        ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.end.i:                                        ; preds = %for.inc.2.i.for.end.i_crit_edge, %for.inc.1.i.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %i.019.lcssa.i = phi i32 [ 0, %entry.for.end.i_crit_edge ], [ 32, %for.inc.i.for.end.i_crit_edge ], [ 64, %for.inc.1.i.for.end.i_crit_edge ], [ 96, %for.inc.2.i.for.end.i_crit_edge ]
  %arrayidx.lcssa.i = phi ptr [ %arrayidx.i, %entry.for.end.i_crit_edge ], [ %arrayidx.1.i, %for.inc.i.for.end.i_crit_edge ], [ %arrayidx.2.i, %for.inc.1.i.for.end.i_crit_edge ], [ %arrayidx.3.i, %for.inc.2.i.for.end.i_crit_edge ]
  %.lcssa.i = phi i32 [ %3, %entry.for.end.i_crit_edge ], [ %5, %for.inc.i.for.end.i_crit_edge ], [ %7, %for.inc.1.i.for.end.i_crit_edge ], [ %9, %for.inc.2.i.for.end.i_crit_edge ]
  %neg.i = xor i32 %.lcssa.i, -1
  %10 = tail call i32 @llvm.cttz.i32(i32 %neg.i, i1 true) #8, !range !24
  %shl.i = shl nuw i32 1, %10
  %or.i = or i32 %shl.i, %.lcssa.i
  %11 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %arrayidx.lcssa.i, align 4
  %12 = or i32 %10, %i.019.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 119, i32 %12)
  %cmp3.i = icmp ugt i32 %12, 119
  br i1 %cmp3.i, label %for.end.i.out_crit_edge, label %if.end

for.end.i.out_crit_edge:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %drv_priv1 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %conv = trunc i32 %12 to i8
  %13 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %drv_priv, align 2
  %hw_key_idx = getelementptr inbounds %struct.mt76_wcid, ptr %drv_priv, i32 0, i32 1
  %14 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %hw_key_idx, align 1
  %15 = ptrtoint ptr %drv_priv1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %drv_priv1, align 2
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  tail call void @mt7601u_mac_wcid_setup(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %16, ptr noundef %addr) #8
  %17 = lshr i32 %12, 3
  %18 = add nuw nsw i32 %17, 4204
  %add = and i32 %18, 4220
  %call.i.i = tail call i32 @mt7601u_rmw(ptr noundef %1, i32 noundef %add, i32 noundef %shl.i, i32 noundef 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  %arrayidx35 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 13, i32 %12
  %19 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %drv_priv, ptr %arrayidx35, align 4
  tail call void @mt7601u_mac_set_ampdu_factor(ptr noundef %1) #8
  br label %out

out:                                              ; preds = %if.end, %for.end.i.out_crit_edge, %for.inc.2.i.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end ], [ -28, %for.inc.2.i.out_crit_edge ], [ -28, %for.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7601u_sta_remove(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readonly %sta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %drv_priv, align 2
  %conv = zext i8 %3 to i32
  %mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %arrayidx = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 13, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr null, ptr %arrayidx, align 4
  %5 = lshr i32 %conv, 3
  %mul = and i32 %5, 28
  %add = add nuw nsw i32 %mul, 4204
  %rem = and i32 %conv, 31
  %shl = shl nuw i32 1, %rem
  %call.i.i = tail call i32 @mt7601u_rmw(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef %shl) #8
  %neg = xor i32 %shl, -1
  %div56 = lshr i32 %conv, 5
  %arrayidx38 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 4, i32 %div56
  %6 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx38, align 4
  %and = and i32 %7, %neg
  store i32 %and, ptr %arrayidx38, align 4
  tail call void @mt7601u_mac_wcid_setup(ptr noundef %1, i8 noundef zeroext %3, i8 noundef zeroext 0, ptr noundef null) #8
  tail call void @mt7601u_mac_set_ampdu_factor(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mt7601u_sta_notify(ptr nocapture noundef %hw, ptr nocapture noundef %vif, i32 noundef %cmd, ptr nocapture noundef %sta) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt76_sta_rate_tbl_update(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr noundef %sta) #1 align 64 {
entry:
  %rate = alloca %struct.ieee80211_tx_rate, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %rate) #8
  %2 = call ptr @memset(ptr %rate, i32 0, i32 3)
  %3 = tail call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %rates1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 16
  %7 = ptrtoint ptr %rates1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %rates1, align 4
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b21 = load i1, ptr @mt76_sta_rate_tbl_update.__warned, align 1
  br i1 %.b21, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mt76_sta_rate_tbl_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 394, ptr noundef nonnull @.str.1) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %do.end8.out_crit_edge, label %if.end12

do.end8.out_crit_edge:                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end12:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %rate13 = getelementptr inbounds %struct.ieee80211_sta_rates, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %rate13 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rate13, align 4
  %11 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %rate, align 1
  %flags = getelementptr inbounds %struct.ieee80211_sta_rates, ptr %8, i32 0, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 4
  %flags17 = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %rate, i32 0, i32 1
  %14 = ptrtoint ptr %flags17 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %bf.load = load i16, ptr %flags17, align 1
  %bf.value = and i16 %13, 2047
  %bf.clear = and i16 %bf.load, -2048
  %bf.set = or i16 %bf.clear, %bf.value
  store i16 %bf.set, ptr %flags17, align 1
  call void @mt76_mac_wcid_set_rate(ptr noundef %1, ptr noundef %drv_priv, ptr noundef nonnull %rate) #8
  br label %out

out:                                              ; preds = %if.end12, %do.end8.out_crit_edge
  %call.i22 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i22, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i25

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i25:                                ; preds = %out
  %call1.i23 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i27

land.lhs.true.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i27:                               ; preds = %land.lhs.true.i25
  %.b4.i26 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i26, label %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, label %if.then.i28

land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i28:                                      ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i28, %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !27
  %15 = call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i.i.i.i.i29 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i29 to ptr
  %preempt_count.i.i.i.i30 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i30, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i30, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rate) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_conf_tx(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76_ampdu_action(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr nocapture noundef readonly %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sta1 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %sta1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sta1, align 4
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %params, align 4
  %tid3 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 2
  %6 = ptrtoint ptr %tid3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tid3, align 4
  %ssn4 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 3
  %8 = ptrtoint ptr %ssn4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ssn4, align 2
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 29
  %10 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %drv_priv, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %11)
  %cmp = icmp ugt i8 %11, 126
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !28

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 357, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %12 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
    i32 6, label %sw.bb41
    i32 3, label %sw.bb51
    i32 2, label %sw.bb44
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %drv_priv, align 2
  %conv26 = zext i8 %14 to i32
  %mul = shl nuw nsw i32 %conv26, 3
  %add27 = or i32 %mul, 6148
  %conv28 = zext i16 %7 to i32
  %shl = shl i32 65536, %conv28
  %call.i.i = tail call i32 @mt7601u_rmw(ptr noundef %1, i32 noundef %add27, i32 noundef 0, i32 noundef %shl) #8
  br label %cleanup

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %drv_priv, align 2
  %conv33 = zext i8 %16 to i32
  %mul34 = shl nuw nsw i32 %conv33, 3
  %add36 = or i32 %mul34, 6148
  %conv37 = zext i16 %7 to i32
  %shl39 = shl i32 65536, %conv37
  %call.i.i76 = tail call i32 @mt7601u_rmw(ptr noundef %1, i32 noundef %add36, i32 noundef %shl39, i32 noundef 0) #8
  br label %cleanup

sw.bb41:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 1
  %idxprom = zext i16 %7 to i32
  %arrayidx = getelementptr %struct.mt76_sta, ptr %drv_priv, i32 0, i32 1, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx, align 2
  tail call void @ieee80211_send_bar(ptr noundef %vif, ptr noundef %addr, i16 noundef zeroext %7, i16 noundef zeroext %18) #8
  br label %cleanup

sw.bb44:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl46 = shl i16 %9, 4
  %idxprom49 = zext i16 %7 to i32
  %arrayidx50 = getelementptr %struct.mt76_sta, ptr %drv_priv, i32 0, i32 1, i32 %idxprom49
  %19 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %shl46, ptr %arrayidx50, align 2
  br label %cleanup

sw.bb51:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %addr52 = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 1
  tail call void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %vif, ptr noundef %addr52, i16 noundef zeroext %7) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb51, %sw.bb44, %sw.bb41, %sw.bb30, %sw.bb, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb44 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.bb51 ], [ 0, %sw.bb41 ], [ 0, %sw.bb30 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_mac_start(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_mac_stop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_set_macaddr(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_phy_set_channel(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_phy_con_cal_onoff(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_addr_wr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_mac_config_tsf(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_wr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_mac_set_protection(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_mac_set_short_preamble(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_phy_recalibrate_after_assoc(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_rmw(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_mac_wcid_set_key(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_mac_shared_key_setup(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_agc_save(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_agc_restore(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_mac_wcid_setup(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_mac_set_ampdu_factor(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_mac_wcid_set_rate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_bar(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !10, !12}
!llvm.named.register.sp = !{!13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @mt7601u_ops, !1, !"mt7601u_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt7601u/main.c", i32 407, i32 28}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt7601u/main.c", i32 394, i32 10}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{!"sp"}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i8 0, i8 2}
!24 = !{i32 0, i32 33}
!25 = !{i64 2157665832}
!26 = !{i64 2149336957}
!27 = !{i64 2149337223}
!28 = !{!"branch_weights", i32 1, i32 2000}
