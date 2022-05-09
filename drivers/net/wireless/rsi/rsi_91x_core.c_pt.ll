; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/rsi/rsi_91x_core.c_pt.bc'
source_filename = "../drivers/net/wireless/rsi/rsi_91x_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.rsi_common = type <{ ptr, [3 x %struct.vif_priv], ptr, i8, %struct.version_info, i8, %struct.rsi_thread, [6 x %struct.sk_buff_head], %struct.completion, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i8, i16, [2 x i8], [2 x i32], [2 x %struct.rsi_rate_config], i8, [3 x i8], %struct.transmit_q_stats, %struct.security_info, [4 x %struct.wmm_qinfo], [4 x %struct.ieee80211_tx_queue_params], [6 x i8], [2 x i8], i32, i8, i8, i8, i8, ptr, i8, i8, [20 x i16], i8, i8, i32, i8, [3 x i8], %struct.cqm_info, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.mutex, i8, i8, i8, i8, i16, i8, i8, i16, [2 x i8], [33 x %struct.rsi_sta], i32, i32, ptr, i8, [3 x i8], %struct.timer_list, ptr, i8, i8, [2 x i8], ptr, ptr, %struct.rsi_bgscan_params, %struct.rsi_9116_features, i8, i8, [2 x i8] }>
%struct.vif_priv = type { i8, i8, i16, i32 }
%struct.version_info = type { i16, i16, i8, i8, %union.anon.132 }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type { [8 x i8] }
%struct.rsi_thread = type { ptr, %struct.completion, ptr, %struct.rsi_event, %struct.atomic_t }
%struct.rsi_event = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rsi_rate_config = type { i32, i16, i8 }
%struct.transmit_q_stats = type { [6 x i32], [6 x i32] }
%struct.security_info = type { i32, i32 }
%struct.wmm_qinfo = type { i32, i32, i32, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.cqm_info = type { i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rsi_sta = type { ptr, i16, [16 x i16], [16 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rsi_bgscan_params = type { i16, i16, i16, i8, i8, i16, i16 }
%struct.rsi_9116_features = type { i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.rsi_hw = type { ptr, i32, ptr, [3 x ptr], [4 x %struct.ieee80211_tx_queue_params], [6 x %struct.ieee80211_supported_band], ptr, i8, i32, i16, i32, %struct.rsi_ps_info, %struct.spinlock, i32, ptr, i8, ptr, %struct.timer_list, i8, i32, %struct.eepromrw_info, i32, i8, [2 x i8], ptr, ptr, ptr, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.rsi_ps_info = type <{ i8, i8, i8, i8, i8, i8, i16, i32, i16, i32, i16, i32 }>
%struct.eepromrw_info = type { i32, i32, i8, i16, [480 x i8] }
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
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.129, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.129 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.130] }
%struct.anon.130 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Queue number = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.rsi_core_qos_processor = private unnamed_addr constant [23 x i8] c"rsi_core_qos_processor\00", align 1
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: No More Pkt\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"skb null\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Null skb/zero Length packet\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.rsi_core_xmit = private unnamed_addr constant [14 x i8] c"rsi_core_xmit\00", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: FSM state not open\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Blocking Tx_packets when WOWLAN is enabled\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to prepare desc\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to prepare data desc\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: sw queue full\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: ===> Scheduling TX thread <===\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Failed to queue packet\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Invalid Queue Number: q_num = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.rsi_core_dequeue_pkt = private unnamed_addr constant [21 x i8] c"rsi_core_dequeue_pkt\00", align 1
@__func__.rsi_core_queue_pkt = private unnamed_addr constant [19 x i8] c"rsi_core_queue_pkt\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 12, i64 0, i64 1024]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 273, i32 4 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 276, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 300, i32 22 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 385, i32 21 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 390, i32 21 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 395, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 431, i32 22 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 473, i32 22 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 481, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 489, i32 24 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 495, i32 20 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [43 x i8] c"../drivers/net/wireless/rsi/rsi_91x_core.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 244, i32 21 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsi_core_qos_processor(ptr noundef %common) local_unnamed_addr #0 align 64 {
entry:
  %rate.i = alloca %struct.ieee80211_rate, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %qlen.i.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 5, i32 1
  %qlen.i121.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 4, i32 1
  %mgmt_q_block.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 3
  %hw_data_qs_blocked.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 43
  %pkt_cnt.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 39
  %selected_qnum.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 37
  %tx_qinfo1.i.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 24
  %qlen.i.i.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 0, i32 1
  %pkt_contended.i.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 0, i32 2
  %min_weight.i124.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 40
  %qlen.i.1.i130.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 1, i32 1
  %arrayidx30.1.i.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 1
  %qlen.i.2.i135.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 2, i32 1
  %arrayidx30.2.i.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 2
  %qlen.i.3.i140.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 3, i32 1
  %arrayidx30.3.i.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 3
  %pkt_contended.1.i.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 1, i32 2
  %pkt_contended.2.i.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 2, i32 2
  %pkt_contended.3.i.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 3, i32 2
  %wme_params.i.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 0, i32 1
  %wme_params.1.i.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 1, i32 1
  %wme_params.2.i.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 2, i32 1
  %wme_params.3.i.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 3, i32 1
  %bitrate.i = getelementptr inbounds %struct.ieee80211_rate, ptr %rate.i, i32 0, i32 1
  %band.i = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 13
  %hibernate_resume = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 58
  %tx_lock = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 10
  %check_hw_queue_status = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 26
  %hw = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 2
  %coex_mode = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 45
  %tx_stats = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 22
  %add = add i32 %2, 30
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.cond.rsi_core_determine_hal_queue.exit.thread152_crit_edge

while.cond.rsi_core_determine_hal_queue.exit.thread152_crit_edge: ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_core_determine_hal_queue.exit.thread152

if.end.i:                                         ; preds = %while.cond
  %5 = ptrtoint ptr %qlen.i121.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i121.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not.i = icmp eq i32 %6, 0
  br i1 %tobool4.not.i, label %if.end9.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  %7 = ptrtoint ptr %mgmt_q_block.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mgmt_q_block.i, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not.i = icmp eq i8 %8, 0
  br i1 %tobool6.not.i, label %if.then5.i.rsi_core_determine_hal_queue.exit.thread152_crit_edge, label %if.then5.i.rsi_core_determine_hal_queue.exit.thread_crit_edge

if.then5.i.rsi_core_determine_hal_queue.exit.thread_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_core_determine_hal_queue.exit.thread

if.then5.i.rsi_core_determine_hal_queue.exit.thread152_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_core_determine_hal_queue.exit.thread152

if.end9.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %hw_data_qs_blocked.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hw_data_qs_blocked.i, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not.i = icmp eq i8 %10, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end9.i.rsi_core_determine_hal_queue.exit.thread_crit_edge

if.end9.i.rsi_core_determine_hal_queue.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_core_determine_hal_queue.exit.thread

if.end12.i:                                       ; preds = %if.end9.i
  %11 = ptrtoint ptr %pkt_cnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pkt_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i, label %get_queue_num.preheader.i, label %if.then13.i

get_queue_num.preheader.i:                        ; preds = %if.end12.i
  %13 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not.i.i = icmp eq i32 %14, 0
  %15 = ptrtoint ptr %qlen.i.1.i130.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen.i.1.i130.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.1.i131.i = icmp eq i32 %16, 0
  %17 = ptrtoint ptr %qlen.i.2.i135.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i.2.i135.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.2.i136.i = icmp eq i32 %18, 0
  %19 = ptrtoint ptr %qlen.i.3.i140.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qlen.i.3.i140.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.3.i141.i = icmp eq i32 %20, 0
  br label %get_queue_num.i

if.then13.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i = add i32 %12, -1
  %21 = ptrtoint ptr %pkt_cnt.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %dec.i, ptr %pkt_cnt.i, align 4
  %22 = ptrtoint ptr %selected_qnum.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %selected_qnum.i, align 2
  br label %rsi_core_determine_hal_queue.exit

get_queue_num.i:                                  ; preds = %if.then56.i.get_queue_num.i_crit_edge, %get_queue_num.preheader.i
  %24 = ptrtoint ptr %pkt_contended.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pkt_contended.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool5.not.i.i
  br i1 %or.cond.i.i, label %for.inc.i.i, label %get_queue_num.i.for.body.preheader.i_crit_edge

get_queue_num.i.for.body.preheader.i_crit_edge:   ; preds = %get_queue_num.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader.i

for.inc.i.i:                                      ; preds = %get_queue_num.i
  %26 = ptrtoint ptr %pkt_contended.1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pkt_contended.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.1.i.i = icmp eq i32 %27, 0
  %or.cond.1.i.i = select i1 %tobool.not.1.i.i, i1 true, i1 %tobool.not.1.i131.i
  br i1 %or.cond.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.for.body.preheader.i_crit_edge

for.inc.i.i.for.body.preheader.i_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %28 = ptrtoint ptr %pkt_contended.2.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pkt_contended.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.2.i.i = icmp eq i32 %29, 0
  %or.cond.2.i.i = select i1 %tobool.not.2.i.i, i1 true, i1 %tobool.not.2.i136.i
  br i1 %or.cond.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.for.body.preheader.i_crit_edge

for.inc.1.i.i.for.body.preheader.i_crit_edge:     ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %30 = ptrtoint ptr %pkt_contended.3.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pkt_contended.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.3.i.i = icmp eq i32 %31, 0
  %or.cond.3.i.i = select i1 %tobool.not.3.i.i, i1 true, i1 %tobool.not.3.i141.i
  br i1 %or.cond.3.i.i, label %for.inc.2.i.i.if.end49.i_crit_edge, label %for.inc.2.i.i.for.body.preheader.i_crit_edge

for.inc.2.i.i.for.body.preheader.i_crit_edge:     ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader.i

for.inc.2.i.i.if.end49.i_crit_edge:               ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

for.body.preheader.i:                             ; preds = %for.inc.2.i.i.for.body.preheader.i_crit_edge, %for.inc.1.i.i.for.body.preheader.i_crit_edge, %for.inc.i.i.for.body.preheader.i_crit_edge, %get_queue_num.i.for.body.preheader.i_crit_edge
  %ii.019.lcssa.wide.i.i = phi i32 [ 0, %get_queue_num.i.for.body.preheader.i_crit_edge ], [ 1, %for.inc.i.i.for.body.preheader.i_crit_edge ], [ 2, %for.inc.1.i.i.for.body.preheader.i_crit_edge ], [ 3, %for.inc.2.i.i.for.body.preheader.i_crit_edge ]
  %arrayidx4.i.i = getelementptr %struct.wmm_qinfo, ptr %tx_qinfo1.i.i, i32 %ii.019.lcssa.wide.i.i
  %32 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx4.i.i, align 4
  %conv8.i.i = trunc i32 %33 to i8
  %34 = ptrtoint ptr %min_weight.i124.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv8.i.i, ptr %min_weight.i124.i, align 4
  %pkt_contended.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 %ii.019.lcssa.wide.i.i, i32 2
  %35 = ptrtoint ptr %pkt_contended.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pkt_contended.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool24.not.i = icmp eq i32 %36, 0
  br i1 %tobool24.not.i, label %for.body.preheader.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.preheader.i.for.inc.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.preheader.i
  %qlen.i122.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 %ii.019.lcssa.wide.i.i, i32 1
  %37 = ptrtoint ptr %qlen.i122.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qlen.i122.i, align 4
  %arrayidx23.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 %ii.019.lcssa.wide.i.i
  %39 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx23.i, align 4
  %41 = ptrtoint ptr %min_weight.i124.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %min_weight.i124.i, align 4
  %conv28.i = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv28.i)
  %cmp29.i = icmp sge i32 %40, %conv28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool32.not.i = icmp eq i32 %38, 0
  %or.cond.i = select i1 %cmp29.i, i1 true, i1 %tobool32.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then33.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then33.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv38.i = trunc i32 %40 to i8
  %43 = ptrtoint ptr %min_weight.i124.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv38.i, ptr %min_weight.i124.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then33.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.preheader.i.for.inc.i_crit_edge
  %q_num.2.i = trunc i32 %ii.019.lcssa.wide.i.i to i8
  %indvars.iv.next.i = add nuw nsw i32 %ii.019.lcssa.wide.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %indvars.iv.next.i)
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.body.i.1

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.inc.i
  %pkt_contended.i.1 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 %indvars.iv.next.i, i32 2
  %44 = ptrtoint ptr %pkt_contended.i.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pkt_contended.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool24.not.i.1 = icmp eq i32 %45, 0
  br i1 %tobool24.not.i.1, label %for.body.i.1.for.inc.i.1_crit_edge, label %land.lhs.true.i.1

for.body.i.1.for.inc.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.1

land.lhs.true.i.1:                                ; preds = %for.body.i.1
  %qlen.i122.i.1 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 %indvars.iv.next.i, i32 1
  %46 = ptrtoint ptr %qlen.i122.i.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qlen.i122.i.1, align 4
  %arrayidx23.i.1 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 %indvars.iv.next.i
  %48 = ptrtoint ptr %arrayidx23.i.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx23.i.1, align 4
  %50 = ptrtoint ptr %min_weight.i124.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %min_weight.i124.i, align 4
  %conv28.i.1 = zext i8 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %conv28.i.1)
  %cmp29.i.1 = icmp sge i32 %49, %conv28.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool32.not.i.1 = icmp eq i32 %47, 0
  %or.cond.i.1 = select i1 %cmp29.i.1, i1 true, i1 %tobool32.not.i.1
  br i1 %or.cond.i.1, label %land.lhs.true.i.1.for.inc.i.1_crit_edge, label %if.then33.i.1

land.lhs.true.i.1.for.inc.i.1_crit_edge:          ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.1

if.then33.i.1:                                    ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %conv38.i.1 = trunc i32 %49 to i8
  %52 = ptrtoint ptr %min_weight.i124.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv38.i.1, ptr %min_weight.i124.i, align 4
  %53 = trunc i32 %indvars.iv.next.i to i8
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then33.i.1, %land.lhs.true.i.1.for.inc.i.1_crit_edge, %for.body.i.1.for.inc.i.1_crit_edge
  %q_num.2.i.1 = phi i8 [ %53, %if.then33.i.1 ], [ %q_num.2.i, %land.lhs.true.i.1.for.inc.i.1_crit_edge ], [ %q_num.2.i, %for.body.i.1.for.inc.i.1_crit_edge ]
  %indvars.iv.next.i.1 = add nuw nsw i32 %ii.019.lcssa.wide.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %indvars.iv.next.i.1)
  %exitcond.not.i.1 = icmp eq i32 %indvars.iv.next.i.1, 4
  br i1 %exitcond.not.i.1, label %for.inc.i.1.for.end.i_crit_edge, label %for.body.i.2

for.inc.i.1.for.end.i_crit_edge:                  ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.2:                                     ; preds = %for.inc.i.1
  %pkt_contended.i.2 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 %indvars.iv.next.i.1, i32 2
  %54 = ptrtoint ptr %pkt_contended.i.2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pkt_contended.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool24.not.i.2 = icmp eq i32 %55, 0
  br i1 %tobool24.not.i.2, label %for.body.i.2.for.inc.i.2_crit_edge, label %land.lhs.true.i.2

for.body.i.2.for.inc.i.2_crit_edge:               ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.2

land.lhs.true.i.2:                                ; preds = %for.body.i.2
  %qlen.i122.i.2 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 %indvars.iv.next.i.1, i32 1
  %56 = ptrtoint ptr %qlen.i122.i.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %qlen.i122.i.2, align 4
  %arrayidx23.i.2 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 %indvars.iv.next.i.1
  %58 = ptrtoint ptr %arrayidx23.i.2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx23.i.2, align 4
  %60 = ptrtoint ptr %min_weight.i124.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %min_weight.i124.i, align 4
  %conv28.i.2 = zext i8 %61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %conv28.i.2)
  %cmp29.i.2 = icmp sge i32 %59, %conv28.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool32.not.i.2 = icmp eq i32 %57, 0
  %or.cond.i.2 = select i1 %cmp29.i.2, i1 true, i1 %tobool32.not.i.2
  br i1 %or.cond.i.2, label %land.lhs.true.i.2.for.inc.i.2_crit_edge, label %if.then33.i.2

land.lhs.true.i.2.for.inc.i.2_crit_edge:          ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.2

if.then33.i.2:                                    ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %conv38.i.2 = trunc i32 %59 to i8
  %62 = ptrtoint ptr %min_weight.i124.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv38.i.2, ptr %min_weight.i124.i, align 4
  %63 = trunc i32 %indvars.iv.next.i.1 to i8
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.then33.i.2, %land.lhs.true.i.2.for.inc.i.2_crit_edge, %for.body.i.2.for.inc.i.2_crit_edge
  %q_num.2.i.2 = phi i8 [ %63, %if.then33.i.2 ], [ %q_num.2.i.1, %land.lhs.true.i.2.for.inc.i.2_crit_edge ], [ %q_num.2.i.1, %for.body.i.2.for.inc.i.2_crit_edge ]
  %indvars.iv.next.i.2 = add nuw nsw i32 %ii.019.lcssa.wide.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %indvars.iv.next.i.2)
  %exitcond.not.i.2 = icmp eq i32 %indvars.iv.next.i.2, 4
  br i1 %exitcond.not.i.2, label %for.inc.i.2.for.end.i_crit_edge, label %for.body.i.3

for.inc.i.2.for.end.i_crit_edge:                  ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.3:                                     ; preds = %for.inc.i.2
  %pkt_contended.i.3 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 %indvars.iv.next.i.2, i32 2
  %64 = ptrtoint ptr %pkt_contended.i.3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pkt_contended.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool24.not.i.3 = icmp eq i32 %65, 0
  br i1 %tobool24.not.i.3, label %for.body.i.3.for.end.i_crit_edge, label %land.lhs.true.i.3

for.body.i.3.for.end.i_crit_edge:                 ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

land.lhs.true.i.3:                                ; preds = %for.body.i.3
  %qlen.i122.i.3 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 %indvars.iv.next.i.2, i32 1
  %66 = ptrtoint ptr %qlen.i122.i.3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %qlen.i122.i.3, align 4
  %arrayidx23.i.3 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 %indvars.iv.next.i.2
  %68 = ptrtoint ptr %arrayidx23.i.3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx23.i.3, align 4
  %70 = ptrtoint ptr %min_weight.i124.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %min_weight.i124.i, align 4
  %conv28.i.3 = zext i8 %71 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %conv28.i.3)
  %cmp29.i.3 = icmp sge i32 %69, %conv28.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool32.not.i.3 = icmp eq i32 %67, 0
  %or.cond.i.3 = select i1 %cmp29.i.3, i1 true, i1 %tobool32.not.i.3
  br i1 %or.cond.i.3, label %land.lhs.true.i.3.for.end.i_crit_edge, label %if.then33.i.3

land.lhs.true.i.3.for.end.i_crit_edge:            ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.then33.i.3:                                    ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #9
  %conv38.i.3 = trunc i32 %69 to i8
  %72 = ptrtoint ptr %min_weight.i124.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv38.i.3, ptr %min_weight.i124.i, align 4
  %73 = trunc i32 %indvars.iv.next.i.2 to i8
  br label %for.end.i

for.end.i:                                        ; preds = %if.then33.i.3, %land.lhs.true.i.3.for.end.i_crit_edge, %for.body.i.3.for.end.i_crit_edge, %for.inc.i.2.for.end.i_crit_edge, %for.inc.i.1.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge
  %q_num.2.i.lcssa = phi i8 [ %q_num.2.i, %for.inc.i.for.end.i_crit_edge ], [ %q_num.2.i.1, %for.inc.i.1.for.end.i_crit_edge ], [ %q_num.2.i.2, %for.inc.i.2.for.end.i_crit_edge ], [ %73, %if.then33.i.3 ], [ %q_num.2.i.2, %land.lhs.true.i.3.for.end.i_crit_edge ], [ %q_num.2.i.2, %for.body.i.3.for.end.i_crit_edge ]
  %conv41.i = zext i8 %q_num.2.i.lcssa to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %q_num.2.i.lcssa)
  %cmp42.i = icmp ult i8 %q_num.2.i.lcssa, 4
  br i1 %cmp42.i, label %if.then44.i, label %for.end.i.if.end49.i_crit_edge

for.end.i.if.end49.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

if.then44.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %pkt_contended48.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 %conv41.i, i32 2
  %74 = ptrtoint ptr %pkt_contended48.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %pkt_contended48.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then44.i, %for.end.i.if.end49.i_crit_edge, %for.inc.2.i.i.if.end49.i_crit_edge
  %conv41159.i = phi i32 [ %conv41.i, %if.then44.i ], [ %conv41.i, %for.end.i.if.end49.i_crit_edge ], [ 4, %for.inc.2.i.i.if.end49.i_crit_edge ]
  %q_num.1.lcssa158.i = phi i8 [ %q_num.2.i.lcssa, %if.then44.i ], [ %q_num.2.i.lcssa, %for.end.i.if.end49.i_crit_edge ], [ 4, %for.inc.2.i.i.if.end49.i_crit_edge ]
  br i1 %tobool5.not.i.i, label %if.else28.i.i, label %if.then.i129.i

if.then.i129.i:                                   ; preds = %if.end49.i
  %75 = ptrtoint ptr %pkt_contended.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pkt_contended.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool5.not.i128.i = icmp eq i32 %76, 0
  br i1 %tobool5.not.i128.i, label %if.else.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.then.i129.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %tx_qinfo1.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tx_qinfo1.i.i, align 4
  %79 = ptrtoint ptr %min_weight.i124.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %min_weight.i124.i, align 4
  %conv9.i.i = zext i8 %80 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %conv9.i.i)
  %cmp10.i.i = icmp sgt i32 %78, %conv9.i.i
  %sub.i.i = sub i32 %78, %conv9.i.i
  %spec.select.i.i = select i1 %cmp10.i.i, i32 %sub.i.i, i32 0
  %81 = ptrtoint ptr %tx_qinfo1.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %spec.select.i.i, ptr %tx_qinfo1.i.i, align 4
  br label %for.inc.i132.i

if.else.i.i:                                      ; preds = %if.then.i129.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %pkt_contended.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %pkt_contended.i.i, align 4
  %83 = ptrtoint ptr %wme_params.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %wme_params.i.i, align 4
  %85 = ptrtoint ptr %tx_qinfo1.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %tx_qinfo1.i.i, align 4
  br label %for.inc.i132.i

if.else28.i.i:                                    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %tx_qinfo1.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %tx_qinfo1.i.i, align 4
  %87 = ptrtoint ptr %pkt_contended.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %pkt_contended.i.i, align 4
  br label %for.inc.i132.i

for.inc.i132.i:                                   ; preds = %if.else28.i.i, %if.else.i.i, %if.then6.i.i
  %recontend_queue.1.off0.i.i = phi i1 [ false, %if.then6.i.i ], [ true, %if.else.i.i ], [ false, %if.else28.i.i ]
  br i1 %tobool.not.1.i131.i, label %if.else28.1.i.i, label %if.then.1.i.i

if.then.1.i.i:                                    ; preds = %for.inc.i132.i
  %88 = ptrtoint ptr %pkt_contended.1.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pkt_contended.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool5.not.1.i134.i = icmp eq i32 %89, 0
  br i1 %tobool5.not.1.i134.i, label %if.else.1.i.i, label %if.then6.1.i.i

if.then6.1.i.i:                                   ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %arrayidx30.1.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx30.1.i.i, align 4
  %92 = ptrtoint ptr %min_weight.i124.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %min_weight.i124.i, align 4
  %conv9.1.i.i = zext i8 %93 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %conv9.1.i.i)
  %cmp10.1.i.i = icmp sgt i32 %91, %conv9.1.i.i
  %sub.1.i.i = sub i32 %91, %conv9.1.i.i
  %spec.select.1.i.i = select i1 %cmp10.1.i.i, i32 %sub.1.i.i, i32 0
  %94 = ptrtoint ptr %arrayidx30.1.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %spec.select.1.i.i, ptr %arrayidx30.1.i.i, align 4
  br label %for.inc.1.i137.i

if.else.1.i.i:                                    ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %pkt_contended.1.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %pkt_contended.1.i.i, align 4
  %96 = ptrtoint ptr %wme_params.1.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %wme_params.1.i.i, align 4
  %98 = ptrtoint ptr %arrayidx30.1.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %arrayidx30.1.i.i, align 4
  br label %for.inc.1.i137.i

if.else28.1.i.i:                                  ; preds = %for.inc.i132.i
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %arrayidx30.1.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %arrayidx30.1.i.i, align 4
  %100 = ptrtoint ptr %pkt_contended.1.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %pkt_contended.1.i.i, align 4
  br label %for.inc.1.i137.i

for.inc.1.i137.i:                                 ; preds = %if.else28.1.i.i, %if.else.1.i.i, %if.then6.1.i.i
  %recontend_queue.1.off0.1.i.i = phi i1 [ %recontend_queue.1.off0.i.i, %if.then6.1.i.i ], [ true, %if.else.1.i.i ], [ %recontend_queue.1.off0.i.i, %if.else28.1.i.i ]
  br i1 %tobool.not.2.i136.i, label %if.else28.2.i.i, label %if.then.2.i.i

if.then.2.i.i:                                    ; preds = %for.inc.1.i137.i
  %101 = ptrtoint ptr %pkt_contended.2.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pkt_contended.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool5.not.2.i139.i = icmp eq i32 %102, 0
  br i1 %tobool5.not.2.i139.i, label %if.else.2.i.i, label %if.then6.2.i.i

if.then6.2.i.i:                                   ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %arrayidx30.2.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx30.2.i.i, align 4
  %105 = ptrtoint ptr %min_weight.i124.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %min_weight.i124.i, align 4
  %conv9.2.i.i = zext i8 %106 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %conv9.2.i.i)
  %cmp10.2.i.i = icmp sgt i32 %104, %conv9.2.i.i
  %sub.2.i.i = sub i32 %104, %conv9.2.i.i
  %spec.select.2.i.i = select i1 %cmp10.2.i.i, i32 %sub.2.i.i, i32 0
  %107 = ptrtoint ptr %arrayidx30.2.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %spec.select.2.i.i, ptr %arrayidx30.2.i.i, align 4
  br label %for.inc.2.i142.i

if.else.2.i.i:                                    ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %pkt_contended.2.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %pkt_contended.2.i.i, align 4
  %109 = ptrtoint ptr %wme_params.2.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %wme_params.2.i.i, align 4
  %111 = ptrtoint ptr %arrayidx30.2.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %arrayidx30.2.i.i, align 4
  br label %for.inc.2.i142.i

if.else28.2.i.i:                                  ; preds = %for.inc.1.i137.i
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %arrayidx30.2.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %arrayidx30.2.i.i, align 4
  %113 = ptrtoint ptr %pkt_contended.2.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %pkt_contended.2.i.i, align 4
  br label %for.inc.2.i142.i

for.inc.2.i142.i:                                 ; preds = %if.else28.2.i.i, %if.else.2.i.i, %if.then6.2.i.i
  %recontend_queue.1.off0.2.i.i = phi i1 [ %recontend_queue.1.off0.1.i.i, %if.then6.2.i.i ], [ true, %if.else.2.i.i ], [ %recontend_queue.1.off0.1.i.i, %if.else28.2.i.i ]
  br i1 %tobool.not.3.i141.i, label %if.else28.3.i.i, label %if.then.3.i.i

if.then.3.i.i:                                    ; preds = %for.inc.2.i142.i
  %114 = ptrtoint ptr %pkt_contended.3.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pkt_contended.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool5.not.3.i144.i = icmp eq i32 %115, 0
  br i1 %tobool5.not.3.i144.i, label %if.else.3.i.i, label %if.then6.3.i.i

if.then6.3.i.i:                                   ; preds = %if.then.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %arrayidx30.3.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx30.3.i.i, align 4
  %118 = ptrtoint ptr %min_weight.i124.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %min_weight.i124.i, align 4
  %conv9.3.i.i = zext i8 %119 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %conv9.3.i.i)
  %cmp10.3.i.i = icmp sgt i32 %117, %conv9.3.i.i
  %sub.3.i.i = sub i32 %117, %conv9.3.i.i
  %spec.select.3.i.i = select i1 %cmp10.3.i.i, i32 %sub.3.i.i, i32 0
  %120 = ptrtoint ptr %arrayidx30.3.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %spec.select.3.i.i, ptr %arrayidx30.3.i.i, align 4
  br label %rsi_recalculate_weights.exit.i

if.else.3.i.i:                                    ; preds = %if.then.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %pkt_contended.3.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1, ptr %pkt_contended.3.i.i, align 4
  %122 = ptrtoint ptr %wme_params.3.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %wme_params.3.i.i, align 4
  %124 = ptrtoint ptr %arrayidx30.3.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %arrayidx30.3.i.i, align 4
  br label %rsi_recalculate_weights.exit.i

if.else28.3.i.i:                                  ; preds = %for.inc.2.i142.i
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %arrayidx30.3.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %arrayidx30.3.i.i, align 4
  %126 = ptrtoint ptr %pkt_contended.3.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %pkt_contended.3.i.i, align 4
  br label %rsi_recalculate_weights.exit.i

rsi_recalculate_weights.exit.i:                   ; preds = %if.else28.3.i.i, %if.else.3.i.i, %if.then6.3.i.i
  %recontend_queue.1.off0.3.i.i = phi i1 [ %recontend_queue.1.off0.2.i.i, %if.then6.3.i.i ], [ true, %if.else.3.i.i ], [ %recontend_queue.1.off0.2.i.i, %if.else28.3.i.i ]
  %qlen.i145.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 %conv41159.i, i32 1
  %127 = ptrtoint ptr %qlen.i145.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %qlen.i145.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool55.not.i = icmp eq i32 %128, 0
  br i1 %tobool55.not.i, label %if.then56.i, label %if.end60.i

if.then56.i:                                      ; preds = %rsi_recalculate_weights.exit.i
  br i1 %recontend_queue.1.off0.3.i.i, label %if.then56.i.get_queue_num.i_crit_edge, label %if.then56.i.rsi_core_determine_hal_queue.exit.thread_crit_edge

if.then56.i.rsi_core_determine_hal_queue.exit.thread_crit_edge: ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_core_determine_hal_queue.exit.thread

if.then56.i.get_queue_num.i_crit_edge:            ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_queue_num.i

if.end60.i:                                       ; preds = %rsi_recalculate_weights.exit.i
  %129 = ptrtoint ptr %selected_qnum.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %q_num.1.lcssa158.i, ptr %selected_qnum.i, align 2
  %130 = and i8 %q_num.1.lcssa158.i, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %130)
  %switch.i = icmp eq i8 %130, 2
  br i1 %switch.i, label %if.then72.i, label %if.end60.i.rsi_core_determine_hal_queue.exit_crit_edge

if.end60.i.rsi_core_determine_hal_queue.exit_crit_edge: ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_core_determine_hal_queue.exit

if.then72.i:                                      ; preds = %if.end60.i
  %131 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %common, align 4
  %idxprom.i = zext i8 %q_num.1.lcssa158.i to i32
  %txop1.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 24, i32 %idxprom.i, i32 3
  %133 = ptrtoint ptr %txop1.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %txop1.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rate.i) #7
  %135 = call ptr @memset(ptr %rate.i, i32 255, i32 12)
  %136 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 12800, ptr %bitrate.i, align 4
  %qlen.i.i134 = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 %idxprom.i, i32 1
  %137 = ptrtoint ptr %qlen.i.i134 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %qlen.i.i134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.not.i135 = icmp eq i32 %138, 0
  br i1 %tobool.not.i135, label %if.then72.i.rsi_get_num_pkts_dequeue.exit_crit_edge, label %if.then8.i

if.then72.i.rsi_get_num_pkts_dequeue.exit_crit_edge: ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_get_num_pkts_dequeue.exit

if.then8.i:                                       ; preds = %if.then72.i
  %arrayidx7.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 %idxprom.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %q_num.1.lcssa158.i)
  %cmp.i136 = icmp eq i8 %q_num.1.lcssa158.i, 2
  %.tr.i = trunc i32 %134 to i16
  %conv.i137 = shl i16 %.tr.i, 5
  %conv4.i = sext i16 %conv.i137 to i32
  %shl.i = shl nsw i32 %conv4.i, 5
  %div.i = sdiv i32 %shl.i, 80
  %conv5.i = trunc i32 %div.i to i16
  %txop.0.i = select i1 %cmp.i136, i16 %conv5.i, i16 %conv.i137
  %139 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx7.i, align 4
  %cmp.i.i = icmp eq ptr %140, %arrayidx7.i
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %140
  %arrayidx.i.i = getelementptr %struct.rsi_hw, ptr %132, i32 0, i32 3, i32 0
  %hw.i = getelementptr inbounds %struct.rsi_hw, ptr %132, i32 0, i32 2
  %arrayidx.1.i.i = getelementptr %struct.rsi_hw, ptr %132, i32 0, i32 3, i32 1
  %arrayidx.2.i.i = getelementptr %struct.rsi_hw, ptr %132, i32 0, i32 3, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.then26.i.do.body.i_crit_edge, %if.then8.i
  %skb.0.i = phi ptr [ %spec.store.select.i.i, %if.then8.i ], [ %159, %if.then26.i.do.body.i_crit_edge ]
  %pkt_cnt.0.i = phi i32 [ 0, %if.then8.i ], [ %add.i, %if.then26.i.do.body.i_crit_edge ]
  %txop.1.i = phi i16 [ %txop.0.i, %if.then8.i ], [ %sub.i144, %if.then26.i.do.body.i_crit_edge ]
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 19
  %141 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %data.i, align 4
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %142, i32 0, i32 3
  %143 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i138 = icmp eq ptr %144, null
  br i1 %tobool.not.i.i138, label %do.body.i.for.inc.i.i140_crit_edge, label %if.end.i.i

do.body.i.for.inc.i.i140_crit_edge:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i140

if.end.i.i:                                       ; preds = %do.body.i
  %addr.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %144, i32 0, i32 2
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %addr.i.i, ptr noundef dereferenceable(6) %addr2.i, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool1.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.rsi_get_vif.exit.i_crit_edge, label %if.end.i.i.for.inc.i.i140_crit_edge

if.end.i.i.for.inc.i.i140_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i140

if.end.i.i.rsi_get_vif.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_get_vif.exit.i

for.inc.i.i140:                                   ; preds = %if.end.i.i.for.inc.i.i140_crit_edge, %do.body.i.for.inc.i.i140_crit_edge
  %145 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx.1.i.i, align 4
  %tobool.not.1.i.i139 = icmp eq ptr %146, null
  br i1 %tobool.not.1.i.i139, label %for.inc.i.i140.for.inc.1.i.i142_crit_edge, label %if.end.1.i.i

for.inc.i.i140.for.inc.1.i.i142_crit_edge:        ; preds = %for.inc.i.i140
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i.i142

if.end.1.i.i:                                     ; preds = %for.inc.i.i140
  %addr.1.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %146, i32 0, i32 2
  %bcmp.1.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %addr.1.i.i, ptr noundef dereferenceable(6) %addr2.i, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1.i.i)
  %tobool1.not.1.i.i = icmp eq i32 %bcmp.1.i.i, 0
  br i1 %tobool1.not.1.i.i, label %if.end.1.i.i.rsi_get_vif.exit.i_crit_edge, label %if.end.1.i.i.for.inc.1.i.i142_crit_edge

if.end.1.i.i.for.inc.1.i.i142_crit_edge:          ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i.i142

if.end.1.i.i.rsi_get_vif.exit.i_crit_edge:        ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_get_vif.exit.i

for.inc.1.i.i142:                                 ; preds = %if.end.1.i.i.for.inc.1.i.i142_crit_edge, %for.inc.i.i140.for.inc.1.i.i142_crit_edge
  %147 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx.2.i.i, align 4
  %tobool.not.2.i.i141 = icmp eq ptr %148, null
  br i1 %tobool.not.2.i.i141, label %for.inc.1.i.i142.for.inc.2.i.i143_crit_edge, label %if.end.2.i.i

for.inc.1.i.i142.for.inc.2.i.i143_crit_edge:      ; preds = %for.inc.1.i.i142
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i.i143

if.end.2.i.i:                                     ; preds = %for.inc.1.i.i142
  %addr.2.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %148, i32 0, i32 2
  %bcmp.2.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %addr.2.i.i, ptr noundef dereferenceable(6) %addr2.i, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2.i.i)
  %tobool1.not.2.i.i = icmp eq i32 %bcmp.2.i.i, 0
  br i1 %tobool1.not.2.i.i, label %if.end.2.i.i.rsi_get_vif.exit.i_crit_edge, label %if.end.2.i.i.for.inc.2.i.i143_crit_edge

if.end.2.i.i.for.inc.2.i.i143_crit_edge:          ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i.i143

if.end.2.i.i.rsi_get_vif.exit.i_crit_edge:        ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_get_vif.exit.i

for.inc.2.i.i143:                                 ; preds = %if.end.2.i.i.for.inc.2.i.i143_crit_edge, %for.inc.1.i.i142.for.inc.2.i.i143_crit_edge
  br label %rsi_get_vif.exit.i

rsi_get_vif.exit.i:                               ; preds = %for.inc.2.i.i143, %if.end.2.i.i.rsi_get_vif.exit.i_crit_edge, %if.end.1.i.i.rsi_get_vif.exit.i_crit_edge, %if.end.i.i.rsi_get_vif.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %144, %if.end.i.i.rsi_get_vif.exit.i_crit_edge ], [ %146, %if.end.1.i.i.rsi_get_vif.exit.i_crit_edge ], [ %148, %if.end.2.i.i.rsi_get_vif.exit.i_crit_edge ], [ null, %for.inc.2.i.i143 ]
  %149 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %hw.i, align 4
  %151 = ptrtoint ptr %band.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %band.i, align 1
  %conv15.i = zext i8 %152 to i32
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 6
  %153 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %len.i, align 4
  %call16.i = call zeroext i16 @ieee80211_generic_frame_duration(ptr noundef %150, ptr noundef %retval.0.i.i, i32 noundef %conv15.i, i32 noundef %154, ptr noundef nonnull %rate.i) #7
  %add.i = add i32 %pkt_cnt.0.i, 1
  %155 = ptrtoint ptr %qlen.i.i134 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %qlen.i.i134, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %156, i32 %add.i)
  %tobool25.not.i = icmp eq i32 %156, %add.i
  br i1 %tobool25.not.i, label %rsi_get_vif.exit.i.rsi_get_num_pkts_dequeue.exit_crit_edge, label %if.then26.i

rsi_get_vif.exit.i.rsi_get_num_pkts_dequeue.exit_crit_edge: ; preds = %rsi_get_vif.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_get_num_pkts_dequeue.exit

if.then26.i:                                      ; preds = %rsi_get_vif.exit.i
  %157 = call i16 @llvm.bswap.i16(i16 %call16.i) #7
  %sub.i144 = sub i16 %txop.1.i, %157
  %158 = ptrtoint ptr %skb.0.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %skb.0.i, align 8
  %cmp30.i = icmp sgt i16 %sub.i144, 0
  br i1 %cmp30.i, label %if.then26.i.do.body.i_crit_edge, label %if.then26.i.rsi_get_num_pkts_dequeue.exit_crit_edge

if.then26.i.rsi_get_num_pkts_dequeue.exit_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_get_num_pkts_dequeue.exit

if.then26.i.do.body.i_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

rsi_get_num_pkts_dequeue.exit:                    ; preds = %if.then26.i.rsi_get_num_pkts_dequeue.exit_crit_edge, %rsi_get_vif.exit.i.rsi_get_num_pkts_dequeue.exit_crit_edge, %if.then72.i.rsi_get_num_pkts_dequeue.exit_crit_edge
  %retval.0.i145 = phi i32 [ 0, %if.then72.i.rsi_get_num_pkts_dequeue.exit_crit_edge ], [ %add.i, %if.then26.i.rsi_get_num_pkts_dequeue.exit_crit_edge ], [ %add.i, %rsi_get_vif.exit.i.rsi_get_num_pkts_dequeue.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rate.i) #7
  %sub.i = add i32 %retval.0.i145, -1
  %160 = ptrtoint ptr %pkt_cnt.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %sub.i, ptr %pkt_cnt.i, align 4
  br label %rsi_core_determine_hal_queue.exit

rsi_core_determine_hal_queue.exit.thread:         ; preds = %if.then56.i.rsi_core_determine_hal_queue.exit.thread_crit_edge, %if.end9.i.rsi_core_determine_hal_queue.exit.thread_crit_edge, %if.then5.i.rsi_core_determine_hal_queue.exit.thread_crit_edge
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rsi_core_qos_processor, i32 noundef 255) #7
  br label %if.then

rsi_core_determine_hal_queue.exit.thread152:      ; preds = %if.then5.i.rsi_core_determine_hal_queue.exit.thread152_crit_edge, %while.cond.rsi_core_determine_hal_queue.exit.thread152_crit_edge
  %retval.0.i.ph = phi i8 [ 5, %while.cond.rsi_core_determine_hal_queue.exit.thread152_crit_edge ], [ 4, %if.then5.i.rsi_core_determine_hal_queue.exit.thread152_crit_edge ]
  %conv154 = zext i8 %retval.0.i.ph to i32
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rsi_core_qos_processor, i32 noundef %conv154) #7
  br label %if.end

rsi_core_determine_hal_queue.exit:                ; preds = %rsi_get_num_pkts_dequeue.exit, %if.end60.i.rsi_core_determine_hal_queue.exit_crit_edge, %if.then13.i
  %retval.0.i = phi i8 [ %23, %if.then13.i ], [ %q_num.1.lcssa158.i, %if.end60.i.rsi_core_determine_hal_queue.exit_crit_edge ], [ %q_num.1.lcssa158.i, %rsi_get_num_pkts_dequeue.exit ]
  %conv = zext i8 %retval.0.i to i32
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rsi_core_qos_processor, i32 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %retval.0.i)
  %cmp = icmp eq i8 %retval.0.i, -1
  br i1 %cmp, label %rsi_core_determine_hal_queue.exit.if.then_crit_edge, label %rsi_core_determine_hal_queue.exit.if.end_crit_edge

rsi_core_determine_hal_queue.exit.if.end_crit_edge: ; preds = %rsi_core_determine_hal_queue.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

rsi_core_determine_hal_queue.exit.if.then_crit_edge: ; preds = %rsi_core_determine_hal_queue.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %rsi_core_determine_hal_queue.exit.if.then_crit_edge, %rsi_core_determine_hal_queue.exit.thread
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rsi_core_qos_processor) #7
  br label %while.end

if.end:                                           ; preds = %rsi_core_determine_hal_queue.exit.if.end_crit_edge, %rsi_core_determine_hal_queue.exit.thread152
  %conv157 = phi i32 [ %conv154, %rsi_core_determine_hal_queue.exit.thread152 ], [ %conv, %rsi_core_determine_hal_queue.exit.if.end_crit_edge ]
  %retval.0.i156 = phi i8 [ %retval.0.i.ph, %rsi_core_determine_hal_queue.exit.thread152 ], [ %retval.0.i, %rsi_core_determine_hal_queue.exit.if.end_crit_edge ]
  %161 = ptrtoint ptr %hibernate_resume to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %hibernate_resume, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool.not = icmp eq i8 %162, 0
  br i1 %tobool.not, label %if.end4, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end4:                                          ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef %tx_lock, i32 noundef 0) #7
  %163 = ptrtoint ptr %check_hw_queue_status to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %check_hw_queue_status, align 4
  %call5 = call i32 %164(ptr noundef %1, i8 noundef zeroext %retval.0.i156) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 1
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %tx_lock) #7
  br label %while.end

if.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %retval.0.i156)
  %cmp12 = icmp ult i8 %retval.0.i156, 4
  br i1 %cmp12, label %land.lhs.true, label %if.end55

land.lhs.true:                                    ; preds = %if.end10
  %qlen.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 %conv157, i32 1
  %165 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 301, i32 %166)
  %cmp15 = icmp ult i32 %166, 301
  br i1 %cmp15, label %if.then17, label %land.lhs.true.rsi_core_dequeue_pkt.exit_crit_edge

land.lhs.true.rsi_core_dequeue_pkt.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_core_dequeue_pkt.exit

if.then17:                                        ; preds = %land.lhs.true
  %167 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %hw, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i156)
  %cmp19 = icmp eq i8 %retval.0.i156, 0
  br i1 %cmp19, label %cond.end30.thread, label %cond.false

cond.false:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %retval.0.i156)
  %cmp22 = icmp eq i8 %retval.0.i156, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %retval.0.i156)
  %cmp27 = icmp eq i8 %retval.0.i156, 2
  %cond = zext i1 %cmp27 to i32
  %cond31 = select i1 %cmp22, i32 2, i32 %cond
  %call32 = call i32 @ieee80211_queue_stopped(ptr noundef %168, i32 noundef %cond31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %cond.false.rsi_core_dequeue_pkt.exit_crit_edge, label %cond.false40

cond.false.rsi_core_dequeue_pkt.exit_crit_edge:   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_core_dequeue_pkt.exit

cond.end30.thread:                                ; preds = %if.then17
  %call32159 = call i32 @ieee80211_queue_stopped(ptr noundef %168, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32159)
  %tobool33.not160 = icmp eq i32 %call32159, 0
  br i1 %tobool33.not160, label %cond.end30.thread.rsi_core_dequeue_pkt.exit_crit_edge, label %cond.end30.thread.cond.end52_crit_edge

cond.end30.thread.cond.end52_crit_edge:           ; preds = %cond.end30.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end52

cond.end30.thread.rsi_core_dequeue_pkt.exit_crit_edge: ; preds = %cond.end30.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_core_dequeue_pkt.exit

cond.false40:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select = select i1 %cmp22, i32 2, i32 %cond
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false40, %cond.end30.thread.cond.end52_crit_edge
  %cond53 = phi i32 [ %spec.select, %cond.false40 ], [ 3, %cond.end30.thread.cond.end52_crit_edge ]
  %169 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %hw, align 4
  call void @ieee80211_wake_queue(ptr noundef %170, i32 noundef %cond53) #7
  br label %rsi_core_dequeue_pkt.exit

if.end55:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %retval.0.i156)
  %cmp.i = icmp ugt i8 %retval.0.i156, 5
  br i1 %cmp.i, label %rsi_core_dequeue_pkt.exit.thread, label %if.end55.rsi_core_dequeue_pkt.exit_crit_edge

if.end55.rsi_core_dequeue_pkt.exit_crit_edge:     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsi_core_dequeue_pkt.exit

rsi_core_dequeue_pkt.exit.thread:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.rsi_core_dequeue_pkt, i32 noundef %conv157) #7
  br label %if.then59

rsi_core_dequeue_pkt.exit:                        ; preds = %if.end55.rsi_core_dequeue_pkt.exit_crit_edge, %cond.end52, %cond.end30.thread.rsi_core_dequeue_pkt.exit_crit_edge, %cond.false.rsi_core_dequeue_pkt.exit_crit_edge, %land.lhs.true.rsi_core_dequeue_pkt.exit_crit_edge
  %retval.0.i149164 = phi i8 [ %retval.0.i156, %if.end55.rsi_core_dequeue_pkt.exit_crit_edge ], [ 0, %cond.end30.thread.rsi_core_dequeue_pkt.exit_crit_edge ], [ %retval.0.i156, %land.lhs.true.rsi_core_dequeue_pkt.exit_crit_edge ], [ %retval.0.i156, %cond.end52 ], [ %retval.0.i156, %cond.false.rsi_core_dequeue_pkt.exit_crit_edge ]
  %arrayidx.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 %conv157
  %call.i = call ptr @skb_dequeue(ptr noundef %arrayidx.i) #7
  %cmp57 = icmp eq ptr %call.i, null
  br i1 %cmp57, label %rsi_core_dequeue_pkt.exit.if.then59_crit_edge, label %if.end61

rsi_core_dequeue_pkt.exit.if.then59_crit_edge:    ; preds = %rsi_core_dequeue_pkt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then59

if.then59:                                        ; preds = %rsi_core_dequeue_pkt.exit.if.then59_crit_edge, %rsi_core_dequeue_pkt.exit.thread
  call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #7
  call void @mutex_unlock(ptr noundef %tx_lock) #7
  br label %while.end

if.end61:                                         ; preds = %rsi_core_dequeue_pkt.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %retval.0.i149164)
  %cmp63 = icmp eq i8 %retval.0.i149164, 5
  br i1 %cmp63, label %if.then65, label %if.else

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %call66 = call i32 @rsi_send_pkt_to_bus(ptr noundef %common, ptr noundef nonnull %call.i) #7
  call void @consume_skb(ptr noundef nonnull %call.i) #7
  br label %if.end82

if.else:                                          ; preds = %if.end61
  %171 = ptrtoint ptr %coex_mode to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %coex_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %172)
  %cmp68 = icmp ugt i8 %172, 1
  br i1 %cmp68, label %if.then70, label %if.else72

if.then70:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call71 = call i32 @rsi_coex_send_pkt(ptr noundef %common, ptr noundef nonnull %call.i, i8 noundef zeroext 3) #7
  br label %if.end82

if.else72:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %retval.0.i149164)
  %cmp74 = icmp eq i8 %retval.0.i149164, 4
  br i1 %cmp74, label %if.then76, label %if.else78

if.then76:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #9
  %call77 = call i32 @rsi_send_mgmt_pkt(ptr noundef %common, ptr noundef nonnull %call.i) #7
  br label %if.end82

if.else78:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #9
  %call79 = call i32 @rsi_send_data_pkt(ptr noundef %common, ptr noundef nonnull %call.i) #7
  br label %if.end82

if.end82:                                         ; preds = %if.else78, %if.then76, %if.then70, %if.then65
  %status.0 = phi i32 [ %call66, %if.then65 ], [ %call71, %if.then70 ], [ %call77, %if.then76 ], [ %call79, %if.else78 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool83.not = icmp eq i32 %status.0, 0
  br i1 %tobool83.not, label %if.end86, label %if.then84

if.then84:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %tx_lock) #7
  br label %while.end

if.end86:                                         ; preds = %if.end82
  %arrayidx88 = getelementptr [6 x i32], ptr %tx_stats, i32 0, i32 %conv157
  %173 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx88, align 4
  %inc = add i32 %174, 1
  store i32 %inc, ptr %arrayidx88, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %175 = load volatile i32, ptr @jiffies, align 128
  call void @mutex_unlock(ptr noundef %tx_lock) #7
  %sub = sub i32 %add, %175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp90 = icmp slt i32 %sub, 0
  br i1 %cmp90, label %if.then92, label %if.end86.while.cond.backedge_crit_edge

if.end86.while.cond.backedge_crit_edge:           ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.then92:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  call void @schedule() #7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then92, %if.end86.while.cond.backedge_crit_edge
  br label %while.cond

while.end:                                        ; preds = %if.then84, %if.then59, %if.then8, %if.end.while.end_crit_edge, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsi_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_queue_stopped(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_send_pkt_to_bus(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_coex_send_pkt(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_send_mgmt_pkt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_send_data_pkt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rsi_find_sta(ptr noundef readonly %common, ptr nocapture noundef readonly %mac_addr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_stations = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 69
  %0 = ptrtoint ptr %max_stations to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_stations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16 = icmp sgt i32 %1, 0
  br i1 %cmp16, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 67, i32 %i.017
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr, ptr noundef dereferenceable(6) %mac_addr, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool4.not = icmp eq i32 %bcmp, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %arrayidx, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rsi_get_vif(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %mac) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rsi_hw, ptr %adapter, i32 0, i32 3, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %entry
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr, ptr noundef dereferenceable(6) %mac, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool1.not = icmp eq i32 %bcmp, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.rsi_hw, ptr %adapter, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %addr.1 = getelementptr inbounds %struct.ieee80211_vif, ptr %3, i32 0, i32 2
  %bcmp.1 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr.1, ptr noundef dereferenceable(6) %mac, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1)
  %tobool1.not.1 = icmp eq i32 %bcmp.1, 0
  br i1 %tobool1.not.1, label %if.end.1.cleanup_crit_edge, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.1:                                        ; preds = %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.rsi_hw, ptr %adapter, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %5, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %addr.2 = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 2
  %bcmp.2 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr.2, ptr noundef dereferenceable(6) %mac, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2)
  %tobool1.not.2 = icmp eq i32 %bcmp.2, 0
  br i1 %tobool1.not.2, label %if.end.2.cleanup_crit_edge, label %if.end.2.for.inc.2_crit_edge

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.2:                                        ; preds = %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.2, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end.cleanup_crit_edge ], [ %3, %if.end.1.cleanup_crit_edge ], [ %5, %if.end.2.cleanup_crit_edge ], [ null, %for.inc.2 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsi_core_xmit(ptr noundef %common, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.rsi_core_xmit) #7
  br label %xmit_fail

if.end:                                           ; preds = %lor.lhs.false
  %fsm_state = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 28
  %4 = ptrtoint ptr %fsm_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fsm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp.not = icmp eq i32 %5, 9
  br i1 %cmp.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.rsi_core_xmit) #7
  br label %xmit_fail

if.end3:                                          ; preds = %if.end
  %wow_flags = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 60
  %6 = ptrtoint ptr %wow_flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wow_flags, align 2
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.rsi_core_xmit) #7
  br label %xmit_fail

if.end6:                                          ; preds = %if.end3
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %9 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_key, align 4
  %tobool7 = icmp ne ptr %10, null
  %have_key = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 29
  %frombool = zext i1 %tobool7 to i8
  %11 = ptrtoint ptr %have_key to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %have_key, align 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %sta_id = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 19
  %14 = ptrtoint ptr %sta_id to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %sta_id, align 1
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %13, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 0
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end6.for.inc.i_crit_edge, label %if.end.i

if.end6.for.inc.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %if.end6
  %addr.i = getelementptr inbounds %struct.ieee80211_vif, ptr %16, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr.i, ptr noundef dereferenceable(6) %addr2, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool1.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end13_crit_edge, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %if.end6.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %18, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %addr.1.i = getelementptr inbounds %struct.ieee80211_vif, ptr %18, i32 0, i32 2
  %bcmp.1.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr.1.i, ptr noundef dereferenceable(6) %addr2, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1.i)
  %tobool1.not.1.i = icmp eq i32 %bcmp.1.i, 0
  br i1 %tobool1.not.1.i, label %if.end.1.i.if.end13_crit_edge, label %if.end.1.i.for.inc.1.i_crit_edge

if.end.1.i.for.inc.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.end.1.i.if.end13_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

for.inc.1.i:                                      ; preds = %if.end.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.rsi_hw, ptr %1, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %20, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.xmit_fail_crit_edge, label %if.end.2.i

for.inc.1.i.xmit_fail_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xmit_fail

if.end.2.i:                                       ; preds = %for.inc.1.i
  %addr.2.i = getelementptr inbounds %struct.ieee80211_vif, ptr %20, i32 0, i32 2
  %bcmp.2.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr.2.i, ptr noundef dereferenceable(6) %addr2, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2.i)
  %tobool1.not.2.i = icmp eq i32 %bcmp.2.i, 0
  br i1 %tobool1.not.2.i, label %if.end.2.i.if.end13_crit_edge, label %if.end.2.i.xmit_fail_crit_edge

if.end.2.i.xmit_fail_crit_edge:                   ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xmit_fail

if.end.2.i.if.end13_crit_edge:                    ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %if.end.2.i.if.end13_crit_edge, %if.end.1.i.if.end13_crit_edge, %if.end.i.if.end13_crit_edge
  %retval.0.i.ph = phi ptr [ %20, %if.end.2.i.if.end13_crit_edge ], [ %18, %if.end.1.i.if.end13_crit_edge ], [ %16, %if.end.i.if.end13_crit_edge ]
  %vif14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %21 = ptrtoint ptr %vif14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %retval.0.i.ph, ptr %vif14, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %retval.0.i.ph, i32 0, i32 19
  %vap_id = getelementptr inbounds %struct.vif_priv, ptr %drv_priv, i32 0, i32 3
  %22 = ptrtoint ptr %vap_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vap_id, align 4
  %conv16 = trunc i32 %23 to i8
  %24 = ptrtoint ptr %hw_key to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv16, ptr %hw_key, align 4
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %13, align 2
  %27 = trunc i16 %26 to i12
  %trunc = and i12 %27, -1024
  %28 = zext i12 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i12 %trunc, label %lor.lhs.false24 [
    i12 0, label %if.then28
    i12 1024, label %lor.lhs.false32
  ]

lor.lhs.false24:                                  ; preds = %if.end13
  %29 = and i16 %26, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14336, i16 %29)
  %cmp.i265 = icmp eq i16 %29, -14336
  br i1 %cmp.i265, label %lor.lhs.false24.if.end40_crit_edge, label %if.else

lor.lhs.false24.if.end40_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then28:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %26)
  %cmp.i266 = icmp ult i16 %26, 1024
  %30 = and i16 %26, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %30)
  %cmp.i267 = icmp eq i16 %30, 8192
  %or.cond = or i1 %cmp.i266, %cmp.i267
  br i1 %or.cond, label %if.then28.if.then36_crit_edge, label %if.then28.if.end40_crit_edge

if.then28.if.end40_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then28.if.then36_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

lor.lhs.false32:                                  ; preds = %if.end13
  %.pre = and i16 %26, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %.pre)
  %cmp.i267.old = icmp eq i16 %.pre, 8192
  br i1 %cmp.i267.old, label %lor.lhs.false32.if.then36_crit_edge, label %lor.lhs.false32.if.end40_crit_edge

lor.lhs.false32.if.end40_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

lor.lhs.false32.if.then36_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false32.if.then36_crit_edge, %if.then28.if.then36_crit_edge
  %bss_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %retval.0.i.ph, i32 0, i32 1
  %eapol4_confirm = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 75
  %31 = ptrtoint ptr %eapol4_confirm to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %eapol4_confirm, align 4
  %32 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bss_conf, align 8
  %qos = getelementptr inbounds %struct.ieee80211_vif, ptr %retval.0.i.ph, i32 0, i32 1, i32 36
  %34 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %qos, align 4, !range !41
  %aid = getelementptr inbounds %struct.ieee80211_vif, ptr %retval.0.i.ph, i32 0, i32 1, i32 13
  %36 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %aid, align 2
  %call39 = tail call i32 @rsi_hal_send_sta_notify_frame(ptr noundef %common, i32 noundef 0, i8 noundef zeroext 0, ptr noundef %33, i8 noundef zeroext %35, i16 noundef zeroext %37, i16 noundef zeroext 0, ptr noundef nonnull %retval.0.i.ph) #7
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %lor.lhs.false32.if.end40_crit_edge, %if.then28.if.end40_crit_edge, %lor.lhs.false24.if.end40_crit_edge
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %38 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %priority, align 4
  %call42 = tail call i32 @rsi_prepare_mgmt_desc(ptr noundef %common, ptr noundef nonnull %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end40.if.end179_crit_edge, label %if.then44

if.end40.if.end179_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.6) #7
  br label %xmit_fail

if.else:                                          ; preds = %lor.lhs.false24
  %39 = and i16 %26, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %39)
  %cmp.i268 = icmp eq i16 %39, -30720
  br i1 %cmp.i268, label %if.then48, label %if.else.if.end75_crit_edge

if.else.if.end75_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then48:                                        ; preds = %if.else
  %40 = and i16 %26, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %40)
  %cmp.i.i = icmp eq i16 %40, 3
  %retval.0.v.i = select i1 %cmp.i.i, i32 30, i32 24
  %retval.0.i269 = getelementptr i8, ptr %13, i32 %retval.0.v.i
  %41 = ptrtoint ptr %retval.0.i269 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %retval.0.i269, align 1
  %43 = and i8 %42, 15
  %trunc284 = trunc i8 %42 to i4
  %44 = zext i4 %trunc284 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.12)
  switch i4 %trunc284, label %cond.false [
    i4 0, label %if.then48.if.end75_crit_edge
    i4 3, label %if.then48.if.end75_crit_edge287
  ]

if.then48.if.end75_crit_edge287:                  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then48.if.end75_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

cond.false:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %43)
  %cmp62 = icmp ult i8 %43, 3
  br i1 %cmp62, label %cond.false.if.end75_crit_edge, label %cond.false65

cond.false.if.end75_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

cond.false65:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %43)
  %cmp67 = icmp ult i8 %43, 6
  %cond = select i1 %cmp67, i32 2, i32 3
  br label %if.end75

if.end75:                                         ; preds = %cond.false65, %cond.false.if.end75_crit_edge, %if.then48.if.end75_crit_edge, %if.then48.if.end75_crit_edge287, %if.else.if.end75_crit_edge
  %.sink = phi i32 [ 1, %if.then48.if.end75_crit_edge ], [ %cond, %cond.false65 ], [ 0, %cond.false.if.end75_crit_edge ], [ 1, %if.then48.if.end75_crit_edge287 ], [ 1, %if.else.if.end75_crit_edge ]
  %tid.0 = phi i8 [ %43, %if.then48.if.end75_crit_edge ], [ %43, %cond.false65 ], [ %43, %cond.false.if.end75_crit_edge ], [ %43, %if.then48.if.end75_crit_edge287 ], [ 16, %if.else.if.end75_crit_edge ]
  %priority74 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %45 = ptrtoint ptr %priority74 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink, ptr %priority74, align 4
  %priority76 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %tid78 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %46 = ptrtoint ptr %tid78 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %tid.0, ptr %tid78, align 2
  %47 = ptrtoint ptr %retval.0.i.ph to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %retval.0.i.ph, align 8
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %48, label %if.end75.if.end103.thread_crit_edge [
    i32 3, label %if.end75.land.lhs.true_crit_edge
    i32 9, label %if.end75.land.lhs.true_crit_edge288
  ]

if.end75.land.lhs.true_crit_edge288:              ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end75.land.lhs.true_crit_edge:                 ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end75.if.end103.thread_crit_edge:              ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103.thread

land.lhs.true:                                    ; preds = %if.end75.land.lhs.true_crit_edge, %if.end75.land.lhs.true_crit_edge288
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %13, i32 0, i32 2
  %50 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %addr1, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_hdr, ptr %13, i32 0, i32 2, i32 2
  %52 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %53, %51
  %add.ptr3.i = getelementptr %struct.ieee80211_hdr, ptr %13, i32 0, i32 2, i32 4
  %54 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %55
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i270 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i270, label %land.lhs.true.if.end103.thread_crit_edge, label %land.lhs.true87

land.lhs.true.if.end103.thread_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103.thread

land.lhs.true87:                                  ; preds = %land.lhs.true
  %56 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %addr1, align 4
  %58 = and i32 %57, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i.not = icmp eq i32 %58, 0
  br i1 %tobool.i.not, label %if.then91, label %land.lhs.true87.if.end103.thread_crit_edge

land.lhs.true87.if.end103.thread_crit_edge:       ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103.thread

if.then91:                                        ; preds = %land.lhs.true87
  %call94 = tail call ptr @rsi_find_sta(ptr noundef %common, ptr noundef %addr1)
  %tobool95.not = icmp eq ptr %call94, null
  br i1 %tobool95.not, label %if.then91.xmit_fail_crit_edge, label %if.then105

if.then91.xmit_fail_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  br label %xmit_fail

if.end103.thread:                                 ; preds = %land.lhs.true87.if.end103.thread_crit_edge, %land.lhs.true.if.end103.thread_crit_edge, %if.end75.if.end103.thread_crit_edge
  %59 = ptrtoint ptr %sta_id to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %sta_id, align 1
  br label %if.end115

if.then105:                                       ; preds = %if.then91
  %sta_id98 = getelementptr inbounds %struct.rsi_sta, ptr %call94, i32 0, i32 1
  %60 = ptrtoint ptr %sta_id98 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %sta_id98, align 4
  %conv99 = trunc i16 %61 to i8
  %62 = ptrtoint ptr %sta_id to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv99, ptr %sta_id, align 1
  %idxprom = zext i8 %tid.0 to i32
  %arrayidx106 = getelementptr %struct.rsi_sta, ptr %call94, i32 0, i32 3, i32 %idxprom
  %63 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx106, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool107.not = icmp eq i8 %64, 0
  br i1 %tobool107.not, label %if.then108, label %if.then105.if.end115_crit_edge

if.then105.if.end115_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.then108:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %arrayidx106, align 1
  %66 = ptrtoint ptr %call94 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call94, align 4
  %conv112 = zext i8 %tid.0 to i16
  %call113 = tail call i32 @ieee80211_start_tx_ba_session(ptr noundef %67, i16 noundef zeroext %conv112, i16 noundef zeroext 0) #7
  br label %if.end115

if.end115:                                        ; preds = %if.then108, %if.then105.if.end115_crit_edge, %if.end103.thread
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %68 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %69)
  %cmp117 = icmp eq i16 %69, -30578
  br i1 %cmp117, label %if.then119, label %if.end115.if.end122_crit_edge

if.end115.if.end122_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.then119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %priority76 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 4, ptr %priority76, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then119, %if.end115.if.end122_crit_edge
  %q_num.0 = phi i32 [ 4, %if.then119 ], [ %.sink, %if.end115.if.end122_crit_edge ]
  %call123 = tail call i32 @rsi_prepare_data_desc(ptr noundef %common, ptr noundef nonnull %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end127, label %if.then125

if.then125:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.7) #7
  br label %xmit_fail

if.end127:                                        ; preds = %if.end122
  %conv128 = and i32 %q_num.0, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv128)
  %cmp129 = icmp ult i32 %conv128, 4
  br i1 %cmp129, label %land.lhs.true131, label %if.end127.if.end179_crit_edge

if.end127.if.end179_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179

land.lhs.true131:                                 ; preds = %if.end127
  %qlen.i = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 %conv128, i32 1
  %71 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %qlen.i, align 4
  %73 = add i32 %72, -399
  call void @__sanitizer_cov_trace_const_cmp4(i32 -400, i32 %73)
  %cmp135 = icmp ult i32 %73, -400
  br i1 %cmp135, label %if.then137, label %land.lhs.true131.if.end179_crit_edge

land.lhs.true131.if.end179_crit_edge:             ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179

if.then137:                                       ; preds = %land.lhs.true131
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.rsi_core_xmit) #7
  %hw = getelementptr inbounds %struct.rsi_hw, ptr %1, i32 0, i32 2
  %74 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv128)
  %cmp139 = icmp eq i32 %conv128, 0
  br i1 %cmp139, label %cond.end154.thread, label %cond.false142

cond.false142:                                    ; preds = %if.then137
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv128)
  %cmp144 = icmp eq i32 %conv128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv128)
  %cmp149 = icmp eq i32 %conv128, 2
  %cond151 = zext i1 %cmp149 to i32
  %cond155 = select i1 %cmp144, i32 2, i32 %cond151
  %call156 = tail call i32 @ieee80211_queue_stopped(ptr noundef %75, i32 noundef %cond155) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %cond.false164, label %cond.false142.if.end178_crit_edge

cond.false142.if.end178_crit_edge:                ; preds = %cond.false142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178

cond.end154.thread:                               ; preds = %if.then137
  %call156282 = tail call i32 @ieee80211_queue_stopped(ptr noundef %75, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156282)
  %tobool157.not283 = icmp eq i32 %call156282, 0
  br i1 %tobool157.not283, label %cond.end154.thread.cond.end176_crit_edge, label %cond.end154.thread.if.end178_crit_edge

cond.end154.thread.if.end178_crit_edge:           ; preds = %cond.end154.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178

cond.end154.thread.cond.end176_crit_edge:         ; preds = %cond.end154.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end176

cond.false164:                                    ; preds = %cond.false142
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select = select i1 %cmp144, i32 2, i32 %cond151
  br label %cond.end176

cond.end176:                                      ; preds = %cond.false164, %cond.end154.thread.cond.end176_crit_edge
  %cond177 = phi i32 [ %spec.select, %cond.false164 ], [ 3, %cond.end154.thread.cond.end176_crit_edge ]
  %76 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_stop_queue(ptr noundef %77, i32 noundef %cond177) #7
  br label %if.end178

if.end178:                                        ; preds = %cond.end176, %cond.end154.thread.if.end178_crit_edge, %cond.false142.if.end178_crit_edge
  %event = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  tail call fastcc void @rsi_set_event(ptr noundef %event)
  br label %xmit_fail

if.end179:                                        ; preds = %land.lhs.true131.if.end179_crit_edge, %if.end127.if.end179_crit_edge, %if.end40.if.end179_crit_edge
  tail call fastcc void @rsi_core_queue_pkt(ptr noundef %common, ptr noundef nonnull %skb)
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 32, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.rsi_core_xmit) #7
  %event181 = getelementptr inbounds %struct.rsi_common, ptr %common, i32 0, i32 6, i32 3
  tail call fastcc void @rsi_set_event(ptr noundef %event181)
  br label %cleanup

xmit_fail:                                        ; preds = %if.end178, %if.then125, %if.then91.xmit_fail_crit_edge, %if.then44, %if.end.2.i.xmit_fail_crit_edge, %for.inc.1.i.xmit_fail_crit_edge, %if.then5, %if.then2, %if.then
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.rsi_core_xmit) #7
  %78 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %common, align 4
  %hw183 = getelementptr inbounds %struct.rsi_hw, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %hw183 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw183, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %81, ptr noundef %skb) #7
  br label %cleanup

cleanup:                                          ; preds = %xmit_fail, %if.end179
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_hal_send_sta_notify_frame(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_prepare_mgmt_desc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_start_tx_ba_session(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsi_prepare_data_desc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsi_set_event(ptr noundef %event) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event, i32 noundef 4) #7
  %0 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %event, align 4
  %event_queue = getelementptr inbounds %struct.rsi_event, ptr %event, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %event_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsi_core_queue_pkt(ptr noundef %common, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %0 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priority, align 4
  %conv1 = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv1)
  %cmp = icmp ugt i32 %conv1, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @rsi_dbg(i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.rsi_core_queue_pkt, i32 noundef %conv1) #7
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.rsi_common, ptr %common, i32 0, i32 7, i32 %conv1
  tail call void @skb_queue_tail(ptr noundef %arrayidx, ptr noundef %skb) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_generic_frame_duration(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/rsi/rsi_91x_core.c", i32 273, i32 4}
!2 = !{ptr @__func__.rsi_core_qos_processor, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/rsi/rsi_91x_core.c", i32 273, i32 31}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/rsi/rsi_91x_core.c", i32 276, i32 26}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/rsi/rsi_91x_core.c", i32 300, i32 22}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/rsi/rsi_91x_core.c", i32 385, i32 21}
!10 = !{ptr @__func__.rsi_core_xmit, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/rsi/rsi_91x_core.c", i32 386, i32 4}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/rsi/rsi_91x_core.c", i32 390, i32 21}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/rsi/rsi_91x_core.c", i32 395, i32 4}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/rsi/rsi_91x_core.c", i32 431, i32 22}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/rsi/rsi_91x_core.c", i32 473, i32 22}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/rsi/rsi_91x_core.c", i32 481, i32 21}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/rsi/rsi_91x_core.c", i32 489, i32 24}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/rsi/rsi_91x_core.c", i32 495, i32 20}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/rsi/rsi_91x_core.c", i32 244, i32 21}
!28 = !{ptr @__func__.rsi_core_dequeue_pkt, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/rsi/rsi_91x_core.c", i32 245, i32 4}
!30 = !{ptr @__func__.rsi_core_queue_pkt, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/rsi/rsi_91x_core.c", i32 224, i32 4}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i8 0, i8 2}
