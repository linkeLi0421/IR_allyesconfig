; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/trx.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/trx.c"
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
%struct.phy_status_rpt = type { [2 x i8], i16, i8, [4 x i8], [4 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], i8, i8, i8, i8, i8 }
%struct.rx_fwinfo_8821ae = type { [4 x i8], i8, [4 x i8], [4 x i8], [2 x i8], [4 x i8], [2 x i8], [2 x i8], [2 x i8], i8, i8, i8 }
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
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.133 }
%union.anon.133 = type { %struct.anon.137, [32 x i8] }
%struct.anon.137 = type { i64 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.rtl8192_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head, ptr, i32, i16, i16 }
%struct.rtl_tx_desc = type { [16 x i32] }
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }

@.str = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"rx_packet_bw=%s,is_ht %d, is_vht %d, vht_nss=%d,is_short_gi %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"80M\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"40M\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"20M\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"GGGGGGGGGGGGGet Wakeup Packet!! WakeMatch=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA mapping error\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Insert 8 byte.pTcb->EMPktNum:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Enable RDG function.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"H2C Tx Cmd Content\0A\00", [44 x i8] zeroinitializer }, align 32
@rtl8821ae_set_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8821ae/trx.c\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rtl8821ae: ERR txdesc :%d not processed\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl8821ae_set_desc.__already_done.12 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rtl8821ae: ERR rxdesc :%d not processed\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl8821ae_get_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rtl8821ae_get_desc.__already_done.14 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_rate=0x%02x.\0A\00", [47 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s, current_chan_bw %d, packet_bw %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.rtl8821ae_bw_mapping = private unnamed_addr constant [21 x i8] c"rtl8821ae_bw_mapping\00", align 1
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Not Correct Primary40MHz Setting\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.rtl8821ae_sc_mapping = private unnamed_addr constant [21 x i8] c"rtl8821ae_sc_mapping\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 16, i64 40960, i64 49152, i64 53248]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.23 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 12, i64 0, i64 1024]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 5]
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 464, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 486, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 699, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 714, i32 5 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 795, i32 5 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 828, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 875, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 894, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 914, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 394, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 326, i32 6 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 561, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [56 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/trx.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 606, i32 5 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl8821ae_rx_query_desc(ptr noundef %hw, ptr noundef %status, ptr nocapture noundef %rx_status, ptr noundef readonly %pdesc8, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
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
  %sh.diff389 = lshr i32 %14, 18
  %tr.sh.diff390 = trunc i32 %sh.diff389 to i8
  %bf.value = and i8 %tr.sh.diff390, 32
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
  %add.ptr.i354 = getelementptr i32, ptr %pdesc8, i32 4
  %30 = ptrtoint ptr %add.ptr.i354 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i354, align 4
  %sh.diff391 = lshr i32 %31, 20
  %tr.sh.diff392 = trunc i32 %sh.diff391 to i8
  %bf.value48 = and i8 %tr.sh.diff392, 16
  %bf.clear50 = and i8 %bf.set41, -17
  %bf.set51 = or i8 %bf.clear50, %bf.value48
  store i8 %bf.set51, ptr %icv, align 2
  %add.ptr.i356 = getelementptr i32, ptr %pdesc8, i32 1
  %32 = ptrtoint ptr %add.ptr.i356 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i356, align 4
  %isampdu = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 25
  %34 = lshr i32 %33, 23
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = ptrtoint ptr %isampdu to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %isampdu, align 1
  %38 = load i32, ptr %add.ptr.i356, align 4
  %isfirst_ampdu = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 26
  %39 = lshr i32 %38, 23
  %40 = trunc i32 %39 to i8
  %41 = and i8 %40, 1
  %42 = ptrtoint ptr %isfirst_ampdu to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %isfirst_ampdu, align 8
  %add.ptr.i358 = getelementptr i32, ptr %pdesc8, i32 5
  %43 = ptrtoint ptr %add.ptr.i358 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i358, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #4
  %timestamp_low = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 20
  %46 = ptrtoint ptr %timestamp_low to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %timestamp_low, align 4
  %47 = ptrtoint ptr %add.ptr.i354 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i354, align 4
  %sum.shift.i360 = lshr i32 %48, 28
  %49 = trunc i32 %sum.shift.i360 to i8
  %conv61 = and i8 %49, 3
  %rx_packet_bw = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 28
  %50 = ptrtoint ptr %rx_packet_bw to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv61, ptr %rx_packet_bw, align 2
  %51 = ptrtoint ptr %add.ptr.i356 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i356, align 4
  %53 = lshr i32 %52, 24
  %and.i.i363 = and i32 %53, 127
  %macid = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 50
  %54 = ptrtoint ptr %macid to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and.i.i363, ptr %macid, align 8
  %55 = load i32, ptr %add.ptr.i354, align 4
  %is_short_gi = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 47
  %56 = lshr i32 %55, 24
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 1
  %59 = xor i8 %58, 1
  %60 = ptrtoint ptr %is_short_gi to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %is_short_gi, align 4
  %61 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv, align 8
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i, align 4
  %65 = lshr i32 %64, 24
  %and.i.i.i = and i32 %65, 127
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %62, i64 noundef 4096, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %and.i.i.i) #4
  %66 = add nsw i32 %and.i.i.i, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %66)
  %67 = icmp ult i32 %66, 16
  %is_ht = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 42
  %frombool69 = zext i1 %67 to i8
  %68 = ptrtoint ptr %is_ht to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %frombool69, ptr %is_ht, align 4
  %69 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv, align 8
  %71 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i, align 4
  %73 = lshr i32 %72, 24
  %and.i.i.i368 = and i32 %73, 127
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %70, i64 noundef 4096, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %and.i.i.i368) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %and.i.i.i368)
  %cmp.i = icmp ugt i32 %and.i.i.i368, 43
  %is_vht = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 46
  %frombool71 = zext i1 %cmp.i to i8
  %74 = ptrtoint ptr %is_vht to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %frombool71, ptr %is_vht, align 1
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr.i, align 4
  %77 = lshr i32 %76, 24
  %and.i.i.i370 = and i32 %77, 127
  %78 = add nsw i32 %and.i.i.i370, -44
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %78)
  %79 = icmp ult i32 %78, 10
  %80 = add nsw i32 %and.i.i.i370, -54
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %80)
  %81 = icmp ult i32 %80, 10
  %spec.select.i = select i1 %81, i8 2, i8 0
  %vht_nss.0.i = select i1 %79, i8 1, i8 %spec.select.i
  %vht_nss = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 48
  %82 = ptrtoint ptr %vht_nss to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %vht_nss.0.i, ptr %vht_nss, align 1
  %83 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %rate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %84)
  %switch.selectcmp = icmp ult i8 %84, 4
  %is_cck = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 41
  %frombool90 = zext i1 %switch.selectcmp to i8
  %85 = ptrtoint ptr %is_cck to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %frombool90, ptr %is_cck, align 1
  %86 = ptrtoint ptr %rx_packet_bw to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %rx_packet_bw, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %87)
  %cmp93 = icmp eq i8 %87, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp97 = icmp eq i8 %87, 1
  %cond = select i1 %cmp97, ptr @.str.2, ptr @.str.3
  %cond99 = select i1 %cmp93, ptr @.str.1, ptr %cond
  %88 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %is_ht, align 4, !range !49
  %90 = zext i8 %89 to i32
  %91 = zext i1 %cmp.i to i32
  %conv107 = zext i8 %vht_nss.0.i to i32
  %92 = ptrtoint ptr %is_short_gi to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %is_short_gi, align 4, !range !49
  %94 = zext i8 %93 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4096, i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull %cond99, i32 noundef %90, i32 noundef %91, i32 noundef %conv107, i32 noundef %94) #4
  %95 = ptrtoint ptr %add.ptr.i356 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr.i356, align 4
  %97 = trunc i32 %96 to i8
  %98 = lshr i8 %97, 2
  %99 = and i8 %98, 4
  %100 = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 49
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %99, ptr %100, align 2
  %102 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %add.ptr.i, align 4
  %104 = and i32 %103, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool115.not = icmp eq i32 %104, 0
  br i1 %tobool115.not, label %if.else117, label %entry.if.then130_crit_edge

entry.if.then130_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then130

if.else117:                                       ; preds = %entry
  %105 = and i32 %103, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool119.not = icmp eq i32 %105, 0
  br i1 %tobool119.not, label %if.end128, label %if.else117.if.then130_crit_edge

if.else117.if.then130_crit_edge:                  ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then130

if.end128:                                        ; preds = %if.else117
  %106 = and i32 %103, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool123.not = icmp eq i32 %106, 0
  br i1 %tobool123.not, label %if.end128.if.end132_crit_edge, label %if.end128.if.then130_crit_edge

if.end128.if.then130_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then130

if.end128.if.end132_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end132

if.then130:                                       ; preds = %if.end128.if.then130_crit_edge, %if.else117.if.then130_crit_edge, %entry.if.then130_crit_edge
  %wake_match.0387 = phi i32 [ 1, %if.end128.if.then130_crit_edge ], [ 2, %if.else117.if.then130_crit_edge ], [ 4, %entry.if.then130_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4096, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %wake_match.0387) #4
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.end128.if.end132_crit_edge
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %107 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %center_freq, align 4
  %conv133 = trunc i32 %110 to i16
  %freq = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 5
  %111 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %111)
  %bf.load134 = load i16, ptr %freq, align 4
  %bf.shl136 = shl i16 %conv133, 3
  %bf.clear137 = and i16 %bf.load134, 7
  %bf.set138 = or i16 %bf.clear137, %bf.shl136
  store i16 %bf.set138, ptr %freq, align 4
  %112 = load ptr, ptr %chandef, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %conv142 = trunc i32 %114 to i8
  %band143 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 11
  %115 = ptrtoint ptr %band143 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv142, ptr %band143, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %116 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data, align 4
  %118 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %rx_drvinfo_size, align 1
  %conv145 = zext i8 %119 to i32
  %add.ptr = getelementptr i8, ptr %117, i32 %conv145
  %120 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %rx_bufshift, align 2
  %conv147 = zext i8 %121 to i32
  %add.ptr148 = getelementptr i8, ptr %add.ptr, i32 %conv147
  %122 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %122)
  %bf.load150 = load i8, ptr %icv, align 2
  %123 = and i8 %bf.load150, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool154.not = icmp eq i8 %123, 0
  br i1 %tobool154.not, label %if.end132.if.end157_crit_edge, label %if.then155

if.end132.if.end157_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end157

if.then155:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #6
  %flag = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %124 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flag, align 8
  %or156 = or i32 %125, 32
  store i32 %or156, ptr %flag, align 8
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %if.end132.if.end157_crit_edge
  %126 = ptrtoint ptr %rx_packet_bw to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %rx_packet_bw, align 2
  %128 = zext i8 %127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values)
  switch i8 %127, label %if.end157.if.end177_crit_edge [
    i8 1, label %if.end157.if.end177.sink.split_crit_edge
    i8 2, label %if.then171
  ]

if.end157.if.end177.sink.split_crit_edge:         ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end177.sink.split

if.end157.if.end177_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end177

if.then171:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end177.sink.split

if.end177.sink.split:                             ; preds = %if.then171, %if.end157.if.end177.sink.split_crit_edge
  %.sink = phi i16 [ 8192, %if.then171 ], [ 6144, %if.end157.if.end177.sink.split_crit_edge ]
  %bw = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %129 = ptrtoint ptr %bw to i32
  call void @__asan_loadN_noabort(i32 %129, i32 2)
  %bf.load173 = load i16, ptr %bw, align 1
  %bf.clear174 = and i16 %bf.load173, -14337
  %bf.set175 = or i16 %bf.clear174, %.sink
  store i16 %bf.set175, ptr %bw, align 1
  br label %if.end177

if.end177:                                        ; preds = %if.end177.sink.split, %if.end157.if.end177_crit_edge
  %130 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %is_ht, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool179.not = icmp eq i8 %131, 0
  br i1 %tobool179.not, label %if.end177.if.end184_crit_edge, label %if.then180

if.end177.if.end184_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end184

if.then180:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #6
  %encoding = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %132 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %132, i32 2)
  %bf.load181 = load i16, ptr %encoding, align 1
  %bf.clear182 = and i16 %bf.load181, 16383
  %bf.set183 = or i16 %bf.clear182, 16384
  store i16 %bf.set183, ptr %encoding, align 1
  br label %if.end184

if.end184:                                        ; preds = %if.then180, %if.end177.if.end184_crit_edge
  %133 = ptrtoint ptr %is_vht to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %is_vht, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool186.not = icmp eq i8 %134, 0
  br i1 %tobool186.not, label %if.end184.if.end192_crit_edge, label %if.then187

if.end184.if.end192_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end192

if.then187:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #6
  %encoding188 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %135 = ptrtoint ptr %encoding188 to i32
  call void @__asan_loadN_noabort(i32 %135, i32 2)
  %bf.load189 = load i16, ptr %encoding188, align 1
  %bf.clear190 = and i16 %bf.load189, 16383
  %bf.set191 = or i16 %bf.clear190, -32768
  store i16 %bf.set191, ptr %encoding188, align 1
  br label %if.end192

if.end192:                                        ; preds = %if.then187, %if.end184.if.end192_crit_edge
  %136 = ptrtoint ptr %is_short_gi to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %is_short_gi, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool194.not = icmp eq i8 %137, 0
  br i1 %tobool194.not, label %if.end192.if.end199_crit_edge, label %if.then195

if.end192.if.end199_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end199

if.then195:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #6
  %enc_flags = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 6
  %138 = ptrtoint ptr %enc_flags to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %enc_flags, align 2
  %140 = or i8 %139, 4
  store i8 %140, ptr %enc_flags, align 2
  br label %if.end199

if.end199:                                        ; preds = %if.then195, %if.end192.if.end199_crit_edge
  %141 = ptrtoint ptr %vht_nss to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %vht_nss, align 1
  %nss = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 9
  %143 = ptrtoint ptr %nss to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %nss, align 2
  %flag201 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %144 = ptrtoint ptr %flag201 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %flag201, align 8
  %or202 = or i32 %145, 128
  store i32 %or202, ptr %flag201, align 8
  %146 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %146)
  %bf.load204 = load i8, ptr %icv, align 2
  %147 = and i8 %bf.load204, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool208.not = icmp eq i8 %147, 0
  br i1 %tobool208.not, label %if.end199.if.end220_crit_edge, label %if.then209

if.end199.if.end220_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end220

if.then209:                                       ; preds = %if.end199
  %148 = ptrtoint ptr %add.ptr148 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %add.ptr148, align 2
  %150 = and i16 %149, -1024
  %151 = zext i16 %150 to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %150, label %land.lhs.true [
    i16 -24576, label %if.then209.if.else216_crit_edge
    i16 -16384, label %if.then209.if.else216_crit_edge396
    i16 -12288, label %if.then209.if.else216_crit_edge397
  ]

if.then209.if.else216_crit_edge397:               ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else216

if.then209.if.else216_crit_edge396:               ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else216

if.then209.if.else216_crit_edge:                  ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else216

land.lhs.true:                                    ; preds = %if.then209
  %.pre = and i16 %149, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pre)
  %cmp.i379.not = icmp eq i16 %.pre, 0
  br i1 %cmp.i379.not, label %land.lhs.true.if.else216_crit_edge, label %if.then213

land.lhs.true.if.else216_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else216

if.then213:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %or215 = or i32 %145, 130
  br label %if.end220.sink.split

if.else216:                                       ; preds = %land.lhs.true.if.else216_crit_edge, %if.then209.if.else216_crit_edge, %if.then209.if.else216_crit_edge396, %if.then209.if.else216_crit_edge397
  %and218 = and i32 %or202, -3
  br label %if.end220.sink.split

if.end220.sink.split:                             ; preds = %if.else216, %if.then213
  %or215.sink = phi i32 [ %or215, %if.then213 ], [ %and218, %if.else216 ]
  %152 = ptrtoint ptr %flag201 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %or215.sink, ptr %flag201, align 8
  br label %if.end220

if.end220:                                        ; preds = %if.end220.sink.split, %if.end199.if.end220_crit_edge
  %153 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %is_ht, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool222 = icmp ne i8 %154, 0
  %155 = ptrtoint ptr %is_vht to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %is_vht, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool224 = icmp ne i8 %156, 0
  %157 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %rate, align 1
  %call226 = tail call i32 @rtlwifi_rate_mapping(ptr noundef %hw, i1 noundef zeroext %tobool222, i1 noundef zeroext %tobool224, i8 noundef zeroext %158) #4
  %conv227 = trunc i32 %call226 to i8
  %rate_idx = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 8
  %159 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv227, ptr %rate_idx, align 1
  %160 = ptrtoint ptr %timestamp_low to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %timestamp_low, align 4
  %conv229 = zext i32 %161 to i64
  %162 = ptrtoint ptr %rx_status to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %conv229, ptr %rx_status, align 8
  %163 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool230.not = icmp eq i32 %163, 0
  br i1 %tobool230.not, label %if.end220.if.end236_crit_edge, label %if.then231

if.end220.if.end236_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end236

if.then231:                                       ; preds = %if.end220
  %164 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %data, align 4
  %166 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %rx_bufshift, align 2
  %conv234 = zext i8 %167 to i32
  %add.ptr235 = getelementptr i8, ptr %165, i32 %conv234
  %168 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %priv, align 8
  %170 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %rx_drvinfo_size, align 1
  %conv.i = zext i8 %171 to i32
  %add.ptr.i381 = getelementptr i8, ptr %165, i32 %conv.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i381, i32 %conv234
  %172 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %add.ptr3.i, align 2
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 2
  %174 = and i16 %173, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %174)
  %cmp.i.i.i = icmp eq i16 %174, 3
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #6
  %addr4.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 6
  br label %ieee80211_get_SA.exit.i

if.end.i.i:                                       ; preds = %if.then231
  %175 = and i16 %173, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %175)
  %cmp.i11.not.i.i = icmp eq i16 %175, 0
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
  %176 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %retval.0.i.i, align 4
  %178 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %status, align 4
  %add.ptr.i.i382 = getelementptr i8, ptr %retval.0.i.i, i32 4
  %179 = ptrtoint ptr %add.ptr.i.i382 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %add.ptr.i.i382, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %status, i32 4
  %181 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %180, ptr %add.ptr1.i.i, align 2
  %182 = and i16 %173, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %182)
  %cmp.i.i = icmp eq i16 %182, 1024
  br i1 %cmp.i.i, label %ieee80211_get_SA.exit.i.if.end50.i_crit_edge, label %land.lhs.true.i

ieee80211_get_SA.exit.i.if.end50.i_crit_edge:     ; preds = %ieee80211_get_SA.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50.i

land.lhs.true.i:                                  ; preds = %ieee80211_get_SA.exit.i
  %bssid.i = getelementptr inbounds %struct.rtl_priv, ptr %169, i32 0, i32 9, i32 34
  %183 = and i16 %173, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %183)
  %cmp.i1.not.i = icmp eq i16 %183, 0
  br i1 %cmp.i1.not.i, label %cond.false.i, label %land.lhs.true.i.cond.end18.i_crit_edge

land.lhs.true.i.cond.end18.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end18.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  %184 = and i16 %173, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %184)
  %cmp.i2.not.i = icmp eq i16 %184, 0
  br i1 %cmp.i2.not.i, label %cond.false16.i, label %cond.true14.i

cond.true14.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 3
  br label %cond.end18.i

cond.false16.i:                                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 4
  br label %cond.end18.i

cond.end18.i:                                     ; preds = %cond.false16.i, %cond.true14.i, %land.lhs.true.i.cond.end18.i_crit_edge
  %cond19.i = phi ptr [ %addr2.i, %cond.true14.i ], [ %addr3.i, %cond.false16.i ], [ %addr1.i, %land.lhs.true.i.cond.end18.i_crit_edge ]
  %185 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %bssid.i, align 4
  %187 = ptrtoint ptr %cond19.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %cond19.i, align 4
  %xor.i.i = xor i32 %188, %186
  %add.ptr.i3.i = getelementptr %struct.rtl_priv, ptr %169, i32 0, i32 9, i32 34, i32 4
  %189 = ptrtoint ptr %add.ptr.i3.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %add.ptr.i3.i, align 2
  %add.ptr1.i4.i = getelementptr i8, ptr %cond19.i, i32 4
  %191 = ptrtoint ptr %add.ptr1.i4.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %add.ptr1.i4.i, align 2
  %xor37.i.i = xor i16 %192, %190
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i5.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i5.i, label %land.lhs.true22.i, label %cond.end18.i.if.end50.i_crit_edge

cond.end18.i.if.end50.i_crit_edge:                ; preds = %cond.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50.i

land.lhs.true22.i:                                ; preds = %cond.end18.i
  %193 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %193)
  %bf.load.i = load i8, ptr %icv, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.load.i)
  %194 = icmp ult i8 %bf.load.i, 32
  br i1 %194, label %land.end39.i, label %land.lhs.true22.i.if.end50.i_crit_edge

land.lhs.true22.i.if.end50.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50.i

land.end39.i:                                     ; preds = %land.lhs.true22.i
  %dev_addr.i = getelementptr inbounds %struct.rtl_priv, ptr %169, i32 0, i32 17, i32 19
  %195 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %addr1.i, align 4
  %197 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %dev_addr.i, align 4
  %xor.i6.i = xor i32 %198, %196
  %add.ptr.i7.i = getelementptr i8, ptr %addr1.i, i32 4
  %199 = ptrtoint ptr %add.ptr.i7.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %add.ptr.i7.i, align 2
  %add.ptr1.i8.i = getelementptr %struct.rtl_priv, ptr %169, i32 0, i32 17, i32 19, i32 4
  %201 = ptrtoint ptr %add.ptr1.i8.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %add.ptr1.i8.i, align 2
  %xor37.i9.i = xor i16 %202, %200
  %xor3.i10.i = zext i16 %xor37.i9.i to i32
  %or.i11.i = or i32 %xor.i6.i, %xor3.i10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i11.i)
  %cmp.i12.i = icmp eq i32 %or.i11.i, 0
  %203 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %add.ptr3.i, align 2
  %205 = and i16 %204, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %205)
  %cmp.i13.i = icmp eq i16 %205, -32768
  br i1 %cmp.i13.i, label %if.then48.i, label %land.end39.i.land.lhs.true53.i_crit_edge

land.end39.i.land.lhs.true53.i_crit_edge:         ; preds = %land.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true53.i

if.then48.i:                                      ; preds = %land.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  %206 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %priv, align 8
  %num_qry_beacon_pkt.i = getelementptr inbounds %struct.rtl_priv, ptr %207, i32 0, i32 15, i32 50, i32 4
  %208 = ptrtoint ptr %num_qry_beacon_pkt.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %num_qry_beacon_pkt.i, align 8
  %inc.i = add i16 %209, 1
  store i16 %inc.i, ptr %num_qry_beacon_pkt.i, align 8
  br label %land.lhs.true53.i

if.end50.i:                                       ; preds = %land.lhs.true22.i.if.end50.i_crit_edge, %cond.end18.i.if.end50.i_crit_edge, %ieee80211_get_SA.exit.i.if.end50.i_crit_edge
  %210 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %add.ptr3.i, align 2
  %212 = and i16 %211, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %212)
  %cmp.i1320.i = icmp eq i16 %212, -32768
  br label %if.end75.i

land.lhs.true53.i:                                ; preds = %if.then48.i, %land.end39.i.land.lhs.true53.i_crit_edge
  %213 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %add.ptr3.i, align 2
  %215 = and i16 %214, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %215)
  %cmp.i14.i = icmp eq i16 %215, -30720
  br i1 %cmp.i14.i, label %land.lhs.true57.i, label %land.lhs.true53.i.if.end75.i_crit_edge

land.lhs.true53.i.if.end75.i_crit_edge:           ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end75.i

land.lhs.true57.i:                                ; preds = %land.lhs.true53.i
  %216 = and i16 %214, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %216)
  %cmp.i.not.i.i = icmp eq i16 %216, 0
  %addr3.i15.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 4
  %retval.0.i16.i = select i1 %cmp.i.not.i.i, ptr %addr1.i, ptr %addr3.i15.i
  %217 = ptrtoint ptr %retval.0.i16.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %retval.0.i16.i, align 4
  %219 = and i32 %218, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool.i.not.i = icmp eq i32 %219, 0
  br i1 %tobool.i.not.i, label %if.then60.i, label %land.lhs.true57.i.if.end75.i_crit_edge

land.lhs.true57.i.if.end75.i_crit_edge:           ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end75.i

if.then60.i:                                      ; preds = %land.lhs.true57.i
  %qos_ctrl.i = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %add.ptr3.i, i32 0, i32 6
  %220 = ptrtoint ptr %qos_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %qos_ctrl.i, align 2
  %222 = lshr i16 %221, 8
  %trunc.i = trunc i16 %222 to i4
  %223 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %223, ptr @__sancov_gen_cov_switch_values.21)
  switch i4 %trunc.i, label %if.then69.i [
    i4 0, label %if.then60.i.if.end75.i_crit_edge
    i4 3, label %if.then60.i.if.end75.i_crit_edge398
  ]

if.then60.i.if.end75.i_crit_edge398:              ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end75.i

if.then60.i.if.end75.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end75.i

if.then69.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #6
  %224 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %priv, align 8
  %num_non_be_pkt.i = getelementptr inbounds %struct.rtl_priv, ptr %225, i32 0, i32 15, i32 50, i32 5
  %226 = ptrtoint ptr %num_non_be_pkt.i to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %num_non_be_pkt.i, align 2
  %inc73.i = add i16 %227, 1
  store i16 %inc73.i, ptr %num_non_be_pkt.i, align 2
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then69.i, %if.then60.i.if.end75.i_crit_edge, %if.then60.i.if.end75.i_crit_edge398, %land.lhs.true57.i.if.end75.i_crit_edge, %land.lhs.true53.i.if.end75.i_crit_edge, %if.end50.i
  %228 = phi i1 [ true, %if.then69.i ], [ true, %if.then60.i.if.end75.i_crit_edge ], [ true, %if.then60.i.if.end75.i_crit_edge398 ], [ true, %land.lhs.true57.i.if.end75.i_crit_edge ], [ true, %land.lhs.true53.i.if.end75.i_crit_edge ], [ false, %if.end50.i ]
  %229 = phi i1 [ %cmp.i12.i, %if.then69.i ], [ %cmp.i12.i, %if.then60.i.if.end75.i_crit_edge ], [ %cmp.i12.i, %if.then60.i.if.end75.i_crit_edge398 ], [ %cmp.i12.i, %land.lhs.true57.i.if.end75.i_crit_edge ], [ %cmp.i12.i, %land.lhs.true53.i.if.end75.i_crit_edge ], [ false, %if.end50.i ]
  %cmp.i132426.i = phi i1 [ %cmp.i13.i, %if.then69.i ], [ %cmp.i13.i, %if.then60.i.if.end75.i_crit_edge ], [ %cmp.i13.i, %if.then60.i.if.end75.i_crit_edge398 ], [ %cmp.i13.i, %land.lhs.true57.i.if.end75.i_crit_edge ], [ %cmp.i13.i, %land.lhs.true53.i.if.end75.i_crit_edge ], [ %cmp.i1320.i, %if.end50.i ]
  %frombool.i.i = zext i1 %228 to i8
  %frombool1.i.i = zext i1 %229 to i8
  %frombool2.i.i = zext i1 %cmp.i132426.i to i8
  %230 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %priv, align 8
  %232 = ptrtoint ptr %is_cck to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %is_cck, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool.not.i.i = icmp eq i8 %233, 0
  %packet_matchbssid.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 40
  %234 = ptrtoint ptr %packet_matchbssid.i.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %frombool.i.i, ptr %packet_matchbssid.i.i, align 2
  %packet_toself.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 43
  %235 = ptrtoint ptr %packet_toself.i.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %frombool1.i.i, ptr %packet_toself.i.i, align 1
  %packet_beacon11.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 44
  %236 = ptrtoint ptr %packet_beacon11.i.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %frombool2.i.i, ptr %packet_beacon11.i.i, align 2
  %rx_mimo_signalquality.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 31
  %237 = ptrtoint ptr %rx_mimo_signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 -1, ptr %rx_mimo_signalquality.i.i, align 4
  %arrayidx14.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 31, i32 1
  %238 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 -1, ptr %arrayidx14.i.i, align 1
  br i1 %tobool.not.i.i, label %for.body.preheader.i.i, label %if.then.i19.i

for.body.preheader.i.i:                           ; preds = %if.end75.i
  %arrayidx193.i.i = getelementptr %struct.rtl_priv, ptr %231, i32 0, i32 15, i32 15, i32 0
  %239 = ptrtoint ptr %arrayidx193.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx193.i.i, align 1, !range !49
  %241 = ptrtoint ptr %add.ptr235 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %add.ptr235, align 1
  %243 = and i8 %242, 127
  %sub201.i.i = add nsw i8 %243, -110
  %call207.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub201.i.i) #4
  %conv208.i.i = zext i8 %call207.i.i to i32
  %arrayidx211.i.i = getelementptr %struct.phy_status_rpt, ptr %add.ptr235, i32 0, i32 6, i32 0
  %244 = ptrtoint ptr %arrayidx211.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %arrayidx211.i.i, align 1
  %246 = sdiv i8 %245, 2
  %arrayidx216.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 37, i32 0
  %247 = ptrtoint ptr %arrayidx216.i.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %246, ptr %arrayidx216.i.i, align 1
  %248 = load i8, ptr %arrayidx211.i.i, align 1
  %249 = sdiv i8 %248, 2
  %div221.i.i = sext i8 %249 to i32
  %arrayidx223.i.i = getelementptr %struct.rtl_priv, ptr %231, i32 0, i32 24, i32 10, i32 0
  %250 = ptrtoint ptr %arrayidx223.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %div221.i.i, ptr %arrayidx223.i.i, align 4
  %arrayidx226.i.i = getelementptr %struct.phy_status_rpt, ptr %add.ptr235, i32 0, i32 3, i32 0
  %251 = ptrtoint ptr %arrayidx226.i.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %arrayidx226.i.i, align 1
  %conv.i.i.i = sext i8 %252 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %cmp.i.i17.i = icmp slt i8 %252, 0
  %sub.i.i.i = sub nsw i32 0, %conv.i.i.i
  %shl.i.i.i = shl nsw i32 %sub.i.i.i, 1
  %253 = lshr i32 %sub.i.i.i, 1
  %add.i.i.i = add i32 %shl.i.i.i, %253
  %or.i.i.i = or i32 %add.i.i.i, 4096
  %shl4.i.i.i = shl nsw i32 %conv.i.i.i, 1
  %shr5.i.i.i = ashr i32 %conv.i.i.i, 1
  %add6.i.i.i = add nsw i32 %shl4.i.i.i, %shr5.i.i.i
  %ret_val.0.i.i.i = select i1 %cmp.i.i17.i, i32 %or.i.i.i, i32 %add6.i.i.i
  %conv7.i.i.i = trunc i32 %ret_val.0.i.i.i to i16
  %arrayidx229.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 33, i32 0
  %254 = ptrtoint ptr %arrayidx229.i.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %conv7.i.i.i, ptr %arrayidx229.i.i, align 2
  %arrayidx231.i.i = getelementptr %struct.phy_status_rpt, ptr %add.ptr235, i32 0, i32 4, i32 0
  %255 = ptrtoint ptr %arrayidx231.i.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %arrayidx231.i.i, align 1
  %conv.i16.i.i = sext i8 %256 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %cmp.i17.i.i = icmp slt i8 %256, 0
  %sub.i18.i.i = sub nsw i32 0, %conv.i16.i.i
  %shl.i19.i.i = shl nsw i32 %sub.i18.i.i, 1
  %257 = lshr i32 %sub.i18.i.i, 1
  %add.i20.i.i = add i32 %shl.i19.i.i, %257
  %or.i21.i.i = or i32 %add.i20.i.i, 4096
  %shl4.i22.i.i = shl nsw i32 %conv.i16.i.i, 1
  %shr5.i23.i.i = ashr i32 %conv.i16.i.i, 1
  %add6.i24.i.i = add nsw i32 %shl4.i22.i.i, %shr5.i23.i.i
  %ret_val.0.i25.i.i = select i1 %cmp.i17.i.i, i32 %or.i21.i.i, i32 %add6.i24.i.i
  %conv7.i26.i.i = trunc i32 %ret_val.0.i25.i.i to i16
  %arrayidx234.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 34, i32 0
  %258 = ptrtoint ptr %arrayidx234.i.i to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 %conv7.i26.i.i, ptr %arrayidx234.i.i, align 2
  %arrayidx237.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 30, i32 0
  %259 = ptrtoint ptr %arrayidx237.i.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %call207.i.i, ptr %arrayidx237.i.i, align 1
  %arrayidx193.1.i.i = getelementptr %struct.rtl_priv, ptr %231, i32 0, i32 15, i32 15, i32 1
  %260 = ptrtoint ptr %arrayidx193.1.i.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %arrayidx193.1.i.i, align 1, !range !49
  %spec.select.1.i.i = add nuw nsw i8 %261, %240
  %arrayidx198.1.i.i = getelementptr [2 x i8], ptr %add.ptr235, i32 0, i32 1
  %262 = ptrtoint ptr %arrayidx198.1.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx198.1.i.i, align 1
  %264 = and i8 %263, 127
  %sub201.1.i.i = add nsw i8 %264, -110
  %call207.1.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub201.1.i.i) #4
  %conv208.1.i.i = zext i8 %call207.1.i.i to i32
  %add209.1.i.i = add nuw nsw i32 %conv208.1.i.i, %conv208.i.i
  %arrayidx211.1.i.i = getelementptr %struct.phy_status_rpt, ptr %add.ptr235, i32 0, i32 6, i32 1
  %265 = ptrtoint ptr %arrayidx211.1.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx211.1.i.i, align 1
  %267 = sdiv i8 %266, 2
  %arrayidx216.1.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 37, i32 1
  %268 = ptrtoint ptr %arrayidx216.1.i.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %267, ptr %arrayidx216.1.i.i, align 1
  %269 = load i8, ptr %arrayidx211.1.i.i, align 1
  %270 = sdiv i8 %269, 2
  %div221.1.i.i = sext i8 %270 to i32
  %arrayidx223.1.i.i = getelementptr %struct.rtl_priv, ptr %231, i32 0, i32 24, i32 10, i32 1
  %271 = ptrtoint ptr %arrayidx223.1.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %div221.1.i.i, ptr %arrayidx223.1.i.i, align 4
  %arrayidx226.1.i.i = getelementptr %struct.phy_status_rpt, ptr %add.ptr235, i32 0, i32 3, i32 1
  %272 = ptrtoint ptr %arrayidx226.1.i.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %arrayidx226.1.i.i, align 1
  %conv.i.1.i.i = sext i8 %273 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %273)
  %cmp.i.1.i.i = icmp slt i8 %273, 0
  %sub.i.1.i.i = sub nsw i32 0, %conv.i.1.i.i
  %shl.i.1.i.i = shl nsw i32 %sub.i.1.i.i, 1
  %274 = lshr i32 %sub.i.1.i.i, 1
  %add.i.1.i.i = add i32 %shl.i.1.i.i, %274
  %or.i.1.i.i = or i32 %add.i.1.i.i, 4096
  %shl4.i.1.i.i = shl nsw i32 %conv.i.1.i.i, 1
  %shr5.i.1.i.i = ashr i32 %conv.i.1.i.i, 1
  %add6.i.1.i.i = add nsw i32 %shl4.i.1.i.i, %shr5.i.1.i.i
  %ret_val.0.i.1.i.i = select i1 %cmp.i.1.i.i, i32 %or.i.1.i.i, i32 %add6.i.1.i.i
  %conv7.i.1.i.i = trunc i32 %ret_val.0.i.1.i.i to i16
  %arrayidx229.1.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 33, i32 1
  %275 = ptrtoint ptr %arrayidx229.1.i.i to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 %conv7.i.1.i.i, ptr %arrayidx229.1.i.i, align 2
  %arrayidx231.1.i.i = getelementptr %struct.phy_status_rpt, ptr %add.ptr235, i32 0, i32 4, i32 1
  %276 = ptrtoint ptr %arrayidx231.1.i.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %arrayidx231.1.i.i, align 1
  %conv.i16.1.i.i = sext i8 %277 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %277)
  %cmp.i17.1.i.i = icmp slt i8 %277, 0
  %sub.i18.1.i.i = sub nsw i32 0, %conv.i16.1.i.i
  %shl.i19.1.i.i = shl nsw i32 %sub.i18.1.i.i, 1
  %278 = lshr i32 %sub.i18.1.i.i, 1
  %add.i20.1.i.i = add i32 %shl.i19.1.i.i, %278
  %or.i21.1.i.i = or i32 %add.i20.1.i.i, 4096
  %shl4.i22.1.i.i = shl nsw i32 %conv.i16.1.i.i, 1
  %shr5.i23.1.i.i = ashr i32 %conv.i16.1.i.i, 1
  %add6.i24.1.i.i = add nsw i32 %shl4.i22.1.i.i, %shr5.i23.1.i.i
  %ret_val.0.i25.1.i.i = select i1 %cmp.i17.1.i.i, i32 %or.i21.1.i.i, i32 %add6.i24.1.i.i
  %conv7.i26.1.i.i = trunc i32 %ret_val.0.i25.1.i.i to i16
  %arrayidx234.1.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 34, i32 1
  %279 = ptrtoint ptr %arrayidx234.1.i.i to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 %conv7.i26.1.i.i, ptr %arrayidx234.1.i.i, align 2
  %arrayidx237.1.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 30, i32 1
  %280 = ptrtoint ptr %arrayidx237.1.i.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %call207.1.i.i, ptr %arrayidx237.1.i.i, align 1
  %pwdb_all239.i.i = getelementptr inbounds %struct.rx_fwinfo_8821ae, ptr %add.ptr235, i32 0, i32 1
  %281 = ptrtoint ptr %pwdb_all239.i.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %pwdb_all239.i.i, align 1
  %283 = lshr i8 %282, 1
  %sub243.i.i = add nsw i8 %283, -110
  %call245.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub243.i.i) #4
  %conv246.i.i = zext i8 %call245.i.i to i32
  %rx_pwdb_all247.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 29
  %284 = ptrtoint ptr %rx_pwdb_all247.i.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %conv246.i.i, ptr %rx_pwdb_all247.i.i, align 4
  %rxpower.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 17
  %285 = ptrtoint ptr %rxpower.i.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %sub243.i.i, ptr %rxpower.i.i, align 8
  %conv248.i.i = sext i8 %sub243.i.i to i32
  %recvsignalpower249.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 16
  %286 = ptrtoint ptr %recvsignalpower249.i.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %conv248.i.i, ptr %recvsignalpower249.i.i, align 4
  %287 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %is_ht, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %288)
  %tobool250.not.i.i = icmp eq i8 %288, 0
  br i1 %tobool250.not.i.i, label %for.body.preheader.i.i.lor.lhs.false.i.i_crit_edge, label %land.lhs.true252.i.i

for.body.preheader.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false.i.i

if.then.i19.i:                                    ; preds = %if.end75.i
  %cfosho.i.i = getelementptr inbounds %struct.phy_status_rpt, ptr %add.ptr235, i32 0, i32 3
  %289 = ptrtoint ptr %cfosho.i.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %cfosho.i.i, align 1
  %cck_high_power.i.i = getelementptr inbounds %struct.rtl_priv, ptr %231, i32 0, i32 14, i32 39
  %291 = ptrtoint ptr %cck_high_power.i.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %cck_high_power.i.i, align 1
  %293 = lshr i8 %290, 5
  %294 = and i8 %290, 31
  %hw_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %231, i32 0, i32 10, i32 10
  %295 = ptrtoint ptr %hw_type.i.i to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %hw_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %296)
  %cmp.i18.i = icmp eq i16 %296, 14
  %conv24.i.i = zext i8 %293 to i32
  br i1 %cmp.i18.i, label %if.then23.i.i, label %if.else116.i.i

if.then23.i.i:                                    ; preds = %if.then.i19.i
  %297 = zext i32 %conv24.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %297, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %conv24.i.i, label %if.then23.unreachabledefault.i.i [
    i32 7, label %sw.bb.i.i
    i32 6, label %sw.bb31.i.i
    i32 5, label %sw.bb37.i.i
    i32 4, label %sw.bb43.i.i
    i32 3, label %sw.bb49.i.i
    i32 2, label %sw.bb55.i.i
    i32 1, label %sw.bb70.i.i
    i32 0, label %sw.bb75.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %294)
  %cmp26.i.i = icmp ult i8 %294, 28
  br i1 %cmp26.i.i, label %if.then28.i.i, label %sw.bb.i.i.sw.epilog.i.i_crit_edge

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

if.then28.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg12.i.i = mul nsw i8 %294, -2
  %add.i.i = add nsw i8 %.neg12.i.i, -46
  br label %sw.epilog.i.i

sw.bb31.i.i:                                      ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg11.i.i = mul nsw i8 %294, -2
  %add35.i.i = add nsw i8 %.neg11.i.i, -44
  br label %sw.epilog.i.i

sw.bb37.i.i:                                      ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg10.i.i = mul nsw i8 %294, -2
  %add41.i.i = add nsw i8 %.neg10.i.i, -28
  br label %sw.epilog.i.i

sw.bb43.i.i:                                      ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg9.i.i = mul nsw i8 %294, -2
  %add47.i.i = add nsw i8 %.neg9.i.i, -22
  br label %sw.epilog.i.i

sw.bb49.i.i:                                      ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg8.i.i = mul nsw i8 %294, -2
  %add53.i.i = add nsw i8 %.neg8.i.i, -10
  br label %sw.epilog.i.i

sw.bb55.i.i:                                      ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %292)
  %tobool56.not.i.i = icmp eq i8 %292, 0
  %.neg6.i.i = mul nsw i8 %294, -2
  br i1 %tobool56.not.i.i, label %sw.epilog.thread.i.i, label %sw.epilog.thread34.i.i

sw.epilog.thread34.i.i:                           ; preds = %sw.bb55.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %add8136.i.i = add nsw i8 %.neg6.i.i, 4
  %call37.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %add8136.i.i) #4
  br label %if.end155.i.i

sw.epilog.thread.i.i:                             ; preds = %sw.bb55.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %add8129.i.i = add nsw i8 %.neg6.i.i, 10
  %call30.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %add8129.i.i) #4
  br label %if.then84.i.i

sw.bb70.i.i:                                      ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg5.i.i = mul nsw i8 %294, -2
  %sub73.i.i = add nsw i8 %.neg5.i.i, 8
  br label %sw.epilog.i.i

sw.bb75.i.i:                                      ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg4.i.i = mul nsw i8 %294, -2
  %sub78.i.i = add nsw i8 %.neg4.i.i, 14
  br label %sw.epilog.i.i

if.then23.unreachabledefault.i.i:                 ; preds = %if.then23.i.i
  unreachable

sw.epilog.i.i:                                    ; preds = %sw.bb75.i.i, %sw.bb70.i.i, %sw.bb49.i.i, %sw.bb43.i.i, %sw.bb37.i.i, %sw.bb31.i.i, %if.then28.i.i, %sw.bb.i.i.sw.epilog.i.i_crit_edge
  %rx_pwr_all.0.i.i = phi i8 [ %sub78.i.i, %sw.bb75.i.i ], [ %sub73.i.i, %sw.bb70.i.i ], [ %add53.i.i, %sw.bb49.i.i ], [ %add47.i.i, %sw.bb43.i.i ], [ %add41.i.i, %sw.bb37.i.i ], [ %add35.i.i, %sw.bb31.i.i ], [ %add.i.i, %if.then28.i.i ], [ -100, %sw.bb.i.i.sw.epilog.i.i_crit_edge ]
  %add81.i.i = add nsw i8 %rx_pwr_all.0.i.i, 6
  %call.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %add81.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %292)
  %tobool83.not.i.i = icmp eq i8 %292, 0
  br i1 %tobool83.not.i.i, label %sw.epilog.i.i.if.then84.i.i_crit_edge, label %sw.epilog.i.i.if.end155.i.i_crit_edge

sw.epilog.i.i.if.end155.i.i_crit_edge:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end155.i.i

sw.epilog.i.i.if.then84.i.i_crit_edge:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then84.i.i

if.then84.i.i:                                    ; preds = %sw.epilog.i.i.if.then84.i.i_crit_edge, %sw.epilog.thread.i.i
  %call33.i.i = phi i8 [ %call30.i.i, %sw.epilog.thread.i.i ], [ %call.i.i, %sw.epilog.i.i.if.then84.i.i_crit_edge ]
  %add8132.i.i = phi i8 [ %add8129.i.i, %sw.epilog.thread.i.i ], [ %add81.i.i, %sw.epilog.i.i.if.then84.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %call33.i.i)
  %cmp86.i.i = icmp ugt i8 %call33.i.i, 79
  br i1 %cmp86.i.i, label %if.then88.i.i, label %if.else97.i.i

if.then88.i.i:                                    ; preds = %if.then84.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv85.i.i = zext i8 %call33.i.i to i32
  %sub90.i.i = add nsw i32 %conv85.i.i, -80
  %shl.i.i = shl nuw nsw i32 %sub90.i.i, 1
  %298 = lshr i32 %sub90.i.i, 1
  %add94.i.i = add nuw nsw i32 %shl.i.i, %298
  %299 = trunc i32 %add94.i.i to i8
  %conv96.i.i = add i8 %299, 80
  br label %if.end109.i.i

if.else97.i.i:                                    ; preds = %if.then84.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %call33.i.i)
  %cmp99.not.i.i = icmp ne i8 %call33.i.i, 79
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %call33.i.i)
  %cmp102.i.i = icmp ugt i8 %call33.i.i, 19
  %or.cond.i.i = and i1 %cmp99.not.i.i, %cmp102.i.i
  %add106.i.i = add nuw nsw i8 %call33.i.i, 3
  %spec.select15.i.i = select i1 %or.cond.i.i, i8 %add106.i.i, i8 %call33.i.i
  br label %if.end109.i.i

if.end109.i.i:                                    ; preds = %if.else97.i.i, %if.then88.i.i
  %pwdb_all.0.i.i = phi i8 [ %conv96.i.i, %if.then88.i.i ], [ %spec.select15.i.i, %if.else97.i.i ]
  %300 = tail call i8 @llvm.umin.i8(i8 %pwdb_all.0.i.i, i8 100) #4
  br label %if.end155.i.i

if.else116.i.i:                                   ; preds = %if.then.i19.i
  %301 = zext i32 %conv24.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %301, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %conv24.i.i, label %if.else116.i.i.sw.epilog153.i.i_crit_edge [
    i32 5, label %sw.bb118.i.i
    i32 4, label %sw.bb125.i.i
    i32 2, label %sw.bb132.i.i
    i32 1, label %sw.bb139.i.i
    i32 0, label %sw.bb146.i.i
  ]

if.else116.i.i.sw.epilog153.i.i_crit_edge:        ; preds = %if.else116.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog153.i.i

sw.bb118.i.i:                                     ; preds = %if.else116.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg3.i.i = mul nsw i8 %294, -2
  %sub123.i.i = add nsw i8 %.neg3.i.i, -38
  br label %sw.epilog153.i.i

sw.bb125.i.i:                                     ; preds = %if.else116.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg2.i.i = mul nsw i8 %294, -2
  %sub130.i.i = add nsw i8 %.neg2.i.i, -30
  br label %sw.epilog153.i.i

sw.bb132.i.i:                                     ; preds = %if.else116.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg1.i.i = mul nsw i8 %294, -2
  %sub137.i.i = add nsw i8 %.neg1.i.i, -17
  br label %sw.epilog153.i.i

sw.bb139.i.i:                                     ; preds = %if.else116.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %302 = shl nuw nsw i8 %294, 1
  %sub144.i.i = xor i8 %302, -1
  br label %sw.epilog153.i.i

sw.bb146.i.i:                                     ; preds = %if.else116.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg.i.i = mul nsw i8 %294, -2
  %sub151.i.i = add nsw i8 %.neg.i.i, 15
  br label %sw.epilog153.i.i

sw.epilog153.i.i:                                 ; preds = %sw.bb146.i.i, %sw.bb139.i.i, %sw.bb132.i.i, %sw.bb125.i.i, %sw.bb118.i.i, %if.else116.i.i.sw.epilog153.i.i_crit_edge
  %rx_pwr_all.1.i.i = phi i8 [ 0, %if.else116.i.i.sw.epilog153.i.i_crit_edge ], [ %sub151.i.i, %sw.bb146.i.i ], [ %sub144.i.i, %sw.bb139.i.i ], [ %sub137.i.i, %sw.bb132.i.i ], [ %sub130.i.i, %sw.bb125.i.i ], [ %sub123.i.i, %sw.bb118.i.i ]
  %call154.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %rx_pwr_all.1.i.i) #4
  br label %if.end155.i.i

if.end155.i.i:                                    ; preds = %sw.epilog153.i.i, %if.end109.i.i, %sw.epilog.i.i.if.end155.i.i_crit_edge, %sw.epilog.thread34.i.i
  %rx_pwr_all.2.i.i = phi i8 [ %add81.i.i, %sw.epilog.i.i.if.end155.i.i_crit_edge ], [ %add8132.i.i, %if.end109.i.i ], [ %rx_pwr_all.1.i.i, %sw.epilog153.i.i ], [ %add8136.i.i, %sw.epilog.thread34.i.i ]
  %pwdb_all.1.i.i = phi i8 [ %call.i.i, %sw.epilog.i.i.if.end155.i.i_crit_edge ], [ %300, %if.end109.i.i ], [ %call154.i.i, %sw.epilog153.i.i ], [ %call37.i.i, %sw.epilog.thread34.i.i ]
  %conv156.i.i = zext i8 %pwdb_all.1.i.i to i32
  %rx_pwdb_all.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 29
  %303 = ptrtoint ptr %rx_pwdb_all.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %conv156.i.i, ptr %rx_pwdb_all.i.i, align 4
  %conv157.i.i = sext i8 %rx_pwr_all.2.i.i to i32
  %recvsignalpower.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 16
  %304 = ptrtoint ptr %recvsignalpower.i.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %conv157.i.i, ptr %recvsignalpower.i.i, align 4
  br i1 %228, label %if.then159.i.i, label %if.end155.i.i.if.end346.sink.split.i.i_crit_edge

if.end155.i.i.if.end346.sink.split.i.i_crit_edge: ; preds = %if.end155.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end346.sink.split.i.i

if.then159.i.i:                                   ; preds = %if.end155.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %pwdb_all.1.i.i)
  %cmp161.i.i = icmp ugt i8 %pwdb_all.1.i.i, 40
  br i1 %cmp161.i.i, label %if.then159.i.i.if.end182.i.i_crit_edge, label %if.else164.i.i

if.then159.i.i.if.end182.i.i_crit_edge:           ; preds = %if.then159.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end182.i.i

if.else164.i.i:                                   ; preds = %if.then159.i.i
  %pwdb_all165.i.i = getelementptr inbounds %struct.phy_status_rpt, ptr %add.ptr235, i32 0, i32 2
  %305 = ptrtoint ptr %pwdb_all165.i.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %pwdb_all165.i.i, align 1
  %conv166.i.i = zext i8 %306 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %306)
  %cmp167.i.i = icmp ugt i8 %306, 64
  br i1 %cmp167.i.i, label %if.else164.i.i.if.end182.i.i_crit_edge, label %if.else170.i.i

if.else164.i.i.if.end182.i.i_crit_edge:           ; preds = %if.else164.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end182.i.i

if.else170.i.i:                                   ; preds = %if.else164.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %306)
  %cmp172.i.i = icmp ult i8 %306, 20
  br i1 %cmp172.i.i, label %if.else170.i.i.if.end182.i.i_crit_edge, label %if.else175.i.i

if.else170.i.i.if.end182.i.i_crit_edge:           ; preds = %if.else170.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end182.i.i

if.else175.i.i:                                   ; preds = %if.else170.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub177.i.i = sub nsw i16 64, %conv166.i.i
  %mul178.i.i = mul nsw i16 %sub177.i.i, 100
  %div43.i.i = sdiv i16 %mul178.i.i, 44
  %conv179.i.i = trunc i16 %div43.i.i to i8
  br label %if.end182.i.i

if.end182.i.i:                                    ; preds = %if.else175.i.i, %if.else170.i.i.if.end182.i.i_crit_edge, %if.else164.i.i.if.end182.i.i_crit_edge, %if.then159.i.i.if.end182.i.i_crit_edge
  %sq.0.i.i = phi i8 [ %conv179.i.i, %if.else175.i.i ], [ 100, %if.then159.i.i.if.end182.i.i_crit_edge ], [ 0, %if.else164.i.i.if.end182.i.i_crit_edge ], [ 100, %if.else170.i.i.if.end182.i.i_crit_edge ]
  %signalquality.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 15
  %307 = ptrtoint ptr %signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 %sq.0.i.i, ptr %signalquality.i.i, align 8
  %308 = ptrtoint ptr %rx_mimo_signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %sq.0.i.i, ptr %rx_mimo_signalquality.i.i, align 4
  %309 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 -1, ptr %arrayidx14.i.i, align 1
  br label %if.end346.sink.split.i.i

land.lhs.true252.i.i:                             ; preds = %for.body.preheader.i.i
  %310 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %rate, align 1
  %312 = add i8 %311, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %312)
  %313 = icmp ult i8 %312, 8
  br i1 %313, label %land.lhs.true252.i.i.if.end275.i.i_crit_edge, label %land.lhs.true252.i.i.lor.lhs.false.i.i_crit_edge

land.lhs.true252.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %land.lhs.true252.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false.i.i

land.lhs.true252.i.i.if.end275.i.i_crit_edge:     ; preds = %land.lhs.true252.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end275.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true252.i.i.lor.lhs.false.i.i_crit_edge, %for.body.preheader.i.i.lor.lhs.false.i.i_crit_edge
  %314 = ptrtoint ptr %is_vht to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %is_vht, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %315)
  %tobool261.not.i.i = icmp eq i8 %315, 0
  br i1 %tobool261.not.i.i, label %lor.lhs.false.i.i.if.else274.i.i_crit_edge, label %land.lhs.true263.i.i

lor.lhs.false.i.i.if.else274.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else274.i.i

land.lhs.true263.i.i:                             ; preds = %lor.lhs.false.i.i
  %316 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %rate, align 1
  %318 = add i8 %317, -54
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %318)
  %319 = icmp ult i8 %318, 10
  br i1 %319, label %land.lhs.true263.i.i.if.end275.i.i_crit_edge, label %land.lhs.true263.i.i.if.else274.i.i_crit_edge

land.lhs.true263.i.i.if.else274.i.i_crit_edge:    ; preds = %land.lhs.true263.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else274.i.i

land.lhs.true263.i.i.if.end275.i.i_crit_edge:     ; preds = %land.lhs.true263.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end275.i.i

if.else274.i.i:                                   ; preds = %land.lhs.true263.i.i.if.else274.i.i_crit_edge, %lor.lhs.false.i.i.if.else274.i.i_crit_edge
  br label %if.end275.i.i

if.end275.i.i:                                    ; preds = %if.else274.i.i, %land.lhs.true263.i.i.if.end275.i.i_crit_edge, %land.lhs.true252.i.i.if.end275.i.i_crit_edge
  %exitcond.peel.not.i.i = phi i1 [ false, %land.lhs.true252.i.i.if.end275.i.i_crit_edge ], [ false, %land.lhs.true263.i.i.if.end275.i.i_crit_edge ], [ true, %if.else274.i.i ]
  %max_spatial_stream.0.i.i = phi i32 [ 2, %land.lhs.true252.i.i.if.end275.i.i_crit_edge ], [ 2, %land.lhs.true263.i.i.if.end275.i.i_crit_edge ], [ 1, %if.else274.i.i ]
  %arrayidx283.peel.i.i = getelementptr %struct.phy_status_rpt, ptr %add.ptr235, i32 0, i32 5, i32 0
  %320 = ptrtoint ptr %arrayidx283.peel.i.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx283.peel.i.i, align 1
  %call284.peel.i.i = tail call zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext %321) #4
  br i1 %228, label %if.end296.peel.i.i, label %if.end275.i.i.for.inc303.peel.i.i_crit_edge

if.end275.i.i.for.inc303.peel.i.i_crit_edge:      ; preds = %if.end275.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc303.peel.i.i

if.end296.peel.i.i:                               ; preds = %if.end275.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %322 = ptrtoint ptr %arrayidx283.peel.i.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx283.peel.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %323)
  %cmp.i27.peel.i.i = icmp eq i8 %323, -128
  %324 = tail call i8 @llvm.abs.i8(i8 %323, i1 false) #4
  %.op.i.peel.i.i = ashr i8 %324, 1
  %325 = select i1 %cmp.i27.peel.i.i, i8 63, i8 %.op.i.peel.i.i
  %signalquality295.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 15
  %326 = ptrtoint ptr %signalquality295.i.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %call284.peel.i.i, ptr %signalquality295.i.i, align 8
  %327 = ptrtoint ptr %rx_mimo_signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 %call284.peel.i.i, ptr %rx_mimo_signalquality.i.i, align 1
  %arrayidx301.peel.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 32, i32 0
  %328 = ptrtoint ptr %arrayidx301.peel.i.i to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 %325, ptr %arrayidx301.peel.i.i, align 1
  br label %for.inc303.peel.i.i

for.inc303.peel.i.i:                              ; preds = %if.end296.peel.i.i, %if.end275.i.i.for.inc303.peel.i.i_crit_edge
  br i1 %exitcond.peel.not.i.i, label %for.inc303.peel.i.i.for.end305.i.i_crit_edge, label %for.inc303.peel.i.i.for.body281.i.i_crit_edge

for.inc303.peel.i.i.for.body281.i.i_crit_edge:    ; preds = %for.inc303.peel.i.i
  br label %for.body281.i.i

for.inc303.peel.i.i.for.end305.i.i_crit_edge:     ; preds = %for.inc303.peel.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end305.i.i

for.body281.i.i:                                  ; preds = %for.inc303.i.i.for.body281.i.i_crit_edge, %for.inc303.peel.i.i.for.body281.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.inc303.i.i.for.body281.i.i_crit_edge ], [ 1, %for.inc303.peel.i.i.for.body281.i.i_crit_edge ]
  %arrayidx283.i.i = getelementptr %struct.phy_status_rpt, ptr %add.ptr235, i32 0, i32 5, i32 %indvars.iv.i.i
  %329 = ptrtoint ptr %arrayidx283.i.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %arrayidx283.i.i, align 1
  %call284.i.i = tail call zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext %330) #4
  br i1 %228, label %if.end296.i.i, label %for.body281.i.i.for.inc303.i.i_crit_edge

for.body281.i.i.for.inc303.i.i_crit_edge:         ; preds = %for.body281.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc303.i.i

if.end296.i.i:                                    ; preds = %for.body281.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %331 = ptrtoint ptr %arrayidx283.i.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx283.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %332)
  %cmp.i27.i.i = icmp eq i8 %332, -128
  %333 = tail call i8 @llvm.abs.i8(i8 %332, i1 false) #4
  %.op.i.i.i = ashr i8 %333, 1
  %334 = select i1 %cmp.i27.i.i, i8 63, i8 %.op.i.i.i
  %arrayidx299.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 31, i32 %indvars.iv.i.i
  %335 = ptrtoint ptr %arrayidx299.i.i to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 %call284.i.i, ptr %arrayidx299.i.i, align 1
  %arrayidx301.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 32, i32 %indvars.iv.i.i
  %336 = ptrtoint ptr %arrayidx301.i.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %334, ptr %arrayidx301.i.i, align 1
  br label %for.inc303.i.i

for.inc303.i.i:                                   ; preds = %if.end296.i.i, %for.body281.i.i.for.inc303.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %max_spatial_stream.0.i.i
  br i1 %exitcond.not.i.i, label %for.inc303.i.i.for.end305.i.i_crit_edge, label %for.inc303.i.i.for.body281.i.i_crit_edge, !llvm.loop !50

for.inc303.i.i.for.body281.i.i_crit_edge:         ; preds = %for.inc303.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body281.i.i

for.inc303.i.i.for.end305.i.i_crit_edge:          ; preds = %for.inc303.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end305.i.i

for.end305.i.i:                                   ; preds = %for.inc303.i.i.for.end305.i.i_crit_edge, %for.inc303.peel.i.i.for.end305.i.i_crit_edge
  br i1 %228, label %for.body312.preheader.i.i, label %for.end305.i.i.if.else335.i.i_crit_edge

for.end305.i.i.if.else335.i.i_crit_edge:          ; preds = %for.end305.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else335.i.i

for.body312.preheader.i.i:                        ; preds = %for.end305.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %337 = ptrtoint ptr %arrayidx231.i.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %arrayidx231.i.i, align 1
  %conv316.i.i = sext i8 %338 to i32
  %339 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %priv, align 8
  %arrayidx321.i.i = getelementptr %struct.rtl_priv, ptr %340, i32 0, i32 15, i32 54, i32 0
  %341 = ptrtoint ptr %arrayidx321.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %conv316.i.i, ptr %arrayidx321.i.i, align 4
  %342 = ptrtoint ptr %arrayidx231.1.i.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %arrayidx231.1.i.i, align 1
  %conv316.1.i.i = sext i8 %343 to i32
  %344 = load ptr, ptr %priv, align 8
  %arrayidx321.1.i.i = getelementptr %struct.rtl_priv, ptr %344, i32 0, i32 15, i32 54, i32 1
  %345 = ptrtoint ptr %arrayidx321.1.i.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %conv316.1.i.i, ptr %arrayidx321.1.i.i, align 4
  %346 = load ptr, ptr %priv, align 8
  %packet_count.i.i = getelementptr inbounds %struct.rtl_priv, ptr %346, i32 0, i32 15, i32 58
  %347 = ptrtoint ptr %packet_count.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %packet_count.i.i, align 8
  %inc327.i.i = add i32 %348, 1
  store i32 %inc327.i.i, ptr %packet_count.i.i, align 8
  br label %if.else335.i.i

if.else335.i.i:                                   ; preds = %for.body312.preheader.i.i, %for.end305.i.i.if.else335.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.1.i.i)
  %cmp337.not.i.i = icmp eq i8 %spec.select.1.i.i, 0
  br i1 %cmp337.not.i.i, label %if.else335.i.i.translate_rx_signal_stuff.exit_crit_edge, label %if.then339.i.i

if.else335.i.i.translate_rx_signal_stuff.exit_crit_edge: ; preds = %if.else335.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %translate_rx_signal_stuff.exit

if.then339.i.i:                                   ; preds = %if.else335.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv336.i.i = zext i8 %spec.select.1.i.i to i32
  %div341.i.i = udiv i32 %add209.1.i.i, %conv336.i.i
  br label %if.end346.sink.split.i.i

if.end346.sink.split.i.i:                         ; preds = %if.then339.i.i, %if.end182.i.i, %if.end155.i.i.if.end346.sink.split.i.i_crit_edge
  %div341.sink.i.i = phi i32 [ %div341.i.i, %if.then339.i.i ], [ %conv156.i.i, %if.end182.i.i ], [ %conv156.i.i, %if.end155.i.i.if.end346.sink.split.i.i_crit_edge ]
  %call342.i.i = tail call i32 @rtl_signal_scale_mapping(ptr noundef %hw, i32 noundef %div341.sink.i.i) #4
  %conv343.i.i = trunc i32 %call342.i.i to i8
  %signalstrength344.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 18
  %349 = ptrtoint ptr %signalstrength344.i.i to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 %conv343.i.i, ptr %signalstrength344.i.i, align 1
  br label %translate_rx_signal_stuff.exit

translate_rx_signal_stuff.exit:                   ; preds = %if.end346.sink.split.i.i, %if.else335.i.i.translate_rx_signal_stuff.exit_crit_edge
  %antidx_anta.i.i = getelementptr inbounds %struct.phy_status_rpt, ptr %add.ptr235, i32 0, i32 14
  %350 = ptrtoint ptr %antidx_anta.i.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %bf.load.i.i = load i8, ptr %antidx_anta.i.i, align 1
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 5
  %antsel_rx_keep_0.i.i = getelementptr inbounds %struct.rtl_priv, ptr %231, i32 0, i32 15, i32 72, i32 1
  %351 = ptrtoint ptr %antsel_rx_keep_0.i.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 %bf.lshr.i.i, ptr %antsel_rx_keep_0.i.i, align 2
  %bf.load347.i.i = load i8, ptr %antidx_anta.i.i, align 1
  %bf.lshr348.i.i = lshr i8 %bf.load347.i.i, 2
  %bf.clear.i.i = and i8 %bf.lshr348.i.i, 7
  %antsel_rx_keep_1.i.i = getelementptr inbounds %struct.rtl_priv, ptr %231, i32 0, i32 15, i32 72, i32 2
  %352 = ptrtoint ptr %antsel_rx_keep_1.i.i to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 %bf.clear.i.i, ptr %antsel_rx_keep_1.i.i, align 1
  tail call void @rtl_process_phyinfo(ptr noundef %hw, ptr noundef %add.ptr3.i, ptr noundef %status) #4
  br label %if.end236

if.end236:                                        ; preds = %translate_rx_signal_stuff.exit, %if.end220.if.end236_crit_edge
  %recvsignalpower = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 16
  %353 = ptrtoint ptr %recvsignalpower to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %recvsignalpower, align 4
  %355 = trunc i32 %354 to i8
  %conv237 = add i8 %355, 10
  %signal = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 13
  %356 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 %conv237, ptr %signal, align 2
  %357 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %100, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %358)
  %cmp240 = icmp eq i8 %358, 2
  br i1 %cmp240, label %if.then242, label %if.end236.if.end247_crit_edge

if.end236.if.end247_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end247

if.then242:                                       ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #6
  %359 = ptrtoint ptr %add.ptr.i354 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %add.ptr.i354, align 4
  %361 = tail call i32 @llvm.bswap.i32(i32 %360) #4
  %macid_valid_entry = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 52
  %362 = ptrtoint ptr %macid_valid_entry to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 %361, ptr %macid_valid_entry, align 8
  %363 = ptrtoint ptr %add.ptr.i358 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %add.ptr.i358, align 4
  %365 = tail call i32 @llvm.bswap.i32(i32 %364) #4
  %arrayidx246 = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 52, i32 1
  %366 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %365, ptr %arrayidx246, align 4
  br label %if.end247

if.end247:                                        ; preds = %if.then242, %if.end236.if.end247_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtlwifi_rate_mapping(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_tx_fill_desc(ptr noundef %hw, ptr nocapture noundef readonly %hdr, ptr noundef %pdesc8, ptr nocapture noundef readnone %txbd, ptr noundef %info, ptr noundef %sta, ptr noundef %skb, i8 noundef zeroext %hw_queue, ptr noundef %ptcb_desc) local_unnamed_addr #0 align 64 {
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
  br i1 %cmp.i.i, label %entry._rtl8821ae_map_hwqueue_to_fwqueue.exit_crit_edge, label %if.end.i, !prof !52

entry._rtl8821ae_map_hwqueue_to_fwqueue.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl8821ae_map_hwqueue_to_fwqueue.exit

if.end.i:                                         ; preds = %entry
  %11 = trunc i16 %9 to i12
  %trunc.i = and i12 %11, -1024
  %12 = zext i12 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.24)
  switch i12 %trunc.i, label %if.end6.i [
    i12 0, label %if.end.i._rtl8821ae_map_hwqueue_to_fwqueue.exit_crit_edge
    i12 1024, label %if.end.i._rtl8821ae_map_hwqueue_to_fwqueue.exit_crit_edge455
  ]

if.end.i._rtl8821ae_map_hwqueue_to_fwqueue.exit_crit_edge455: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl8821ae_map_hwqueue_to_fwqueue.exit

if.end.i._rtl8821ae_map_hwqueue_to_fwqueue.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl8821ae_map_hwqueue_to_fwqueue.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %13 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %priority.i, align 4
  %phi.cast = shl i32 %14, 16
  %phi.bo454 = and i32 %phi.cast, 2031616
  br label %_rtl8821ae_map_hwqueue_to_fwqueue.exit

_rtl8821ae_map_hwqueue_to_fwqueue.exit:           ; preds = %if.end6.i, %if.end.i._rtl8821ae_map_hwqueue_to_fwqueue.exit_crit_edge, %if.end.i._rtl8821ae_map_hwqueue_to_fwqueue.exit_crit_edge455, %entry._rtl8821ae_map_hwqueue_to_fwqueue.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo454, %if.end6.i ], [ 1048576, %entry._rtl8821ae_map_hwqueue_to_fwqueue.exit_crit_edge ], [ 1179648, %if.end.i._rtl8821ae_map_hwqueue_to_fwqueue.exit_crit_edge ], [ 1179648, %if.end.i._rtl8821ae_map_hwqueue_to_fwqueue.exit_crit_edge455 ]
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 5
  %15 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %seq_ctrl, align 2
  %17 = and i16 %16, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp = icmp eq i16 %17, 0
  %18 = and i16 %16, -3841
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %20 = lshr exact i16 %19, 4
  tail call void @rtl_get_tcb_desc(ptr noundef %hw, ptr noundef %info, ptr noundef %sta, ptr noundef %skb, ptr noundef %ptcb_desc) #4
  %earlymode_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 58
  %21 = ptrtoint ptr %earlymode_enable to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %earlymode_enable, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %_rtl8821ae_map_hwqueue_to_fwqueue.exit.if.end_crit_edge, label %if.then

_rtl8821ae_map_hwqueue_to_fwqueue.exit.if.end_crit_edge: ; preds = %_rtl8821ae_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %_rtl8821ae_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call17 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #4
  %23 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 0, ptr %24, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %_rtl8821ae_map_hwqueue_to_fwqueue.exit.if.end_crit_edge
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %30 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.i, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %31) #4
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !53

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev19) #4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44, i32 3
  %32 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev19, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %35, %if.end.i.i ], [ %33, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #4
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @debug_dma_map_single(ptr noundef %dev19, ptr noundef %31, i32 noundef %27) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %36 = load ptr, ptr @mem_map, align 4
  %37 = ptrtoint ptr %31 to i32
  %sub.i = add i32 %37, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %36, i32 %shr.i
  %and.i = and i32 %37, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev19, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %27, i32 noundef 1, i32 noundef 0) #4
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i308 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev24, i32 noundef %retval.0.i308) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i308)
  %cmp.i = icmp eq i32 %retval.0.i308, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end28

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %dma_map_single_attrs.exit
  %40 = call ptr @memset(ptr %pdesc8, i32 0, i32 40)
  %41 = and i16 %3, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 18432, i16 %41)
  %cmp.i309 = icmp eq i16 %41, 18432
  br i1 %cmp.i309, label %if.end28.if.then36_crit_edge, label %lor.lhs.false

if.end28.if.then36_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then36

lor.lhs.false:                                    ; preds = %if.end28
  %42 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %42)
  %cmp.i310 = icmp eq i16 %42, 1024
  %43 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %extract.t = icmp eq i16 %43, 0
  %brmerge = select i1 %cmp.i310, i1 true, i1 %cmp
  %.mux = or i1 %cmp.i310, %extract.t
  br i1 %brmerge, label %lor.lhs.false.if.then36_crit_edge, label %lor.lhs.false.if.end155_crit_edge

lor.lhs.false.if.end155_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end155

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false.if.then36_crit_edge, %if.end28.if.then36_crit_edge
  %lastseg.0.off0452 = phi i1 [ true, %if.end28.if.then36_crit_edge ], [ %.mux, %lor.lhs.false.if.then36_crit_edge ]
  %44 = ptrtoint ptr %earlymode_enable to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %earlymode_enable, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool38.not = icmp eq i8 %45, 0
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.then36
  %add.ptr.i311 = getelementptr i32, ptr %pdesc8, i32 1
  %46 = ptrtoint ptr %add.ptr.i311 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i311, align 4
  %and.i.i = and i32 %47, -32
  %or.i.i = or i32 %and.i.i, 1
  store i32 %or.i.i, ptr %add.ptr.i311, align 4
  %48 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pdesc8, align 4
  %and.i.i312 = and i32 %49, -65281
  %or.i.i313 = or i32 %and.i.i312, 12288
  store i32 %or.i.i313, ptr %pdesc8, align 4
  %empkt_num = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 8
  %50 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool40.not = icmp eq i8 %51, 0
  br i1 %tobool40.not, label %if.then39.if.end46_crit_edge, label %if.then41

if.then39.if.end46_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.then41:                                        ; preds = %if.then39
  %conv43 = zext i8 %51 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.6, i32 noundef %conv43) #4
  %52 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 8)
  store i64 0, ptr %53, align 4
  %55 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %empkt_num, align 1
  %conv.i314 = zext i8 %56 to i32
  %57 = shl nuw i32 %conv.i314, 24
  %58 = and i32 %57, 251658240
  store i32 %58, ptr %53, align 4
  %59 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp.i315 = icmp eq i8 %59, 1
  %empkt_len.i = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9
  %60 = ptrtoint ptr %empkt_len.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %empkt_len.i, align 4
  br i1 %cmp.i315, label %if.then41.set_earlymode_len0.exit.i_crit_edge, label %if.else.i

if.then41.set_earlymode_len0.exit.i_crit_edge:    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_earlymode_len0.exit.i

if.else.i:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  %rem.i = and i32 %61, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %phi.bo.i = sub nuw nsw i32 8, %rem.i
  %spec.select.i = select i1 %tobool.not.i, i32 4, i32 %phi.bo.i
  %arrayidx9.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 1
  %62 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx9.i, align 4
  %add7.i = add i32 %spec.select.i, %61
  %add10.i = add i32 %add7.i, %63
  br label %set_earlymode_len0.exit.i

set_earlymode_len0.exit.i:                        ; preds = %if.else.i, %if.then41.set_earlymode_len0.exit.i_crit_edge
  %dwtmp.0.i = phi i32 [ %add10.i, %if.else.i ], [ %61, %if.then41.set_earlymode_len0.exit.i_crit_edge ]
  %64 = shl i32 %dwtmp.0.i, 4
  %65 = and i32 %64, 65520
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #4
  %or.i.i170.i = or i32 %66, %58
  %67 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or.i.i170.i, ptr %53, align 4
  %68 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %69)
  %cmp13.i = icmp ult i8 %69, 4
  %arrayidx17.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 2
  %70 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx17.i, align 4
  br i1 %cmp13.i, label %set_earlymode_len0.exit.i.set_earlymode_len1.exit.i_crit_edge, label %if.else18.i

set_earlymode_len0.exit.i.set_earlymode_len1.exit.i_crit_edge: ; preds = %set_earlymode_len0.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_earlymode_len1.exit.i

if.else18.i:                                      ; preds = %set_earlymode_len0.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %rem21.i = and i32 %71, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem21.i)
  %tobool22.not.i = icmp eq i32 %rem21.i, 0
  %phi.bo159.i = sub nuw nsw i32 8, %rem21.i
  %spec.select163.i = select i1 %tobool22.not.i, i32 4, i32 %phi.bo159.i
  %arrayidx32.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 3
  %72 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx32.i, align 4
  %add30.i = add i32 %spec.select163.i, %71
  %add33.i = add i32 %add30.i, %73
  br label %set_earlymode_len1.exit.i

set_earlymode_len1.exit.i:                        ; preds = %if.else18.i, %set_earlymode_len0.exit.i.set_earlymode_len1.exit.i_crit_edge
  %dwtmp.1.i = phi i32 [ %add33.i, %if.else18.i ], [ %71, %set_earlymode_len0.exit.i.set_earlymode_len1.exit.i_crit_edge ]
  %74 = shl i32 %dwtmp.1.i, 16
  %75 = and i32 %74, 268369920
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #4
  %or.i.i174.i = or i32 %76, %or.i.i170.i
  %77 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or.i.i174.i, ptr %53, align 4
  %78 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %79)
  %cmp37.i = icmp ult i8 %79, 6
  %arrayidx41.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 4
  %80 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx41.i, align 4
  br i1 %cmp37.i, label %set_earlymode_len1.exit.i.if.end58.i_crit_edge, label %if.else42.i

set_earlymode_len1.exit.i.if.end58.i_crit_edge:   ; preds = %set_earlymode_len1.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58.i

if.else42.i:                                      ; preds = %set_earlymode_len1.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %rem45.i = and i32 %81, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem45.i)
  %tobool46.not.i = icmp eq i32 %rem45.i, 0
  %phi.bo160.i = sub nuw nsw i32 8, %rem45.i
  %spec.select164.i = select i1 %tobool46.not.i, i32 4, i32 %phi.bo160.i
  %arrayidx56.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 5
  %82 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx56.i, align 4
  %add54.i = add i32 %spec.select164.i, %81
  %add57.i = add i32 %add54.i, %83
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.else42.i, %set_earlymode_len1.exit.i.if.end58.i_crit_edge
  %dwtmp.2.i = phi i32 [ %add57.i, %if.else42.i ], [ %81, %set_earlymode_len1.exit.i.if.end58.i_crit_edge ]
  %and.i317 = shl i32 %dwtmp.2.i, 4
  %84 = and i32 %and.i317, 240
  %or.i.i174.i.masked = and i32 %or.i.i174.i, 16776975
  %and.i.i179.i = or i32 %84, %or.i.i174.i.masked
  %85 = shl i32 %dwtmp.2.i, 20
  %86 = and i32 %85, -16777216
  %or.i.i180.i = or i32 %and.i.i179.i, %86
  %87 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or.i.i180.i, ptr %53, align 4
  %88 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %89)
  %cmp61.i = icmp ult i8 %89, 8
  %arrayidx65.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 6
  %90 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx65.i, align 4
  br i1 %cmp61.i, label %if.end58.i.if.end82.i_crit_edge, label %if.else66.i

if.end58.i.if.end82.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82.i

if.else66.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #6
  %rem69.i = and i32 %91, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem69.i)
  %tobool70.not.i = icmp eq i32 %rem69.i, 0
  %phi.bo161.i = sub nuw nsw i32 8, %rem69.i
  %spec.select165.i = select i1 %tobool70.not.i, i32 4, i32 %phi.bo161.i
  %arrayidx80.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 7
  %92 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx80.i, align 4
  %add78.i = add i32 %spec.select165.i, %91
  %add81.i = add i32 %add78.i, %93
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.else66.i, %if.end58.i.if.end82.i_crit_edge
  %dwtmp.3.i = phi i32 [ %add81.i, %if.else66.i ], [ %91, %if.end58.i.if.end82.i_crit_edge ]
  %add.ptr.i.i = getelementptr i32, ptr %53, i32 1
  %94 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i183.i = and i32 %95, -16715521
  %96 = shl i32 %dwtmp.3.i, 8
  %97 = and i32 %96, 1048320
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #4
  %or.i.i184.i = or i32 %98, %and.i.i183.i
  %99 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or.i.i184.i, ptr %add.ptr.i.i, align 4
  %100 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %101)
  %cmp85.i = icmp ult i8 %101, 10
  %arrayidx89.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 8
  %102 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx89.i, align 4
  br i1 %cmp85.i, label %if.end82.i.rtl8821ae_insert_emcontent.exit_crit_edge, label %if.else90.i

if.end82.i.rtl8821ae_insert_emcontent.exit_crit_edge: ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl8821ae_insert_emcontent.exit

if.else90.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #6
  %rem93.i = and i32 %103, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem93.i)
  %tobool94.not.i = icmp eq i32 %rem93.i, 0
  %phi.bo162.i = sub nuw nsw i32 8, %rem93.i
  %spec.select166.i = select i1 %tobool94.not.i, i32 4, i32 %phi.bo162.i
  %arrayidx104.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 9
  %104 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx104.i, align 4
  %add102.i = add i32 %spec.select166.i, %103
  %add105.i = add i32 %add102.i, %105
  br label %rtl8821ae_insert_emcontent.exit

rtl8821ae_insert_emcontent.exit:                  ; preds = %if.else90.i, %if.end82.i.rtl8821ae_insert_emcontent.exit_crit_edge
  %dwtmp.4.i = phi i32 [ %add105.i, %if.else90.i ], [ %103, %if.end82.i.rtl8821ae_insert_emcontent.exit_crit_edge ]
  %and.i.i188.i = and i32 %or.i.i184.i, -61696
  %106 = shl i32 %dwtmp.4.i, 20
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #4
  %or.i.i189.i = or i32 %107, %and.i.i188.i
  %108 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %or.i.i189.i, ptr %add.ptr.i.i, align 4
  br label %if.end46

if.else:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  %109 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pdesc8, align 4
  %and.i.i319 = and i32 %110, -65281
  %or.i.i320 = or i32 %and.i.i319, 10240
  store i32 %or.i.i320, ptr %pdesc8, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else, %rtl8821ae_insert_emcontent.exit, %if.then39.if.end46_crit_edge
  %add.ptr.i321 = getelementptr i32, ptr %pdesc8, i32 4
  %111 = ptrtoint ptr %add.ptr.i321 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %add.ptr.i321, align 4
  %hw_rate = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 5
  %113 = ptrtoint ptr %hw_rate to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %hw_rate, align 2
  %conv47 = zext i8 %114 to i32
  %and.i.i322 = and i32 %112, -2130706433
  %115 = shl nuw i32 %conv47, 24
  %116 = and i32 %115, 2130706432
  %or.i.i323 = or i32 %116, %and.i.i322
  store i32 %or.i.i323, ptr %add.ptr.i321, align 4
  %117 = load i8, ptr %hw_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %117)
  %cmp50 = icmp ugt i8 %117, 12
  %use_shortgi = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 2
  %118 = ptrtoint ptr %use_shortgi to i32
  call void @__asan_load1_noabort(i32 %118)
  %bf.load = load i8, ptr %use_shortgi, align 1
  %bf.load.lobit = lshr i8 %bf.load, 7
  %119 = lshr i8 %bf.load, 6
  %.lobit = and i8 %119, 1
  %short_gi.0 = select i1 %cmp50, i8 %bf.load.lobit, i8 %.lobit
  %conv64 = zext i8 %short_gi.0 to i32
  %add.ptr.i324 = getelementptr i32, ptr %pdesc8, i32 5
  %120 = ptrtoint ptr %add.ptr.i324 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %add.ptr.i324, align 4
  %and.i.i325 = and i32 %121, -268435457
  %122 = shl nuw nsw i32 %conv64, 28
  %or.i.i326 = or i32 %and.i.i325, %122
  store i32 %or.i.i326, ptr %add.ptr.i324, align 4
  %123 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %info, align 8
  %and65 = and i32 %124, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end46.if.end68_crit_edge, label %if.then67

if.end46.if.end68_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68

if.then67:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i327 = getelementptr i32, ptr %pdesc8, i32 2
  %125 = ptrtoint ptr %add.ptr.i327 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %add.ptr.i327, align 4
  %or.i.i328 = or i32 %126, 1048576
  store i32 %or.i.i328, ptr %add.ptr.i327, align 4
  %add.ptr.i329 = getelementptr i32, ptr %pdesc8, i32 3
  %127 = ptrtoint ptr %add.ptr.i329 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %add.ptr.i329, align 4
  %or.i.i330 = or i32 %128, 15872
  store i32 %or.i.i330, ptr %add.ptr.i329, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end46.if.end68_crit_edge
  %conv69 = zext i16 %20 to i32
  %add.ptr.i331 = getelementptr i32, ptr %pdesc8, i32 9
  %129 = ptrtoint ptr %add.ptr.i331 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %add.ptr.i331, align 4
  %and.i.i332 = and i32 %130, -15793921
  %131 = shl nuw nsw i32 %conv69, 12
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #4
  %or.i.i333 = or i32 %and.i.i332, %132
  %133 = ptrtoint ptr %add.ptr.i331 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %or.i.i333, ptr %add.ptr.i331, align 4
  %134 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %134)
  %bf.load70 = load i16, ptr %ptcb_desc, align 4
  %135 = and i16 %bf.load70, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %tobool74.not = icmp eq i16 %135, 0
  %136 = lshr i16 %bf.load70, 9
  %.lobit307 = and i16 %136, 1
  %137 = xor i16 %.lobit307, 1
  %narrow = select i1 %tobool74.not, i16 0, i16 %137
  %138 = zext i16 %narrow to i32
  %add.ptr.i334 = getelementptr i32, ptr %pdesc8, i32 3
  %139 = ptrtoint ptr %add.ptr.i334 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %add.ptr.i334, align 4
  %and.i.i337 = and i32 %140, -3145729
  %141 = shl nuw nsw i32 %138, 20
  %and.i.i340 = or i32 %141, %and.i.i337
  store i32 %and.i.i340, ptr %add.ptr.i334, align 4
  %142 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %142)
  %bf.load81 = load i16, ptr %ptcb_desc, align 4
  %143 = lshr i16 %bf.load81, 9
  %144 = zext i16 %143 to i32
  %and.i.i342 = and i32 %and.i.i340, -524289
  %145 = shl nuw nsw i32 %144, 19
  %146 = and i32 %145, 524288
  %or.i.i343 = or i32 %and.i.i342, %146
  store i32 %or.i.i343, ptr %add.ptr.i334, align 4
  %147 = ptrtoint ptr %add.ptr.i321 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %add.ptr.i321, align 4
  %rts_rate = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 1
  %149 = ptrtoint ptr %rts_rate to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %rts_rate, align 2
  %and.i.i347 = and i32 %148, -32
  %151 = and i8 %150, 31
  %152 = zext i8 %151 to i32
  %or.i.i348 = or i32 %and.i.i347, %152
  store i32 %or.i.i348, ptr %add.ptr.i321, align 4
  %bf.load89 = load i16, ptr %ptcb_desc, align 4
  %153 = ptrtoint ptr %add.ptr.i324 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %add.ptr.i324, align 4
  %and.i.i350 = and i32 %154, -14680321
  %155 = shl i16 %bf.load89, 7
  %156 = and i16 %155, 8192
  %157 = zext i16 %156 to i32
  %158 = shl nuw nsw i32 %157, 8
  %or.i.i351 = or i32 %158, %and.i.i350
  store i32 %or.i.i351, ptr %add.ptr.i324, align 4
  %159 = load i8, ptr %rts_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %159)
  %cmp96 = icmp ult i8 %159, 12
  %160 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %160)
  %bf.load98 = load i16, ptr %ptcb_desc, align 4
  %. = select i1 %cmp96, i16 8, i16 7
  %161 = lshr i16 %bf.load98, %.
  %162 = zext i16 %161 to i32
  %and.i.i353 = and i32 %or.i.i351, -13631745
  %163 = shl nuw nsw i32 %162, 20
  %164 = and i32 %163, 1048576
  %or.i.i354 = or i32 %164, %and.i.i353
  %165 = ptrtoint ptr %add.ptr.i324 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %or.i.i354, ptr %add.ptr.i324, align 4
  %tx_enable_sw_calc_duration = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 10
  %166 = ptrtoint ptr %tx_enable_sw_calc_duration to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %tx_enable_sw_calc_duration, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool117.not = icmp eq i8 %167, 0
  br i1 %tobool117.not, label %if.end68.if.end119_crit_edge, label %if.then118

if.end68.if.end119_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end119

if.then118:                                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  %168 = ptrtoint ptr %add.ptr.i334 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %add.ptr.i334, align 4
  %or.i.i356 = or i32 %169, 8388608
  store i32 %or.i.i356, ptr %add.ptr.i334, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %if.end68.if.end119_crit_edge
  %170 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %priv, align 8
  %current_chan_bw.i = getelementptr inbounds %struct.rtl_priv, ptr %171, i32 0, i32 14, i32 5
  %172 = ptrtoint ptr %current_chan_bw.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %current_chan_bw.i, align 2
  %conv.i357 = zext i8 %173 to i32
  %174 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %174)
  %bf.load.i = load i16, ptr %ptcb_desc, align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 14
  %bf.cast.i = zext i16 %bf.lshr.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %171, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.rtl8821ae_bw_mapping, i32 noundef %conv.i357, i32 noundef %bf.cast.i) #4
  %175 = ptrtoint ptr %current_chan_bw.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %current_chan_bw.i, align 2
  %177 = zext i8 %176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %176, label %if.end119.rtl8821ae_bw_mapping.exit_crit_edge [
    i8 2, label %if.then.i358
    i8 1, label %if.then26.i
  ]

if.end119.rtl8821ae_bw_mapping.exit_crit_edge:    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl8821ae_bw_mapping.exit

if.then.i358:                                     ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #6
  %178 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %178)
  %bf.load5.i = load i16, ptr %ptcb_desc, align 4
  %bf.lshr6.i = lshr i16 %bf.load5.i, 14
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %bf.lshr6.i)
  %switch.selectcmp.i = icmp eq i16 %bf.lshr6.i, 1
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %bf.lshr6.i)
  %switch.selectcmp52.i = icmp eq i16 %bf.lshr6.i, 2
  %switch.select53.i = select i1 %switch.selectcmp52.i, i32 2, i32 %switch.select.i
  br label %rtl8821ae_bw_mapping.exit

if.then26.i:                                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #6
  %179 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %179)
  %bf.load27.i = load i16, ptr %ptcb_desc, align 4
  %bf.lshr28.i = lshr i16 %bf.load27.i, 14
  %bf.lshr28.off.i = add nsw i16 %bf.lshr28.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %bf.lshr28.off.i)
  %switch.i = icmp ult i16 %bf.lshr28.off.i, 2
  %spec.select.i359 = zext i1 %switch.i to i32
  br label %rtl8821ae_bw_mapping.exit

rtl8821ae_bw_mapping.exit:                        ; preds = %if.then26.i, %if.then.i358, %if.end119.rtl8821ae_bw_mapping.exit_crit_edge
  %bw_setting_of_desc.0.i = phi i32 [ 0, %if.end119.rtl8821ae_bw_mapping.exit_crit_edge ], [ %switch.select53.i, %if.then.i358 ], [ %spec.select.i359, %if.then26.i ]
  %180 = ptrtoint ptr %add.ptr.i324 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %add.ptr.i324, align 4
  %and.i.i361 = and i32 %181, -1610612737
  %conv121 = shl nuw nsw i32 %bw_setting_of_desc.0.i, 29
  %182 = and i32 %conv121, 1610612736
  %or.i.i362 = or i32 %and.i.i361, %182
  store i32 %or.i.i362, ptr %add.ptr.i324, align 4
  %183 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %priv, align 8
  %current_chan_bw.i364 = getelementptr inbounds %struct.rtl_priv, ptr %184, i32 0, i32 14, i32 5
  %185 = ptrtoint ptr %current_chan_bw.i364 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %current_chan_bw.i364, align 2
  %187 = zext i8 %186 to i64
  call void @__sanitizer_cov_trace_switch(i64 %187, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %186, label %rtl8821ae_bw_mapping.exit.rtl8821ae_sc_mapping.exit_crit_edge [
    i8 2, label %if.then.i368
    i8 1, label %if.then79.i
  ]

rtl8821ae_bw_mapping.exit.rtl8821ae_sc_mapping.exit_crit_edge: ; preds = %rtl8821ae_bw_mapping.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl8821ae_sc_mapping.exit

if.then.i368:                                     ; preds = %rtl8821ae_bw_mapping.exit
  %188 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %188)
  %bf.load.i365 = load i16, ptr %ptcb_desc, align 4
  %bf.lshr.i366 = lshr i16 %bf.load.i365, 14
  %trunc.i367 = trunc i16 %bf.lshr.i366 to i2
  %189 = zext i2 %trunc.i367 to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.27)
  switch i2 %trunc.i367, label %if.else25.i [
    i2 -2, label %if.then.i368.rtl8821ae_sc_mapping.exit_crit_edge
    i2 1, label %if.then12.i
  ]

if.then.i368.rtl8821ae_sc_mapping.exit_crit_edge: ; preds = %if.then.i368
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl8821ae_sc_mapping.exit

if.then12.i:                                      ; preds = %if.then.i368
  %cur_80_prime_sc.i = getelementptr inbounds %struct.rtl_priv, ptr %184, i32 0, i32 9, i32 48
  %190 = ptrtoint ptr %cur_80_prime_sc.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %cur_80_prime_sc.i, align 1
  %192 = zext i8 %191 to i64
  call void @__sanitizer_cov_trace_switch(i64 %192, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %191, label %if.else23.i [
    i8 1, label %if.then12.i.rtl8821ae_sc_mapping.exit_crit_edge
    i8 2, label %if.then22.i
  ]

if.then12.i.rtl8821ae_sc_mapping.exit_crit_edge:  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl8821ae_sc_mapping.exit

if.then22.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl8821ae_sc_mapping.exit

if.else23.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %184, i64 noundef 16, i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.rtl8821ae_sc_mapping) #4
  br label %rtl8821ae_sc_mapping.exit

if.else25.i:                                      ; preds = %if.then.i368
  %cur_40_prime_sc.i = getelementptr inbounds %struct.rtl_priv, ptr %184, i32 0, i32 9, i32 46
  %193 = ptrtoint ptr %cur_40_prime_sc.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %cur_40_prime_sc.i, align 1
  %195 = zext i8 %194 to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %194, label %if.else25.i.if.else67.i_crit_edge [
    i8 1, label %land.lhs.true.i
    i8 2, label %land.lhs.true39.i
  ]

if.else25.i.if.else67.i_crit_edge:                ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else67.i

land.lhs.true.i:                                  ; preds = %if.else25.i
  %cur_80_prime_sc29.i = getelementptr inbounds %struct.rtl_priv, ptr %184, i32 0, i32 9, i32 48
  %196 = ptrtoint ptr %cur_80_prime_sc29.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %cur_80_prime_sc29.i, align 1
  %198 = zext i8 %197 to i64
  call void @__sanitizer_cov_trace_switch(i64 %198, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %197, label %land.lhs.true.i.if.else67.i_crit_edge [
    i8 1, label %land.lhs.true.i.rtl8821ae_sc_mapping.exit_crit_edge
    i8 2, label %rtl8821ae_sc_mapping.exit.fold.split
  ]

land.lhs.true.i.rtl8821ae_sc_mapping.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl8821ae_sc_mapping.exit

land.lhs.true.i.if.else67.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else67.i

land.lhs.true39.i:                                ; preds = %if.else25.i
  %cur_80_prime_sc40.i = getelementptr inbounds %struct.rtl_priv, ptr %184, i32 0, i32 9, i32 48
  %199 = ptrtoint ptr %cur_80_prime_sc40.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %cur_80_prime_sc40.i, align 1
  %201 = zext i8 %200 to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %200, label %land.lhs.true39.i.if.else67.i_crit_edge [
    i8 1, label %land.lhs.true39.i.rtl8821ae_sc_mapping.exit_crit_edge
    i8 2, label %rtl8821ae_sc_mapping.exit.fold.split453
  ]

land.lhs.true39.i.rtl8821ae_sc_mapping.exit_crit_edge: ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl8821ae_sc_mapping.exit

land.lhs.true39.i.if.else67.i_crit_edge:          ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else67.i

if.else67.i:                                      ; preds = %land.lhs.true39.i.if.else67.i_crit_edge, %land.lhs.true.i.if.else67.i_crit_edge, %if.else25.i.if.else67.i_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %184, i64 noundef 16, i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.rtl8821ae_sc_mapping) #4
  br label %rtl8821ae_sc_mapping.exit

if.then79.i:                                      ; preds = %rtl8821ae_bw_mapping.exit
  %202 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %202)
  %bf.load80.i = load i16, ptr %ptcb_desc, align 4
  %bf.lshr81.mask.i = and i16 %bf.load80.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr81.mask.i)
  %cmp84.i = icmp ne i16 %bf.lshr81.mask.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load80.i)
  %cmp92.i = icmp ult i16 %bf.load80.i, 16384
  %or.cond.i = and i1 %cmp92.i, %cmp84.i
  br i1 %or.cond.i, label %if.then94.i, label %if.then79.i.rtl8821ae_sc_mapping.exit_crit_edge

if.then79.i.rtl8821ae_sc_mapping.exit_crit_edge:  ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl8821ae_sc_mapping.exit

if.then94.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #6
  %cur_40_prime_sc95.i = getelementptr inbounds %struct.rtl_priv, ptr %184, i32 0, i32 9, i32 46
  %203 = ptrtoint ptr %cur_40_prime_sc95.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %cur_40_prime_sc95.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %204)
  %switch.selectcmp.i369 = icmp eq i8 %204, 1
  %switch.select.i370 = select i1 %switch.selectcmp.i369, i32 33554432, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %204)
  %switch.selectcmp132.i = icmp eq i8 %204, 2
  %switch.select133.i = select i1 %switch.selectcmp132.i, i32 16777216, i32 %switch.select.i370
  br label %rtl8821ae_sc_mapping.exit

rtl8821ae_sc_mapping.exit.fold.split:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl8821ae_sc_mapping.exit

rtl8821ae_sc_mapping.exit.fold.split453:          ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl8821ae_sc_mapping.exit

rtl8821ae_sc_mapping.exit:                        ; preds = %rtl8821ae_sc_mapping.exit.fold.split453, %rtl8821ae_sc_mapping.exit.fold.split, %if.then94.i, %if.then79.i.rtl8821ae_sc_mapping.exit_crit_edge, %if.else67.i, %land.lhs.true39.i.rtl8821ae_sc_mapping.exit_crit_edge, %land.lhs.true.i.rtl8821ae_sc_mapping.exit_crit_edge, %if.else23.i, %if.then22.i, %if.then12.i.rtl8821ae_sc_mapping.exit_crit_edge, %if.then.i368.rtl8821ae_sc_mapping.exit_crit_edge, %rtl8821ae_bw_mapping.exit.rtl8821ae_sc_mapping.exit_crit_edge
  %sc_setting_of_desc.0.i = phi i32 [ 150994944, %if.then22.i ], [ 0, %if.else23.i ], [ 0, %if.else67.i ], [ 0, %if.then.i368.rtl8821ae_sc_mapping.exit_crit_edge ], [ 167772160, %if.then12.i.rtl8821ae_sc_mapping.exit_crit_edge ], [ 67108864, %land.lhs.true.i.rtl8821ae_sc_mapping.exit_crit_edge ], [ 33554432, %land.lhs.true39.i.rtl8821ae_sc_mapping.exit_crit_edge ], [ 0, %if.then79.i.rtl8821ae_sc_mapping.exit_crit_edge ], [ 0, %rtl8821ae_bw_mapping.exit.rtl8821ae_sc_mapping.exit_crit_edge ], [ %switch.select133.i, %if.then94.i ], [ 16777216, %rtl8821ae_sc_mapping.exit.fold.split ], [ 50331648, %rtl8821ae_sc_mapping.exit.fold.split453 ]
  %205 = ptrtoint ptr %add.ptr.i324 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %add.ptr.i324, align 4
  %and.i.i374 = and i32 %206, -251658241
  %or.i.i375 = or i32 %and.i.i374, %sc_setting_of_desc.0.i
  store i32 %or.i.i375, ptr %add.ptr.i324, align 4
  %207 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %pdesc8, align 4
  %conv125 = and i32 %5, 65535
  %and.i.i377 = and i32 %208, 65519
  %209 = tail call i32 @llvm.bswap.i32(i32 %conv125) #4
  %or.i.i378 = or i32 %and.i.i377, %209
  %210 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %or.i.i378, ptr %pdesc8, align 4
  %tobool126.not = icmp eq ptr %sta, null
  br i1 %tobool126.not, label %rtl8821ae_sc_mapping.exit.if.end130_crit_edge, label %set_tx_desc_ampdu_density.exit

rtl8821ae_sc_mapping.exit.if.end130_crit_edge:    ; preds = %rtl8821ae_sc_mapping.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130

set_tx_desc_ampdu_density.exit:                   ; preds = %rtl8821ae_sc_mapping.exit
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i379 = getelementptr i32, ptr %pdesc8, i32 2
  %211 = ptrtoint ptr %add.ptr.i379 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %add.ptr.i379, align 4
  %ampdu_density128 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 3
  %213 = ptrtoint ptr %ampdu_density128 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %ampdu_density128, align 4
  %conv129 = zext i8 %214 to i32
  %and.i.i382 = and i32 %212, -28673
  %215 = shl nuw nsw i32 %conv129, 12
  %216 = and i32 %215, 28672
  %or.i.i383 = or i32 %216, %and.i.i382
  store i32 %or.i.i383, ptr %add.ptr.i379, align 4
  br label %if.end130

if.end130:                                        ; preds = %set_tx_desc_ampdu_density.exit, %rtl8821ae_sc_mapping.exit.if.end130_crit_edge
  %hw_key = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 12
  %217 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %hw_key, align 4
  %tobool131.not = icmp eq ptr %218, null
  br i1 %tobool131.not, label %if.end130.set_tx_desc_queue_sel.exit_crit_edge, label %if.then132

if.end130.set_tx_desc_queue_sel.exit_crit_edge:   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_tx_desc_queue_sel.exit

if.then132:                                       ; preds = %if.end130
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %cipher, align 8
  %221 = zext i32 %220 to i64
  call void @__sanitizer_cov_trace_switch(i64 %221, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %220, label %sw.default [
    i32 1027073, label %if.then132.sw.bb_crit_edge
    i32 1027077, label %if.then132.sw.bb_crit_edge456
    i32 1027074, label %if.then132.sw.bb_crit_edge457
    i32 1027076, label %sw.bb134
  ]

if.then132.sw.bb_crit_edge457:                    ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then132.sw.bb_crit_edge456:                    ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then132.sw.bb_crit_edge:                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

sw.bb:                                            ; preds = %if.then132.sw.bb_crit_edge, %if.then132.sw.bb_crit_edge456, %if.then132.sw.bb_crit_edge457
  %add.ptr.i384 = getelementptr i32, ptr %pdesc8, i32 1
  %222 = ptrtoint ptr %add.ptr.i384 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %add.ptr.i384, align 4
  %and.i.i385 = and i32 %223, -49153
  %or.i.i386 = or i32 %and.i.i385, 16384
  store i32 %or.i.i386, ptr %add.ptr.i384, align 4
  br label %set_tx_desc_queue_sel.exit

sw.bb134:                                         ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i387 = getelementptr i32, ptr %pdesc8, i32 1
  %224 = ptrtoint ptr %add.ptr.i387 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %add.ptr.i387, align 4
  %or.i.i389 = or i32 %225, 49152
  store i32 %or.i.i389, ptr %add.ptr.i387, align 4
  br label %set_tx_desc_queue_sel.exit

sw.default:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i390 = getelementptr i32, ptr %pdesc8, i32 1
  %226 = ptrtoint ptr %add.ptr.i390 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %add.ptr.i390, align 4
  %and.i.i391 = and i32 %227, -49153
  store i32 %and.i.i391, ptr %add.ptr.i390, align 4
  br label %set_tx_desc_queue_sel.exit

set_tx_desc_queue_sel.exit:                       ; preds = %sw.default, %sw.bb134, %sw.bb, %if.end130.set_tx_desc_queue_sel.exit_crit_edge
  %add.ptr.i392 = getelementptr i32, ptr %pdesc8, i32 1
  %228 = ptrtoint ptr %add.ptr.i392 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %add.ptr.i392, align 4
  %and.i.i395 = and i32 %229, -2031617
  %or.i.i396 = or i32 %and.i.i395, %retval.0.i
  store i32 %or.i.i396, ptr %add.ptr.i392, align 4
  %230 = ptrtoint ptr %add.ptr.i321 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %add.ptr.i321, align 4
  %or.i.i400 = or i32 %231, 16711936
  store i32 %or.i.i400, ptr %add.ptr.i321, align 4
  %disable_ratefallback = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 2
  %232 = ptrtoint ptr %disable_ratefallback to i32
  call void @__asan_load1_noabort(i32 %232)
  %bf.load137 = load i8, ptr %disable_ratefallback, align 1
  %233 = lshr i8 %bf.load137, 4
  %234 = zext i8 %233 to i32
  %235 = ptrtoint ptr %add.ptr.i334 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %add.ptr.i334, align 4
  %and.i.i402 = and i32 %236, -262145
  %237 = shl nuw nsw i32 %234, 18
  %238 = and i32 %237, 262144
  %or.i.i403 = or i32 %238, %and.i.i402
  store i32 %or.i.i403, ptr %add.ptr.i334, align 4
  %bf.load143 = load i8, ptr %disable_ratefallback, align 1
  %239 = lshr i8 %bf.load143, 5
  %240 = zext i8 %239 to i32
  %and.i.i405 = and i32 %or.i.i403, -65537
  %241 = shl nuw nsw i32 %240, 16
  %242 = and i32 %241, 65536
  %or.i.i406 = or i32 %242, %and.i.i405
  store i32 %or.i.i406, ptr %add.ptr.i334, align 4
  %243 = and i16 %3, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %243)
  %cmp.i407 = icmp eq i16 %243, -30720
  br i1 %cmp.i407, label %if.then150, label %set_tx_desc_queue_sel.exit.if.end154_crit_edge

set_tx_desc_queue_sel.exit.if.end154_crit_edge:   ; preds = %set_tx_desc_queue_sel.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end154

if.then150:                                       ; preds = %set_tx_desc_queue_sel.exit
  %rdg_en = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 32
  %244 = ptrtoint ptr %rdg_en to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %rdg_en, align 8, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %245)
  %tobool151.not = icmp eq i8 %245, 0
  br i1 %tobool151.not, label %if.then150.if.end154_crit_edge, label %if.then152

if.then150.if.end154_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end154

if.then152:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.7) #4
  %add.ptr.i408 = getelementptr i32, ptr %pdesc8, i32 2
  %246 = ptrtoint ptr %add.ptr.i408 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %add.ptr.i408, align 4
  %or.i.i409 = or i32 %247, 2097152
  store i32 %or.i.i409, ptr %add.ptr.i408, align 4
  %248 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %pdesc8, align 4
  %or.i.i410 = or i32 %249, 2
  store i32 %or.i.i410, ptr %pdesc8, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %if.then150.if.end154_crit_edge, %set_tx_desc_queue_sel.exit.if.end154_crit_edge
  tail call void @rtl_set_tx_report(ptr noundef %ptcb_desc, ptr noundef %pdesc8, ptr noundef %hw, ptr noundef %status_driver_data.i) #4
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %lor.lhs.false.if.end155_crit_edge
  %lastseg.0.off0451 = phi i1 [ %lastseg.0.off0452, %if.end154 ], [ %extract.t, %lor.lhs.false.if.end155_crit_edge ]
  %firstseg.0.off0449 = phi i32 [ 8, %if.end154 ], [ 0, %lor.lhs.false.if.end155_crit_edge ]
  %250 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %pdesc8, align 4
  %and.i.i411 = and i32 %251, -13
  %252 = select i1 %lastseg.0.off0451, i32 4, i32 0
  %or.i.i412 = or i32 %252, %firstseg.0.off0449
  %or.i.i414 = or i32 %or.i.i412, %and.i.i411
  store i32 %or.i.i414, ptr %pdesc8, align 4
  %add.ptr.i415 = getelementptr i32, ptr %pdesc8, i32 7
  %253 = ptrtoint ptr %add.ptr.i415 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %add.ptr.i415, align 4
  %and.i.i418 = and i32 %254, 65535
  %255 = and i32 %27, 65535
  %256 = tail call i32 @llvm.bswap.i32(i32 %255) #4
  %or.i.i419 = or i32 %and.i.i418, %256
  %257 = ptrtoint ptr %add.ptr.i415 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %or.i.i419, ptr %add.ptr.i415, align 4
  %258 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i308) #4
  %add.ptr.i420 = getelementptr i32, ptr %pdesc8, i32 10
  %259 = ptrtoint ptr %add.ptr.i420 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %258, ptr %add.ptr.i420, align 4
  %add.ptr.i421 = getelementptr i32, ptr %pdesc8, i32 1
  %260 = ptrtoint ptr %add.ptr.i421 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %add.ptr.i421, align 4
  %ratr_index = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 3
  %262 = ptrtoint ptr %ratr_index to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %ratr_index, align 4
  %conv162 = zext i8 %263 to i32
  %and.i.i424 = and i32 %261, -7937
  %264 = shl nuw nsw i32 %conv162, 8
  %265 = and i32 %264, 7936
  %or.i.i425 = or i32 %265, %and.i.i424
  store i32 %or.i.i425, ptr %add.ptr.i421, align 4
  %mac_id = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 4
  %266 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %mac_id, align 1
  %conv163 = zext i8 %267 to i32
  %and.i.i429 = and i32 %or.i.i425, -2130706433
  %268 = shl nuw i32 %conv163, 24
  %269 = and i32 %268, 2130706432
  %or.i.i430 = or i32 %269, %and.i.i429
  store i32 %or.i.i430, ptr %add.ptr.i421, align 4
  %270 = and i16 %3, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %270)
  %cmp.i431 = icmp eq i16 %270, -30720
  br i1 %cmp.i431, label %if.end155.if.end166_crit_edge, label %if.then165

if.end155.if.end166_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end166

if.then165:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i432 = getelementptr i32, ptr %pdesc8, i32 8
  %271 = ptrtoint ptr %add.ptr.i432 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %add.ptr.i432, align 4
  %or.i.i433 = or i32 %272, 8388608
  store i32 %or.i.i433, ptr %add.ptr.i432, align 4
  %add.ptr.i434 = getelementptr i32, ptr %pdesc8, i32 3
  %273 = ptrtoint ptr %add.ptr.i434 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %add.ptr.i434, align 4
  %and.i.i435 = and i32 %274, 1073741823
  store i32 %and.i.i435, ptr %add.ptr.i434, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %if.end155.if.end166_crit_edge
  %add.ptr.i436 = getelementptr i32, ptr %pdesc8, i32 2
  %275 = ptrtoint ptr %add.ptr.i436 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %add.ptr.i436, align 4
  %and.i.i437 = and i32 %276, -513
  %277 = select i1 %lastseg.0.off0451, i32 0, i32 512
  %or.i.i438 = or i32 %and.i.i437, %277
  store i32 %or.i.i438, ptr %add.ptr.i436, align 4
  %278 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %hdr, align 2
  %280 = and i16 %279, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %280)
  %cmp.i.not.i = icmp eq i16 %280, 0
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 4
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %retval.0.i439 = select i1 %cmp.i.not.i, ptr %addr1.i, ptr %addr3.i
  %281 = ptrtoint ptr %retval.0.i439 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %retval.0.i439, align 4
  %283 = and i32 %282, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %283)
  %tobool.i.not = icmp eq i32 %283, 0
  br i1 %tobool.i.not, label %lor.lhs.false173, label %if.end166.if.then177_crit_edge

if.end166.if.then177_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then177

lor.lhs.false173:                                 ; preds = %if.end166
  %284 = ptrtoint ptr %retval.0.i439 to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %retval.0.i439, align 2
  %add.ptr1.i = getelementptr i8, ptr %retval.0.i439, i32 2
  %286 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %287, %285
  %add.ptr3.i = getelementptr i8, ptr %retval.0.i439, i32 4
  %288 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %289
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i444 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i444, label %lor.lhs.false173.if.then177_crit_edge, label %lor.lhs.false173.if.end178_crit_edge

lor.lhs.false173.if.end178_crit_edge:             ; preds = %lor.lhs.false173
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end178

lor.lhs.false173.if.then177_crit_edge:            ; preds = %lor.lhs.false173
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then177

if.then177:                                       ; preds = %lor.lhs.false173.if.then177_crit_edge, %if.end166.if.then177_crit_edge
  %290 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %pdesc8, align 4
  %or.i.i445 = or i32 %291, 1
  store i32 %or.i.i445, ptr %pdesc8, align 4
  br label %if.end178

if.end178:                                        ; preds = %if.then177, %lor.lhs.false173.if.end178_crit_edge
  %292 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %mac_id, align 1
  %conv180 = zext i8 %293 to i32
  tail call void @rtl8821ae_dm_set_tx_ant_by_tx_info(ptr noundef %hw, ptr noundef %pdesc8, i32 noundef %conv180) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end178, %dma_map_single_attrs.exit.cleanup_crit_edge
  %.str.8.sink = phi ptr [ @.str.8, %if.end178 ], [ @.str.5, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull %.str.8.sink) #4
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8821ae_dm_set_tx_ant_by_tx_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_tx_fill_cmddesc(ptr nocapture noundef readonly %hw, ptr noundef %pdesc8, i1 noundef zeroext %firstseg, i1 noundef zeroext %lastseg, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
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
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !53

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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #4
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.5) #4
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #6
  %16 = getelementptr inbounds i8, ptr %pdesc8, i32 4
  %17 = call ptr @memset(ptr %16, i32 0, i32 36)
  %18 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 12, ptr %pdesc8, align 4
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %conv9 = and i32 %20, 65535
  %21 = or i32 %conv9, 203948032
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %pdesc8, align 4
  %add.ptr.i44 = getelementptr i32, ptr %pdesc8, i32 3
  %add.ptr.i47 = getelementptr i32, ptr %pdesc8, i32 4
  %24 = ptrtoint ptr %add.ptr.i47 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %add.ptr.i47, align 4
  %25 = ptrtoint ptr %add.ptr.i44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 327680, ptr %add.ptr.i44, align 4
  %add.ptr.i52 = getelementptr i32, ptr %pdesc8, i32 5
  %26 = ptrtoint ptr %add.ptr.i52 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %add.ptr.i52, align 4
  %add.ptr.i54 = getelementptr i32, ptr %pdesc8, i32 8
  %27 = ptrtoint ptr %add.ptr.i54 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8388608, ptr %add.ptr.i54, align 4
  %add.ptr.i56 = getelementptr i32, ptr %pdesc8, i32 1
  %28 = ptrtoint ptr %add.ptr.i56 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1048576, ptr %add.ptr.i56, align 4
  %add.ptr.i59 = getelementptr i32, ptr %pdesc8, i32 7
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %31 = and i32 %30, 65535
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #4
  %33 = ptrtoint ptr %add.ptr.i59 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %add.ptr.i59, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #4
  %add.ptr.i62 = getelementptr i32, ptr %pdesc8, i32 10
  %35 = ptrtoint ptr %add.ptr.i62 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %add.ptr.i62, align 4
  %36 = ptrtoint ptr %add.ptr.i56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i56, align 4
  %and.i.i64 = and i32 %37, -2130706433
  store i32 %and.i.i64, ptr %add.ptr.i56, align 4
  %38 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pdesc8, align 4
  %or.i.i65 = or i32 %39, 128
  store i32 %or.i.i65, ptr %pdesc8, align 4
  tail call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.9, ptr noundef %pdesc8, i32 noundef 40) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_set_desc(ptr nocapture noundef readnone %hw, ptr nocapture noundef %pdesc8, i1 noundef zeroext %istx, i8 noundef zeroext %desc_name, ptr nocapture noundef readonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %desc_name to i32
  br i1 %istx, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.33)
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
  %.b112 = load i1, ptr @rtl8821ae_set_desc.__already_done, align 1
  br i1 %.b112, label %land.end.if.end95_crit_edge, label %if.then8, !prof !53

land.end.if.end95_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl8821ae_set_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 896, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %conv) #4
  br label %if.end95

if.else:                                          ; preds = %entry
  %7 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.34)
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
  %.b110111 = load i1, ptr @rtl8821ae_set_desc.__already_done.12, align 1
  br i1 %.b110111, label %land.end51.if.end95_crit_edge, label %if.then58, !prof !53

land.end51.if.end95_crit_edge:                    ; preds = %land.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

if.then58:                                        ; preds = %land.end51
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl8821ae_set_desc.__already_done.12, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 916, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %conv) #4
  br label %if.end95

if.end95:                                         ; preds = %if.then58, %land.end51.if.end95_crit_edge, %sw.bb42, %set_rx_desc_pkt_len.exit, %sw.bb40, %sw.bb39, %if.then8, %land.end.if.end95_crit_edge, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @rtl8821ae_get_desc(ptr nocapture readnone %hw, ptr nocapture noundef readonly %pdesc8, i1 noundef zeroext %istx, i8 noundef zeroext %desc_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %desc_name to i32
  br i1 %istx, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.35)
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
  %.b113 = load i1, ptr @rtl8821ae_get_desc.__already_done, align 1
  br i1 %.b113, label %land.end.if.end98_crit_edge, label %if.then9, !prof !53

land.end.if.end98_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

if.then9:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl8821ae_get_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 939, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %conv) #4
  br label %if.end98

if.else:                                          ; preds = %entry
  %6 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.36)
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
  %.b111112 = load i1, ptr @rtl8821ae_get_desc.__already_done.14, align 1
  br i1 %.b111112, label %land.end54.if.end98_crit_edge, label %if.then61, !prof !53

land.end54.if.end98_crit_edge:                    ; preds = %land.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

if.then61:                                        ; preds = %land.end54
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl8821ae_get_desc.__already_done.14, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 956, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %conv) #4
  br label %if.end98

if.end98:                                         ; preds = %if.then61, %land.end54.if.end98_crit_edge, %sw.bb44, %sw.bb42, %sw.bb40, %if.then9, %land.end.if.end98_crit_edge, %sw.bb1, %sw.bb
  %ret.0 = phi i32 [ %5, %sw.bb1 ], [ %.mask.lobit.i, %sw.bb ], [ %15, %sw.bb44 ], [ %12, %sw.bb42 ], [ %.mask.lobit.i115, %sw.bb40 ], [ 0, %if.then9 ], [ 0, %land.end.if.end98_crit_edge ], [ 0, %if.then61 ], [ 0, %land.end54.if.end98_crit_edge ]
  %conv99 = zext i32 %ret.0 to i64
  ret i64 %conv99
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rtl8821ae_is_tx_desc_closed(ptr nocapture noundef readonly %hw, i8 noundef zeroext %hw_queue, i16 noundef zeroext %index) local_unnamed_addr #3 align 64 {
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
define dso_local void @rtl8821ae_tx_polling(ptr nocapture noundef readonly %hw, i8 noundef zeroext %hw_queue) local_unnamed_addr #0 align 64 {
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
  %7 = load i8, ptr %write_readback.i, align 1, !range !49
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
  %13 = load i8, ptr %write_readback.i8, align 1, !range !49
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.abs.i8(i8, i1 immarg) #2

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !23, !24, !26, !28, !30, !32, !33, !34, !36, !37, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/trx.c", i32 464, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/trx.c", i32 486, i32 3}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/trx.c", i32 699, i32 3}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/trx.c", i32 714, i32 5}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/trx.c", i32 795, i32 5}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/trx.c", i32 828, i32 2}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/trx.c", i32 875, i32 2}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/trx.c", i32 894, i32 4}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/trx.c", i32 914, i32 4}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/trx.c", i32 937, i32 4}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/trx.c", i32 954, i32 4}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/trx.c", i32 394, i32 2}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/trx.c", i32 561, i32 2}
!36 = !{ptr @__func__.rtl8821ae_bw_mapping, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/trx.c", i32 606, i32 5}
!39 = !{ptr @__func__.rtl8821ae_sc_mapping, !38, !"<string literal>", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i8 0, i8 2}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.peeled.count", i32 1}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{!"branch_weights", i32 2000, i32 1}
