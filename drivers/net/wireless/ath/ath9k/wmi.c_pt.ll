; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/wmi.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/wmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wmi = type { ptr, ptr, i32, %struct.mutex, %struct.completion, i16, %struct.sk_buff_head, %struct.tasklet_struct, i16, ptr, i32, i8, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.atomic_t, [62 x %struct.register_write], i32, %struct.mutex, %struct.atomic_t, [15 x %struct.register_rmw], i32, %struct.mutex }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.133, i32 }
%union.anon.133 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.register_write = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.register_rmw = type { i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ath9k_htc_priv = type { ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i32, i32, i32, %struct.ath9k_hw_cal_data, %struct.ath_spec_scan_priv, %struct.spinlock, %struct.ath_beacon_config, %struct.htc_beacon, %struct.ath9k_htc_rx, %struct.ath9k_htc_tx, %struct.tasklet_struct, %struct.tasklet_struct, %struct.delayed_work, %struct.tasklet_struct, %struct.work_struct, %struct.work_struct, %struct.mutex, i32, i8, i8, i32, i8, [32 x i8], %struct.led_classdev, %struct.work_struct, i32, [4 x i32], %struct.ath_btcoex, %struct.delayed_work, %struct.delayed_work, %struct.ath9k_debug, %struct.mutex, ptr }
%struct.ath9k_hw_cal_data = type { i16, i16, i32, i32, i8, i8, [2 x i8], [3 x i16], [3 x [24 x i32]], [3 x i32], [8 x [3 x i32]], [3 x [16 x i32]], [3 x [6 x i32]], [6 x %struct.ath9k_nfcal_hist] }
%struct.ath9k_nfcal_hist = type { [5 x i16], i8, i16, i8 }
%struct.ath_spec_scan_priv = type { ptr, ptr, i32, %struct.ath_spec_scan }
%struct.ath_spec_scan = type { i8, i8, i8, i8, i8, i8 }
%struct.ath_beacon_config = type { ptr, i32, i16, i16, i8, i8, i8, i32, i32 }
%struct.htc_beacon = type { i32, [2 x ptr], i32, i32, i32, i32 }
%struct.ath9k_htc_rx = type { %struct.list_head, %struct.spinlock, i8 }
%struct.ath9k_htc_tx = type { i8, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, [8 x i32], %struct.timer_list, %struct.spinlock, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath_btcoex = type { i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ath9k_debug = type { ptr, %struct.ath_tx_stats, %struct.ath_rx_stats, %struct.ath_skbrx_stats }
%struct.ath_tx_stats = type { i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.ath_rx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [39 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_skbrx_stats = type { i32, i32, i32, i32 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ath_hw = type { %struct.ath_ops, ptr, ptr, %struct.ath_common, %struct.ath9k_hw_version, %struct.ath9k_ops_config, %struct.ath9k_hw_capabilities, [38 x %struct.ath9k_channel], ptr, %union.anon.125, ptr, i8, i8, i8, i8, i8, i8, i16, [6 x i32], %struct.ath_nf_limits, %struct.ath_nf_limits, i16, i32, i32, i32, i16, i8, i8, i32, i32, i8, ptr, %struct.ath9k_pacal_info, %struct.ar5416Stats, [10 x %struct.ath9k_tx_queue_info], [4 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i8, i32, i32, i32, %struct.ath9k_cal_list, %struct.ath9k_cal_list, %struct.ath9k_cal_list, ptr, ptr, ptr, %union.anon.126, %union.anon.127, %union.anon.128, %union.anon.129, i16, i8, i32, i32, %struct.ath_hw_private_ops, %struct.ath_hw_ops, ptr, i32, i32, i32, i32, i32, i32, %struct.ar5416AniState, %struct.ath_btcoex_hw, i32, i8, i8, %struct.ath_hw_radar_conf, [22 x i32], i32, i32, i32, i32, i32, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], i32, i32, %struct.ath_gen_timer_table, ptr, i32, i32, i16, i16, i32, i32, i8, i32, i32, i32, i32, i8, [32 x i32], [32 x i8], i32, i32, %struct.ath9k_hw_wow, i8, ptr, ptr, i8, i8, ptr, ptr, i32, %struct.ath_dynack, i8, [36 x i8], [36 x i8], i8, i32, i32 }
%struct.ath_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ath9k_hw_version = type { i32, i16, i16, i32, i16, i16, i16, i16, i32 }
%struct.ath9k_ops_config = type { i32, i32, i8, i32, i8, i32, i32, i32, i32, i8, i32, i8, i8, i8, i16, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ath9k_hw_capabilities = type { i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8 }
%struct.ath9k_channel = type { ptr, i16, i16, i16 }
%union.anon.125 = type { %struct.ar5416_eeprom_def }
%struct.ar5416_eeprom_def = type { %struct.base_eep_header, [64 x i8], [2 x %struct.modal_eep_header], [8 x i8], [4 x i8], [3 x [8 x %struct.cal_data_per_freq]], [3 x [4 x %struct.cal_data_per_freq]], [8 x %struct.cal_target_power_leg], [8 x %struct.cal_target_power_ht], [8 x %struct.cal_target_power_ht], [3 x %struct.cal_target_power_leg], [4 x %struct.cal_target_power_leg], [4 x %struct.cal_target_power_ht], [4 x %struct.cal_target_power_ht], [24 x i8], [24 x %struct.cal_ctl_data], i8 }
%struct.base_eep_header = type <{ i16, i16, i16, i8, i8, [2 x i16], [6 x i8], i8, i8, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [21 x i8] }>
%struct.modal_eep_header = type { [3 x i32], i32, [3 x i8], i8, [3 x i8], [3 x i8], i8, i8, [3 x i8], i8, i8, i8, i8, [3 x i8], i8, i8, [3 x i8], [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8], i8, [3 x i8], [3 x i8], i8, i8, i8, i8, [3 x i16], [6 x i8], [5 x %struct.spur_chan] }
%struct.spur_chan = type { i16, i8, i8 }
%struct.cal_data_per_freq = type { [4 x [5 x i8]], [4 x [5 x i8]] }
%struct.cal_target_power_leg = type { i8, [4 x i8] }
%struct.cal_target_power_ht = type { i8, [8 x i8] }
%struct.cal_ctl_data = type { [3 x [8 x %struct.cal_ctl_edges]] }
%struct.cal_ctl_edges = type { i8, i8 }
%struct.ath_nf_limits = type { i16, i16, i16, [3 x i16], [3 x i16] }
%struct.ath9k_pacal_info = type { i32, i8, i8 }
%struct.ar5416Stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ath9k_mib_stats }
%struct.ath9k_mib_stats = type { i32, i32, i32, i32, i32 }
%struct.ath9k_tx_queue_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.ath9k_cal_list = type { ptr, i32, ptr }
%union.anon.126 = type { [3 x i32] }
%union.anon.127 = type { [3 x i32] }
%union.anon.128 = type { [3 x i32] }
%union.anon.129 = type { [3 x i32] }
%struct.ath_hw_private_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ar5416AniState = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.ath9k_ani_default }
%struct.ath9k_ani_default = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ath_btcoex_hw = type { i32, %struct.ath9k_hw_mci, %struct.ath9k_hw_aic, i8, i8, i8, i8, i32, i32, i32, i32, [4 x i32], [4 x i32], [5 x i8] }
%struct.ath9k_hw_mci = type { i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ath9k_hw_aic = type { i8, i8, i8, [79 x i32], i32 }
%struct.ath_hw_radar_conf = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.ar5416IniArray = type { ptr, i32, i32 }
%struct.ath_gen_timer_table = type { [16 x ptr], i16, i8 }
%struct.ath9k_hw_wow = type { i32, i32, i8 }
%struct.ath_dynack = type { i8, i32, i32, %struct.list_head, %struct.spinlock, %struct.ath_dyn_rxbuf, %struct.ath_dyn_txbuf }
%struct.ath_dyn_rxbuf = type { i16, i16, [64 x i32] }
%struct.ath_dyn_txbuf = type { i16, i16, [64 x %struct.haddr_pair], [64 x %struct.ts_info] }
%struct.haddr_pair = type { [6 x i8], [6 x i8] }
%struct.ts_info = type { i32, i32 }
%struct.htc_service_connreq = type { i16, i16, i32, %struct.htc_ep_callbacks }
%struct.htc_ep_callbacks = type { ptr, ptr, ptr }
%struct.wmi_cmd_hdr = type { i16, i16 }

@ath9k_init_wmi.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&wmi->wmi_lock\00", [17 x i8] zeroinitializer }, align 32
@ath9k_init_wmi.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&wmi->event_lock\00", [47 x i8] zeroinitializer }, align 32
@ath9k_init_wmi.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&wmi->op_mutex\00", [17 x i8] zeroinitializer }, align 32
@ath9k_init_wmi.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&wmi->multi_write_mutex\00", [40 x i8] zeroinitializer }, align 32
@ath9k_init_wmi.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&wmi->multi_rmw_mutex\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"FATAL Event received, resetting device\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Timeout waiting for WMI command: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WMI failure for: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"WMI_ECHO_CMDID\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WMI_ACCESS_MEMORY_CMDID\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WMI_GET_FW_VERSION\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WMI_DISABLE_INTR_CMDID\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WMI_ENABLE_INTR_CMDID\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WMI_ATH_INIT_CMDID\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WMI_ABORT_TXQ_CMDID\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WMI_STOP_TX_DMA_CMDID\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WMI_ABORT_TX_DMA_CMDID\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WMI_DRAIN_TXQ_CMDID\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WMI_DRAIN_TXQ_ALL_CMDID\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WMI_START_RECV_CMDID\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WMI_STOP_RECV_CMDID\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WMI_FLUSH_RECV_CMDID\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WMI_SET_MODE_CMDID\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WMI_NODE_CREATE_CMDID\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WMI_NODE_REMOVE_CMDID\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WMI_VAP_REMOVE_CMDID\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WMI_VAP_CREATE_CMDID\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WMI_REG_READ_CMDID\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WMI_REG_WRITE_CMDID\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WMI_REG_RMW_CMDID\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WMI_RC_STATE_CHANGE_CMDID\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WMI_RC_RATE_UPDATE_CMDID\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WMI_TARGET_IC_UPDATE_CMDID\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WMI_TX_AGGR_ENABLE_CMDID\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WMI_TGT_DETACH_CMDID\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WMI_NODE_UPDATE_CMDID\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WMI_INT_STATS_CMDID\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WMI_TX_STATS_CMDID\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WMI_RX_STATS_CMDID\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WMI_BITRATE_MASK_CMDID\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Bogus\00", [26 x i8] zeroinitializer }, align 32
@switch.table.ath9k_wmi_cmd = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.36], [32 x i8] zeroinitializer }, align 32
@switch.table.ath9k_wmi_cmd.48 = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.36], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 4098, i64 4099, i64 4103]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 102, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 103, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 104, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 105, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 106, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 199, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 342, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 353, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1984, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 87, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 23, i32 10 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 25, i32 10 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 27, i32 10 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 29, i32 10 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 31, i32 10 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 33, i32 10 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 35, i32 10 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 37, i32 10 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 39, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 41, i32 10 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 43, i32 10 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 45, i32 10 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 47, i32 10 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 49, i32 10 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 51, i32 10 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 53, i32 10 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 55, i32 10 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 57, i32 10 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 59, i32 10 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 61, i32 10 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 63, i32 10 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 65, i32 10 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 67, i32 10 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 69, i32 10 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 71, i32 10 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 73, i32 10 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 75, i32 10 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 77, i32 10 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 79, i32 10 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 81, i32 10 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 83, i32 10 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 85, i32 10 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private constant [40 x i8] c"../drivers/net/wireless/ath/ath9k/wmi.c\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 88, i32 9 }
@___asan_gen_.202 = private unnamed_addr constant [27 x i8] c"switch.table.ath9k_wmi_cmd\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [30 x i8] c"switch.table.ath9k_wmi_cmd.48\00", align 1
@llvm.compiler.used = appending global [53 x ptr] [ptr @ath9k_init_wmi.__key, ptr @.str, ptr @ath9k_init_wmi.__key.1, ptr @.str.2, ptr @ath9k_init_wmi.__key.3, ptr @.str.4, ptr @ath9k_init_wmi.__key.5, ptr @.str.6, ptr @ath9k_init_wmi.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @skb_queue_head_init.__key, ptr @.str.13, ptr @init_completion.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @switch.table.ath9k_wmi_cmd, ptr @switch.table.ath9k_wmi_cmd.48], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_wmi.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_wmi.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_wmi.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_wmi.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_wmi.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath9k_wmi_cmd to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath9k_wmi_cmd.48 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath9k_init_wmi(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1232) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %priv, ptr %call7.i.i, align 8
  %stopped = getelementptr inbounds %struct.wmi, ptr %call7.i.i, i32 0, i32 11
  %2 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %stopped, align 8
  %wmi_event_queue = getelementptr inbounds %struct.wmi, ptr %call7.i.i, i32 0, i32 6
  %lock.i = getelementptr inbounds %struct.wmi, ptr %call7.i.i, i32 0, i32 6, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #4
  %3 = ptrtoint ptr %wmi_event_queue to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %wmi_event_queue, ptr %wmi_event_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.wmi, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %wmi_event_queue, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.wmi, ptr %call7.i.i, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i.i, align 4
  %wmi_lock = getelementptr inbounds %struct.wmi, ptr %call7.i.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %wmi_lock, ptr noundef nonnull @.str, ptr noundef nonnull @ath9k_init_wmi.__key, i16 noundef signext 3) #4
  %event_lock = getelementptr inbounds %struct.wmi, ptr %call7.i.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %event_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @ath9k_init_wmi.__key.1, i16 noundef signext 3) #4
  %op_mutex = getelementptr inbounds %struct.wmi, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %op_mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @ath9k_init_wmi.__key.3) #4
  %multi_write_mutex = getelementptr inbounds %struct.wmi, ptr %call7.i.i, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %multi_write_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @ath9k_init_wmi.__key.5) #4
  %multi_rmw_mutex = getelementptr inbounds %struct.wmi, ptr %call7.i.i, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %multi_rmw_mutex, ptr noundef nonnull @.str.8, ptr noundef nonnull @ath9k_init_wmi.__key.7) #4
  %cmd_wait = getelementptr inbounds %struct.wmi, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %cmd_wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cmd_wait, align 8
  %wait.i = getelementptr inbounds %struct.wmi, ptr %call7.i.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #4
  %pending_tx_events = getelementptr inbounds %struct.wmi, ptr %call7.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %pending_tx_events to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %pending_tx_events, ptr %pending_tx_events, align 4
  %prev.i = getelementptr inbounds %struct.wmi, ptr %call7.i.i, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pending_tx_events, ptr %prev.i, align 8
  %wmi_event_tasklet = getelementptr inbounds %struct.wmi, ptr %call7.i.i, i32 0, i32 7
  tail call void @tasklet_setup(ptr noundef %wmi_event_tasklet, ptr noundef nonnull @ath9k_wmi_event_tasklet) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_wmi_event_tasklet(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -220
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %wmi_lock = getelementptr i8, ptr %t, i32 92
  %call464 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wmi_lock) #4
  %wmi_event_queue = getelementptr i8, ptr %t, i32 -56
  %2 = ptrtoint ptr %wmi_event_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wmi_event_queue, align 4
  %cmp.i.i65 = icmp eq ptr %3, %wmi_event_queue
  %tobool.not.i6366 = icmp eq ptr %3, null
  %tobool.not.i67 = or i1 %cmp.i.i65, %tobool.not.i6366
  br i1 %tobool.not.i67, label %entry.if.then_crit_edge, label %if.end.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.lr.ph:                                     ; preds = %entry
  %qlen.i.i = getelementptr i8, ptr %t, i32 -48
  %initialized = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 40, i32 12
  %tx = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 40
  %tx_lock = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 40, i32 11
  br label %if.end

if.then:                                          ; preds = %sw.epilog.if.then_crit_edge, %entry.if.then_crit_edge
  %call4.lcssa = phi i32 [ %call464, %entry.if.then_crit_edge ], [ %call4, %sw.epilog.if.then_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wmi_lock, i32 noundef %call4.lcssa) #4
  ret void

if.end:                                           ; preds = %sw.epilog.if.end_crit_edge, %if.end.lr.ph
  %4 = phi ptr [ %3, %if.end.lr.ph ], [ %28, %sw.epilog.if.end_crit_edge ]
  %call468 = phi i32 [ %call464, %if.end.lr.ph ], [ %call4, %sw.epilog.if.end_crit_edge ]
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.44, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %4, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.44, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %prev17.i.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %10, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wmi_lock, i32 noundef %call468) #4
  %data = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 19
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %14, align 1
  %call10 = tail call ptr @skb_pull(ptr noundef nonnull %4, i32 noundef 4) #4
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i16 %16, label %if.end.sw.epilog_crit_edge [
    i16 4098, label %sw.bb
    i16 4099, label %sw.bb12
    i16 4103, label %sw.bb15
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ath9k_htc_swba(ptr noundef %1, ptr noundef %call10) #4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %hw = getelementptr inbounds %struct.ath9k_htc_priv, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %fatal_work = getelementptr inbounds %struct.ath9k_htc_priv, ptr %19, i32 0, i32 46
  tail call void @ieee80211_queue_work(ptr noundef %21, ptr noundef %fatal_work) #4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  %22 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %initialized, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool17.not = icmp eq i8 %23, 0
  br i1 %tobool17.not, label %sw.bb15.sw.epilog_crit_edge, label %if.end25

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end25:                                         ; preds = %sw.bb15
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #4
  %24 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tx, align 4
  %26 = and i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool30.not = icmp eq i8 %26, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #4
  br i1 %tobool30.not, label %if.end34, label %if.end25.sw.epilog_crit_edge

if.end25.sw.epilog_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end34:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ath9k_htc_txstatus(ptr noundef %1, ptr noundef %call10) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end34, %if.end25.sw.epilog_crit_edge, %sw.bb15.sw.epilog_crit_edge, %sw.bb12, %sw.bb, %if.end.sw.epilog_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %4, i32 noundef 0) #4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wmi_lock) #4
  %27 = ptrtoint ptr %wmi_event_queue to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wmi_event_queue, align 4
  %cmp.i.i = icmp eq ptr %28, %wmi_event_queue
  %tobool.not.i63 = icmp eq ptr %28, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i63
  br i1 %tobool.not.i, label %sw.epilog.if.then_crit_edge, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_stop_wmi(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wmi1 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %wmi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wmi1, align 4
  %op_mutex = getelementptr inbounds %struct.wmi, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %op_mutex, i32 noundef 0) #4
  %stopped = getelementptr inbounds %struct.wmi, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %stopped, align 4
  tail call void @mutex_unlock(ptr noundef %op_mutex) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_destroy_wmi(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wmi, align 4
  tail call void @kfree(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_wmi_event_drain(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wmi, align 4
  %wmi_event_tasklet = getelementptr inbounds %struct.wmi, ptr %1, i32 0, i32 7
  tail call void @tasklet_kill(ptr noundef %wmi_event_tasklet) #4
  %2 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wmi, align 4
  %wmi_lock = getelementptr inbounds %struct.wmi, ptr %3, i32 0, i32 14
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wmi_lock) #4
  %4 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wmi, align 4
  %wmi_event_queue = getelementptr inbounds %struct.wmi, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %wmi_event_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wmi_event_queue, align 4
  %cmp.i.i2.i = icmp eq ptr %7, %wmi_event_queue
  %tobool.not.i13.i = icmp eq ptr %7, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %entry.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

entry.__skb_queue_purge.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %entry
  %qlen.i.i.i = getelementptr inbounds %struct.wmi, ptr %5, i32 0, i32 6, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %8 = phi ptr [ %7, %while.body.lr.ph.i ], [ %18, %while.body.i.while.body.i_crit_edge ]
  %9 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.44, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %8, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.44, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %14, ptr %prev17.i.i.i, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %12, ptr %14, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %8, i32 noundef 0) #4
  %17 = ptrtoint ptr %wmi_event_queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wmi_event_queue, align 4
  %cmp.i.i.i = icmp eq ptr %18, %wmi_event_queue
  %tobool.not.i1.i = icmp eq ptr %18, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %entry.__skb_queue_purge.exit_crit_edge
  %19 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wmi, align 4
  %wmi_lock8 = getelementptr inbounds %struct.wmi, ptr %20, i32 0, i32 14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wmi_lock8, i32 noundef %call3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_swba(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_txstatus(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_fatal_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr i8, ptr %work, i32 -1780
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_mask, align 4
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.9, ptr noundef %common.i, ptr noundef nonnull @.str.10) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -1788
  tail call void @ath9k_htc_reset(ptr noundef %add.ptr) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_wmi_connect(ptr noundef %htc, ptr noundef %wmi, ptr nocapture noundef writeonly %wmi_ctrl_epid) local_unnamed_addr #0 align 64 {
entry:
  %connect = alloca %struct.htc_service_connreq, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %connect) #4
  %0 = getelementptr inbounds %struct.htc_service_connreq, ptr %connect, i32 0, i32 3
  %1 = getelementptr inbounds %struct.htc_service_connreq, ptr %connect, i32 0, i32 3, i32 1
  %2 = getelementptr inbounds %struct.htc_service_connreq, ptr %connect, i32 0, i32 3, i32 2
  %htc1 = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 1
  %3 = ptrtoint ptr %htc1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %htc, ptr %htc1, align 4
  %4 = ptrtoint ptr %connect to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %connect, align 8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %wmi, ptr %0, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ath9k_wmi_ctrl_tx, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ath9k_wmi_ctrl_rx, ptr %2, align 8
  store i16 256, ptr %connect, align 8
  %ctrl_epid = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %call = call i32 @htc_connect_service(ptr noundef %htc, ptr noundef nonnull %connect, ptr noundef %ctrl_epid) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %ctrl_epid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrl_epid, align 4
  %10 = ptrtoint ptr %wmi_ctrl_epid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %wmi_ctrl_epid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %connect) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_wmi_ctrl_tx(ptr nocapture noundef readnone %priv, ptr noundef %skb, i32 noundef %epid, i1 noundef zeroext %txok) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_wmi_ctrl_rx(ptr noundef %priv, ptr noundef %skb, i32 noundef %epid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %stopped = getelementptr inbounds %struct.wmi, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stopped, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.free_skb_crit_edge, !prof !104

entry.free_skb_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_skb

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %3, align 1
  %6 = and i16 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool3.not = icmp eq i16 %6, 0
  %wmi_lock19 = getelementptr inbounds %struct.wmi, ptr %priv, i32 0, i32 14
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wmi_lock19) #4
  br i1 %tobool3.not, label %do.body13, label %do.body5

do.body5:                                         ; preds = %if.end
  %wmi_event_queue = getelementptr inbounds %struct.wmi, ptr %priv, i32 0, i32 6
  %prev.i.i = getelementptr inbounds %struct.wmi, ptr %priv, i32 0, i32 6, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %wmi_event_queue, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 1
  %10 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %skb, ptr %8, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.wmi, ptr %priv, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wmi_lock19, i32 noundef %call21) #4
  %state.i = getelementptr inbounds %struct.wmi, ptr %priv, i32 0, i32 7, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body5.cleanup_crit_edge

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  %wmi_event_tasklet = getelementptr inbounds %struct.wmi, ptr %priv, i32 0, i32 7
  tail call void @__tasklet_schedule(ptr noundef %wmi_event_tasklet) #4
  br label %cleanup

do.body13:                                        ; preds = %if.end
  %seq_no = getelementptr inbounds %struct.wmi_cmd_hdr, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %seq_no to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %seq_no, align 1
  %last_seq_id = getelementptr inbounds %struct.wmi, ptr %priv, i32 0, i32 5
  %16 = ptrtoint ptr %last_seq_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %last_seq_id, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp28.not = icmp eq i16 %15, %17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wmi_lock19, i32 noundef %call21) #4
  br i1 %cmp28.not, label %if.end32, label %do.body13.free_skb_crit_edge

do.body13.free_skb_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_skb

if.end32:                                         ; preds = %do.body13
  %call.i52 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #4
  %cmd_rsp_buf.i = getelementptr inbounds %struct.wmi, ptr %priv, i32 0, i32 9
  %18 = ptrtoint ptr %cmd_rsp_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd_rsp_buf.i, align 4
  %cmp.not.i = icmp eq ptr %19, null
  br i1 %cmp.not.i, label %if.end32.ath9k_wmi_rsp_callback.exit_crit_edge, label %land.lhs.true.i

if.end32.ath9k_wmi_rsp_callback.exit_crit_edge:   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath9k_wmi_rsp_callback.exit

land.lhs.true.i:                                  ; preds = %if.end32
  %cmd_rsp_len.i = getelementptr inbounds %struct.wmi, ptr %priv, i32 0, i32 10
  %20 = ptrtoint ptr %cmd_rsp_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd_rsp_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1.not.i = icmp eq i32 %21, 0
  br i1 %cmp1.not.i, label %land.lhs.true.i.ath9k_wmi_rsp_callback.exit_crit_edge, label %if.then.i53

land.lhs.true.i.ath9k_wmi_rsp_callback.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ath9k_wmi_rsp_callback.exit

if.then.i53:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %24 = call ptr @memcpy(ptr %19, ptr %23, i32 %21)
  br label %ath9k_wmi_rsp_callback.exit

ath9k_wmi_rsp_callback.exit:                      ; preds = %if.then.i53, %land.lhs.true.i.ath9k_wmi_rsp_callback.exit_crit_edge, %if.end32.ath9k_wmi_rsp_callback.exit_crit_edge
  %cmd_wait.i = getelementptr inbounds %struct.wmi, ptr %priv, i32 0, i32 4
  tail call void @complete(ptr noundef %cmd_wait.i) #4
  br label %free_skb

free_skb:                                         ; preds = %ath9k_wmi_rsp_callback.exit, %do.body13.free_skb_crit_edge, %entry.free_skb_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %if.then.i, %do.body5.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @htc_connect_service(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_wmi_cmd(ptr noundef %wmi, i32 noundef %cmd_id, ptr noundef readonly %cmd_buf, i32 noundef %cmd_len, ptr noundef %rsp_buf, i32 noundef %rsp_len, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wmi, align 4
  %ah1 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah1, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %ah_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %ah_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ah_flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %cmd_len, 12
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #4
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 12
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %9, i32 12
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd_len)
  %cmp.not = icmp eq i32 %cmd_len, 0
  %cmp8.not = icmp eq ptr %cmd_buf, null
  %or.cond = or i1 %cmp8.not, %cmp.not
  br i1 %or.cond, label %if.end5.if.end12_crit_edge, label %if.then10

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %call.i74 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %cmd_len) #4
  %10 = call ptr @memcpy(ptr %call.i74, ptr %cmd_buf, i32 %cmd_len)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end5.if.end12_crit_edge
  %op_mutex = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %op_mutex, i32 noundef 0) #4
  %stopped = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 11
  %11 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %stopped, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool13.not = icmp eq i8 %12, 0
  br i1 %tobool13.not, label %if.end17, label %if.end12.do.body34_crit_edge, !prof !104

if.end12.do.body34_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body34

if.end17:                                         ; preds = %if.end12
  %cmd_rsp_buf = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 9
  %13 = ptrtoint ptr %cmd_rsp_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %rsp_buf, ptr %cmd_rsp_buf, align 4
  %cmd_rsp_len = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 10
  %14 = ptrtoint ptr %cmd_rsp_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %rsp_len, ptr %cmd_rsp_len, align 4
  %call.i75 = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 4) #4
  %conv.i = trunc i32 %cmd_id to i16
  %15 = ptrtoint ptr %call.i75 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %conv.i, ptr %call.i75, align 1
  %tx_seq_id.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 8
  %16 = ptrtoint ptr %tx_seq_id.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tx_seq_id.i, align 4
  %inc.i = add i16 %17, 1
  store i16 %inc.i, ptr %tx_seq_id.i, align 4
  %seq_no.i = getelementptr inbounds %struct.wmi_cmd_hdr, ptr %call.i75, i32 0, i32 1
  %18 = ptrtoint ptr %seq_no.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %inc.i, ptr %seq_no.i, align 1
  %wmi_lock.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 14
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wmi_lock.i) #4
  %19 = ptrtoint ptr %tx_seq_id.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tx_seq_id.i, align 4
  %last_seq_id.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 5
  %21 = ptrtoint ptr %last_seq_id.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %last_seq_id.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wmi_lock.i, i32 noundef %call4.i) #4
  %htc.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 1
  %22 = ptrtoint ptr %htc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %htc.i, align 4
  %ctrl_epid.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %24 = ptrtoint ptr %ctrl_epid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ctrl_epid.i, align 4
  %call9.i = tail call i32 @htc_send_epid(ptr noundef %23, ptr noundef nonnull %call.i, i32 noundef %25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool20.not = icmp eq i32 %call9.i, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.do.body34_crit_edge

if.end17.do.body34_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body34

if.end22:                                         ; preds = %if.end17
  %cmd_wait = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 4
  %call23 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_wait, i32 noundef %timeout) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.body, label %if.end32

do.body:                                          ; preds = %if.end22
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug_mask, align 4
  %and26 = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body.do.end_crit_edge, label %if.then28

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then28:                                        ; preds = %do.body
  %switch.tableidx = add i32 %cmd_id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %switch.tableidx)
  %28 = icmp ult i32 %switch.tableidx, 32
  br i1 %28, label %switch.lookup, label %if.then28.wmi_cmd_to_name.exit_crit_edge

if.then28.wmi_cmd_to_name.exit_crit_edge:         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %wmi_cmd_to_name.exit

switch.lookup:                                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [32 x ptr], ptr @switch.table.ath9k_wmi_cmd, i32 0, i32 %switch.tableidx
  %29 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %wmi_cmd_to_name.exit

wmi_cmd_to_name.exit:                             ; preds = %switch.lookup, %if.then28.wmi_cmd_to_name.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.47, %if.then28.wmi_cmd_to_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.9, ptr noundef %common.i, ptr noundef nonnull @.str.11, ptr noundef nonnull %retval.0.i) #4
  br label %do.end

do.end:                                           ; preds = %wmi_cmd_to_name.exit, %do.body.do.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %op_mutex) #4
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %op_mutex) #4
  br label %cleanup

do.body34:                                        ; preds = %if.end17.do.body34_crit_edge, %if.end12.do.body34_crit_edge
  %ret.0 = phi i32 [ %call9.i, %if.end17.do.body34_crit_edge ], [ -71, %if.end12.do.body34_crit_edge ]
  %debug_mask35 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %debug_mask35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug_mask35, align 4
  %and36 = and i32 %31, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body34.do.end42_crit_edge, label %if.then38

do.body34.do.end42_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end42

if.then38:                                        ; preds = %do.body34
  %switch.tableidx111 = add i32 %cmd_id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %switch.tableidx111)
  %32 = icmp ult i32 %switch.tableidx111, 32
  br i1 %32, label %switch.lookup110, label %if.then38.wmi_cmd_to_name.exit109_crit_edge

if.then38.wmi_cmd_to_name.exit109_crit_edge:      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %wmi_cmd_to_name.exit109

switch.lookup110:                                 ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep112 = getelementptr inbounds [32 x ptr], ptr @switch.table.ath9k_wmi_cmd.48, i32 0, i32 %switch.tableidx111
  %33 = ptrtoint ptr %switch.gep112 to i32
  call void @__asan_load4_noabort(i32 %33)
  %switch.load113 = load ptr, ptr %switch.gep112, align 4
  br label %wmi_cmd_to_name.exit109

wmi_cmd_to_name.exit109:                          ; preds = %switch.lookup110, %if.then38.wmi_cmd_to_name.exit109_crit_edge
  %retval.0.i108 = phi ptr [ %switch.load113, %switch.lookup110 ], [ @.str.47, %if.then38.wmi_cmd_to_name.exit109_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.9, ptr noundef %common.i, ptr noundef nonnull @.str.12, ptr noundef nonnull %retval.0.i108) #4
  br label %do.end42

do.end42:                                         ; preds = %wmi_cmd_to_name.exit109, %do.body34.do.end42_crit_edge
  tail call void @mutex_unlock(ptr noundef %op_mutex) #4
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.end32, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end42 ], [ 0, %if.end32 ], [ -110, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @htc_send_epid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !22, !24, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @ath9k_init_wmi.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 102, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ath9k_init_wmi.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 103, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ath9k_init_wmi.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 104, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ath9k_init_wmi.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 105, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ath9k_init_wmi.__key.7, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 106, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 199, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 342, i32 3}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 353, i32 2}
!22 = !{ptr @skb_queue_head_init.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @init_completion.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../include/linux/completion.h", i32 87, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 23, i32 10}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 25, i32 10}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 27, i32 10}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 29, i32 10}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 31, i32 10}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 33, i32 10}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 35, i32 10}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 37, i32 10}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 39, i32 10}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 41, i32 10}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 43, i32 10}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 45, i32 10}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 47, i32 10}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 49, i32 10}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 51, i32 10}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 53, i32 10}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 55, i32 10}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 57, i32 10}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 59, i32 10}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 61, i32 10}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 63, i32 10}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 65, i32 10}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 67, i32 10}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 69, i32 10}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 71, i32 10}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 73, i32 10}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 75, i32 10}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 77, i32 10}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 79, i32 10}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 81, i32 10}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 83, i32 10}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 85, i32 10}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath9k/wmi.c", i32 88, i32 9}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i8 0, i8 2}
!104 = !{!"branch_weights", i32 2000, i32 1}
