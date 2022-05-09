; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt7601u/tx.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt7601u/tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mt7601u_dev = type { ptr, ptr, i32, %struct.mutex, [4 x i32], %struct.cfg80211_chan_def, ptr, %struct.mt7601u_mcu, %struct.delayed_work, %struct.delayed_work, ptr, %struct.delayed_work, ptr, [128 x ptr], %struct.spinlock, %struct.spinlock, ptr, [6 x i8], ptr, %struct.mutex, ptr, %struct.mutex, %struct.mutex, i32, i32, [8 x i8], [8 x i8], i16, i16, %struct.spinlock, %struct.tasklet_struct, ptr, %struct.sk_buff_head, %struct.atomic_t, %struct.spinlock, %struct.tasklet_struct, %struct.mt7601u_rx_queue, %struct.spinlock, [6 x i8], i8, i8, %struct.ewma_rssi, i8, %struct.mt7601u_freq_cal, i8, i8, i8, i16, i32, i32, i32, i32, i8, i8, i8, i8, [2 x i32], %struct.mac_stats }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mt7601u_mcu = type { %struct.mutex, i8, %struct.mt7601u_dma_buf, %struct.completion }
%struct.mt7601u_dma_buf = type { ptr, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.mt7601u_rx_queue = type { ptr, [16 x %struct.mt7601u_dma_buf_rx], i32, i32, i32, i32 }
%struct.mt7601u_dma_buf_rx = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ewma_rssi = type { i32 }
%struct.mt7601u_freq_cal = type { %struct.delayed_work, i8, i8, i8 }
%struct.mac_stats = type { [6 x i64], [6 x i64], [2 x i64], [32 x i64], [2 x i64] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
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
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.134, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.134 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.135] }
%struct.anon.135 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.mt76_vif = type { i8, %struct.mt76_wcid }
%struct.mt76_wcid = type { i8, i8, i16, i8, i8 }
%struct.mt76_txwi = type { i16, i16, i8, i8, i16, i32, i32, i8, i8, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mt76_tx_status = type { i8, i8, i8, i8, i16 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }

@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/mediatek/mt7601u/tx.c\00", [53 x i8] zeroinitializer }, align 32
@__tracepoint_mt_tx = external dso_local global %struct.tracepoint, align 4
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/mediatek/mt7601u/trace.h\00", [50 x i8] zeroinitializer }, align 32
@trace_mt_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_mt_tx_status_cleaned = external dso_local global %struct.tracepoint, align 4
@trace_mt_tx_status_cleaned.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.5 = private constant [46 x i8] c"../drivers/net/wireless/mediatek/mt7601u/tx.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 276, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [49 x i8] c"../drivers/net/wireless/mediatek/mt7601u/trace.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 277, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 108, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_tx_status(ptr noundef %dev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %status_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %0 = ptrtoint ptr %status_driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status_driver_data.i, align 8
  %call.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 24) #6
  %call1.i = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %skb) #6
  %rem.i = and i32 %call1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %entry.mt7601u_tx_skb_remove_dma_overhead.exit_crit_edge, label %if.then.i

entry.mt7601u_tx_skb_remove_dma_overhead.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7601u_tx_skb_remove_dma_overhead.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mt76_remove_hdr_pad(ptr noundef %skb) #6
  br label %mt7601u_tx_skb_remove_dma_overhead.exit

mt7601u_tx_skb_remove_dma_overhead.exit:          ; preds = %if.then.i, %entry.mt7601u_tx_skb_remove_dma_overhead.exit_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %1 to i32
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %2) #6
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %count.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %bf.load.i = load i16, ptr %count.i, align 1
  %bf.clear.i = and i16 %bf.load.i, 2047
  store i16 %bf.clear.i, ptr %count.i, align 1
  %count.1.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %5 = ptrtoint ptr %count.1.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %bf.load.1.i = load i16, ptr %count.1.i, align 1
  %bf.clear.1.i = and i16 %bf.load.1.i, 2047
  store i16 %bf.clear.1.i, ptr %count.1.i, align 1
  %count.2.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %6 = ptrtoint ptr %count.2.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %bf.load.2.i = load i16, ptr %count.2.i, align 1
  %bf.clear.2.i = and i16 %bf.load.2.i, 2047
  store i16 %bf.clear.2.i, ptr %count.2.i, align 1
  %count.3.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %7 = ptrtoint ptr %count.3.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %bf.load.3.i = load i16, ptr %count.3.i, align 1
  %bf.clear.3.i = and i16 %bf.load.3.i, 2047
  store i16 %bf.clear.3.i, ptr %count.3.i, align 1
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %8 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 28)
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %3, align 8
  %10 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cb.i, align 8
  %or = or i32 %11, 512
  store i32 %or, ptr %cb.i, align 8
  %mac_lock = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock) #6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void @ieee80211_tx_status(ptr noundef %13, ptr noundef %skb) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %control, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %nss.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %vif1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %2 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif1, align 8
  %4 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control, align 4
  %mon_wcid = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %mon_wcid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mon_wcid, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %10 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %queue_mapping.i.i, align 8
  %conv.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %11)
  %cmp.i = icmp ugt i16 %11, 3
  br i1 %cmp.i, label %do.end.i, label %entry.skb2q.exit_crit_edge, !prof !23

entry.skb2q.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb2q.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef null) #6
  %12 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %queue_mapping.i.i, align 8
  br label %skb2q.exit

skb2q.exit:                                       ; preds = %do.end.i, %entry.skb2q.exit_crit_edge
  %qid.0.i = phi i32 [ 2, %do.end.i ], [ %conv.i, %entry.skb2q.exit_crit_edge ]
  %13 = and i32 %qid.0.i, 255
  %conv = xor i32 %13, 3
  %14 = inttoptr i32 %9 to ptr
  %status_driver_data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %15 = ptrtoint ptr %status_driver_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %status_driver_data, align 8
  %call.i = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %skb) #6
  %16 = and i32 %call.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  %spec.select.i = select i1 %tobool.not.i, i32 24, i32 26
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %17 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %skb2q.exit.skb_cloned.exit.i.i_crit_edge, label %land.rhs.i.i.i

skb2q.exit.skb_cloned.exit.i.i_crit_edge:         ; preds = %skb2q.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_cloned.exit.i.i

land.rhs.i.i.i:                                   ; preds = %skb2q.exit
  call void @__sanitizer_cov_trace_pc() #8
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %18 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i.i, i32 noundef 4) #6
  %20 = ptrtoint ptr %dataref.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %dataref.i.i.i, align 4
  %and.i.i.i = and i32 %21, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 1
  br label %skb_cloned.exit.i.i

skb_cloned.exit.i.i:                              ; preds = %land.rhs.i.i.i, %skb2q.exit.skb_cloned.exit.i.i_crit_edge
  %22 = phi i1 [ true, %skb2q.exit.skb_cloned.exit.i.i_crit_edge ], [ %cmp.i.not.i.i, %land.rhs.i.i.i ]
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %23 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %25 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i.i, i32 %spec.select.i)
  %tobool.not.i3.i.i = icmp uge i32 %sub.ptr.sub.i.i.i.i, %spec.select.i
  %or.cond.i.i.i = and i1 %22, %tobool.not.i3.i.i
  br i1 %or.cond.i.i.i, label %skb_cloned.exit.i.i.lor.lhs.false_crit_edge, label %mt7601u_skb_rooms.exit

skb_cloned.exit.i.i.lor.lhs.false_crit_edge:      ; preds = %skb_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

mt7601u_skb_rooms.exit:                           ; preds = %skb_cloned.exit.i.i
  %27 = tail call i32 @llvm.usub.sat.i32(i32 %spec.select.i, i32 %sub.ptr.sub.i.i.i.i) #6
  %add.i.i.i = add nuw nsw i32 %27, 127
  %and.i4.i.i = and i32 %add.i.i.i, 128
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i.i, i32 noundef 0, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool.not = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool.not, label %mt7601u_skb_rooms.exit.lor.lhs.false_crit_edge, label %mt7601u_skb_rooms.exit.if.then_crit_edge

mt7601u_skb_rooms.exit.if.then_crit_edge:         ; preds = %mt7601u_skb_rooms.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

mt7601u_skb_rooms.exit.lor.lhs.false_crit_edge:   ; preds = %mt7601u_skb_rooms.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %mt7601u_skb_rooms.exit.lor.lhs.false_crit_edge, %skb_cloned.exit.i.i.lor.lhs.false_crit_edge
  %call5 = tail call i32 @mt76_insert_hdr_pad(ptr noundef %skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %mt7601u_skb_rooms.exit.if.then_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  tail call void @ieee80211_free_txskb(ptr noundef %29, ptr noundef %skb) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 0, i32 29
  br label %if.end16

if.else:                                          ; preds = %if.end
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %if.else.if.end16_crit_edge, label %if.then12

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %drv_priv13 = getelementptr inbounds %struct.ieee80211_vif, ptr %3, i32 0, i32 19
  %group_wcid = getelementptr inbounds %struct.mt76_vif, ptr %drv_priv13, i32 0, i32 1
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.else.if.end16_crit_edge, %if.then9
  %msta.0 = phi ptr [ %drv_priv, %if.then9 ], [ null, %if.then12 ], [ null, %if.else.if.end16_crit_edge ]
  %wcid.0 = phi ptr [ %drv_priv, %if.then9 ], [ %group_wcid, %if.then12 ], [ %7, %if.else.if.end16_crit_edge ]
  %30 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nss.i) #6
  %31 = ptrtoint ptr %nss.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %nss.i, align 1, !annotation !24
  %call1.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 20) #6
  %32 = call ptr @memset(ptr %call1.i, i32 0, i32 20)
  %tx_rate_set.i = getelementptr inbounds %struct.mt76_wcid, ptr %wcid.0, i32 0, i32 3
  %33 = ptrtoint ptr %tx_rate_set.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tx_rate_set.i, align 2, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i51 = icmp eq i8 %34, 0
  br i1 %tobool.not.i51, label %if.then.i, label %if.end16.do.body3.i_crit_edge

if.end16.do.body3.i_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vif1, align 8
  tail call void @ieee80211_get_tx_rates(ptr noundef %36, ptr noundef %5, ptr noundef %skb, ptr noundef %30, i32 noundef 1) #6
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %if.end16.do.body3.i_crit_edge
  %lock.i = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 14
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp9.i = icmp slt i8 %38, 0
  br i1 %cmp9.i, label %do.body3.i.if.then12.i_crit_edge, label %lor.lhs.false.i

do.body3.i.if.then12.i_crit_edge:                 ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12.i

lor.lhs.false.i:                                  ; preds = %do.body3.i
  %count.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %39 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %bf.load.i = load i16, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load.i)
  %tobool11.not.i = icmp ult i16 %bf.load.i, 2048
  br i1 %tobool11.not.i, label %lor.lhs.false.i.if.then12.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then12.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12.i

if.then12.i:                                      ; preds = %lor.lhs.false.i.if.then12.i_crit_edge, %do.body3.i.if.then12.i_crit_edge
  %tx_rate.i = getelementptr inbounds %struct.mt76_wcid, ptr %wcid.0, i32 0, i32 2
  %40 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %tx_rate.i, align 2
  br label %if.end14.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = call zeroext i16 @mt76_mac_tx_rate_val(ptr noundef %1, ptr noundef %30, ptr noundef nonnull %nss.i) #6
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i, %if.then12.i
  %rate_ctl.0.i = phi i16 [ %41, %if.then12.i ], [ %call13.i, %if.else.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #6
  %42 = call i16 @llvm.bswap.i16(i16 %rate_ctl.0.i) #6
  %rate_ctl16.i = getelementptr inbounds %struct.mt76_txwi, ptr %call1.i, i32 0, i32 1
  %43 = ptrtoint ptr %rate_ctl16.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %rate_ctl16.i, align 2
  %44 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cb.i, align 8
  %and.i = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end14.i.if.end22.i_crit_edge

if.end14.i.if.end22.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.then19.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %ack_ctl.i = getelementptr inbounds %struct.mt76_txwi, ptr %call1.i, i32 0, i32 2
  %46 = ptrtoint ptr %ack_ctl.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ack_ctl.i, align 4
  %48 = or i8 %47, 1
  store i8 %48, ptr %ack_ctl.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then19.i, %if.end14.i.if.end22.i_crit_edge
  %49 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cb.i, align 8
  %and24.i = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end22.i.if.end31.i_crit_edge, label %if.then26.i

if.end22.i.if.end31.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %ack_ctl27.i = getelementptr inbounds %struct.mt76_txwi, ptr %call1.i, i32 0, i32 2
  %51 = ptrtoint ptr %ack_ctl27.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ack_ctl27.i, align 4
  %53 = or i8 %52, 2
  store i8 %53, ptr %ack_ctl27.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then26.i, %if.end22.i.if.end31.i_crit_edge
  %54 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cb.i, align 8
  %and33.i = and i32 %55, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  %or.cond.i = or i1 %tobool8.not, %tobool34.not.i
  br i1 %or.cond.i, label %if.end31.i.if.end120.i_crit_edge, label %do.end71.i

if.end31.i.if.end120.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end120.i

do.end71.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  %and46.i = and i32 %55, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  %ampdu_factor.i = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 0, i32 3, i32 2
  %56 = ptrtoint ptr %ampdu_factor.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ampdu_factor.i, align 1
  %conv37.i = zext i8 %57 to i32
  %shl.i = shl i32 8, %conv37.i
  %conv40.i = and i32 %shl.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv40.i)
  %cmp42.not.i = icmp eq i32 %conv40.i, 0
  %phi.cast.i = trunc i32 %shl.i to i8
  %phi.cast.i.op = shl i8 %phi.cast.i, 2
  %cond.i.op = select i1 %cmp42.not.i, i8 %phi.cast.i.op, i8 -4
  %shl74.i = select i1 %tobool47.not.i, i8 %cond.i.op, i8 0
  %ack_ctl76.i = getelementptr inbounds %struct.mt76_txwi, ptr %call1.i, i32 0, i32 2
  %58 = ptrtoint ptr %ack_ctl76.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ack_ctl76.i, align 4
  %or78.i = or i8 %59, %shl74.i
  store i8 %or78.i, ptr %ack_ctl76.i, align 4
  %ampdu_density.i = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 0, i32 3, i32 3
  %60 = ptrtoint ptr %ampdu_density.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ampdu_density.i, align 4
  %conv108.i = zext i8 %61 to i16
  %shl109.i = shl i16 %conv108.i, 13
  %or111.i = or i16 %shl109.i, 4096
  %62 = ptrtoint ptr %call1.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %or111.i, ptr %call1.i, align 4
  %63 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cb.i, align 8
  %and115.i = and i32 %64, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.i)
  %tobool116.not.i = icmp eq i32 %and115.i, 0
  %spec.store.select203.i = select i1 %tobool116.not.i, i16 %or111.i, i16 0
  %65 = ptrtoint ptr %call1.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %spec.store.select203.i, ptr %call1.i, align 4
  br label %if.end120.i

if.end120.i:                                      ; preds = %do.end71.i, %if.end31.i.if.end120.i_crit_edge
  %66 = ptrtoint ptr %wcid.0 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %wcid.0, align 2
  %wcid122.i = getelementptr inbounds %struct.mt76_txwi, ptr %call1.i, i32 0, i32 3
  %68 = ptrtoint ptr %wcid122.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %wcid122.i, align 1
  %69 = trunc i16 %rate_ctl.0.i to i8
  %conv129.i = and i8 %69, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %conv129.i)
  %cmp.i.i = icmp eq i8 %conv129.i, 7
  %70 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cb.i, align 8
  %and124.i = and i32 %71, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.i)
  %tobool125.i = icmp ne i32 %and124.i, 0
  %or.cond.i.i = and i1 %cmp.i.i, %tobool125.i
  %add.i.i = add nuw nsw i8 %conv129.i, 1
  %72 = lshr exact i32 %and124.i, 9
  %73 = trunc i32 %72 to i8
  %add2.i.i = add nuw nsw i8 %add.i.i, %73
  %sub.i.i = add nuw nsw i8 %add2.i.i, 9
  %retval.0.i.i = select i1 %or.cond.i.i, i8 %sub.i.i, i8 %add2.i.i
  %conv132.i = zext i8 %retval.0.i.i to i32
  %shl155.i = shl nuw nsw i32 %conv132.i, 12
  %or157.i = or i32 %shl155.i, %9
  %conv158.i = trunc i32 %or157.i to i16
  %74 = call i16 @llvm.bswap.i16(i16 %conv158.i) #6
  %len_ctl.i = getelementptr inbounds %struct.mt76_txwi, ptr %call1.i, i32 0, i32 4
  %75 = ptrtoint ptr %len_ctl.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %len_ctl.i, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nss.i) #6
  %call18 = call i32 @mt7601u_dma_enqueue_tx(ptr noundef %1, ptr noundef %skb, ptr noundef %wcid.0, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end120.i.cleanup_crit_edge

if.end120.i.cleanup_crit_edge:                    ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @trace_mt_tx(ptr noundef %1, ptr noundef %skb, ptr noundef %msta.0, ptr noundef %call1.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end120.i.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_insert_hdr_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_dma_enqueue_tx(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mt_tx(ptr noundef %dev, ptr noundef %skb, ptr noundef %sta, ptr noundef %h) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_tx, i32 0, i32 1), ptr blockaddress(@trace_mt_tx, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !26

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !27

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !28
  %call42 = tail call i32 @__traceiter_mt_tx(ptr noundef null, ptr noundef %dev, ptr noundef %skb, ptr noundef %sta, ptr noundef %h) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !29
  %13 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !27

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_tx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_tx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mt_tx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_mt_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 300, ptr noundef nonnull @.str.2) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !31
  %31 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_tx_stat(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %stat = alloca %struct.mt76_tx_status, align 2
  %tmp1 = alloca %struct.mt76_tx_status, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -524
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %stat) #6
  %0 = getelementptr inbounds %struct.mt76_tx_status, ptr %stat, i32 0, i32 2
  %1 = getelementptr inbounds %struct.mt76_tx_status, ptr %stat, i32 0, i32 3
  %2 = getelementptr inbounds %struct.mt76_tx_status, ptr %stat, i32 0, i32 4
  %state = getelementptr i8, ptr %work, i32 -516
  %3 = call ptr @memset(ptr %stat, i32 255, i32 6)
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not41 = icmp eq i32 %6, 0
  br i1 %tobool.not41, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %mt7601u_tx_pktid_dec.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %cleaned.042 = phi i32 [ %inc, %mt7601u_tx_pktid_dec.exit.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tmp1) #6
  call void @mt7601u_mac_fetch_tx_status(ptr nonnull sret(%struct.mt76_tx_status) align 2 %tmp1, ptr noundef %add.ptr) #6
  %7 = call ptr @memcpy(ptr %stat, ptr %tmp1, i32 6)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tmp1) #6
  %8 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %stat, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end:                                           ; preds = %while.body
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %0, align 2
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %2, align 2
  %13 = trunc i16 %12 to i8
  %conv1.i = and i8 %13, 7
  %sub.i = add i8 %10, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %sub.i)
  %cmp.i = icmp ugt i8 %sub.i, 7
  br i1 %cmp.i, label %if.then.i, label %if.end.mt7601u_tx_pktid_dec.exit_crit_edge

if.end.mt7601u_tx_pktid_dec.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7601u_tx_pktid_dec.exit

if.then.i:                                        ; preds = %if.end
  %bf.set.i = or i8 %bf.load, 8
  %14 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %bf.set.i, ptr %stat, align 2
  %sub7.i = add i8 %10, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sub7.i)
  %tobool.not.i = icmp eq i8 %sub7.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.i.mt7601u_tx_pktid_dec.exit_crit_edge

if.then.i.mt7601u_tx_pktid_dec.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt7601u_tx_pktid_dec.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i)
  %tobool10.not.i = icmp eq i8 %conv1.i, 0
  %spec.select.i = select i1 %tobool10.not.i, i8 0, i8 7
  br label %mt7601u_tx_pktid_dec.exit

mt7601u_tx_pktid_dec.exit:                        ; preds = %land.lhs.true.i, %if.then.i.mt7601u_tx_pktid_dec.exit_crit_edge, %if.end.mt7601u_tx_pktid_dec.exit_crit_edge
  %req_rate.0.i = phi i8 [ %sub7.i, %if.then.i.mt7601u_tx_pktid_dec.exit_crit_edge ], [ %sub.i, %if.end.mt7601u_tx_pktid_dec.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %sub15.i = sub i8 %req_rate.0.i, %conv1.i
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %sub15.i, ptr %1, align 1
  call void @mt76_send_tx_status(ptr noundef %add.ptr, ptr noundef nonnull %stat) #6
  %inc = add i32 %cleaned.042, 1
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state, align 4
  %18 = and i32 %17, 2
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %mt7601u_tx_pktid_dec.exit.while.body_crit_edge, label %mt7601u_tx_pktid_dec.exit.while.end_crit_edge

mt7601u_tx_pktid_dec.exit.while.end_crit_edge:    ; preds = %mt7601u_tx_pktid_dec.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

mt7601u_tx_pktid_dec.exit.while.body_crit_edge:   ; preds = %mt7601u_tx_pktid_dec.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %mt7601u_tx_pktid_dec.exit.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %cleaned.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %cleaned.042, %while.body.while.end_crit_edge ], [ %inc, %mt7601u_tx_pktid_dec.exit.while.end_crit_edge ]
  call fastcc void @trace_mt_tx_status_cleaned(ptr noundef %add.ptr, i32 noundef %cleaned.0.lcssa)
  %tx_lock = getelementptr i8, ptr %work, i32 1028
  %call6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cleaned.0.lcssa)
  %tobool9.not = icmp eq i32 %cleaned.0.lcssa, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %stat_wq = getelementptr i8, ptr %work, i32 -4
  %19 = ptrtoint ptr %stat_wq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stat_wq, align 8
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %work, i32 noundef 1) #6
  br label %if.end24

if.else:                                          ; preds = %while.end
  %call14 = call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else21, label %if.then16

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %stat_wq17 = getelementptr i8, ptr %work, i32 -4
  %21 = ptrtoint ptr %stat_wq17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stat_wq17, align 8
  %call.i40 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %work, i32 noundef 2) #6
  br label %if.end24

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @_clear_bit(i32 noundef 5, ptr noundef %state) #6
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then16, %if.then10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %stat) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_mac_fetch_tx_status(ptr sret(%struct.mt76_tx_status) align 2, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_send_tx_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mt_tx_status_cleaned(ptr noundef %dev, i32 noundef %cleaned) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_tx_status_cleaned, i32 0, i32 1), ptr blockaddress(@trace_mt_tx_status_cleaned, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !26

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !27

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !32
  %call42 = tail call i32 @__traceiter_mt_tx_status_cleaned(ptr noundef null, ptr noundef %dev, i32 noundef %cleaned) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !33
  %13 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !27

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_tx_status_cleaned, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_tx_status_cleaned, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mt_tx_status_cleaned.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_mt_tx_status_cleaned.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 328, ptr noundef nonnull @.str.2) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !31
  %31 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_conf_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i16 noundef zeroext %queue, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = trunc i16 %queue to i8
  %2 = xor i8 %conv, 3
  %cw_min1 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 1
  %3 = ptrtoint ptr %cw_min1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cw_min1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  %conv3 = zext i16 %4 to i32
  %5 = tail call i32 @llvm.ctlz.i32(i32 %conv3, i1 false) #6, !range !34
  %6 = trunc i32 %5 to i8
  %conv5 = sub nuw nsw i8 32, %6
  %cw_min.0 = select i1 %tobool.not, i8 5, i8 %conv5
  %cw_max6 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 2
  %7 = ptrtoint ptr %cw_max6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cw_max6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool7.not = icmp eq i16 %8, 0
  %conv10 = zext i16 %8 to i32
  %9 = tail call i32 @llvm.ctlz.i32(i32 %conv10, i1 false) #6, !range !34
  %10 = trunc i32 %9 to i8
  %conv12 = sub nuw nsw i8 32, %10
  %cw_max.0 = select i1 %tobool7.not, i8 10, i8 %conv12
  %11 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %params, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %12)
  %cmp = icmp ugt i16 %12, 255
  br i1 %cmp, label %do.end, label %entry.if.end30_crit_edge, !prof !23

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 276, i32 noundef 9, ptr noundef null) #6
  br label %if.end30

if.end30:                                         ; preds = %do.end, %entry.if.end30_crit_edge
  %aifs = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 3
  %13 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %aifs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %14)
  %cmp39 = icmp ugt i8 %14, 15
  br i1 %cmp39, label %do.end56, label %if.end30.if.end62_crit_edge, !prof !23

if.end30.if.end62_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

do.end56:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 277, i32 noundef 9, ptr noundef null) #6
  br label %if.end62

if.end62:                                         ; preds = %do.end56, %if.end30.if.end62_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %cw_min.0)
  %cmp72 = icmp ugt i8 %cw_min.0, 15
  br i1 %cmp72, label %do.end89, label %if.end62.if.end95_crit_edge, !prof !23

if.end62.if.end95_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

do.end89:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 278, i32 noundef 9, ptr noundef null) #6
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end62.if.end95_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %cw_max.0)
  %cmp105 = icmp ugt i8 %cw_max.0, 15
  br i1 %cmp105, label %do.end122, label %if.end95.if.end128_crit_edge, !prof !23

if.end95.if.end128_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

do.end122:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef null) #6
  br label %if.end128

if.end128:                                        ; preds = %do.end122, %if.end95.if.end128_crit_edge
  %15 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %aifs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool214.not = icmp eq i8 %2, 0
  br i1 %tobool214.not, label %if.end128.if.end247_crit_edge, label %do.end240

if.end128.if.end247_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end247

do.end240:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %params, align 2
  %19 = and i16 %18, 255
  %and245 = zext i16 %19 to i32
  br label %if.end247

if.end247:                                        ; preds = %do.end240, %if.end128.if.end247_crit_edge
  %and245.pn = phi i32 [ %and245, %do.end240 ], [ 96, %if.end128.if.end247_crit_edge ]
  %conv104 = zext i8 %cw_max.0 to i32
  %conv71 = zext i8 %cw_min.0 to i32
  %conv159 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %conv159, 8
  %and160 = and i32 %shl, 3840
  %shl185 = shl nuw nsw i32 %conv71, 12
  %and186 = and i32 %shl185, 61440
  %shl211 = shl nuw nsw i32 %conv104, 16
  %and212 = and i32 %shl211, 983040
  %or = or i32 %and212, %and186
  %or213 = or i32 %or, %and160
  %val.0 = or i32 %or213, %and245.pn
  %conv248 = zext i8 %2 to i32
  %shl249 = shl nuw nsw i32 %conv248, 2
  %add = add nuw nsw i32 %shl249, 4864
  tail call void @mt7601u_wr(ptr noundef %1, i32 noundef %add, i32 noundef %val.0) #6
  %20 = shl nuw nsw i32 %conv248, 1
  %shl251 = and i32 %20, 508
  %add252 = add nuw nsw i32 %shl251, 544
  %call.i = tail call i32 @mt7601u_rr(ptr noundef %1, i32 noundef %add252) #6
  %and255 = shl nuw nsw i32 %conv248, 4
  %mul = and i32 %and255, 16
  %shl256 = shl nuw i32 65535, %mul
  %neg = xor i32 %shl256, -1
  %and257 = and i32 %call.i, %neg
  %21 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %params, align 2
  %conv259 = zext i16 %22 to i32
  %shl263 = shl nuw i32 %conv259, %mul
  %or264 = or i32 %shl263, %and257
  tail call void @mt7601u_wr(ptr noundef %1, i32 noundef %add252, i32 noundef %or264) #6
  %call.i370 = tail call i32 @mt7601u_rr(ptr noundef %1, i32 noundef 532) #6
  %shl272 = shl i32 15, %shl249
  %neg273 = xor i32 %shl272, -1
  %and274 = and i32 %call.i370, %neg273
  %23 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %aifs, align 2
  %conv276 = zext i8 %24 to i32
  %shl279 = shl i32 %conv276, %shl249
  %or280 = or i32 %shl279, %and274
  tail call void @mt7601u_wr(ptr noundef %1, i32 noundef 532, i32 noundef %or280) #6
  %call.i371 = tail call i32 @mt7601u_rr(ptr noundef %1, i32 noundef 536) #6
  %and286 = and i32 %call.i371, %neg273
  %shl290 = shl i32 %conv71, %shl249
  %or291 = or i32 %and286, %shl290
  tail call void @mt7601u_wr(ptr noundef %1, i32 noundef 536, i32 noundef %or291) #6
  %call.i372 = tail call i32 @mt7601u_rr(ptr noundef %1, i32 noundef 540) #6
  %and297 = and i32 %call.i372, %neg273
  %shl301 = shl i32 %conv104, %shl249
  %or302 = or i32 %and297, %shl301
  tail call void @mt7601u_wr(ptr noundef %1, i32 noundef 540, i32 noundef %or302) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_hdrlen_from_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_remove_hdr_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_tx_rates(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mt76_mac_tx_rate_val(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mt_tx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mt_tx_status_cleaned(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_wr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_rr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !12}
!llvm.named.register.sp = !{!13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt7601u/tx.c", i32 276, i32 2}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 277, i32 1}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 316, i32 1}
!12 = distinct !{null, !11, !"__warned", i1 false, i1 false}
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
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{!"auto-init"}
!25 = !{i8 0, i8 2}
!26 = !{i64 2148739143, i64 2148739148, i64 2148739161, i64 2148739205, i64 2148739239, i64 2148739260}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2157958914}
!29 = !{i64 2157959119}
!30 = !{i64 2149343671}
!31 = !{i64 2149344707}
!32 = !{i64 2157991598}
!33 = !{i64 2157991825}
!34 = !{i32 16, i32 33}
