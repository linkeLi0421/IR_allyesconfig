; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/trx.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/trx.c"
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
%struct.ieee80211_qos_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, i16 }
%struct.phy_rx_agc_info_t = type { i8 }
%struct.phy_status_rpt = type { [2 x %struct.phy_rx_agc_info_t], [2 x i8], i8, i8, i8, i8, i8, [2 x i8], [2 x i8], [2 x i8], [2 x i8], i8, [3 x i8], [2 x i8], [2 x i8], i8, i8, i8 }
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl8192_rx_ring = type { ptr, i32, i32, [512 x ptr], ptr, i16 }
%struct.rtl8192_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head, ptr, i32, i16, i16 }
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
%struct.rtl_mod_params = type { i64, i8, i32, i8, i8, i8, i8, i8, i32, i8, i8, i32 }

@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"GGGGGGGGGGGGGet Wakeup Packet!! WakeMatch=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@rtl92ee_rx_desc_buff_remained_cnt.start_rx = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"!!!write point is 0x%x, reg 0x3B4 value is 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA mapping error\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Insert 8 byte.pTcb->EMPktNum:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Enable RDG function.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"H2C Tx Cmd Content\0A\00", [44 x i8] zeroinitializer }, align 32
@rtl92ee_set_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192ee/trx.c\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rtl8192ee: ERR rxdesc :%d not processed\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl92ee_get_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rtl8192ee: ERR txdesc :%d not processed\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl92ee_get_desc.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rtl92ee_is_tx_desc_closed.stop_report_cnt = internal global { i8, [31 x i8] } zeroinitializer, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.rtl92ee_get_available_desc = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 940, i32 936, i32 932, i32 928, i32 936, i32 936, i32 944, i32 952, i32 936], [60 x i8] zeroinitializer }, align 32
@switch.table.rtl92ee_set_desc = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 940, i32 936, i32 932, i32 928, i32 936, i32 936, i32 944, i32 952, i32 936], [60 x i8] zeroinitializer }, align 32
@switch.table.rtl92ee_is_tx_desc_closed = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 940, i32 936, i32 932, i32 928, i32 936, i32 936, i32 944, i32 952, i32 936], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 40960, i64 49152, i64 53248]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 12, i64 0, i64 1024]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 7]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 5]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 366, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [43 x i8] c"rtl92ee_rx_desc_buff_remained_cnt.start_rx\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 471, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 681, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 700, i32 5 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 801, i32 5 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 827, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 881, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 941, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 968, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"stop_report_cnt\00", align 1
@___asan_gen_.54 = private constant [56 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/trx.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 1000, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 326, i32 6 }
@___asan_gen_.62 = private unnamed_addr constant [40 x i8] c"switch.table.rtl92ee_get_available_desc\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [30 x i8] c"switch.table.rtl92ee_set_desc\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [39 x i8] c"switch.table.rtl92ee_is_tx_desc_closed\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @.str, ptr @rtl92ee_rx_desc_buff_remained_cnt.start_rx, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @rtl92ee_is_tx_desc_closed.stop_report_cnt, ptr @.str.11, ptr @.str.12, ptr @switch.table.rtl92ee_get_available_desc, ptr @switch.table.rtl92ee_set_desc, ptr @switch.table.rtl92ee_is_tx_desc_closed], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_rx_desc_buff_remained_cnt.start_rx to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_is_tx_desc_closed.stop_report_cnt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92ee_get_available_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92ee_set_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92ee_is_tx_desc_closed to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92ee_rx_query_desc(ptr noundef %hw, ptr noundef %status, ptr nocapture noundef %rx_status, ptr nocapture noundef readonly %pdesc8, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pdesc8, align 4
  %add.ptr.i = getelementptr i32, ptr %pdesc8, i32 2
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = trunc i32 %5 to i8
  %7 = lshr i8 %6, 2
  %8 = and i8 %7, 4
  %9 = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 49
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %8, ptr %9, align 2
  %11 = load i32, ptr %pdesc8, align 4
  %12 = and i32 %11, -12648448
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  %conv = trunc i32 %13 to i16
  %length = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 14
  %14 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %length, align 2
  %15 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pdesc8, align 4
  %sh.diff = lshr i32 %16, 5
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %conv7 = and i8 %tr.sh.diff, 120
  %rx_drvinfo_size = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 23
  %17 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv7, ptr %rx_drvinfo_size, align 1
  %18 = load i32, ptr %pdesc8, align 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 3
  %rx_bufshift = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 24
  %21 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %rx_bufshift, align 2
  %22 = load i32, ptr %pdesc8, align 4
  %icv = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 19
  %23 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %icv, align 2
  %sh.diff265 = lshr i32 %22, 18
  %tr.sh.diff266 = trunc i32 %sh.diff265 to i8
  %bf.value = and i8 %tr.sh.diff266, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.value, %bf.clear
  store i8 %bf.set, ptr %icv, align 2
  %24 = load i32, ptr %pdesc8, align 4
  %sum.shift.i = lshr i32 %24, 22
  %25 = trunc i32 %sum.shift.i to i8
  %26 = shl i8 %25, 6
  %bf.value15 = and i8 %26, 64
  %bf.clear17 = and i8 %bf.set, 63
  %bf.lshr26 = lshr exact i8 %bf.value, 5
  %27 = or i8 %bf.lshr26, %25
  %bf.shl33 = shl i8 %27, 7
  %bf.clear34 = or i8 %bf.clear17, %bf.value15
  %bf.set35 = or i8 %bf.clear34, %bf.shl33
  store i8 %bf.set35, ptr %icv, align 2
  %28 = load i32, ptr %pdesc8, align 4
  %29 = trunc i32 %28 to i8
  %30 = lshr i8 %29, 1
  %31 = and i8 %30, 4
  %bf.clear42 = and i8 %bf.set35, -5
  %32 = or i8 %bf.clear42, %31
  %bf.set43 = xor i8 %32, 4
  store i8 %bf.set43, ptr %icv, align 2
  %add.ptr.i246 = getelementptr i32, ptr %pdesc8, i32 3
  %33 = ptrtoint ptr %add.ptr.i246 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i246, align 4
  %35 = lshr i32 %34, 24
  %36 = trunc i32 %35 to i8
  %conv46 = and i8 %36, 127
  %rate = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 5
  %37 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv46, ptr %rate, align 1
  %add.ptr.i248 = getelementptr i32, ptr %pdesc8, i32 1
  %38 = ptrtoint ptr %add.ptr.i248 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i248, align 4
  %isampdu = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 25
  %40 = lshr i32 %39, 23
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = ptrtoint ptr %isampdu to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %isampdu, align 1
  %add.ptr.i249 = getelementptr i32, ptr %pdesc8, i32 5
  %44 = ptrtoint ptr %add.ptr.i249 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i249, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #5
  %timestamp_low = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 20
  %47 = ptrtoint ptr %timestamp_low to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %timestamp_low, align 4
  %switch.and = and i8 %36, 124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and)
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  %is_cck = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 41
  %frombool68 = zext i1 %switch.selectcmp to i8
  %48 = ptrtoint ptr %is_cck to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %frombool68, ptr %is_cck, align 1
  %49 = ptrtoint ptr %add.ptr.i248 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i248, align 4
  %51 = lshr i32 %50, 24
  %and.i.i251 = and i32 %51, 127
  %macid = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 50
  %52 = ptrtoint ptr %macid to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and.i.i251, ptr %macid, align 8
  %53 = ptrtoint ptr %add.ptr.i246 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i246, align 4
  %55 = and i32 %54, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool71.not = icmp eq i32 %55, 0
  br i1 %tobool71.not, label %if.else73, label %entry.if.then86_crit_edge

entry.if.then86_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then86

if.else73:                                        ; preds = %entry
  %56 = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool75.not = icmp eq i32 %56, 0
  br i1 %tobool75.not, label %if.end84, label %if.else73.if.then86_crit_edge

if.else73.if.then86_crit_edge:                    ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then86

if.end84:                                         ; preds = %if.else73
  %57 = and i32 %54, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool79.not = icmp eq i32 %57, 0
  br i1 %tobool79.not, label %if.end84.if.end88_crit_edge, label %if.end84.if.then86_crit_edge

if.end84.if.then86_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then86

if.end84.if.end88_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

if.then86:                                        ; preds = %if.end84.if.then86_crit_edge, %if.else73.if.then86_crit_edge, %entry.if.then86_crit_edge
  %wake_match.0263 = phi i32 [ 1, %if.end84.if.then86_crit_edge ], [ 2, %if.else73.if.then86_crit_edge ], [ 4, %entry.if.then86_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4096, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %wake_match.0263) #5
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end84.if.end88_crit_edge
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %58 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %center_freq, align 4
  %conv89 = trunc i32 %61 to i16
  %freq = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 5
  %62 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load90 = load i16, ptr %freq, align 4
  %bf.shl92 = shl i16 %conv89, 3
  %bf.clear93 = and i16 %bf.load90, 7
  %bf.set94 = or i16 %bf.clear93, %bf.shl92
  store i16 %bf.set94, ptr %freq, align 4
  %63 = load ptr, ptr %chandef, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %conv98 = trunc i32 %65 to i8
  %band99 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 11
  %66 = ptrtoint ptr %band99 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv98, ptr %band99, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data, align 4
  %69 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %rx_drvinfo_size, align 1
  %conv101 = zext i8 %70 to i32
  %add.ptr = getelementptr i8, ptr %68, i32 %conv101
  %71 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %rx_bufshift, align 2
  %conv103 = zext i8 %72 to i32
  %add.ptr104 = getelementptr i8, ptr %add.ptr, i32 %conv103
  %add.ptr105 = getelementptr i8, ptr %add.ptr104, i32 24
  %73 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load107 = load i8, ptr %icv, align 2
  %74 = and i8 %bf.load107, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool111.not = icmp eq i8 %74, 0
  br i1 %tobool111.not, label %if.end88.if.end114_crit_edge, label %if.then112

if.end88.if.end114_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end114

if.then112:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  %flag = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %75 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flag, align 8
  %or113 = or i32 %76, 32
  store i32 %or113, ptr %flag, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.end88.if.end114_crit_edge
  %rx_is40mhzpacket = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 27
  %77 = ptrtoint ptr %rx_is40mhzpacket to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %rx_is40mhzpacket, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool115.not = icmp eq i8 %78, 0
  br i1 %tobool115.not, label %if.end114.if.end120_crit_edge, label %if.then116

if.end114.if.end120_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

if.then116:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #7
  %bw = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %79 = ptrtoint ptr %bw to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %bf.load117 = load i16, ptr %bw, align 1
  %bf.clear118 = and i16 %bf.load117, -14337
  %bf.set119 = or i16 %bf.clear118, 6144
  store i16 %bf.set119, ptr %bw, align 1
  br label %if.end120

if.end120:                                        ; preds = %if.then116, %if.end114.if.end120_crit_edge
  %is_ht = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 42
  %80 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %is_ht, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool121.not = icmp eq i8 %81, 0
  br i1 %tobool121.not, label %if.end120.if.end126_crit_edge, label %if.then122

if.end120.if.end126_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end126

if.then122:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  %encoding = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %82 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %bf.load123 = load i16, ptr %encoding, align 1
  %bf.clear124 = and i16 %bf.load123, 16383
  %bf.set125 = or i16 %bf.clear124, 16384
  store i16 %bf.set125, ptr %encoding, align 1
  br label %if.end126

if.end126:                                        ; preds = %if.then122, %if.end120.if.end126_crit_edge
  %flag127 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %83 = ptrtoint ptr %flag127 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flag127, align 8
  %or128 = or i32 %84, 128
  store i32 %or128, ptr %flag127, align 8
  %85 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load130 = load i8, ptr %icv, align 2
  %86 = and i8 %bf.load130, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool134.not = icmp eq i8 %86, 0
  br i1 %tobool134.not, label %if.end126.if.end146_crit_edge, label %if.then135

if.end126.if.end146_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end146

if.then135:                                       ; preds = %if.end126
  %87 = ptrtoint ptr %add.ptr105 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %add.ptr105, align 2
  %89 = and i16 %88, -1024
  %90 = zext i16 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values)
  switch i16 %89, label %land.lhs.true [
    i16 -24576, label %if.then135.if.else142_crit_edge
    i16 -16384, label %if.then135.if.else142_crit_edge269
    i16 -12288, label %if.then135.if.else142_crit_edge270
  ]

if.then135.if.else142_crit_edge270:               ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else142

if.then135.if.else142_crit_edge269:               ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else142

if.then135.if.else142_crit_edge:                  ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else142

land.lhs.true:                                    ; preds = %if.then135
  %.pre = and i16 %88, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pre)
  %cmp.i.not = icmp eq i16 %.pre, 0
  br i1 %cmp.i.not, label %land.lhs.true.if.else142_crit_edge, label %if.then139

land.lhs.true.if.else142_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else142

if.then139:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %or141 = or i32 %84, 130
  br label %if.end146.sink.split

if.else142:                                       ; preds = %land.lhs.true.if.else142_crit_edge, %if.then135.if.else142_crit_edge, %if.then135.if.else142_crit_edge269, %if.then135.if.else142_crit_edge270
  %and144 = and i32 %or128, -3
  br label %if.end146.sink.split

if.end146.sink.split:                             ; preds = %if.else142, %if.then139
  %or141.sink = phi i32 [ %or141, %if.then139 ], [ %and144, %if.else142 ]
  %91 = ptrtoint ptr %flag127 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or141.sink, ptr %flag127, align 8
  br label %if.end146

if.end146:                                        ; preds = %if.end146.sink.split, %if.end126.if.end146_crit_edge
  %92 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %is_ht, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool148 = icmp ne i8 %93, 0
  %94 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %rate, align 1
  %call150 = tail call i32 @rtlwifi_rate_mapping(ptr noundef %hw, i1 noundef zeroext %tobool148, i1 noundef zeroext false, i8 noundef zeroext %95) #5
  %conv151 = trunc i32 %call150 to i8
  %rate_idx = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 8
  %96 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv151, ptr %rate_idx, align 1
  %97 = ptrtoint ptr %timestamp_low to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %timestamp_low, align 4
  %conv153 = zext i32 %98 to i64
  %99 = ptrtoint ptr %rx_status to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %conv153, ptr %rx_status, align 8
  %100 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool154.not = icmp eq i32 %100, 0
  br i1 %tobool154.not, label %if.end146.if.end161_crit_edge, label %if.then155

if.end146.if.end161_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end161

if.then155:                                       ; preds = %if.end146
  %101 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data, align 4
  %103 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %rx_bufshift, align 2
  %conv158 = zext i8 %104 to i32
  %add.ptr159 = getelementptr i8, ptr %102, i32 %conv158
  %add.ptr160 = getelementptr i8, ptr %add.ptr159, i32 24
  %105 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %priv, align 8
  %107 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %rx_drvinfo_size, align 1
  %conv.i = zext i8 %108 to i32
  %add.ptr.i258 = getelementptr i8, ptr %102, i32 %conv.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i258, i32 %conv158
  %add.ptr4.i = getelementptr i8, ptr %add.ptr3.i, i32 24
  %109 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %add.ptr4.i, align 2
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr4.i, i32 0, i32 2
  %111 = and i16 %110, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %111)
  %cmp.i.i.i = icmp eq i16 %111, 3
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #7
  %addr4.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr4.i, i32 0, i32 6
  br label %ieee80211_get_SA.exit.i

if.end.i.i:                                       ; preds = %if.then155
  %112 = and i16 %110, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %cmp.i11.not.i.i = icmp eq i16 %112, 0
  br i1 %cmp.i11.not.i.i, label %if.end5.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %addr3.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr4.i, i32 0, i32 4
  br label %ieee80211_get_SA.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %addr2.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr4.i, i32 0, i32 3
  br label %ieee80211_get_SA.exit.i

ieee80211_get_SA.exit.i:                          ; preds = %if.end5.i.i, %if.then3.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %addr4.i.i, %if.then.i.i ], [ %addr3.i.i, %if.then3.i.i ], [ %addr2.i.i, %if.end5.i.i ]
  %113 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %retval.0.i.i, align 4
  %115 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %status, align 4
  %add.ptr.i.i = getelementptr i8, ptr %retval.0.i.i, i32 4
  %116 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %status, i32 4
  %118 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %add.ptr1.i.i, align 2
  %119 = and i16 %110, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %119)
  %cmp.i.i = icmp eq i16 %119, 1024
  br i1 %cmp.i.i, label %ieee80211_get_SA.exit.i.if.end50.i_crit_edge, label %land.lhs.true.i

ieee80211_get_SA.exit.i.if.end50.i_crit_edge:     ; preds = %ieee80211_get_SA.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50.i

land.lhs.true.i:                                  ; preds = %ieee80211_get_SA.exit.i
  %bssid.i = getelementptr inbounds %struct.rtl_priv, ptr %106, i32 0, i32 9, i32 34
  %120 = and i16 %110, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %cmp.i1.not.i = icmp eq i16 %120, 0
  br i1 %cmp.i1.not.i, label %cond.false.i, label %land.lhs.true.i.cond.end19.i_crit_edge

land.lhs.true.i.cond.end19.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end19.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  %121 = and i16 %110, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %cmp.i2.not.i = icmp eq i16 %121, 0
  br i1 %cmp.i2.not.i, label %cond.false17.i, label %cond.true15.i

cond.true15.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr4.i, i32 0, i32 3
  br label %cond.end19.i

cond.false17.i:                                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr4.i, i32 0, i32 4
  br label %cond.end19.i

cond.end19.i:                                     ; preds = %cond.false17.i, %cond.true15.i, %land.lhs.true.i.cond.end19.i_crit_edge
  %cond20.i = phi ptr [ %addr2.i, %cond.true15.i ], [ %addr3.i, %cond.false17.i ], [ %addr1.i, %land.lhs.true.i.cond.end19.i_crit_edge ]
  %122 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %bssid.i, align 4
  %124 = ptrtoint ptr %cond20.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cond20.i, align 4
  %xor.i.i = xor i32 %125, %123
  %add.ptr.i3.i = getelementptr %struct.rtl_priv, ptr %106, i32 0, i32 9, i32 34, i32 4
  %126 = ptrtoint ptr %add.ptr.i3.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %add.ptr.i3.i, align 2
  %add.ptr1.i4.i = getelementptr i8, ptr %cond20.i, i32 4
  %128 = ptrtoint ptr %add.ptr1.i4.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %add.ptr1.i4.i, align 2
  %xor37.i.i = xor i16 %129, %127
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i5.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i5.i, label %land.lhs.true23.i, label %cond.end19.i.if.end50.i_crit_edge

cond.end19.i.if.end50.i_crit_edge:                ; preds = %cond.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50.i

land.lhs.true23.i:                                ; preds = %cond.end19.i
  %130 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %130)
  %bf.load.i = load i8, ptr %icv, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.load.i)
  %131 = icmp ult i8 %bf.load.i, 32
  br i1 %131, label %land.end40.i, label %land.lhs.true23.i.if.end50.i_crit_edge

land.lhs.true23.i.if.end50.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50.i

land.end40.i:                                     ; preds = %land.lhs.true23.i
  %dev_addr.i = getelementptr inbounds %struct.rtl_priv, ptr %106, i32 0, i32 17, i32 19
  %132 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %addr1.i, align 4
  %134 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %dev_addr.i, align 4
  %xor.i6.i = xor i32 %135, %133
  %add.ptr.i7.i = getelementptr i8, ptr %addr1.i, i32 4
  %136 = ptrtoint ptr %add.ptr.i7.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %add.ptr.i7.i, align 2
  %add.ptr1.i8.i = getelementptr %struct.rtl_priv, ptr %106, i32 0, i32 17, i32 19, i32 4
  %138 = ptrtoint ptr %add.ptr1.i8.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %add.ptr1.i8.i, align 2
  %xor37.i9.i = xor i16 %139, %137
  %xor3.i10.i = zext i16 %xor37.i9.i to i32
  %or.i11.i = or i32 %xor.i6.i, %xor3.i10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i11.i)
  %cmp.i12.i = icmp eq i32 %or.i11.i, 0
  %140 = and i16 %110, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %140)
  %cmp.i13.i = icmp eq i16 %140, -32768
  br i1 %cmp.i13.i, label %if.then48.i, label %land.end40.i.land.lhs.true53.i_crit_edge

land.end40.i.land.lhs.true53.i_crit_edge:         ; preds = %land.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true53.i

if.then48.i:                                      ; preds = %land.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  %141 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %priv, align 8
  %num_qry_beacon_pkt.i = getelementptr inbounds %struct.rtl_priv, ptr %142, i32 0, i32 15, i32 50, i32 4
  %143 = ptrtoint ptr %num_qry_beacon_pkt.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %num_qry_beacon_pkt.i, align 8
  %inc.i = add i16 %144, 1
  store i16 %inc.i, ptr %num_qry_beacon_pkt.i, align 8
  br label %land.lhs.true53.i

if.end50.i:                                       ; preds = %land.lhs.true23.i.if.end50.i_crit_edge, %cond.end19.i.if.end50.i_crit_edge, %ieee80211_get_SA.exit.i.if.end50.i_crit_edge
  %145 = and i16 %110, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %145)
  %cmp.i1319.i = icmp eq i16 %145, -32768
  br label %if.end75.i

land.lhs.true53.i:                                ; preds = %if.then48.i, %land.end40.i.land.lhs.true53.i_crit_edge
  %146 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %add.ptr4.i, align 2
  %148 = and i16 %147, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %148)
  %cmp.i14.i = icmp eq i16 %148, -30720
  br i1 %cmp.i14.i, label %land.lhs.true57.i, label %land.lhs.true53.i.if.end75.i_crit_edge

land.lhs.true53.i.if.end75.i_crit_edge:           ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75.i

land.lhs.true57.i:                                ; preds = %land.lhs.true53.i
  %149 = and i16 %147, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %cmp.i.not.i.i = icmp eq i16 %149, 0
  %addr3.i15.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr4.i, i32 0, i32 4
  %retval.0.i16.i = select i1 %cmp.i.not.i.i, ptr %addr1.i, ptr %addr3.i15.i
  %150 = ptrtoint ptr %retval.0.i16.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %retval.0.i16.i, align 4
  %152 = and i32 %151, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool.i.not.i = icmp eq i32 %152, 0
  br i1 %tobool.i.not.i, label %if.then60.i, label %land.lhs.true57.i.if.end75.i_crit_edge

land.lhs.true57.i.if.end75.i_crit_edge:           ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75.i

if.then60.i:                                      ; preds = %land.lhs.true57.i
  %qos_ctrl.i = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %add.ptr4.i, i32 0, i32 6
  %153 = ptrtoint ptr %qos_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %qos_ctrl.i, align 2
  %155 = lshr i16 %154, 8
  %trunc.i = trunc i16 %155 to i4
  %156 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.13)
  switch i4 %trunc.i, label %if.then69.i [
    i4 0, label %if.then60.i.if.end75.i_crit_edge
    i4 3, label %if.then60.i.if.end75.i_crit_edge271
  ]

if.then60.i.if.end75.i_crit_edge271:              ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75.i

if.then60.i.if.end75.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75.i

if.then69.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #7
  %157 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %priv, align 8
  %num_non_be_pkt.i = getelementptr inbounds %struct.rtl_priv, ptr %158, i32 0, i32 15, i32 50, i32 5
  %159 = ptrtoint ptr %num_non_be_pkt.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %num_non_be_pkt.i, align 2
  %inc73.i = add i16 %160, 1
  store i16 %inc73.i, ptr %num_non_be_pkt.i, align 2
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then69.i, %if.then60.i.if.end75.i_crit_edge, %if.then60.i.if.end75.i_crit_edge271, %land.lhs.true57.i.if.end75.i_crit_edge, %land.lhs.true53.i.if.end75.i_crit_edge, %if.end50.i
  %161 = phi i1 [ true, %if.then69.i ], [ true, %if.then60.i.if.end75.i_crit_edge ], [ true, %if.then60.i.if.end75.i_crit_edge271 ], [ true, %land.lhs.true57.i.if.end75.i_crit_edge ], [ true, %land.lhs.true53.i.if.end75.i_crit_edge ], [ false, %if.end50.i ]
  %162 = phi i1 [ %cmp.i12.i, %if.then69.i ], [ %cmp.i12.i, %if.then60.i.if.end75.i_crit_edge ], [ %cmp.i12.i, %if.then60.i.if.end75.i_crit_edge271 ], [ %cmp.i12.i, %land.lhs.true57.i.if.end75.i_crit_edge ], [ %cmp.i12.i, %land.lhs.true53.i.if.end75.i_crit_edge ], [ false, %if.end50.i ]
  %cmp.i132325.i = phi i1 [ %cmp.i13.i, %if.then69.i ], [ %cmp.i13.i, %if.then60.i.if.end75.i_crit_edge ], [ %cmp.i13.i, %if.then60.i.if.end75.i_crit_edge271 ], [ %cmp.i13.i, %land.lhs.true57.i.if.end75.i_crit_edge ], [ %cmp.i13.i, %land.lhs.true53.i.if.end75.i_crit_edge ], [ %cmp.i1319.i, %if.end50.i ]
  %frombool.i.i = zext i1 %161 to i8
  %frombool1.i.i = zext i1 %162 to i8
  %frombool2.i.i = zext i1 %cmp.i132325.i to i8
  %163 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %priv, align 8
  %165 = ptrtoint ptr %is_cck to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %is_cck, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool.not.i.i = icmp eq i8 %166, 0
  %packet_matchbssid.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 40
  %167 = ptrtoint ptr %packet_matchbssid.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %frombool.i.i, ptr %packet_matchbssid.i.i, align 2
  %packet_toself.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 43
  %168 = ptrtoint ptr %packet_toself.i.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %frombool1.i.i, ptr %packet_toself.i.i, align 1
  %packet_beacon10.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 44
  %169 = ptrtoint ptr %packet_beacon10.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %frombool2.i.i, ptr %packet_beacon10.i.i, align 2
  %rx_mimo_signalquality.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 31
  %170 = ptrtoint ptr %rx_mimo_signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 -1, ptr %rx_mimo_signalquality.i.i, align 4
  %arrayidx13.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 31, i32 1
  %171 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 -1, ptr %arrayidx13.i.i, align 1
  br i1 %tobool.not.i.i, label %for.body.preheader.i.i, label %if.then.i17.i

for.body.preheader.i.i:                           ; preds = %if.end75.i
  %arrayidx148.i.i = getelementptr %struct.rtl_priv, ptr %164, i32 0, i32 15, i32 15, i32 0
  %172 = ptrtoint ptr %arrayidx148.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx148.i.i, align 1, !range !40
  %174 = ptrtoint ptr %add.ptr160 to i32
  call void @__asan_load1_noabort(i32 %174)
  %bf.load.i.i = load i8, ptr %add.ptr160, align 1
  %175 = and i8 %bf.load.i.i, 126
  %sub157.i.i = add nsw i8 %175, -110
  %arrayidx165.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 36, i32 0
  %176 = ptrtoint ptr %arrayidx165.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %sub157.i.i, ptr %arrayidx165.i.i, align 1
  %call168.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub157.i.i) #5
  %arrayidx173.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 30, i32 0
  %177 = ptrtoint ptr %arrayidx173.i.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %call168.i.i, ptr %arrayidx173.i.i, align 1
  %arrayidx148.1.i.i = getelementptr %struct.rtl_priv, ptr %164, i32 0, i32 15, i32 15, i32 1
  %178 = ptrtoint ptr %arrayidx148.1.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx148.1.i.i, align 1, !range !40
  %arrayidx153.1.i.i = getelementptr [2 x %struct.phy_rx_agc_info_t], ptr %add.ptr160, i32 0, i32 1
  %180 = ptrtoint ptr %arrayidx153.1.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %bf.load.1.i.i = load i8, ptr %arrayidx153.1.i.i, align 1
  %181 = and i8 %bf.load.1.i.i, 126
  %sub157.1.i.i = add nsw i8 %181, -110
  %arrayidx165.1.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 36, i32 1
  %182 = ptrtoint ptr %arrayidx165.1.i.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %sub157.1.i.i, ptr %arrayidx165.1.i.i, align 1
  %call168.1.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub157.1.i.i) #5
  %conv169.1.i.i = zext i8 %call168.1.i.i to i32
  %arrayidx173.1.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 30, i32 1
  %183 = ptrtoint ptr %arrayidx173.1.i.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %call168.1.i.i, ptr %arrayidx173.1.i.i, align 1
  %cck_sig_qual_ofdm_pwdb_all175.i.i = getelementptr inbounds %struct.phy_status_rpt, ptr %add.ptr160, i32 0, i32 2
  %184 = ptrtoint ptr %cck_sig_qual_ofdm_pwdb_all175.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %cck_sig_qual_ofdm_pwdb_all175.i.i, align 1
  %186 = lshr i8 %185, 1
  %sub179.i.i = add nsw i8 %186, -110
  %call181.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub179.i.i) #5
  %conv182.i.i = zext i8 %call181.i.i to i32
  %rx_pwdb_all183.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 29
  %187 = ptrtoint ptr %rx_pwdb_all183.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %conv182.i.i, ptr %rx_pwdb_all183.i.i, align 4
  %bt_rx_rssi_percentage185.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 51
  %188 = ptrtoint ptr %bt_rx_rssi_percentage185.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %conv182.i.i, ptr %bt_rx_rssi_percentage185.i.i, align 4
  %rxpower.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 17
  %189 = ptrtoint ptr %rxpower.i.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %sub179.i.i, ptr %rxpower.i.i, align 8
  %conv186.i.i = sext i8 %sub179.i.i to i32
  %recvsignalpower187.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 16
  %190 = ptrtoint ptr %recvsignalpower187.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %conv186.i.i, ptr %recvsignalpower187.i.i, align 4
  %191 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %rate, align 1
  %193 = add i8 %192, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %193)
  %194 = icmp ult i8 %193, 8
  %max_spatial_stream.0.i.i = select i1 %194, i32 2, i32 1
  %arrayidx206.peel.i.i = getelementptr %struct.phy_status_rpt, ptr %add.ptr160, i32 0, i32 9, i32 0
  %195 = ptrtoint ptr %arrayidx206.peel.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx206.peel.i.i, align 1
  %call207.peel.i.i = tail call zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext %196) #5
  br i1 %161, label %if.end218.peel.i.i, label %for.body.preheader.i.i.for.inc226.peel.i.i_crit_edge

for.body.preheader.i.i.for.inc226.peel.i.i_crit_edge: ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc226.peel.i.i

if.then.i17.i:                                    ; preds = %if.end75.i
  %cck_agc_rpt_ofdm_cfosho_a.i.i = getelementptr inbounds %struct.phy_status_rpt, ptr %add.ptr160, i32 0, i32 3
  %197 = ptrtoint ptr %cck_agc_rpt_ofdm_cfosho_a.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %cck_agc_rpt_ofdm_cfosho_a.i.i, align 1
  %199 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %priv, align 8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %200, i32 0, i32 32
  %201 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %cfg.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %202, i32 0, i32 4
  %203 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ops.i.i.i, align 4
  %get_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %204, i32 0, i32 45
  %205 = ptrtoint ptr %get_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %get_bbreg.i.i.i, align 4
  %call.i.i.i = tail call i32 %206(ptr noundef %hw, i32 noundef 2084, i32 noundef 512) #5
  %conv.i.i = trunc i32 %call.i.i.i to i8
  %207 = lshr i8 %198, 5
  %208 = and i8 %198, 31
  %conv20.i.i = zext i8 %207 to i32
  %209 = zext i32 %conv20.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %209, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %conv20.i.i, label %if.then.unreachabledefault.i.i [
    i32 7, label %sw.bb.i.i
    i32 6, label %sw.bb26.i.i
    i32 5, label %sw.bb32.i.i
    i32 4, label %sw.bb38.i.i
    i32 3, label %sw.bb44.i.i
    i32 2, label %sw.bb50.i.i
    i32 1, label %sw.bb65.i.i
    i32 0, label %sw.bb70.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then.i17.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %208)
  %cmp.i18.i = icmp ult i8 %208, 28
  br i1 %cmp.i18.i, label %if.then23.i.i, label %sw.bb.i.i.sw.epilog.i.i_crit_edge

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

if.then23.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %.neg8.i.i = mul nsw i8 %208, -2
  %add.i.i = add nsw i8 %.neg8.i.i, -46
  br label %sw.epilog.i.i

sw.bb26.i.i:                                      ; preds = %if.then.i17.i
  call void @__sanitizer_cov_trace_pc() #7
  %.neg7.i.i = mul nsw i8 %208, -2
  %add30.i.i = add nsw i8 %.neg7.i.i, -44
  br label %sw.epilog.i.i

sw.bb32.i.i:                                      ; preds = %if.then.i17.i
  call void @__sanitizer_cov_trace_pc() #7
  %.neg6.i.i = mul nsw i8 %208, -2
  %add36.i.i = add nsw i8 %.neg6.i.i, -28
  br label %sw.epilog.i.i

sw.bb38.i.i:                                      ; preds = %if.then.i17.i
  call void @__sanitizer_cov_trace_pc() #7
  %.neg5.i.i = mul nsw i8 %208, -2
  %add42.i.i = add nsw i8 %.neg5.i.i, -22
  br label %sw.epilog.i.i

sw.bb44.i.i:                                      ; preds = %if.then.i17.i
  call void @__sanitizer_cov_trace_pc() #7
  %.neg4.i.i = mul nsw i8 %208, -2
  %add48.i.i = add nsw i8 %.neg4.i.i, -10
  br label %sw.epilog.i.i

sw.bb50.i.i:                                      ; preds = %if.then.i17.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i)
  %tobool51.not.i.i = icmp eq i8 %conv.i.i, 0
  %.neg2.i.i = mul nsw i8 %208, -2
  br i1 %tobool51.not.i.i, label %sw.epilog.thread.i.i, label %sw.epilog.thread18.i.i

sw.epilog.thread18.i.i:                           ; preds = %sw.bb50.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add7620.i.i = add nsw i8 %.neg2.i.i, 14
  %call7821.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %add7620.i.i) #5
  br label %if.end111.i.i

sw.epilog.thread.i.i:                             ; preds = %sw.bb50.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add7612.i.i = add nsw i8 %.neg2.i.i, 20
  %call7813.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %add7612.i.i) #5
  br label %if.then80.i.i

sw.bb65.i.i:                                      ; preds = %if.then.i17.i
  call void @__sanitizer_cov_trace_pc() #7
  %.neg1.i.i = mul nsw i8 %208, -2
  %sub68.i.i = add nsw i8 %.neg1.i.i, 8
  br label %sw.epilog.i.i

sw.bb70.i.i:                                      ; preds = %if.then.i17.i
  call void @__sanitizer_cov_trace_pc() #7
  %.neg.i.i = mul nsw i8 %208, -2
  %sub73.i.i = add nsw i8 %.neg.i.i, 14
  br label %sw.epilog.i.i

if.then.unreachabledefault.i.i:                   ; preds = %if.then.i17.i
  unreachable

sw.epilog.i.i:                                    ; preds = %sw.bb70.i.i, %sw.bb65.i.i, %sw.bb44.i.i, %sw.bb38.i.i, %sw.bb32.i.i, %sw.bb26.i.i, %if.then23.i.i, %sw.bb.i.i.sw.epilog.i.i_crit_edge
  %rx_pwr_all.0.i.i = phi i8 [ %sub73.i.i, %sw.bb70.i.i ], [ %sub68.i.i, %sw.bb65.i.i ], [ %add48.i.i, %sw.bb44.i.i ], [ %add42.i.i, %sw.bb38.i.i ], [ %add36.i.i, %sw.bb32.i.i ], [ %add30.i.i, %sw.bb26.i.i ], [ %add.i.i, %if.then23.i.i ], [ -100, %sw.bb.i.i.sw.epilog.i.i_crit_edge ]
  %add76.i.i = add nsw i8 %rx_pwr_all.0.i.i, 16
  %call78.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %add76.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i)
  %tobool79.not.i.i = icmp eq i8 %conv.i.i, 0
  br i1 %tobool79.not.i.i, label %sw.epilog.i.i.if.then80.i.i_crit_edge, label %sw.epilog.i.i.if.end111.i.i_crit_edge

sw.epilog.i.i.if.end111.i.i_crit_edge:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111.i.i

sw.epilog.i.i.if.then80.i.i_crit_edge:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then80.i.i

if.then80.i.i:                                    ; preds = %sw.epilog.i.i.if.then80.i.i_crit_edge, %sw.epilog.thread.i.i
  %call7817.i.i = phi i8 [ %call7813.i.i, %sw.epilog.thread.i.i ], [ %call78.i.i, %sw.epilog.i.i.if.then80.i.i_crit_edge ]
  %add7616.i.i = phi i8 [ %add7612.i.i, %sw.epilog.thread.i.i ], [ %add76.i.i, %sw.epilog.i.i.if.then80.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %call7817.i.i)
  %cmp82.i.i = icmp ugt i8 %call7817.i.i, 79
  br i1 %cmp82.i.i, label %if.then84.i.i, label %if.else93.i.i

if.then84.i.i:                                    ; preds = %if.then80.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv81.i.i = zext i8 %call7817.i.i to i32
  %sub86.i.i = add nsw i32 %conv81.i.i, -80
  %shl.i.i = shl nuw nsw i32 %sub86.i.i, 1
  %210 = lshr i32 %sub86.i.i, 1
  %add90.i.i = add nuw nsw i32 %shl.i.i, %210
  %211 = trunc i32 %add90.i.i to i8
  %conv92.i.i = add i8 %211, 80
  br label %if.end105.i.i

if.else93.i.i:                                    ; preds = %if.then80.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %call7817.i.i)
  %cmp95.not.i.i = icmp ne i8 %call7817.i.i, 79
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %call7817.i.i)
  %cmp98.i.i = icmp ugt i8 %call7817.i.i, 19
  %or.cond.i.i = and i1 %cmp95.not.i.i, %cmp98.i.i
  %add102.i.i = add nuw nsw i8 %call7817.i.i, 3
  %spec.select10.i.i = select i1 %or.cond.i.i, i8 %add102.i.i, i8 %call7817.i.i
  br label %if.end105.i.i

if.end105.i.i:                                    ; preds = %if.else93.i.i, %if.then84.i.i
  %pwdb_all.0.i.i = phi i8 [ %conv92.i.i, %if.then84.i.i ], [ %spec.select10.i.i, %if.else93.i.i ]
  %212 = tail call i8 @llvm.umin.i8(i8 %pwdb_all.0.i.i, i8 100) #5
  br label %if.end111.i.i

if.end111.i.i:                                    ; preds = %if.end105.i.i, %sw.epilog.i.i.if.end111.i.i_crit_edge, %sw.epilog.thread18.i.i
  %add7615.i.i = phi i8 [ %add76.i.i, %sw.epilog.i.i.if.end111.i.i_crit_edge ], [ %add7616.i.i, %if.end105.i.i ], [ %add7620.i.i, %sw.epilog.thread18.i.i ]
  %pwdb_all.1.i.i = phi i8 [ %call78.i.i, %sw.epilog.i.i.if.end111.i.i_crit_edge ], [ %212, %if.end105.i.i ], [ %call7821.i.i, %sw.epilog.thread18.i.i ]
  %conv112.i.i = zext i8 %pwdb_all.1.i.i to i32
  %rx_pwdb_all.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 29
  %213 = ptrtoint ptr %rx_pwdb_all.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %conv112.i.i, ptr %rx_pwdb_all.i.i, align 4
  %bt_rx_rssi_percentage.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 51
  %214 = ptrtoint ptr %bt_rx_rssi_percentage.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %conv112.i.i, ptr %bt_rx_rssi_percentage.i.i, align 4
  %conv114.i.i = sext i8 %add7615.i.i to i32
  %recvsignalpower.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 16
  %215 = ptrtoint ptr %recvsignalpower.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %conv114.i.i, ptr %recvsignalpower.i.i, align 4
  br i1 %161, label %if.then116.i.i, label %if.end111.i.i.if.end278.sink.split.i.i_crit_edge

if.end111.i.i.if.end278.sink.split.i.i_crit_edge: ; preds = %if.end111.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end278.sink.split.i.i

if.then116.i.i:                                   ; preds = %if.end111.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %pwdb_all.1.i.i)
  %cmp118.i.i = icmp ugt i8 %pwdb_all.1.i.i, 40
  br i1 %cmp118.i.i, label %if.then116.i.i.if.end138.i.i_crit_edge, label %if.else121.i.i

if.then116.i.i.if.end138.i.i_crit_edge:           ; preds = %if.then116.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end138.i.i

if.else121.i.i:                                   ; preds = %if.then116.i.i
  %cck_sig_qual_ofdm_pwdb_all.i.i = getelementptr inbounds %struct.phy_status_rpt, ptr %add.ptr160, i32 0, i32 2
  %216 = ptrtoint ptr %cck_sig_qual_ofdm_pwdb_all.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %cck_sig_qual_ofdm_pwdb_all.i.i, align 1
  %conv122.i.i = zext i8 %217 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %217)
  %cmp123.i.i = icmp ugt i8 %217, 64
  br i1 %cmp123.i.i, label %if.else121.i.i.if.end138.i.i_crit_edge, label %if.else126.i.i

if.else121.i.i.if.end138.i.i_crit_edge:           ; preds = %if.else121.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end138.i.i

if.else126.i.i:                                   ; preds = %if.else121.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %217)
  %cmp128.i.i = icmp ult i8 %217, 20
  br i1 %cmp128.i.i, label %if.else126.i.i.if.end138.i.i_crit_edge, label %if.else131.i.i

if.else126.i.i.if.end138.i.i_crit_edge:           ; preds = %if.else126.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end138.i.i

if.else131.i.i:                                   ; preds = %if.else126.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub133.i.i = sub nsw i16 64, %conv122.i.i
  %mul134.i.i = mul nsw i16 %sub133.i.i, 100
  %div27.i.i = sdiv i16 %mul134.i.i, 44
  %conv135.i.i = trunc i16 %div27.i.i to i8
  br label %if.end138.i.i

if.end138.i.i:                                    ; preds = %if.else131.i.i, %if.else126.i.i.if.end138.i.i_crit_edge, %if.else121.i.i.if.end138.i.i_crit_edge, %if.then116.i.i.if.end138.i.i_crit_edge
  %sq.0.i.i = phi i8 [ %conv135.i.i, %if.else131.i.i ], [ 100, %if.then116.i.i.if.end138.i.i_crit_edge ], [ 0, %if.else121.i.i.if.end138.i.i_crit_edge ], [ 100, %if.else126.i.i.if.end138.i.i_crit_edge ]
  %signalquality.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 15
  %218 = ptrtoint ptr %signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %sq.0.i.i, ptr %signalquality.i.i, align 8
  %219 = ptrtoint ptr %rx_mimo_signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %sq.0.i.i, ptr %rx_mimo_signalquality.i.i, align 4
  %220 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 -1, ptr %arrayidx13.i.i, align 1
  br label %if.end278.sink.split.i.i

if.end218.peel.i.i:                               ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %signalquality217.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 15
  %221 = ptrtoint ptr %signalquality217.i.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %call207.peel.i.i, ptr %signalquality217.i.i, align 8
  %222 = ptrtoint ptr %rx_mimo_signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %call207.peel.i.i, ptr %rx_mimo_signalquality.i.i, align 1
  br label %for.inc226.peel.i.i

for.inc226.peel.i.i:                              ; preds = %if.end218.peel.i.i, %for.body.preheader.i.i.for.inc226.peel.i.i_crit_edge
  br i1 %194, label %for.inc226.peel.i.i.for.body204.i.i_crit_edge, label %for.inc226.peel.i.i.for.end228.i.i_crit_edge

for.inc226.peel.i.i.for.end228.i.i_crit_edge:     ; preds = %for.inc226.peel.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end228.i.i

for.inc226.peel.i.i.for.body204.i.i_crit_edge:    ; preds = %for.inc226.peel.i.i
  br label %for.body204.i.i

for.body204.i.i:                                  ; preds = %for.inc226.i.i.for.body204.i.i_crit_edge, %for.inc226.peel.i.i.for.body204.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.inc226.i.i.for.body204.i.i_crit_edge ], [ 1, %for.inc226.peel.i.i.for.body204.i.i_crit_edge ]
  %arrayidx206.i.i = getelementptr %struct.phy_status_rpt, ptr %add.ptr160, i32 0, i32 9, i32 %indvars.iv.i.i
  %223 = ptrtoint ptr %arrayidx206.i.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx206.i.i, align 1
  %call207.i.i = tail call zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext %224) #5
  br i1 %161, label %if.end218.i.i, label %for.body204.i.i.for.inc226.i.i_crit_edge

for.body204.i.i.for.inc226.i.i_crit_edge:         ; preds = %for.body204.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc226.i.i

if.end218.i.i:                                    ; preds = %for.body204.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx224.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 31, i32 %indvars.iv.i.i
  %225 = ptrtoint ptr %arrayidx224.i.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %call207.i.i, ptr %arrayidx224.i.i, align 1
  br label %for.inc226.i.i

for.inc226.i.i:                                   ; preds = %if.end218.i.i, %for.body204.i.i.for.inc226.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %max_spatial_stream.0.i.i
  br i1 %exitcond.not.i.i, label %for.inc226.i.i.for.end228.i.i_crit_edge, label %for.inc226.i.i.for.body204.i.i_crit_edge, !llvm.loop !41

for.inc226.i.i.for.body204.i.i_crit_edge:         ; preds = %for.inc226.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body204.i.i

for.inc226.i.i.for.end228.i.i_crit_edge:          ; preds = %for.inc226.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end228.i.i

for.end228.i.i:                                   ; preds = %for.inc226.i.i.for.end228.i.i_crit_edge, %for.inc226.peel.i.i.for.end228.i.i_crit_edge
  %conv169.i.i = zext i8 %call168.i.i to i32
  %spec.select.1.i.i = add nuw nsw i8 %179, %173
  %add170.1.i.i = add nuw nsw i32 %conv169.1.i.i, %conv169.i.i
  br i1 %161, label %for.body235.preheader.i.i, label %for.end228.i.i.if.else267.i.i_crit_edge

for.end228.i.i.if.else267.i.i_crit_edge:          ; preds = %for.end228.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else267.i.i

for.body235.preheader.i.i:                        ; preds = %for.end228.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx237.i.i = getelementptr %struct.phy_status_rpt, ptr %add.ptr160, i32 0, i32 7, i32 0
  %226 = ptrtoint ptr %arrayidx237.i.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx237.i.i, align 1
  %conv238.i.i = zext i8 %227 to i32
  %228 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %priv, align 8
  %arrayidx242.i.i = getelementptr %struct.rtl_priv, ptr %229, i32 0, i32 15, i32 54, i32 0
  %230 = ptrtoint ptr %arrayidx242.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %conv238.i.i, ptr %arrayidx242.i.i, align 4
  %arrayidx237.1.i.i = getelementptr %struct.phy_status_rpt, ptr %add.ptr160, i32 0, i32 7, i32 1
  %231 = ptrtoint ptr %arrayidx237.1.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx237.1.i.i, align 1
  %conv238.1.i.i = zext i8 %232 to i32
  %233 = load ptr, ptr %priv, align 8
  %arrayidx242.1.i.i = getelementptr %struct.rtl_priv, ptr %233, i32 0, i32 15, i32 54, i32 1
  %234 = ptrtoint ptr %arrayidx242.1.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %conv238.1.i.i, ptr %arrayidx242.1.i.i, align 4
  %235 = load ptr, ptr %priv, align 8
  %packet_count.i.i = getelementptr inbounds %struct.rtl_priv, ptr %235, i32 0, i32 15, i32 58
  %236 = ptrtoint ptr %packet_count.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %packet_count.i.i, align 8
  %inc258.i.i = add i32 %237, 1
  store i32 %inc258.i.i, ptr %packet_count.i.i, align 8
  br label %if.else267.i.i

if.else267.i.i:                                   ; preds = %for.body235.preheader.i.i, %for.end228.i.i.if.else267.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.1.i.i)
  %cmp269.not.i.i = icmp eq i8 %spec.select.1.i.i, 0
  br i1 %cmp269.not.i.i, label %if.else267.i.i._rtl92ee_translate_rx_signal_stuff.exit_crit_edge, label %if.then271.i.i

if.else267.i.i._rtl92ee_translate_rx_signal_stuff.exit_crit_edge: ; preds = %if.else267.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92ee_translate_rx_signal_stuff.exit

if.then271.i.i:                                   ; preds = %if.else267.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv268.i.i = zext i8 %spec.select.1.i.i to i32
  %div273.i.i = udiv i32 %add170.1.i.i, %conv268.i.i
  br label %if.end278.sink.split.i.i

if.end278.sink.split.i.i:                         ; preds = %if.then271.i.i, %if.end138.i.i, %if.end111.i.i.if.end278.sink.split.i.i_crit_edge
  %div273.sink.i.i = phi i32 [ %div273.i.i, %if.then271.i.i ], [ %conv112.i.i, %if.end138.i.i ], [ %conv112.i.i, %if.end111.i.i.if.end278.sink.split.i.i_crit_edge ]
  %call274.i.i = tail call i32 @rtl_signal_scale_mapping(ptr noundef %hw, i32 noundef %div273.sink.i.i) #5
  %conv275.i.i = trunc i32 %call274.i.i to i8
  %signalstrength276.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 18
  %238 = ptrtoint ptr %signalstrength276.i.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %conv275.i.i, ptr %signalstrength276.i.i, align 1
  br label %_rtl92ee_translate_rx_signal_stuff.exit

_rtl92ee_translate_rx_signal_stuff.exit:          ; preds = %if.end278.sink.split.i.i, %if.else267.i.i._rtl92ee_translate_rx_signal_stuff.exit_crit_edge
  tail call void @rtl_process_phyinfo(ptr noundef %hw, ptr noundef %add.ptr4.i, ptr noundef %status) #5
  br label %if.end161

if.end161:                                        ; preds = %_rtl92ee_translate_rx_signal_stuff.exit, %if.end146.if.end161_crit_edge
  %recvsignalpower = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 16
  %239 = ptrtoint ptr %recvsignalpower to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %recvsignalpower, align 4
  %241 = trunc i32 %240 to i8
  %conv162 = add i8 %241, 10
  %signal = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 13
  %242 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %conv162, ptr %signal, align 2
  %243 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %244)
  %cmp165 = icmp eq i8 %244, 2
  br i1 %cmp165, label %if.then167, label %if.end161.if.end172_crit_edge

if.end161.if.end172_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end172

if.then167:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i259 = getelementptr i32, ptr %pdesc8, i32 4
  %245 = ptrtoint ptr %add.ptr.i259 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %add.ptr.i259, align 4
  %247 = tail call i32 @llvm.bswap.i32(i32 %246) #5
  %macid_valid_entry = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 52
  %248 = ptrtoint ptr %macid_valid_entry to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %247, ptr %macid_valid_entry, align 8
  %249 = ptrtoint ptr %add.ptr.i249 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %add.ptr.i249, align 4
  %251 = tail call i32 @llvm.bswap.i32(i32 %250) #5
  %arrayidx171 = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 52, i32 1
  %252 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %arrayidx171, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then167, %if.end161.if.end172_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtlwifi_rate_mapping(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_rx_check_dma_ok(ptr nocapture noundef %hw, ptr nocapture noundef %header_desc8, i8 noundef zeroext %queue_index) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @rtl92ee_rx_desc_buff_remained_cnt(ptr nocapture noundef readonly %hw, i8 noundef zeroext %queue_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef 948) #5
  %4 = trunc i32 %call.i to i16
  %conv4 = and i16 %4, 2047
  %rx_ring = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 8, i32 2, i32 4
  %idxprom = zext i8 %queue_index to i32
  %next_rx_rp = getelementptr [2 x %struct.rtl8192_rx_ring], ptr %rx_ring, i32 0, i32 %idxprom, i32 5
  %5 = ptrtoint ptr %next_rx_rp to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %next_rx_rp, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %conv4, i16 %6)
  %cmp.not = icmp eq i16 %conv4, %6
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv5 = zext i16 %conv4 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4096, i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef %conv5, i32 noundef %call.i) #5
  %7 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read32_sync.i, align 4
  %call.i53 = tail call i32 %8(ptr noundef %1, i32 noundef 948) #5
  %9 = trunc i32 %call.i53 to i16
  %conv14 = and i16 %9, 2047
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %read_point.0.in.in.in = phi i32 [ %call.i53, %if.then ], [ %call.i, %entry.if.end_crit_edge ]
  %write_point.0 = phi i16 [ %conv14, %if.then ], [ %conv4, %entry.if.end_crit_edge ]
  %read_point.0.in.in = lshr i32 %read_point.0.in.in.in, 16
  %read_point.0.in = trunc i32 %read_point.0.in.in to i16
  %read_point.0 = and i16 %read_point.0.in, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %read_point.0)
  %cmp16.not = icmp eq i16 %read_point.0, 0
  br i1 %cmp16.not, label %if.end19, label %if.end19.thread

if.end19.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rtl92ee_rx_desc_buff_remained_cnt.start_rx, align 1
  br label %if.end21

if.end19:                                         ; preds = %if.end
  %.b51.pr = load i1, ptr @rtl92ee_rx_desc_buff_remained_cnt.start_rx, align 1
  br i1 %.b51.pr, label %if.end19.if.end21_crit_edge, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19.if.end21_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.end21:                                         ; preds = %if.end19.if.end21_crit_edge, %if.end19.thread
  call void @__sanitizer_cov_trace_cmp2(i16 %read_point.0, i16 %write_point.0)
  %cmp.not.i = icmp ugt i16 %read_point.0, %write_point.0
  %add.i = sub nsw i16 511, %write_point.0
  %10 = xor i16 %write_point.0, -1
  %retval.0.i.v = select i1 %cmp.not.i, i16 %10, i16 %add.i
  %retval.0.i = add nsw i16 %read_point.0, %retval.0.i.v
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i)
  %cmp24 = icmp eq i16 %retval.0.i, 0
  br i1 %cmp24, label %if.end21.cleanup_crit_edge, label %if.end27

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %next_rx_rp to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %write_point.0, ptr %next_rx_rp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end21.cleanup_crit_edge, %if.end19.cleanup_crit_edge
  %retval.0 = phi i16 [ %retval.0.i, %if.end27 ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @rtl92ee_get_available_desc(ptr nocapture noundef readonly %hw, i8 noundef zeroext %q_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %q_idx)
  %2 = icmp ult i8 %q_idx, 9
  br i1 %2, label %switch.lookup, label %entry.get_desc_addr_fr_q_idx.exit_crit_edge

entry.get_desc_addr_fr_q_idx.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_desc_addr_fr_q_idx.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = sext i8 %q_idx to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.rtl92ee_get_available_desc, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_desc_addr_fr_q_idx.exit

get_desc_addr_fr_q_idx.exit:                      ; preds = %switch.lookup, %entry.get_desc_addr_fr_q_idx.exit_crit_edge
  %desc_address.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 936, %entry.get_desc_addr_fr_q_idx.exit_crit_edge ]
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %5 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %6(ptr noundef %1, i32 noundef %desc_address.0.i) #5
  %shr = lshr i32 %call.i, 16
  %7 = trunc i32 %shr to i16
  %conv3 = and i16 %7, 4095
  %8 = trunc i32 %call.i to i16
  %conv5 = and i16 %8, 4095
  call void @__sanitizer_cov_trace_cmp2(i16 %conv3, i16 %conv5)
  %cmp.not.i = icmp ugt i16 %conv3, %conv5
  %add.i = sub nsw i16 511, %conv5
  %9 = xor i16 %conv5, -1
  %retval.0.i.v = select i1 %cmp.not.i, i16 %9, i16 %add.i
  %retval.0.i = add nsw i16 %conv3, %retval.0.i.v
  ret i16 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_pre_fill_tx_bd_desc(ptr nocapture noundef readonly %hw, ptr noundef %tx_bd_desc8, ptr nocapture noundef %desc8, i8 noundef zeroext %queue_index, ptr nocapture noundef readonly %skb, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %tx_ring = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  %idxprom = zext i8 %queue_index to i32
  %cur_tx_wp = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom, i32 7
  %4 = ptrtoint ptr %cur_tx_wp to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cur_tx_wp, align 4
  %earlymode_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 58
  %6 = ptrtoint ptr %earlymode_enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %earlymode_enable, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %queue_index)
  %cmp = icmp ult i8 %queue_index, 4
  %dma = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom, i32 1
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma, align 4
  %10 = ptrtoint ptr %tx_bd_desc8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_bd_desc8, align 4
  %and.i.i115 = and i32 %11, 12582912
  store i32 %and.i.i115, ptr %tx_bd_desc8, align 4
  %add.ptr.i = getelementptr i32, ptr %tx_bd_desc8, i32 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  %and.i.i120 = and i32 %13, 65407
  store i32 %and.i.i120, ptr %add.ptr.i, align 4
  %add.ptr1.i = getelementptr i32, ptr %tx_bd_desc8, i32 5
  %14 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %add.ptr1.i, align 4
  %add.ptr1.i127 = getelementptr i32, ptr %tx_bd_desc8, i32 6
  %15 = ptrtoint ptr %add.ptr1.i127 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %add.ptr1.i127, align 4
  %add.ptr.i.1 = getelementptr i32, ptr %tx_bd_desc8, i32 8
  %16 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.1, align 4
  %and.i.i120.1 = and i32 %17, 65407
  store i32 %and.i.i120.1, ptr %add.ptr.i.1, align 4
  %add.ptr1.i.1 = getelementptr i32, ptr %tx_bd_desc8, i32 9
  %18 = ptrtoint ptr %add.ptr1.i.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %add.ptr1.i.1, align 4
  %add.ptr1.i127.1 = getelementptr i32, ptr %tx_bd_desc8, i32 10
  %19 = ptrtoint ptr %add.ptr1.i127.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %add.ptr1.i127.1, align 4
  %add.ptr.i.2 = getelementptr i32, ptr %tx_bd_desc8, i32 12
  %20 = ptrtoint ptr %add.ptr.i.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.2, align 4
  %and.i.i120.2 = and i32 %21, 65407
  store i32 %and.i.i120.2, ptr %add.ptr.i.2, align 4
  %add.ptr1.i.2 = getelementptr i32, ptr %tx_bd_desc8, i32 13
  %22 = ptrtoint ptr %add.ptr1.i.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %add.ptr1.i.2, align 4
  %add.ptr1.i127.2 = getelementptr i32, ptr %tx_bd_desc8, i32 14
  %23 = ptrtoint ptr %add.ptr1.i127.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %add.ptr1.i127.2, align 4
  %24 = call ptr @memset(ptr %desc8, i32 0, i32 40)
  %25 = ptrtoint ptr %earlymode_enable to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %earlymode_enable, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool42.not = icmp eq i8 %26, 0
  %27 = ptrtoint ptr %tx_bd_desc8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_bd_desc8, align 4
  %and.i.i131 = and i32 %28, 12648447
  %. = select i1 %cmp, i32 805306368, i32 671088640
  %.sink = select i1 %tobool42.not, i32 671088640, i32 %.
  %or.i.i = or i32 %and.i.i131, %.sink
  store i32 %or.i.i, ptr %tx_bd_desc8, align 4
  %conv32 = zext i16 %5 to i32
  %mul33 = shl nuw nsw i32 %conv32, 6
  %add34 = add i32 %9, %mul33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp ne i8 %7, 0
  %or.cond = and i1 %cmp, %tobool4.not
  %append_early_mode_size.0 = select i1 %or.cond, i32 8, i32 0
  %add = add i32 %3, 40
  %add18 = add i32 %append_early_mode_size.0, %add
  %div113 = lshr i32 %add18, 8
  %mul22 = and i32 %add18, -256
  %add9 = add i32 %3, 48
  %total_packet_size.0 = select i1 %or.cond, i32 %add9, i32 %add
  call void @__sanitizer_cov_trace_cmp4(i32 %mul22, i32 %total_packet_size.0)
  %cmp23 = icmp ult i32 %mul22, %total_packet_size.0
  %add26 = zext i1 %cmp23 to i32
  %psblen.0 = add nuw nsw i32 %div113, %add26
  %and.i.i133 = and i32 %or.i.i, 952107136
  %29 = shl i32 %psblen.0, 16
  %30 = and i32 %29, 2147418112
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  %or.i.i134 = or i32 %and.i.i133, %31
  %32 = ptrtoint ptr %tx_bd_desc8 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i.i134, ptr %tx_bd_desc8, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %add34) #5
  %add.ptr.i135 = getelementptr i32, ptr %tx_bd_desc8, i32 1
  %34 = ptrtoint ptr %add.ptr.i135 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %add.ptr.i135, align 4
  %35 = getelementptr i32, ptr %tx_bd_desc8, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %35, align 4
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i, align 4
  %and.i.i139 = and i32 %38, 65407
  %39 = and i32 %3, 65535
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  %or.i.i140 = or i32 %and.i.i139, %40
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i.i140, ptr %add.ptr.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %addr) #5
  %add.ptr1.i144 = getelementptr i32, ptr %tx_bd_desc8, i32 5
  %43 = ptrtoint ptr %add.ptr1.i144 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %add.ptr1.i144, align 4
  %add.ptr1.i146 = getelementptr i32, ptr %tx_bd_desc8, i32 6
  %44 = ptrtoint ptr %add.ptr1.i146 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %add.ptr1.i146, align 4
  %45 = ptrtoint ptr %desc8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %desc8, align 4
  %and.i.i147 = and i32 %46, 65535
  %or.i.i148 = or i32 %and.i.i147, %40
  store i32 %or.i.i148, ptr %desc8, align 4
  %add.ptr.i149 = getelementptr i32, ptr %desc8, i32 7
  %47 = ptrtoint ptr %add.ptr.i149 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i149, align 4
  %and.i.i150 = and i32 %48, 65535
  %or.i.i151 = or i32 %and.i.i150, %40
  store i32 %or.i.i151, ptr %add.ptr.i149, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_tx_fill_desc(ptr noundef %hw, ptr nocapture noundef readonly %hdr, ptr noundef %pdesc8, ptr noundef %pbd_desc_tx, ptr noundef %info, ptr noundef %sta, ptr noundef %skb, i8 noundef zeroext %hw_queue, ptr noundef %ptcb_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %8 = and i16 %7, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %8)
  %cmp.i.i = icmp eq i16 %8, -32768
  br i1 %cmp.i.i, label %entry._rtl92ee_map_hwqueue_to_fwqueue.exit_crit_edge, label %if.end.i, !prof !43

entry._rtl92ee_map_hwqueue_to_fwqueue.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92ee_map_hwqueue_to_fwqueue.exit

if.end.i:                                         ; preds = %entry
  %9 = trunc i16 %7 to i12
  %trunc.i = and i12 %9, -1024
  %10 = zext i12 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.15)
  switch i12 %trunc.i, label %if.end6.i [
    i12 0, label %if.end.i._rtl92ee_map_hwqueue_to_fwqueue.exit_crit_edge
    i12 1024, label %if.end.i._rtl92ee_map_hwqueue_to_fwqueue.exit_crit_edge505
  ]

if.end.i._rtl92ee_map_hwqueue_to_fwqueue.exit_crit_edge505: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92ee_map_hwqueue_to_fwqueue.exit

if.end.i._rtl92ee_map_hwqueue_to_fwqueue.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92ee_map_hwqueue_to_fwqueue.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %11 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %priority.i, align 4
  %phi.cast = shl i32 %12, 16
  %phi.bo504 = and i32 %phi.cast, 2031616
  br label %_rtl92ee_map_hwqueue_to_fwqueue.exit

_rtl92ee_map_hwqueue_to_fwqueue.exit:             ; preds = %if.end6.i, %if.end.i._rtl92ee_map_hwqueue_to_fwqueue.exit_crit_edge, %if.end.i._rtl92ee_map_hwqueue_to_fwqueue.exit_crit_edge505, %entry._rtl92ee_map_hwqueue_to_fwqueue.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo504, %if.end6.i ], [ 1048576, %entry._rtl92ee_map_hwqueue_to_fwqueue.exit_crit_edge ], [ 1179648, %if.end.i._rtl92ee_map_hwqueue_to_fwqueue.exit_crit_edge ], [ 1179648, %if.end.i._rtl92ee_map_hwqueue_to_fwqueue.exit_crit_edge505 ]
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 5
  %13 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %seq_ctrl, align 2
  %15 = and i16 %14, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp = icmp eq i16 %15, 0
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %16 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %opmode, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %17, label %_rtl92ee_map_hwqueue_to_fwqueue.exit.if.end28_crit_edge [
    i32 2, label %if.then
    i32 3, label %_rtl92ee_map_hwqueue_to_fwqueue.exit.if.then22_crit_edge
    i32 1, label %_rtl92ee_map_hwqueue_to_fwqueue.exit.if.then22_crit_edge506
  ]

_rtl92ee_map_hwqueue_to_fwqueue.exit.if.then22_crit_edge506: ; preds = %_rtl92ee_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

_rtl92ee_map_hwqueue_to_fwqueue.exit.if.then22_crit_edge: ; preds = %_rtl92ee_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

_rtl92ee_map_hwqueue_to_fwqueue.exit.if.end28_crit_edge: ; preds = %_rtl92ee_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then:                                          ; preds = %_rtl92ee_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #7
  %bw_4015 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %19 = ptrtoint ptr %bw_4015 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bw_4015, align 1
  br label %if.end28

if.then22:                                        ; preds = %_rtl92ee_map_hwqueue_to_fwqueue.exit.if.then22_crit_edge, %_rtl92ee_map_hwqueue_to_fwqueue.exit.if.then22_crit_edge506
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %if.then22.if.end28_crit_edge, label %if.then23

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then23:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %ht_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %21 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ht_cap, align 4
  %23 = trunc i16 %22 to i8
  %conv26 = and i8 %23, 2
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.then22.if.end28_crit_edge, %if.then, %_rtl92ee_map_hwqueue_to_fwqueue.exit.if.end28_crit_edge
  %bw_40.0 = phi i8 [ %20, %if.then ], [ %conv26, %if.then23 ], [ 0, %if.then22.if.end28_crit_edge ], [ 0, %_rtl92ee_map_hwqueue_to_fwqueue.exit.if.end28_crit_edge ]
  %24 = and i16 %14, -3841
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %26 = lshr exact i16 %25, 4
  tail call void @rtl_get_tcb_desc(ptr noundef %hw, ptr noundef %info, ptr noundef %sta, ptr noundef %skb, ptr noundef %ptcb_desc) #5
  %earlymode_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 58
  %27 = ptrtoint ptr %earlymode_enable to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %earlymode_enable, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool33.not = icmp eq i8 %28, 0
  br i1 %tobool33.not, label %if.end28.if.end36_crit_edge, label %if.then34

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %call35 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #5
  %29 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 0, ptr %30, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end28.if.end36_crit_edge
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %34 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %35) #5
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end36
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !44

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev37) #5
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44, i32 3
  %38 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev37, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %41, %if.end.i.i ], [ %39, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #5
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @debug_dma_map_single(ptr noundef %dev37, ptr noundef %35, i32 noundef %37) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %42 = load ptr, ptr @mem_map, align 4
  %43 = ptrtoint ptr %35 to i32
  %sub.i = add i32 %43, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %42, i32 %shr.i
  %and.i = and i32 %43, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev37, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %37, i32 noundef 1, i32 noundef 0) #5
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i352 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev41, i32 noundef %retval.0.i352) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i352)
  %cmp.i = icmp eq i32 %retval.0.i352, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end45

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end45:                                         ; preds = %dma_map_single_attrs.exit
  %cmp46.not = icmp eq ptr %pbd_desc_tx, null
  br i1 %cmp46.not, label %if.end45.if.end49_crit_edge, label %if.then48

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 8
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  %tx_ring.i = getelementptr inbounds %struct.rtl_priv, ptr %47, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  %idxprom.i = zext i8 %hw_queue to i32
  %cur_tx_wp.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring.i, i32 0, i32 %idxprom.i, i32 7
  %50 = ptrtoint ptr %cur_tx_wp.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %cur_tx_wp.i, align 4
  %earlymode_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %47, i32 0, i32 10, i32 58
  %52 = ptrtoint ptr %earlymode_enable.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %earlymode_enable.i, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %hw_queue)
  %cmp.i353 = icmp ult i8 %hw_queue, 4
  %dma.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring.i, i32 0, i32 %idxprom.i, i32 1
  %54 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma.i, align 4
  %56 = ptrtoint ptr %pbd_desc_tx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pbd_desc_tx, align 4
  %and.i.i115.i = and i32 %57, 12582912
  store i32 %and.i.i115.i, ptr %pbd_desc_tx, align 4
  %add.ptr.i.i = getelementptr i32, ptr %pbd_desc_tx, i32 4
  %58 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i120.i = and i32 %59, 65407
  store i32 %and.i.i120.i, ptr %add.ptr.i.i, align 4
  %add.ptr1.i.i = getelementptr i32, ptr %pbd_desc_tx, i32 5
  %60 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %add.ptr1.i.i, align 4
  %add.ptr1.i127.i = getelementptr i32, ptr %pbd_desc_tx, i32 6
  %61 = ptrtoint ptr %add.ptr1.i127.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %add.ptr1.i127.i, align 4
  %add.ptr.i.1.i = getelementptr i32, ptr %pbd_desc_tx, i32 8
  %62 = ptrtoint ptr %add.ptr.i.1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i.1.i, align 4
  %and.i.i120.1.i = and i32 %63, 65407
  store i32 %and.i.i120.1.i, ptr %add.ptr.i.1.i, align 4
  %add.ptr1.i.1.i = getelementptr i32, ptr %pbd_desc_tx, i32 9
  %64 = ptrtoint ptr %add.ptr1.i.1.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %add.ptr1.i.1.i, align 4
  %add.ptr1.i127.1.i = getelementptr i32, ptr %pbd_desc_tx, i32 10
  %65 = ptrtoint ptr %add.ptr1.i127.1.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %add.ptr1.i127.1.i, align 4
  %add.ptr.i.2.i = getelementptr i32, ptr %pbd_desc_tx, i32 12
  %66 = ptrtoint ptr %add.ptr.i.2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i.2.i, align 4
  %and.i.i120.2.i = and i32 %67, 65407
  store i32 %and.i.i120.2.i, ptr %add.ptr.i.2.i, align 4
  %add.ptr1.i.2.i = getelementptr i32, ptr %pbd_desc_tx, i32 13
  %68 = ptrtoint ptr %add.ptr1.i.2.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %add.ptr1.i.2.i, align 4
  %add.ptr1.i127.2.i = getelementptr i32, ptr %pbd_desc_tx, i32 14
  %69 = ptrtoint ptr %add.ptr1.i127.2.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %add.ptr1.i127.2.i, align 4
  %70 = call ptr @memset(ptr %pdesc8, i32 0, i32 40)
  %71 = ptrtoint ptr %earlymode_enable.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %earlymode_enable.i, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool42.not.i = icmp eq i8 %72, 0
  %73 = ptrtoint ptr %pbd_desc_tx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pbd_desc_tx, align 4
  %and.i.i131.i = and i32 %74, 12648447
  %..i354 = select i1 %cmp.i353, i32 805306368, i32 671088640
  %.sink.i = select i1 %tobool42.not.i, i32 671088640, i32 %..i354
  %or.i.i.i = or i32 %and.i.i131.i, %.sink.i
  store i32 %or.i.i.i, ptr %pbd_desc_tx, align 4
  %conv32.i = zext i16 %51 to i32
  %mul33.i = shl nuw nsw i32 %conv32.i, 6
  %add34.i = add i32 %55, %mul33.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool4.not.i = icmp ne i8 %53, 0
  %or.cond.i = and i1 %cmp.i353, %tobool4.not.i
  %append_early_mode_size.0.i = select i1 %or.cond.i, i32 8, i32 0
  %add.i = add i32 %49, 40
  %add18.i = add i32 %append_early_mode_size.0.i, %add.i
  %div113.i = lshr i32 %add18.i, 8
  %mul22.i = and i32 %add18.i, -256
  %add9.i = add i32 %49, 48
  %total_packet_size.0.i = select i1 %or.cond.i, i32 %add9.i, i32 %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul22.i, i32 %total_packet_size.0.i)
  %cmp23.i = icmp ult i32 %mul22.i, %total_packet_size.0.i
  %add26.i = zext i1 %cmp23.i to i32
  %psblen.0.i = add nuw nsw i32 %div113.i, %add26.i
  %and.i.i133.i = and i32 %or.i.i.i, 952107136
  %75 = shl i32 %psblen.0.i, 16
  %76 = and i32 %75, 2147418112
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #5
  %or.i.i134.i = or i32 %and.i.i133.i, %77
  %78 = ptrtoint ptr %pbd_desc_tx to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or.i.i134.i, ptr %pbd_desc_tx, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %add34.i) #5
  %add.ptr.i135.i = getelementptr i32, ptr %pbd_desc_tx, i32 1
  %80 = ptrtoint ptr %add.ptr.i135.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %add.ptr.i135.i, align 4
  %81 = getelementptr i32, ptr %pbd_desc_tx, i32 2
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %81, align 4
  %83 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i139.i = and i32 %84, 65407
  %85 = and i32 %49, 65535
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #5
  %or.i.i140.i = or i32 %and.i.i139.i, %86
  %87 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or.i.i140.i, ptr %add.ptr.i.i, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i352) #5
  %89 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %add.ptr1.i.i, align 4
  %90 = ptrtoint ptr %add.ptr1.i127.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %add.ptr1.i127.i, align 4
  %91 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pdesc8, align 4
  %and.i.i147.i = and i32 %92, 65535
  %or.i.i148.i = or i32 %and.i.i147.i, %86
  store i32 %or.i.i148.i, ptr %pdesc8, align 4
  %add.ptr.i149.i = getelementptr i32, ptr %pdesc8, i32 7
  %93 = ptrtoint ptr %add.ptr.i149.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr.i149.i, align 4
  %and.i.i150.i = and i32 %94, 65535
  %or.i.i151.i = or i32 %and.i.i150.i, %86
  store i32 %or.i.i151.i, ptr %add.ptr.i149.i, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end45.if.end49_crit_edge
  %95 = and i16 %3, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 18432, i16 %95)
  %cmp.i355 = icmp eq i16 %95, 18432
  br i1 %cmp.i355, label %if.end49.if.then58_crit_edge, label %lor.lhs.false52

if.end49.if.then58_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then58

lor.lhs.false52:                                  ; preds = %if.end49
  %96 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %96)
  %cmp.i356 = icmp eq i16 %96, 1024
  %97 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %extract.t = icmp eq i16 %97, 0
  %brmerge = select i1 %cmp.i356, i1 true, i1 %cmp
  %.mux = or i1 %cmp.i356, %extract.t
  br i1 %brmerge, label %lor.lhs.false52.if.then58_crit_edge, label %lor.lhs.false52.if.end188_crit_edge

lor.lhs.false52.if.end188_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end188

lor.lhs.false52.if.then58_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then58

if.then58:                                        ; preds = %lor.lhs.false52.if.then58_crit_edge, %if.end49.if.then58_crit_edge
  %lastseg.0.off0501 = phi i1 [ true, %if.end49.if.then58_crit_edge ], [ %.mux, %lor.lhs.false52.if.then58_crit_edge ]
  %98 = ptrtoint ptr %earlymode_enable to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %earlymode_enable, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool60.not = icmp eq i8 %99, 0
  br i1 %tobool60.not, label %if.else68, label %if.then61

if.then61:                                        ; preds = %if.then58
  %add.ptr.i357 = getelementptr i32, ptr %pdesc8, i32 1
  %100 = ptrtoint ptr %add.ptr.i357 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr.i357, align 4
  %and.i.i = and i32 %101, -32
  %or.i.i = or i32 %and.i.i, 1
  store i32 %or.i.i, ptr %add.ptr.i357, align 4
  %102 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pdesc8, align 4
  %and.i.i358 = and i32 %103, -65281
  %or.i.i359 = or i32 %and.i.i358, 12288
  store i32 %or.i.i359, ptr %pdesc8, align 4
  %empkt_num = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 8
  %104 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool62.not = icmp eq i8 %105, 0
  br i1 %tobool62.not, label %if.then61.if.end69_crit_edge, label %if.then63

if.then61.if.end69_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then63:                                        ; preds = %if.then61
  %conv65 = zext i8 %105 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.3, i32 noundef %conv65) #5
  %106 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i.i.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_storeN_noabort(i32 %108, i32 8)
  store i64 0, ptr %107, align 4
  %109 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %empkt_num, align 1
  %conv.i360 = zext i8 %110 to i32
  %111 = shl nuw i32 %conv.i360, 24
  %112 = and i32 %111, 251658240
  store i32 %112, ptr %107, align 4
  %113 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %113)
  %cmp.i363 = icmp eq i8 %113, 1
  %empkt_len.i = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9
  %114 = ptrtoint ptr %empkt_len.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %empkt_len.i, align 4
  br i1 %cmp.i363, label %if.then63.set_earlymode_len0.exit.i_crit_edge, label %if.else.i

if.then63.set_earlymode_len0.exit.i_crit_edge:    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_earlymode_len0.exit.i

if.else.i:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  %rem.i = and i32 %115, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %phi.bo.i = sub nuw nsw i32 8, %rem.i
  %spec.select.i = select i1 %tobool.not.i, i32 4, i32 %phi.bo.i
  %arrayidx9.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 1
  %116 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx9.i, align 4
  %add7.i = add i32 %spec.select.i, %115
  %add10.i = add i32 %add7.i, %117
  br label %set_earlymode_len0.exit.i

set_earlymode_len0.exit.i:                        ; preds = %if.else.i, %if.then63.set_earlymode_len0.exit.i_crit_edge
  %dwtmp.0.i = phi i32 [ %add10.i, %if.else.i ], [ %115, %if.then63.set_earlymode_len0.exit.i_crit_edge ]
  %118 = shl i32 %dwtmp.0.i, 4
  %119 = and i32 %118, 524272
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #5
  %or.i.i170.i = or i32 %120, %112
  %121 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %or.i.i170.i, ptr %107, align 4
  %122 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %123)
  %cmp13.i = icmp ult i8 %123, 4
  %arrayidx17.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 2
  %124 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx17.i, align 4
  br i1 %cmp13.i, label %set_earlymode_len0.exit.i.set_earlymode_len1.exit.i_crit_edge, label %if.else18.i

set_earlymode_len0.exit.i.set_earlymode_len1.exit.i_crit_edge: ; preds = %set_earlymode_len0.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_earlymode_len1.exit.i

if.else18.i:                                      ; preds = %set_earlymode_len0.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %rem21.i = and i32 %125, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem21.i)
  %tobool22.not.i = icmp eq i32 %rem21.i, 0
  %phi.bo159.i = sub nuw nsw i32 8, %rem21.i
  %spec.select163.i = select i1 %tobool22.not.i, i32 4, i32 %phi.bo159.i
  %arrayidx32.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 3
  %126 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx32.i, align 4
  %add30.i = add i32 %spec.select163.i, %125
  %add33.i = add i32 %add30.i, %127
  br label %set_earlymode_len1.exit.i

set_earlymode_len1.exit.i:                        ; preds = %if.else18.i, %set_earlymode_len0.exit.i.set_earlymode_len1.exit.i_crit_edge
  %dwtmp.1.i = phi i32 [ %add33.i, %if.else18.i ], [ %125, %set_earlymode_len0.exit.i.set_earlymode_len1.exit.i_crit_edge ]
  %and.i.i173.i = and i32 %or.i.i170.i, -64512
  %128 = shl i32 %dwtmp.1.i, 8
  %129 = and i32 %128, 768
  %or.i.i174.i = or i32 %129, %and.i.i173.i
  %130 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or.i.i174.i, ptr %107, align 4
  %131 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %132)
  %cmp37.i = icmp ult i8 %132, 6
  %arrayidx41.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 4
  %133 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx41.i, align 4
  br i1 %cmp37.i, label %set_earlymode_len1.exit.i.if.end58.i_crit_edge, label %if.else42.i

set_earlymode_len1.exit.i.if.end58.i_crit_edge:   ; preds = %set_earlymode_len1.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i

if.else42.i:                                      ; preds = %set_earlymode_len1.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %rem45.i = and i32 %134, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem45.i)
  %tobool46.not.i = icmp eq i32 %rem45.i, 0
  %phi.bo160.i = sub nuw nsw i32 8, %rem45.i
  %spec.select164.i = select i1 %tobool46.not.i, i32 4, i32 %phi.bo160.i
  %arrayidx56.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 5
  %135 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx56.i, align 4
  %add54.i = add i32 %spec.select164.i, %134
  %add57.i = add i32 %add54.i, %136
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.else42.i, %set_earlymode_len1.exit.i.if.end58.i_crit_edge
  %dwtmp.2.i = phi i32 [ %add57.i, %if.else42.i ], [ %134, %set_earlymode_len1.exit.i.if.end58.i_crit_edge ]
  %and.i.i175.i = and i32 %or.i.i174.i, -1006696704
  %and.i365 = shl i32 %dwtmp.2.i, 26
  %137 = and i32 %and.i365, 1006632960
  %or.i.i176.i = or i32 %137, %and.i.i175.i
  %138 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %or.i.i176.i, ptr %107, align 4
  %add.ptr.i.i367 = getelementptr i32, ptr %107, i32 1
  %139 = ptrtoint ptr %add.ptr.i.i367 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %add.ptr.i.i367, align 4
  %and.i.i179.i = and i32 %140, 16777215
  %141 = shl i32 %dwtmp.2.i, 20
  %142 = and i32 %141, -16777216
  %or.i.i180.i = or i32 %and.i.i179.i, %142
  store i32 %or.i.i180.i, ptr %add.ptr.i.i367, align 4
  %143 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %144)
  %cmp61.i = icmp ult i8 %144, 8
  %arrayidx65.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 6
  %145 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx65.i, align 4
  br i1 %cmp61.i, label %if.end58.i.set_earlymode_len3.exit.i_crit_edge, label %if.else66.i

if.end58.i.set_earlymode_len3.exit.i_crit_edge:   ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_earlymode_len3.exit.i

if.else66.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  %rem69.i = and i32 %146, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem69.i)
  %tobool70.not.i = icmp eq i32 %rem69.i, 0
  %phi.bo161.i = sub nuw nsw i32 8, %rem69.i
  %spec.select165.i = select i1 %tobool70.not.i, i32 4, i32 %phi.bo161.i
  %arrayidx80.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 7
  %147 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx80.i, align 4
  %add78.i = add i32 %spec.select165.i, %146
  %add81.i = add i32 %add78.i, %148
  br label %set_earlymode_len3.exit.i

set_earlymode_len3.exit.i:                        ; preds = %if.else66.i, %if.end58.i.set_earlymode_len3.exit.i_crit_edge
  %dwtmp.3.i = phi i32 [ %add81.i, %if.else66.i ], [ %146, %if.end58.i.set_earlymode_len3.exit.i_crit_edge ]
  %and.i.i184.i = and i32 %or.i.i180.i, -65280
  %149 = shl i32 %dwtmp.3.i, 17
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #5
  %or.i.i185.i = or i32 %150, %and.i.i184.i
  %151 = ptrtoint ptr %add.ptr.i.i367 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %or.i.i185.i, ptr %add.ptr.i.i367, align 4
  %152 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %153)
  %cmp85.i = icmp ult i8 %153, 10
  %arrayidx89.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 8
  %154 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx89.i, align 4
  br i1 %cmp85.i, label %set_earlymode_len3.exit.i._rtl92ee_insert_emcontent.exit_crit_edge, label %if.else90.i

set_earlymode_len3.exit.i._rtl92ee_insert_emcontent.exit_crit_edge: ; preds = %set_earlymode_len3.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92ee_insert_emcontent.exit

if.else90.i:                                      ; preds = %set_earlymode_len3.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %rem93.i = and i32 %155, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem93.i)
  %tobool94.not.i = icmp eq i32 %rem93.i, 0
  %phi.bo162.i = sub nuw nsw i32 8, %rem93.i
  %spec.select166.i = select i1 %tobool94.not.i, i32 4, i32 %phi.bo162.i
  %arrayidx104.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 9
  %156 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx104.i, align 4
  %add102.i = add i32 %spec.select166.i, %155
  %add105.i = add i32 %add102.i, %157
  br label %_rtl92ee_insert_emcontent.exit

_rtl92ee_insert_emcontent.exit:                   ; preds = %if.else90.i, %set_earlymode_len3.exit.i._rtl92ee_insert_emcontent.exit_crit_edge
  %dwtmp.4.i = phi i32 [ %add105.i, %if.else90.i ], [ %155, %set_earlymode_len3.exit.i._rtl92ee_insert_emcontent.exit_crit_edge ]
  %and.i.i189.i = and i32 %or.i.i185.i, -61696
  %158 = shl i32 %dwtmp.4.i, 20
  %159 = tail call i32 @llvm.bswap.i32(i32 %158) #5
  %or.i.i190.i = or i32 %159, %and.i.i189.i
  %160 = ptrtoint ptr %add.ptr.i.i367 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %or.i.i190.i, ptr %add.ptr.i.i367, align 4
  br label %if.end69

if.else68:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  %161 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %pdesc8, align 4
  %and.i.i368 = and i32 %162, -65281
  %or.i.i369 = or i32 %and.i.i368, 10240
  store i32 %or.i.i369, ptr %pdesc8, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %_rtl92ee_insert_emcontent.exit, %if.then61.if.end69_crit_edge
  %add.ptr.i370 = getelementptr i32, ptr %pdesc8, i32 4
  %163 = ptrtoint ptr %add.ptr.i370 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %add.ptr.i370, align 4
  %hw_rate = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 5
  %165 = ptrtoint ptr %hw_rate to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %hw_rate, align 2
  %conv70 = zext i8 %166 to i32
  %and.i.i371 = and i32 %164, -2130706433
  %167 = shl nuw i32 %conv70, 24
  %168 = and i32 %167, 2130706432
  %or.i.i372 = or i32 %168, %and.i.i371
  store i32 %or.i.i372, ptr %add.ptr.i370, align 4
  %169 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %169)
  %cmp.i373 = icmp eq i16 %169, 0
  br i1 %cmp.i373, label %if.then72, label %if.else73

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %use_driver_rate = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 2
  %170 = ptrtoint ptr %use_driver_rate to i32
  call void @__asan_load1_noabort(i32 %170)
  %bf.load = load i8, ptr %use_driver_rate, align 1
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %use_driver_rate, align 1
  br label %if.end86

if.else73:                                        ; preds = %if.end69
  %is_special_data = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 22, i32 25
  %171 = ptrtoint ptr %is_special_data to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %is_special_data, align 8, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool74.not = icmp eq i8 %172, 0
  %use_driver_rate81 = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 2
  %173 = ptrtoint ptr %use_driver_rate81 to i32
  call void @__asan_load1_noabort(i32 %173)
  %bf.load82 = load i8, ptr %use_driver_rate81, align 1
  br i1 %tobool74.not, label %if.else80, label %if.then75

if.then75:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #7
  %bf.set79 = or i8 %bf.load82, 32
  %174 = ptrtoint ptr %use_driver_rate81 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %bf.set79, ptr %use_driver_rate81, align 1
  %175 = ptrtoint ptr %add.ptr.i370 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %add.ptr.i370, align 4
  %and.i.i375 = and i32 %176, -2130706433
  %or.i.i376 = or i32 %and.i.i375, 50331648
  store i32 %or.i.i376, ptr %add.ptr.i370, align 4
  br label %if.end86

if.else80:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear83 = and i8 %bf.load82, -33
  %177 = ptrtoint ptr %use_driver_rate81 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %bf.clear83, ptr %use_driver_rate81, align 1
  br label %if.end86

if.end86:                                         ; preds = %if.else80, %if.then75, %if.then72
  %178 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %info, align 8
  %and87 = and i32 %179, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end86.if.end90_crit_edge, label %if.then89

if.end86.if.end90_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i377 = getelementptr i32, ptr %pdesc8, i32 2
  %180 = ptrtoint ptr %add.ptr.i377 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %add.ptr.i377, align 4
  %or.i.i378 = or i32 %181, 1048576
  store i32 %or.i.i378, ptr %add.ptr.i377, align 4
  %add.ptr.i379 = getelementptr i32, ptr %pdesc8, i32 3
  %182 = ptrtoint ptr %add.ptr.i379 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %add.ptr.i379, align 4
  %and.i.i380 = and i32 %183, -15873
  %or.i.i381 = or i32 %and.i.i380, 10240
  store i32 %or.i.i381, ptr %add.ptr.i379, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end86.if.end90_crit_edge
  %conv91 = zext i16 %26 to i32
  %add.ptr.i382 = getelementptr i32, ptr %pdesc8, i32 9
  %184 = ptrtoint ptr %add.ptr.i382 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %add.ptr.i382, align 4
  %and.i.i383 = and i32 %185, -15793921
  %186 = shl nuw nsw i32 %conv91, 12
  %187 = tail call i32 @llvm.bswap.i32(i32 %186) #5
  %or.i.i384 = or i32 %and.i.i383, %187
  %188 = ptrtoint ptr %add.ptr.i382 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %or.i.i384, ptr %add.ptr.i382, align 4
  %189 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %189)
  %bf.load92 = load i16, ptr %ptcb_desc, align 4
  %190 = and i16 %bf.load92, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %190)
  %tobool95.not = icmp eq i16 %190, 0
  %191 = lshr i16 %bf.load92, 9
  %.lobit351 = and i16 %191, 1
  %192 = xor i16 %.lobit351, 1
  %narrow = select i1 %tobool95.not, i16 0, i16 %192
  %193 = zext i16 %narrow to i32
  %add.ptr.i385 = getelementptr i32, ptr %pdesc8, i32 3
  %194 = ptrtoint ptr %add.ptr.i385 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %add.ptr.i385, align 4
  %and.i.i388 = and i32 %195, -3145729
  %196 = shl nuw nsw i32 %193, 20
  %and.i.i391 = or i32 %196, %and.i.i388
  store i32 %and.i.i391, ptr %add.ptr.i385, align 4
  %197 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %197)
  %bf.load101 = load i16, ptr %ptcb_desc, align 4
  %198 = lshr i16 %bf.load101, 9
  %199 = zext i16 %198 to i32
  %and.i.i393 = and i32 %and.i.i391, -524289
  %200 = shl nuw nsw i32 %199, 19
  %201 = and i32 %200, 524288
  %or.i.i394 = or i32 %and.i.i393, %201
  store i32 %or.i.i394, ptr %add.ptr.i385, align 4
  %202 = ptrtoint ptr %add.ptr.i370 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %add.ptr.i370, align 4
  %rts_rate = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 1
  %204 = ptrtoint ptr %rts_rate to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %rts_rate, align 2
  %and.i.i398 = and i32 %203, -32
  %206 = and i8 %205, 31
  %207 = zext i8 %206 to i32
  %or.i.i399 = or i32 %and.i.i398, %207
  store i32 %or.i.i399, ptr %add.ptr.i370, align 4
  %bf.load109 = load i16, ptr %ptcb_desc, align 4
  %add.ptr.i400 = getelementptr i32, ptr %pdesc8, i32 5
  %208 = ptrtoint ptr %add.ptr.i400 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %add.ptr.i400, align 4
  %and.i.i401 = and i32 %209, -14680321
  %210 = shl i16 %bf.load109, 7
  %211 = and i16 %210, 8192
  %212 = zext i16 %211 to i32
  %213 = shl nuw nsw i32 %212, 8
  %or.i.i402 = or i32 %213, %and.i.i401
  store i32 %or.i.i402, ptr %add.ptr.i400, align 4
  %214 = load i8, ptr %rts_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %214)
  %cmp116 = icmp ult i8 %214, 12
  %215 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %215)
  %bf.load118 = load i16, ptr %ptcb_desc, align 4
  %. = select i1 %cmp116, i16 8, i16 7
  %216 = lshr i16 %bf.load118, %.
  %cond132 = zext i16 %216 to i32
  %and.i.i404 = and i32 %or.i.i402, -13631745
  %217 = shl nuw nsw i32 %cond132, 20
  %218 = and i32 %217, 1048576
  %or.i.i405 = or i32 %218, %and.i.i404
  %219 = ptrtoint ptr %add.ptr.i400 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %or.i.i405, ptr %add.ptr.i400, align 4
  %tx_enable_sw_calc_duration = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 10
  %220 = ptrtoint ptr %tx_enable_sw_calc_duration to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %tx_enable_sw_calc_duration, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool133.not = icmp eq i8 %221, 0
  br i1 %tobool133.not, label %if.end90.if.end135_crit_edge, label %if.then134

if.end90.if.end135_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135

if.then134:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  %222 = ptrtoint ptr %add.ptr.i385 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %add.ptr.i385, align 4
  %or.i.i407 = or i32 %223, 8388608
  store i32 %or.i.i407, ptr %add.ptr.i385, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %if.end90.if.end135_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40.0)
  %tobool136.not = icmp eq i8 %bw_40.0, 0
  br i1 %tobool136.not, label %if.else148, label %if.then137

if.then137:                                       ; preds = %if.end135
  %224 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %224)
  %bf.load138 = load i16, ptr %ptcb_desc, align 4
  %bf.lshr139.mask = and i16 %bf.load138, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr139.mask)
  %cmp142 = icmp eq i16 %bf.lshr139.mask, 16384
  %and.i.i409 = and i32 %or.i.i399, -1610612737
  br i1 %cmp142, label %if.then144, label %if.else145

if.then144:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #7
  %or.i.i410 = or i32 %and.i.i409, 536870912
  %225 = ptrtoint ptr %add.ptr.i370 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %or.i.i410, ptr %add.ptr.i370, align 4
  %and.i.i412 = and i32 %or.i.i405, -264241409
  %or.i.i413 = or i32 %and.i.i412, 50331648
  br label %if.end149

if.else145:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #7
  %226 = ptrtoint ptr %add.ptr.i370 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %and.i.i409, ptr %add.ptr.i370, align 4
  %cur_40_prime_sc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 46
  %227 = ptrtoint ptr %cur_40_prime_sc to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %cur_40_prime_sc, align 1
  %conv146 = zext i8 %228 to i32
  %and.i.i419 = and i32 %or.i.i405, -264241409
  %229 = shl nuw i32 %conv146, 24
  %230 = and i32 %229, 251658240
  %or.i.i420 = or i32 %230, %and.i.i419
  br label %if.end149

if.else148:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i422 = and i32 %or.i.i399, -1610612737
  %231 = ptrtoint ptr %add.ptr.i370 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %and.i.i422, ptr %add.ptr.i370, align 4
  %and.i.i424 = and i32 %or.i.i405, -264241409
  br label %if.end149

if.end149:                                        ; preds = %if.else148, %if.else145, %if.then144
  %or.i.i413.sink = phi i32 [ %or.i.i413, %if.then144 ], [ %or.i.i420, %if.else145 ], [ %and.i.i424, %if.else148 ]
  %232 = ptrtoint ptr %add.ptr.i400 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %or.i.i413.sink, ptr %add.ptr.i400, align 4
  %233 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %pdesc8, align 4
  %and.i.i425 = and i32 %234, -17
  store i32 %and.i.i425, ptr %pdesc8, align 4
  %tobool150.not = icmp eq ptr %sta, null
  br i1 %tobool150.not, label %if.end149.if.end155_crit_edge, label %set_tx_desc_ampdu_density.exit

if.end149.if.end155_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end155

set_tx_desc_ampdu_density.exit:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i426 = getelementptr i32, ptr %pdesc8, i32 2
  %235 = ptrtoint ptr %add.ptr.i426 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %add.ptr.i426, align 4
  %ampdu_density153 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 3
  %237 = ptrtoint ptr %ampdu_density153 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %ampdu_density153, align 4
  %conv154 = zext i8 %238 to i32
  %and.i.i429 = and i32 %236, -28673
  %239 = shl nuw nsw i32 %conv154, 12
  %240 = and i32 %239, 28672
  %or.i.i430 = or i32 %240, %and.i.i429
  store i32 %or.i.i430, ptr %add.ptr.i426, align 4
  br label %if.end155

if.end155:                                        ; preds = %set_tx_desc_ampdu_density.exit, %if.end149.if.end155_crit_edge
  %hw_key = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 12
  %241 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %hw_key, align 4
  %tobool156.not = icmp eq ptr %242, null
  br i1 %tobool156.not, label %if.end155.set_tx_desc_queue_sel.exit_crit_edge, label %if.then157

if.end155.set_tx_desc_queue_sel.exit_crit_edge:   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_tx_desc_queue_sel.exit

if.then157:                                       ; preds = %if.end155
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %cipher, align 8
  %245 = zext i32 %244 to i64
  call void @__sanitizer_cov_trace_switch(i64 %245, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %244, label %sw.default [
    i32 1027073, label %if.then157.sw.bb_crit_edge
    i32 1027077, label %if.then157.sw.bb_crit_edge507
    i32 1027074, label %if.then157.sw.bb_crit_edge508
    i32 1027076, label %sw.bb159
  ]

if.then157.sw.bb_crit_edge508:                    ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.then157.sw.bb_crit_edge507:                    ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.then157.sw.bb_crit_edge:                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.then157.sw.bb_crit_edge, %if.then157.sw.bb_crit_edge507, %if.then157.sw.bb_crit_edge508
  %add.ptr.i431 = getelementptr i32, ptr %pdesc8, i32 1
  %246 = ptrtoint ptr %add.ptr.i431 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %add.ptr.i431, align 4
  %and.i.i432 = and i32 %247, -49153
  %or.i.i433 = or i32 %and.i.i432, 16384
  store i32 %or.i.i433, ptr %add.ptr.i431, align 4
  br label %set_tx_desc_queue_sel.exit

sw.bb159:                                         ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i434 = getelementptr i32, ptr %pdesc8, i32 1
  %248 = ptrtoint ptr %add.ptr.i434 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %add.ptr.i434, align 4
  %or.i.i436 = or i32 %249, 49152
  store i32 %or.i.i436, ptr %add.ptr.i434, align 4
  br label %set_tx_desc_queue_sel.exit

sw.default:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i437 = getelementptr i32, ptr %pdesc8, i32 1
  %250 = ptrtoint ptr %add.ptr.i437 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %add.ptr.i437, align 4
  %and.i.i438 = and i32 %251, -49153
  store i32 %and.i.i438, ptr %add.ptr.i437, align 4
  br label %set_tx_desc_queue_sel.exit

set_tx_desc_queue_sel.exit:                       ; preds = %sw.default, %sw.bb159, %sw.bb, %if.end155.set_tx_desc_queue_sel.exit_crit_edge
  %add.ptr.i439 = getelementptr i32, ptr %pdesc8, i32 1
  %252 = ptrtoint ptr %add.ptr.i439 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %add.ptr.i439, align 4
  %and.i.i442 = and i32 %253, -2031617
  %or.i.i443 = or i32 %and.i.i442, %retval.0.i
  store i32 %or.i.i443, ptr %add.ptr.i439, align 4
  %254 = ptrtoint ptr %add.ptr.i370 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %add.ptr.i370, align 4
  %or.i.i447 = or i32 %255, 16711936
  store i32 %or.i.i447, ptr %add.ptr.i370, align 4
  %disable_ratefallback = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 2
  %256 = ptrtoint ptr %disable_ratefallback to i32
  call void @__asan_load1_noabort(i32 %256)
  %bf.load162 = load i8, ptr %disable_ratefallback, align 1
  %257 = lshr i8 %bf.load162, 4
  %258 = zext i8 %257 to i32
  %259 = ptrtoint ptr %add.ptr.i385 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %add.ptr.i385, align 4
  %and.i.i449 = and i32 %260, -262145
  %261 = shl nuw nsw i32 %258, 18
  %262 = and i32 %261, 262144
  %or.i.i450 = or i32 %262, %and.i.i449
  store i32 %or.i.i450, ptr %add.ptr.i385, align 4
  %bf.load169 = load i8, ptr %disable_ratefallback, align 1
  %263 = lshr i8 %bf.load169, 5
  %264 = zext i8 %263 to i32
  %and.i.i452 = and i32 %or.i.i450, -65537
  %265 = shl nuw nsw i32 %264, 16
  %266 = and i32 %265, 65536
  %or.i.i453 = or i32 %266, %and.i.i452
  store i32 %or.i.i453, ptr %add.ptr.i385, align 4
  %267 = and i16 %3, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %267)
  %cmp.i454 = icmp eq i16 %267, -30720
  br i1 %cmp.i454, label %if.then183, label %set_tx_desc_queue_sel.exit.if.end187_crit_edge

set_tx_desc_queue_sel.exit.if.end187_crit_edge:   ; preds = %set_tx_desc_queue_sel.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end187

if.then183:                                       ; preds = %set_tx_desc_queue_sel.exit
  %rdg_en = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 32
  %268 = ptrtoint ptr %rdg_en to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %rdg_en, align 8, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %tobool184.not = icmp eq i8 %269, 0
  br i1 %tobool184.not, label %if.then183.if.end187_crit_edge, label %if.then185

if.then183.if.end187_crit_edge:                   ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end187

if.then185:                                       ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.4) #5
  %add.ptr.i455 = getelementptr i32, ptr %pdesc8, i32 2
  %270 = ptrtoint ptr %add.ptr.i455 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %add.ptr.i455, align 4
  %or.i.i456 = or i32 %271, 2097152
  store i32 %or.i.i456, ptr %add.ptr.i455, align 4
  %272 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %pdesc8, align 4
  %or.i.i457 = or i32 %273, 2
  store i32 %or.i.i457, ptr %pdesc8, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.then185, %if.then183.if.end187_crit_edge, %set_tx_desc_queue_sel.exit.if.end187_crit_edge
  tail call void @rtl_set_tx_report(ptr noundef %ptcb_desc, ptr noundef %pdesc8, ptr noundef %hw, ptr noundef %status_driver_data.i) #5
  br label %if.end188

if.end188:                                        ; preds = %if.end187, %lor.lhs.false52.if.end188_crit_edge
  %lastseg.0.off0500 = phi i1 [ %lastseg.0.off0501, %if.end187 ], [ %extract.t, %lor.lhs.false52.if.end188_crit_edge ]
  %firstseg.0.off0498 = phi i32 [ 8, %if.end187 ], [ 0, %lor.lhs.false52.if.end188_crit_edge ]
  %274 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %pdesc8, align 4
  %and.i.i458 = and i32 %275, -13
  %276 = select i1 %lastseg.0.off0500, i32 4, i32 0
  %or.i.i459 = or i32 %276, %firstseg.0.off0498
  %or.i.i461 = or i32 %or.i.i459, %and.i.i458
  store i32 %or.i.i461, ptr %pdesc8, align 4
  %277 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i352) #5
  %add.ptr.i462 = getelementptr i32, ptr %pdesc8, i32 10
  %278 = ptrtoint ptr %add.ptr.i462 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %277, ptr %add.ptr.i462, align 4
  %useramask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 14
  %279 = ptrtoint ptr %useramask to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %useramask, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %280)
  %tobool195.not = icmp eq i8 %280, 0
  %ratr_index200 = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 3
  %281 = ptrtoint ptr %ratr_index200 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %ratr_index200, align 4
  %conv201 = zext i8 %282 to i32
  %add.ptr.i473 = getelementptr i32, ptr %pdesc8, i32 1
  %283 = ptrtoint ptr %add.ptr.i473 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %add.ptr.i473, align 4
  %and.i.i476 = and i32 %284, -7937
  %add = shl nuw nsw i32 %conv201, 8
  br i1 %tobool195.not, label %set_tx_desc_rate_id.exit478, label %set_tx_desc_rate_id.exit

set_tx_desc_rate_id.exit:                         ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #7
  %285 = and i32 %add, 7936
  %or.i.i467 = or i32 %285, %and.i.i476
  %286 = ptrtoint ptr %add.ptr.i473 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %or.i.i467, ptr %add.ptr.i473, align 4
  %mac_id = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 4
  br label %if.end204

set_tx_desc_rate_id.exit478:                      ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #7
  %287 = add nuw nsw i32 %add, 3072
  %288 = and i32 %287, 7936
  %or.i.i477 = or i32 %288, %and.i.i476
  %289 = ptrtoint ptr %add.ptr.i473 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %or.i.i477, ptr %add.ptr.i473, align 4
  br label %if.end204

if.end204:                                        ; preds = %set_tx_desc_rate_id.exit478, %set_tx_desc_rate_id.exit
  %or.i.i477.sink = phi i32 [ %or.i.i467, %set_tx_desc_rate_id.exit ], [ %or.i.i477, %set_tx_desc_rate_id.exit478 ]
  %conv203.sink.in.in = phi ptr [ %mac_id, %set_tx_desc_rate_id.exit ], [ %ratr_index200, %set_tx_desc_rate_id.exit478 ]
  %290 = ptrtoint ptr %conv203.sink.in.in to i32
  call void @__asan_load1_noabort(i32 %290)
  %conv203.sink.in = load i8, ptr %conv203.sink.in.in, align 1
  %conv203.sink = zext i8 %conv203.sink.in to i32
  %and.i.i482 = and i32 %or.i.i477.sink, -2130706433
  %291 = shl nuw i32 %conv203.sink, 24
  %292 = and i32 %291, 2130706432
  %or.i.i483 = or i32 %292, %and.i.i482
  %293 = ptrtoint ptr %add.ptr.i473 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %or.i.i483, ptr %add.ptr.i473, align 4
  %add.ptr.i485 = getelementptr i32, ptr %pdesc8, i32 2
  %294 = ptrtoint ptr %add.ptr.i485 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %add.ptr.i485, align 4
  %and.i.i486 = and i32 %295, -513
  %296 = select i1 %lastseg.0.off0500, i32 0, i32 512
  %or.i.i487 = or i32 %and.i.i486, %296
  store i32 %or.i.i487, ptr %add.ptr.i485, align 4
  %297 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %hdr, align 2
  %299 = and i16 %298, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %299)
  %cmp.i.not.i = icmp eq i16 %299, 0
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 4
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %retval.0.i488 = select i1 %cmp.i.not.i, ptr %addr1.i, ptr %addr3.i
  %300 = ptrtoint ptr %retval.0.i488 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %retval.0.i488, align 4
  %302 = and i32 %301, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %tobool.i.not = icmp eq i32 %302, 0
  br i1 %tobool.i.not, label %lor.lhs.false211, label %if.end204.if.then215_crit_edge

if.end204.if.then215_crit_edge:                   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then215

lor.lhs.false211:                                 ; preds = %if.end204
  %303 = ptrtoint ptr %retval.0.i488 to i32
  call void @__asan_load2_noabort(i32 %303)
  %304 = load i16, ptr %retval.0.i488, align 2
  %add.ptr1.i = getelementptr i8, ptr %retval.0.i488, i32 2
  %305 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %305)
  %306 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %306, %304
  %add.ptr3.i = getelementptr i8, ptr %retval.0.i488, i32 4
  %307 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %307)
  %308 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %308
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i493 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i493, label %lor.lhs.false211.if.then215_crit_edge, label %lor.lhs.false211.cleanup_crit_edge

lor.lhs.false211.cleanup_crit_edge:               ; preds = %lor.lhs.false211
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false211.if.then215_crit_edge:            ; preds = %lor.lhs.false211
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then215

if.then215:                                       ; preds = %lor.lhs.false211.if.then215_crit_edge, %if.end204.if.then215_crit_edge
  %309 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %pdesc8, align 4
  %or.i.i494 = or i32 %310, 1
  store i32 %or.i.i494, ptr %pdesc8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then215, %lor.lhs.false211.cleanup_crit_edge, %dma_map_single_attrs.exit.cleanup_crit_edge
  %.str.5.sink = phi ptr [ @.str.2, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ @.str.5, %if.then215 ], [ @.str.5, %lor.lhs.false211.cleanup_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull %.str.5.sink) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_get_tcb_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_set_tx_report(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_tx_fill_cmddesc(ptr nocapture noundef readonly %hw, ptr noundef %pdesc8, i1 noundef zeroext %firstseg, i1 noundef zeroext %lastseg, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %5) #5
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !44

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev4) #5
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev4, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #5
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @debug_dma_map_single(ptr noundef %dev4, ptr noundef %5, i32 noundef %7) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  %13 = ptrtoint ptr %5 to i32
  %sub.i = add i32 %13, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %12, i32 %shr.i
  %and.i = and i32 %13, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev4, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %7, i32 noundef 1, i32 noundef 0) #5
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev6, i32 noundef %retval.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %16 = call ptr @memset(ptr %pdesc8, i32 0, i32 40)
  br i1 %firstseg, label %if.then9, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pdesc8, align 4
  %and.i.i = and i32 %18, -65281
  %or.i.i = or i32 %and.i.i, 10240
  store i32 %or.i.i, ptr %pdesc8, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %add.ptr.i52 = getelementptr i32, ptr %pdesc8, i32 4
  %19 = ptrtoint ptr %add.ptr.i52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i52, align 4
  %and.i.i53 = and i32 %20, -2130706433
  store i32 %and.i.i53, ptr %add.ptr.i52, align 4
  %add.ptr.i54 = getelementptr i32, ptr %pdesc8, i32 9
  %21 = ptrtoint ptr %add.ptr.i54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i54, align 4
  %and.i.i55 = and i32 %22, -15793921
  store i32 %and.i.i55, ptr %add.ptr.i54, align 4
  %23 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pdesc8, align 4
  %add.ptr.i57 = getelementptr i32, ptr %pdesc8, i32 1
  %25 = ptrtoint ptr %add.ptr.i57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i57, align 4
  %and.i.i58 = and i32 %26, -2031617
  %or.i.i59 = or i32 %and.i.i58, 1048576
  store i32 %or.i.i59, ptr %add.ptr.i57, align 4
  %and.i.i60 = and i32 %24, -29
  %or.i.i63 = or i32 %and.i.i60, 12
  store i32 %or.i.i63, ptr %pdesc8, align 4
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %conv15 = and i32 %28, 65535
  %add.ptr.i64 = getelementptr i32, ptr %pdesc8, i32 7
  %29 = ptrtoint ptr %add.ptr.i64 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i64, align 4
  %and.i.i65 = and i32 %30, 65535
  %31 = tail call i32 @llvm.bswap.i32(i32 %conv15) #5
  %or.i.i66 = or i32 %and.i.i65, %31
  %32 = ptrtoint ptr %add.ptr.i64 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i.i66, ptr %add.ptr.i64, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #5
  %add.ptr.i67 = getelementptr i32, ptr %pdesc8, i32 10
  %34 = ptrtoint ptr %add.ptr.i67 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %add.ptr.i67, align 4
  %and.i.i69 = and i32 %or.i.i59, -2131697409
  %or.i.i70 = or i32 %and.i.i69, 1792
  %35 = ptrtoint ptr %add.ptr.i57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i.i70, ptr %add.ptr.i57, align 4
  %or.i.i73 = or i32 %and.i.i60, 140
  %36 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i.i73, ptr %pdesc8, align 4
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %conv18 = and i32 %38, 65535
  %and.i.i74 = and i32 %or.i.i73, 227
  %39 = tail call i32 @llvm.bswap.i32(i32 %conv18) #5
  %or.i.i75 = or i32 %and.i.i74, %39
  %or.i.i81 = or i32 %or.i.i75, 10252
  %40 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or.i.i81, ptr %pdesc8, align 4
  %add.ptr.i82 = getelementptr i32, ptr %pdesc8, i32 3
  %41 = ptrtoint ptr %add.ptr.i82 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i82, align 4
  %or.i.i84 = or i32 %42, 65536
  store i32 %or.i.i84, ptr %add.ptr.i82, align 4
  tail call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.6, ptr noundef %pdesc8, i32 noundef 40) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_set_desc(ptr nocapture noundef readonly %hw, ptr nocapture noundef %pdesc8, i1 noundef zeroext %istx, i8 noundef zeroext %desc_name, ptr nocapture noundef readonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %val, align 1
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  br i1 %istx, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %desc_name, label %if.then.cleanup68_crit_edge [
    i8 2, label %sw.bb
    i8 0, label %sw.bb4
  ]

if.then.cleanup68_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup68

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %add.ptr.i = getelementptr i32, ptr %pdesc8, i32 12
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %add.ptr.i, align 4
  br label %cleanup68

sw.bb4:                                           ; preds = %if.then
  %tx_ring = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  %idxprom = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp = icmp eq i8 %3, 4
  br i1 %cmp, label %if.then10, label %if.end

if.then10:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %cur_tx_wp = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom, i32 7
  %9 = ptrtoint ptr %cur_tx_wp to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %cur_tx_wp, align 4
  %cur_tx_rp = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom, i32 8
  %10 = ptrtoint ptr %cur_tx_rp to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %cur_tx_rp, align 2
  %11 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pdesc8, align 4
  %or.i.i = or i32 %12, 128
  store i32 %or.i.i, ptr %pdesc8, align 4
  br label %cleanup68

if.end:                                           ; preds = %sw.bb4
  %entries = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom, i32 3
  %13 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %entries, align 4
  %cur_tx_wp11 = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom, i32 7
  %15 = ptrtoint ptr %cur_tx_wp11 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cur_tx_wp11, align 4
  %conv12 = zext i16 %16 to i32
  %add = add nuw nsw i32 %conv12, 1
  %conv13 = and i32 %14, 65535
  %rem = urem i32 %add, %conv13
  %conv14 = trunc i32 %rem to i16
  store i16 %conv14, ptr %cur_tx_wp11, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %3)
  %17 = icmp ult i8 %3, 9
  br i1 %17, label %switch.lookup, label %if.end.get_desc_addr_fr_q_idx.exit_crit_edge

if.end.get_desc_addr_fr_q_idx.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_desc_addr_fr_q_idx.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = sext i8 %3 to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.rtl92ee_set_desc, i32 0, i32 %18
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_desc_addr_fr_q_idx.exit

get_desc_addr_fr_q_idx.exit:                      ; preds = %switch.lookup, %if.end.get_desc_addr_fr_q_idx.exit_crit_edge
  %desc_address.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 936, %if.end.get_desc_addr_fr_q_idx.exit_crit_edge ]
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %20 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write16_async.i, align 4
  tail call void %21(ptr noundef %1, i32 noundef %desc_address.0.i, i16 noundef zeroext %conv14) #5
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %write_readback.i, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %get_desc_addr_fr_q_idx.exit.cleanup68_crit_edge, label %if.then.i

get_desc_addr_fr_q_idx.exit.cleanup68_crit_edge:  ; preds = %get_desc_addr_fr_q_idx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup68

if.then.i:                                        ; preds = %get_desc_addr_fr_q_idx.exit
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %26 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %27(ptr noundef %1, i32 noundef %desc_address.0.i) #5
  br label %cleanup68

if.else:                                          ; preds = %entry
  %conv21 = zext i8 %desc_name to i32
  %28 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %desc_name, label %land.end [
    i8 7, label %sw.bb22
    i8 6, label %sw.bb28
  ]

sw.bb22:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pdesc8, align 4
  %and.i.i102 = and i32 %30, 4194432
  %or.i.i103 = or i32 %and.i.i102, 404750336
  store i32 %or.i.i103, ptr %pdesc8, align 4
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  %add.ptr.i104 = getelementptr i32, ptr %pdesc8, i32 1
  %34 = ptrtoint ptr %add.ptr.i104 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %add.ptr.i104, align 4
  %35 = getelementptr i32, ptr %pdesc8, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %35, align 4
  br label %cleanup68

sw.bb28:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pdesc8, align 4
  %or.i.i105 = or i32 %38, 64
  store i32 %or.i.i105, ptr %pdesc8, align 4
  br label %cleanup68

land.end:                                         ; preds = %if.else
  %.b98 = load i1, ptr @rtl92ee_set_desc.__already_done, align 1
  br i1 %.b98, label %land.end.cleanup68_crit_edge, label %if.then35, !prof !44

land.end.cleanup68_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup68

if.then35:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rtl92ee_set_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 943, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %conv21) #5
  br label %cleanup68

cleanup68:                                        ; preds = %if.then35, %land.end.cleanup68_crit_edge, %sw.bb28, %sw.bb22, %if.then.i, %get_desc_addr_fr_q_idx.exit.cleanup68_crit_edge, %if.then10, %sw.bb, %if.then.cleanup68_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @rtl92ee_get_desc(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %pdesc8, i1 noundef zeroext %istx, i8 noundef zeroext %desc_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %mod_params = getelementptr inbounds %struct.rtl_hal_cfg, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %mod_params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mod_params, align 4
  %dma641 = getelementptr inbounds %struct.rtl_mod_params, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %dma641 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dma641, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %conv = zext i8 %desc_name to i32
  br i1 %istx, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %desc_name, label %land.end [
    i8 0, label %sw.bb
    i8 3, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pdesc8, align 4
  %.mask.i = lshr i32 %10, 7
  %.mask.lobit.i = and i32 %.mask.i, 1
  %conv4129 = zext i32 %.mask.lobit.i to i64
  br label %if.end109

sw.bb5:                                           ; preds = %if.then
  %add.ptr1.i = getelementptr i32, ptr %pdesc8, i32 5
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr1.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  %conv7 = zext i32 %13 to i64
  br i1 %tobool.not, label %sw.bb5.get_txbuffer_desc_addr_high.exit_crit_edge, label %if.then.i

sw.bb5.get_txbuffer_desc_addr_high.exit_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_txbuffer_desc_addr_high.exit

if.then.i:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr1.i126 = getelementptr i32, ptr %pdesc8, i32 6
  %14 = ptrtoint ptr %add.ptr1.i126 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr1.i126, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  br label %get_txbuffer_desc_addr_high.exit

get_txbuffer_desc_addr_high.exit:                 ; preds = %if.then.i, %sw.bb5.get_txbuffer_desc_addr_high.exit_crit_edge
  %retval.0.i = phi i32 [ %16, %if.then.i ], [ 0, %sw.bb5.get_txbuffer_desc_addr_high.exit_crit_edge ]
  %conv10 = zext i32 %retval.0.i to i64
  %shl = shl nuw i64 %conv10, 32
  %or = or i64 %shl, %conv7
  br label %if.end109

land.end:                                         ; preds = %if.then
  %.b125 = load i1, ptr @rtl92ee_get_desc.__already_done, align 1
  br i1 %.b125, label %land.end.if.end109_crit_edge, label %if.then17, !prof !44

land.end.if.end109_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

if.then17:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rtl92ee_get_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 970, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %conv) #5
  br label %if.end109

if.else:                                          ; preds = %entry
  %17 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %desc_name, label %land.end65 [
    i8 0, label %sw.bb48
    i8 5, label %sw.bb51
    i8 4, label %sw.bb54
  ]

sw.bb48:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pdesc8, align 4
  %.mask.i127 = lshr i32 %19, 7
  %.mask.lobit.i128 = and i32 %.mask.i127, 1
  %conv50130 = zext i32 %.mask.lobit.i128 to i64
  br label %if.end109

sw.bb51:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pdesc8, align 4
  %22 = and i32 %21, -12648448
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %conv53 = zext i32 %23 to i64
  br label %if.end109

sw.bb54:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i32, ptr %pdesc8, i32 6
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  %conv56 = zext i32 %26 to i64
  br label %if.end109

land.end65:                                       ; preds = %if.else
  %.b123124 = load i1, ptr @rtl92ee_get_desc.__already_done.10, align 1
  br i1 %.b123124, label %land.end65.if.end109_crit_edge, label %if.then72, !prof !44

land.end65.if.end109_crit_edge:                   ; preds = %land.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

if.then72:                                        ; preds = %land.end65
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rtl92ee_get_desc.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 987, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %conv) #5
  br label %if.end109

if.end109:                                        ; preds = %if.then72, %land.end65.if.end109_crit_edge, %sw.bb54, %sw.bb51, %sw.bb48, %if.then17, %land.end.if.end109_crit_edge, %get_txbuffer_desc_addr_high.exit, %sw.bb
  %ret.0 = phi i64 [ %or, %get_txbuffer_desc_addr_high.exit ], [ %conv4129, %sw.bb ], [ %conv56, %sw.bb54 ], [ %conv53, %sw.bb51 ], [ %conv50130, %sw.bb48 ], [ 0, %if.then17 ], [ 0, %land.end.if.end109_crit_edge ], [ 0, %if.then72 ], [ 0, %land.end65.if.end109_crit_edge ]
  ret i64 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92ee_is_tx_desc_closed(ptr nocapture noundef readonly %hw, i8 noundef zeroext %hw_queue, i16 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tx_ring = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  %idxprom = zext i8 %hw_queue to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %hw_queue)
  %2 = icmp ult i8 %hw_queue, 9
  br i1 %2, label %switch.lookup, label %entry.get_desc_addr_fr_q_idx.exit_crit_edge

entry.get_desc_addr_fr_q_idx.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_desc_addr_fr_q_idx.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = sext i8 %hw_queue to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.rtl92ee_is_tx_desc_closed, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_desc_addr_fr_q_idx.exit

get_desc_addr_fr_q_idx.exit:                      ; preds = %switch.lookup, %entry.get_desc_addr_fr_q_idx.exit_crit_edge
  %desc_address.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 936, %entry.get_desc_addr_fr_q_idx.exit_crit_edge ]
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %5 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %6(ptr noundef %1, i32 noundef %desc_address.0.i) #5
  %shr = lshr i32 %call.i, 16
  %7 = trunc i32 %shr to i16
  %conv5 = and i16 %7, 4095
  %cur_tx_rp6 = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom, i32 8
  %8 = ptrtoint ptr %cur_tx_rp6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv5, ptr %cur_tx_rp6, align 2
  %cur_tx_wp = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %idxprom, i32 7
  %9 = ptrtoint ptr %cur_tx_wp to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cur_tx_wp, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %conv5)
  %cmp = icmp ugt i16 %10, %conv5
  br i1 %cmp, label %if.then, label %if.else20

if.then:                                          ; preds = %get_desc_addr_fr_q_idx.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %index)
  %cmp13 = icmp ule i16 %10, %index
  call void @__sanitizer_cov_trace_cmp2(i16 %conv5, i16 %index)
  %cmp17.not = icmp ugt i16 %conv5, %index
  %or.cond = select i1 %cmp13, i1 true, i1 %cmp17.not
  br label %if.end46

if.else20:                                        ; preds = %get_desc_addr_fr_q_idx.exit
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %conv5)
  %cmp23 = icmp ult i16 %10, %conv5
  br i1 %cmp23, label %if.then25, label %if.else38

if.then25:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %index)
  %cmp28 = icmp ult i16 %10, %index
  call void @__sanitizer_cov_trace_cmp2(i16 %conv5, i16 %index)
  %cmp33 = icmp ugt i16 %conv5, %index
  %or.cond88 = select i1 %cmp28, i1 %cmp33, i1 false
  br label %if.end46

if.else38:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp2(i16 %conv5, i16 %index)
  %cmp41.not = icmp ne i16 %conv5, %index
  br label %if.end46

if.end46:                                         ; preds = %if.else38, %if.then25, %if.then
  %ret.0.off0 = phi i1 [ %cmp41.not, %if.else38 ], [ %or.cond, %if.then ], [ %or.cond88, %if.then25 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %hw_queue)
  %cmp48 = icmp eq i8 %hw_queue, 4
  %spec.select89 = select i1 %cmp48, i1 true, i1 %ret.0.off0
  %driver_is_goingto_unload = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %driver_is_goingto_unload to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %driver_is_goingto_unload, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end46.if.end56.thread_crit_edge

if.end46.if.end56.thread_crit_edge:               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.thread

lor.lhs.false:                                    ; preds = %if.end46
  %rfoff_reason = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 18
  %13 = ptrtoint ptr %rfoff_reason to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rfoff_reason, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %14)
  %cmp53 = icmp ugt i32 %14, 536870912
  br i1 %cmp53, label %lor.lhs.false.if.end56.thread_crit_edge, label %if.end56

lor.lhs.false.if.end56.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.thread

if.end56:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %hw_queue)
  %cmp58 = icmp ult i8 %hw_queue, 4
  br i1 %cmp58, label %if.then60, label %if.end56.if.end65_crit_edge

if.end56.if.end65_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.end56.thread:                                  ; preds = %lor.lhs.false.if.end56.thread_crit_edge, %if.end46.if.end56.thread_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %hw_queue)
  %cmp5893 = icmp ult i8 %hw_queue, 4
  br i1 %cmp5893, label %if.end56.thread.if.end65.sink.split_crit_edge, label %if.end56.thread.if.end65_crit_edge

if.end56.thread.if.end65_crit_edge:               ; preds = %if.end56.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.end56.thread.if.end65.sink.split_crit_edge:    ; preds = %if.end56.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65.sink.split

if.then60:                                        ; preds = %if.end56
  br i1 %spec.select89, label %if.then60.if.end65.sink.split_crit_edge, label %if.then62

if.then60.if.end65.sink.split_crit_edge:          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65.sink.split

if.then62:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  %15 = load i8, ptr @rtl92ee_is_tx_desc_closed.stop_report_cnt, align 1
  %inc = add i8 %15, 1
  br label %if.end65.sink.split

if.end65.sink.split:                              ; preds = %if.then62, %if.then60.if.end65.sink.split_crit_edge, %if.end56.thread.if.end65.sink.split_crit_edge
  %inc.sink = phi i8 [ %inc, %if.then62 ], [ 0, %if.end56.thread.if.end65.sink.split_crit_edge ], [ 0, %if.then60.if.end65.sink.split_crit_edge ]
  %ret.2.off094.ph = phi i1 [ false, %if.then62 ], [ true, %if.end56.thread.if.end65.sink.split_crit_edge ], [ true, %if.then60.if.end65.sink.split_crit_edge ]
  store i8 %inc.sink, ptr @rtl92ee_is_tx_desc_closed.stop_report_cnt, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.end65.sink.split, %if.end56.thread.if.end65_crit_edge, %if.end56.if.end65_crit_edge
  %ret.2.off094 = phi i1 [ true, %if.end56.thread.if.end65_crit_edge ], [ %spec.select89, %if.end56.if.end65_crit_edge ], [ %ret.2.off094.ph, %if.end65.sink.split ]
  ret i1 %ret.2.off094
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl92ee_tx_polling(ptr nocapture noundef %hw, i8 noundef zeroext %hw_queue) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

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
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !22, !23, !25, !27, !29, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/trx.c", i32 366, i32 3}
!2 = distinct !{null, !3, !"start_rx", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/trx.c", i32 464, i32 14}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/trx.c", i32 471, i32 3}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/trx.c", i32 681, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/trx.c", i32 700, i32 5}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/trx.c", i32 801, i32 5}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/trx.c", i32 827, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/trx.c", i32 881, i32 2}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/trx.c", i32 941, i32 4}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/trx.c", i32 968, i32 4}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/trx.c", i32 985, i32 4}
!25 = !{ptr @rtl92ee_is_tx_desc_closed.stop_report_cnt, !26, !"stop_report_cnt", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/trx.c", i32 1000, i32 12}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i8 0, i8 2}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.peeled.count", i32 1}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{!"branch_weights", i32 2000, i32 1}
