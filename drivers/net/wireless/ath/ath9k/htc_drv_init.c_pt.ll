; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/htc_drv_init.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/htc_drv_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_tpt_blink = type { i32, i32 }
%struct.ath_ps_ops = type { ptr, ptr }
%struct.ath_bus_ops = type { i32, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.wmi_fw_version = type { i16, i16 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.ath9k_htc_priv = type { ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i32, i32, i32, %struct.ath9k_hw_cal_data, %struct.ath_spec_scan_priv, %struct.spinlock, %struct.ath_beacon_config, %struct.htc_beacon, %struct.ath9k_htc_rx, %struct.ath9k_htc_tx, %struct.tasklet_struct, %struct.tasklet_struct, %struct.delayed_work, %struct.tasklet_struct, %struct.work_struct, %struct.work_struct, %struct.mutex, i32, i8, i8, i32, i8, [32 x i8], %struct.led_classdev, %struct.work_struct, i32, [4 x i32], %struct.ath_btcoex, %struct.delayed_work, %struct.delayed_work, %struct.ath9k_debug, %struct.mutex, ptr }
%struct.ath9k_hw_cal_data = type { i16, i16, i32, i32, i8, i8, [2 x i8], [3 x i16], [3 x [24 x i32]], [3 x i32], [8 x [3 x i32]], [3 x [16 x i32]], [3 x [6 x i32]], [6 x %struct.ath9k_nfcal_hist] }
%struct.ath9k_nfcal_hist = type { [5 x i16], i8, i16, i8 }
%struct.ath_spec_scan_priv = type { ptr, ptr, i32, %struct.ath_spec_scan }
%struct.ath_spec_scan = type { i8, i8, i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath_beacon_config = type { ptr, i32, i16, i16, i8, i8, i8, i32, i32 }
%struct.htc_beacon = type { i32, [2 x ptr], i32, i32, i32, i32 }
%struct.ath9k_htc_rx = type { %struct.list_head, %struct.spinlock, i8 }
%struct.list_head = type { ptr, ptr }
%struct.ath9k_htc_tx = type { i8, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, [8 x i32], %struct.timer_list, %struct.spinlock, i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.134, i32 }
%struct.atomic_t = type { i32 }
%union.anon.134 = type { ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath_btcoex = type { i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ath9k_debug = type { ptr, %struct.ath_tx_stats, %struct.ath_rx_stats, %struct.ath_skbrx_stats }
%struct.ath_tx_stats = type { i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.ath_rx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [39 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_skbrx_stats = type { i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.htc_target = type { ptr, ptr, ptr, ptr, [22 x %struct.htc_endpoint], %struct.completion, %struct.completion, %struct.list_head, i32, i16, i16, i8, %struct.atomic_t }
%struct.htc_endpoint = type { i16, %struct.htc_ep_callbacks, i32, i32, i8, i8 }
%struct.htc_ep_callbacks = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.ath_hw = type { %struct.ath_ops, ptr, ptr, %struct.ath_common, %struct.ath9k_hw_version, %struct.ath9k_ops_config, %struct.ath9k_hw_capabilities, [38 x %struct.ath9k_channel], ptr, %union.anon.129, ptr, i8, i8, i8, i8, i8, i8, i16, [6 x i32], %struct.ath_nf_limits, %struct.ath_nf_limits, i16, i32, i32, i32, i16, i8, i8, i32, i32, i8, ptr, %struct.ath9k_pacal_info, %struct.ar5416Stats, [10 x %struct.ath9k_tx_queue_info], [4 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i8, i32, i32, i32, %struct.ath9k_cal_list, %struct.ath9k_cal_list, %struct.ath9k_cal_list, ptr, ptr, ptr, %union.anon.130, %union.anon.131, %union.anon.132, %union.anon.133, i16, i8, i32, i32, %struct.ath_hw_private_ops, %struct.ath_hw_ops, ptr, i32, i32, i32, i32, i32, i32, %struct.ar5416AniState, %struct.ath_btcoex_hw, i32, i8, i8, %struct.ath_hw_radar_conf, [22 x i32], i32, i32, i32, i32, i32, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], i32, i32, %struct.ath_gen_timer_table, ptr, i32, i32, i16, i16, i32, i32, i8, i32, i32, i32, i32, i8, [32 x i32], [32 x i8], i32, i32, %struct.ath9k_hw_wow, i8, ptr, ptr, i8, i8, ptr, ptr, i32, %struct.ath_dynack, i8, [36 x i8], [36 x i8], i8, i32, i32 }
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
%struct.ath9k_hw_version = type { i32, i16, i16, i32, i16, i16, i16, i16, i32 }
%struct.ath9k_ops_config = type { i32, i32, i8, i32, i8, i32, i32, i32, i32, i8, i32, i8, i8, i8, i16, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ath9k_hw_capabilities = type { i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8 }
%struct.ath9k_channel = type { ptr, i16, i16, i16 }
%union.anon.129 = type { %struct.ar5416_eeprom_def }
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
%union.anon.130 = type { [3 x i32] }
%union.anon.131 = type { [3 x i32] }
%union.anon.132 = type { [3 x i32] }
%union.anon.133 = type { [3 x i32] }
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
%struct.wmi = type { ptr, ptr, i32, %struct.mutex, %struct.completion, i16, %struct.sk_buff_head, %struct.tasklet_struct, i16, ptr, i32, i8, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.atomic_t, [62 x %struct.register_write], i32, %struct.mutex, %struct.atomic_t, [15 x %struct.register_rmw], i32, %struct.mutex }
%struct.register_write = type { i32, i32 }
%struct.register_rmw = type { i32, i32, i32 }

@__UNIQUE_ID_author354 = internal constant [40 x i8] c"ath9k_htc.author=Atheros Communications\00", section ".modinfo", align 1
@__UNIQUE_ID_file355 = internal constant [56 x i8] c"ath9k_htc.file=drivers/net/wireless/ath/ath9k/ath9k_htc\00", section ".modinfo", align 1
@__UNIQUE_ID_license356 = internal constant [31 x i8] c"ath9k_htc.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description357 = internal constant [72 x i8] c"ath9k_htc.description=Atheros driver 802.11n HTC based wireless devices\00", section ".modinfo", align 1
@__param_str_debug = internal constant [16 x i8] c"ath9k_htc.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@ath9k_debug = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @ath9k_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype358 = internal constant [30 x i8] c"ath9k_htc.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug359 = internal constant [36 x i8] c"ath9k_htc.parm=debug:Debugging mask\00", section ".modinfo", align 1
@__param_str_nohwcrypt = internal constant [20 x i8] c"ath9k_htc.nohwcrypt\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@htc_modparam_nohwcrypt = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_nohwcrypt = internal constant %struct.kernel_param { ptr @__param_str_nohwcrypt, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @htc_modparam_nohwcrypt } }, section "__param", align 4
@__UNIQUE_ID_nohwcrypttype360 = internal constant [33 x i8] c"ath9k_htc.parmtype=nohwcrypt:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nohwcrypt361 = internal constant [53 x i8] c"ath9k_htc.parm=nohwcrypt:Disable hardware encryption\00", section ".modinfo", align 1
@__param_str_btcoex_enable = internal constant [24 x i8] c"ath9k_htc.btcoex_enable\00", align 1
@ath9k_htc_btcoex_enable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_btcoex_enable = internal constant %struct.kernel_param { ptr @__param_str_btcoex_enable, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @ath9k_htc_btcoex_enable } }, section "__param", align 4
@__UNIQUE_ID_btcoex_enabletype362 = internal constant [37 x i8] c"ath9k_htc.parmtype=btcoex_enable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_btcoex_enable363 = internal constant [56 x i8] c"ath9k_htc.parm=btcoex_enable:Enable wifi-BT coexistence\00", section ".modinfo", align 1
@__param_str_ps_enable = internal constant [20 x i8] c"ath9k_htc.ps_enable\00", align 1
@ath9k_ps_enable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ps_enable = internal constant %struct.kernel_param { ptr @__param_str_ps_enable, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @ath9k_ps_enable } }, section "__param", align 4
@__UNIQUE_ID_ps_enabletype364 = internal constant [33 x i8] c"ath9k_htc.parmtype=ps_enable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ps_enable365 = internal constant [47 x i8] c"ath9k_htc.parm=ps_enable:Enable WLAN PowerSave\00", section ".modinfo", align 1
@htc_use_dev_fw = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_str_use_dev_fw = internal constant [21 x i8] c"ath9k_htc.use_dev_fw\00", align 1
@__param_use_dev_fw = internal constant %struct.kernel_param { ptr @__param_str_use_dev_fw, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @htc_use_dev_fw } }, section "__param", align 4
@__UNIQUE_ID_use_dev_fwtype366 = internal constant [34 x i8] c"ath9k_htc.parmtype=use_dev_fw:int\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dev_fw367 = internal constant [53 x i8] c"ath9k_htc.parm=use_dev_fw:Use development FW version\00", section ".modinfo", align 1
@ath9k_htc_led_blink = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_str_blink = internal constant [16 x i8] c"ath9k_htc.blink\00", align 1
@__param_blink = internal constant %struct.kernel_param { ptr @__param_str_blink, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @ath9k_htc_led_blink } }, section "__param", align 4
@__UNIQUE_ID_blinktype368 = internal constant [29 x i8] c"ath9k_htc.parmtype=blink:int\00", section ".modinfo", align 1
@__UNIQUE_ID_blink369 = internal constant [50 x i8] c"ath9k_htc.parm=blink:Enable LED blink on activity\00", section ".modinfo", align 1
@ath9k_htc_ops = external dso_local global %struct.ieee80211_ops, align 4
@__initcall__kmod_ath9k_htc__370_1027_ath9k_htc_init6 = internal global ptr @ath9k_htc_init, section ".initcall6.init", align 4
@ath9k_htc_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016ath9k_htc: Driver unloaded\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ath9k_htc_exit\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/ath/ath9k/htc_drv_init.c\00", [50 x i8] zeroinitializer }, align 32
@ath9k_htc_exit._entry_ptr = internal global ptr @ath9k_htc_exit._entry, section ".printk_index", align 4
@__exitcall_ath9k_htc_exit = internal global ptr @ath9k_htc_exit, section ".exitcall.exit", align 4
@ath9k_htc_wait_for_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 91, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ath9k_htc: Target is unresponsive\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ath9k_htc_wait_for_target\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ath9k_htc_wait_for_target._entry_ptr = internal global ptr @ath9k_htc_wait_for_target._entry, section ".printk_index", align 4
@ath9k_init_htc_services._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 215, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ath9k_htc: HTC initialized with %d credits\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ath9k_init_htc_services\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ath9k_init_htc_services._entry_ptr = internal global ptr @ath9k_init_htc_services._entry, section ".printk_index", align 4
@ath9k_init_htc_services._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 220, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ath9k_htc: Unable to initialize HTC services\0A\00", [50 x i8] zeroinitializer }, align 32
@ath9k_init_htc_services._entry_ptr.12 = internal global ptr @ath9k_init_htc_services._entry.10, section ".printk_index", align 4
@ath9k_htc_tpt_blink = internal constant { [10 x %struct.ieee80211_tpt_blink], [48 x i8] } { [10 x %struct.ieee80211_tpt_blink] [%struct.ieee80211_tpt_blink { i32 0, i32 334 }, %struct.ieee80211_tpt_blink { i32 1024, i32 260 }, %struct.ieee80211_tpt_blink { i32 5120, i32 220 }, %struct.ieee80211_tpt_blink { i32 10240, i32 190 }, %struct.ieee80211_tpt_blink { i32 20480, i32 170 }, %struct.ieee80211_tpt_blink { i32 51200, i32 150 }, %struct.ieee80211_tpt_blink { i32 71680, i32 130 }, %struct.ieee80211_tpt_blink { i32 102400, i32 110 }, %struct.ieee80211_tpt_blink { i32 204800, i32 80 }, %struct.ieee80211_tpt_blink { i32 307200, i32 50 }], [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to create debugfs files\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"WMI:%d, BCN:%d, CAB:%d, UAPSD:%d, MGMT:%d, BE:%d, BK:%d, VI:%d, VO:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@ath9k_init_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 908, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ath9k_init_device\00", [46 x i8] zeroinitializer }, align 32
@ath9k_init_device._entry_ptr = internal global ptr @ath9k_init_device._entry, section ".printk_index", align 4
@ath9k_htc_ps_ops = internal constant { %struct.ath_ps_ops, [24 x i8] } { %struct.ath_ps_ops { ptr @ath9k_htc_op_ps_wakeup, ptr @ath9k_htc_op_ps_restore }, [24 x i8] zeroinitializer }, align 32
@ath9k_usb_bus_ops = internal constant { %struct.ath_bus_ops, [44 x i8] } { %struct.ath_bus_ops { i32 2, ptr @ath_usb_read_cachesize, ptr @ath_usb_eeprom_read, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ath9k_init_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->beacon_lock\00", [45 x i8] zeroinitializer }, align 32
@ath9k_init_priv.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->tx.tx_lock\00", [46 x i8] zeroinitializer }, align 32
@ath9k_init_priv.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&priv->mutex\00", [19 x i8] zeroinitializer }, align 32
@ath9k_init_priv.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->htc_pm_lock\00", [45 x i8] zeroinitializer }, align 32
@ath9k_init_priv.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&priv->ani_work)->work)\00", [52 x i8] zeroinitializer }, align 32
@ath9k_init_priv.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&priv->ani_work)->timer\00", [38 x i8] zeroinitializer }, align 32
@ath9k_init_priv.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&priv->ps_work)\00", [62 x i8] zeroinitializer }, align 32
@ath9k_init_priv.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&priv->fatal_work)\00", [59 x i8] zeroinitializer }, align 32
@ath9k_init_priv.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&priv->tx.cleanup_timer)\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Unable to initialize hardware; initialization status: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"REGISTER READ FAILED: (0x%04x, %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Multiple REGISTER READ FAILED (count: %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"REGISTER WRITE FAILED, multi len: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"REGISTER WRITE FAILED:(0x%04x, %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"REGISTER RMW FAILED, multi len: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"REGISTER RMW FAILED:(0x%04x, %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to setup BEACON xmit queue\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to setup CAB xmit queue\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to setup xmit queue for BE traffic\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to setup xmit queue for BK traffic\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to setup xmit queue for VI traffic\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to setup xmit queue for VO traffic\0A\00", [53 x i8] zeroinitializer }, align 32
@if_comb = internal constant { %struct.ieee80211_iface_combination, [44 x i8] } { %struct.ieee80211_iface_combination { ptr @if_limits, i32 1, i16 2, i8 2, i8 0, i8 0, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@if_limits = internal constant { [2 x %struct.ieee80211_iface_limit], [24 x i8] } { [2 x %struct.ieee80211_iface_limit] [%struct.ieee80211_iface_limit { i16 2, i16 260 }, %struct.ieee80211_iface_limit { i16 2, i16 648 }], [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d.%d\00", [26 x i8] zeroinitializer }, align 32
@ath9k_init_firmware_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 806, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ath9k_htc: FW Version: %d.%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ath9k_init_firmware_version\00", [36 x i8] zeroinitializer }, align 32
@ath9k_init_firmware_version._entry_ptr = internal global ptr @ath9k_init_firmware_version._entry, section ".printk_index", align 4
@ath9k_init_firmware_version._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 815, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ath9k_htc: Please upgrade to FW version %d.%d\0A\00", [49 x i8] zeroinitializer }, align 32
@ath9k_init_firmware_version._entry_ptr.53 = internal global ptr @ath9k_init_firmware_version._entry.51, section ".printk_index", align 4
@ath9k_init_firmware_version._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.2, i32 823, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FW RMW support: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@ath9k_init_firmware_version._entry_ptr.56 = internal global ptr @ath9k_init_firmware_version._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"On\00", [29 x i8] zeroinitializer }, align 32
@ath9k_htc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013ath9k_htc: No USB devices found, driver not installed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ath9k_htc_init\00", [17 x i8] zeroinitializer }, align 32
@ath9k_htc_init._entry_ptr = internal global ptr @ath9k_htc_init._entry, section ".printk_index", align 4
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"ath9k_debug\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 25, i32 21 }
@___asan_gen_.64 = private unnamed_addr constant [23 x i8] c"htc_modparam_nohwcrypt\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 29, i32 5 }
@___asan_gen_.67 = private unnamed_addr constant [24 x i8] c"ath9k_htc_btcoex_enable\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 33, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"ath9k_ps_enable\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 37, i32 12 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"htc_use_dev_fw\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 41, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant [20 x i8] c"ath9k_htc_led_blink\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 46, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1032, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 91, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 214, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 220, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c"ath9k_htc_tpt_blink\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 50, i32 41 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 891, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 895, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 908, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"ath9k_htc_ps_ops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 74, i32 32 }
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"ath9k_usb_bus_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 538, i32 33 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 644, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 645, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 646, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 647, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 650, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 651, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 652, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 653, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 664, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 247, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 274, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 295, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 318, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 444, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 484, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 554, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 560, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 565, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 570, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 574, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 578, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant [8 x i8] c"if_comb\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 705, i32 49 }
@___asan_gen_.247 = private unnamed_addr constant [10 x i8] c"if_limits\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 695, i32 43 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 800, i32 65 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 804, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 814, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 822, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.287 = private constant [49 x i8] c"../drivers/net/wireless/ath/ath9k/htc_drv_init.c\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1021, i32 3 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_blink369, ptr @__UNIQUE_ID_blinktype368, ptr @__UNIQUE_ID_btcoex_enable363, ptr @__UNIQUE_ID_btcoex_enabletype362, ptr @__UNIQUE_ID_debug359, ptr @__UNIQUE_ID_debugtype358, ptr @__UNIQUE_ID_description357, ptr @__UNIQUE_ID_file355, ptr @__UNIQUE_ID_license356, ptr @__UNIQUE_ID_nohwcrypt361, ptr @__UNIQUE_ID_nohwcrypttype360, ptr @__UNIQUE_ID_ps_enable365, ptr @__UNIQUE_ID_ps_enabletype364, ptr @__UNIQUE_ID_use_dev_fw367, ptr @__UNIQUE_ID_use_dev_fwtype366, ptr @__exitcall_ath9k_htc_exit, ptr @__initcall__kmod_ath9k_htc__370_1027_ath9k_htc_init6, ptr @__param_blink, ptr @__param_btcoex_enable, ptr @__param_debug, ptr @__param_nohwcrypt, ptr @__param_ps_enable, ptr @__param_use_dev_fw, ptr @ath9k_htc_exit, ptr @ath9k_htc_exit._entry, ptr @ath9k_htc_exit._entry_ptr, ptr @ath9k_htc_init._entry, ptr @ath9k_htc_init._entry_ptr, ptr @ath9k_htc_wait_for_target._entry, ptr @ath9k_htc_wait_for_target._entry_ptr, ptr @ath9k_init_device._entry, ptr @ath9k_init_device._entry_ptr, ptr @ath9k_init_firmware_version._entry, ptr @ath9k_init_firmware_version._entry.51, ptr @ath9k_init_firmware_version._entry.54, ptr @ath9k_init_firmware_version._entry_ptr, ptr @ath9k_init_firmware_version._entry_ptr.53, ptr @ath9k_init_firmware_version._entry_ptr.56, ptr @ath9k_init_htc_services._entry, ptr @ath9k_init_htc_services._entry.10, ptr @ath9k_init_htc_services._entry_ptr, ptr @ath9k_init_htc_services._entry_ptr.12, ptr @ath9k_debug, ptr @htc_modparam_nohwcrypt, ptr @ath9k_htc_btcoex_enable, ptr @ath9k_ps_enable, ptr @htc_use_dev_fw, ptr @ath9k_htc_led_blink, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @ath9k_htc_tpt_blink, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @ath9k_htc_ps_ops, ptr @ath9k_usb_bus_ops, ptr @ath9k_init_priv.__key, ptr @.str.18, ptr @ath9k_init_priv.__key.19, ptr @.str.20, ptr @ath9k_init_priv.__key.21, ptr @.str.22, ptr @ath9k_init_priv.__key.23, ptr @.str.24, ptr @ath9k_init_priv.__key.25, ptr @.str.26, ptr @ath9k_init_priv.__key.27, ptr @.str.28, ptr @ath9k_init_priv.__key.29, ptr @.str.30, ptr @ath9k_init_priv.__key.31, ptr @.str.32, ptr @ath9k_init_priv.__key.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @if_comb, ptr @if_limits, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htc_modparam_nohwcrypt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_htc_btcoex_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_ps_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htc_use_dev_fw to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_htc_led_blink to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_htc_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_htc_wait_for_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_htc_services._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_htc_services._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_htc_tpt_blink to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_htc_ps_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_usb_bus_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_priv.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_priv.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_priv.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_priv.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_priv.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_priv.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_priv.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_priv.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_comb to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_limits to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_firmware_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_firmware_version._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_firmware_version._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_htc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_htc_probe_device(ptr noundef %htc_handle, ptr noundef %dev, i16 noundef zeroext %devid, ptr noundef %product, i32 noundef %drv_info) local_unnamed_addr #0 align 64 {
entry:
  %cmd_rsp.i.i = alloca %struct.wmi_fw_version, align 4
  %csz.i.i = alloca i32, align 4
  %hw_name.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 3048, ptr noundef nonnull @ath9k_htc_ops, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %hw2 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %hw2, align 4
  %htc = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %htc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %htc_handle, ptr %htc, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %1, align 4
  %drv_priv = getelementptr inbounds %struct.htc_target, ptr %htc_handle, i32 0, i32 1
  %5 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %drv_priv, align 4
  %6 = load ptr, ptr %1, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56, i32 1
  %9 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %parent.i.i, align 8
  %call5 = tail call fastcc i32 @ath9k_htc_wait_for_target(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.err_free_crit_edge

if.end.err_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @ath9k_init_wmi(ptr noundef %1) #9
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %wmi to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9, ptr %wmi, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end8.err_free_crit_edge, label %if.end13

if.end8.err_free_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free

if.end13:                                         ; preds = %if.end8
  %call14 = tail call fastcc i32 @ath9k_init_htc_services(ptr noundef %1, i32 noundef %drv_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.err_init_crit_edge

if.end13.err_init_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_init

if.end17:                                         ; preds = %if.end13
  %11 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw2, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hw_name.i) #9
  %13 = call ptr @memset(ptr %hw_name.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csz.i.i) #9
  %14 = ptrtoint ptr %csz.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %csz.i.i, align 4
  %call1.i.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8992, i32 noundef 3520, i32 noundef 2) #12
  %tobool.not.i.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end17.ath9k_init_priv.exit.thread.i_crit_edge, label %if.end.i.i

if.end17.ath9k_init_priv.exit.thread.i_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_init_priv.exit.thread.i

if.end.i.i:                                       ; preds = %if.end17
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %dev1.i.i = getelementptr inbounds %struct.ath_hw, ptr %call1.i.i.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %dev1.i.i, align 32
  %18 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw2, align 4
  %hw2.i.i = getelementptr inbounds %struct.ath_hw, ptr %call1.i.i.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %hw2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %hw2.i.i, align 4
  %devid3.i.i = getelementptr inbounds %struct.ath_hw, ptr %call1.i.i.i.i.i, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %devid3.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %devid, ptr %devid3.i.i, align 16
  %usbdev.i.i = getelementptr inbounds %struct.ath_hw, ptr %call1.i.i.i.i.i, i32 0, i32 4, i32 8
  %22 = ptrtoint ptr %usbdev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %drv_info, ptr %usbdev.i.i, align 32
  %ah_flags.i.i = getelementptr inbounds %struct.ath_hw, ptr %call1.i.i.i.i.i, i32 0, i32 24
  %23 = ptrtoint ptr %ah_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ah_flags.i.i, align 4
  %or.i.i = or i32 %24, 1
  store i32 %or.i.i, ptr %ah_flags.i.i, align 4
  %25 = ptrtoint ptr %call1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ath9k_regread, ptr %call1.i.i.i.i.i, align 4096
  %multi_read.i.i = getelementptr inbounds %struct.ath_ops, ptr %call1.i.i.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %multi_read.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ath9k_multi_regread, ptr %multi_read.i.i, align 4
  %write.i.i = getelementptr inbounds %struct.ath_ops, ptr %call1.i.i.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %write.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ath9k_regwrite, ptr %write.i.i, align 8
  %enable_write_buffer.i.i = getelementptr inbounds %struct.ath_ops, ptr %call1.i.i.i.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %enable_write_buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ath9k_enable_regwrite_buffer, ptr %enable_write_buffer.i.i, align 4
  %write_flush.i.i = getelementptr inbounds %struct.ath_ops, ptr %call1.i.i.i.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %write_flush.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ath9k_regwrite_flush, ptr %write_flush.i.i, align 16
  %enable_rmw_buffer.i.i = getelementptr inbounds %struct.ath_ops, ptr %call1.i.i.i.i.i, i32 0, i32 6
  %30 = ptrtoint ptr %enable_rmw_buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ath9k_enable_rmw_buffer, ptr %enable_rmw_buffer.i.i, align 8
  %rmw_flush.i.i = getelementptr inbounds %struct.ath_ops, ptr %call1.i.i.i.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %rmw_flush.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ath9k_reg_rmw_flush, ptr %rmw_flush.i.i, align 4
  %rmw.i.i = getelementptr inbounds %struct.ath_ops, ptr %call1.i.i.i.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ath9k_reg_rmw, ptr %rmw.i.i, align 4
  %ah12.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %ah12.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call1.i.i.i.i.i, ptr %ah12.i.i, align 4
  %common.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %call1.i.i.i.i.i, i32 0, i32 3
  %ops.i.i = getelementptr inbounds %struct.ath_hw, ptr %call1.i.i.i.i.i, i32 0, i32 3, i32 24
  %34 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call1.i.i.i.i.i, ptr %ops.i.i, align 16
  %ps_ops.i.i = getelementptr inbounds %struct.ath_hw, ptr %call1.i.i.i.i.i, i32 0, i32 3, i32 26
  %35 = ptrtoint ptr %ps_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ath9k_htc_ps_ops, ptr %ps_ops.i.i, align 8
  %bus_ops.i.i = getelementptr inbounds %struct.ath_hw, ptr %call1.i.i.i.i.i, i32 0, i32 3, i32 25
  %36 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ath9k_usb_bus_ops, ptr %bus_ops.i.i, align 4
  %37 = ptrtoint ptr %common.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call1.i.i.i.i.i, ptr %common.i.i.i, align 8
  %hw17.i.i = getelementptr inbounds %struct.ath_hw, ptr %call1.i.i.i.i.i, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %hw17.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %19, ptr %hw17.i.i, align 16
  %priv18.i.i = getelementptr inbounds %struct.ath_hw, ptr %call1.i.i.i.i.i, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %priv18.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %1, ptr %priv18.i.i, align 4
  %40 = load i32, ptr @ath9k_debug, align 4
  %debug_mask.i.i = getelementptr inbounds %struct.ath_hw, ptr %call1.i.i.i.i.i, i32 0, i32 3, i32 3
  %41 = ptrtoint ptr %debug_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %debug_mask.i.i, align 4
  %42 = load i32, ptr @ath9k_htc_btcoex_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp.i.i = icmp eq i32 %42, 1
  %btcoex_enabled.i.i = getelementptr inbounds %struct.ath_hw, ptr %call1.i.i.i.i.i, i32 0, i32 3, i32 27
  %frombool.i.i = zext i1 %cmp.i.i to i8
  %43 = ptrtoint ptr %btcoex_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %frombool.i.i, ptr %btcoex_enabled.i.i, align 4
  %op_flags.i.i = getelementptr inbounds %struct.ath_hw, ptr %call1.i.i.i.i.i, i32 0, i32 3, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %op_flags.i.i) #9
  %beacon_lock.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 36
  tail call void @__raw_spin_lock_init(ptr noundef %beacon_lock.i.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @ath9k_init_priv.__key, i16 noundef signext 3) #9
  %tx_lock.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 40, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock.i.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @ath9k_init_priv.__key.19, i16 noundef signext 3) #9
  %mutex.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 62
  tail call void @__mutex_init(ptr noundef %mutex.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @ath9k_init_priv.__key.21) #9
  %htc_pm_lock.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 47
  tail call void @__mutex_init(ptr noundef %htc_pm_lock.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @ath9k_init_priv.__key.23) #9
  %rx_tasklet.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 42
  tail call void @tasklet_setup(ptr noundef %rx_tasklet.i.i, ptr noundef nonnull @ath9k_rx_tasklet) #9
  %tx_failed_tasklet.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 44
  tail call void @tasklet_setup(ptr noundef %tx_failed_tasklet.i.i, ptr noundef nonnull @ath9k_tx_failed_tasklet) #9
  %ani_work.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 43
  tail call void @__init_work(ptr noundef %ani_work.i.i, i32 noundef 0) #9
  %44 = ptrtoint ptr %ani_work.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -64, ptr %ani_work.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 43, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @ath9k_init_priv.__key.25, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry38.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 43, i32 0, i32 1
  %45 = ptrtoint ptr %entry38.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %entry38.i.i, ptr %entry38.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 43, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %entry38.i.i, ptr %prev.i.i.i, align 4
  %func.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 43, i32 0, i32 2
  %47 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @ath9k_htc_ani_work, ptr %func.i.i, align 4
  %timer.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 43, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.28, ptr noundef nonnull @ath9k_init_priv.__key.27) #9
  %ps_work.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 45
  tail call void @__init_work(ptr noundef %ps_work.i.i, i32 noundef 0) #9
  %48 = ptrtoint ptr %ps_work.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -64, ptr %ps_work.i.i, align 4
  %lockdep_map55.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 45, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map55.i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @ath9k_init_priv.__key.29, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry57.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 45, i32 1
  %49 = ptrtoint ptr %entry57.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %entry57.i.i, ptr %entry57.i.i, align 4
  %prev.i167.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 45, i32 1, i32 1
  %50 = ptrtoint ptr %prev.i167.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %entry57.i.i, ptr %prev.i167.i.i, align 4
  %func59.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 45, i32 2
  %51 = ptrtoint ptr %func59.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @ath9k_ps_work, ptr %func59.i.i, align 4
  %fatal_work.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 46
  tail call void @__init_work(ptr noundef %fatal_work.i.i, i32 noundef 0) #9
  %52 = ptrtoint ptr %fatal_work.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -64, ptr %fatal_work.i.i, align 4
  %lockdep_map68.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 46, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map68.i.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @ath9k_init_priv.__key.31, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry70.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 46, i32 1
  %53 = ptrtoint ptr %entry70.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %entry70.i.i, ptr %entry70.i.i, align 4
  %prev.i168.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 46, i32 1, i32 1
  %54 = ptrtoint ptr %prev.i168.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %entry70.i.i, ptr %prev.i168.i.i, align 4
  %func72.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 46, i32 2
  %55 = ptrtoint ptr %func72.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @ath9k_fatal_work, ptr %func72.i.i, align 4
  %cleanup_timer.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 40, i32 10
  tail call void @init_timer_key(ptr noundef %cleanup_timer.i.i, ptr noundef nonnull @ath9k_htc_tx_cleanup_timer, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull @ath9k_init_priv.__key.33) #9
  %56 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus_ops.i.i, align 4
  %read_cachesize.i.i.i = getelementptr inbounds %struct.ath_bus_ops, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %read_cachesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read_cachesize.i.i.i, align 4
  call void %59(ptr noundef %common.i.i.i, ptr noundef nonnull %csz.i.i) #9
  %60 = ptrtoint ptr %csz.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %csz.i.i, align 4
  %.tr.i.i = trunc i32 %61 to i16
  %conv.i.i = shl i16 %.tr.i.i, 2
  %cachelsz.i.i = getelementptr inbounds %struct.ath_hw, ptr %call1.i.i.i.i.i, i32 0, i32 3, i32 7
  %62 = ptrtoint ptr %cachelsz.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i.i, ptr %cachelsz.i.i, align 4
  %call79.i.i = call i32 @ath9k_hw_init(ptr noundef nonnull %call1.i.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i.i)
  %tobool80.not.i.i = icmp eq i32 %call79.i.i, 0
  br i1 %tobool80.not.i.i, label %if.end82.i.i, label %if.then81.i.i

if.then81.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.5, ptr noundef %common.i.i.i, ptr noundef nonnull @.str.35, i32 noundef %call79.i.i) #9
  br label %err_hw.i.i

if.end82.i.i:                                     ; preds = %if.end.i.i
  %63 = ptrtoint ptr %ah12.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ah12.i.i, align 4
  %uglygep.i.i.i = getelementptr i8, ptr %1, i32 2420
  %65 = call ptr @memset(ptr %uglygep.i.i.i, i32 255, i32 16)
  %common.i.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %64, i32 0, i32 3
  %call2.i.i.i = call i32 @ath9k_hw_beaconq_setup(ptr noundef %64) #9
  %beaconq.i.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 38, i32 3
  %66 = ptrtoint ptr %beaconq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call2.i.i.i, ptr %beaconq.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i.i)
  %cmp5.i.i.i = icmp eq i32 %call2.i.i.i, -1
  br i1 %cmp5.i.i.i, label %if.end82.i.i.err_queues.i.i_crit_edge, label %if.end.i.i.i

if.end82.i.i.err_queues.i.i_crit_edge:            ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_queues.i.i

if.end.i.i.i:                                     ; preds = %if.end82.i.i
  %call6.i.i.i = call i32 @ath9k_htc_cabq_setup(ptr noundef %1) #9
  %cabq.i.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 56
  %67 = ptrtoint ptr %cabq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call6.i.i.i, ptr %cabq.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6.i.i.i)
  %cmp8.i.i.i = icmp eq i32 %call6.i.i.i, -1
  br i1 %cmp8.i.i.i, label %if.end.i.i.i.err_queues.i.i_crit_edge, label %if.end10.i.i.i

if.end.i.i.i.err_queues.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_queues.i.i

if.end10.i.i.i:                                   ; preds = %if.end.i.i.i
  %call11.i.i.i = call zeroext i1 @ath9k_htc_txq_setup(ptr noundef %1, i32 noundef 2) #9
  br i1 %call11.i.i.i, label %if.end13.i.i.i, label %if.end10.i.i.i.err_queues.i.i_crit_edge

if.end10.i.i.i.err_queues.i.i_crit_edge:          ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_queues.i.i

if.end13.i.i.i:                                   ; preds = %if.end10.i.i.i
  %call14.i.i.i = call zeroext i1 @ath9k_htc_txq_setup(ptr noundef %1, i32 noundef 3) #9
  br i1 %call14.i.i.i, label %if.end16.i.i.i, label %if.end13.i.i.i.err_queues.i.i_crit_edge

if.end13.i.i.i.err_queues.i.i_crit_edge:          ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_queues.i.i

if.end16.i.i.i:                                   ; preds = %if.end13.i.i.i
  %call17.i.i.i = call zeroext i1 @ath9k_htc_txq_setup(ptr noundef %1, i32 noundef 1) #9
  br i1 %call17.i.i.i, label %if.end19.i.i.i, label %if.end16.i.i.i.err_queues.i.i_crit_edge

if.end16.i.i.i.err_queues.i.i_crit_edge:          ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_queues.i.i

if.end19.i.i.i:                                   ; preds = %if.end16.i.i.i
  %call20.i.i.i = call zeroext i1 @ath9k_htc_txq_setup(ptr noundef %1, i32 noundef 0) #9
  br i1 %call20.i.i.i, label %if.end.i, label %if.end19.i.i.i.err_queues.i.i_crit_edge

if.end19.i.i.i.err_queues.i.i_crit_edge:          ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_queues.i.i

err_queues.i.i:                                   ; preds = %if.end19.i.i.i.err_queues.i.i_crit_edge, %if.end16.i.i.i.err_queues.i.i_crit_edge, %if.end13.i.i.i.err_queues.i.i_crit_edge, %if.end10.i.i.i.err_queues.i.i_crit_edge, %if.end.i.i.i.err_queues.i.i_crit_edge, %if.end82.i.i.err_queues.i.i_crit_edge
  %.str.42.sink.i.i.i = phi ptr [ @.str.42, %if.end82.i.i.err_queues.i.i_crit_edge ], [ @.str.43, %if.end.i.i.i.err_queues.i.i_crit_edge ], [ @.str.44, %if.end10.i.i.i.err_queues.i.i_crit_edge ], [ @.str.45, %if.end13.i.i.i.err_queues.i.i_crit_edge ], [ @.str.46, %if.end16.i.i.i.err_queues.i.i_crit_edge ], [ @.str.47, %if.end19.i.i.i.err_queues.i.i_crit_edge ]
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.5, ptr noundef %common.i.i.i.i, ptr noundef nonnull %.str.42.sink.i.i.i) #9
  call void @ath9k_hw_deinit(ptr noundef nonnull %call1.i.i.i.i.i) #9
  br label %err_hw.i.i

err_hw.i.i:                                       ; preds = %err_queues.i.i, %if.then81.i.i
  %ret.0.i.i = phi i32 [ %call79.i.i, %if.then81.i.i ], [ -22, %err_queues.i.i ]
  call void @kfree(ptr noundef nonnull %call1.i.i.i.i.i) #9
  %68 = ptrtoint ptr %ah12.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %ah12.i.i, align 4
  br label %ath9k_init_priv.exit.thread.i

ath9k_init_priv.exit.thread.i:                    ; preds = %err_hw.i.i, %if.end17.ath9k_init_priv.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -12, %if.end17.ath9k_init_priv.exit.thread.i_crit_edge ], [ %ret.0.i.i, %err_hw.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csz.i.i) #9
  br label %ath9k_init_device.exit.thread

if.end.i:                                         ; preds = %if.end19.i.i.i
  %uglygep.i.i = getelementptr i8, ptr %1, i32 964
  %69 = ptrtoint ptr %uglygep.i.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 8)
  store i64 0, ptr %uglygep.i.i, align 4
  %slottime.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 38, i32 4
  %70 = ptrtoint ptr %slottime.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 9, ptr %slottime.i.i, align 4
  %call90.i.i = call i32 @ath9k_cmn_init_channels_rates(ptr noundef %common.i.i.i) #9
  call void @ath9k_cmn_init_crypto(ptr noundef nonnull %call1.i.i.i.i.i) #9
  %71 = ptrtoint ptr %ah12.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ah12.i.i, align 4
  %bssidmask.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %72, i32 0, i32 3, i32 11
  %73 = call ptr @memset(ptr %bssidmask.i.i.i, i32 255, i32 6)
  %last_rssi.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %72, i32 0, i32 3, i32 30
  %74 = ptrtoint ptr %last_rssi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 127, ptr %last_rssi.i.i.i, align 4
  %75 = load ptr, ptr %ah12.i.i, align 4
  %opmode.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %75, i32 0, i32 28
  %76 = ptrtoint ptr %opmode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %opmode.i.i.i, align 4
  %77 = load ptr, ptr %ah12.i.i, align 4
  %spec_priv.i.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 35
  %78 = ptrtoint ptr %spec_priv.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %spec_priv.i.i.i, align 4
  %spec_config.i.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 35, i32 3
  %79 = ptrtoint ptr %spec_config.i.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %spec_config.i.i.i, align 4
  %short_repeat.i.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 35, i32 3, i32 1
  %80 = ptrtoint ptr %short_repeat.i.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %short_repeat.i.i.i, align 1
  %count.i.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 35, i32 3, i32 3
  %81 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 8, ptr %count.i.i.i, align 1
  %endless.i.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 35, i32 3, i32 2
  %82 = ptrtoint ptr %endless.i.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %endless.i.i.i, align 2
  %period.i.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 35, i32 3, i32 4
  %83 = ptrtoint ptr %period.i.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 18, ptr %period.i.i.i, align 4
  %fft_period.i.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 35, i32 3, i32 5
  %84 = ptrtoint ptr %fft_period.i.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 2, ptr %fft_period.i.i.i, align 1
  call void @ath9k_htc_init_btcoex(ptr noundef %1, ptr noundef %product) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csz.i.i) #9
  %85 = ptrtoint ptr %ah12.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ah12.i.i, align 4
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %86, i32 0, i32 3
  %flags.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 4
  %87 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags.i.i.i, align 4
  %or.i.i90.i.i = or i32 %88, 68311
  store i32 %or.i.i90.i.i, ptr %flags.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.ieee80211_hw, ptr %12, i32 0, i32 4, i32 1
  %89 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %or.i.i92.i.i = or i32 %90, 512
  store i32 %or.i.i92.i.i, ptr %add.ptr.i.i.i.i, align 4
  %91 = load i32, ptr @ath9k_ps_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i100.i = icmp eq i32 %91, 0
  br i1 %tobool.not.i100.i, label %if.end.i.if.end.i102.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i102.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i102.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i94.i.i = or i32 %88, 68567
  %92 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %or.i.i94.i.i, ptr %flags.i.i.i, align 4
  br label %if.end.i102.i

if.end.i102.i:                                    ; preds = %if.then.i.i, %if.end.i.if.end.i102.i_crit_edge
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 1
  %93 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %wiphy.i.i, align 8
  %interface_modes.i.i = getelementptr inbounds %struct.wiphy, ptr %94, i32 0, i32 9
  %95 = ptrtoint ptr %interface_modes.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 2958, ptr %interface_modes.i.i, align 4
  %96 = load ptr, ptr %wiphy.i.i, align 8
  %iface_combinations.i.i = getelementptr inbounds %struct.wiphy, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %iface_combinations.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @if_comb, ptr %iface_combinations.i.i, align 16
  %98 = load ptr, ptr %wiphy.i.i, align 8
  %n_iface_combinations.i.i = getelementptr inbounds %struct.wiphy, ptr %98, i32 0, i32 6
  %99 = ptrtoint ptr %n_iface_combinations.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %n_iface_combinations.i.i, align 4
  %100 = load ptr, ptr %wiphy.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.wiphy, ptr %100, i32 0, i32 11
  %101 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags.i.i, align 32
  %and.i.i = and i32 %102, -17
  store i32 %and.i.i, ptr %flags.i.i, align 32
  %103 = load ptr, ptr %wiphy.i.i, align 8
  %flags7.i.i = getelementptr inbounds %struct.wiphy, ptr %103, i32 0, i32 11
  %104 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags7.i.i, align 32
  %or.i101.i = or i32 %105, 10486016
  store i32 %or.i101.i, ptr %flags7.i.i, align 32
  %106 = load ptr, ptr %wiphy.i.i, align 8
  %flags9.i.i = getelementptr inbounds %struct.wiphy, ptr %106, i32 0, i32 11
  %107 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags9.i.i, align 32
  %or10.i.i = or i32 %108, 32768
  store i32 %or10.i.i, ptr %flags9.i.i, align 32
  %queues.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 11
  %109 = ptrtoint ptr %queues.i.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 4, ptr %queues.i.i, align 4
  %max_listen_interval.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 12
  %110 = ptrtoint ptr %max_listen_interval.i.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 1, ptr %max_listen_interval.i.i, align 2
  %vif_data_size.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 7
  %111 = ptrtoint ptr %vif_data_size.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 24, ptr %vif_data_size.i.i, align 4
  %sta_data_size.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 8
  %112 = ptrtoint ptr %sta_data_size.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 84, ptr %sta_data_size.i.i, align 8
  %extra_tx_headroom.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 5
  %113 = ptrtoint ptr %extra_tx_headroom.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 24, ptr %extra_tx_headroom.i.i, align 4
  %114 = ptrtoint ptr %ah12.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ah12.i.i, align 4
  %caps.i.i = getelementptr inbounds %struct.ath_hw, ptr %115, i32 0, i32 6
  %116 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %caps.i.i, align 4
  %and12.i.i = and i32 %117, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end.i102.i.if.end17.i.i_crit_edge, label %if.then14.i.i

if.end.i102.i.if.end17.i.i_crit_edge:             ; preds = %if.end.i102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i.i

if.then14.i.i:                                    ; preds = %if.end.i102.i
  call void @__sanitizer_cov_trace_pc() #11
  %sbands.i.i = getelementptr inbounds %struct.ath_hw, ptr %86, i32 0, i32 3, i32 31
  %118 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %wiphy.i.i, align 8
  %bands.i.i = getelementptr inbounds %struct.wiphy, ptr %119, i32 0, i32 53
  %120 = ptrtoint ptr %bands.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %sbands.i.i, ptr %bands.i.i, align 16
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then14.i.i, %if.end.i102.i.if.end17.i.i_crit_edge
  %121 = ptrtoint ptr %ah12.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ah12.i.i, align 4
  %caps19.i.i = getelementptr inbounds %struct.ath_hw, ptr %122, i32 0, i32 6
  %123 = ptrtoint ptr %caps19.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %caps19.i.i, align 4
  %and21.i.i = and i32 %124, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end17.i.i.if.end29.i.i_crit_edge, label %if.then23.i.i

if.end17.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

if.then23.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx25.i.i = getelementptr %struct.ath_hw, ptr %86, i32 0, i32 3, i32 31, i32 1
  %125 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %wiphy.i.i, align 8
  %arrayidx28.i.i = getelementptr %struct.wiphy, ptr %126, i32 0, i32 53, i32 1
  %127 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %arrayidx25.i.i, ptr %arrayidx28.i.i, align 4
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then23.i.i, %if.end17.i.i.if.end29.i.i_crit_edge
  call void @ath9k_cmn_reload_chainmask(ptr noundef %86) #9
  %call30.i.i = call ptr @ath9k_htc_get_eeprom_base(ptr noundef %1) #9
  %tobool31.not.i.i = icmp eq ptr %call30.i.i, null
  br i1 %tobool31.not.i.i, label %if.end29.i.i.ath9k_set_hw_capab.exit.i_crit_edge, label %if.then32.i.i

if.end29.i.i.ath9k_set_hw_capab.exit.i_crit_edge: ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_set_hw_capab.exit.i

if.then32.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rxMask.i.i = getelementptr inbounds %struct.base_eep_header, ptr %call30.i.i, i32 0, i32 7
  %128 = ptrtoint ptr %rxMask.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %rxMask.i.i, align 1
  %conv.i103.i = zext i8 %129 to i32
  %130 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %wiphy.i.i, align 8
  %available_antennas_rx.i.i = getelementptr inbounds %struct.wiphy, ptr %131, i32 0, i32 45
  %132 = ptrtoint ptr %available_antennas_rx.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %conv.i103.i, ptr %available_antennas_rx.i.i, align 16
  %txMask.i.i = getelementptr inbounds %struct.base_eep_header, ptr %call30.i.i, i32 0, i32 8
  %133 = ptrtoint ptr %txMask.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %txMask.i.i, align 1
  %conv34.i.i = zext i8 %134 to i32
  %135 = load ptr, ptr %wiphy.i.i, align 8
  %available_antennas_tx.i.i = getelementptr inbounds %struct.wiphy, ptr %135, i32 0, i32 44
  %136 = ptrtoint ptr %available_antennas_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %conv34.i.i, ptr %available_antennas_tx.i.i, align 4
  br label %ath9k_set_hw_capab.exit.i

ath9k_set_hw_capab.exit.i:                        ; preds = %if.then32.i.i, %if.end29.i.i.ath9k_set_hw_capab.exit.i_crit_edge
  %macaddr.i.i = getelementptr inbounds %struct.ath_hw, ptr %86, i32 0, i32 3, i32 9
  %137 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %wiphy.i.i, align 8
  %perm_addr.i.i.i = getelementptr inbounds %struct.wiphy, ptr %138, i32 0, i32 1
  %139 = call ptr @memcpy(ptr %perm_addr.i.i.i, ptr %macaddr.i.i, i32 6)
  %140 = load ptr, ptr %wiphy.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.wiphy, ptr %140, i32 0, i32 14, i32 1
  %141 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv1.i.i.i = or i8 %142, 32
  store i8 %conv1.i.i.i, ptr %arrayidx.i.i.i, align 1
  %143 = load ptr, ptr %wiphy.i.i, align 8
  %arrayidx.i95.i.i = getelementptr %struct.wiphy, ptr %143, i32 0, i32 14, i32 5
  %144 = ptrtoint ptr %arrayidx.i95.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx.i95.i.i, align 1
  %conv1.i96.i.i = or i8 %145, 32
  store i8 %conv1.i96.i.i, ptr %arrayidx.i95.i.i, align 1
  %146 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hw2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_rsp.i.i) #9
  %148 = ptrtoint ptr %cmd_rsp.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %cmd_rsp.i.i, align 4
  %149 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %wmi, align 4
  %call.i.i = call i32 @ath9k_wmi_cmd(ptr noundef %150, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp.i.i, i32 noundef 4, i32 noundef 200) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i104.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i104.i, label %if.end.i107.i, label %ath9k_set_hw_capab.exit.i.ath9k_init_firmware_version.exit.thread.i_crit_edge

ath9k_set_hw_capab.exit.i.ath9k_init_firmware_version.exit.thread.i_crit_edge: ; preds = %ath9k_set_hw_capab.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_init_firmware_version.exit.thread.i

if.end.i107.i:                                    ; preds = %ath9k_set_hw_capab.exit.i
  %151 = getelementptr inbounds %struct.wmi_fw_version, ptr %cmd_rsp.i.i, i32 0, i32 1
  %152 = ptrtoint ptr %cmd_rsp.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %cmd_rsp.i.i, align 4
  %fw_version_major.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 5
  %154 = ptrtoint ptr %fw_version_major.i.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %153, ptr %fw_version_major.i.i, align 4
  %155 = ptrtoint ptr %151 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %151, align 2
  %fw_version_minor.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 6
  %157 = ptrtoint ptr %fw_version_minor.i.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %fw_version_minor.i.i, align 2
  %wiphy.i105.i = getelementptr inbounds %struct.ieee80211_hw, ptr %147, i32 0, i32 1
  %158 = ptrtoint ptr %wiphy.i105.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %wiphy.i105.i, align 8
  %fw_version.i.i = getelementptr inbounds %struct.wiphy, ptr %159, i32 0, i32 38
  %conv.i106.i = zext i16 %153 to i32
  %conv4.i.i = zext i16 %156 to i32
  %call5.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version.i.i, i32 noundef 32, ptr noundef nonnull @.str.48, i32 noundef %conv.i106.i, i32 noundef %conv4.i.i) #9
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %1, align 4
  %162 = ptrtoint ptr %fw_version_major.i.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %fw_version_major.i.i, align 4
  %conv10.i.i = zext i16 %163 to i32
  %164 = ptrtoint ptr %fw_version_minor.i.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %fw_version_minor.i.i, align 2
  %conv12.i.i = zext i16 %165 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %161, ptr noundef nonnull @.str.49, i32 noundef %conv10.i.i, i32 noundef %conv12.i.i) #13
  %166 = ptrtoint ptr %fw_version_major.i.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %fw_version_major.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %167)
  %cmp.not.i.i = icmp eq i16 %167, 1
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end.i107.i.do.end23.i.i_crit_edge

if.end.i107.i.do.end23.i.i_crit_edge:             ; preds = %if.end.i107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i107.i
  %168 = ptrtoint ptr %fw_version_minor.i.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %fw_version_minor.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %169)
  %cmp18.i.i = icmp ult i16 %169, 3
  br i1 %cmp18.i.i, label %lor.lhs.false.i.i.do.end23.i.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.i.i.do.end23.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23.i.i

do.end23.i.i:                                     ; preds = %lor.lhs.false.i.i.do.end23.i.i_crit_edge, %if.end.i107.i.do.end23.i.i_crit_edge
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %171, ptr noundef nonnull @.str.52, i32 noundef 1, i32 noundef 3) #13
  br label %ath9k_init_firmware_version.exit.thread.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %169)
  %cmp32.i.i = icmp eq i16 %169, 3
  br i1 %cmp32.i.i, label %if.then34.i.i, label %land.lhs.true.i.i.if.end7.i_crit_edge

land.lhs.true.i.i.if.end7.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then34.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %fw_flags.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 33
  call void @_set_bit(i32 noundef 0, ptr noundef %fw_flags.i.i) #9
  br label %if.end7.i

ath9k_init_firmware_version.exit.thread.i:        ; preds = %do.end23.i.i, %ath9k_set_hw_capab.exit.i.ath9k_init_firmware_version.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_rsp.i.i) #9
  br label %err_fw.i

if.end7.i:                                        ; preds = %if.then34.i.i, %land.lhs.true.i.i.if.end7.i_crit_edge
  %172 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %1, align 4
  %fw_flags40.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 33
  %174 = ptrtoint ptr %fw_flags40.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %fw_flags40.i.i, align 4
  %and1.i.i.i = and i32 %175, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool42.not.i.i = icmp eq i32 %and1.i.i.i, 0
  %cond.i.i = select i1 %tobool42.not.i.i, ptr @.str.58, ptr @.str.57
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %173, ptr noundef nonnull @.str.55, ptr noundef nonnull %cond.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_rsp.i.i) #9
  %regulatory.i = getelementptr inbounds %struct.ath_hw, ptr %86, i32 0, i32 3, i32 22
  %176 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hw2, align 4
  %wiphy.i49 = getelementptr inbounds %struct.ieee80211_hw, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %wiphy.i49 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %wiphy.i49, align 8
  %call9.i = call i32 @ath_regd_init(ptr noundef %regulatory.i, ptr noundef %179, ptr noundef nonnull @ath9k_reg_notifier) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %if.end11.i, label %if.end7.i.err_fw.i_crit_edge

if.end7.i.err_fw.i_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_fw.i

if.end11.i:                                       ; preds = %if.end7.i
  %call13.i = call i32 @ath9k_tx_init(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.not.i = icmp eq i32 %call13.i, 0
  br i1 %cmp14.not.i, label %if.end16.i, label %if.end11.i.err_fw.i_crit_edge

if.end11.i.err_fw.i_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_fw.i

if.end16.i:                                       ; preds = %if.end11.i
  %call17.i = call i32 @ath9k_rx_init(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.not.i = icmp eq i32 %call17.i, 0
  br i1 %cmp18.not.i, label %if.end20.i, label %if.end16.i.err_rx.i_crit_edge

if.end16.i.err_rx.i_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rx.i

if.end20.i:                                       ; preds = %if.end16.i
  %180 = ptrtoint ptr %ah12.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ah12.i.i, align 4
  %call22.i = call zeroext i1 @ath9k_hw_disable(ptr noundef %181) #9
  %182 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %hw2, align 4
  %call.i109.i = call ptr @__ieee80211_create_tpt_led_trigger(ptr noundef %183, i32 noundef 1, ptr noundef nonnull @ath9k_htc_tpt_blink, i32 noundef 10) #9
  %default_trigger.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 54, i32 14
  %184 = ptrtoint ptr %default_trigger.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %call.i109.i, ptr %default_trigger.i, align 4
  %call25.i = call i32 @ieee80211_register_hw(ptr noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end20.i.err_register.i_crit_edge

if.end20.i.err_register.i_crit_edge:              ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_register.i

if.end28.i:                                       ; preds = %if.end20.i
  %call29.i = call zeroext i1 @ath_is_world_regd(ptr noundef %regulatory.i) #9
  br i1 %call29.i, label %if.end28.i.if.end36.i_crit_edge, label %if.then30.i

if.end28.i.if.end36.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then30.i:                                      ; preds = %if.end28.i
  %185 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %wiphy.i.i, align 8
  %call32.i = call i32 @regulatory_hint(ptr noundef %186, ptr noundef %regulatory.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.then30.i.if.end36.i_crit_edge, label %if.then30.i.err_world.i_crit_edge

if.then30.i.err_world.i_crit_edge:                ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_world.i

if.then30.i.if.end36.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then30.i.if.end36.i_crit_edge, %if.end28.i.if.end36.i_crit_edge
  %187 = ptrtoint ptr %ah12.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %ah12.i.i, align 4
  %call38.i = call i32 @ath9k_htc_init_debug(ptr noundef %188) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %do.body.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.5, ptr noundef %common.i.i, ptr noundef nonnull @.str.13) #9
  br label %err_world.i

do.body.i:                                        ; preds = %if.end36.i
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %86, i32 0, i32 3, i32 3
  %189 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %190, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool42.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool42.not.i, label %do.body.i.ath9k_init_device.exit_crit_edge, label %if.then43.i

do.body.i.ath9k_init_device.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_init_device.exit

if.then43.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %wmi_cmd_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 7
  %191 = ptrtoint ptr %wmi_cmd_ep.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %wmi_cmd_ep.i, align 4
  %beacon_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 8
  %193 = ptrtoint ptr %beacon_ep.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %beacon_ep.i, align 4
  %cab_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 9
  %195 = ptrtoint ptr %cab_ep.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %cab_ep.i, align 4
  %uapsd_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 10
  %197 = ptrtoint ptr %uapsd_ep.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %uapsd_ep.i, align 4
  %mgmt_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 11
  %199 = ptrtoint ptr %mgmt_ep.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %mgmt_ep.i, align 4
  %data_be_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 12
  %201 = ptrtoint ptr %data_be_ep.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %data_be_ep.i, align 4
  %data_bk_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 13
  %203 = ptrtoint ptr %data_bk_ep.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %data_bk_ep.i, align 4
  %data_vi_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 14
  %205 = ptrtoint ptr %data_vi_ep.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %data_vi_ep.i, align 4
  %data_vo_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 15
  %207 = ptrtoint ptr %data_vo_ep.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %data_vo_ep.i, align 4
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.14, ptr noundef %common.i.i, ptr noundef nonnull @.str.15, i32 noundef %192, i32 noundef %194, i32 noundef %196, i32 noundef %198, i32 noundef %200, i32 noundef %202, i32 noundef %204, i32 noundef %206, i32 noundef %208) #9
  br label %ath9k_init_device.exit

err_world.i:                                      ; preds = %if.then40.i, %if.then30.i.err_world.i_crit_edge
  %error.0.i = phi i32 [ %call38.i, %if.then40.i ], [ %call32.i, %if.then30.i.err_world.i_crit_edge ]
  call void @ieee80211_unregister_hw(ptr noundef %12) #9
  br label %err_register.i

err_register.i:                                   ; preds = %err_world.i, %if.end20.i.err_register.i_crit_edge
  %error.1.i = phi i32 [ %call25.i, %if.end20.i.err_register.i_crit_edge ], [ %error.0.i, %err_world.i ]
  call void @ath9k_rx_cleanup(ptr noundef %1) #9
  br label %err_rx.i

err_rx.i:                                         ; preds = %err_register.i, %if.end16.i.err_rx.i_crit_edge
  %error.2.i = phi i32 [ %call17.i, %if.end16.i.err_rx.i_crit_edge ], [ %error.1.i, %err_register.i ]
  call void @ath9k_tx_cleanup(ptr noundef %1) #9
  br label %err_fw.i

err_fw.i:                                         ; preds = %err_rx.i, %if.end11.i.err_fw.i_crit_edge, %if.end7.i.err_fw.i_crit_edge, %ath9k_init_firmware_version.exit.thread.i
  %error.3.i = phi i32 [ %call9.i, %if.end7.i.err_fw.i_crit_edge ], [ %call13.i, %if.end11.i.err_fw.i_crit_edge ], [ %error.2.i, %err_rx.i ], [ -22, %ath9k_init_firmware_version.exit.thread.i ]
  %209 = ptrtoint ptr %ah12.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ah12.i.i, align 4
  call void @ath9k_hw_deinit(ptr noundef %210) #9
  %211 = ptrtoint ptr %ah12.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %ah12.i.i, align 4
  call void @kfree(ptr noundef %212) #9
  %213 = ptrtoint ptr %ah12.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr null, ptr %ah12.i.i, align 4
  br label %ath9k_init_device.exit.thread

ath9k_init_device.exit.thread:                    ; preds = %err_fw.i, %ath9k_init_priv.exit.thread.i
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %ath9k_init_priv.exit.thread.i ], [ %error.3.i, %err_fw.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hw_name.i) #9
  br label %err_init

ath9k_init_device.exit:                           ; preds = %if.then43.i, %do.body.i.ath9k_init_device.exit_crit_edge
  %214 = ptrtoint ptr %ah12.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ah12.i.i, align 4
  call void @ath9k_hw_name(ptr noundef %215, ptr noundef nonnull %hw_name.i, i32 noundef 64) #9
  %216 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %wiphy.i.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %217, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.16, ptr noundef nonnull %hw_name.i) #13
  call void @ath9k_init_leds(ptr noundef %1) #9
  call void @ath9k_start_rfkill_poll(ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hw_name.i) #9
  br label %cleanup

err_init:                                         ; preds = %ath9k_init_device.exit.thread, %if.end13.err_init_crit_edge
  %ret.0 = phi i32 [ %call14, %if.end13.err_init_crit_edge ], [ %retval.0.i.ph, %ath9k_init_device.exit.thread ]
  call void @ath9k_stop_wmi(ptr noundef %1) #9
  %218 = ptrtoint ptr %htc_handle to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %htc_handle, align 4
  call void @ath9k_hif_usb_dealloc_urbs(ptr noundef %219) #9
  call void @ath9k_destroy_wmi(ptr noundef %1) #9
  br label %err_free

err_free:                                         ; preds = %err_init, %if.end8.err_free_crit_edge, %if.end.err_free_crit_edge
  %ret.1 = phi i32 [ %call5, %if.end.err_free_crit_edge ], [ %ret.0, %err_init ], [ -22, %if.end8.err_free_crit_edge ]
  call void @ieee80211_free_hw(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free, %ath9k_init_device.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %ath9k_init_device.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath9k_htc_wait_for_target(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %htc = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc, align 4
  %tgt_ready = getelementptr inbounds %struct.htc_target, ptr %1, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tgt_ready, i32 noundef 4) #9
  %2 = ptrtoint ptr %tgt_ready to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tgt_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  %4 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %htc, align 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tgt_ready2 = getelementptr inbounds %struct.htc_target, ptr %5, i32 0, i32 12
  %call.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tgt_ready2, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %tgt_ready2, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tgt_ready2, ptr %tgt_ready2, i32 1, ptr elementtype(i32) %tgt_ready2) #9, !srcloc !185
  br label %cleanup

if.end:                                           ; preds = %entry
  %target_wait = getelementptr inbounds %struct.htc_target, ptr %5, i32 0, i32 5
  %call4 = tail call i32 @wait_for_completion_timeout(ptr noundef %target_wait, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.3) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %htc, align 4
  %tgt_ready8 = getelementptr inbounds %struct.htc_target, ptr %10, i32 0, i32 12
  %call.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tgt_ready8, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %tgt_ready8, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tgt_ready8, ptr %tgt_ready8, i32 1, ptr elementtype(i32) %tgt_ready8) #9, !srcloc !185
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end6 ], [ -110, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath9k_init_wmi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath9k_init_htc_services(ptr noundef %priv, i32 noundef %drv_info) unnamed_addr #0 align 64 {
entry:
  %req.i19 = alloca %struct.htc_service_connreq, align 8
  %req.i16 = alloca %struct.htc_service_connreq, align 8
  %req.i13 = alloca %struct.htc_service_connreq, align 8
  %req.i10 = alloca %struct.htc_service_connreq, align 8
  %req.i7 = alloca %struct.htc_service_connreq, align 8
  %req.i4 = alloca %struct.htc_service_connreq, align 8
  %req.i1 = alloca %struct.htc_service_connreq, align 8
  %req.i = alloca %struct.htc_service_connreq, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %htc = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc, align 4
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 4
  %2 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wmi, align 4
  %wmi_cmd_ep = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 7
  %call = tail call i32 @ath9k_wmi_connect(ptr noundef %1, ptr noundef %3, ptr noundef %wmi_cmd_ep) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end48_crit_edge

entry.do.end48_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.end:                                           ; preds = %entry
  %beacon_ep = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i) #9
  %4 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i, i32 0, i32 3, i32 1
  %6 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %req.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 72339069014638592, ptr %req.i, align 8
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %priv, ptr %4, align 8
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ath9k_htc_rxep, ptr %6, align 8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ath9k_htc_beaconep, ptr %5, align 4
  %11 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %htc, align 4
  %call.i = call i32 @htc_connect_service(ptr noundef %12, ptr noundef nonnull %req.i, ptr noundef %beacon_ep) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.do.end48_crit_edge

if.end.do.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.end4:                                          ; preds = %if.end
  %cab_ep = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i1) #9
  %13 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i1, i32 0, i32 3
  %14 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i1, i32 0, i32 3, i32 1
  %15 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i1, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %req.i1 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 72620543991349248, ptr %req.i1, align 8
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %priv, ptr %13, align 8
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ath9k_htc_rxep, ptr %15, align 8
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ath9k_htc_txep, ptr %14, align 4
  %20 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %htc, align 4
  %call.i3 = call i32 @htc_connect_service(ptr noundef %21, ptr noundef nonnull %req.i1, ptr noundef %cab_ep) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool6.not = icmp eq i32 %call.i3, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.do.end48_crit_edge

if.end4.do.end48_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.end8:                                          ; preds = %if.end4
  %uapsd_ep = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i4) #9
  %22 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i4, i32 0, i32 3
  %23 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i4, i32 0, i32 3, i32 1
  %24 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i4, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %req.i4 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 72902018968059904, ptr %req.i4, align 8
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %priv, ptr %22, align 8
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ath9k_htc_rxep, ptr %24, align 8
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ath9k_htc_txep, ptr %23, align 4
  %29 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %htc, align 4
  %call.i6 = call i32 @htc_connect_service(ptr noundef %30, ptr noundef nonnull %req.i4, ptr noundef %uapsd_ep) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %tobool10.not = icmp eq i32 %call.i6, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.do.end48_crit_edge

if.end8.do.end48_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.end12:                                         ; preds = %if.end8
  %mgmt_ep = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i7) #9
  %31 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i7, i32 0, i32 3
  %32 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i7, i32 0, i32 3, i32 1
  %33 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i7, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %req.i7 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 73183493944770560, ptr %req.i7, align 8
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %priv, ptr %31, align 8
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ath9k_htc_rxep, ptr %33, align 8
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ath9k_htc_txep, ptr %32, align 4
  %38 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %htc, align 4
  %call.i9 = call i32 @htc_connect_service(ptr noundef %39, ptr noundef nonnull %req.i7, ptr noundef %mgmt_ep) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %tobool14.not = icmp eq i32 %call.i9, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.do.end48_crit_edge

if.end12.do.end48_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.end16:                                         ; preds = %if.end12
  %data_be_ep = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i10) #9
  %40 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i10, i32 0, i32 3
  %41 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i10, i32 0, i32 3, i32 1
  %42 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i10, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %req.i10 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 74027918874902528, ptr %req.i10, align 8
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %priv, ptr %40, align 8
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @ath9k_htc_rxep, ptr %42, align 8
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @ath9k_htc_txep, ptr %41, align 4
  %47 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %htc, align 4
  %call.i12 = call i32 @htc_connect_service(ptr noundef %48, ptr noundef nonnull %req.i10, ptr noundef %data_be_ep) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool18.not = icmp eq i32 %call.i12, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.do.end48_crit_edge

if.end16.do.end48_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.end20:                                         ; preds = %if.end16
  %data_bk_ep = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i13) #9
  %49 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i13, i32 0, i32 3
  %50 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i13, i32 0, i32 3, i32 1
  %51 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i13, i32 0, i32 3, i32 2
  %52 = ptrtoint ptr %req.i13 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 74309393851613184, ptr %req.i13, align 8
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %priv, ptr %49, align 8
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @ath9k_htc_rxep, ptr %51, align 8
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @ath9k_htc_txep, ptr %50, align 4
  %56 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %htc, align 4
  %call.i15 = call i32 @htc_connect_service(ptr noundef %57, ptr noundef nonnull %req.i13, ptr noundef %data_bk_ep) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool22.not = icmp eq i32 %call.i15, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.do.end48_crit_edge

if.end20.do.end48_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.end24:                                         ; preds = %if.end20
  %data_vi_ep = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i16) #9
  %58 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i16, i32 0, i32 3
  %59 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i16, i32 0, i32 3, i32 1
  %60 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i16, i32 0, i32 3, i32 2
  %61 = ptrtoint ptr %req.i16 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 73746443898191872, ptr %req.i16, align 8
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %priv, ptr %58, align 8
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @ath9k_htc_rxep, ptr %60, align 8
  %64 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @ath9k_htc_txep, ptr %59, align 4
  %65 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %htc, align 4
  %call.i18 = call i32 @htc_connect_service(ptr noundef %66, ptr noundef nonnull %req.i16, ptr noundef %data_vi_ep) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool26.not = icmp eq i32 %call.i18, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.do.end48_crit_edge

if.end24.do.end48_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.end28:                                         ; preds = %if.end24
  %data_vo_ep = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i19) #9
  %67 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i19, i32 0, i32 3
  %68 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i19, i32 0, i32 3, i32 1
  %69 = getelementptr inbounds %struct.htc_service_connreq, ptr %req.i19, i32 0, i32 3, i32 2
  %70 = ptrtoint ptr %req.i19 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 73464968921481216, ptr %req.i19, align 8
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %priv, ptr %67, align 8
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @ath9k_htc_rxep, ptr %69, align 8
  %73 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @ath9k_htc_txep, ptr %68, align 4
  %74 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %htc, align 4
  %call.i21 = call i32 @htc_connect_service(ptr noundef %75, ptr noundef nonnull %req.i19, ptr noundef %data_vo_ep) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool30.not = icmp eq i32 %call.i21, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.do.end48_crit_edge

if.end28.do.end48_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.end32:                                         ; preds = %if.end28
  %drv_info.off = add i32 %drv_info, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %drv_info.off)
  %switch = icmp ult i32 %drv_info.off, 2
  %76 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %htc, align 4
  %credits = getelementptr inbounds %struct.htc_target, ptr %77, i32 0, i32 9
  %. = select i1 %switch, i16 45, i16 33
  %78 = ptrtoint ptr %credits to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %., ptr %credits, align 4
  %79 = load ptr, ptr %htc, align 4
  %call40 = call i32 @htc_init(ptr noundef %79) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %do.end, label %if.end32.do.end48_crit_edge

if.end32.do.end48_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

do.end:                                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %priv, align 4
  %82 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %htc, align 4
  %credits45 = getelementptr inbounds %struct.htc_target, ptr %83, i32 0, i32 9
  %84 = ptrtoint ptr %credits45 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %credits45, align 4
  %conv = zext i16 %85 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %81, ptr noundef nonnull @.str.7, i32 noundef %conv) #13
  br label %cleanup

do.end48:                                         ; preds = %if.end32.do.end48_crit_edge, %if.end28.do.end48_crit_edge, %if.end24.do.end48_crit_edge, %if.end20.do.end48_crit_edge, %if.end16.do.end48_crit_edge, %if.end12.do.end48_crit_edge, %if.end8.do.end48_crit_edge, %if.end4.do.end48_crit_edge, %if.end.do.end48_crit_edge, %entry.do.end48_crit_edge
  %ret.0 = phi i32 [ %call, %entry.do.end48_crit_edge ], [ %call.i, %if.end.do.end48_crit_edge ], [ %call.i3, %if.end4.do.end48_crit_edge ], [ %call.i6, %if.end8.do.end48_crit_edge ], [ %call.i9, %if.end12.do.end48_crit_edge ], [ %call.i12, %if.end16.do.end48_crit_edge ], [ %call.i15, %if.end20.do.end48_crit_edge ], [ %call.i18, %if.end24.do.end48_crit_edge ], [ %call.i21, %if.end28.do.end48_crit_edge ], [ %call40, %if.end32.do.end48_crit_edge ]
  %86 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.11) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %do.end
  %retval.0 = phi i32 [ %ret.0, %do.end48 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_stop_wmi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hif_usb_dealloc_urbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_destroy_wmi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_disconnect_device(ptr nocapture noundef readonly %htc_handle, i1 noundef zeroext %hotunplug) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.htc_target, ptr %htc_handle, i32 0, i32 1
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %entry
  br i1 %hotunplug, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %ah_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %ah_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ah_flags, align 4
  %or = or i32 %5, 2
  store i32 %or, ptr %ah_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_priv, align 4
  %hw1.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw1.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy.i, align 8
  %rfkill.i.i = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 82
  %12 = ptrtoint ptr %rfkill.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rfkill.i.i, align 8
  tail call void @rfkill_pause_polling(ptr noundef %13) #9
  tail call void @ath9k_deinit_leds(ptr noundef %7) #9
  tail call void @ath9k_htc_deinit_debug(ptr noundef %7) #9
  tail call void @ieee80211_unregister_hw(ptr noundef %9) #9
  tail call void @ath9k_rx_cleanup(ptr noundef %7) #9
  tail call void @ath9k_tx_cleanup(ptr noundef %7) #9
  %ah.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %ah.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ah.i.i, align 4
  tail call void @ath9k_hw_deinit(ptr noundef %15) #9
  %16 = ptrtoint ptr %ah.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ah.i.i, align 4
  tail call void @kfree(ptr noundef %17) #9
  %18 = ptrtoint ptr %ah.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ah.i.i, align 4
  %19 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drv_priv, align 4
  tail call void @ath9k_stop_wmi(ptr noundef %20) #9
  %21 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drv_priv, align 4
  %hw = getelementptr inbounds %struct.ath9k_htc_priv, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_free_hw(ptr noundef %24) #9
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_suspend(ptr nocapture noundef readonly %htc_handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.htc_target, ptr %htc_handle, i32 0, i32 1
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %call = tail call zeroext i1 @ath9k_htc_setpower(ptr noundef %1, i32 noundef 1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_htc_setpower(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_htc_resume(ptr nocapture noundef readonly %htc_handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.htc_target, ptr %htc_handle, i32 0, i32 1
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %call = tail call fastcc i32 @ath9k_htc_wait_for_target(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %usbdev = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usbdev, align 4
  %call3 = tail call fastcc i32 @ath9k_init_htc_services(ptr noundef %1, i32 noundef %5)
  tail call void @ath9k_configure_leds(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_configure_leds(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_htc_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ath9k_hif_usb_init() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #13
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_htc_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ath9k_hif_usb_exit() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hif_usb_exit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_wmi_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_beaconep(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_txep(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @htc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_rxep(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @htc_connect_service(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_regd_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_reg_notifier(ptr noundef %wiphy, ptr noundef %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wiphy_to_ieee80211_hw(ptr noundef %wiphy) #9
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %regulatory.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 22
  tail call void @ath_reg_notifier_apply(ptr noundef %wiphy, ptr noundef %request, ptr noundef %regulatory.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_tx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_rx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath_is_world_regd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulatory_hint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_htc_init_debug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_init_leds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_start_rfkill_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_rx_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_tx_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_regread(ptr noundef %hw_priv, i32 noundef %reg_offset) #0 align 64 {
entry:
  %val = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3
  %priv1 = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !186
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %reg_offset, ptr %reg, align 4
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wmi, align 4
  %call2 = call i32 @ath9k_wmi_cmd(ptr noundef %5, i32 noundef 20, ptr noundef nonnull %reg, i32 noundef 4, ptr noundef nonnull %val, i32 noundef 4, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end7, label %do.body, !prof !187

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_mask, align 4
  %and = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.14, ptr noundef %common.i, ptr noundef nonnull @.str.36, i32 noundef %reg_offset, i32 noundef %call2) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.end7 ], [ -1, %if.then6 ], [ -1, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_multi_regread(ptr noundef %hw_priv, ptr nocapture noundef readonly %addr, ptr nocapture noundef writeonly %val, i16 noundef zeroext %count) #0 align 64 {
entry:
  %tmpaddr = alloca [8 x i32], align 4
  %tmpval = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3
  %priv1 = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmpaddr) #9
  %2 = call ptr @memset(ptr %tmpaddr, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmpval) #9
  %conv = zext i16 %count to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count)
  %cmp38.not = icmp eq i16 %count, 0
  %3 = call ptr @memset(ptr %tmpval, i32 255, i32 32)
  br i1 %cmp38.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = shl nuw nsw i32 %conv, 2
  %5 = call ptr @memcpy(ptr %tmpaddr, ptr %addr, i32 %4)
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %entry.for.end_crit_edge
  %mul.pre-phi = phi i32 [ %4, %for.body.preheader ], [ 0, %entry.for.end_crit_edge ]
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wmi, align 4
  %call8 = call i32 @ath9k_wmi_cmd(ptr noundef %7, i32 noundef 20, ptr noundef nonnull %tmpaddr, i32 noundef %mul.pre-phi, ptr noundef nonnull %tmpval, i32 noundef %mul.pre-phi, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %for.end.if.end14_crit_edge, label %do.body, !prof !187

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.body:                                          ; preds = %for.end
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug_mask, align 4
  %and = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body.if.end14_crit_edge, label %if.then12

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.14, ptr noundef %common.i, ptr noundef nonnull @.str.37, i32 noundef %conv) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.body.if.end14_crit_edge, %for.end.if.end14_crit_edge
  br i1 %cmp38.not, label %if.end14.for.end24_crit_edge, label %for.body19.preheader

if.end14.for.end24_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end24

for.body19.preheader:                             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %10 = call ptr @memcpy(ptr %val, ptr %tmpval, i32 %mul.pre-phi)
  br label %for.end24

for.end24:                                        ; preds = %for.body19.preheader, %if.end14.for.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmpval) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmpaddr) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_regwrite(ptr noundef %hw_priv, i32 noundef %val, i32 noundef %reg_offset) #0 align 64 {
entry:
  %val.addr.i = alloca i32, align 4
  %buf.i = alloca [2 x i32], align 4
  %rsp_status.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3
  %priv1 = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wmi, align 4
  %mwrite_cnt = getelementptr inbounds %struct.wmi, ptr %3, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mwrite_cnt, i32 noundef 4) #9
  %4 = ptrtoint ptr %mwrite_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %mwrite_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv1, align 4
  %wmi.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wmi.i, align 4
  %multi_write_mutex.i = getelementptr inbounds %struct.wmi, ptr %9, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %multi_write_mutex.i, i32 noundef 0) #9
  %10 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wmi.i, align 4
  %multi_write_idx.i = getelementptr inbounds %struct.wmi, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %multi_write_idx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %multi_write_idx.i, align 4
  %arrayidx.i = getelementptr %struct.wmi, ptr %11, i32 0, i32 16, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %reg_offset, ptr %arrayidx.i, align 4
  %15 = load ptr, ptr %wmi.i, align 4
  %multi_write_idx7.i = getelementptr inbounds %struct.wmi, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %multi_write_idx7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %multi_write_idx7.i, align 4
  %val9.i = getelementptr %struct.wmi, ptr %15, i32 0, i32 16, i32 %17, i32 1
  %18 = ptrtoint ptr %val9.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %val, ptr %val9.i, align 4
  %19 = load ptr, ptr %wmi.i, align 4
  %multi_write_idx11.i = getelementptr inbounds %struct.wmi, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %multi_write_idx11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %multi_write_idx11.i, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %multi_write_idx11.i, align 4
  %22 = load ptr, ptr %wmi.i, align 4
  %multi_write_idx13.i = getelementptr inbounds %struct.wmi, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %multi_write_idx13.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %multi_write_idx13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %24)
  %cmp.i = icmp eq i32 %24, 62
  br i1 %cmp.i, label %if.then.i, label %if.then.ath9k_regwrite_buffer.exit_crit_edge

if.then.ath9k_regwrite_buffer.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_regwrite_buffer.exit

if.then.i:                                        ; preds = %if.then
  %25 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp_status.i.i) #9
  %27 = ptrtoint ptr %rsp_status.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %rsp_status.i.i, align 4, !annotation !186
  %wmi.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %26, i32 0, i32 4
  %28 = ptrtoint ptr %wmi.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wmi.i.i, align 4
  %multi_write.i.i = getelementptr inbounds %struct.wmi, ptr %29, i32 0, i32 16
  %multi_write_idx.i.i = getelementptr inbounds %struct.wmi, ptr %29, i32 0, i32 17
  %30 = ptrtoint ptr %multi_write_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %multi_write_idx.i.i, align 4
  %mul.i.i = shl i32 %31, 3
  %call.i.i7 = call i32 @ath9k_wmi_cmd(ptr noundef %29, i32 noundef 21, ptr noundef %multi_write.i.i, i32 noundef %mul.i.i, ptr noundef nonnull %rsp_status.i.i, i32 noundef 4, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i7)
  %tobool.not.i.i = icmp eq i32 %call.i.i7, 0
  br i1 %tobool.not.i.i, label %if.then.i.ath9k_regwrite_multi.exit.i_crit_edge, label %do.body.i.i, !prof !187

if.then.i.ath9k_regwrite_multi.exit.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_regwrite_multi.exit.i

do.body.i.i:                                      ; preds = %if.then.i
  %debug_mask.i.i = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %debug_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %debug_mask.i.i, align 4
  %and.i.i = and i32 %33, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool6.not.i.i, label %do.body.i.i.ath9k_regwrite_multi.exit.i_crit_edge, label %if.then7.i.i

do.body.i.i.ath9k_regwrite_multi.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_regwrite_multi.exit.i

if.then7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %wmi.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wmi.i.i, align 4
  %multi_write_idx9.i.i = getelementptr inbounds %struct.wmi, ptr %35, i32 0, i32 17
  %36 = ptrtoint ptr %multi_write_idx9.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %multi_write_idx9.i.i, align 4
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.14, ptr noundef %common.i, ptr noundef nonnull @.str.38, i32 noundef %37) #9
  br label %ath9k_regwrite_multi.exit.i

ath9k_regwrite_multi.exit.i:                      ; preds = %if.then7.i.i, %do.body.i.i.ath9k_regwrite_multi.exit.i_crit_edge, %if.then.i.ath9k_regwrite_multi.exit.i_crit_edge
  %38 = ptrtoint ptr %wmi.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wmi.i.i, align 4
  %multi_write_idx12.i.i = getelementptr inbounds %struct.wmi, ptr %39, i32 0, i32 17
  %40 = ptrtoint ptr %multi_write_idx12.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %multi_write_idx12.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp_status.i.i) #9
  br label %ath9k_regwrite_buffer.exit

ath9k_regwrite_buffer.exit:                       ; preds = %ath9k_regwrite_multi.exit.i, %if.then.ath9k_regwrite_buffer.exit_crit_edge
  %41 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wmi.i, align 4
  %multi_write_mutex15.i = getelementptr inbounds %struct.wmi, ptr %42, i32 0, i32 18
  call void @mutex_unlock(ptr noundef %multi_write_mutex15.i) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i)
  %43 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %val, ptr %val.addr.i, align 4
  %44 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i) #9
  %46 = getelementptr inbounds [2 x i32], ptr %buf.i, i32 0, i32 1
  %47 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %reg_offset, ptr %buf.i, align 4
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %val, ptr %46, align 4
  %wmi.i10 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %45, i32 0, i32 4
  %49 = ptrtoint ptr %wmi.i10 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wmi.i10, align 4
  %call2.i = call i32 @ath9k_wmi_cmd(ptr noundef %50, i32 noundef 21, ptr noundef nonnull %buf.i, i32 noundef 8, ptr noundef nonnull %val.addr.i, i32 noundef 4, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.else.ath9k_regwrite_single.exit_crit_edge, label %do.body.i, !prof !187

if.else.ath9k_regwrite_single.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_regwrite_single.exit

do.body.i:                                        ; preds = %if.else
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %52, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %do.body.i.ath9k_regwrite_single.exit_crit_edge, label %if.then6.i

do.body.i.ath9k_regwrite_single.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_regwrite_single.exit

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.14, ptr noundef %common.i, ptr noundef nonnull @.str.39, i32 noundef %reg_offset, i32 noundef %call2.i) #9
  br label %ath9k_regwrite_single.exit

ath9k_regwrite_single.exit:                       ; preds = %if.then6.i, %do.body.i.ath9k_regwrite_single.exit_crit_edge, %if.else.ath9k_regwrite_single.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i)
  br label %if.end

if.end:                                           ; preds = %ath9k_regwrite_single.exit, %ath9k_regwrite_buffer.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_enable_regwrite_buffer(ptr nocapture noundef readonly %hw_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wmi, align 4
  %mwrite_cnt = getelementptr inbounds %struct.wmi, ptr %3, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mwrite_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %mwrite_cnt, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mwrite_cnt, ptr %mwrite_cnt, i32 1, ptr elementtype(i32) %mwrite_cnt) #9, !srcloc !188
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_regwrite_flush(ptr noundef %hw_priv) #0 align 64 {
entry:
  %rsp_status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3
  %priv1 = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wmi, align 4
  %mwrite_cnt = getelementptr inbounds %struct.wmi, ptr %3, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mwrite_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %mwrite_cnt, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mwrite_cnt, ptr %mwrite_cnt, i32 1, ptr elementtype(i32) %mwrite_cnt) #9, !srcloc !185
  %5 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wmi, align 4
  %multi_write_mutex = getelementptr inbounds %struct.wmi, ptr %6, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %multi_write_mutex, i32 noundef 0) #9
  %7 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wmi, align 4
  %multi_write_idx = getelementptr inbounds %struct.wmi, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %multi_write_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %multi_write_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp_status.i) #9
  %13 = ptrtoint ptr %rsp_status.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %rsp_status.i, align 4, !annotation !186
  %wmi.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %12, i32 0, i32 4
  %14 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wmi.i, align 4
  %multi_write.i = getelementptr inbounds %struct.wmi, ptr %15, i32 0, i32 16
  %multi_write_idx.i = getelementptr inbounds %struct.wmi, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %multi_write_idx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %multi_write_idx.i, align 4
  %mul.i = shl i32 %17, 3
  %call.i = call i32 @ath9k_wmi_cmd(ptr noundef %15, i32 noundef 21, ptr noundef %multi_write.i, i32 noundef %mul.i, ptr noundef nonnull %rsp_status.i, i32 noundef 4, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.ath9k_regwrite_multi.exit_crit_edge, label %do.body.i, !prof !187

if.then.ath9k_regwrite_multi.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_regwrite_multi.exit

do.body.i:                                        ; preds = %if.then
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %do.body.i.ath9k_regwrite_multi.exit_crit_edge, label %if.then7.i

do.body.i.ath9k_regwrite_multi.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_regwrite_multi.exit

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wmi.i, align 4
  %multi_write_idx9.i = getelementptr inbounds %struct.wmi, ptr %21, i32 0, i32 17
  %22 = ptrtoint ptr %multi_write_idx9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %multi_write_idx9.i, align 4
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.14, ptr noundef %common.i, ptr noundef nonnull @.str.38, i32 noundef %23) #9
  br label %ath9k_regwrite_multi.exit

ath9k_regwrite_multi.exit:                        ; preds = %if.then7.i, %do.body.i.ath9k_regwrite_multi.exit_crit_edge, %if.then.ath9k_regwrite_multi.exit_crit_edge
  %24 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wmi.i, align 4
  %multi_write_idx12.i = getelementptr inbounds %struct.wmi, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %multi_write_idx12.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %multi_write_idx12.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp_status.i) #9
  br label %if.end

if.end:                                           ; preds = %ath9k_regwrite_multi.exit, %entry.if.end_crit_edge
  %27 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wmi, align 4
  %multi_write_mutex5 = getelementptr inbounds %struct.wmi, ptr %28, i32 0, i32 18
  call void @mutex_unlock(ptr noundef %multi_write_mutex5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_enable_rmw_buffer(ptr nocapture noundef readonly %hw_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %fw_flags = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %fw_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %fw_flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wmi, align 4
  %m_rmw_cnt = getelementptr inbounds %struct.wmi, ptr %5, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %m_rmw_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %m_rmw_cnt, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %m_rmw_cnt, ptr %m_rmw_cnt, i32 1, ptr elementtype(i32) %m_rmw_cnt) #9, !srcloc !188
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_reg_rmw_flush(ptr noundef %hw_priv) #0 align 64 {
entry:
  %rsp_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3
  %priv1 = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp_status) #9
  %2 = ptrtoint ptr %rsp_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rsp_status, align 4, !annotation !186
  %fw_flags = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %fw_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %fw_flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wmi, align 4
  %m_rmw_cnt = getelementptr inbounds %struct.wmi, ptr %6, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %m_rmw_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %m_rmw_cnt, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %m_rmw_cnt, ptr %m_rmw_cnt, i32 1, ptr elementtype(i32) %m_rmw_cnt) #9, !srcloc !185
  %8 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wmi, align 4
  %multi_rmw_mutex = getelementptr inbounds %struct.wmi, ptr %9, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %multi_rmw_mutex, i32 noundef 0) #9
  %10 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wmi, align 4
  %multi_rmw_idx = getelementptr inbounds %struct.wmi, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %multi_rmw_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %multi_rmw_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %if.end.if.end24_crit_edge, label %if.then6

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then6:                                         ; preds = %if.end
  %multi_rmw = getelementptr inbounds %struct.wmi, ptr %11, i32 0, i32 20
  %mul = mul i32 %13, 12
  %call11 = call i32 @ath9k_wmi_cmd(ptr noundef %11, i32 noundef 32, ptr noundef %multi_rmw, i32 noundef %mul, ptr noundef nonnull %rsp_status, i32 noundef 4, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then6.if.end21_crit_edge, label %do.body, !prof !187

if.then6.if.end21_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.body:                                          ; preds = %if.then6
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug_mask, align 4
  %and = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %do.body.if.end21_crit_edge, label %if.then17

do.body.if.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wmi, align 4
  %multi_rmw_idx19 = getelementptr inbounds %struct.wmi, ptr %17, i32 0, i32 21
  %18 = ptrtoint ptr %multi_rmw_idx19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %multi_rmw_idx19, align 4
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.14, ptr noundef %common.i, ptr noundef nonnull @.str.40, i32 noundef %19) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %do.body.if.end21_crit_edge, %if.then6.if.end21_crit_edge
  %20 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wmi, align 4
  %multi_rmw_idx23 = getelementptr inbounds %struct.wmi, ptr %21, i32 0, i32 21
  %22 = ptrtoint ptr %multi_rmw_idx23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %multi_rmw_idx23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %if.end.if.end24_crit_edge
  %23 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wmi, align 4
  %multi_rmw_mutex26 = getelementptr inbounds %struct.wmi, ptr %24, i32 0, i32 22
  call void @mutex_unlock(ptr noundef %multi_rmw_mutex26) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp_status) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_reg_rmw(ptr noundef %hw_priv, i32 noundef %reg_offset, i32 noundef %set, i32 noundef %clr) #0 align 64 {
entry:
  %buf.i = alloca %struct.register_rmw, align 4
  %buf_ret.i = alloca %struct.register_rmw, align 4
  %rsp_status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3
  %priv1 = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %fw_flags = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %fw_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %fw_flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %hw_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_priv, align 4
  %call3 = tail call i32 %5(ptr noundef %hw_priv, i32 noundef %reg_offset) #9
  %neg = xor i32 %clr, -1
  %and = and i32 %call3, %neg
  %or = or i32 %and, %set
  %write = getelementptr inbounds %struct.ath_ops, ptr %hw_priv, i32 0, i32 2
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write, align 4
  tail call void %7(ptr noundef %hw_priv, i32 noundef %or, i32 noundef %reg_offset) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wmi, align 4
  %m_rmw_cnt = getelementptr inbounds %struct.wmi, ptr %9, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %m_rmw_cnt, i32 noundef 4) #9
  %10 = ptrtoint ptr %m_rmw_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %m_rmw_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  %12 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv1, align 4
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp_status.i) #9
  %14 = ptrtoint ptr %rsp_status.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %rsp_status.i, align 4, !annotation !186
  %wmi.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %13, i32 0, i32 4
  %15 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wmi.i, align 4
  %multi_rmw_mutex.i = getelementptr inbounds %struct.wmi, ptr %16, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %multi_rmw_mutex.i, i32 noundef 0) #9
  %17 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wmi.i, align 4
  %multi_rmw_idx.i = getelementptr inbounds %struct.wmi, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %multi_rmw_idx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %multi_rmw_idx.i, align 4
  %arrayidx.i = getelementptr %struct.wmi, ptr %18, i32 0, i32 20, i32 %20
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %reg_offset, ptr %arrayidx.i, align 4
  %22 = load ptr, ptr %wmi.i, align 4
  %multi_rmw_idx7.i = getelementptr inbounds %struct.wmi, ptr %22, i32 0, i32 21
  %23 = ptrtoint ptr %multi_rmw_idx7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %multi_rmw_idx7.i, align 4
  %set9.i = getelementptr %struct.wmi, ptr %22, i32 0, i32 20, i32 %24, i32 1
  %25 = ptrtoint ptr %set9.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %set, ptr %set9.i, align 4
  %26 = load ptr, ptr %wmi.i, align 4
  %multi_rmw_idx13.i = getelementptr inbounds %struct.wmi, ptr %26, i32 0, i32 21
  %27 = ptrtoint ptr %multi_rmw_idx13.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %multi_rmw_idx13.i, align 4
  %clr15.i = getelementptr %struct.wmi, ptr %26, i32 0, i32 20, i32 %28, i32 2
  %29 = ptrtoint ptr %clr15.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %clr, ptr %clr15.i, align 4
  %30 = load ptr, ptr %wmi.i, align 4
  %multi_rmw_idx17.i = getelementptr inbounds %struct.wmi, ptr %30, i32 0, i32 21
  %31 = ptrtoint ptr %multi_rmw_idx17.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %multi_rmw_idx17.i, align 4
  %inc.i = add i32 %32, 1
  store i32 %inc.i, ptr %multi_rmw_idx17.i, align 4
  %33 = load ptr, ptr %wmi.i, align 4
  %multi_rmw_idx19.i = getelementptr inbounds %struct.wmi, ptr %33, i32 0, i32 21
  %34 = ptrtoint ptr %multi_rmw_idx19.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %multi_rmw_idx19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %35)
  %cmp.i = icmp eq i32 %35, 15
  br i1 %cmp.i, label %if.then.i, label %if.then7.ath9k_reg_rmw_buffer.exit_crit_edge

if.then7.ath9k_reg_rmw_buffer.exit_crit_edge:     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_reg_rmw_buffer.exit

if.then.i:                                        ; preds = %if.then7
  %multi_rmw22.i = getelementptr inbounds %struct.wmi, ptr %33, i32 0, i32 20
  %call25.i = call i32 @ath9k_wmi_cmd(ptr noundef %33, i32 noundef 32, ptr noundef %multi_rmw22.i, i32 noundef 120, ptr noundef nonnull %rsp_status.i, i32 noundef 4, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end33.i_crit_edge, label %do.body.i, !prof !187

if.then.i.if.end33.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

do.body.i:                                        ; preds = %if.then.i
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3, i32 3
  %36 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %37, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool29.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool29.not.i, label %do.body.i.if.end33.i_crit_edge, label %if.then30.i

do.body.i.if.end33.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.then30.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wmi.i, align 4
  %multi_rmw_idx32.i = getelementptr inbounds %struct.wmi, ptr %39, i32 0, i32 21
  %40 = ptrtoint ptr %multi_rmw_idx32.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %multi_rmw_idx32.i, align 4
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.14, ptr noundef %common.i, ptr noundef nonnull @.str.40, i32 noundef %41) #9
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %do.body.i.if.end33.i_crit_edge, %if.then.i.if.end33.i_crit_edge
  %42 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wmi.i, align 4
  %multi_rmw_idx35.i = getelementptr inbounds %struct.wmi, ptr %43, i32 0, i32 21
  %44 = ptrtoint ptr %multi_rmw_idx35.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %multi_rmw_idx35.i, align 4
  br label %ath9k_reg_rmw_buffer.exit

ath9k_reg_rmw_buffer.exit:                        ; preds = %if.end33.i, %if.then7.ath9k_reg_rmw_buffer.exit_crit_edge
  %45 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wmi.i, align 4
  %multi_rmw_mutex38.i = getelementptr inbounds %struct.wmi, ptr %46, i32 0, i32 22
  call void @mutex_unlock(ptr noundef %multi_rmw_mutex38.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp_status.i) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf.i) #9
  %47 = getelementptr inbounds %struct.register_rmw, ptr %buf.i, i32 0, i32 1
  %48 = getelementptr inbounds %struct.register_rmw, ptr %buf.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf_ret.i) #9
  %49 = ptrtoint ptr %buf_ret.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %buf_ret.i, align 4, !annotation !186
  %50 = getelementptr inbounds %struct.register_rmw, ptr %buf_ret.i, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %50, align 4, !annotation !186
  %52 = getelementptr inbounds %struct.register_rmw, ptr %buf_ret.i, i32 0, i32 2
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %52, align 4, !annotation !186
  %54 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %reg_offset, ptr %buf.i, align 4
  %55 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %set, ptr %47, align 4
  %56 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %clr, ptr %48, align 4
  %wmi.i29 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %13, i32 0, i32 4
  %57 = ptrtoint ptr %wmi.i29 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wmi.i29, align 4
  %call4.i = call i32 @ath9k_wmi_cmd(ptr noundef %58, i32 noundef 32, ptr noundef nonnull %buf.i, i32 noundef 12, ptr noundef nonnull %buf_ret.i, i32 noundef 12, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i30 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i30, label %if.else.ath9k_reg_rmw_single.exit_crit_edge, label %do.body.i33, !prof !187

if.else.ath9k_reg_rmw_single.exit_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_reg_rmw_single.exit

do.body.i33:                                      ; preds = %if.else
  %debug_mask.i31 = getelementptr inbounds %struct.ath_hw, ptr %hw_priv, i32 0, i32 3, i32 3
  %59 = ptrtoint ptr %debug_mask.i31 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %debug_mask.i31, align 4
  %and.i32 = and i32 %60, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32)
  %tobool7.not.i = icmp eq i32 %and.i32, 0
  br i1 %tobool7.not.i, label %do.body.i33.ath9k_reg_rmw_single.exit_crit_edge, label %if.then8.i

do.body.i33.ath9k_reg_rmw_single.exit_crit_edge:  ; preds = %do.body.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath9k_reg_rmw_single.exit

if.then8.i:                                       ; preds = %do.body.i33
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.14, ptr noundef %common.i, ptr noundef nonnull @.str.41, i32 noundef %reg_offset, i32 noundef %call4.i) #9
  br label %ath9k_reg_rmw_single.exit

ath9k_reg_rmw_single.exit:                        ; preds = %if.then8.i, %do.body.i33.ath9k_reg_rmw_single.exit_crit_edge, %if.else.ath9k_reg_rmw_single.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf_ret.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i) #9
  br label %cleanup

cleanup:                                          ; preds = %ath9k_reg_rmw_single.exit, %ath9k_reg_rmw_buffer.exit, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_rx_tasklet(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_tx_failed_tasklet(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_ani_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_ps_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_fatal_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_tx_cleanup_timer(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_cmn_init_channels_rates(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_init_crypto(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_init_btcoex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_wmi_cmd(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_htc_op_ps_wakeup(ptr nocapture noundef readonly %common) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @ath9k_htc_ps_wakeup(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_htc_op_ps_restore(ptr nocapture noundef readonly %common) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @ath9k_htc_ps_restore(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_ps_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_ps_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ath_usb_read_cachesize(ptr nocapture noundef readnone %common, ptr nocapture noundef writeonly %csz) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %csz to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32, ptr %csz, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ath_usb_eeprom_read(ptr nocapture noundef readonly %common, i32 noundef %off, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %shl = shl i32 %off, 2
  %add = add i32 %shl, 8192
  %call = tail call i32 %3(ptr noundef %1, i32 noundef %add) #9
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %5)
  %cmp = icmp eq i32 %5, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %5)
  %cmp4 = icmp ugt i32 %5, 447
  %cond = select i1 %cmp4, i32 16516, i32 16508
  %cond5 = select i1 %cmp, i32 16584, i32 %cond
  %call6 = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %1, i32 noundef %cond5, i32 noundef 327680, i32 noundef 0, i32 noundef 100000) #9
  br i1 %call6, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %9)
  %cmp11 = icmp eq i32 %9, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %9)
  %cmp16 = icmp ugt i32 %9, 447
  %cond17 = select i1 %cmp16, i32 16516, i32 16508
  %cond19 = select i1 %cmp11, i32 16584, i32 %cond17
  %call20 = tail call i32 %7(ptr noundef %1, i32 noundef %cond19) #9
  %conv = trunc i32 %call20 to i16
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %data, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_beaconq_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_htc_cabq_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_htc_txq_setup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_reload_chainmask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath9k_htc_get_eeprom_base(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_to_ieee80211_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_reg_notifier_apply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ieee80211_create_tpt_led_trigger(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_deinit_leds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_deinit_debug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_pause_polling(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hif_usb_init() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !31, !32, !34, !36, !38, !39, !41, !43, !45, !46, !47, !48, !49, !51, !53, !55, !57, !58, !60, !61, !62, !63, !64, !65, !67, !68, !69, !70, !71, !72, !74, !75, !76, !77, !78, !80, !81, !82, !84, !86, !87, !89, !90, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !108, !109, !111, !112, !114, !115, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !169, !171, !173, !174, !175}
!llvm.module.flags = !{!176, !177, !178, !179, !180, !181, !182, !183}
!llvm.ident = !{!184}

!0 = !{ptr @__UNIQUE_ID_author354, !1, !"__UNIQUE_ID_author354", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_file355, !3, !"__UNIQUE_ID_file355", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_license356, !3, !"__UNIQUE_ID_license356", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description357, !6, !"__UNIQUE_ID_description357", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 23, i32 1}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 26, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype358, !8, !"__UNIQUE_ID_debugtype358", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug359, !11, !"__UNIQUE_ID_debug359", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 27, i32 1}
!12 = !{ptr @__param_nohwcrypt, !13, !"__param_nohwcrypt", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 30, i32 1}
!14 = !{ptr @__UNIQUE_ID_nohwcrypttype360, !13, !"__UNIQUE_ID_nohwcrypttype360", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_nohwcrypt361, !16, !"__UNIQUE_ID_nohwcrypt361", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 31, i32 1}
!17 = !{ptr @__param_btcoex_enable, !18, !"__param_btcoex_enable", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 34, i32 1}
!19 = !{ptr @__UNIQUE_ID_btcoex_enabletype362, !18, !"__UNIQUE_ID_btcoex_enabletype362", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_btcoex_enable363, !21, !"__UNIQUE_ID_btcoex_enable363", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 35, i32 1}
!22 = !{ptr @__param_ps_enable, !23, !"__param_ps_enable", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 38, i32 1}
!24 = !{ptr @__UNIQUE_ID_ps_enabletype364, !23, !"__UNIQUE_ID_ps_enabletype364", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_ps_enable365, !26, !"__UNIQUE_ID_ps_enable365", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 39, i32 1}
!27 = !{ptr @htc_use_dev_fw, !28, !"htc_use_dev_fw", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 41, i32 5}
!29 = !{ptr @__param_use_dev_fw, !30, !"__param_use_dev_fw", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 42, i32 1}
!31 = !{ptr @__UNIQUE_ID_use_dev_fwtype366, !30, !"__UNIQUE_ID_use_dev_fwtype366", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_use_dev_fw367, !33, !"__UNIQUE_ID_use_dev_fw367", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 43, i32 1}
!34 = !{ptr @ath9k_htc_led_blink, !35, !"ath9k_htc_led_blink", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 46, i32 5}
!36 = !{ptr @__param_blink, !37, !"__param_blink", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 47, i32 1}
!38 = !{ptr @__UNIQUE_ID_blinktype368, !37, !"__UNIQUE_ID_blinktype368", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_blink369, !40, !"__UNIQUE_ID_blink369", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 48, i32 1}
!41 = !{ptr @__initcall__kmod_ath9k_htc__370_1027_ath9k_htc_init6, !42, !"__initcall__kmod_ath9k_htc__370_1027_ath9k_htc_init6", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 1027, i32 1}
!43 = !{ptr @.str, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 1032, i32 2}
!45 = !{ptr @.str.1, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.2, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ath9k_htc_exit._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @ath9k_htc_exit._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @__exitcall_ath9k_htc_exit, !50, !"__exitcall_ath9k_htc_exit", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 1034, i32 1}
!51 = !{ptr @htc_modparam_nohwcrypt, !52, !"htc_modparam_nohwcrypt", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 29, i32 5}
!53 = !{ptr @ath9k_htc_btcoex_enable, !54, !"ath9k_htc_btcoex_enable", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 33, i32 12}
!55 = !{ptr @ath9k_ps_enable, !56, !"ath9k_ps_enable", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 37, i32 12}
!57 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!58 = !{ptr @ath9k_debug, !59, !"ath9k_debug", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 25, i32 21}
!60 = !{ptr @__param_str_nohwcrypt, !13, !"__param_str_nohwcrypt", i1 false, i1 false}
!61 = !{ptr @__param_str_btcoex_enable, !18, !"__param_str_btcoex_enable", i1 false, i1 false}
!62 = !{ptr @__param_str_ps_enable, !23, !"__param_str_ps_enable", i1 false, i1 false}
!63 = !{ptr @__param_str_use_dev_fw, !30, !"__param_str_use_dev_fw", i1 false, i1 false}
!64 = !{ptr @__param_str_blink, !37, !"__param_str_blink", i1 false, i1 false}
!65 = !{ptr @.str.3, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 91, i32 3}
!67 = !{ptr @.str.4, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.5, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.6, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ath9k_htc_wait_for_target._entry, !66, !"_entry", i1 false, i1 false}
!71 = !{ptr @ath9k_htc_wait_for_target._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.7, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 214, i32 2}
!74 = !{ptr @.str.8, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.9, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ath9k_init_htc_services._entry, !73, !"_entry", i1 false, i1 false}
!77 = !{ptr @ath9k_init_htc_services._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.11, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 220, i32 2}
!80 = !{ptr @ath9k_init_htc_services._entry.10, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ath9k_init_htc_services._entry_ptr.12, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.13, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 891, i32 3}
!84 = !{ptr @.str.14, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 895, i32 2}
!86 = !{ptr @.str.15, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.16, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 908, i32 2}
!89 = !{ptr @.str.17, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ath9k_init_device._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ath9k_init_device._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @ath9k_init_priv.__key, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 644, i32 2}
!94 = !{ptr @.str.18, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ath9k_init_priv.__key.19, !96, !"__key", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 645, i32 2}
!97 = !{ptr @.str.20, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @ath9k_init_priv.__key.21, !99, !"__key", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 646, i32 2}
!100 = !{ptr @.str.22, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @ath9k_init_priv.__key.23, !102, !"__key", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 647, i32 2}
!103 = !{ptr @.str.24, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @ath9k_init_priv.__key.25, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 650, i32 2}
!106 = !{ptr @.str.26, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ath9k_init_priv.__key.27, !105, !"__key", i1 false, i1 false}
!108 = !{ptr @.str.28, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ath9k_init_priv.__key.29, !110, !"__key", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 651, i32 2}
!111 = !{ptr @.str.30, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ath9k_init_priv.__key.31, !113, !"__key", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 652, i32 2}
!114 = !{ptr @.str.32, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @ath9k_init_priv.__key.33, !116, !"__key", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 653, i32 2}
!117 = !{ptr @.str.34, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.35, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 664, i32 3}
!120 = !{ptr @.str.36, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 247, i32 3}
!122 = !{ptr @.str.37, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 274, i32 3}
!124 = !{ptr @.str.38, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 295, i32 3}
!126 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 318, i32 3}
!128 = !{ptr @.str.40, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 444, i32 4}
!130 = !{ptr @.str.41, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 484, i32 3}
!132 = !{ptr @ath9k_htc_ps_ops, !133, !"ath9k_htc_ps_ops", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 74, i32 32}
!134 = !{ptr @ath9k_usb_bus_ops, !135, !"ath9k_usb_bus_ops", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 538, i32 33}
!136 = !{ptr @.str.42, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 554, i32 3}
!138 = !{ptr @.str.43, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 560, i32 3}
!140 = !{ptr @.str.44, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 565, i32 3}
!142 = !{ptr @.str.45, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 570, i32 3}
!144 = !{ptr @.str.46, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 574, i32 3}
!146 = !{ptr @.str.47, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 578, i32 3}
!148 = !{ptr @if_comb, !149, !"if_comb", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 705, i32 49}
!150 = !{ptr @if_limits, !151, !"if_limits", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 695, i32 43}
!152 = !{ptr @.str.48, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 800, i32 65}
!154 = !{ptr @.str.49, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 804, i32 2}
!156 = !{ptr @.str.50, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @ath9k_init_firmware_version._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @ath9k_init_firmware_version._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.52, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 814, i32 3}
!161 = !{ptr @ath9k_init_firmware_version._entry.51, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @ath9k_init_firmware_version._entry_ptr.53, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.55, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 822, i32 2}
!165 = !{ptr @ath9k_init_firmware_version._entry.54, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @ath9k_init_firmware_version._entry_ptr.56, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.57, !164, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.58, !164, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @ath9k_htc_tpt_blink, !170, !"ath9k_htc_tpt_blink", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 50, i32 41}
!171 = !{ptr @.str.59, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_init.c", i32 1021, i32 3}
!173 = !{ptr @.str.60, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @ath9k_htc_init._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @ath9k_htc_init._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{i32 1, !"wchar_size", i32 2}
!177 = !{i32 1, !"min_enum_size", i32 4}
!178 = !{i32 8, !"branch-target-enforcement", i32 0}
!179 = !{i32 8, !"sign-return-address", i32 0}
!180 = !{i32 8, !"sign-return-address-all", i32 0}
!181 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!182 = !{i32 7, !"uwtable", i32 1}
!183 = !{i32 7, !"frame-pointer", i32 2}
!184 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!185 = !{i64 2148383648, i64 2148383674, i64 2148383703, i64 2148383737, i64 2148383768, i64 2148383791}
!186 = !{!"auto-init"}
!187 = !{!"branch_weights", i32 2000, i32 1}
!188 = !{i64 2148381183, i64 2148381209, i64 2148381238, i64 2148381272, i64 2148381303, i64 2148381326}
