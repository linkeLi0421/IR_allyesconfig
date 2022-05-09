; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8723be/trx.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8723be/trx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.rtl_stats = type { [6 x i8], [2 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [4 x i8], [4 x i8], [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i8, i32, i32, [2 x i32] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
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
%struct.atomic_t = type { i32 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.rtl_priv = type { ptr, %struct.completion, %struct.list_head, ptr, ptr, %struct.rtl_dualmac_easy_concurrent_ctl, %struct.rtl_dmsp_ctl, %struct.rtl_locks, %struct.rtl_works, %struct.rtl_mac, %struct.rtl_hal, %struct.rtl_regulatory, %struct.rtl_rfkill, %struct.rtl_io, %struct.rtl_phy, %struct.rtl_dm, %struct.rtl_security, %struct.rtl_efuse, %struct.rtl_led_ctl, %struct.rtl_tx_report, %struct.rtl_scan_list, %struct.rtl_ps_ctl, %struct.rate_adaptive, %struct.dynamic_primary_cca, %struct.wireless_stats, %struct.rt_link_detect, %struct.false_alarm_statistics, ptr, %struct.list_head, %struct.sk_buff_head, %struct.rtl_debug, i32, ptr, ptr, i32, %struct.dig_t, %struct.ps_t, i32, i32, i32, i32, i8, i8, ptr, i32, i8, i8, [5 x i8], %struct.proxim, %struct.bt_coexist_info, i8, %struct.wiphy_wowlan_support, [0 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtl_dualmac_easy_concurrent_ctl = type { i32, i8, i8, i8, i8 }
%struct.rtl_dmsp_ctl = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i32 }
%struct.rtl_locks = type { %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.rtl_works = type { ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.tasklet_struct, %struct.tasklet_struct, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rtl_mac = type { [6 x i8], i8, i8, i32, i32, [6 x %struct.ieee80211_supported_band], ptr, ptr, i32, [9 x %struct.rtl_tid_data], i32, i32, i32, i8, i8, i8, i32, i16, i16, i16, i8, i8, i8, [9 x %struct.sk_buff_head], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], i32, [16 x i8], i32, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i64, i8, i8, i16, i8, i32, i8, i8, i8, i8, [5 x %struct.ieee80211_tx_queue_params], [4 x %struct.rtl_qos_parameters], i64, i64, i32, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.rtl_tid_data = type { %struct.rtl_ht_agg }
%struct.rtl_ht_agg = type { i16, i16, i16, i64, i32, i8, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.rtl_qos_parameters = type { i16, i16, i8, i8, i16 }
%struct.rtl_hal = type { ptr, i8, i8, i8, i8, i8, i8, i8, %struct.bt_coexist_8723, i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i16, i16, i8, i8, i8, i8, i8, i8, i16, i32, i8, i8, %struct.p2p_ps_offload_t, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i64, i32, ptr, i8, i8, i8 }
%struct.bt_coexist_8723 = type { i32, i32, i32, i32, i8, i8, i8, i32, i8, i8, i8, %struct.btdm_8723 }
%struct.btdm_8723 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i8, i32, i32, i32, i8, i32, i32, i32, i32, i8, i8 }
%struct.p2p_ps_offload_t = type { i8 }
%struct.rtl_regulatory = type { [2 x i8], i16, i16, i32, i16, i16, i16, ptr }
%struct.rtl_rfkill = type { i8 }
%struct.rtl_io = type { ptr, %struct.mutex, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_phy = type { [4 x %struct.bb_reg_def], %struct.init_gain, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i32, i32, i32, [16 x i32], [4 x i32], [10 x i32], i8, [4 x i8], i8, i8, [46 x %struct.iqk_matrix_regs], i8, i8, i8, i8, [13 x [16 x i32]], [13 x [16 x i32]], [2 x [4 x [4 x [84 x i32]]]], [4 x [4 x [6 x i8]]], [4 x [4 x [5 x i8]]], [4 x i8], i8, i8, i8, i8, [4 x [4 x [6 x [14 x [4 x i8]]]]], [4 x [4 x [6 x [49 x [4 x i8]]]]], [2 x i32], i8, [2 x i32], i32, i8, i32, i8, [10 x %struct.phy_parameters], i16, i8, i32 }
%struct.bb_reg_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.init_gain = type { i8, i8, i8, i8, i8 }
%struct.iqk_matrix_regs = type { i8, [1 x [8 x i32]] }
%struct.phy_parameters = type { i16, ptr }
%struct.rtl_dm = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, [6 x i8], i8, i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, %struct.dm_phy_dbg_info, i8, i8, i8, [2 x i32], i32, i32, i8, i32, i32, i8, [4 x i8], i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, %struct.fast_ant_training, i8, i8, i32, i32, i32, i32, i8, ptr, i8, i64, i64 }
%struct.dm_phy_dbg_info = type { [4 x i8], i64, i64, i64, i16, i16, [4 x i32] }
%struct.fast_ant_training = type { [6 x i8], i8, i8, i8, [7 x i32], [7 x i32], [7 x i32], i8, i32, [33 x i8], [33 x i8], [33 x i8], [33 x i32], [33 x i32], [33 x i32], [33 x i32], i8, i8 }
%struct.rtl_security = type { i8, i8, i8, i32, i32, i32, [32 x [6 x i8]], [5 x [61 x i8]], [5 x i8], ptr }
%struct.rtl_efuse = type { ptr, i8, i8, i16, [2 x [512 x i8]], i16, i8, i8, i8, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i8, [2 x i8], [3 x [2 x i8]], [12 x i8], [12 x i8], [4 x [3 x i8]], [4 x [12 x i8]], [4 x [12 x i8]], [2 x i8], i8, i8, [2 x [3 x i8]], [2 x [59 x i8]], [2 x [59 x i8]], [4 x [14 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [7 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], i8, i16, [3 x i8], i8, i8, [2 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtl_led_ctl = type { i8, %struct.rtl_led, %struct.rtl_led }
%struct.rtl_led = type { ptr, i32, i8 }
%struct.rtl_tx_report = type { %struct.atomic_t, i16, i32, i16, %struct.sk_buff_head }
%struct.rtl_scan_list = type { i32, %struct.list_head }
%struct.rtl_ps_ctl = type { i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rtl_p2p_ps_info, i8, i8, i8, i8, i8, i32 }
%struct.rtl_p2p_ps_info = type { i32, i32, i8, i8, i8, i8, [2 x i8], [2 x i32], [2 x i32], [2 x i32] }
%struct.rate_adaptive = type { i8, i8, i16, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.dynamic_primary_cca = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.wireless_stats = type { i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, [4 x i32], i32, i32, i32, i32, i32, i32, [4 x i8], [4 x i8], [2 x i8], [4 x i16], [4 x i16], %struct.rt_smooth_data, %struct.rt_smooth_data }
%struct.rt_smooth_data = type { [100 x i32], i32, i32, i32 }
%struct.rt_link_detect = type { i32, i32, [4 x i32], [4 x i32], i32, i32, i8, i8, i8, i8, i8, [9 x [4 x i32]], [9 x i32], [9 x i8] }
%struct.false_alarm_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.rtl_debug = type { ptr, [20 x i8] }
%struct.dig_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.ps_t = type { i8, i8, i8, i8, i8, i32 }
%struct.proxim = type { i8, ptr, ptr, ptr }
%struct.bt_coexist_info = type { ptr, %struct.rtl_btc_info, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtl_btc_info = type { i8, i8, i8, i8, i8, i8, i32 }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.phy_rx_agc_info_t = type { i8 }
%struct.phy_status_rpt = type { [2 x %struct.phy_rx_agc_info_t], [2 x i8], i8, i8, i8, i8, i8, [2 x i8], [2 x i8], [2 x i8], [2 x i8], i8, [3 x i8], [2 x i8], [2 x i8], i8, i8, i8 }
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.140, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.140 = type { ptr }
%struct.page = type { i32, %union.anon.17, %union.anon.86, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.86 = type { %struct.atomic_t }
%struct.rtl_tcb_desc = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i32], i8 }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.133 }
%union.anon.133 = type { %struct.anon.137, [32 x i8] }
%struct.anon.137 = type { i64 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.rtl8192_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head, ptr, i32, i16, i16 }
%struct.rtl_tx_desc = type { [16 x i32] }

@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"GGGGGGGGGGGGGet Wakeup Packet!! WakeMatch=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA mapping error\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Insert 8 byte.pTcb->EMPktNum:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Enable RDG function.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"H2C Tx Cmd Content\0A\00", [44 x i8] zeroinitializer }, align 32
@rtl8723be_set_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8723be/trx.c\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rtl8723be: ERR txdesc :%d not processed\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl8723be_set_desc.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rtl8723be: ERR rxdesc :%d not process\0A\00", [57 x i8] zeroinitializer }, align 32
@rtl8723be_get_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rtl8723be: ERR txdesc :%d not process\0A\00", [57 x i8] zeroinitializer }, align 32
@rtl8723be_get_desc.__already_done.11 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rtl8723be: ERR rxdesc :%d not processed\0A\00", [55 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 40960, i64 49152, i64 53248]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 4, i64 6]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 12, i64 0, i64 1024]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 5]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 341, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 446, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 460, i32 5 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 552, i32 5 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 584, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 635, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 653, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 672, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 694, i32 4 }
@___asan_gen_.54 = private constant [56 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/trx.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 710, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 326, i32 6 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl8723be_rx_query_desc(ptr noundef %hw, ptr noundef %status, ptr nocapture noundef %rx_status, ptr noundef readonly %pdesc8, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pdesc8, align 4
  %4 = and i32 %3, -12648448
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  %conv = trunc i32 %5 to i16
  %length = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 14
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %length, align 2
  %7 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pdesc8, align 4
  %sh.diff = lshr i32 %8, 5
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %conv5 = and i8 %tr.sh.diff, 120
  %rx_drvinfo_size = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 23
  %9 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv5, ptr %rx_drvinfo_size, align 1
  %10 = load i32, ptr %pdesc8, align 4
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 3
  %rx_bufshift = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 24
  %13 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %rx_bufshift, align 2
  %14 = load i32, ptr %pdesc8, align 4
  %icv = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 19
  %15 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %icv, align 2
  %sh.diff307 = lshr i32 %14, 18
  %tr.sh.diff308 = trunc i32 %sh.diff307 to i8
  %bf.value = and i8 %tr.sh.diff308, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.value, %bf.clear
  store i8 %bf.set, ptr %icv, align 2
  %16 = load i32, ptr %pdesc8, align 4
  %sum.shift.i = lshr i32 %16, 22
  %17 = trunc i32 %sum.shift.i to i8
  %18 = shl i8 %17, 6
  %bf.value13 = and i8 %18, 64
  %bf.clear15 = and i8 %bf.set, 63
  %bf.lshr24 = lshr exact i8 %bf.value, 5
  %19 = or i8 %bf.lshr24, %17
  %bf.shl31 = shl i8 %19, 7
  %bf.clear32 = or i8 %bf.clear15, %bf.value13
  %bf.set33 = or i8 %bf.clear32, %bf.shl31
  store i8 %bf.set33, ptr %icv, align 2
  %20 = load i32, ptr %pdesc8, align 4
  %21 = trunc i32 %20 to i8
  %22 = lshr i8 %21, 1
  %23 = and i8 %22, 4
  %bf.clear40 = and i8 %bf.set33, -5
  %24 = or i8 %bf.clear40, %23
  %bf.set41 = xor i8 %24, 4
  store i8 %bf.set41, ptr %icv, align 2
  %add.ptr.i = getelementptr i32, ptr %pdesc8, i32 3
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i, align 4
  %27 = lshr i32 %26, 24
  %28 = trunc i32 %27 to i8
  %conv44 = and i8 %28, 127
  %rate = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 5
  %29 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv44, ptr %rate, align 1
  %add.ptr.i276 = getelementptr i32, ptr %pdesc8, i32 4
  %30 = ptrtoint ptr %add.ptr.i276 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i276, align 4
  %sh.diff309 = lshr i32 %31, 20
  %tr.sh.diff310 = trunc i32 %sh.diff309 to i8
  %bf.value48 = and i8 %tr.sh.diff310, 16
  %bf.clear50 = and i8 %bf.set41, -17
  %bf.set51 = or i8 %bf.clear50, %bf.value48
  store i8 %bf.set51, ptr %icv, align 2
  %add.ptr.i278 = getelementptr i32, ptr %pdesc8, i32 1
  %32 = ptrtoint ptr %add.ptr.i278 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i278, align 4
  %isampdu = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 25
  %34 = lshr i32 %33, 23
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = ptrtoint ptr %isampdu to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %isampdu, align 1
  %38 = load i32, ptr %add.ptr.i278, align 4
  %isfirst_ampdu = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 26
  %39 = lshr i32 %38, 23
  %40 = trunc i32 %39 to i8
  %41 = and i8 %40, 1
  %42 = ptrtoint ptr %isfirst_ampdu to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %isfirst_ampdu, align 8
  %add.ptr.i280 = getelementptr i32, ptr %pdesc8, i32 5
  %43 = ptrtoint ptr %add.ptr.i280 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i280, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #4
  %timestamp_low = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 20
  %46 = ptrtoint ptr %timestamp_low to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %timestamp_low, align 4
  %47 = ptrtoint ptr %add.ptr.i276 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i276, align 4
  %49 = and i32 %48, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool61 = icmp ne i32 %49, 0
  %rx_is40mhzpacket = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 27
  %frombool62 = zext i1 %tobool61 to i8
  %50 = ptrtoint ptr %rx_is40mhzpacket to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %frombool62, ptr %rx_is40mhzpacket, align 1
  %51 = ptrtoint ptr %add.ptr.i276 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i276, align 4
  %sum.shift.i285 = lshr i32 %52, 28
  %53 = trunc i32 %sum.shift.i285 to i8
  %conv64 = and i8 %53, 3
  %bandwidth = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 38
  %54 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv64, ptr %bandwidth, align 8
  %55 = ptrtoint ptr %add.ptr.i278 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i278, align 4
  %57 = lshr i32 %56, 24
  %and.i.i288 = and i32 %57, 127
  %macid = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 50
  %58 = ptrtoint ptr %macid to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and.i.i288, ptr %macid, align 8
  %59 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i, align 4
  %is_ht = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 42
  %61 = lshr i32 %60, 30
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  %64 = ptrtoint ptr %is_ht to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %is_ht, align 4
  %switch.and = and i8 %28, 124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and)
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  %is_cck = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 41
  %frombool86 = zext i1 %switch.selectcmp to i8
  %65 = ptrtoint ptr %is_cck to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %frombool86, ptr %is_cck, align 1
  %add.ptr.i292 = getelementptr i32, ptr %pdesc8, i32 2
  %66 = ptrtoint ptr %add.ptr.i292 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i292, align 4
  %68 = trunc i32 %67 to i8
  %69 = lshr i8 %68, 2
  %70 = and i8 %69, 4
  %71 = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 49
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %70, ptr %71, align 2
  %73 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr.i, align 4
  %75 = and i32 %74, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool91.not = icmp eq i32 %75, 0
  br i1 %tobool91.not, label %if.else93, label %entry.if.then106_crit_edge

entry.if.then106_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then106

if.else93:                                        ; preds = %entry
  %76 = and i32 %74, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool95.not = icmp eq i32 %76, 0
  br i1 %tobool95.not, label %if.end104, label %if.else93.if.then106_crit_edge

if.else93.if.then106_crit_edge:                   ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then106

if.end104:                                        ; preds = %if.else93
  %77 = and i32 %74, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool99.not = icmp eq i32 %77, 0
  br i1 %tobool99.not, label %if.end104.if.end108_crit_edge, label %if.end104.if.then106_crit_edge

if.end104.if.then106_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then106

if.end104.if.end108_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end108

if.then106:                                       ; preds = %if.end104.if.then106_crit_edge, %if.else93.if.then106_crit_edge, %entry.if.then106_crit_edge
  %wake_match.0305 = phi i32 [ 1, %if.end104.if.then106_crit_edge ], [ 2, %if.else93.if.then106_crit_edge ], [ 4, %entry.if.then106_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4096, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %wake_match.0305) #4
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.end104.if.end108_crit_edge
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %78 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %center_freq, align 4
  %conv109 = trunc i32 %81 to i16
  %freq = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 5
  %82 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %82)
  %bf.load110 = load i16, ptr %freq, align 4
  %bf.shl112 = shl i16 %conv109, 3
  %bf.clear113 = and i16 %bf.load110, 7
  %bf.set114 = or i16 %bf.clear113, %bf.shl112
  store i16 %bf.set114, ptr %freq, align 4
  %83 = load ptr, ptr %chandef, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %conv118 = trunc i32 %85 to i8
  %band119 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 11
  %86 = ptrtoint ptr %band119 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv118, ptr %band119, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %87 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data, align 4
  %89 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %rx_drvinfo_size, align 1
  %conv121 = zext i8 %90 to i32
  %add.ptr = getelementptr i8, ptr %88, i32 %conv121
  %91 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %rx_bufshift, align 2
  %conv123 = zext i8 %92 to i32
  %add.ptr124 = getelementptr i8, ptr %add.ptr, i32 %conv123
  %93 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load126 = load i8, ptr %icv, align 2
  %94 = and i8 %bf.load126, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool130.not = icmp eq i8 %94, 0
  br i1 %tobool130.not, label %if.end108.if.end133_crit_edge, label %if.then131

if.end108.if.end133_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end133

if.then131:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  %flag = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %95 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flag, align 8
  %or132 = or i32 %96, 32
  store i32 %or132, ptr %flag, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %if.end108.if.end133_crit_edge
  %97 = ptrtoint ptr %rx_is40mhzpacket to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %rx_is40mhzpacket, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool135.not = icmp eq i8 %98, 0
  br i1 %tobool135.not, label %if.end133.if.end140_crit_edge, label %if.then136

if.end133.if.end140_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end140

if.then136:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
  %bw = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %99 = ptrtoint ptr %bw to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %bf.load137 = load i16, ptr %bw, align 1
  %bf.clear138 = and i16 %bf.load137, -14337
  %bf.set139 = or i16 %bf.clear138, 6144
  store i16 %bf.set139, ptr %bw, align 1
  br label %if.end140

if.end140:                                        ; preds = %if.then136, %if.end133.if.end140_crit_edge
  %100 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %is_ht, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool142.not = icmp eq i8 %101, 0
  br i1 %tobool142.not, label %if.end140.if.end147_crit_edge, label %if.then143

if.end140.if.end147_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end147

if.then143:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #6
  %encoding = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %102 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %102, i32 2)
  %bf.load144 = load i16, ptr %encoding, align 1
  %bf.clear145 = and i16 %bf.load144, 16383
  %bf.set146 = or i16 %bf.clear145, 16384
  store i16 %bf.set146, ptr %encoding, align 1
  br label %if.end147

if.end147:                                        ; preds = %if.then143, %if.end140.if.end147_crit_edge
  %flag148 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %103 = ptrtoint ptr %flag148 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flag148, align 8
  %or149 = or i32 %104, 128
  store i32 %or149, ptr %flag148, align 8
  %105 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load151 = load i8, ptr %icv, align 2
  %106 = and i8 %bf.load151, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool155.not = icmp eq i8 %106, 0
  br i1 %tobool155.not, label %if.end147.if.end167_crit_edge, label %if.then156

if.end147.if.end167_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end167

if.then156:                                       ; preds = %if.end147
  %107 = ptrtoint ptr %add.ptr124 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %add.ptr124, align 2
  %109 = and i16 %108, -1024
  %110 = zext i16 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values)
  switch i16 %109, label %land.lhs.true [
    i16 -24576, label %if.then156.if.else163_crit_edge
    i16 -16384, label %if.then156.if.else163_crit_edge313
    i16 -12288, label %if.then156.if.else163_crit_edge314
  ]

if.then156.if.else163_crit_edge314:               ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else163

if.then156.if.else163_crit_edge313:               ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else163

if.then156.if.else163_crit_edge:                  ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else163

land.lhs.true:                                    ; preds = %if.then156
  %.pre = and i16 %108, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pre)
  %cmp.i.not = icmp eq i16 %.pre, 0
  br i1 %cmp.i.not, label %land.lhs.true.if.else163_crit_edge, label %if.then160

land.lhs.true.if.else163_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else163

if.then160:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %or162 = or i32 %104, 130
  br label %if.end167.sink.split

if.else163:                                       ; preds = %land.lhs.true.if.else163_crit_edge, %if.then156.if.else163_crit_edge, %if.then156.if.else163_crit_edge313, %if.then156.if.else163_crit_edge314
  %and165 = and i32 %or149, -3
  br label %if.end167.sink.split

if.end167.sink.split:                             ; preds = %if.else163, %if.then160
  %or162.sink = phi i32 [ %or162, %if.then160 ], [ %and165, %if.else163 ]
  %111 = ptrtoint ptr %flag148 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or162.sink, ptr %flag148, align 8
  br label %if.end167

if.end167:                                        ; preds = %if.end167.sink.split, %if.end147.if.end167_crit_edge
  %112 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %is_ht, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool169 = icmp ne i8 %113, 0
  %114 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %rate, align 1
  %call171 = tail call i32 @rtlwifi_rate_mapping(ptr noundef %hw, i1 noundef zeroext %tobool169, i1 noundef zeroext false, i8 noundef zeroext %115) #4
  %conv172 = trunc i32 %call171 to i8
  %rate_idx = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 8
  %116 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv172, ptr %rate_idx, align 1
  %117 = ptrtoint ptr %timestamp_low to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %timestamp_low, align 4
  %conv174 = zext i32 %118 to i64
  %119 = ptrtoint ptr %rx_status to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %conv174, ptr %rx_status, align 8
  %120 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool175.not = icmp eq i32 %120, 0
  br i1 %tobool175.not, label %if.end167.if.end181_crit_edge, label %if.then176

if.end167.if.end181_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end181

if.then176:                                       ; preds = %if.end167
  %121 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data, align 4
  %123 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %rx_bufshift, align 2
  %conv179 = zext i8 %124 to i32
  %add.ptr180 = getelementptr i8, ptr %122, i32 %conv179
  %125 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %priv, align 8
  %127 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %rx_drvinfo_size, align 1
  %conv.i = zext i8 %128 to i32
  %add.ptr.i300 = getelementptr i8, ptr %122, i32 %conv.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i300, i32 %conv179
  %129 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %add.ptr3.i, align 2
  %131 = tail call i16 @llvm.bswap.i16(i16 %130) #4
  %conv5.i = zext i16 %131 to i32
  %and.i = and i16 %131, 12
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 2
  %132 = and i16 %130, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %132)
  %cmp.i.i.i = icmp eq i16 %132, 3
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #6
  %addr4.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 6
  br label %ieee80211_get_SA.exit.i

if.end.i.i:                                       ; preds = %if.then176
  %133 = and i16 %130, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %cmp.i11.not.i.i = icmp eq i16 %133, 0
  br i1 %cmp.i11.not.i.i, label %if.end5.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %addr3.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 4
  br label %ieee80211_get_SA.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %addr2.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 3
  br label %ieee80211_get_SA.exit.i

ieee80211_get_SA.exit.i:                          ; preds = %if.end5.i.i, %if.then3.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %addr4.i.i, %if.then.i.i ], [ %addr3.i.i, %if.then3.i.i ], [ %addr2.i.i, %if.end5.i.i ]
  %134 = call ptr @memcpy(ptr %status, ptr %retval.0.i.i, i32 6)
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %and.i)
  %cmp.not.i = icmp eq i16 %and.i, 4
  br i1 %cmp.not.i, label %ieee80211_get_SA.exit.i.land.end45.thread.i_crit_edge, label %land.lhs.true.i

ieee80211_get_SA.exit.i.land.end45.thread.i_crit_edge: ; preds = %ieee80211_get_SA.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end45.thread.i

land.lhs.true.i:                                  ; preds = %ieee80211_get_SA.exit.i
  %bssid.i = getelementptr inbounds %struct.rtl_priv, ptr %126, i32 0, i32 9, i32 34
  %and13.i = and i32 %conv5.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %land.lhs.true.i.cond.end23.i_crit_edge

land.lhs.true.i.cond.end23.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end23.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  %and17.i = and i32 %conv5.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %cond.false21.i, label %cond.true19.i

cond.true19.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 3
  br label %cond.end23.i

cond.false21.i:                                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 4
  br label %cond.end23.i

cond.end23.i:                                     ; preds = %cond.false21.i, %cond.true19.i, %land.lhs.true.i.cond.end23.i_crit_edge
  %cond24.i = phi ptr [ %addr2.i, %cond.true19.i ], [ %addr3.i, %cond.false21.i ], [ %addr1.i, %land.lhs.true.i.cond.end23.i_crit_edge ]
  %135 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %bssid.i, align 4
  %137 = ptrtoint ptr %cond24.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %cond24.i, align 4
  %xor.i.i = xor i32 %138, %136
  %add.ptr.i.i = getelementptr %struct.rtl_priv, ptr %126, i32 0, i32 9, i32 34, i32 4
  %139 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %cond24.i, i32 4
  %141 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %142, %140
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true27.i, label %cond.end23.i.land.end45.thread.i_crit_edge

cond.end23.i.land.end45.thread.i_crit_edge:       ; preds = %cond.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end45.thread.i

land.lhs.true27.i:                                ; preds = %cond.end23.i
  %143 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %143)
  %bf.load.i = load i8, ptr %icv, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.load.i)
  %144 = icmp ult i8 %bf.load.i, 32
  br i1 %144, label %land.end45.i, label %land.lhs.true27.i.land.end45.thread.i_crit_edge

land.lhs.true27.i.land.end45.thread.i_crit_edge:  ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end45.thread.i

land.end45.thread.i:                              ; preds = %land.lhs.true27.i.land.end45.thread.i_crit_edge, %cond.end23.i.land.end45.thread.i_crit_edge, %ieee80211_get_SA.exit.i.land.end45.thread.i_crit_edge
  %145 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %add.ptr3.i, align 2
  %147 = and i16 %146, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %147)
  %cmp.i810.i = icmp eq i16 %147, -32768
  br label %if.end56.i

land.end45.i:                                     ; preds = %land.lhs.true27.i
  %dev_addr.i = getelementptr inbounds %struct.rtl_priv, ptr %126, i32 0, i32 17, i32 19
  %148 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %addr1.i, align 4
  %150 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %dev_addr.i, align 4
  %xor.i1.i = xor i32 %151, %149
  %add.ptr.i2.i = getelementptr i8, ptr %addr1.i, i32 4
  %152 = ptrtoint ptr %add.ptr.i2.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %add.ptr.i2.i, align 2
  %add.ptr1.i3.i = getelementptr %struct.rtl_priv, ptr %126, i32 0, i32 17, i32 19, i32 4
  %154 = ptrtoint ptr %add.ptr1.i3.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %add.ptr1.i3.i, align 2
  %xor37.i4.i = xor i16 %155, %153
  %xor3.i5.i = zext i16 %xor37.i4.i to i32
  %or.i6.i = or i32 %xor.i1.i, %xor3.i5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i6.i)
  %cmp.i7.i = icmp eq i32 %or.i6.i, 0
  %156 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %add.ptr3.i, align 2
  %158 = and i16 %157, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %158)
  %cmp.i8.i = icmp eq i16 %158, -32768
  br i1 %cmp.i8.i, label %if.then54.i, label %land.end45.i.if.end56.i_crit_edge

land.end45.i.if.end56.i_crit_edge:                ; preds = %land.end45.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56.i

if.then54.i:                                      ; preds = %land.end45.i
  call void @__sanitizer_cov_trace_pc() #6
  %159 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %priv, align 8
  %num_qry_beacon_pkt.i = getelementptr inbounds %struct.rtl_priv, ptr %160, i32 0, i32 15, i32 50, i32 4
  %161 = ptrtoint ptr %num_qry_beacon_pkt.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %num_qry_beacon_pkt.i, align 8
  %inc.i = add i16 %162, 1
  store i16 %inc.i, ptr %num_qry_beacon_pkt.i, align 8
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then54.i, %land.end45.i.if.end56.i_crit_edge, %land.end45.thread.i
  %cmp.i814.i = phi i1 [ %cmp.i810.i, %land.end45.thread.i ], [ false, %land.end45.i.if.end56.i_crit_edge ], [ true, %if.then54.i ]
  %163 = phi i1 [ false, %land.end45.thread.i ], [ %cmp.i7.i, %land.end45.i.if.end56.i_crit_edge ], [ %cmp.i7.i, %if.then54.i ]
  %164 = phi i1 [ false, %land.end45.thread.i ], [ true, %land.end45.i.if.end56.i_crit_edge ], [ true, %if.then54.i ]
  %frombool.i.i = zext i1 %164 to i8
  %frombool1.i.i = zext i1 %163 to i8
  %frombool2.i.i = zext i1 %cmp.i814.i to i8
  %165 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %priv, align 8
  %167 = ptrtoint ptr %is_cck to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %is_cck, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool.not.i.i = icmp eq i8 %168, 0
  %packet_matchbssid.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 40
  %169 = ptrtoint ptr %packet_matchbssid.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %frombool.i.i, ptr %packet_matchbssid.i.i, align 2
  %packet_toself.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 43
  %170 = ptrtoint ptr %packet_toself.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %frombool1.i.i, ptr %packet_toself.i.i, align 1
  %packet_beacon10.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 44
  %171 = ptrtoint ptr %packet_beacon10.i.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %frombool2.i.i, ptr %packet_beacon10.i.i, align 2
  %rx_mimo_signalquality.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 31
  %172 = ptrtoint ptr %rx_mimo_signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 -1, ptr %rx_mimo_signalquality.i.i, align 4
  %arrayidx13.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 31, i32 1
  %173 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 -1, ptr %arrayidx13.i.i, align 1
  br i1 %tobool.not.i.i, label %for.body.preheader.i.i, label %if.then.i9.i

for.body.preheader.i.i:                           ; preds = %if.end56.i
  %arrayidx76.i.i = getelementptr %struct.rtl_priv, ptr %166, i32 0, i32 15, i32 15, i32 0
  %174 = ptrtoint ptr %arrayidx76.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx76.i.i, align 1, !range !38
  %176 = ptrtoint ptr %add.ptr180 to i32
  call void @__asan_load1_noabort(i32 %176)
  %bf.load.i.i = load i8, ptr %add.ptr180, align 1
  %177 = shl i8 %bf.load.i.i, 1
  %178 = and i8 %177, 126
  %sub85.i.i = add nsw i8 %178, -110
  %arrayidx93.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 36, i32 0
  %179 = ptrtoint ptr %arrayidx93.i.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %sub85.i.i, ptr %arrayidx93.i.i, align 1
  %call96.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub85.i.i) #4
  %arrayidx100.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 30, i32 0
  %180 = ptrtoint ptr %arrayidx100.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %call96.i.i, ptr %arrayidx100.i.i, align 1
  %arrayidx76.1.i.i = getelementptr %struct.rtl_priv, ptr %166, i32 0, i32 15, i32 15, i32 1
  %181 = ptrtoint ptr %arrayidx76.1.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx76.1.i.i, align 1, !range !38
  %arrayidx81.1.i.i = getelementptr [2 x %struct.phy_rx_agc_info_t], ptr %add.ptr180, i32 0, i32 1
  %183 = ptrtoint ptr %arrayidx81.1.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %bf.load.1.i.i = load i8, ptr %arrayidx81.1.i.i, align 1
  %184 = shl i8 %bf.load.1.i.i, 1
  %185 = and i8 %184, 126
  %sub85.1.i.i = add nsw i8 %185, -110
  %arrayidx93.1.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 36, i32 1
  %186 = ptrtoint ptr %arrayidx93.1.i.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %sub85.1.i.i, ptr %arrayidx93.1.i.i, align 1
  %call96.1.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub85.1.i.i) #4
  %conv97.1.i.i = zext i8 %call96.1.i.i to i32
  %arrayidx100.1.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 30, i32 1
  %187 = ptrtoint ptr %arrayidx100.1.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %call96.1.i.i, ptr %arrayidx100.1.i.i, align 1
  %cck_sig_qual_ofdm_pwdb_all102.i.i = getelementptr inbounds %struct.phy_status_rpt, ptr %add.ptr180, i32 0, i32 2
  %188 = ptrtoint ptr %cck_sig_qual_ofdm_pwdb_all102.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %cck_sig_qual_ofdm_pwdb_all102.i.i, align 1
  %190 = lshr i8 %189, 1
  %sub106.i.i = add nsw i8 %190, -110
  %call108.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub106.i.i) #4
  %conv109.i.i = zext i8 %call108.i.i to i32
  %rx_pwdb_all110.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 29
  %191 = ptrtoint ptr %rx_pwdb_all110.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %conv109.i.i, ptr %rx_pwdb_all110.i.i, align 4
  %bt_rx_rssi_percentage112.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 51
  %192 = ptrtoint ptr %bt_rx_rssi_percentage112.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %conv109.i.i, ptr %bt_rx_rssi_percentage112.i.i, align 4
  %rxpower.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 17
  %193 = ptrtoint ptr %rxpower.i.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %sub106.i.i, ptr %rxpower.i.i, align 8
  %conv113.i.i = sext i8 %sub106.i.i to i32
  %recvsignalpower114.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 16
  %194 = ptrtoint ptr %recvsignalpower114.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %conv113.i.i, ptr %recvsignalpower114.i.i, align 4
  %195 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %rate, align 1
  %197 = add i8 %196, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %197)
  %198 = icmp ult i8 %197, 8
  %max_spatial_stream.0.i.i = select i1 %198, i32 2, i32 1
  %arrayidx132.peel.i.i = getelementptr %struct.phy_status_rpt, ptr %add.ptr180, i32 0, i32 9, i32 0
  %199 = ptrtoint ptr %arrayidx132.peel.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx132.peel.i.i, align 1
  %call133.peel.i.i = tail call zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext %200) #4
  br i1 %164, label %if.end144.peel.i.i, label %for.body.preheader.i.i.for.inc152.peel.i.i_crit_edge

for.body.preheader.i.i.for.inc152.peel.i.i_crit_edge: ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc152.peel.i.i

if.then.i9.i:                                     ; preds = %if.end56.i
  %cck_agc_rpt_ofdm_cfosho_a.i.i = getelementptr inbounds %struct.phy_status_rpt, ptr %add.ptr180, i32 0, i32 3
  %201 = ptrtoint ptr %cck_agc_rpt_ofdm_cfosho_a.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %cck_agc_rpt_ofdm_cfosho_a.i.i, align 1
  %203 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %priv, align 8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %204, i32 0, i32 32
  %205 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %cfg.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %206, i32 0, i32 4
  %207 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %ops.i.i.i, align 4
  %get_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %208, i32 0, i32 45
  %209 = ptrtoint ptr %get_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %get_bbreg.i.i.i, align 4
  %call.i.i.i = tail call i32 %210(ptr noundef %hw, i32 noundef 2084, i32 noundef 512) #4
  %211 = lshr i8 %202, 5
  %212 = and i8 %202, 31
  %conv19.i.i = zext i8 %211 to i32
  %213 = zext i32 %conv19.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %213, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %conv19.i.i, label %if.then.i9.i.sw.epilog.i.i_crit_edge [
    i32 6, label %sw.bb.i.i
    i32 4, label %sw.bb22.i.i
    i32 1, label %sw.bb27.i.i
    i32 0, label %sw.bb32.i.i
  ]

if.then.i9.i.sw.epilog.i.i_crit_edge:             ; preds = %if.then.i9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.then.i9.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg3.i.i = mul nsw i8 %212, -2
  %sub.i.i = add nsw i8 %.neg3.i.i, -34
  br label %sw.epilog.i.i

sw.bb22.i.i:                                      ; preds = %if.then.i9.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg2.i.i = mul nsw i8 %212, -2
  %sub25.i.i = add nsw i8 %.neg2.i.i, -14
  br label %sw.epilog.i.i

sw.bb27.i.i:                                      ; preds = %if.then.i9.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg1.i.i = mul nsw i8 %212, -2
  %sub30.i.i = add nsw i8 %.neg1.i.i, 6
  br label %sw.epilog.i.i

sw.bb32.i.i:                                      ; preds = %if.then.i9.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg.i.i = mul nsw i8 %212, -2
  %sub35.i.i = add nsw i8 %.neg.i.i, 16
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb32.i.i, %sw.bb27.i.i, %sw.bb22.i.i, %sw.bb.i.i, %if.then.i9.i.sw.epilog.i.i_crit_edge
  %rx_pwr_all.0.i.i = phi i8 [ 0, %if.then.i9.i.sw.epilog.i.i_crit_edge ], [ %sub35.i.i, %sw.bb32.i.i ], [ %sub30.i.i, %sw.bb27.i.i ], [ %sub25.i.i, %sw.bb22.i.i ], [ %sub.i.i, %sw.bb.i.i ]
  %call37.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %rx_pwr_all.0.i.i) #4
  %214 = tail call i8 @llvm.umin.i8(i8 %call37.i.i, i8 100) #4
  %conv41.i.i = zext i8 %214 to i32
  %rx_pwdb_all.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 29
  %215 = ptrtoint ptr %rx_pwdb_all.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %conv41.i.i, ptr %rx_pwdb_all.i.i, align 4
  %bt_rx_rssi_percentage.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 51
  %216 = ptrtoint ptr %bt_rx_rssi_percentage.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %conv41.i.i, ptr %bt_rx_rssi_percentage.i.i, align 4
  %conv43.i.i = sext i8 %rx_pwr_all.0.i.i to i32
  %recvsignalpower.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 16
  %217 = ptrtoint ptr %recvsignalpower.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %conv43.i.i, ptr %recvsignalpower.i.i, align 4
  br i1 %164, label %if.then45.i.i, label %sw.epilog.i.i.if.end204.sink.split.i.i_crit_edge

sw.epilog.i.i.if.end204.sink.split.i.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end204.sink.split.i.i

if.then45.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %214)
  %cmp47.i.i = icmp ugt i8 %214, 40
  br i1 %cmp47.i.i, label %if.then45.i.i.if.end66.i.i_crit_edge, label %if.else.i.i

if.then45.i.i.if.end66.i.i_crit_edge:             ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66.i.i

if.else.i.i:                                      ; preds = %if.then45.i.i
  %cck_sig_qual_ofdm_pwdb_all.i.i = getelementptr inbounds %struct.phy_status_rpt, ptr %add.ptr180, i32 0, i32 2
  %218 = ptrtoint ptr %cck_sig_qual_ofdm_pwdb_all.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %cck_sig_qual_ofdm_pwdb_all.i.i, align 1
  %conv50.i.i = zext i8 %219 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %219)
  %cmp51.i.i = icmp ugt i8 %219, 64
  br i1 %cmp51.i.i, label %if.else.i.i.if.end66.i.i_crit_edge, label %if.else54.i.i

if.else.i.i.if.end66.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66.i.i

if.else54.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %219)
  %cmp56.i.i = icmp ult i8 %219, 20
  br i1 %cmp56.i.i, label %if.else54.i.i.if.end66.i.i_crit_edge, label %if.else59.i.i

if.else54.i.i.if.end66.i.i_crit_edge:             ; preds = %if.else54.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66.i.i

if.else59.i.i:                                    ; preds = %if.else54.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub61.i.i = sub nsw i16 64, %conv50.i.i
  %mul62.i.i = mul nsw i16 %sub61.i.i, 100
  %div8.i.i = sdiv i16 %mul62.i.i, 44
  %conv63.i.i = trunc i16 %div8.i.i to i8
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %if.else59.i.i, %if.else54.i.i.if.end66.i.i_crit_edge, %if.else.i.i.if.end66.i.i_crit_edge, %if.then45.i.i.if.end66.i.i_crit_edge
  %sq.0.i.i = phi i8 [ %conv63.i.i, %if.else59.i.i ], [ 100, %if.then45.i.i.if.end66.i.i_crit_edge ], [ 0, %if.else.i.i.if.end66.i.i_crit_edge ], [ 100, %if.else54.i.i.if.end66.i.i_crit_edge ]
  %signalquality.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 15
  %220 = ptrtoint ptr %signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %sq.0.i.i, ptr %signalquality.i.i, align 8
  %221 = ptrtoint ptr %rx_mimo_signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %sq.0.i.i, ptr %rx_mimo_signalquality.i.i, align 4
  %222 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 -1, ptr %arrayidx13.i.i, align 1
  br label %if.end204.sink.split.i.i

if.end144.peel.i.i:                               ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %signalquality143.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 15
  %223 = ptrtoint ptr %signalquality143.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %call133.peel.i.i, ptr %signalquality143.i.i, align 8
  %224 = ptrtoint ptr %rx_mimo_signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %call133.peel.i.i, ptr %rx_mimo_signalquality.i.i, align 1
  br label %for.inc152.peel.i.i

for.inc152.peel.i.i:                              ; preds = %if.end144.peel.i.i, %for.body.preheader.i.i.for.inc152.peel.i.i_crit_edge
  br i1 %198, label %for.inc152.peel.i.i.for.body130.i.i_crit_edge, label %for.inc152.peel.i.i.for.end154.i.i_crit_edge

for.inc152.peel.i.i.for.end154.i.i_crit_edge:     ; preds = %for.inc152.peel.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end154.i.i

for.inc152.peel.i.i.for.body130.i.i_crit_edge:    ; preds = %for.inc152.peel.i.i
  br label %for.body130.i.i

for.body130.i.i:                                  ; preds = %for.inc152.i.i.for.body130.i.i_crit_edge, %for.inc152.peel.i.i.for.body130.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.inc152.i.i.for.body130.i.i_crit_edge ], [ 1, %for.inc152.peel.i.i.for.body130.i.i_crit_edge ]
  %arrayidx132.i.i = getelementptr %struct.phy_status_rpt, ptr %add.ptr180, i32 0, i32 9, i32 %indvars.iv.i.i
  %225 = ptrtoint ptr %arrayidx132.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx132.i.i, align 1
  %call133.i.i = tail call zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext %226) #4
  br i1 %164, label %if.end144.i.i, label %for.body130.i.i.for.inc152.i.i_crit_edge

for.body130.i.i.for.inc152.i.i_crit_edge:         ; preds = %for.body130.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc152.i.i

if.end144.i.i:                                    ; preds = %for.body130.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx150.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 31, i32 %indvars.iv.i.i
  %227 = ptrtoint ptr %arrayidx150.i.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %call133.i.i, ptr %arrayidx150.i.i, align 1
  br label %for.inc152.i.i

for.inc152.i.i:                                   ; preds = %if.end144.i.i, %for.body130.i.i.for.inc152.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %max_spatial_stream.0.i.i
  br i1 %exitcond.not.i.i, label %for.inc152.i.i.for.end154.i.i_crit_edge, label %for.inc152.i.i.for.body130.i.i_crit_edge, !llvm.loop !39

for.inc152.i.i.for.body130.i.i_crit_edge:         ; preds = %for.inc152.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body130.i.i

for.inc152.i.i.for.end154.i.i_crit_edge:          ; preds = %for.inc152.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end154.i.i

for.end154.i.i:                                   ; preds = %for.inc152.i.i.for.end154.i.i_crit_edge, %for.inc152.peel.i.i.for.end154.i.i_crit_edge
  %conv97.i.i = zext i8 %call96.i.i to i32
  %spec.select.1.i.i = add nuw nsw i8 %182, %175
  %add.1.i.i = add nuw nsw i32 %conv97.1.i.i, %conv97.i.i
  br i1 %164, label %for.body161.preheader.i.i, label %for.end154.i.i.if.else193.i.i_crit_edge

for.end154.i.i.if.else193.i.i_crit_edge:          ; preds = %for.end154.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else193.i.i

for.body161.preheader.i.i:                        ; preds = %for.end154.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx163.i.i = getelementptr %struct.phy_status_rpt, ptr %add.ptr180, i32 0, i32 7, i32 0
  %228 = ptrtoint ptr %arrayidx163.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx163.i.i, align 1
  %conv164.i.i = sext i8 %229 to i32
  %230 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %priv, align 8
  %arrayidx168.i.i = getelementptr %struct.rtl_priv, ptr %231, i32 0, i32 15, i32 54, i32 0
  %232 = ptrtoint ptr %arrayidx168.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %conv164.i.i, ptr %arrayidx168.i.i, align 4
  %arrayidx163.1.i.i = getelementptr %struct.phy_status_rpt, ptr %add.ptr180, i32 0, i32 7, i32 1
  %233 = ptrtoint ptr %arrayidx163.1.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx163.1.i.i, align 1
  %conv164.1.i.i = sext i8 %234 to i32
  %235 = load ptr, ptr %priv, align 8
  %arrayidx168.1.i.i = getelementptr %struct.rtl_priv, ptr %235, i32 0, i32 15, i32 54, i32 1
  %236 = ptrtoint ptr %arrayidx168.1.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %conv164.1.i.i, ptr %arrayidx168.1.i.i, align 4
  %237 = load ptr, ptr %priv, align 8
  %packet_count.i.i = getelementptr inbounds %struct.rtl_priv, ptr %237, i32 0, i32 15, i32 58
  %238 = ptrtoint ptr %packet_count.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %packet_count.i.i, align 8
  %inc184.i.i = add i32 %239, 1
  store i32 %inc184.i.i, ptr %packet_count.i.i, align 8
  br label %if.else193.i.i

if.else193.i.i:                                   ; preds = %for.body161.preheader.i.i, %for.end154.i.i.if.else193.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.1.i.i)
  %cmp195.not.i.i = icmp eq i8 %spec.select.1.i.i, 0
  br i1 %cmp195.not.i.i, label %if.else193.i.i._rtl8723be_translate_rx_signal_stuff.exit_crit_edge, label %if.then197.i.i

if.else193.i.i._rtl8723be_translate_rx_signal_stuff.exit_crit_edge: ; preds = %if.else193.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl8723be_translate_rx_signal_stuff.exit

if.then197.i.i:                                   ; preds = %if.else193.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv194.i.i = zext i8 %spec.select.1.i.i to i32
  %div199.i.i = udiv i32 %add.1.i.i, %conv194.i.i
  br label %if.end204.sink.split.i.i

if.end204.sink.split.i.i:                         ; preds = %if.then197.i.i, %if.end66.i.i, %sw.epilog.i.i.if.end204.sink.split.i.i_crit_edge
  %div199.sink.i.i = phi i32 [ %div199.i.i, %if.then197.i.i ], [ %conv41.i.i, %if.end66.i.i ], [ %conv41.i.i, %sw.epilog.i.i.if.end204.sink.split.i.i_crit_edge ]
  %call200.i.i = tail call i32 @rtl_signal_scale_mapping(ptr noundef %hw, i32 noundef %div199.sink.i.i) #4
  %conv201.i.i = trunc i32 %call200.i.i to i8
  %signalstrength202.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 18
  %240 = ptrtoint ptr %signalstrength202.i.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %conv201.i.i, ptr %signalstrength202.i.i, align 1
  br label %_rtl8723be_translate_rx_signal_stuff.exit

_rtl8723be_translate_rx_signal_stuff.exit:        ; preds = %if.end204.sink.split.i.i, %if.else193.i.i._rtl8723be_translate_rx_signal_stuff.exit_crit_edge
  tail call void @rtl_process_phyinfo(ptr noundef %hw, ptr noundef %add.ptr3.i, ptr noundef %status) #4
  br label %if.end181

if.end181:                                        ; preds = %_rtl8723be_translate_rx_signal_stuff.exit, %if.end167.if.end181_crit_edge
  %recvsignalpower = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 16
  %241 = ptrtoint ptr %recvsignalpower to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %recvsignalpower, align 4
  %243 = trunc i32 %242 to i8
  %conv182 = add i8 %243, 10
  %signal = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 13
  %244 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %conv182, ptr %signal, align 2
  %245 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %71, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %246)
  %cmp185 = icmp eq i8 %246, 2
  br i1 %cmp185, label %if.then187, label %if.end181.if.end192_crit_edge

if.end181.if.end192_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end192

if.then187:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #6
  %247 = ptrtoint ptr %add.ptr.i276 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %add.ptr.i276, align 4
  %249 = tail call i32 @llvm.bswap.i32(i32 %248) #4
  %macid_valid_entry = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 52
  %250 = ptrtoint ptr %macid_valid_entry to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %249, ptr %macid_valid_entry, align 8
  %251 = ptrtoint ptr %add.ptr.i280 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %add.ptr.i280, align 4
  %253 = tail call i32 @llvm.bswap.i32(i32 %252) #4
  %arrayidx191 = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 52, i32 1
  %254 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %253, ptr %arrayidx191, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.then187, %if.end181.if.end192_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtlwifi_rate_mapping(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_tx_fill_desc(ptr noundef %hw, ptr nocapture noundef readonly %hdr, ptr noundef %pdesc8, ptr nocapture noundef readnone %txbd, ptr noundef %info, ptr noundef %sta, ptr noundef %skb, i8 noundef zeroext %hw_queue, ptr noundef %ptcb_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %status_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdr, align 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %10 = and i16 %9, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %10)
  %cmp.i.i = icmp eq i16 %10, -32768
  br i1 %cmp.i.i, label %entry._rtl8723be_map_hwqueue_to_fwqueue.exit_crit_edge, label %if.end.i, !prof !41

entry._rtl8723be_map_hwqueue_to_fwqueue.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl8723be_map_hwqueue_to_fwqueue.exit

if.end.i:                                         ; preds = %entry
  %11 = trunc i16 %9 to i12
  %trunc.i = and i12 %11, -1024
  %12 = zext i12 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.16)
  switch i12 %trunc.i, label %if.end6.i [
    i12 0, label %if.end.i._rtl8723be_map_hwqueue_to_fwqueue.exit_crit_edge
    i12 1024, label %if.end.i._rtl8723be_map_hwqueue_to_fwqueue.exit_crit_edge485
  ]

if.end.i._rtl8723be_map_hwqueue_to_fwqueue.exit_crit_edge485: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl8723be_map_hwqueue_to_fwqueue.exit

if.end.i._rtl8723be_map_hwqueue_to_fwqueue.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl8723be_map_hwqueue_to_fwqueue.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %13 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %priority.i, align 4
  %phi.cast = shl i32 %14, 16
  %phi.bo484 = and i32 %phi.cast, 2031616
  br label %_rtl8723be_map_hwqueue_to_fwqueue.exit

_rtl8723be_map_hwqueue_to_fwqueue.exit:           ; preds = %if.end6.i, %if.end.i._rtl8723be_map_hwqueue_to_fwqueue.exit_crit_edge, %if.end.i._rtl8723be_map_hwqueue_to_fwqueue.exit_crit_edge485, %entry._rtl8723be_map_hwqueue_to_fwqueue.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo484, %if.end6.i ], [ 1048576, %entry._rtl8723be_map_hwqueue_to_fwqueue.exit_crit_edge ], [ 1179648, %if.end.i._rtl8723be_map_hwqueue_to_fwqueue.exit_crit_edge ], [ 1179648, %if.end.i._rtl8723be_map_hwqueue_to_fwqueue.exit_crit_edge485 ]
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 5
  %15 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %seq_ctrl, align 2
  %17 = and i16 %16, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp = icmp eq i16 %17, 0
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %18 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %opmode, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %19, label %_rtl8723be_map_hwqueue_to_fwqueue.exit.if.end28_crit_edge [
    i32 2, label %if.then
    i32 3, label %_rtl8723be_map_hwqueue_to_fwqueue.exit.if.then22_crit_edge
    i32 1, label %_rtl8723be_map_hwqueue_to_fwqueue.exit.if.then22_crit_edge486
  ]

_rtl8723be_map_hwqueue_to_fwqueue.exit.if.then22_crit_edge486: ; preds = %_rtl8723be_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

_rtl8723be_map_hwqueue_to_fwqueue.exit.if.then22_crit_edge: ; preds = %_rtl8723be_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

_rtl8723be_map_hwqueue_to_fwqueue.exit.if.end28_crit_edge: ; preds = %_rtl8723be_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then:                                          ; preds = %_rtl8723be_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #6
  %bw_4015 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %21 = ptrtoint ptr %bw_4015 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bw_4015, align 1
  br label %if.end28

if.then22:                                        ; preds = %_rtl8723be_map_hwqueue_to_fwqueue.exit.if.then22_crit_edge, %_rtl8723be_map_hwqueue_to_fwqueue.exit.if.then22_crit_edge486
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %if.then22.if.end28_crit_edge, label %if.then23

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then23:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  %ht_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %23 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ht_cap, align 4
  %25 = trunc i16 %24 to i8
  %conv26 = and i8 %25, 2
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.then22.if.end28_crit_edge, %if.then, %_rtl8723be_map_hwqueue_to_fwqueue.exit.if.end28_crit_edge
  %bw_40.0 = phi i8 [ %22, %if.then ], [ %conv26, %if.then23 ], [ 0, %if.then22.if.end28_crit_edge ], [ 0, %_rtl8723be_map_hwqueue_to_fwqueue.exit.if.end28_crit_edge ]
  %26 = and i16 %16, -3841
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %28 = lshr exact i16 %27, 4
  tail call void @rtl_get_tcb_desc(ptr noundef %hw, ptr noundef %info, ptr noundef %sta, ptr noundef %skb, ptr noundef %ptcb_desc) #4
  %earlymode_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 58
  %29 = ptrtoint ptr %earlymode_enable to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %earlymode_enable, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool33.not = icmp eq i8 %30, 0
  br i1 %tobool33.not, label %if.end28.if.end36_crit_edge, label %if.then34

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %call35 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #4
  %31 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 0, ptr %32, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end28.if.end36_crit_edge
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %38 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i.i, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %39) #4
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end36
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !42

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev38) #4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44, i32 3
  %40 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev38, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %43, %if.end.i.i ], [ %41, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #4
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @debug_dma_map_single(ptr noundef %dev38, ptr noundef %39, i32 noundef %35) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %44 = load ptr, ptr @mem_map, align 4
  %45 = ptrtoint ptr %39 to i32
  %sub.i = add i32 %45, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %44, i32 %shr.i
  %and.i = and i32 %45, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev38, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %35, i32 noundef 1, i32 noundef 0) #4
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i342 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev43, i32 noundef %retval.0.i342) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i342)
  %cmp.i = icmp eq i32 %retval.0.i342, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end47

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end47:                                         ; preds = %dma_map_single_attrs.exit
  %48 = call ptr @memset(ptr %pdesc8, i32 0, i32 40)
  %49 = and i16 %3, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 18432, i16 %49)
  %cmp.i343 = icmp eq i16 %49, 18432
  br i1 %cmp.i343, label %if.end47.if.then56_crit_edge, label %lor.lhs.false50

if.end47.if.then56_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then56

lor.lhs.false50:                                  ; preds = %if.end47
  %50 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %50)
  %cmp.i344 = icmp eq i16 %50, 1024
  %51 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %extract.t = icmp eq i16 %51, 0
  %brmerge = select i1 %cmp.i344, i1 true, i1 %cmp
  %.mux = or i1 %cmp.i344, %extract.t
  br i1 %brmerge, label %lor.lhs.false50.if.then56_crit_edge, label %lor.lhs.false50.if.end183_crit_edge

lor.lhs.false50.if.end183_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end183

lor.lhs.false50.if.then56_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then56

if.then56:                                        ; preds = %lor.lhs.false50.if.then56_crit_edge, %if.end47.if.then56_crit_edge
  %lastseg.0.off0483 = phi i1 [ true, %if.end47.if.then56_crit_edge ], [ %.mux, %lor.lhs.false50.if.then56_crit_edge ]
  %52 = ptrtoint ptr %earlymode_enable to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %earlymode_enable, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool58.not = icmp eq i8 %53, 0
  br i1 %tobool58.not, label %if.else66, label %if.then59

if.then59:                                        ; preds = %if.then56
  %add.ptr.i345 = getelementptr i32, ptr %pdesc8, i32 1
  %54 = ptrtoint ptr %add.ptr.i345 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i345, align 4
  %and.i.i = and i32 %55, -32
  %or.i.i = or i32 %and.i.i, 1
  store i32 %or.i.i, ptr %add.ptr.i345, align 4
  %56 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pdesc8, align 4
  %and.i.i346 = and i32 %57, -65281
  %or.i.i347 = or i32 %and.i.i346, 12288
  store i32 %or.i.i347, ptr %pdesc8, align 4
  %empkt_num = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 8
  %58 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool60.not = icmp eq i8 %59, 0
  br i1 %tobool60.not, label %if.then59.if.end67_crit_edge, label %if.then61

if.then59.if.end67_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67

if.then61:                                        ; preds = %if.then59
  %conv63 = zext i8 %59 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %conv63) #4
  %60 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 0, ptr %61, align 4
  %63 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %empkt_num, align 1
  %conv.i348 = zext i8 %64 to i32
  %65 = shl nuw i32 %conv.i348, 24
  %66 = and i32 %65, 251658240
  store i32 %66, ptr %61, align 4
  %67 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %67)
  %cmp.i349 = icmp eq i8 %67, 1
  %empkt_len.i = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9
  %68 = ptrtoint ptr %empkt_len.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %empkt_len.i, align 4
  br i1 %cmp.i349, label %if.then61.set_earlymode_len0.exit.i_crit_edge, label %if.else.i

if.then61.set_earlymode_len0.exit.i_crit_edge:    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_earlymode_len0.exit.i

if.else.i:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #6
  %rem.i = and i32 %69, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %phi.bo.i = sub nuw nsw i32 8, %rem.i
  %spec.select.i = select i1 %tobool.not.i, i32 4, i32 %phi.bo.i
  %arrayidx9.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 1
  %70 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx9.i, align 4
  %add7.i = add i32 %spec.select.i, %69
  %add10.i = add i32 %add7.i, %71
  br label %set_earlymode_len0.exit.i

set_earlymode_len0.exit.i:                        ; preds = %if.else.i, %if.then61.set_earlymode_len0.exit.i_crit_edge
  %dwtmp.0.i = phi i32 [ %add10.i, %if.else.i ], [ %69, %if.then61.set_earlymode_len0.exit.i_crit_edge ]
  %72 = shl i32 %dwtmp.0.i, 4
  %73 = and i32 %72, 65520
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #4
  %or.i.i170.i = or i32 %74, %66
  %75 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or.i.i170.i, ptr %61, align 4
  %76 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %77)
  %cmp13.i = icmp ult i8 %77, 4
  %arrayidx17.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 2
  %78 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx17.i, align 4
  br i1 %cmp13.i, label %set_earlymode_len0.exit.i.set_earlymode_len1.exit.i_crit_edge, label %if.else18.i

set_earlymode_len0.exit.i.set_earlymode_len1.exit.i_crit_edge: ; preds = %set_earlymode_len0.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_earlymode_len1.exit.i

if.else18.i:                                      ; preds = %set_earlymode_len0.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %rem21.i = and i32 %79, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem21.i)
  %tobool22.not.i = icmp eq i32 %rem21.i, 0
  %phi.bo159.i = sub nuw nsw i32 8, %rem21.i
  %spec.select163.i = select i1 %tobool22.not.i, i32 4, i32 %phi.bo159.i
  %arrayidx32.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 3
  %80 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx32.i, align 4
  %add30.i = add i32 %spec.select163.i, %79
  %add33.i = add i32 %add30.i, %81
  br label %set_earlymode_len1.exit.i

set_earlymode_len1.exit.i:                        ; preds = %if.else18.i, %set_earlymode_len0.exit.i.set_earlymode_len1.exit.i_crit_edge
  %dwtmp.1.i = phi i32 [ %add33.i, %if.else18.i ], [ %79, %set_earlymode_len0.exit.i.set_earlymode_len1.exit.i_crit_edge ]
  %82 = shl i32 %dwtmp.1.i, 16
  %83 = and i32 %82, 268369920
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #4
  %or.i.i174.i = or i32 %84, %or.i.i170.i
  %85 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or.i.i174.i, ptr %61, align 4
  %86 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %87)
  %cmp37.i = icmp ult i8 %87, 6
  %arrayidx41.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 4
  %88 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx41.i, align 4
  br i1 %cmp37.i, label %set_earlymode_len1.exit.i.if.end58.i_crit_edge, label %if.else42.i

set_earlymode_len1.exit.i.if.end58.i_crit_edge:   ; preds = %set_earlymode_len1.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58.i

if.else42.i:                                      ; preds = %set_earlymode_len1.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %rem45.i = and i32 %89, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem45.i)
  %tobool46.not.i = icmp eq i32 %rem45.i, 0
  %phi.bo160.i = sub nuw nsw i32 8, %rem45.i
  %spec.select164.i = select i1 %tobool46.not.i, i32 4, i32 %phi.bo160.i
  %arrayidx56.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 5
  %90 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx56.i, align 4
  %add54.i = add i32 %spec.select164.i, %89
  %add57.i = add i32 %add54.i, %91
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.else42.i, %set_earlymode_len1.exit.i.if.end58.i_crit_edge
  %dwtmp.2.i = phi i32 [ %add57.i, %if.else42.i ], [ %89, %set_earlymode_len1.exit.i.if.end58.i_crit_edge ]
  %and.i351 = shl i32 %dwtmp.2.i, 4
  %92 = and i32 %and.i351, 240
  %or.i.i176.i = or i32 %92, %or.i.i174.i
  %93 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %or.i.i176.i, ptr %61, align 4
  %add.ptr.i.i = getelementptr i32, ptr %61, i32 1
  %94 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i179.i = and i32 %95, 16777215
  %96 = shl i32 %dwtmp.2.i, 20
  %97 = and i32 %96, -16777216
  %or.i.i180.i = or i32 %and.i.i179.i, %97
  store i32 %or.i.i180.i, ptr %add.ptr.i.i, align 4
  %98 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %99)
  %cmp61.i = icmp ult i8 %99, 8
  %arrayidx65.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 6
  %100 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx65.i, align 4
  br i1 %cmp61.i, label %if.end58.i.set_earlymode_len3.exit.i_crit_edge, label %if.else66.i

if.end58.i.set_earlymode_len3.exit.i_crit_edge:   ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_earlymode_len3.exit.i

if.else66.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #6
  %rem69.i = and i32 %101, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem69.i)
  %tobool70.not.i = icmp eq i32 %rem69.i, 0
  %phi.bo161.i = sub nuw nsw i32 8, %rem69.i
  %spec.select165.i = select i1 %tobool70.not.i, i32 4, i32 %phi.bo161.i
  %arrayidx80.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 7
  %102 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx80.i, align 4
  %add78.i = add i32 %spec.select165.i, %101
  %add81.i = add i32 %add78.i, %103
  br label %set_earlymode_len3.exit.i

set_earlymode_len3.exit.i:                        ; preds = %if.else66.i, %if.end58.i.set_earlymode_len3.exit.i_crit_edge
  %dwtmp.3.i = phi i32 [ %add81.i, %if.else66.i ], [ %101, %if.end58.i.set_earlymode_len3.exit.i_crit_edge ]
  %and.i.i184.i = and i32 %or.i.i180.i, -16715521
  %104 = shl i32 %dwtmp.3.i, 8
  %105 = and i32 %104, 1048320
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #4
  %or.i.i185.i = or i32 %106, %and.i.i184.i
  %107 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or.i.i185.i, ptr %add.ptr.i.i, align 4
  %108 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %109)
  %cmp85.i = icmp ult i8 %109, 10
  %arrayidx89.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 8
  %110 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx89.i, align 4
  br i1 %cmp85.i, label %set_earlymode_len3.exit.i._rtl8723be_insert_emcontent.exit_crit_edge, label %if.else90.i

set_earlymode_len3.exit.i._rtl8723be_insert_emcontent.exit_crit_edge: ; preds = %set_earlymode_len3.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl8723be_insert_emcontent.exit

if.else90.i:                                      ; preds = %set_earlymode_len3.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %rem93.i = and i32 %111, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem93.i)
  %tobool94.not.i = icmp eq i32 %rem93.i, 0
  %phi.bo162.i = sub nuw nsw i32 8, %rem93.i
  %spec.select166.i = select i1 %tobool94.not.i, i32 4, i32 %phi.bo162.i
  %arrayidx104.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 9
  %112 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx104.i, align 4
  %add102.i = add i32 %spec.select166.i, %111
  %add105.i = add i32 %add102.i, %113
  br label %_rtl8723be_insert_emcontent.exit

_rtl8723be_insert_emcontent.exit:                 ; preds = %if.else90.i, %set_earlymode_len3.exit.i._rtl8723be_insert_emcontent.exit_crit_edge
  %dwtmp.4.i = phi i32 [ %add105.i, %if.else90.i ], [ %111, %set_earlymode_len3.exit.i._rtl8723be_insert_emcontent.exit_crit_edge ]
  %and.i.i189.i = and i32 %or.i.i185.i, -61696
  %114 = shl i32 %dwtmp.4.i, 20
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #4
  %or.i.i190.i = or i32 %115, %and.i.i189.i
  %116 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %or.i.i190.i, ptr %add.ptr.i.i, align 4
  br label %if.end67

if.else66:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #6
  %117 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pdesc8, align 4
  %and.i.i353 = and i32 %118, -65281
  %or.i.i354 = or i32 %and.i.i353, 10240
  store i32 %or.i.i354, ptr %pdesc8, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else66, %_rtl8723be_insert_emcontent.exit, %if.then59.if.end67_crit_edge
  %add.ptr.i355 = getelementptr i32, ptr %pdesc8, i32 4
  %119 = ptrtoint ptr %add.ptr.i355 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %add.ptr.i355, align 4
  %hw_rate = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 5
  %121 = ptrtoint ptr %hw_rate to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %hw_rate, align 2
  %conv68 = zext i8 %122 to i32
  %and.i.i356 = and i32 %120, -2130706433
  %123 = shl nuw i32 %conv68, 24
  %124 = and i32 %123, 2130706432
  %or.i.i357 = or i32 %124, %and.i.i356
  store i32 %or.i.i357, ptr %add.ptr.i355, align 4
  %125 = load i8, ptr %hw_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %125)
  %cmp71 = icmp ugt i8 %125, 12
  %use_shortgi = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 2
  %126 = ptrtoint ptr %use_shortgi to i32
  call void @__asan_load1_noabort(i32 %126)
  %bf.load = load i8, ptr %use_shortgi, align 1
  %bf.load.lobit = lshr i8 %bf.load, 7
  %127 = lshr i8 %bf.load, 6
  %.lobit = and i8 %127, 1
  %short_gi.0 = select i1 %cmp71, i8 %bf.load.lobit, i8 %.lobit
  %conv85 = zext i8 %short_gi.0 to i32
  %add.ptr.i358 = getelementptr i32, ptr %pdesc8, i32 5
  %128 = ptrtoint ptr %add.ptr.i358 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %add.ptr.i358, align 4
  %and.i.i359 = and i32 %129, -268435457
  %130 = shl nuw nsw i32 %conv85, 28
  %or.i.i360 = or i32 %and.i.i359, %130
  store i32 %or.i.i360, ptr %add.ptr.i358, align 4
  %131 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %info, align 8
  %and86 = and i32 %132, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end67.if.end89_crit_edge, label %if.then88

if.end67.if.end89_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end89

if.then88:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i361 = getelementptr i32, ptr %pdesc8, i32 2
  %133 = ptrtoint ptr %add.ptr.i361 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %add.ptr.i361, align 4
  %or.i.i362 = or i32 %134, 1048576
  store i32 %or.i.i362, ptr %add.ptr.i361, align 4
  %add.ptr.i363 = getelementptr i32, ptr %pdesc8, i32 3
  %135 = ptrtoint ptr %add.ptr.i363 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %add.ptr.i363, align 4
  %and.i.i364 = and i32 %136, -15873
  %or.i.i365 = or i32 %and.i.i364, 10240
  store i32 %or.i.i365, ptr %add.ptr.i363, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end67.if.end89_crit_edge
  %conv90 = zext i16 %28 to i32
  %add.ptr.i366 = getelementptr i32, ptr %pdesc8, i32 9
  %137 = ptrtoint ptr %add.ptr.i366 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %add.ptr.i366, align 4
  %and.i.i367 = and i32 %138, -15793921
  %139 = shl nuw nsw i32 %conv90, 12
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #4
  %or.i.i368 = or i32 %and.i.i367, %140
  %141 = ptrtoint ptr %add.ptr.i366 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %or.i.i368, ptr %add.ptr.i366, align 4
  %142 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %142)
  %bf.load91 = load i16, ptr %ptcb_desc, align 4
  %143 = and i16 %bf.load91, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %tobool95.not = icmp eq i16 %143, 0
  %144 = lshr i16 %bf.load91, 9
  %.lobit341 = and i16 %144, 1
  %145 = xor i16 %.lobit341, 1
  %narrow = select i1 %tobool95.not, i16 0, i16 %145
  %146 = zext i16 %narrow to i32
  %add.ptr.i369 = getelementptr i32, ptr %pdesc8, i32 3
  %147 = ptrtoint ptr %add.ptr.i369 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %add.ptr.i369, align 4
  %and.i.i372 = and i32 %148, -3145729
  %149 = shl nuw nsw i32 %146, 20
  %and.i.i375 = or i32 %149, %and.i.i372
  store i32 %and.i.i375, ptr %add.ptr.i369, align 4
  %150 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %150)
  %bf.load102 = load i16, ptr %ptcb_desc, align 4
  %151 = lshr i16 %bf.load102, 9
  %152 = zext i16 %151 to i32
  %and.i.i377 = and i32 %and.i.i375, -524289
  %153 = shl nuw nsw i32 %152, 19
  %154 = and i32 %153, 524288
  %or.i.i378 = or i32 %and.i.i377, %154
  store i32 %or.i.i378, ptr %add.ptr.i369, align 4
  %155 = ptrtoint ptr %add.ptr.i355 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %add.ptr.i355, align 4
  %rts_rate = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 1
  %157 = ptrtoint ptr %rts_rate to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %rts_rate, align 2
  %and.i.i382 = and i32 %156, -32
  %159 = and i8 %158, 31
  %160 = zext i8 %159 to i32
  %or.i.i383 = or i32 %and.i.i382, %160
  store i32 %or.i.i383, ptr %add.ptr.i355, align 4
  %bf.load110 = load i16, ptr %ptcb_desc, align 4
  %161 = ptrtoint ptr %add.ptr.i358 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %add.ptr.i358, align 4
  %and.i.i385 = and i32 %162, -14680321
  %163 = shl i16 %bf.load110, 7
  %164 = and i16 %163, 8192
  %165 = zext i16 %164 to i32
  %166 = shl nuw nsw i32 %165, 8
  %or.i.i386 = or i32 %166, %and.i.i385
  store i32 %or.i.i386, ptr %add.ptr.i358, align 4
  %167 = load i8, ptr %rts_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %167)
  %cmp117 = icmp ult i8 %167, 12
  %168 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %168)
  %bf.load119 = load i16, ptr %ptcb_desc, align 4
  %. = select i1 %cmp117, i16 8, i16 7
  %169 = lshr i16 %bf.load119, %.
  %cond133 = zext i16 %169 to i32
  %and.i.i388 = and i32 %or.i.i386, -13631745
  %170 = shl nuw nsw i32 %cond133, 20
  %171 = and i32 %170, 1048576
  %or.i.i389 = or i32 %171, %and.i.i388
  %172 = ptrtoint ptr %add.ptr.i358 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %or.i.i389, ptr %add.ptr.i358, align 4
  %tx_enable_sw_calc_duration = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 10
  %173 = ptrtoint ptr %tx_enable_sw_calc_duration to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %tx_enable_sw_calc_duration, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool134.not = icmp eq i8 %174, 0
  br i1 %tobool134.not, label %if.end89.if.end136_crit_edge, label %if.then135

if.end89.if.end136_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end136

if.then135:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  %175 = ptrtoint ptr %add.ptr.i369 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %add.ptr.i369, align 4
  %or.i.i391 = or i32 %176, 8388608
  store i32 %or.i.i391, ptr %add.ptr.i369, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.end89.if.end136_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40.0)
  %tobool137.not = icmp eq i8 %bw_40.0, 0
  br i1 %tobool137.not, label %if.else149, label %if.then138

if.then138:                                       ; preds = %if.end136
  %177 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %177)
  %bf.load139 = load i16, ptr %ptcb_desc, align 4
  %bf.lshr140.mask = and i16 %bf.load139, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr140.mask)
  %cmp143 = icmp eq i16 %bf.lshr140.mask, 16384
  br i1 %cmp143, label %if.then145, label %if.else146

if.then145:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #6
  %and.i.i393 = and i32 %or.i.i389, -1874854145
  %or.i.i397 = or i32 %and.i.i393, 587202560
  br label %if.end150

if.else146:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #6
  %and.i.i399 = and i32 %or.i.i389, -1623195905
  %178 = ptrtoint ptr %add.ptr.i358 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %and.i.i399, ptr %add.ptr.i358, align 4
  %cur_40_prime_sc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 46
  %179 = ptrtoint ptr %cur_40_prime_sc to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %cur_40_prime_sc, align 1
  %conv147 = zext i8 %180 to i32
  %and.i.i403 = and i32 %or.i.i389, -1874854145
  %181 = shl nuw i32 %conv147, 24
  %182 = and i32 %181, 251658240
  %or.i.i404 = or i32 %182, %and.i.i403
  br label %if.end150

if.else149:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #6
  %and.i.i408 = and i32 %or.i.i389, -1874854145
  br label %if.end150

if.end150:                                        ; preds = %if.else149, %if.else146, %if.then145
  %or.i.i397.sink = phi i32 [ %or.i.i397, %if.then145 ], [ %or.i.i404, %if.else146 ], [ %and.i.i408, %if.else149 ]
  %183 = ptrtoint ptr %add.ptr.i358 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %or.i.i397.sink, ptr %add.ptr.i358, align 4
  %184 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %pdesc8, align 4
  %conv152 = and i32 %5, 65535
  %and.i.i410 = and i32 %185, 65519
  %186 = tail call i32 @llvm.bswap.i32(i32 %conv152) #4
  %or.i.i411 = or i32 %and.i.i410, %186
  %187 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %or.i.i411, ptr %pdesc8, align 4
  %tobool153.not = icmp eq ptr %sta, null
  br i1 %tobool153.not, label %if.end150.if.end158_crit_edge, label %set_tx_desc_ampdu_density.exit

if.end150.if.end158_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end158

set_tx_desc_ampdu_density.exit:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i412 = getelementptr i32, ptr %pdesc8, i32 2
  %188 = ptrtoint ptr %add.ptr.i412 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %add.ptr.i412, align 4
  %ampdu_density156 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 3
  %190 = ptrtoint ptr %ampdu_density156 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %ampdu_density156, align 4
  %conv157 = zext i8 %191 to i32
  %and.i.i415 = and i32 %189, -28673
  %192 = shl nuw nsw i32 %conv157, 12
  %193 = and i32 %192, 28672
  %or.i.i416 = or i32 %193, %and.i.i415
  store i32 %or.i.i416, ptr %add.ptr.i412, align 4
  br label %if.end158

if.end158:                                        ; preds = %set_tx_desc_ampdu_density.exit, %if.end150.if.end158_crit_edge
  %hw_key = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 12
  %194 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %hw_key, align 4
  %tobool159.not = icmp eq ptr %195, null
  br i1 %tobool159.not, label %if.end158.set_tx_desc_queue_sel.exit_crit_edge, label %if.then160

if.end158.set_tx_desc_queue_sel.exit_crit_edge:   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_tx_desc_queue_sel.exit

if.then160:                                       ; preds = %if.end158
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %cipher, align 8
  %198 = zext i32 %197 to i64
  call void @__sanitizer_cov_trace_switch(i64 %198, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %197, label %sw.default [
    i32 1027073, label %if.then160.sw.bb_crit_edge
    i32 1027077, label %if.then160.sw.bb_crit_edge487
    i32 1027074, label %if.then160.sw.bb_crit_edge488
    i32 1027076, label %sw.bb162
  ]

if.then160.sw.bb_crit_edge488:                    ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then160.sw.bb_crit_edge487:                    ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then160.sw.bb_crit_edge:                       ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

sw.bb:                                            ; preds = %if.then160.sw.bb_crit_edge, %if.then160.sw.bb_crit_edge487, %if.then160.sw.bb_crit_edge488
  %add.ptr.i417 = getelementptr i32, ptr %pdesc8, i32 1
  %199 = ptrtoint ptr %add.ptr.i417 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %add.ptr.i417, align 4
  %and.i.i418 = and i32 %200, -49153
  %or.i.i419 = or i32 %and.i.i418, 16384
  store i32 %or.i.i419, ptr %add.ptr.i417, align 4
  br label %set_tx_desc_queue_sel.exit

sw.bb162:                                         ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i420 = getelementptr i32, ptr %pdesc8, i32 1
  %201 = ptrtoint ptr %add.ptr.i420 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %add.ptr.i420, align 4
  %or.i.i422 = or i32 %202, 49152
  store i32 %or.i.i422, ptr %add.ptr.i420, align 4
  br label %set_tx_desc_queue_sel.exit

sw.default:                                       ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i423 = getelementptr i32, ptr %pdesc8, i32 1
  %203 = ptrtoint ptr %add.ptr.i423 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %add.ptr.i423, align 4
  %and.i.i424 = and i32 %204, -49153
  store i32 %and.i.i424, ptr %add.ptr.i423, align 4
  br label %set_tx_desc_queue_sel.exit

set_tx_desc_queue_sel.exit:                       ; preds = %sw.default, %sw.bb162, %sw.bb, %if.end158.set_tx_desc_queue_sel.exit_crit_edge
  %add.ptr.i425 = getelementptr i32, ptr %pdesc8, i32 1
  %205 = ptrtoint ptr %add.ptr.i425 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %add.ptr.i425, align 4
  %and.i.i428 = and i32 %206, -2031617
  %or.i.i429 = or i32 %and.i.i428, %retval.0.i
  store i32 %or.i.i429, ptr %add.ptr.i425, align 4
  %207 = ptrtoint ptr %add.ptr.i355 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %add.ptr.i355, align 4
  %or.i.i433 = or i32 %208, 16711936
  store i32 %or.i.i433, ptr %add.ptr.i355, align 4
  %disable_ratefallback = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 2
  %209 = ptrtoint ptr %disable_ratefallback to i32
  call void @__asan_load1_noabort(i32 %209)
  %bf.load165 = load i8, ptr %disable_ratefallback, align 1
  %210 = lshr i8 %bf.load165, 4
  %211 = zext i8 %210 to i32
  %212 = ptrtoint ptr %add.ptr.i369 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %add.ptr.i369, align 4
  %and.i.i435 = and i32 %213, -262145
  %214 = shl nuw nsw i32 %211, 18
  %215 = and i32 %214, 262144
  %or.i.i436 = or i32 %215, %and.i.i435
  store i32 %or.i.i436, ptr %add.ptr.i369, align 4
  %bf.load171 = load i8, ptr %disable_ratefallback, align 1
  %216 = lshr i8 %bf.load171, 5
  %217 = zext i8 %216 to i32
  %and.i.i438 = and i32 %or.i.i436, -65537
  %218 = shl nuw nsw i32 %217, 16
  %219 = and i32 %218, 65536
  %or.i.i439 = or i32 %219, %and.i.i438
  store i32 %or.i.i439, ptr %add.ptr.i369, align 4
  %220 = and i16 %3, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %220)
  %cmp.i440 = icmp eq i16 %220, -30720
  br i1 %cmp.i440, label %if.then178, label %set_tx_desc_queue_sel.exit.if.end182_crit_edge

set_tx_desc_queue_sel.exit.if.end182_crit_edge:   ; preds = %set_tx_desc_queue_sel.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end182

if.then178:                                       ; preds = %set_tx_desc_queue_sel.exit
  %rdg_en = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 32
  %221 = ptrtoint ptr %rdg_en to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %rdg_en, align 8, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool179.not = icmp eq i8 %222, 0
  br i1 %tobool179.not, label %if.then178.if.end182_crit_edge, label %if.then180

if.then178.if.end182_crit_edge:                   ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end182

if.then180:                                       ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.3) #4
  %add.ptr.i441 = getelementptr i32, ptr %pdesc8, i32 2
  %223 = ptrtoint ptr %add.ptr.i441 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %add.ptr.i441, align 4
  %or.i.i442 = or i32 %224, 2097152
  store i32 %or.i.i442, ptr %add.ptr.i441, align 4
  %225 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %pdesc8, align 4
  %or.i.i443 = or i32 %226, 2
  store i32 %or.i.i443, ptr %pdesc8, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %if.then178.if.end182_crit_edge, %set_tx_desc_queue_sel.exit.if.end182_crit_edge
  tail call void @rtl_set_tx_report(ptr noundef %ptcb_desc, ptr noundef %pdesc8, ptr noundef %hw, ptr noundef %status_driver_data.i) #4
  br label %if.end183

if.end183:                                        ; preds = %if.end182, %lor.lhs.false50.if.end183_crit_edge
  %lastseg.0.off0482 = phi i1 [ %lastseg.0.off0483, %if.end182 ], [ %extract.t, %lor.lhs.false50.if.end183_crit_edge ]
  %firstseg.0.off0480 = phi i32 [ 8, %if.end182 ], [ 0, %lor.lhs.false50.if.end183_crit_edge ]
  %227 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %pdesc8, align 4
  %and.i.i444 = and i32 %228, -13
  %229 = select i1 %lastseg.0.off0482, i32 4, i32 0
  %or.i.i445 = or i32 %229, %firstseg.0.off0480
  %or.i.i447 = or i32 %or.i.i445, %and.i.i444
  store i32 %or.i.i447, ptr %pdesc8, align 4
  %conv191 = and i32 %35, 65535
  %add.ptr.i448 = getelementptr i32, ptr %pdesc8, i32 7
  %230 = ptrtoint ptr %add.ptr.i448 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %add.ptr.i448, align 4
  %and.i.i449 = and i32 %231, 65535
  %232 = tail call i32 @llvm.bswap.i32(i32 %conv191) #4
  %or.i.i450 = or i32 %and.i.i449, %232
  %233 = ptrtoint ptr %add.ptr.i448 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %or.i.i450, ptr %add.ptr.i448, align 4
  %234 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i342) #4
  %add.ptr.i451 = getelementptr i32, ptr %pdesc8, i32 10
  %235 = ptrtoint ptr %add.ptr.i451 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %234, ptr %add.ptr.i451, align 4
  %add.ptr.i452 = getelementptr i32, ptr %pdesc8, i32 1
  %236 = ptrtoint ptr %add.ptr.i452 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %add.ptr.i452, align 4
  %ratr_index = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 3
  %238 = ptrtoint ptr %ratr_index to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %ratr_index, align 4
  %conv192 = zext i8 %239 to i32
  %and.i.i455 = and i32 %237, -7937
  %240 = shl nuw nsw i32 %conv192, 8
  %241 = and i32 %240, 7936
  %or.i.i456 = or i32 %241, %and.i.i455
  store i32 %or.i.i456, ptr %add.ptr.i452, align 4
  %mac_id = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 4
  %242 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %mac_id, align 1
  %conv193 = zext i8 %243 to i32
  %and.i.i460 = and i32 %or.i.i456, -2130706433
  %244 = shl nuw i32 %conv193, 24
  %245 = and i32 %244, 2130706432
  %or.i.i461 = or i32 %245, %and.i.i460
  store i32 %or.i.i461, ptr %add.ptr.i452, align 4
  %246 = and i16 %3, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %246)
  %cmp.i462 = icmp eq i16 %246, -30720
  br i1 %cmp.i462, label %if.end183.if.end196_crit_edge, label %if.then195

if.end183.if.end196_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end196

if.then195:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i463 = getelementptr i32, ptr %pdesc8, i32 8
  %247 = ptrtoint ptr %add.ptr.i463 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %add.ptr.i463, align 4
  %or.i.i464 = or i32 %248, 8388608
  store i32 %or.i.i464, ptr %add.ptr.i463, align 4
  %add.ptr.i465 = getelementptr i32, ptr %pdesc8, i32 3
  %249 = ptrtoint ptr %add.ptr.i465 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %add.ptr.i465, align 4
  %and.i.i466 = and i32 %250, 1073741823
  store i32 %and.i.i466, ptr %add.ptr.i465, align 4
  br label %if.end196

if.end196:                                        ; preds = %if.then195, %if.end183.if.end196_crit_edge
  %add.ptr.i467 = getelementptr i32, ptr %pdesc8, i32 2
  %251 = ptrtoint ptr %add.ptr.i467 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %add.ptr.i467, align 4
  %and.i.i468 = and i32 %252, -513
  %253 = select i1 %lastseg.0.off0482, i32 0, i32 512
  %or.i.i469 = or i32 %and.i.i468, %253
  store i32 %or.i.i469, ptr %add.ptr.i467, align 4
  %254 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %hdr, align 2
  %256 = and i16 %255, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %256)
  %cmp.i.not.i = icmp eq i16 %256, 0
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 4
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %retval.0.i470 = select i1 %cmp.i.not.i, ptr %addr1.i, ptr %addr3.i
  %257 = ptrtoint ptr %retval.0.i470 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %retval.0.i470, align 4
  %259 = and i32 %258, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool.i.not = icmp eq i32 %259, 0
  br i1 %tobool.i.not, label %lor.lhs.false203, label %if.end196.if.then207_crit_edge

if.end196.if.then207_crit_edge:                   ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then207

lor.lhs.false203:                                 ; preds = %if.end196
  %260 = ptrtoint ptr %retval.0.i470 to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %retval.0.i470, align 2
  %add.ptr1.i = getelementptr i8, ptr %retval.0.i470, i32 2
  %262 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %263, %261
  %add.ptr3.i = getelementptr i8, ptr %retval.0.i470, i32 4
  %264 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %265
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i475 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i475, label %lor.lhs.false203.if.then207_crit_edge, label %lor.lhs.false203.cleanup_crit_edge

lor.lhs.false203.cleanup_crit_edge:               ; preds = %lor.lhs.false203
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false203.if.then207_crit_edge:            ; preds = %lor.lhs.false203
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then207

if.then207:                                       ; preds = %lor.lhs.false203.if.then207_crit_edge, %if.end196.if.then207_crit_edge
  %266 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %pdesc8, align 4
  %or.i.i476 = or i32 %267, 1
  store i32 %or.i.i476, ptr %pdesc8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then207, %lor.lhs.false203.cleanup_crit_edge, %dma_map_single_attrs.exit.cleanup_crit_edge
  %.str.4.sink = phi ptr [ @.str.1, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ @.str.4, %if.then207 ], [ @.str.4, %lor.lhs.false203.cleanup_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull %.str.4.sink) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_get_tcb_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_set_tx_report(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_tx_fill_cmddesc(ptr nocapture noundef readonly %hw, ptr noundef %pdesc8, i1 noundef zeroext %firstseg, i1 noundef zeroext %lastseg, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %5) #4
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !42

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev4) #4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev4, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #4
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @debug_dma_map_single(ptr noundef %dev4, ptr noundef %5, i32 noundef %7) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  %13 = ptrtoint ptr %5 to i32
  %sub.i = add i32 %13, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %12, i32 %shr.i
  %and.i = and i32 %13, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev4, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %7, i32 noundef 1, i32 noundef 0) #4
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev6, i32 noundef %retval.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.1) #4
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #6
  %16 = getelementptr inbounds i8, ptr %pdesc8, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 28)
  %add.ptr.i44 = getelementptr i32, ptr %pdesc8, i32 9
  %18 = ptrtoint ptr %add.ptr.i44 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %add.ptr.i44, align 4
  %add.ptr.i47 = getelementptr i32, ptr %pdesc8, i32 1
  %19 = ptrtoint ptr %add.ptr.i47 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1048576, ptr %add.ptr.i47, align 4
  %20 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 10252, ptr %pdesc8, align 4
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %conv10 = and i32 %22, 65535
  %add.ptr.i54 = getelementptr i32, ptr %pdesc8, i32 7
  %23 = tail call i32 @llvm.bswap.i32(i32 %conv10) #4
  %24 = ptrtoint ptr %add.ptr.i54 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %add.ptr.i54, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #4
  %add.ptr.i57 = getelementptr i32, ptr %pdesc8, i32 10
  %26 = ptrtoint ptr %add.ptr.i57 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %add.ptr.i57, align 4
  %27 = ptrtoint ptr %add.ptr.i47 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1048576, ptr %add.ptr.i47, align 4
  %28 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 10380, ptr %pdesc8, align 4
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %conv13 = and i32 %30, 65535
  %31 = or i32 %conv13, -1943535616
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %pdesc8, align 4
  %add.ptr.i69 = getelementptr i32, ptr %pdesc8, i32 3
  %34 = ptrtoint ptr %add.ptr.i69 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 65536, ptr %add.ptr.i69, align 4
  tail call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef %pdesc8, i32 noundef 40) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_set_desc(ptr nocapture noundef readnone %hw, ptr nocapture noundef %pdesc8, i1 noundef zeroext %istx, i8 noundef zeroext %desc_name, ptr nocapture noundef readonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %desc_name to i32
  br i1 %istx, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %desc_name, label %land.end [
    i8 0, label %sw.bb
    i8 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pdesc8, align 4
  %or.i.i = or i32 %2, 128
  store i32 %or.i.i, ptr %pdesc8, align 4
  br label %if.end95

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  %add.ptr.i = getelementptr i32, ptr %pdesc8, i32 12
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr.i, align 4
  br label %if.end95

land.end:                                         ; preds = %if.then
  %.b112 = load i1, ptr @rtl8723be_set_desc.__already_done, align 1
  br i1 %.b112, label %land.end.if.end95_crit_edge, label %if.then8, !prof !42

land.end.if.end95_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl8723be_set_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 654, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %conv) #4
  br label %if.end95

if.else:                                          ; preds = %entry
  %7 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %desc_name, label %land.end51 [
    i8 1, label %sw.bb39
    i8 4, label %sw.bb40
    i8 5, label %set_rx_desc_pkt_len.exit
    i8 6, label %sw.bb42
  ]

sw.bb39:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pdesc8, align 4
  %or.i.i113 = or i32 %9, 128
  store i32 %or.i.i113, ptr %pdesc8, align 4
  br label %if.end95

sw.bb40:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  %add.ptr.i114 = getelementptr i32, ptr %pdesc8, i32 6
  %13 = ptrtoint ptr %add.ptr.i114 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr.i114, align 4
  br label %if.end95

set_rx_desc_pkt_len.exit:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pdesc8, align 4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %and.i.i = and i32 %15, 12648447
  %18 = and i32 %17, 16383
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #4
  %or.i.i115 = or i32 %and.i.i, %19
  %20 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i.i115, ptr %pdesc8, align 4
  br label %if.end95

sw.bb42:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pdesc8, align 4
  %or.i.i116 = or i32 %22, 64
  store i32 %or.i.i116, ptr %pdesc8, align 4
  br label %if.end95

land.end51:                                       ; preds = %if.else
  %.b110111 = load i1, ptr @rtl8723be_set_desc.__already_done.8, align 1
  br i1 %.b110111, label %land.end51.if.end95_crit_edge, label %if.then58, !prof !42

land.end51.if.end95_crit_edge:                    ; preds = %land.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

if.then58:                                        ; preds = %land.end51
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl8723be_set_desc.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 673, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %conv) #4
  br label %if.end95

if.end95:                                         ; preds = %if.then58, %land.end51.if.end95_crit_edge, %sw.bb42, %set_rx_desc_pkt_len.exit, %sw.bb40, %sw.bb39, %if.then8, %land.end.if.end95_crit_edge, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @rtl8723be_get_desc(ptr nocapture readnone %hw, ptr nocapture noundef readonly %pdesc8, i1 noundef zeroext %istx, i8 noundef zeroext %desc_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %desc_name to i32
  br i1 %istx, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %desc_name, label %land.end [
    i8 0, label %sw.bb
    i8 3, label %sw.bb1
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pdesc8, align 4
  %.mask.i = lshr i32 %2, 7
  %.mask.lobit.i = and i32 %.mask.i, 1
  br label %if.end98

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i32, ptr %pdesc8, i32 10
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  br label %if.end98

land.end:                                         ; preds = %if.then
  %.b113 = load i1, ptr @rtl8723be_get_desc.__already_done, align 1
  br i1 %.b113, label %land.end.if.end98_crit_edge, label %if.then9, !prof !42

land.end.if.end98_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

if.then9:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl8723be_get_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 695, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %conv) #4
  br label %if.end98

if.else:                                          ; preds = %entry
  %6 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %desc_name, label %land.end54 [
    i8 0, label %sw.bb40
    i8 5, label %sw.bb42
    i8 4, label %sw.bb44
  ]

sw.bb40:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pdesc8, align 4
  %.mask.i114 = lshr i32 %8, 7
  %.mask.lobit.i115 = and i32 %.mask.i114, 1
  br label %if.end98

sw.bb42:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pdesc8, align 4
  %11 = and i32 %10, -12648448
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  br label %if.end98

sw.bb44:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i116 = getelementptr i32, ptr %pdesc8, i32 6
  %13 = ptrtoint ptr %add.ptr.i116 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i116, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #4
  br label %if.end98

land.end54:                                       ; preds = %if.else
  %.b111112 = load i1, ptr @rtl8723be_get_desc.__already_done.11, align 1
  br i1 %.b111112, label %land.end54.if.end98_crit_edge, label %if.then61, !prof !42

land.end54.if.end98_crit_edge:                    ; preds = %land.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

if.then61:                                        ; preds = %land.end54
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl8723be_get_desc.__already_done.11, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 711, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %conv) #4
  br label %if.end98

if.end98:                                         ; preds = %if.then61, %land.end54.if.end98_crit_edge, %sw.bb44, %sw.bb42, %sw.bb40, %if.then9, %land.end.if.end98_crit_edge, %sw.bb1, %sw.bb
  %ret.0 = phi i32 [ %5, %sw.bb1 ], [ %.mask.lobit.i, %sw.bb ], [ %15, %sw.bb44 ], [ %12, %sw.bb42 ], [ %.mask.lobit.i115, %sw.bb40 ], [ 0, %if.then9 ], [ 0, %land.end.if.end98_crit_edge ], [ 0, %if.then61 ], [ 0, %land.end54.if.end98_crit_edge ]
  %conv99 = zext i32 %ret.0 to i64
  ret i64 %conv99
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rtl8723be_is_tx_desc_closed(ptr nocapture noundef readonly %hw, i8 noundef zeroext %hw_queue, i16 noundef zeroext %index) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tx_ring = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  %idxprom = zext i8 %hw_queue to i32
  %arrayidx = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %idx = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom, i32 2
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  %arrayidx3 = getelementptr %struct.rtl_tx_desc, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %8 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_tx_polling(ptr nocapture noundef readonly %hw, i8 noundef zeroext %hw_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %hw_queue)
  %cmp = icmp eq i8 %hw_queue, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %2 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write16_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 768, i16 noundef zeroext 16) #4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.if.end.sink.split_crit_edge

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else:                                          ; preds = %entry
  %conv = zext i8 %hw_queue to i32
  %shl = shl nuw i32 1, %conv
  %conv3 = trunc i32 %shl to i16
  %write16_async.i6 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %8 = ptrtoint ptr %write16_async.i6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write16_async.i6, align 4
  tail call void %9(ptr noundef %1, i32 noundef 768, i16 noundef zeroext %conv3) #4
  %cfg.i7 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %10 = ptrtoint ptr %cfg.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg.i7, align 8
  %write_readback.i8 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_readback.i8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %write_readback.i8, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i9 = icmp eq i8 %13, 0
  br i1 %tobool.not.i9, label %if.else.if.end_crit_edge, label %if.else.if.end.sink.split_crit_edge

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %if.then.if.end.sink.split_crit_edge
  %read16_sync.i10 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %14 = ptrtoint ptr %read16_sync.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read16_sync.i10, align 4
  %call.i11 = tail call zeroext i16 %15(ptr noundef %1, i32 noundef 768) #4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_process_phyinfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_signal_scale_mapping(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/trx.c", i32 341, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/trx.c", i32 446, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/trx.c", i32 460, i32 5}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/trx.c", i32 552, i32 5}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/trx.c", i32 584, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/trx.c", i32 635, i32 2}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/trx.c", i32 653, i32 4}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/trx.c", i32 672, i32 4}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/trx.c", i32 694, i32 4}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/trx.c", i32 710, i32 4}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i8 0, i8 2}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.peeled.count", i32 1}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{!"branch_weights", i32 2000, i32 1}
