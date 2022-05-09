; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.c"
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
%struct.phy_sts_cck_8192s_t = type { [4 x i8], i8, i8 }
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rx_fwinfo_88e = type { [4 x i8], i8, [4 x i8], [4 x i8], [2 x i8], [4 x i8], [2 x i8], [2 x i8], [2 x i8], i8, i8, i8 }
%struct.phy_status_rpt = type { [2 x i8], [2 x i8], i8, i8, i8, i8, i8, [2 x i8], [2 x i8], [2 x i8], [2 x i8], i8, [3 x i8], [2 x i8], [2 x i8], i8, i8, i8 }
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
@rtl88ee_set_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.c\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rtl8188ee: ERR txdesc :%d not processed\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl88ee_set_desc.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rtl8188ee: ERR rxdesc :%d not processed\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl88ee_get_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rtl88ee_get_desc.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 40960, i64 49152, i64 53248]
@__sancov_gen_cov_switch_values.13 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 12, i64 0, i64 1024]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 5]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 413, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 521, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 536, i32 5 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 634, i32 5 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 665, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 725, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 744, i32 4 }
@___asan_gen_.47 = private constant [56 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 763, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 326, i32 6 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl88ee_rx_query_desc(ptr noundef %hw, ptr noundef %status, ptr nocapture noundef %rx_status, ptr noundef readonly %pdesc8, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
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
  %add.ptr.i = getelementptr i32, ptr %pdesc8, i32 3
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %sum.shift.i = lshr i32 %5, 22
  %div4.i12.i = and i32 %sum.shift.i, 3
  %conv = trunc i32 %div4.i12.i to i8
  %packet_report_type = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 49
  %6 = ptrtoint ptr %packet_report_type to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %packet_report_type, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div4.i12.i)
  %cmp = icmp eq i32 %div4.i12.i, 2
  %7 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pdesc8, align 4
  %. = select i1 %cmp, i32 -16711680, i32 -12648448
  %9 = and i32 %8, %.
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #4
  %conv8.sink = trunc i32 %10 to i16
  %11 = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 14
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv8.sink, ptr %11, align 2
  %13 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pdesc8, align 4
  %sh.diff = lshr i32 %14, 5
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %conv13 = and i8 %tr.sh.diff, 120
  %rx_drvinfo_size = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 23
  %15 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv13, ptr %rx_drvinfo_size, align 1
  %16 = load i32, ptr %pdesc8, align 4
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 3
  %rx_bufshift = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 24
  %19 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %rx_bufshift, align 2
  %20 = load i32, ptr %pdesc8, align 4
  %icv = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 19
  %21 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %icv, align 2
  %sh.diff327 = lshr i32 %20, 18
  %tr.sh.diff328 = trunc i32 %sh.diff327 to i8
  %bf.value = and i8 %tr.sh.diff328, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.value, %bf.clear
  store i8 %bf.set, ptr %icv, align 2
  %22 = load i32, ptr %pdesc8, align 4
  %sum.shift.i290 = lshr i32 %22, 22
  %23 = trunc i32 %sum.shift.i290 to i8
  %24 = shl i8 %23, 6
  %bf.value21 = and i8 %24, 64
  %bf.clear23 = and i8 %bf.set, 63
  %bf.lshr32 = lshr exact i8 %bf.value, 5
  %25 = or i8 %bf.lshr32, %23
  %bf.shl39 = shl i8 %25, 7
  %bf.clear40 = or i8 %bf.clear23, %bf.value21
  %bf.set41 = or i8 %bf.clear40, %bf.shl39
  store i8 %bf.set41, ptr %icv, align 2
  %26 = load i32, ptr %pdesc8, align 4
  %27 = trunc i32 %26 to i8
  %28 = lshr i8 %27, 1
  %29 = and i8 %28, 4
  %bf.clear48 = and i8 %bf.set41, -5
  %30 = or i8 %bf.clear48, %29
  %bf.set49 = xor i8 %30, 4
  store i8 %bf.set49, ptr %icv, align 2
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i, align 4
  %33 = lshr i32 %32, 24
  %34 = trunc i32 %33 to i8
  %conv52 = and i8 %34, 63
  %rate = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 5
  %35 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv52, ptr %rate, align 1
  %36 = load i32, ptr %add.ptr.i, align 4
  %sh.diff329 = lshr i32 %36, 12
  %tr.sh.diff330 = trunc i32 %sh.diff329 to i8
  %bf.value56 = and i8 %tr.sh.diff330, 16
  %bf.clear58 = and i8 %bf.set49, -17
  %bf.set59 = or i8 %bf.clear58, %bf.value56
  store i8 %bf.set59, ptr %icv, align 2
  %add.ptr.i298 = getelementptr i32, ptr %pdesc8, i32 1
  %37 = ptrtoint ptr %add.ptr.i298 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i298, align 4
  %isampdu = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 25
  %39 = lshr i32 %38, 22
  %40 = trunc i32 %39 to i8
  %41 = and i8 %40, 1
  %42 = ptrtoint ptr %isampdu to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %isampdu, align 1
  %43 = load i32, ptr %add.ptr.i298, align 4
  %44 = and i32 %43, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %44)
  %45 = icmp eq i32 %44, 12582912
  %isfirst_ampdu = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 26
  %frombool70 = zext i1 %45 to i8
  %46 = ptrtoint ptr %isfirst_ampdu to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %frombool70, ptr %isfirst_ampdu, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp73 = icmp eq i8 %conv, 0
  br i1 %cmp73, label %if.then75, label %entry.if.end77_crit_edge

entry.if.end77_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

if.then75:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i305 = getelementptr i32, ptr %pdesc8, i32 5
  %47 = ptrtoint ptr %add.ptr.i305 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i305, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #4
  %timestamp_low = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 20
  %50 = ptrtoint ptr %timestamp_low to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %timestamp_low, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %entry.if.end77_crit_edge
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i, align 4
  %rx_is40mhzpacket = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 27
  %53 = lshr i32 %52, 17
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = ptrtoint ptr %rx_is40mhzpacket to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %rx_is40mhzpacket, align 1
  %57 = load i32, ptr %add.ptr.i, align 4
  %is_ht = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 42
  %58 = lshr i32 %57, 30
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  %61 = ptrtoint ptr %is_ht to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %is_ht, align 4
  %switch.and = and i8 %34, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and)
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  %is_cck = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 41
  %frombool101 = zext i1 %switch.selectcmp to i8
  %62 = ptrtoint ptr %is_cck to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %frombool101, ptr %is_cck, align 1
  %63 = ptrtoint ptr %add.ptr.i298 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i298, align 4
  %65 = lshr i32 %64, 24
  %and.i.i313 = and i32 %65, 63
  %macid = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 50
  %66 = ptrtoint ptr %macid to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and.i.i313, ptr %macid, align 8
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i, align 4
  %69 = and i32 %68, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool104.not = icmp eq i32 %69, 0
  br i1 %tobool104.not, label %if.else106, label %if.end77.if.then119_crit_edge

if.end77.if.then119_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then119

if.else106:                                       ; preds = %if.end77
  %70 = and i32 %68, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool108.not = icmp eq i32 %70, 0
  br i1 %tobool108.not, label %if.end117, label %if.else106.if.then119_crit_edge

if.else106.if.then119_crit_edge:                  ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then119

if.end117:                                        ; preds = %if.else106
  %71 = and i32 %68, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool112.not = icmp eq i32 %71, 0
  br i1 %tobool112.not, label %if.end117.if.end121_crit_edge, label %if.end117.if.then119_crit_edge

if.end117.if.then119_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then119

if.end117.if.end121_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121

if.then119:                                       ; preds = %if.end117.if.then119_crit_edge, %if.else106.if.then119_crit_edge, %if.end77.if.then119_crit_edge
  %wake_match.0325 = phi i32 [ 1, %if.end117.if.then119_crit_edge ], [ 2, %if.else106.if.then119_crit_edge ], [ 4, %if.end77.if.then119_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4096, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %wake_match.0325) #4
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end117.if.end121_crit_edge
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %72 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %center_freq, align 4
  %conv122 = trunc i32 %75 to i16
  %freq = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 5
  %76 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %76)
  %bf.load123 = load i16, ptr %freq, align 4
  %bf.shl125 = shl i16 %conv122, 3
  %bf.clear126 = and i16 %bf.load123, 7
  %bf.set127 = or i16 %bf.clear126, %bf.shl125
  store i16 %bf.set127, ptr %freq, align 4
  %77 = load ptr, ptr %chandef, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %conv131 = trunc i32 %79 to i8
  %band132 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 11
  %80 = ptrtoint ptr %band132 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv131, ptr %band132, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %81 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data, align 4
  %83 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %rx_drvinfo_size, align 1
  %conv134 = zext i8 %84 to i32
  %add.ptr = getelementptr i8, ptr %82, i32 %conv134
  %85 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %rx_bufshift, align 2
  %conv136 = zext i8 %86 to i32
  %add.ptr137 = getelementptr i8, ptr %add.ptr, i32 %conv136
  %87 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load139 = load i8, ptr %icv, align 2
  %88 = and i8 %bf.load139, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool143.not = icmp eq i8 %88, 0
  br i1 %tobool143.not, label %if.end121.if.end146_crit_edge, label %if.then144

if.end121.if.end146_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end146

if.then144:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #6
  %flag = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %89 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flag, align 8
  %or145 = or i32 %90, 32
  store i32 %or145, ptr %flag, align 8
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %if.end121.if.end146_crit_edge
  %91 = ptrtoint ptr %rx_is40mhzpacket to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %rx_is40mhzpacket, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool148.not = icmp eq i8 %92, 0
  br i1 %tobool148.not, label %if.end146.if.end153_crit_edge, label %if.then149

if.end146.if.end153_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153

if.then149:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #6
  %bw = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %93 = ptrtoint ptr %bw to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %bf.load150 = load i16, ptr %bw, align 1
  %bf.clear151 = and i16 %bf.load150, -14337
  %bf.set152 = or i16 %bf.clear151, 6144
  store i16 %bf.set152, ptr %bw, align 1
  br label %if.end153

if.end153:                                        ; preds = %if.then149, %if.end146.if.end153_crit_edge
  %94 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %is_ht, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool155.not = icmp eq i8 %95, 0
  br i1 %tobool155.not, label %if.end153.if.end160_crit_edge, label %if.then156

if.end153.if.end160_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end160

if.then156:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #6
  %encoding = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %96 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %bf.load157 = load i16, ptr %encoding, align 1
  %bf.clear158 = and i16 %bf.load157, 16383
  %bf.set159 = or i16 %bf.clear158, 16384
  store i16 %bf.set159, ptr %encoding, align 1
  br label %if.end160

if.end160:                                        ; preds = %if.then156, %if.end153.if.end160_crit_edge
  %flag161 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %97 = ptrtoint ptr %flag161 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flag161, align 8
  %or162 = or i32 %98, 128
  store i32 %or162, ptr %flag161, align 8
  %99 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load164 = load i8, ptr %icv, align 2
  %100 = and i8 %bf.load164, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool168.not = icmp eq i8 %100, 0
  br i1 %tobool168.not, label %if.end160.if.end180_crit_edge, label %if.then169

if.end160.if.end180_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end180

if.then169:                                       ; preds = %if.end160
  %101 = ptrtoint ptr %add.ptr137 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %add.ptr137, align 2
  %103 = and i16 %102, -1024
  %104 = zext i16 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values)
  switch i16 %103, label %land.lhs.true [
    i16 -24576, label %if.then169.if.else176_crit_edge
    i16 -16384, label %if.then169.if.else176_crit_edge334
    i16 -12288, label %if.then169.if.else176_crit_edge335
  ]

if.then169.if.else176_crit_edge335:               ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else176

if.then169.if.else176_crit_edge334:               ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else176

if.then169.if.else176_crit_edge:                  ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else176

land.lhs.true:                                    ; preds = %if.then169
  %.pre = and i16 %102, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pre)
  %cmp.i.not = icmp eq i16 %.pre, 0
  br i1 %cmp.i.not, label %land.lhs.true.if.else176_crit_edge, label %if.then173

land.lhs.true.if.else176_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else176

if.then173:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %or175 = or i32 %98, 130
  br label %if.end180.sink.split

if.else176:                                       ; preds = %land.lhs.true.if.else176_crit_edge, %if.then169.if.else176_crit_edge, %if.then169.if.else176_crit_edge334, %if.then169.if.else176_crit_edge335
  %and178 = and i32 %or162, -3
  br label %if.end180.sink.split

if.end180.sink.split:                             ; preds = %if.else176, %if.then173
  %or175.sink = phi i32 [ %or175, %if.then173 ], [ %and178, %if.else176 ]
  %105 = ptrtoint ptr %flag161 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %or175.sink, ptr %flag161, align 8
  br label %if.end180

if.end180:                                        ; preds = %if.end180.sink.split, %if.end160.if.end180_crit_edge
  %106 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %is_ht, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool182 = icmp ne i8 %107, 0
  %108 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %rate, align 1
  %call184 = tail call i32 @rtlwifi_rate_mapping(ptr noundef %hw, i1 noundef zeroext %tobool182, i1 noundef zeroext false, i8 noundef zeroext %109) #4
  %conv185 = trunc i32 %call184 to i8
  %rate_idx = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 8
  %110 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv185, ptr %rate_idx, align 1
  %timestamp_low186 = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 20
  %111 = ptrtoint ptr %timestamp_low186 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %timestamp_low186, align 4
  %conv187 = zext i32 %112 to i64
  %113 = ptrtoint ptr %rx_status to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %conv187, ptr %rx_status, align 8
  %114 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp188.not = icmp eq i32 %114, 0
  br i1 %cmp188.not, label %if.end180.if.end195_crit_edge, label %if.then190

if.end180.if.end195_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end195

if.then190:                                       ; preds = %if.end180
  %115 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data, align 4
  %117 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %rx_bufshift, align 2
  %conv193 = zext i8 %118 to i32
  %add.ptr194 = getelementptr i8, ptr %116, i32 %conv193
  %119 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %priv, align 8
  %121 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %rx_drvinfo_size, align 1
  %conv.i = zext i8 %122 to i32
  %add.ptr.i320 = getelementptr i8, ptr %116, i32 %conv.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i320, i32 %conv193
  %123 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %add.ptr3.i, align 2
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 2
  %125 = and i16 %124, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %125)
  %cmp.i.i.i = icmp eq i16 %125, 3
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #6
  %addr4.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 6
  br label %ieee80211_get_SA.exit.i

if.end.i.i:                                       ; preds = %if.then190
  %126 = and i16 %124, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %cmp.i11.not.i.i = icmp eq i16 %126, 0
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
  %127 = call ptr @memcpy(ptr %status, ptr %retval.0.i.i, i32 6)
  %128 = and i16 %124, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %128)
  %cmp.i.i = icmp eq i16 %128, 1024
  br i1 %cmp.i.i, label %ieee80211_get_SA.exit.i.land.end39.i_crit_edge, label %land.lhs.true.i

ieee80211_get_SA.exit.i.land.end39.i_crit_edge:   ; preds = %ieee80211_get_SA.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end39.i

land.lhs.true.i:                                  ; preds = %ieee80211_get_SA.exit.i
  %bssid.i = getelementptr inbounds %struct.rtl_priv, ptr %120, i32 0, i32 9, i32 34
  %129 = and i16 %124, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %cmp.i1.not.i = icmp eq i16 %129, 0
  br i1 %cmp.i1.not.i, label %cond.false.i, label %land.lhs.true.i.cond.end18.i_crit_edge

land.lhs.true.i.cond.end18.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end18.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  %130 = and i16 %124, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %cmp.i2.not.i = icmp eq i16 %130, 0
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
  %131 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %bssid.i, align 4
  %133 = ptrtoint ptr %cond19.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %cond19.i, align 4
  %xor.i.i = xor i32 %134, %132
  %add.ptr.i.i = getelementptr %struct.rtl_priv, ptr %120, i32 0, i32 9, i32 34, i32 4
  %135 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %cond19.i, i32 4
  %137 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %138, %136
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i3.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i3.i, label %land.lhs.true22.i, label %cond.end18.i.land.end39.i_crit_edge

cond.end18.i.land.end39.i_crit_edge:              ; preds = %cond.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end39.i

land.lhs.true22.i:                                ; preds = %cond.end18.i
  %139 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %139)
  %bf.load.i = load i8, ptr %icv, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.load.i)
  %140 = icmp ult i8 %bf.load.i, 32
  br i1 %140, label %land.rhs35.i, label %land.lhs.true22.i.land.end39.i_crit_edge

land.lhs.true22.i.land.end39.i_crit_edge:         ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end39.i

land.rhs35.i:                                     ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev_addr.i = getelementptr inbounds %struct.rtl_priv, ptr %120, i32 0, i32 17, i32 19
  %141 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %addr1.i, align 4
  %143 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %dev_addr.i, align 4
  %xor.i4.i = xor i32 %144, %142
  %add.ptr.i5.i = getelementptr i8, ptr %addr1.i, i32 4
  %145 = ptrtoint ptr %add.ptr.i5.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %add.ptr.i5.i, align 2
  %add.ptr1.i6.i = getelementptr %struct.rtl_priv, ptr %120, i32 0, i32 17, i32 19, i32 4
  %147 = ptrtoint ptr %add.ptr1.i6.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %add.ptr1.i6.i, align 2
  %xor37.i7.i = xor i16 %148, %146
  %xor3.i8.i = zext i16 %xor37.i7.i to i32
  %or.i9.i = or i32 %xor.i4.i, %xor3.i8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i9.i)
  %cmp.i10.i = icmp eq i32 %or.i9.i, 0
  br label %land.end39.i

land.end39.i:                                     ; preds = %land.rhs35.i, %land.lhs.true22.i.land.end39.i_crit_edge, %cond.end18.i.land.end39.i_crit_edge, %ieee80211_get_SA.exit.i.land.end39.i_crit_edge
  %149 = phi i1 [ true, %land.rhs35.i ], [ false, %land.lhs.true22.i.land.end39.i_crit_edge ], [ false, %cond.end18.i.land.end39.i_crit_edge ], [ false, %ieee80211_get_SA.exit.i.land.end39.i_crit_edge ]
  %150 = phi i1 [ %cmp.i10.i, %land.rhs35.i ], [ false, %land.lhs.true22.i.land.end39.i_crit_edge ], [ false, %cond.end18.i.land.end39.i_crit_edge ], [ false, %ieee80211_get_SA.exit.i.land.end39.i_crit_edge ]
  %151 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %add.ptr3.i, align 2
  %153 = and i16 %152, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %153)
  %cmp.i11.i = icmp eq i16 %153, -32768
  %frombool.i.i = zext i1 %149 to i8
  %frombool1.i.i = zext i1 %150 to i8
  %frombool2.i.i = zext i1 %cmp.i11.i to i8
  %154 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %priv, align 8
  %156 = ptrtoint ptr %is_cck to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %is_cck, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool.not.i.i = icmp eq i8 %157, 0
  %packet_matchbssid.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 40
  %158 = ptrtoint ptr %packet_matchbssid.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %frombool.i.i, ptr %packet_matchbssid.i.i, align 2
  %packet_toself.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 43
  %159 = ptrtoint ptr %packet_toself.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %frombool1.i.i, ptr %packet_toself.i.i, align 1
  %packet_beacon11.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 44
  %160 = ptrtoint ptr %packet_beacon11.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %frombool2.i.i, ptr %packet_beacon11.i.i, align 2
  %rx_mimo_signalquality.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 31
  %161 = ptrtoint ptr %rx_mimo_signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 -1, ptr %rx_mimo_signalquality.i.i, align 4
  %arrayidx14.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 31, i32 1
  %162 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 -1, ptr %arrayidx14.i.i, align 1
  br i1 %tobool.not.i.i, label %if.else208.i.i, label %if.then.i13.i

if.then.i13.i:                                    ; preds = %land.end39.i
  %cck_agc_rpt16.i.i = getelementptr inbounds %struct.phy_sts_cck_8192s_t, ptr %add.ptr194, i32 0, i32 2
  %163 = ptrtoint ptr %cck_agc_rpt16.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %cck_agc_rpt16.i.i, align 1
  %rfpwr_state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %155, i32 0, i32 21, i32 24
  %165 = ptrtoint ptr %rfpwr_state.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %rfpwr_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp.i12.i = icmp eq i32 %166, 0
  br i1 %cmp.i12.i, label %if.then17.i.i, label %if.then.i13.i.if.end.i14.i_crit_edge

if.then.i13.i.if.end.i14.i_crit_edge:             ; preds = %if.then.i13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i14.i

if.then17.i.i:                                    ; preds = %if.then.i13.i
  call void @__sanitizer_cov_trace_pc() #6
  %167 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %priv, align 8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %168, i32 0, i32 32
  %169 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %cfg.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %170, i32 0, i32 4
  %171 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ops.i.i.i, align 4
  %get_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %172, i32 0, i32 45
  %173 = ptrtoint ptr %get_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %get_bbreg.i.i.i, align 4
  %call.i.i.i = tail call i32 %174(ptr noundef %hw, i32 noundef 2084, i32 noundef 512) #4
  %conv.i.i = trunc i32 %call.i.i.i to i8
  br label %if.end.i14.i

if.end.i14.i:                                     ; preds = %if.then17.i.i, %if.then.i13.i.if.end.i14.i_crit_edge
  %cck_highpwr.0.i.i = phi i8 [ %conv.i.i, %if.then17.i.i ], [ 0, %if.then.i13.i.if.end.i14.i_crit_edge ]
  %175 = lshr i8 %164, 5
  %176 = and i8 %164, 31
  %conv23.i.i = zext i8 %175 to i32
  %177 = zext i32 %conv23.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %conv23.i.i, label %if.end.unreachabledefault.i.i [
    i32 7, label %sw.bb.i.i
    i32 6, label %sw.bb32.i.i
    i32 5, label %sw.bb38.i.i
    i32 4, label %sw.bb44.i.i
    i32 3, label %sw.bb50.i.i
    i32 2, label %sw.bb56.i.i
    i32 1, label %sw.bb71.i.i
    i32 0, label %sw.bb76.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %176)
  %cmp25.i.i = icmp ult i8 %176, 28
  br i1 %cmp25.i.i, label %if.then27.i.i, label %sw.bb.i.i.sw.epilog.i.i_crit_edge

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

if.then27.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg8.i.i = mul nsw i8 %176, -2
  %add.i.i = add nsw i8 %.neg8.i.i, -46
  br label %sw.epilog.i.i

sw.bb32.i.i:                                      ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg7.i.i = mul nsw i8 %176, -2
  %add36.i.i = add nsw i8 %.neg7.i.i, -44
  br label %sw.epilog.i.i

sw.bb38.i.i:                                      ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg6.i.i = mul nsw i8 %176, -2
  %add42.i.i = add nsw i8 %.neg6.i.i, -28
  br label %sw.epilog.i.i

sw.bb44.i.i:                                      ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg5.i.i = mul nsw i8 %176, -2
  %add48.i.i = add nsw i8 %.neg5.i.i, -22
  br label %sw.epilog.i.i

sw.bb50.i.i:                                      ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg4.i.i = mul nsw i8 %176, -2
  %add54.i.i = add nsw i8 %.neg4.i.i, -10
  br label %sw.epilog.i.i

sw.bb56.i.i:                                      ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cck_highpwr.0.i.i)
  %tobool57.not.i.i = icmp eq i8 %cck_highpwr.0.i.i, 0
  %.neg2.i.i = mul nsw i8 %176, -2
  br i1 %tobool57.not.i.i, label %if.else64.i.i, label %if.then58.i.i

if.then58.i.i:                                    ; preds = %sw.bb56.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %add62.i.i = add nsw i8 %.neg2.i.i, -2
  br label %sw.epilog.i.i

if.else64.i.i:                                    ; preds = %sw.bb56.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %add68.i.i = add nsw i8 %.neg2.i.i, 4
  br label %sw.epilog.i.i

sw.bb71.i.i:                                      ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg1.i.i = mul nsw i8 %176, -2
  %sub74.i.i = add nsw i8 %.neg1.i.i, 8
  br label %sw.epilog.i.i

sw.bb76.i.i:                                      ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #6
  %.neg.i.i = mul nsw i8 %176, -2
  %sub79.i.i = add nsw i8 %.neg.i.i, 14
  br label %sw.epilog.i.i

if.end.unreachabledefault.i.i:                    ; preds = %if.end.i14.i
  unreachable

sw.epilog.i.i:                                    ; preds = %sw.bb76.i.i, %sw.bb71.i.i, %if.else64.i.i, %if.then58.i.i, %sw.bb50.i.i, %sw.bb44.i.i, %sw.bb38.i.i, %sw.bb32.i.i, %if.then27.i.i, %sw.bb.i.i.sw.epilog.i.i_crit_edge
  %rx_pwr_all.0.i.i = phi i8 [ %sub79.i.i, %sw.bb76.i.i ], [ %sub74.i.i, %sw.bb71.i.i ], [ %add62.i.i, %if.then58.i.i ], [ %add68.i.i, %if.else64.i.i ], [ %add54.i.i, %sw.bb50.i.i ], [ %add48.i.i, %sw.bb44.i.i ], [ %add42.i.i, %sw.bb38.i.i ], [ %add36.i.i, %sw.bb32.i.i ], [ %add.i.i, %if.then27.i.i ], [ -100, %sw.bb.i.i.sw.epilog.i.i_crit_edge ]
  %add82.i.i = add nsw i8 %rx_pwr_all.0.i.i, 6
  %call84.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %add82.i.i) #4
  %add86.i.i = add i8 %call84.i.i, 6
  %178 = tail call i8 @llvm.umin.i8(i8 %add86.i.i, i8 100) #4
  %179 = add nsw i8 %178, -35
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %179)
  %180 = icmp ult i8 %179, 8
  br i1 %180, label %if.then99.i.i, label %if.else103.i.i

if.then99.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub101.i.i = add nsw i8 %178, -2
  br label %if.end142.i.i

if.else103.i.i:                                   ; preds = %sw.epilog.i.i
  %181 = add nsw i8 %178, -27
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %181)
  %182 = icmp ult i8 %181, 8
  br i1 %182, label %if.then111.i.i, label %if.else115.i.i

if.then111.i.i:                                   ; preds = %if.else103.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub113.i.i = add nsw i8 %178, -6
  br label %if.end142.i.i

if.else115.i.i:                                   ; preds = %if.else103.i.i
  %183 = add nsw i8 %178, -15
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %183)
  %184 = icmp ult i8 %183, 12
  br i1 %184, label %if.then123.i.i, label %if.else127.i.i

if.then123.i.i:                                   ; preds = %if.else115.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub125.i.i = add nsw i8 %178, -8
  br label %if.end142.i.i

if.else127.i.i:                                   ; preds = %if.else115.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %185 = add nsw i8 %178, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %185)
  %186 = icmp ult i8 %185, 10
  %sub137.i.i = add nsw i8 %178, -4
  %spec.select15.i.i = select i1 %186, i8 %sub137.i.i, i8 %178
  br label %if.end142.i.i

if.end142.i.i:                                    ; preds = %if.else127.i.i, %if.then123.i.i, %if.then111.i.i, %if.then99.i.i
  %pwdb_all.0.i.i = phi i8 [ %sub101.i.i, %if.then99.i.i ], [ %sub113.i.i, %if.then111.i.i ], [ %sub125.i.i, %if.then123.i.i ], [ %spec.select15.i.i, %if.else127.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cck_highpwr.0.i.i)
  %tobool143.not.i.i = icmp eq i8 %cck_highpwr.0.i.i, 0
  br i1 %tobool143.not.i.i, label %if.then144.i.i, label %if.end142.i.i.if.end176.i.i_crit_edge

if.end142.i.i.if.end176.i.i_crit_edge:            ; preds = %if.end142.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end176.i.i

if.then144.i.i:                                   ; preds = %if.end142.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %pwdb_all.0.i.i)
  %cmp146.i.i = icmp ugt i8 %pwdb_all.0.i.i, 79
  br i1 %cmp146.i.i, label %if.then148.i.i, label %if.else157.i.i

if.then148.i.i:                                   ; preds = %if.then144.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv145.i.i = zext i8 %pwdb_all.0.i.i to i32
  %sub150.i.i = add nsw i32 %conv145.i.i, -80
  %shl.i.i = shl nuw nsw i32 %sub150.i.i, 1
  %187 = lshr i32 %sub150.i.i, 1
  %add154.i.i = add nuw nsw i32 %shl.i.i, %187
  %188 = trunc i32 %add154.i.i to i8
  %conv156.i.i = add nuw i8 %188, 80
  br label %if.end170.i.i

if.else157.i.i:                                   ; preds = %if.then144.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %pwdb_all.0.i.i)
  %cmp159.not.i.i = icmp ne i8 %pwdb_all.0.i.i, 79
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %pwdb_all.0.i.i)
  %cmp163.i.i = icmp ugt i8 %pwdb_all.0.i.i, 19
  %or.cond12.i.i = and i1 %cmp159.not.i.i, %cmp163.i.i
  %add167.i.i = add nuw nsw i8 %pwdb_all.0.i.i, 3
  %spec.select16.i.i = select i1 %or.cond12.i.i, i8 %add167.i.i, i8 %pwdb_all.0.i.i
  br label %if.end170.i.i

if.end170.i.i:                                    ; preds = %if.else157.i.i, %if.then148.i.i
  %pwdb_all.1.i.i = phi i8 [ %conv156.i.i, %if.then148.i.i ], [ %spec.select16.i.i, %if.else157.i.i ]
  %189 = tail call i8 @llvm.umin.i8(i8 %pwdb_all.1.i.i, i8 100) #4
  br label %if.end176.i.i

if.end176.i.i:                                    ; preds = %if.end170.i.i, %if.end142.i.i.if.end176.i.i_crit_edge
  %pwdb_all.2.i.i = phi i8 [ %pwdb_all.0.i.i, %if.end142.i.i.if.end176.i.i_crit_edge ], [ %189, %if.end170.i.i ]
  %conv177.i.i = zext i8 %pwdb_all.2.i.i to i32
  %rx_pwdb_all.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 29
  %190 = ptrtoint ptr %rx_pwdb_all.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %conv177.i.i, ptr %rx_pwdb_all.i.i, align 4
  %conv178.i.i = sext i8 %add82.i.i to i32
  %recvsignalpower.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 16
  %191 = ptrtoint ptr %recvsignalpower.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %conv178.i.i, ptr %recvsignalpower.i.i, align 4
  br i1 %149, label %if.then180.i.i, label %if.end176.i.i._rtl88ee_query_rxphystatus.exit.i_crit_edge

if.end176.i.i._rtl88ee_query_rxphystatus.exit.i_crit_edge: ; preds = %if.end176.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl88ee_query_rxphystatus.exit.i

if.then180.i.i:                                   ; preds = %if.end176.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %pwdb_all.2.i.i)
  %cmp182.i.i = icmp ugt i8 %pwdb_all.2.i.i, 40
  br i1 %cmp182.i.i, label %if.then180.i.i.if.end202.i.i_crit_edge, label %if.else185.i.i

if.then180.i.i.if.end202.i.i_crit_edge:           ; preds = %if.then180.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end202.i.i

if.else185.i.i:                                   ; preds = %if.then180.i.i
  %sq_rpt.i.i = getelementptr inbounds %struct.phy_sts_cck_8192s_t, ptr %add.ptr194, i32 0, i32 1
  %192 = ptrtoint ptr %sq_rpt.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %sq_rpt.i.i, align 1
  %conv186.i.i = zext i8 %193 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %193)
  %cmp187.i.i = icmp ugt i8 %193, 64
  br i1 %cmp187.i.i, label %if.else185.i.i.if.end202.i.i_crit_edge, label %if.else190.i.i

if.else185.i.i.if.end202.i.i_crit_edge:           ; preds = %if.else185.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end202.i.i

if.else190.i.i:                                   ; preds = %if.else185.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %193)
  %cmp192.i.i = icmp ult i8 %193, 20
  br i1 %cmp192.i.i, label %if.else190.i.i.if.end202.i.i_crit_edge, label %if.else195.i.i

if.else190.i.i.if.end202.i.i_crit_edge:           ; preds = %if.else190.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end202.i.i

if.else195.i.i:                                   ; preds = %if.else190.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub197.i.i = sub nsw i16 64, %conv186.i.i
  %mul198.i.i = mul nsw i16 %sub197.i.i, 100
  %div21.i.i = sdiv i16 %mul198.i.i, 44
  %conv199.i.i = trunc i16 %div21.i.i to i8
  br label %if.end202.i.i

if.end202.i.i:                                    ; preds = %if.else195.i.i, %if.else190.i.i.if.end202.i.i_crit_edge, %if.else185.i.i.if.end202.i.i_crit_edge, %if.then180.i.i.if.end202.i.i_crit_edge
  %sq.0.i.i = phi i8 [ %conv199.i.i, %if.else195.i.i ], [ 100, %if.then180.i.i.if.end202.i.i_crit_edge ], [ 0, %if.else185.i.i.if.end202.i.i_crit_edge ], [ 100, %if.else190.i.i.if.end202.i.i_crit_edge ]
  %signalquality.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 15
  %194 = ptrtoint ptr %signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %sq.0.i.i, ptr %signalquality.i.i, align 8
  %195 = ptrtoint ptr %rx_mimo_signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %sq.0.i.i, ptr %rx_mimo_signalquality.i.i, align 4
  %196 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 -1, ptr %arrayidx14.i.i, align 1
  br label %_rtl88ee_query_rxphystatus.exit.i

if.else208.i.i:                                   ; preds = %land.end39.i
  %rfpath_rxenable.i.i = getelementptr %struct.rtl_priv, ptr %155, i32 0, i32 15, i32 15
  %arrayidx210.i.i = getelementptr %struct.rtl_priv, ptr %155, i32 0, i32 15, i32 15, i32 1
  %197 = ptrtoint ptr %arrayidx210.i.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 1, ptr %arrayidx210.i.i, align 1
  %198 = ptrtoint ptr %rfpath_rxenable.i.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 1, ptr %rfpath_rxenable.i.i, align 2
  %199 = ptrtoint ptr %add.ptr194 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %add.ptr194, align 1
  %201 = shl i8 %200, 1
  %202 = and i8 %201, 126
  %sub228.i.i = add nsw i8 %202, -110
  %call234.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub228.i.i) #4
  %conv235.i.i = zext i8 %call234.i.i to i32
  %arrayidx238.i.i = getelementptr %struct.rx_fwinfo_88e, ptr %add.ptr194, i32 0, i32 5, i32 0
  %203 = ptrtoint ptr %arrayidx238.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx238.i.i, align 1
  %205 = sdiv i8 %204, 2
  %div240.i.i = sext i8 %205 to i32
  %arrayidx242.i.i = getelementptr %struct.rtl_priv, ptr %155, i32 0, i32 24, i32 10, i32 0
  %206 = ptrtoint ptr %arrayidx242.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %div240.i.i, ptr %arrayidx242.i.i, align 4
  br i1 %149, label %if.then244.i.i, label %if.else208.i.i.for.inc.i.i_crit_edge

if.else208.i.i.for.inc.i.i_crit_edge:             ; preds = %if.else208.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.then244.i.i:                                   ; preds = %if.else208.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx247.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 30, i32 0
  %207 = ptrtoint ptr %arrayidx247.i.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %call234.i.i, ptr %arrayidx247.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then244.i.i, %if.else208.i.i.for.inc.i.i_crit_edge
  %208 = ptrtoint ptr %arrayidx210.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx210.i.i, align 1, !range !36
  %spec.select13.1.i.i = add nuw nsw i8 %209, 1
  %arrayidx224.1.i.i = getelementptr [4 x i8], ptr %add.ptr194, i32 0, i32 1
  %210 = ptrtoint ptr %arrayidx224.1.i.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx224.1.i.i, align 1
  %212 = shl i8 %211, 1
  %213 = and i8 %212, 126
  %sub228.1.i.i = add nsw i8 %213, -110
  %call234.1.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub228.1.i.i) #4
  %conv235.1.i.i = zext i8 %call234.1.i.i to i32
  %add236.1.i.i = add nuw nsw i32 %conv235.1.i.i, %conv235.i.i
  %arrayidx238.1.i.i = getelementptr %struct.rx_fwinfo_88e, ptr %add.ptr194, i32 0, i32 5, i32 1
  %214 = ptrtoint ptr %arrayidx238.1.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx238.1.i.i, align 1
  %216 = sdiv i8 %215, 2
  %div240.1.i.i = sext i8 %216 to i32
  %arrayidx242.1.i.i = getelementptr %struct.rtl_priv, ptr %155, i32 0, i32 24, i32 10, i32 1
  %217 = ptrtoint ptr %arrayidx242.1.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %div240.1.i.i, ptr %arrayidx242.1.i.i, align 4
  br i1 %149, label %if.then244.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.i.i

if.then244.1.i.i:                                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx247.1.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 30, i32 1
  %218 = ptrtoint ptr %arrayidx247.1.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %call234.1.i.i, ptr %arrayidx247.1.i.i, align 1
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then244.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %pwdb_all250.i.i = getelementptr inbounds %struct.rx_fwinfo_88e, ptr %add.ptr194, i32 0, i32 1
  %219 = ptrtoint ptr %pwdb_all250.i.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %pwdb_all250.i.i, align 1
  %221 = lshr i8 %220, 1
  %sub254.i.i = add nsw i8 %221, -110
  %call256.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub254.i.i) #4
  %conv257.i.i = zext i8 %call256.i.i to i32
  %rx_pwdb_all258.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 29
  %222 = ptrtoint ptr %rx_pwdb_all258.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %conv257.i.i, ptr %rx_pwdb_all258.i.i, align 4
  %rxpower.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 17
  %223 = ptrtoint ptr %rxpower.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %sub254.i.i, ptr %rxpower.i.i, align 8
  %conv259.i.i = sext i8 %sub254.i.i to i32
  %recvsignalpower260.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 16
  %224 = ptrtoint ptr %recvsignalpower260.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %conv259.i.i, ptr %recvsignalpower260.i.i, align 4
  %225 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %is_ht, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool261.not.i.i = icmp eq i8 %226, 0
  br i1 %tobool261.not.i.i, label %for.inc.1.i.i.if.else273.i.i_crit_edge, label %land.lhs.true263.i.i

for.inc.1.i.i.if.else273.i.i_crit_edge:           ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else273.i.i

land.lhs.true263.i.i:                             ; preds = %for.inc.1.i.i
  %227 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %rate, align 1
  %229 = add i8 %228, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %229)
  %230 = icmp ult i8 %229, 8
  br i1 %230, label %land.lhs.true263.i.i.if.end274.i.i_crit_edge, label %land.lhs.true263.i.i.if.else273.i.i_crit_edge

land.lhs.true263.i.i.if.else273.i.i_crit_edge:    ; preds = %land.lhs.true263.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else273.i.i

land.lhs.true263.i.i.if.end274.i.i_crit_edge:     ; preds = %land.lhs.true263.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end274.i.i

if.else273.i.i:                                   ; preds = %land.lhs.true263.i.i.if.else273.i.i_crit_edge, %for.inc.1.i.i.if.else273.i.i_crit_edge
  br label %if.end274.i.i

if.end274.i.i:                                    ; preds = %if.else273.i.i, %land.lhs.true263.i.i.if.end274.i.i_crit_edge
  %exitcond.peel.not.i.i = phi i1 [ false, %land.lhs.true263.i.i.if.end274.i.i_crit_edge ], [ true, %if.else273.i.i ]
  %max_spatial_stream.0.i.i = phi i32 [ 2, %land.lhs.true263.i.i.if.end274.i.i_crit_edge ], [ 1, %if.else273.i.i ]
  %arrayidx282.peel.i.i = getelementptr %struct.rx_fwinfo_88e, ptr %add.ptr194, i32 0, i32 4, i32 0
  %231 = ptrtoint ptr %arrayidx282.peel.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx282.peel.i.i, align 1
  %call283.peel.i.i = tail call zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext %232) #4
  br i1 %149, label %if.end294.peel.i.i, label %if.end274.i.i.for.inc302.peel.i.i_crit_edge

if.end274.i.i.for.inc302.peel.i.i_crit_edge:      ; preds = %if.end274.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc302.peel.i.i

if.end294.peel.i.i:                               ; preds = %if.end274.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %signalquality293.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 15
  %233 = ptrtoint ptr %signalquality293.i.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %call283.peel.i.i, ptr %signalquality293.i.i, align 8
  %234 = ptrtoint ptr %rx_mimo_signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %call283.peel.i.i, ptr %rx_mimo_signalquality.i.i, align 1
  br label %for.inc302.peel.i.i

for.inc302.peel.i.i:                              ; preds = %if.end294.peel.i.i, %if.end274.i.i.for.inc302.peel.i.i_crit_edge
  br i1 %exitcond.peel.not.i.i, label %for.inc302.peel.i.i.if.then315.i.i_crit_edge, label %for.inc302.peel.i.i.for.body280.i.i_crit_edge

for.inc302.peel.i.i.for.body280.i.i_crit_edge:    ; preds = %for.inc302.peel.i.i
  br label %for.body280.i.i

for.inc302.peel.i.i.if.then315.i.i_crit_edge:     ; preds = %for.inc302.peel.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then315.i.i

for.body280.i.i:                                  ; preds = %for.inc302.i.i.for.body280.i.i_crit_edge, %for.inc302.peel.i.i.for.body280.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.inc302.i.i.for.body280.i.i_crit_edge ], [ 1, %for.inc302.peel.i.i.for.body280.i.i_crit_edge ]
  %arrayidx282.i.i = getelementptr %struct.rx_fwinfo_88e, ptr %add.ptr194, i32 0, i32 4, i32 %indvars.iv.i.i
  %235 = ptrtoint ptr %arrayidx282.i.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx282.i.i, align 1
  %call283.i.i = tail call zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext %236) #4
  br i1 %149, label %if.end294.i.i, label %for.body280.i.i.for.inc302.i.i_crit_edge

for.body280.i.i.for.inc302.i.i_crit_edge:         ; preds = %for.body280.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc302.i.i

if.end294.i.i:                                    ; preds = %for.body280.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx300.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 31, i32 %indvars.iv.i.i
  %237 = ptrtoint ptr %arrayidx300.i.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %call283.i.i, ptr %arrayidx300.i.i, align 1
  br label %for.inc302.i.i

for.inc302.i.i:                                   ; preds = %if.end294.i.i, %for.body280.i.i.for.inc302.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %max_spatial_stream.0.i.i
  br i1 %exitcond.not.i.i, label %for.inc302.i.i.if.then315.i.i_crit_edge, label %for.inc302.i.i.for.body280.i.i_crit_edge, !llvm.loop !37

for.inc302.i.i.for.body280.i.i_crit_edge:         ; preds = %for.inc302.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body280.i.i

for.inc302.i.i.if.then315.i.i_crit_edge:          ; preds = %for.inc302.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then315.i.i

if.then315.i.i:                                   ; preds = %for.inc302.i.i.if.then315.i.i_crit_edge, %for.inc302.peel.i.i.if.then315.i.i_crit_edge
  %conv312.i.i = zext i8 %spec.select13.1.i.i to i32
  %div317.i.i = udiv i32 %add236.1.i.i, %conv312.i.i
  br label %_rtl88ee_query_rxphystatus.exit.i

_rtl88ee_query_rxphystatus.exit.i:                ; preds = %if.then315.i.i, %if.end202.i.i, %if.end176.i.i._rtl88ee_query_rxphystatus.exit.i_crit_edge
  %div317.sink.i.i = phi i32 [ %div317.i.i, %if.then315.i.i ], [ %conv177.i.i, %if.end202.i.i ], [ %conv177.i.i, %if.end176.i.i._rtl88ee_query_rxphystatus.exit.i_crit_edge ]
  %call318.i.i = tail call i32 @rtl_signal_scale_mapping(ptr noundef %hw, i32 noundef %div317.sink.i.i) #4
  %conv319.i.i = trunc i32 %call318.i.i to i8
  %signalstrength320.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 18
  %238 = ptrtoint ptr %signalstrength320.i.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %conv319.i.i, ptr %signalstrength320.i.i, align 1
  %ant_sel.i.i = getelementptr inbounds %struct.phy_status_rpt, ptr %add.ptr194, i32 0, i32 17
  %239 = ptrtoint ptr %ant_sel.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %bf.load.i.i = load i8, ptr %ant_sel.i.i, align 1
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 7
  %antsel_rx_keep_0.i.i = getelementptr inbounds %struct.rtl_priv, ptr %155, i32 0, i32 15, i32 72, i32 1
  %240 = ptrtoint ptr %antsel_rx_keep_0.i.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %bf.lshr.i.i, ptr %antsel_rx_keep_0.i.i, align 2
  %bf.load323.i.i = load i8, ptr %ant_sel.i.i, align 1
  %bf.lshr324.i.i = lshr i8 %bf.load323.i.i, 6
  %bf.clear.i.i = and i8 %bf.lshr324.i.i, 1
  %antsel_rx_keep_1.i.i = getelementptr inbounds %struct.rtl_priv, ptr %155, i32 0, i32 15, i32 72, i32 2
  %241 = ptrtoint ptr %antsel_rx_keep_1.i.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %bf.clear.i.i, ptr %antsel_rx_keep_1.i.i, align 1
  %bf.load326.i.i = load i8, ptr %ant_sel.i.i, align 1
  %bf.clear327.i.i = and i8 %bf.load326.i.i, 1
  %antsel_rx_keep_2329.i.i = getelementptr inbounds %struct.rtl_priv, ptr %155, i32 0, i32 15, i32 72, i32 3
  %242 = ptrtoint ptr %antsel_rx_keep_2329.i.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %bf.clear327.i.i, ptr %antsel_rx_keep_2329.i.i, align 4
  %243 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %priv, align 8
  %antenna_div_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %244, i32 0, i32 17, i32 22
  %245 = ptrtoint ptr %antenna_div_type.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %antenna_div_type.i.i, align 1
  %247 = zext i8 %246 to i64
  call void @__sanitizer_cov_trace_switch(i64 %247, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %246, label %_rtl88ee_query_rxphystatus.exit.i._rtl88ee_translate_rx_signal_stuff.exit_crit_edge [
    i8 4, label %if.then.i16.i
    i8 1, label %_rtl88ee_query_rxphystatus.exit.i.if.then25.i.i_crit_edge
    i8 2, label %_rtl88ee_query_rxphystatus.exit.i.if.then25.i.i_crit_edge336
  ]

_rtl88ee_query_rxphystatus.exit.i.if.then25.i.i_crit_edge336: ; preds = %_rtl88ee_query_rxphystatus.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then25.i.i

_rtl88ee_query_rxphystatus.exit.i.if.then25.i.i_crit_edge: ; preds = %_rtl88ee_query_rxphystatus.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then25.i.i

_rtl88ee_query_rxphystatus.exit.i._rtl88ee_translate_rx_signal_stuff.exit_crit_edge: ; preds = %_rtl88ee_query_rxphystatus.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl88ee_translate_rx_signal_stuff.exit

if.then.i16.i:                                    ; preds = %_rtl88ee_query_rxphystatus.exit.i
  %fat_state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %244, i32 0, i32 15, i32 72, i32 7
  %248 = ptrtoint ptr %fat_state.i.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %fat_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %249)
  %cmp4.i.i = icmp eq i8 %249, 1
  br i1 %cmp4.i.i, label %if.then6.i.i, label %if.then.i16.i._rtl88ee_translate_rx_signal_stuff.exit_crit_edge

if.then.i16.i._rtl88ee_translate_rx_signal_stuff.exit_crit_edge: ; preds = %if.then.i16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl88ee_translate_rx_signal_stuff.exit

if.then6.i.i:                                     ; preds = %if.then.i16.i
  %250 = ptrtoint ptr %packet_toself.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %packet_toself.i.i, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %251)
  %tobool.not.i18.i = icmp eq i8 %251, 0
  br i1 %tobool.not.i18.i, label %if.then6.i.i._rtl88ee_translate_rx_signal_stuff.exit_crit_edge, label %if.then7.i.i

if.then6.i.i._rtl88ee_translate_rx_signal_stuff.exit_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl88ee_translate_rx_signal_stuff.exit

if.then7.i.i:                                     ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %antsel_rx_keep_2.i.i = getelementptr inbounds %struct.rtl_priv, ptr %244, i32 0, i32 15, i32 72, i32 3
  %252 = ptrtoint ptr %antsel_rx_keep_2.i.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %antsel_rx_keep_2.i.i, align 4
  %shl.i19.i = shl i8 %253, 2
  %antsel_rx_keep_1.i20.i = getelementptr inbounds %struct.rtl_priv, ptr %244, i32 0, i32 15, i32 72, i32 2
  %254 = ptrtoint ptr %antsel_rx_keep_1.i20.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %antsel_rx_keep_1.i20.i, align 1
  %shl10.i.i = shl i8 %255, 1
  %or.i21.i = or i8 %shl10.i.i, %shl.i19.i
  %antsel_rx_keep_0.i22.i = getelementptr inbounds %struct.rtl_priv, ptr %244, i32 0, i32 15, i32 72, i32 1
  %256 = ptrtoint ptr %antsel_rx_keep_0.i22.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %antsel_rx_keep_0.i22.i, align 2
  %or12.i.i = or i8 %or.i21.i, %257
  %rx_pwdb_all.i23.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 29
  %258 = ptrtoint ptr %rx_pwdb_all.i23.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %rx_pwdb_all.i23.i, align 4
  %idxprom.i.i = zext i8 %or12.i.i to i32
  %arrayidx.i.i = getelementptr %struct.rtl_priv, ptr %244, i32 0, i32 15, i32 72, i32 4, i32 %idxprom.i.i
  %260 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx.i.i, align 4
  %add.i24.i = add i32 %261, %259
  store i32 %add.i24.i, ptr %arrayidx.i.i, align 4
  %arrayidx15.i.i = getelementptr %struct.rtl_priv, ptr %244, i32 0, i32 15, i32 72, i32 5, i32 %idxprom.i.i
  %262 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx15.i.i, align 4
  %inc.i.i = add i32 %263, 1
  store i32 %inc.i.i, ptr %arrayidx15.i.i, align 4
  br label %_rtl88ee_translate_rx_signal_stuff.exit

if.then25.i.i:                                    ; preds = %_rtl88ee_query_rxphystatus.exit.i.if.then25.i.i_crit_edge, %_rtl88ee_query_rxphystatus.exit.i.if.then25.i.i_crit_edge336
  %264 = ptrtoint ptr %packet_toself.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %packet_toself.i.i, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %tobool27.not.i.i = icmp eq i8 %265, 0
  br i1 %tobool27.not.i.i, label %lor.lhs.false29.i.i, label %if.then25.i.i.if.then32.i.i_crit_edge

if.then25.i.i.if.then32.i.i_crit_edge:            ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32.i.i

lor.lhs.false29.i.i:                              ; preds = %if.then25.i.i
  %266 = ptrtoint ptr %packet_matchbssid.i.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %packet_matchbssid.i.i, align 2, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool30.not.i.i = icmp eq i8 %267, 0
  br i1 %tobool30.not.i.i, label %lor.lhs.false29.i.i._rtl88ee_translate_rx_signal_stuff.exit_crit_edge, label %lor.lhs.false29.i.i.if.then32.i.i_crit_edge

lor.lhs.false29.i.i.if.then32.i.i_crit_edge:      ; preds = %lor.lhs.false29.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32.i.i

lor.lhs.false29.i.i._rtl88ee_translate_rx_signal_stuff.exit_crit_edge: ; preds = %lor.lhs.false29.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl88ee_translate_rx_signal_stuff.exit

if.then32.i.i:                                    ; preds = %lor.lhs.false29.i.i.if.then32.i.i_crit_edge, %if.then25.i.i.if.then32.i.i_crit_edge
  %antsel_rx_keep_233.i.i = getelementptr inbounds %struct.rtl_priv, ptr %244, i32 0, i32 15, i32 72, i32 3
  %268 = ptrtoint ptr %antsel_rx_keep_233.i.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %antsel_rx_keep_233.i.i, align 4
  %shl35.i.i = shl i8 %269, 2
  %antsel_rx_keep_136.i.i = getelementptr inbounds %struct.rtl_priv, ptr %244, i32 0, i32 15, i32 72, i32 2
  %270 = ptrtoint ptr %antsel_rx_keep_136.i.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %antsel_rx_keep_136.i.i, align 1
  %shl38.i.i = shl i8 %271, 1
  %or39.i.i = or i8 %shl38.i.i, %shl35.i.i
  %antsel_rx_keep_040.i.i = getelementptr inbounds %struct.rtl_priv, ptr %244, i32 0, i32 15, i32 72, i32 1
  %272 = ptrtoint ptr %antsel_rx_keep_040.i.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %antsel_rx_keep_040.i.i, align 2
  %or42.i.i = or i8 %or39.i.i, %273
  %rx_pwdb_all44.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 29
  %274 = ptrtoint ptr %rx_pwdb_all44.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %rx_pwdb_all44.i.i, align 4
  tail call void @rtl88e_dm_ant_sel_statistics(ptr noundef %hw, i8 noundef zeroext %or42.i.i, i32 noundef 0, i32 noundef %275) #4
  br label %_rtl88ee_translate_rx_signal_stuff.exit

_rtl88ee_translate_rx_signal_stuff.exit:          ; preds = %if.then32.i.i, %lor.lhs.false29.i.i._rtl88ee_translate_rx_signal_stuff.exit_crit_edge, %if.then7.i.i, %if.then6.i.i._rtl88ee_translate_rx_signal_stuff.exit_crit_edge, %if.then.i16.i._rtl88ee_translate_rx_signal_stuff.exit_crit_edge, %_rtl88ee_query_rxphystatus.exit.i._rtl88ee_translate_rx_signal_stuff.exit_crit_edge
  tail call void @rtl_process_phyinfo(ptr noundef %hw, ptr noundef %add.ptr3.i, ptr noundef %status) #4
  br label %if.end195

if.end195:                                        ; preds = %_rtl88ee_translate_rx_signal_stuff.exit, %if.end180.if.end195_crit_edge
  %recvsignalpower = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 16
  %276 = ptrtoint ptr %recvsignalpower to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %recvsignalpower, align 4
  %278 = trunc i32 %277 to i8
  %conv196 = add i8 %278, 10
  %signal = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 13
  %279 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %conv196, ptr %signal, align 2
  %280 = ptrtoint ptr %packet_report_type to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %packet_report_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %281)
  %cmp199 = icmp eq i8 %281, 2
  br i1 %cmp199, label %if.then201, label %if.end195.if.end206_crit_edge

if.end195.if.end206_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end206

if.then201:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i321 = getelementptr i32, ptr %pdesc8, i32 4
  %282 = ptrtoint ptr %add.ptr.i321 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %add.ptr.i321, align 4
  %284 = tail call i32 @llvm.bswap.i32(i32 %283) #4
  %macid_valid_entry = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 52
  %285 = ptrtoint ptr %macid_valid_entry to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %284, ptr %macid_valid_entry, align 8
  %add.ptr.i322 = getelementptr i32, ptr %pdesc8, i32 5
  %286 = ptrtoint ptr %add.ptr.i322 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %add.ptr.i322, align 4
  %288 = tail call i32 @llvm.bswap.i32(i32 %287) #4
  %arrayidx205 = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 52, i32 1
  %289 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %288, ptr %arrayidx205, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.then201, %if.end195.if.end206_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtlwifi_rate_mapping(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_tx_fill_desc(ptr noundef %hw, ptr nocapture noundef readonly %hdr, ptr noundef %pdesc8, ptr nocapture noundef readnone %txbd, ptr noundef %info, ptr noundef %sta, ptr noundef %skb, i8 noundef zeroext %hw_queue, ptr noundef %ptcb_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
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
  br i1 %cmp.i.i, label %entry._rtl88ee_map_hwqueue_to_fwqueue.exit_crit_edge, label %if.end.i, !prof !39

entry._rtl88ee_map_hwqueue_to_fwqueue.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl88ee_map_hwqueue_to_fwqueue.exit

if.end.i:                                         ; preds = %entry
  %11 = trunc i16 %9 to i12
  %trunc.i = and i12 %11, -1024
  %12 = zext i12 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.15)
  switch i12 %trunc.i, label %if.end6.i [
    i12 0, label %if.end.i._rtl88ee_map_hwqueue_to_fwqueue.exit_crit_edge
    i12 1024, label %if.end.i._rtl88ee_map_hwqueue_to_fwqueue.exit_crit_edge546
  ]

if.end.i._rtl88ee_map_hwqueue_to_fwqueue.exit_crit_edge546: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl88ee_map_hwqueue_to_fwqueue.exit

if.end.i._rtl88ee_map_hwqueue_to_fwqueue.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl88ee_map_hwqueue_to_fwqueue.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %13 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %priority.i, align 4
  %phi.cast = shl i32 %14, 16
  %phi.bo545 = and i32 %phi.cast, 2031616
  br label %_rtl88ee_map_hwqueue_to_fwqueue.exit

_rtl88ee_map_hwqueue_to_fwqueue.exit:             ; preds = %if.end6.i, %if.end.i._rtl88ee_map_hwqueue_to_fwqueue.exit_crit_edge, %if.end.i._rtl88ee_map_hwqueue_to_fwqueue.exit_crit_edge546, %entry._rtl88ee_map_hwqueue_to_fwqueue.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo545, %if.end6.i ], [ 1048576, %entry._rtl88ee_map_hwqueue_to_fwqueue.exit_crit_edge ], [ 1179648, %if.end.i._rtl88ee_map_hwqueue_to_fwqueue.exit_crit_edge ], [ 1179648, %if.end.i._rtl88ee_map_hwqueue_to_fwqueue.exit_crit_edge546 ]
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
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %19, label %_rtl88ee_map_hwqueue_to_fwqueue.exit.if.end27_crit_edge [
    i32 2, label %if.then
    i32 3, label %_rtl88ee_map_hwqueue_to_fwqueue.exit.if.then21_crit_edge
    i32 1, label %_rtl88ee_map_hwqueue_to_fwqueue.exit.if.then21_crit_edge547
  ]

_rtl88ee_map_hwqueue_to_fwqueue.exit.if.then21_crit_edge547: ; preds = %_rtl88ee_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

_rtl88ee_map_hwqueue_to_fwqueue.exit.if.then21_crit_edge: ; preds = %_rtl88ee_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

_rtl88ee_map_hwqueue_to_fwqueue.exit.if.end27_crit_edge: ; preds = %_rtl88ee_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then:                                          ; preds = %_rtl88ee_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #6
  %bw_4014 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %21 = ptrtoint ptr %bw_4014 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bw_4014, align 1
  br label %if.end27

if.then21:                                        ; preds = %_rtl88ee_map_hwqueue_to_fwqueue.exit.if.then21_crit_edge, %_rtl88ee_map_hwqueue_to_fwqueue.exit.if.then21_crit_edge547
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %if.then21.if.end27_crit_edge, label %if.then22

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then22:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  %ht_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %23 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ht_cap, align 4
  %25 = trunc i16 %24 to i8
  %conv25 = and i8 %25, 2
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.then21.if.end27_crit_edge, %if.then, %_rtl88ee_map_hwqueue_to_fwqueue.exit.if.end27_crit_edge
  %bw_40.0 = phi i8 [ %22, %if.then ], [ %conv25, %if.then22 ], [ 0, %if.then21.if.end27_crit_edge ], [ 0, %_rtl88ee_map_hwqueue_to_fwqueue.exit.if.end27_crit_edge ]
  %26 = and i16 %16, -3841
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %28 = lshr exact i16 %27, 4
  tail call void @rtl_get_tcb_desc(ptr noundef %hw, ptr noundef %info, ptr noundef %sta, ptr noundef %skb, ptr noundef %ptcb_desc) #4
  %earlymode_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 58
  %29 = ptrtoint ptr %earlymode_enable to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %earlymode_enable, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool32.not = icmp eq i8 %30, 0
  br i1 %tobool32.not, label %if.end27.if.end35_crit_edge, label %if.then33

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %call34 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #4
  %31 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 0, ptr %32, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end27.if.end35_crit_edge
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %38 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i.i, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %39) #4
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end35
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !40

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev37) #4
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
  %42 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev37, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %43, %if.end.i.i ], [ %41, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #4
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @debug_dma_map_single(ptr noundef %dev37, ptr noundef %39, i32 noundef %35) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %44 = load ptr, ptr @mem_map, align 4
  %45 = ptrtoint ptr %39 to i32
  %sub.i = add i32 %45, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %44, i32 %shr.i
  %and.i = and i32 %45, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev37, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %35, i32 noundef 1, i32 noundef 0) #4
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i380 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev42, i32 noundef %retval.0.i380) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i380)
  %cmp.i = icmp eq i32 %retval.0.i380, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end46

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end46:                                         ; preds = %dma_map_single_attrs.exit
  %48 = call ptr @memset(ptr %pdesc8, i32 0, i32 40)
  %49 = and i16 %3, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 18432, i16 %49)
  %cmp.i381 = icmp eq i16 %49, 18432
  br i1 %cmp.i381, label %if.end46.if.then55_crit_edge, label %lor.lhs.false49

if.end46.if.then55_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

lor.lhs.false49:                                  ; preds = %if.end46
  %50 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %50)
  %cmp.i382 = icmp eq i16 %50, 1024
  %51 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %extract.t = icmp eq i16 %51, 0
  %brmerge = select i1 %cmp.i382, i1 true, i1 %cmp
  %.mux = or i1 %cmp.i382, %extract.t
  br i1 %brmerge, label %lor.lhs.false49.if.then55_crit_edge, label %lor.lhs.false49.if.end199_crit_edge

lor.lhs.false49.if.end199_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end199

lor.lhs.false49.if.then55_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

if.then55:                                        ; preds = %lor.lhs.false49.if.then55_crit_edge, %if.end46.if.then55_crit_edge
  %lastseg.0.off0537 = phi i1 [ true, %if.end46.if.then55_crit_edge ], [ %.mux, %lor.lhs.false49.if.then55_crit_edge ]
  %52 = ptrtoint ptr %earlymode_enable to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %earlymode_enable, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool57.not = icmp eq i8 %53, 0
  br i1 %tobool57.not, label %if.else65, label %if.then58

if.then58:                                        ; preds = %if.then55
  %add.ptr.i383 = getelementptr i32, ptr %pdesc8, i32 1
  %54 = ptrtoint ptr %add.ptr.i383 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i383, align 4
  %and.i.i = and i32 %55, -125
  %or.i.i = or i32 %and.i.i, 4
  store i32 %or.i.i, ptr %add.ptr.i383, align 4
  %56 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pdesc8, align 4
  %and.i.i384 = and i32 %57, -65281
  %or.i.i385 = or i32 %and.i.i384, 10240
  store i32 %or.i.i385, ptr %pdesc8, align 4
  %empkt_num = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 8
  %58 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool59.not = icmp eq i8 %59, 0
  br i1 %tobool59.not, label %if.then58.if.end66_crit_edge, label %if.then60

if.then58.if.end66_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

if.then60:                                        ; preds = %if.then58
  %conv62 = zext i8 %59 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %conv62) #4
  %60 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 0, ptr %61, align 4
  %63 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %empkt_num, align 1
  %conv.i386 = zext i8 %64 to i32
  %65 = shl nuw i32 %conv.i386, 24
  %66 = and i32 %65, 251658240
  store i32 %66, ptr %61, align 4
  %67 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %67)
  %cmp.i387 = icmp eq i8 %67, 1
  %empkt_len.i = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9
  %68 = ptrtoint ptr %empkt_len.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %empkt_len.i, align 4
  br i1 %cmp.i387, label %if.then60.set_earlymode_len0.exit.i_crit_edge, label %if.else.i

if.then60.set_earlymode_len0.exit.i_crit_edge:    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_earlymode_len0.exit.i

if.else.i:                                        ; preds = %if.then60
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

set_earlymode_len0.exit.i:                        ; preds = %if.else.i, %if.then60.set_earlymode_len0.exit.i_crit_edge
  %dwtmp.0.i = phi i32 [ %add10.i, %if.else.i ], [ %69, %if.then60.set_earlymode_len0.exit.i_crit_edge ]
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
  %and.i389 = shl i32 %dwtmp.2.i, 4
  %92 = and i32 %and.i389, 240
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
  br i1 %cmp85.i, label %set_earlymode_len3.exit.i.rtl88ee_insert_emcontent.exit_crit_edge, label %if.else90.i

set_earlymode_len3.exit.i.rtl88ee_insert_emcontent.exit_crit_edge: ; preds = %set_earlymode_len3.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl88ee_insert_emcontent.exit

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
  br label %rtl88ee_insert_emcontent.exit

rtl88ee_insert_emcontent.exit:                    ; preds = %if.else90.i, %set_earlymode_len3.exit.i.rtl88ee_insert_emcontent.exit_crit_edge
  %dwtmp.4.i = phi i32 [ %add105.i, %if.else90.i ], [ %111, %set_earlymode_len3.exit.i.rtl88ee_insert_emcontent.exit_crit_edge ]
  %and.i.i189.i = and i32 %or.i.i185.i, -61696
  %114 = shl i32 %dwtmp.4.i, 20
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #4
  %or.i.i190.i = or i32 %115, %and.i.i189.i
  %116 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %or.i.i190.i, ptr %add.ptr.i.i, align 4
  br label %if.end66

if.else65:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #6
  %117 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pdesc8, align 4
  %and.i.i391 = and i32 %118, -65281
  %or.i.i392 = or i32 %and.i.i391, 8192
  store i32 %or.i.i392, ptr %pdesc8, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %rtl88ee_insert_emcontent.exit, %if.then58.if.end66_crit_edge
  %use_driver_rate = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 2
  %119 = ptrtoint ptr %use_driver_rate to i32
  call void @__asan_load1_noabort(i32 %119)
  %bf.load = load i8, ptr %use_driver_rate, align 1
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %use_driver_rate, align 1
  %add.ptr.i393 = getelementptr i32, ptr %pdesc8, i32 5
  %120 = ptrtoint ptr %add.ptr.i393 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %add.ptr.i393, align 4
  %hw_rate = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 5
  %122 = ptrtoint ptr %hw_rate to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %hw_rate, align 2
  %conv67 = zext i8 %123 to i32
  %and.i.i394 = and i32 %121, -1056964609
  %124 = shl nuw i32 %conv67, 24
  %125 = and i32 %124, 1056964608
  %or.i.i395 = or i32 %125, %and.i.i394
  store i32 %or.i.i395, ptr %add.ptr.i393, align 4
  %126 = load i8, ptr %hw_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %126)
  %cmp70 = icmp ugt i8 %126, 12
  %127 = ptrtoint ptr %use_driver_rate to i32
  call void @__asan_load1_noabort(i32 %127)
  %bf.load73 = load i8, ptr %use_driver_rate, align 1
  %bf.load73.lobit = lshr i8 %bf.load73, 7
  %128 = lshr i8 %bf.load73, 6
  %.lobit = and i8 %128, 1
  %short_gi.0 = select i1 %cmp70, i8 %bf.load73.lobit, i8 %.lobit
  %conv86 = zext i8 %short_gi.0 to i32
  %and.i.i397 = and i32 %or.i.i395, -1073741825
  %129 = shl nuw nsw i32 %conv86, 30
  %or.i.i398 = or i32 %129, %and.i.i397
  %130 = ptrtoint ptr %add.ptr.i393 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or.i.i398, ptr %add.ptr.i393, align 4
  %131 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %info, align 8
  %and87 = and i32 %132, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end66.if.end90_crit_edge, label %if.then89

if.end66.if.end90_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90

if.then89:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i399 = getelementptr i32, ptr %pdesc8, i32 2
  %133 = ptrtoint ptr %add.ptr.i399 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %add.ptr.i399, align 4
  %or.i.i400 = or i32 %134, 1048576
  store i32 %or.i.i400, ptr %add.ptr.i399, align 4
  %add.ptr.i401 = getelementptr i32, ptr %pdesc8, i32 6
  %135 = ptrtoint ptr %add.ptr.i401 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %add.ptr.i401, align 4
  %and.i.i402 = and i32 %136, -16252929
  %or.i.i403 = or i32 %and.i.i402, 10485760
  store i32 %or.i.i403, ptr %add.ptr.i401, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end66.if.end90_crit_edge
  %add.ptr.i404 = getelementptr i32, ptr %pdesc8, i32 3
  %137 = ptrtoint ptr %add.ptr.i404 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %add.ptr.i404, align 4
  %and.i.i405 = and i32 %138, -65296
  %139 = tail call i16 @llvm.bswap.i16(i16 %28)
  %140 = zext i16 %139 to i32
  %or.i.i406 = or i32 %and.i.i405, %140
  %141 = ptrtoint ptr %add.ptr.i404 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %or.i.i406, ptr %add.ptr.i404, align 4
  %142 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %142)
  %bf.load92 = load i16, ptr %ptcb_desc, align 4
  %143 = and i16 %bf.load92, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %143)
  %144 = icmp eq i16 %143, 1024
  %add.ptr.i407 = getelementptr i32, ptr %pdesc8, i32 4
  %145 = ptrtoint ptr %add.ptr.i407 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %add.ptr.i407, align 4
  %and.i.i408 = and i32 %146, -3145729
  %147 = select i1 %144, i32 1048576, i32 0
  %or.i.i409 = or i32 %147, %and.i.i408
  store i32 %or.i.i409, ptr %add.ptr.i407, align 4
  %148 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %148)
  %bf.load103 = load i16, ptr %ptcb_desc, align 4
  %149 = lshr i16 %bf.load103, 9
  %150 = zext i16 %149 to i32
  %and.i.i413 = and i32 %or.i.i409, -2621441
  %151 = shl nuw nsw i32 %150, 19
  %152 = and i32 %151, 524288
  %or.i.i414 = or i32 %152, %and.i.i413
  store i32 %or.i.i414, ptr %add.ptr.i407, align 4
  %bf.load110 = load i16, ptr %ptcb_desc, align 4
  %and.i.i416 = and i32 %or.i.i414, -2097345
  %153 = lshr i16 %bf.load110, 5
  %154 = and i16 %153, 64
  %155 = zext i16 %154 to i32
  %or.i.i417 = or i32 %and.i.i416, %155
  store i32 %or.i.i417, ptr %add.ptr.i407, align 4
  %rts_rate = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 1
  %156 = ptrtoint ptr %rts_rate to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %rts_rate, align 2
  %conv117 = zext i8 %157 to i32
  %and.i.i421 = and i32 %or.i.i417, -522190985
  %158 = shl nuw i32 %conv117, 24
  %159 = and i32 %158, 520093696
  %or.i.i422 = or i32 %and.i.i421, %159
  store i32 %or.i.i422, ptr %add.ptr.i407, align 4
  %bf.load118 = load i16, ptr %ptcb_desc, align 4
  %and.i.i426 = and i32 %or.i.i422, -2097337
  %160 = lshr i16 %bf.load118, 2
  %161 = and i16 %160, 16
  %162 = zext i16 %161 to i32
  %or.i.i427 = or i32 %and.i.i426, %162
  store i32 %or.i.i427, ptr %add.ptr.i407, align 4
  %163 = load i8, ptr %rts_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %163)
  %cmp125 = icmp ult i8 %163, 12
  %164 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %164)
  %bf.load127 = load i16, ptr %ptcb_desc, align 4
  %. = select i1 %cmp125, i16 8, i16 7
  %165 = lshr i16 %bf.load127, %.
  %and.i.i429 = and i32 %or.i.i427, -2097325
  %cond141.in = shl nuw nsw i16 %165, 2
  %166 = and i16 %cond141.in, 4
  %167 = zext i16 %166 to i32
  %or.i.i430 = or i32 %and.i.i429, %167
  %168 = ptrtoint ptr %add.ptr.i407 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %or.i.i430, ptr %add.ptr.i407, align 4
  %tx_enable_sw_calc_duration = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 10
  %169 = ptrtoint ptr %tx_enable_sw_calc_duration to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %tx_enable_sw_calc_duration, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool142.not = icmp eq i8 %170, 0
  br i1 %tobool142.not, label %if.end90.if.end144_crit_edge, label %if.then143

if.end90.if.end144_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end144

if.then143:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i431 = getelementptr i32, ptr %pdesc8, i32 1
  %171 = ptrtoint ptr %add.ptr.i431 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %add.ptr.i431, align 4
  %or.i.i432 = or i32 %172, 4096
  store i32 %or.i.i432, ptr %add.ptr.i431, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.then143, %if.end90.if.end144_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40.0)
  %tobool145.not = icmp eq i8 %bw_40.0, 0
  br i1 %tobool145.not, label %if.else157, label %if.then146

if.then146:                                       ; preds = %if.end144
  %173 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %173)
  %bf.load147 = load i16, ptr %ptcb_desc, align 4
  %bf.lshr148.mask = and i16 %bf.load147, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr148.mask)
  %cmp151 = icmp eq i16 %bf.lshr148.mask, 16384
  br i1 %cmp151, label %if.then153, label %if.else154

if.then153:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #6
  %or.i.i438 = or i32 %or.i.i430, 12290
  br label %if.end158

if.else154:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #6
  %and.i.i440 = and i32 %or.i.i430, -2097323
  %174 = ptrtoint ptr %add.ptr.i407 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %and.i.i440, ptr %add.ptr.i407, align 4
  %cur_40_prime_sc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 46
  %175 = ptrtoint ptr %cur_40_prime_sc to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %cur_40_prime_sc, align 1
  %conv155 = zext i8 %176 to i32
  %and.i.i444 = and i32 %or.i.i430, -2109611
  %177 = shl nuw nsw i32 %conv155, 12
  %178 = and i32 %177, 12288
  %or.i.i445 = or i32 %178, %and.i.i444
  br label %if.end158

if.else157:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #6
  %and.i.i449 = and i32 %or.i.i430, -2109611
  br label %if.end158

if.end158:                                        ; preds = %if.else157, %if.else154, %if.then153
  %or.i.i438.sink = phi i32 [ %or.i.i438, %if.then153 ], [ %or.i.i445, %if.else154 ], [ %and.i.i449, %if.else157 ]
  %179 = ptrtoint ptr %add.ptr.i407 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %or.i.i438.sink, ptr %add.ptr.i407, align 4
  %180 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %pdesc8, align 4
  %conv160 = and i32 %5, 65535
  %and.i.i451 = and i32 %181, 65519
  %182 = tail call i32 @llvm.bswap.i32(i32 %conv160) #4
  %or.i.i452 = or i32 %and.i.i451, %182
  %183 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %or.i.i452, ptr %pdesc8, align 4
  %tobool161.not = icmp eq ptr %sta, null
  br i1 %tobool161.not, label %if.end158.if.end166_crit_edge, label %set_tx_desc_ampdu_density.exit

if.end158.if.end166_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end166

set_tx_desc_ampdu_density.exit:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i453 = getelementptr i32, ptr %pdesc8, i32 2
  %184 = ptrtoint ptr %add.ptr.i453 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %add.ptr.i453, align 4
  %ampdu_density164 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 3
  %186 = ptrtoint ptr %ampdu_density164 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %ampdu_density164, align 4
  %conv165 = zext i8 %187 to i32
  %and.i.i456 = and i32 %185, -28673
  %188 = shl nuw nsw i32 %conv165, 12
  %189 = and i32 %188, 28672
  %or.i.i457 = or i32 %189, %and.i.i456
  store i32 %or.i.i457, ptr %add.ptr.i453, align 4
  br label %if.end166

if.end166:                                        ; preds = %set_tx_desc_ampdu_density.exit, %if.end158.if.end166_crit_edge
  %hw_key = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 12
  %190 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hw_key, align 4
  %tobool167.not = icmp eq ptr %191, null
  br i1 %tobool167.not, label %if.end166.set_tx_desc_queue_sel.exit_crit_edge, label %if.then168

if.end166.set_tx_desc_queue_sel.exit_crit_edge:   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_tx_desc_queue_sel.exit

if.then168:                                       ; preds = %if.end166
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %cipher, align 8
  %194 = zext i32 %193 to i64
  call void @__sanitizer_cov_trace_switch(i64 %194, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %193, label %sw.default [
    i32 1027073, label %if.then168.sw.bb_crit_edge
    i32 1027077, label %if.then168.sw.bb_crit_edge548
    i32 1027074, label %if.then168.sw.bb_crit_edge549
    i32 1027076, label %sw.bb170
  ]

if.then168.sw.bb_crit_edge549:                    ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then168.sw.bb_crit_edge548:                    ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then168.sw.bb_crit_edge:                       ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

sw.bb:                                            ; preds = %if.then168.sw.bb_crit_edge, %if.then168.sw.bb_crit_edge548, %if.then168.sw.bb_crit_edge549
  %add.ptr.i458 = getelementptr i32, ptr %pdesc8, i32 1
  %195 = ptrtoint ptr %add.ptr.i458 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %add.ptr.i458, align 4
  %and.i.i459 = and i32 %196, -49153
  %or.i.i460 = or i32 %and.i.i459, 16384
  store i32 %or.i.i460, ptr %add.ptr.i458, align 4
  br label %set_tx_desc_queue_sel.exit

sw.bb170:                                         ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i461 = getelementptr i32, ptr %pdesc8, i32 1
  %197 = ptrtoint ptr %add.ptr.i461 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %add.ptr.i461, align 4
  %or.i.i463 = or i32 %198, 49152
  store i32 %or.i.i463, ptr %add.ptr.i461, align 4
  br label %set_tx_desc_queue_sel.exit

sw.default:                                       ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i464 = getelementptr i32, ptr %pdesc8, i32 1
  %199 = ptrtoint ptr %add.ptr.i464 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %add.ptr.i464, align 4
  %and.i.i465 = and i32 %200, -49153
  store i32 %and.i.i465, ptr %add.ptr.i464, align 4
  br label %set_tx_desc_queue_sel.exit

set_tx_desc_queue_sel.exit:                       ; preds = %sw.default, %sw.bb170, %sw.bb, %if.end166.set_tx_desc_queue_sel.exit_crit_edge
  %add.ptr.i466 = getelementptr i32, ptr %pdesc8, i32 1
  %201 = ptrtoint ptr %add.ptr.i466 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %add.ptr.i466, align 4
  %and.i.i469 = and i32 %202, -2031617
  %or.i.i470 = or i32 %and.i.i469, %retval.0.i
  store i32 %or.i.i470, ptr %add.ptr.i466, align 4
  %203 = ptrtoint ptr %add.ptr.i393 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %add.ptr.i393, align 4
  %or.i.i474 = or i32 %204, 16711936
  store i32 %or.i.i474, ptr %add.ptr.i393, align 4
  %205 = ptrtoint ptr %use_driver_rate to i32
  call void @__asan_load1_noabort(i32 %205)
  %bf.load173 = load i8, ptr %use_driver_rate, align 1
  %206 = lshr i8 %bf.load173, 4
  %207 = zext i8 %206 to i32
  %208 = ptrtoint ptr %add.ptr.i407 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %add.ptr.i407, align 4
  %and.i.i476 = and i32 %209, -262145
  %210 = shl nuw nsw i32 %207, 18
  %211 = and i32 %210, 262144
  %or.i.i477 = or i32 %211, %and.i.i476
  store i32 %or.i.i477, ptr %add.ptr.i407, align 4
  %bf.load180 = load i8, ptr %use_driver_rate, align 1
  %212 = lshr i8 %bf.load180, 5
  %213 = zext i8 %212 to i32
  %and.i.i479 = and i32 %or.i.i477, -65537
  %214 = shl nuw nsw i32 %213, 16
  %215 = and i32 %214, 65536
  %or.i.i480 = or i32 %215, %and.i.i479
  store i32 %or.i.i480, ptr %add.ptr.i407, align 4
  %216 = and i16 %3, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %216)
  %cmp.i481 = icmp eq i16 %216, -30720
  br i1 %cmp.i481, label %if.then194, label %set_tx_desc_queue_sel.exit.if.end199_crit_edge

set_tx_desc_queue_sel.exit.if.end199_crit_edge:   ; preds = %set_tx_desc_queue_sel.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end199

if.then194:                                       ; preds = %set_tx_desc_queue_sel.exit
  %rdg_en = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 32
  %217 = ptrtoint ptr %rdg_en to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %rdg_en, align 8, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool195.not = icmp eq i8 %218, 0
  br i1 %tobool195.not, label %if.then194.if.end199_crit_edge, label %if.then196

if.then194.if.end199_crit_edge:                   ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end199

if.then196:                                       ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.3) #4
  %add.ptr.i482 = getelementptr i32, ptr %pdesc8, i32 2
  %219 = ptrtoint ptr %add.ptr.i482 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %add.ptr.i482, align 4
  %or.i.i483 = or i32 %220, 2097152
  store i32 %or.i.i483, ptr %add.ptr.i482, align 4
  %221 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %pdesc8, align 4
  %or.i.i484 = or i32 %222, 2
  store i32 %or.i.i484, ptr %pdesc8, align 4
  br label %if.end199

if.end199:                                        ; preds = %if.then196, %if.then194.if.end199_crit_edge, %set_tx_desc_queue_sel.exit.if.end199_crit_edge, %lor.lhs.false49.if.end199_crit_edge
  %lastseg.0.off0536 = phi i1 [ %lastseg.0.off0537, %set_tx_desc_queue_sel.exit.if.end199_crit_edge ], [ %lastseg.0.off0537, %if.then196 ], [ %lastseg.0.off0537, %if.then194.if.end199_crit_edge ], [ %extract.t, %lor.lhs.false49.if.end199_crit_edge ]
  %firstseg.0.off0534 = phi i32 [ 8, %set_tx_desc_queue_sel.exit.if.end199_crit_edge ], [ 8, %if.then196 ], [ 8, %if.then194.if.end199_crit_edge ], [ 0, %lor.lhs.false49.if.end199_crit_edge ]
  %223 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %pdesc8, align 4
  %and.i.i485 = and i32 %224, -13
  %225 = select i1 %lastseg.0.off0536, i32 4, i32 0
  %or.i.i486 = or i32 %225, %firstseg.0.off0534
  %or.i.i488 = or i32 %or.i.i486, %and.i.i485
  store i32 %or.i.i488, ptr %pdesc8, align 4
  %conv207 = and i32 %35, 65535
  %add.ptr.i489 = getelementptr i32, ptr %pdesc8, i32 7
  %226 = ptrtoint ptr %add.ptr.i489 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %add.ptr.i489, align 4
  %and.i.i490 = and i32 %227, 65535
  %228 = tail call i32 @llvm.bswap.i32(i32 %conv207) #4
  %or.i.i491 = or i32 %and.i.i490, %228
  %229 = ptrtoint ptr %add.ptr.i489 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %or.i.i491, ptr %add.ptr.i489, align 4
  %230 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i380) #4
  %add.ptr.i492 = getelementptr i32, ptr %pdesc8, i32 8
  %231 = ptrtoint ptr %add.ptr.i492 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %add.ptr.i492, align 4
  %useramask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 14
  %232 = ptrtoint ptr %useramask to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %useramask, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool208.not = icmp eq i8 %233, 0
  %ratr_index213 = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 3
  %234 = ptrtoint ptr %ratr_index213 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %ratr_index213, align 4
  %conv214 = zext i8 %235 to i32
  %add.ptr.i503 = getelementptr i32, ptr %pdesc8, i32 1
  %236 = ptrtoint ptr %add.ptr.i503 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %add.ptr.i503, align 4
  %and.i.i506 = and i32 %237, -3841
  %add = shl nuw nsw i32 %conv214, 8
  br i1 %tobool208.not, label %set_tx_desc_rate_id.exit508, label %set_tx_desc_rate_id.exit

set_tx_desc_rate_id.exit:                         ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #6
  %238 = and i32 %add, 3840
  %or.i.i497 = or i32 %238, %and.i.i506
  %239 = ptrtoint ptr %add.ptr.i503 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %or.i.i497, ptr %add.ptr.i503, align 4
  %mac_id = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 4
  br label %if.end217

set_tx_desc_rate_id.exit508:                      ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #6
  %240 = add nuw nsw i32 %add, 3072
  %241 = and i32 %240, 3840
  %or.i.i507 = or i32 %241, %and.i.i506
  %242 = ptrtoint ptr %add.ptr.i503 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %or.i.i507, ptr %add.ptr.i503, align 4
  br label %if.end217

if.end217:                                        ; preds = %set_tx_desc_rate_id.exit508, %set_tx_desc_rate_id.exit
  %or.i.i507.sink = phi i32 [ %or.i.i497, %set_tx_desc_rate_id.exit ], [ %or.i.i507, %set_tx_desc_rate_id.exit508 ]
  %conv216.sink.in.in = phi ptr [ %mac_id, %set_tx_desc_rate_id.exit ], [ %ratr_index213, %set_tx_desc_rate_id.exit508 ]
  %243 = ptrtoint ptr %conv216.sink.in.in to i32
  call void @__asan_load1_noabort(i32 %243)
  %conv216.sink.in = load i8, ptr %conv216.sink.in.in, align 1
  %conv216.sink = zext i8 %conv216.sink.in to i32
  %and.i.i512 = and i32 %or.i.i507.sink, -1056964609
  %244 = shl nuw i32 %conv216.sink, 24
  %245 = and i32 %244, 1056964608
  %or.i.i513 = or i32 %245, %and.i.i512
  %246 = ptrtoint ptr %add.ptr.i503 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %or.i.i513, ptr %add.ptr.i503, align 4
  %247 = and i16 %3, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %247)
  %cmp.i515 = icmp eq i16 %247, -30720
  %.543 = select i1 %cmp.i515, i32 4, i32 3
  %.544 = select i1 %cmp.i515, i32 1073741824, i32 128
  %add.ptr.i516 = getelementptr i32, ptr %pdesc8, i32 %.543
  %248 = ptrtoint ptr %add.ptr.i516 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %add.ptr.i516, align 4
  %or.i.i517 = or i32 %249, %.544
  store i32 %or.i.i517, ptr %add.ptr.i516, align 4
  %add.ptr.i521 = getelementptr i32, ptr %pdesc8, i32 2
  %250 = ptrtoint ptr %add.ptr.i521 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %add.ptr.i521, align 4
  %and.i.i522 = and i32 %251, -513
  %252 = select i1 %lastseg.0.off0536, i32 0, i32 512
  %or.i.i523 = or i32 %and.i.i522, %252
  store i32 %or.i.i523, ptr %add.ptr.i521, align 4
  %253 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %hdr, align 2
  %255 = and i16 %254, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %255)
  %cmp.i.not.i = icmp eq i16 %255, 0
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 4
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %retval.0.i524 = select i1 %cmp.i.not.i, ptr %addr1.i, ptr %addr3.i
  %256 = ptrtoint ptr %retval.0.i524 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %retval.0.i524, align 4
  %258 = and i32 %257, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %tobool.i.not = icmp eq i32 %258, 0
  br i1 %tobool.i.not, label %lor.lhs.false230, label %if.end217.if.then234_crit_edge

if.end217.if.then234_crit_edge:                   ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then234

lor.lhs.false230:                                 ; preds = %if.end217
  %259 = ptrtoint ptr %retval.0.i524 to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %retval.0.i524, align 2
  %add.ptr1.i = getelementptr i8, ptr %retval.0.i524, i32 2
  %261 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %262, %260
  %add.ptr3.i = getelementptr i8, ptr %retval.0.i524, i32 4
  %263 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %264
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i529 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i529, label %lor.lhs.false230.if.then234_crit_edge, label %lor.lhs.false230.if.end235_crit_edge

lor.lhs.false230.if.end235_crit_edge:             ; preds = %lor.lhs.false230
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end235

lor.lhs.false230.if.then234_crit_edge:            ; preds = %lor.lhs.false230
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then234

if.then234:                                       ; preds = %lor.lhs.false230.if.then234_crit_edge, %if.end217.if.then234_crit_edge
  %265 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %pdesc8, align 4
  %or.i.i530 = or i32 %266, 1
  store i32 %or.i.i530, ptr %pdesc8, align 4
  br label %if.end235

if.end235:                                        ; preds = %if.then234, %lor.lhs.false230.if.end235_crit_edge
  %mac_id236 = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 4
  %267 = ptrtoint ptr %mac_id236 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %mac_id236, align 1
  %conv237 = zext i8 %268 to i32
  tail call void @rtl88e_dm_set_tx_ant_by_tx_info(ptr noundef %hw, ptr noundef %pdesc8, i32 noundef %conv237) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end235, %dma_map_single_attrs.exit.cleanup_crit_edge
  %.str.4.sink = phi ptr [ @.str.4, %if.end235 ], [ @.str.1, %dma_map_single_attrs.exit.cleanup_crit_edge ]
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
declare dso_local void @rtl88e_dm_set_tx_ant_by_tx_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_tx_fill_cmddesc(ptr nocapture noundef readonly %hw, ptr noundef %pdesc8, i1 noundef zeroext %firstseg, i1 noundef zeroext %lastseg, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %3) #4
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !40

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev4) #4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #4
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @debug_dma_map_single(ptr noundef %dev4, ptr noundef %3, i32 noundef %9) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %3 to i32
  %sub.i = add i32 %15, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %14, i32 %shr.i
  %and.i = and i32 %15, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev4, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %9, i32 noundef 1, i32 noundef 0) #4
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev7, i32 noundef %retval.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.1) #4
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %18 = call ptr @memset(ptr %pdesc8, i32 0, i32 40)
  br i1 %firstseg, label %if.then10, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pdesc8, align 4
  %and.i.i = and i32 %20, -65281
  %or.i.i = or i32 %and.i.i, 8192
  store i32 %or.i.i, ptr %pdesc8, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %add.ptr.i54 = getelementptr i32, ptr %pdesc8, i32 5
  %21 = ptrtoint ptr %add.ptr.i54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i54, align 4
  %and.i.i55 = and i32 %22, -1056964609
  store i32 %and.i.i55, ptr %add.ptr.i54, align 4
  %add.ptr.i56 = getelementptr i32, ptr %pdesc8, i32 3
  %23 = ptrtoint ptr %add.ptr.i56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i56, align 4
  %and.i.i57 = and i32 %24, -65296
  store i32 %and.i.i57, ptr %add.ptr.i56, align 4
  %25 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pdesc8, align 4
  %add.ptr.i59 = getelementptr i32, ptr %pdesc8, i32 1
  %27 = ptrtoint ptr %add.ptr.i59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i59, align 4
  %and.i.i60 = and i32 %28, -2031617
  %or.i.i61 = or i32 %and.i.i60, 1048576
  store i32 %or.i.i61, ptr %add.ptr.i59, align 4
  %and.i.i62 = and i32 %26, -29
  %or.i.i65 = or i32 %and.i.i62, 12
  store i32 %or.i.i65, ptr %pdesc8, align 4
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %conv14 = and i32 %30, 65535
  %add.ptr.i66 = getelementptr i32, ptr %pdesc8, i32 7
  %31 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i66, align 4
  %and.i.i67 = and i32 %32, 65535
  %33 = tail call i32 @llvm.bswap.i32(i32 %conv14) #4
  %or.i.i68 = or i32 %and.i.i67, %33
  %34 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i.i68, ptr %add.ptr.i66, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #4
  %add.ptr.i69 = getelementptr i32, ptr %pdesc8, i32 8
  %36 = ptrtoint ptr %add.ptr.i69 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %add.ptr.i69, align 4
  %and.i.i71 = and i32 %or.i.i61, -1057951489
  %or.i.i72 = or i32 %and.i.i71, 1792
  %37 = ptrtoint ptr %add.ptr.i59 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.i.i72, ptr %add.ptr.i59, align 4
  %or.i.i75 = or i32 %and.i.i62, 140
  %38 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i.i75, ptr %pdesc8, align 4
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  %conv17 = and i32 %40, 65535
  %and.i.i76 = and i32 %or.i.i75, 227
  %41 = tail call i32 @llvm.bswap.i32(i32 %conv17) #4
  %or.i.i77 = or i32 %and.i.i76, %41
  %or.i.i83 = or i32 %or.i.i77, 8204
  %42 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or.i.i83, ptr %pdesc8, align 4
  %add.ptr.i84 = getelementptr i32, ptr %pdesc8, i32 4
  %43 = ptrtoint ptr %add.ptr.i84 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i84, align 4
  %or.i.i86 = or i32 %44, 65536
  store i32 %or.i.i86, ptr %add.ptr.i84, align 4
  %45 = and i16 %5, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %45)
  %cmp.i87 = icmp eq i16 %45, -30720
  br i1 %cmp.i87, label %if.end11.if.end20_crit_edge, label %if.then19

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then19:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %or.i.i89 = or i32 %and.i.i57, 128
  %46 = ptrtoint ptr %add.ptr.i56 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or.i.i89, ptr %add.ptr.i56, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end11.if.end20_crit_edge
  tail call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef %pdesc8, i32 noundef 64) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_set_desc(ptr nocapture noundef readnone %hw, ptr nocapture noundef %pdesc8, i1 noundef zeroext %istx, i8 noundef zeroext %desc_name, ptr nocapture noundef readonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %desc_name to i32
  br i1 %istx, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.18)
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
  %add.ptr.i = getelementptr i32, ptr %pdesc8, i32 10
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr.i, align 4
  br label %if.end95

land.end:                                         ; preds = %if.then
  %.b112 = load i1, ptr @rtl88ee_set_desc.__already_done, align 1
  br i1 %.b112, label %land.end.if.end95_crit_edge, label %if.then8, !prof !40

land.end.if.end95_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl88ee_set_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 745, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %conv) #4
  br label %if.end95

if.else:                                          ; preds = %entry
  %7 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.19)
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
  %.b110111 = load i1, ptr @rtl88ee_set_desc.__already_done.8, align 1
  br i1 %.b110111, label %land.end51.if.end95_crit_edge, label %if.then58, !prof !40

land.end51.if.end95_crit_edge:                    ; preds = %land.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

if.then58:                                        ; preds = %land.end51
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl88ee_set_desc.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 764, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %conv) #4
  br label %if.end95

if.end95:                                         ; preds = %if.then58, %land.end51.if.end95_crit_edge, %sw.bb42, %set_rx_desc_pkt_len.exit, %sw.bb40, %sw.bb39, %if.then8, %land.end.if.end95_crit_edge, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @rtl88ee_get_desc(ptr nocapture readnone %hw, ptr nocapture noundef readonly %pdesc8, i1 noundef zeroext %istx, i8 noundef zeroext %desc_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %desc_name to i32
  br i1 %istx, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.20)
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
  %add.ptr.i = getelementptr i32, ptr %pdesc8, i32 8
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  br label %if.end98

land.end:                                         ; preds = %if.then
  %.b113 = load i1, ptr @rtl88ee_get_desc.__already_done, align 1
  br i1 %.b113, label %land.end.if.end98_crit_edge, label %if.then9, !prof !40

land.end.if.end98_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

if.then9:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl88ee_get_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 786, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %conv) #4
  br label %if.end98

if.else:                                          ; preds = %entry
  %6 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.21)
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
  %.b111112 = load i1, ptr @rtl88ee_get_desc.__already_done.10, align 1
  br i1 %.b111112, label %land.end54.if.end98_crit_edge, label %if.then61, !prof !40

land.end54.if.end98_crit_edge:                    ; preds = %land.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

if.then61:                                        ; preds = %land.end54
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl88ee_get_desc.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 802, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %conv) #4
  br label %if.end98

if.end98:                                         ; preds = %if.then61, %land.end54.if.end98_crit_edge, %sw.bb44, %sw.bb42, %sw.bb40, %if.then9, %land.end.if.end98_crit_edge, %sw.bb1, %sw.bb
  %ret.0 = phi i32 [ %5, %sw.bb1 ], [ %.mask.lobit.i, %sw.bb ], [ %15, %sw.bb44 ], [ %12, %sw.bb42 ], [ %.mask.lobit.i115, %sw.bb40 ], [ 0, %if.then9 ], [ 0, %land.end.if.end98_crit_edge ], [ 0, %if.then61 ], [ 0, %land.end54.if.end98_crit_edge ]
  %conv99 = zext i32 %ret.0 to i64
  ret i64 %conv99
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rtl88ee_is_tx_desc_closed(ptr nocapture noundef readonly %hw, i8 noundef zeroext %hw_queue, i16 noundef zeroext %index) local_unnamed_addr #3 align 64 {
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
define dso_local void @rtl88ee_tx_polling(ptr nocapture noundef readonly %hw, i8 noundef zeroext %hw_queue) local_unnamed_addr #0 align 64 {
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
  %7 = load i8, ptr %write_readback.i, align 1, !range !36
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
  %13 = load i8, ptr %write_readback.i8, align 1, !range !36
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
declare dso_local void @rtl88e_dm_ant_sel_statistics(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !19, !21, !23, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.c", i32 413, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.c", i32 521, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.c", i32 536, i32 5}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.c", i32 634, i32 5}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.c", i32 665, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.c", i32 725, i32 2}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.c", i32 744, i32 4}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.c", i32 763, i32 4}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.c", i32 785, i32 4}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/trx.c", i32 801, i32 4}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i8 0, i8 2}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.peeled.count", i32 1}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{!"branch_weights", i32 2000, i32 1}
