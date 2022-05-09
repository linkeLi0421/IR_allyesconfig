; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/trx.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/trx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rtl_stats = type { [6 x i8], [2 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [4 x i8], [4 x i8], [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i8, i32, i32, [2 x i32] }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.anon.128 = type { i32, i16 }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.139, i32 }
%union.anon.139 = type { ptr }
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
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_sts_cck_8723e_t = type { [4 x i8], i8, i8 }
%struct.rx_fwinfo_8723e = type { [4 x i8], i8, [4 x i8], [4 x i8], [2 x i8], [4 x i8], [2 x i8], [2 x i8], [2 x i8], i8, i8, i8 }
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
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.rtl_tcb_desc = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i32], i8 }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.129 }
%union.anon.129 = type { %struct.anon.136, [32 x i8] }
%struct.anon.136 = type { i64 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.rtl8192_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head, ptr, i32, i16, i16 }
%struct.rtl_tx_desc = type { [16 x i32] }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA mapping error\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Enable RDG function.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"H2C Tx Cmd Content\0A\00", [44 x i8] zeroinitializer }, align 32
@rtl8723e_set_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8723ae/trx.c\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rtl8723ae: ERR txdesc :%d not processed\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl8723e_set_desc.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rtl8723ae: ERR rxdesc :%d not processed\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl8723e_get_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rtl8723e_get_desc.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 40960, i64 49152, i64 53248]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 12, i64 0, i64 1024]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 5]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 370, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 479, i32 5 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 519, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 582, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 601, i32 4 }
@___asan_gen_.39 = private constant [56 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/trx.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 620, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 326, i32 6 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl8723e_rx_query_desc(ptr noundef %hw, ptr noundef %status, ptr nocapture noundef %rx_status, ptr nocapture noundef readonly %pdesc8, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pdesc8, align 4
  %2 = and i32 %1, -12648448
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  %conv = trunc i32 %3 to i16
  %length = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 14
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %length, align 2
  %5 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pdesc8, align 4
  %sh.diff = lshr i32 %6, 5
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %conv5 = and i8 %tr.sh.diff, 120
  %rx_drvinfo_size = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 23
  %7 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5, ptr %rx_drvinfo_size, align 1
  %8 = load i32, ptr %pdesc8, align 4
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 3
  %rx_bufshift = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 24
  %11 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %rx_bufshift, align 2
  %12 = load i32, ptr %pdesc8, align 4
  %icv = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 19
  %13 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %icv, align 2
  %sh.diff245 = lshr i32 %12, 18
  %tr.sh.diff246 = trunc i32 %sh.diff245 to i8
  %bf.value = and i8 %tr.sh.diff246, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.value, %bf.clear
  store i8 %bf.set, ptr %icv, align 2
  %14 = load i32, ptr %pdesc8, align 4
  %sum.shift.i = lshr i32 %14, 22
  %15 = trunc i32 %sum.shift.i to i8
  %16 = shl i8 %15, 6
  %bf.value13 = and i8 %16, 64
  %bf.clear15 = and i8 %bf.set, 63
  %bf.lshr24 = lshr exact i8 %bf.value, 5
  %17 = or i8 %bf.lshr24, %15
  %bf.shl31 = shl i8 %17, 7
  %bf.clear32 = or i8 %bf.clear15, %bf.value13
  %bf.set33 = or i8 %bf.clear32, %bf.shl31
  store i8 %bf.set33, ptr %icv, align 2
  %18 = load i32, ptr %pdesc8, align 4
  %19 = trunc i32 %18 to i8
  %20 = lshr i8 %19, 1
  %21 = and i8 %20, 4
  %bf.clear40 = and i8 %bf.set33, -5
  %22 = or i8 %bf.clear40, %21
  %bf.set41 = xor i8 %22, 4
  store i8 %bf.set41, ptr %icv, align 2
  %add.ptr.i = getelementptr i32, ptr %pdesc8, i32 3
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 4
  %25 = lshr i32 %24, 24
  %26 = trunc i32 %25 to i8
  %conv44 = and i8 %26, 63
  %rate = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 5
  %27 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv44, ptr %rate, align 1
  %28 = load i32, ptr %add.ptr.i, align 4
  %sh.diff247 = lshr i32 %28, 12
  %tr.sh.diff248 = trunc i32 %sh.diff247 to i8
  %bf.value48 = and i8 %tr.sh.diff248, 16
  %bf.clear50 = and i8 %bf.set41, -17
  %bf.set51 = or i8 %bf.clear50, %bf.value48
  store i8 %bf.set51, ptr %icv, align 2
  %add.ptr.i228 = getelementptr i32, ptr %pdesc8, i32 1
  %29 = ptrtoint ptr %add.ptr.i228 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i228, align 4
  %isampdu = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 25
  %31 = lshr i32 %30, 22
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = ptrtoint ptr %isampdu to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %isampdu, align 1
  %35 = load i32, ptr %add.ptr.i228, align 4
  %36 = and i32 %35, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %36)
  %37 = icmp eq i32 %36, 12582912
  %isfirst_ampdu = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 26
  %frombool61 = zext i1 %37 to i8
  %38 = ptrtoint ptr %isfirst_ampdu to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool61, ptr %isfirst_ampdu, align 8
  %add.ptr.i235 = getelementptr i32, ptr %pdesc8, i32 5
  %39 = ptrtoint ptr %add.ptr.i235 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i235, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #4
  %timestamp_low = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 20
  %42 = ptrtoint ptr %timestamp_low to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %timestamp_low, align 4
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i, align 4
  %rx_is40mhzpacket = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 27
  %45 = lshr i32 %44, 17
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = ptrtoint ptr %rx_is40mhzpacket to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %rx_is40mhzpacket, align 1
  %49 = load i32, ptr %add.ptr.i, align 4
  %is_ht = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 42
  %50 = lshr i32 %49, 30
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 1
  %53 = ptrtoint ptr %is_ht to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %is_ht, align 4
  %switch.and = and i8 %26, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and)
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  %is_cck = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 41
  %frombool86 = zext i1 %switch.selectcmp to i8
  %54 = ptrtoint ptr %is_cck to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %frombool86, ptr %is_cck, align 1
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %55 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %center_freq, align 4
  %conv87 = trunc i32 %58 to i16
  %freq = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 5
  %59 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load88 = load i16, ptr %freq, align 4
  %bf.shl90 = shl i16 %conv87, 3
  %bf.clear91 = and i16 %bf.load88, 7
  %bf.set92 = or i16 %bf.clear91, %bf.shl90
  store i16 %bf.set92, ptr %freq, align 4
  %60 = load ptr, ptr %chandef, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %conv96 = trunc i32 %62 to i8
  %band97 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 11
  %63 = ptrtoint ptr %band97 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv96, ptr %band97, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data, align 4
  %66 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %rx_drvinfo_size, align 1
  %conv99 = zext i8 %67 to i32
  %add.ptr = getelementptr i8, ptr %65, i32 %conv99
  %68 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %rx_bufshift, align 2
  %conv101 = zext i8 %69 to i32
  %add.ptr102 = getelementptr i8, ptr %add.ptr, i32 %conv101
  %70 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load104 = load i8, ptr %icv, align 2
  %71 = and i8 %bf.load104, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool108.not = icmp eq i8 %71, 0
  br i1 %tobool108.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %flag = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %72 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flag, align 8
  %or109 = or i32 %73, 32
  store i32 %or109, ptr %flag, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %74 = ptrtoint ptr %rx_is40mhzpacket to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %rx_is40mhzpacket, align 1, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool111.not = icmp eq i8 %75, 0
  br i1 %tobool111.not, label %if.end.if.end116_crit_edge, label %if.then112

if.end.if.end116_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end116

if.then112:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %bw = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %76 = ptrtoint ptr %bw to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %bf.load113 = load i16, ptr %bw, align 1
  %bf.clear114 = and i16 %bf.load113, -14337
  %bf.set115 = or i16 %bf.clear114, 6144
  store i16 %bf.set115, ptr %bw, align 1
  br label %if.end116

if.end116:                                        ; preds = %if.then112, %if.end.if.end116_crit_edge
  %77 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %is_ht, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool118.not = icmp eq i8 %78, 0
  br i1 %tobool118.not, label %if.end116.if.end123_crit_edge, label %if.then119

if.end116.if.end123_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end123

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #6
  %encoding = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %79 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %bf.load120 = load i16, ptr %encoding, align 1
  %bf.clear121 = and i16 %bf.load120, 16383
  %bf.set122 = or i16 %bf.clear121, 16384
  store i16 %bf.set122, ptr %encoding, align 1
  br label %if.end123

if.end123:                                        ; preds = %if.then119, %if.end116.if.end123_crit_edge
  %flag124 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %80 = ptrtoint ptr %flag124 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flag124, align 8
  %or125 = or i32 %81, 128
  store i32 %or125, ptr %flag124, align 8
  %82 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load127 = load i8, ptr %icv, align 2
  %83 = and i8 %bf.load127, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool131.not = icmp eq i8 %83, 0
  br i1 %tobool131.not, label %if.end123.if.end142_crit_edge, label %if.then132

if.end123.if.end142_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end142

if.then132:                                       ; preds = %if.end123
  %84 = ptrtoint ptr %add.ptr102 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %add.ptr102, align 2
  %86 = and i16 %85, -1024
  %87 = zext i16 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values)
  switch i16 %86, label %land.lhs.true [
    i16 -24576, label %if.then132.if.else_crit_edge
    i16 -16384, label %if.then132.if.else_crit_edge251
    i16 -12288, label %if.then132.if.else_crit_edge252
  ]

if.then132.if.else_crit_edge252:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then132.if.else_crit_edge251:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then132.if.else_crit_edge:                     ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %if.then132
  %.pre = and i16 %85, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pre)
  %cmp.i.not = icmp eq i16 %.pre, 0
  br i1 %cmp.i.not, label %land.lhs.true.if.else_crit_edge, label %if.then136

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then136:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %or138 = or i32 %81, 130
  br label %if.end142.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then132.if.else_crit_edge, %if.then132.if.else_crit_edge251, %if.then132.if.else_crit_edge252
  %and140 = and i32 %or125, -3
  br label %if.end142.sink.split

if.end142.sink.split:                             ; preds = %if.else, %if.then136
  %or138.sink = phi i32 [ %or138, %if.then136 ], [ %and140, %if.else ]
  %88 = ptrtoint ptr %flag124 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or138.sink, ptr %flag124, align 8
  br label %if.end142

if.end142:                                        ; preds = %if.end142.sink.split, %if.end123.if.end142_crit_edge
  %89 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %is_ht, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool144 = icmp ne i8 %90, 0
  %91 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %rate, align 1
  %call146 = tail call i32 @rtlwifi_rate_mapping(ptr noundef %hw, i1 noundef zeroext %tobool144, i1 noundef zeroext false, i8 noundef zeroext %92) #4
  %conv147 = trunc i32 %call146 to i8
  %rate_idx = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 8
  %93 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv147, ptr %rate_idx, align 1
  %94 = ptrtoint ptr %timestamp_low to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %timestamp_low, align 4
  %conv149 = zext i32 %95 to i64
  %96 = ptrtoint ptr %rx_status to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %conv149, ptr %rx_status, align 8
  %97 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp150.not = icmp eq i32 %97, 0
  br i1 %cmp150.not, label %if.end142.if.end157_crit_edge, label %if.then152

if.end142.if.end157_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end157

if.then152:                                       ; preds = %if.end142
  %98 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data, align 4
  %100 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %rx_bufshift, align 2
  %conv155 = zext i8 %101 to i32
  %add.ptr156 = getelementptr i8, ptr %99, i32 %conv155
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %102 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %priv.i, align 8
  %104 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %rx_drvinfo_size, align 1
  %conv.i = zext i8 %105 to i32
  %add.ptr.i243 = getelementptr i8, ptr %99, i32 %conv.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i243, i32 %conv155
  %106 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %add.ptr3.i, align 2
  %108 = tail call i16 @llvm.bswap.i16(i16 %107) #4
  %conv5.i = zext i16 %108 to i32
  %and.i = and i16 %108, 12
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %and.i)
  %cmp.not.i = icmp eq i16 %and.i, 4
  br i1 %cmp.not.i, label %if.then152.land.end42.i_crit_edge, label %land.lhs.true.i

if.then152.land.end42.i_crit_edge:                ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end42.i

land.lhs.true.i:                                  ; preds = %if.then152
  %bssid.i = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 9, i32 34
  %and11.i = and i32 %conv5.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %land.lhs.true.i.cond.end21.i_crit_edge

land.lhs.true.i.cond.end21.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end21.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  %and15.i = and i32 %conv5.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %cond.false19.i, label %cond.true17.i

cond.true17.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 3
  br label %cond.end21.i

cond.false19.i:                                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 4
  br label %cond.end21.i

cond.end21.i:                                     ; preds = %cond.false19.i, %cond.true17.i, %land.lhs.true.i.cond.end21.i_crit_edge
  %cond22.i = phi ptr [ %addr2.i, %cond.true17.i ], [ %addr3.i, %cond.false19.i ], [ %addr1.i, %land.lhs.true.i.cond.end21.i_crit_edge ]
  %109 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %bssid.i, align 4
  %111 = ptrtoint ptr %cond22.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cond22.i, align 4
  %xor.i.i = xor i32 %112, %110
  %add.ptr.i.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 9, i32 34, i32 4
  %113 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %cond22.i, i32 4
  %115 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %116, %114
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true24.i, label %cond.end21.i.land.end42.i_crit_edge

cond.end21.i.land.end42.i_crit_edge:              ; preds = %cond.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end42.i

land.lhs.true24.i:                                ; preds = %cond.end21.i
  %117 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load.i = load i8, ptr %icv, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.load.i)
  %118 = icmp ult i8 %bf.load.i, 32
  br i1 %118, label %land.rhs38.i, label %land.lhs.true24.i.land.end42.i_crit_edge

land.lhs.true24.i.land.end42.i_crit_edge:         ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end42.i

land.rhs38.i:                                     ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev_addr.i = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 17, i32 19
  %119 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %addr1.i, align 4
  %121 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %dev_addr.i, align 4
  %xor.i1.i = xor i32 %122, %120
  %add.ptr.i2.i = getelementptr i8, ptr %addr1.i, i32 4
  %123 = ptrtoint ptr %add.ptr.i2.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %add.ptr.i2.i, align 2
  %add.ptr1.i3.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 17, i32 19, i32 4
  %125 = ptrtoint ptr %add.ptr1.i3.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %add.ptr1.i3.i, align 2
  %xor37.i4.i = xor i16 %126, %124
  %xor3.i5.i = zext i16 %xor37.i4.i to i32
  %or.i6.i = or i32 %xor.i1.i, %xor3.i5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i6.i)
  %cmp.i7.i = icmp eq i32 %or.i6.i, 0
  br label %land.end42.i

land.end42.i:                                     ; preds = %land.rhs38.i, %land.lhs.true24.i.land.end42.i_crit_edge, %cond.end21.i.land.end42.i_crit_edge, %if.then152.land.end42.i_crit_edge
  %127 = phi i1 [ true, %land.rhs38.i ], [ false, %land.lhs.true24.i.land.end42.i_crit_edge ], [ false, %cond.end21.i.land.end42.i_crit_edge ], [ false, %if.then152.land.end42.i_crit_edge ]
  %128 = phi i1 [ %cmp.i7.i, %land.rhs38.i ], [ false, %land.lhs.true24.i.land.end42.i_crit_edge ], [ false, %cond.end21.i.land.end42.i_crit_edge ], [ false, %if.then152.land.end42.i_crit_edge ]
  %129 = and i16 %107, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %129)
  %cmp.i8.i = icmp eq i16 %129, -32768
  %frombool.i.i = zext i1 %127 to i8
  %frombool1.i.i = zext i1 %128 to i8
  %frombool2.i.i = zext i1 %cmp.i8.i to i8
  %130 = ptrtoint ptr %is_cck to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %is_cck, align 1, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i.i = icmp eq i8 %131, 0
  %packet_matchbssid.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 40
  %132 = ptrtoint ptr %packet_matchbssid.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %frombool.i.i, ptr %packet_matchbssid.i.i, align 2
  %packet_toself.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 43
  %133 = ptrtoint ptr %packet_toself.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %frombool1.i.i, ptr %packet_toself.i.i, align 1
  %packet_beacon10.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 44
  %134 = ptrtoint ptr %packet_beacon10.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %frombool2.i.i, ptr %packet_beacon10.i.i, align 2
  %rx_mimo_signalquality.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 31
  %135 = ptrtoint ptr %rx_mimo_signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 -1, ptr %rx_mimo_signalquality.i.i, align 4
  %arrayidx13.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 31, i32 1
  %136 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 -1, ptr %arrayidx13.i.i, align 1
  br i1 %tobool.not.i.i, label %if.else167.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.end42.i
  %rfpwr_state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 21, i32 24
  %137 = ptrtoint ptr %rfpwr_state.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %rfpwr_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp.i9.i = icmp eq i32 %138, 0
  br i1 %cmp.i9.i, label %if.end.i.i, label %if.then.i.i.if.then17.i.i_crit_edge

if.then.i.i.if.then17.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %139 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %priv.i, align 8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %140, i32 0, i32 32
  %141 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cfg.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %142, i32 0, i32 4
  %143 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ops.i.i.i, align 4
  %get_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %144, i32 0, i32 45
  %145 = ptrtoint ptr %get_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %get_bbreg.i.i.i, align 4
  %call.i.i.i = tail call i32 %146(ptr noundef %hw, i32 noundef 2084, i32 noundef 512) #4
  %conv.i.i = trunc i32 %call.i.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i)
  %tobool16.not.i.i = icmp eq i8 %conv.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end.i.i.if.then17.i.i_crit_edge, label %if.else43.i.i

if.end.i.i.if.then17.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17.i.i

if.then17.i.i:                                    ; preds = %if.end.i.i.if.then17.i.i_crit_edge, %if.then.i.i.if.then17.i.i_crit_edge
  %cck_agc_rpt18.i.i = getelementptr inbounds %struct.phy_sts_cck_8723e_t, ptr %add.ptr156, i32 0, i32 2
  %147 = ptrtoint ptr %cck_agc_rpt18.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %cck_agc_rpt18.i.i, align 1
  %149 = lshr i8 %148, 6
  %conv24.i.i = zext i8 %149 to i32
  %150 = zext i32 %conv24.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %conv24.i.i, label %if.then17.unreachabledefault.i.i [
    i32 3, label %if.then17.i.i.if.end78.i.i_crit_edge
    i32 2, label %sw.bb28.i.i
    i32 1, label %sw.bb33.i.i
    i32 0, label %sw.bb38.i.i
  ]

if.then17.i.i.if.end78.i.i_crit_edge:             ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end78.i.i

sw.bb28.i.i:                                      ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end78.i.i

sw.bb33.i.i:                                      ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end78.i.i

sw.bb38.i.i:                                      ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end78.i.i

if.then17.unreachabledefault.i.i:                 ; preds = %if.then17.i.i
  unreachable

if.else43.i.i:                                    ; preds = %if.end.i.i
  %cck_agc_rpt45.i.i = getelementptr inbounds %struct.phy_sts_cck_8723e_t, ptr %add.ptr156, i32 0, i32 2
  %151 = ptrtoint ptr %cck_agc_rpt45.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %cck_agc_rpt45.i.i, align 1
  %153 = lshr i8 %152, 5
  %154 = and i8 %153, 3
  %conv53.i.i = zext i8 %154 to i32
  %155 = zext i32 %conv53.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %conv53.i.i, label %if.else43.unreachabledefault.i.i [
    i32 3, label %sw.bb54.i.i
    i32 2, label %sw.bb59.i.i
    i32 1, label %sw.bb65.i.i
    i32 0, label %sw.bb71.i.i
  ]

sw.bb54.i.i:                                      ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %156 = shl i8 %152, 1
  br label %if.end78.i.i

sw.bb59.i.i:                                      ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %157 = shl i8 %152, 1
  br label %if.end78.i.i

sw.bb65.i.i:                                      ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %158 = shl i8 %152, 1
  br label %if.end78.i.i

sw.bb71.i.i:                                      ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %159 = shl i8 %152, 1
  br label %if.end78.i.i

if.else43.unreachabledefault.i.i:                 ; preds = %if.else43.i.i
  unreachable

if.end78.i.i:                                     ; preds = %sw.bb71.i.i, %sw.bb65.i.i, %sw.bb59.i.i, %sw.bb54.i.i, %sw.bb38.i.i, %sw.bb33.i.i, %sw.bb28.i.i, %if.then17.i.i.if.end78.i.i_crit_edge
  %.sink22.i.i = phi i8 [ %156, %sw.bb54.i.i ], [ %157, %sw.bb59.i.i ], [ %158, %sw.bb65.i.i ], [ %159, %sw.bb71.i.i ], [ %148, %sw.bb28.i.i ], [ %148, %sw.bb33.i.i ], [ %148, %sw.bb38.i.i ], [ %148, %if.then17.i.i.if.end78.i.i_crit_edge ]
  %.sink.i.i = phi i8 [ -46, %sw.bb54.i.i ], [ -26, %sw.bb59.i.i ], [ -12, %sw.bb65.i.i ], [ 16, %sw.bb71.i.i ], [ -26, %sw.bb28.i.i ], [ -12, %sw.bb33.i.i ], [ 16, %sw.bb38.i.i ], [ -46, %if.then17.i.i.if.end78.i.i_crit_edge ]
  %160 = and i8 %.sink22.i.i, 62
  %sub57.i.i = sub nsw i8 %.sink.i.i, %160
  %call79.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub57.i.i) #4
  %add.i.i = add i8 %call79.i.i, 6
  %161 = tail call i8 @llvm.umin.i8(i8 %add.i.i, i8 100) #4
  %162 = add nsw i8 %161, -35
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %162)
  %163 = icmp ult i8 %162, 8
  br i1 %163, label %if.then93.i.i, label %if.else97.i.i

if.then93.i.i:                                    ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub95.i.i = add nsw i8 %161, -2
  br label %if.end136.i.i

if.else97.i.i:                                    ; preds = %if.end78.i.i
  %164 = add nsw i8 %161, -27
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %164)
  %165 = icmp ult i8 %164, 8
  br i1 %165, label %if.then105.i.i, label %if.else109.i.i

if.then105.i.i:                                   ; preds = %if.else97.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub107.i.i = add nsw i8 %161, -6
  br label %if.end136.i.i

if.else109.i.i:                                   ; preds = %if.else97.i.i
  %166 = add nsw i8 %161, -15
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %166)
  %167 = icmp ult i8 %166, 12
  br i1 %167, label %if.then117.i.i, label %if.else121.i.i

if.then117.i.i:                                   ; preds = %if.else109.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub119.i.i = add nsw i8 %161, -8
  br label %if.end136.i.i

if.else121.i.i:                                   ; preds = %if.else109.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %168 = add nsw i8 %161, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %168)
  %169 = icmp ult i8 %168, 10
  %sub131.i.i = add nsw i8 %161, -4
  %spec.select5.i.i = select i1 %169, i8 %sub131.i.i, i8 %161
  br label %if.end136.i.i

if.end136.i.i:                                    ; preds = %if.else121.i.i, %if.then117.i.i, %if.then105.i.i, %if.then93.i.i
  %pwdb_all.0.i.i = phi i8 [ %sub95.i.i, %if.then93.i.i ], [ %sub107.i.i, %if.then105.i.i ], [ %sub119.i.i, %if.then117.i.i ], [ %spec.select5.i.i, %if.else121.i.i ]
  %conv137.i.i = zext i8 %pwdb_all.0.i.i to i32
  %rx_pwdb_all.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 29
  %170 = ptrtoint ptr %rx_pwdb_all.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %conv137.i.i, ptr %rx_pwdb_all.i.i, align 4
  %conv138.i.i = sext i8 %sub57.i.i to i32
  %recvsignalpower.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 16
  %171 = ptrtoint ptr %recvsignalpower.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %conv138.i.i, ptr %recvsignalpower.i.i, align 4
  br i1 %127, label %if.then140.i.i, label %if.end136.i.i.translate_rx_signal_stuff.exit_crit_edge

if.end136.i.i.translate_rx_signal_stuff.exit_crit_edge: ; preds = %if.end136.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %translate_rx_signal_stuff.exit

if.then140.i.i:                                   ; preds = %if.end136.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %pwdb_all.0.i.i)
  %cmp142.i.i = icmp ugt i8 %pwdb_all.0.i.i, 40
  br i1 %cmp142.i.i, label %if.then140.i.i.if.end161.i.i_crit_edge, label %if.else145.i.i

if.then140.i.i.if.end161.i.i_crit_edge:           ; preds = %if.then140.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end161.i.i

if.else145.i.i:                                   ; preds = %if.then140.i.i
  %sq_rpt.i.i = getelementptr inbounds %struct.phy_sts_cck_8723e_t, ptr %add.ptr156, i32 0, i32 1
  %172 = ptrtoint ptr %sq_rpt.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %sq_rpt.i.i, align 1
  %conv146.i.i = zext i8 %173 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %173)
  %cmp147.i.i = icmp ugt i8 %173, 64
  br i1 %cmp147.i.i, label %if.else145.i.i.if.end161.i.i_crit_edge, label %if.else150.i.i

if.else145.i.i.if.end161.i.i_crit_edge:           ; preds = %if.else145.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end161.i.i

if.else150.i.i:                                   ; preds = %if.else145.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %173)
  %cmp152.i.i = icmp ult i8 %173, 20
  br i1 %cmp152.i.i, label %if.else150.i.i.if.end161.i.i_crit_edge, label %if.else155.i.i

if.else150.i.i.if.end161.i.i_crit_edge:           ; preds = %if.else150.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end161.i.i

if.else155.i.i:                                   ; preds = %if.else150.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub157.i.i = sub nsw i16 64, %conv146.i.i
  %mul.i.i = mul nsw i16 %sub157.i.i, 100
  %div12.i.i = sdiv i16 %mul.i.i, 44
  %conv158.i.i = trunc i16 %div12.i.i to i8
  br label %if.end161.i.i

if.end161.i.i:                                    ; preds = %if.else155.i.i, %if.else150.i.i.if.end161.i.i_crit_edge, %if.else145.i.i.if.end161.i.i_crit_edge, %if.then140.i.i.if.end161.i.i_crit_edge
  %sq.0.i.i = phi i8 [ %conv158.i.i, %if.else155.i.i ], [ 100, %if.then140.i.i.if.end161.i.i_crit_edge ], [ 0, %if.else145.i.i.if.end161.i.i_crit_edge ], [ 100, %if.else150.i.i.if.end161.i.i_crit_edge ]
  %signalquality.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 15
  %174 = ptrtoint ptr %signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %sq.0.i.i, ptr %signalquality.i.i, align 8
  %175 = ptrtoint ptr %rx_mimo_signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %sq.0.i.i, ptr %rx_mimo_signalquality.i.i, align 4
  %176 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 -1, ptr %arrayidx13.i.i, align 1
  br label %translate_rx_signal_stuff.exit

if.else167.i.i:                                   ; preds = %land.end42.i
  %rfpath_rxenable.i.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 15, i32 15
  %arrayidx168.i.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 15, i32 15, i32 1
  %177 = ptrtoint ptr %arrayidx168.i.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 1, ptr %arrayidx168.i.i, align 1
  %178 = ptrtoint ptr %rfpath_rxenable.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 1, ptr %rfpath_rxenable.i.i, align 2
  %179 = ptrtoint ptr %add.ptr156 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %add.ptr156, align 1
  %181 = shl i8 %180, 1
  %182 = and i8 %181, 126
  %sub186.i.i = add nsw i8 %182, -110
  %call192.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub186.i.i) #4
  %conv193.i.i = zext i8 %call192.i.i to i32
  %arrayidx196.i.i = getelementptr %struct.rx_fwinfo_8723e, ptr %add.ptr156, i32 0, i32 5, i32 0
  %183 = ptrtoint ptr %arrayidx196.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx196.i.i, align 1
  %185 = sdiv i8 %184, 2
  %div198.i.i = sext i8 %185 to i32
  %arrayidx200.i.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 24, i32 10, i32 0
  %186 = ptrtoint ptr %arrayidx200.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %div198.i.i, ptr %arrayidx200.i.i, align 4
  br i1 %127, label %if.then202.i.i, label %if.else167.i.i.for.inc.i.i_crit_edge

if.else167.i.i.for.inc.i.i_crit_edge:             ; preds = %if.else167.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.then202.i.i:                                   ; preds = %if.else167.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx205.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 30, i32 0
  %187 = ptrtoint ptr %arrayidx205.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %call192.i.i, ptr %arrayidx205.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then202.i.i, %if.else167.i.i.for.inc.i.i_crit_edge
  %188 = ptrtoint ptr %arrayidx168.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx168.i.i, align 1, !range !32
  %spec.select.1.i.i = add nuw nsw i8 %189, 1
  %arrayidx182.1.i.i = getelementptr [4 x i8], ptr %add.ptr156, i32 0, i32 1
  %190 = ptrtoint ptr %arrayidx182.1.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx182.1.i.i, align 1
  %192 = shl i8 %191, 1
  %193 = and i8 %192, 126
  %sub186.1.i.i = add nsw i8 %193, -110
  %call192.1.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub186.1.i.i) #4
  %conv193.1.i.i = zext i8 %call192.1.i.i to i32
  %add194.1.i.i = add nuw nsw i32 %conv193.1.i.i, %conv193.i.i
  %arrayidx196.1.i.i = getelementptr %struct.rx_fwinfo_8723e, ptr %add.ptr156, i32 0, i32 5, i32 1
  %194 = ptrtoint ptr %arrayidx196.1.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx196.1.i.i, align 1
  %196 = sdiv i8 %195, 2
  %div198.1.i.i = sext i8 %196 to i32
  %arrayidx200.1.i.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 24, i32 10, i32 1
  %197 = ptrtoint ptr %arrayidx200.1.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %div198.1.i.i, ptr %arrayidx200.1.i.i, align 4
  br i1 %127, label %if.then202.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.i.i

if.then202.1.i.i:                                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx205.1.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 30, i32 1
  %198 = ptrtoint ptr %arrayidx205.1.i.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %call192.1.i.i, ptr %arrayidx205.1.i.i, align 1
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then202.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %pwdb_all208.i.i = getelementptr inbounds %struct.rx_fwinfo_8723e, ptr %add.ptr156, i32 0, i32 1
  %199 = ptrtoint ptr %pwdb_all208.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %pwdb_all208.i.i, align 1
  %201 = lshr i8 %200, 1
  %sub212.i.i = add nsw i8 %201, -110
  %call214.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub212.i.i) #4
  %conv215.i.i = zext i8 %call214.i.i to i32
  %rx_pwdb_all216.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 29
  %202 = ptrtoint ptr %rx_pwdb_all216.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %conv215.i.i, ptr %rx_pwdb_all216.i.i, align 4
  %rxpower.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 17
  %203 = ptrtoint ptr %rxpower.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %sub212.i.i, ptr %rxpower.i.i, align 8
  %conv217.i.i = sext i8 %sub212.i.i to i32
  %recvsignalpower218.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 16
  %204 = ptrtoint ptr %recvsignalpower218.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %conv217.i.i, ptr %recvsignalpower218.i.i, align 4
  %205 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %is_ht, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool219.not.i.i = icmp eq i8 %206, 0
  br i1 %tobool219.not.i.i, label %for.inc.1.i.i.if.else231.i.i_crit_edge, label %land.lhs.true221.i.i

for.inc.1.i.i.if.else231.i.i_crit_edge:           ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else231.i.i

land.lhs.true221.i.i:                             ; preds = %for.inc.1.i.i
  %207 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %rate, align 1
  %209 = add i8 %208, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %209)
  %210 = icmp ult i8 %209, 8
  br i1 %210, label %land.lhs.true221.i.i.if.end232.i.i_crit_edge, label %land.lhs.true221.i.i.if.else231.i.i_crit_edge

land.lhs.true221.i.i.if.else231.i.i_crit_edge:    ; preds = %land.lhs.true221.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else231.i.i

land.lhs.true221.i.i.if.end232.i.i_crit_edge:     ; preds = %land.lhs.true221.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end232.i.i

if.else231.i.i:                                   ; preds = %land.lhs.true221.i.i.if.else231.i.i_crit_edge, %for.inc.1.i.i.if.else231.i.i_crit_edge
  br label %if.end232.i.i

if.end232.i.i:                                    ; preds = %if.else231.i.i, %land.lhs.true221.i.i.if.end232.i.i_crit_edge
  %exitcond.peel.not.i.i = phi i1 [ false, %land.lhs.true221.i.i.if.end232.i.i_crit_edge ], [ true, %if.else231.i.i ]
  %max_spatial_stream.0.i.i = phi i32 [ 2, %land.lhs.true221.i.i.if.end232.i.i_crit_edge ], [ 1, %if.else231.i.i ]
  %arrayidx240.peel.i.i = getelementptr %struct.rx_fwinfo_8723e, ptr %add.ptr156, i32 0, i32 4, i32 0
  %211 = ptrtoint ptr %arrayidx240.peel.i.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx240.peel.i.i, align 1
  %call241.peel.i.i = tail call zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext %212) #4
  br i1 %127, label %if.end252.peel.i.i, label %if.end232.i.i.for.inc260.peel.i.i_crit_edge

if.end232.i.i.for.inc260.peel.i.i_crit_edge:      ; preds = %if.end232.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc260.peel.i.i

if.end252.peel.i.i:                               ; preds = %if.end232.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %signalquality251.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 15
  %213 = ptrtoint ptr %signalquality251.i.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %call241.peel.i.i, ptr %signalquality251.i.i, align 8
  %214 = ptrtoint ptr %rx_mimo_signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %call241.peel.i.i, ptr %rx_mimo_signalquality.i.i, align 1
  br label %for.inc260.peel.i.i

for.inc260.peel.i.i:                              ; preds = %if.end252.peel.i.i, %if.end232.i.i.for.inc260.peel.i.i_crit_edge
  br i1 %exitcond.peel.not.i.i, label %for.inc260.peel.i.i.if.then273.i.i_crit_edge, label %for.inc260.peel.i.i.for.body238.i.i_crit_edge

for.inc260.peel.i.i.for.body238.i.i_crit_edge:    ; preds = %for.inc260.peel.i.i
  br label %for.body238.i.i

for.inc260.peel.i.i.if.then273.i.i_crit_edge:     ; preds = %for.inc260.peel.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then273.i.i

for.body238.i.i:                                  ; preds = %for.inc260.i.i.for.body238.i.i_crit_edge, %for.inc260.peel.i.i.for.body238.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.inc260.i.i.for.body238.i.i_crit_edge ], [ 1, %for.inc260.peel.i.i.for.body238.i.i_crit_edge ]
  %arrayidx240.i.i = getelementptr %struct.rx_fwinfo_8723e, ptr %add.ptr156, i32 0, i32 4, i32 %indvars.iv.i.i
  %215 = ptrtoint ptr %arrayidx240.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx240.i.i, align 1
  %call241.i.i = tail call zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext %216) #4
  br i1 %127, label %if.end252.i.i, label %for.body238.i.i.for.inc260.i.i_crit_edge

for.body238.i.i.for.inc260.i.i_crit_edge:         ; preds = %for.body238.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc260.i.i

if.end252.i.i:                                    ; preds = %for.body238.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx258.i.i = getelementptr %struct.rtl_stats, ptr %status, i32 0, i32 31, i32 %indvars.iv.i.i
  %217 = ptrtoint ptr %arrayidx258.i.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %call241.i.i, ptr %arrayidx258.i.i, align 1
  br label %for.inc260.i.i

for.inc260.i.i:                                   ; preds = %if.end252.i.i, %for.body238.i.i.for.inc260.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %max_spatial_stream.0.i.i
  br i1 %exitcond.not.i.i, label %for.inc260.i.i.if.then273.i.i_crit_edge, label %for.inc260.i.i.for.body238.i.i_crit_edge, !llvm.loop !33

for.inc260.i.i.for.body238.i.i_crit_edge:         ; preds = %for.inc260.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body238.i.i

for.inc260.i.i.if.then273.i.i_crit_edge:          ; preds = %for.inc260.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then273.i.i

if.then273.i.i:                                   ; preds = %for.inc260.i.i.if.then273.i.i_crit_edge, %for.inc260.peel.i.i.if.then273.i.i_crit_edge
  %conv270.i.i = zext i8 %spec.select.1.i.i to i32
  %div275.i.i = udiv i32 %add194.1.i.i, %conv270.i.i
  br label %translate_rx_signal_stuff.exit

translate_rx_signal_stuff.exit:                   ; preds = %if.then273.i.i, %if.end161.i.i, %if.end136.i.i.translate_rx_signal_stuff.exit_crit_edge
  %div275.sink.i.i = phi i32 [ %div275.i.i, %if.then273.i.i ], [ %conv137.i.i, %if.end161.i.i ], [ %conv137.i.i, %if.end136.i.i.translate_rx_signal_stuff.exit_crit_edge ]
  %call276.i.i = tail call i32 @rtl_signal_scale_mapping(ptr noundef %hw, i32 noundef %div275.sink.i.i) #4
  %conv277.i.i = trunc i32 %call276.i.i to i8
  %signalstrength278.i.i = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 18
  %218 = ptrtoint ptr %signalstrength278.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %conv277.i.i, ptr %signalstrength278.i.i, align 1
  tail call void @rtl_process_phyinfo(ptr noundef %hw, ptr noundef %add.ptr3.i, ptr noundef %status) #4
  br label %if.end157

if.end157:                                        ; preds = %translate_rx_signal_stuff.exit, %if.end142.if.end157_crit_edge
  %recvsignalpower = getelementptr inbounds %struct.rtl_stats, ptr %status, i32 0, i32 16
  %219 = ptrtoint ptr %recvsignalpower to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %recvsignalpower, align 4
  %221 = trunc i32 %220 to i8
  %conv158 = add i8 %221, 10
  %signal = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 13
  %222 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %conv158, ptr %signal, align 2
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtlwifi_rate_mapping(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_tx_fill_desc(ptr noundef %hw, ptr nocapture noundef readonly %hdr, ptr noundef %pdesc_tx, ptr nocapture noundef readnone %txbd, ptr noundef %info, ptr noundef %sta, ptr noundef %skb, i8 noundef zeroext %hw_queue, ptr noundef %ptcb_desc) local_unnamed_addr #0 align 64 {
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
  br i1 %cmp.i.i, label %entry._rtl8723e_map_hwqueue_to_fwqueue.exit_crit_edge, label %if.end.i, !prof !35

entry._rtl8723e_map_hwqueue_to_fwqueue.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl8723e_map_hwqueue_to_fwqueue.exit

if.end.i:                                         ; preds = %entry
  %9 = trunc i16 %7 to i12
  %trunc.i = and i12 %9, -1024
  %10 = zext i12 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.13)
  switch i12 %trunc.i, label %if.end6.i [
    i12 0, label %if.end.i._rtl8723e_map_hwqueue_to_fwqueue.exit_crit_edge
    i12 1024, label %if.end.i._rtl8723e_map_hwqueue_to_fwqueue.exit_crit_edge476
  ]

if.end.i._rtl8723e_map_hwqueue_to_fwqueue.exit_crit_edge476: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl8723e_map_hwqueue_to_fwqueue.exit

if.end.i._rtl8723e_map_hwqueue_to_fwqueue.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl8723e_map_hwqueue_to_fwqueue.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %11 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %priority.i, align 4
  %phi.cast = shl i32 %12, 16
  %phi.bo475 = and i32 %phi.cast, 2031616
  br label %_rtl8723e_map_hwqueue_to_fwqueue.exit

_rtl8723e_map_hwqueue_to_fwqueue.exit:            ; preds = %if.end6.i, %if.end.i._rtl8723e_map_hwqueue_to_fwqueue.exit_crit_edge, %if.end.i._rtl8723e_map_hwqueue_to_fwqueue.exit_crit_edge476, %entry._rtl8723e_map_hwqueue_to_fwqueue.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo475, %if.end6.i ], [ 1048576, %entry._rtl8723e_map_hwqueue_to_fwqueue.exit_crit_edge ], [ 1179648, %if.end.i._rtl8723e_map_hwqueue_to_fwqueue.exit_crit_edge ], [ 1179648, %if.end.i._rtl8723e_map_hwqueue_to_fwqueue.exit_crit_edge476 ]
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 5
  %13 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %seq_ctrl, align 2
  %15 = and i16 %14, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp = icmp eq i16 %15, 0
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %5) #4
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %_rtl8723e_map_hwqueue_to_fwqueue.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !36

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev12) #4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44, i32 3
  %20 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev12, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %23, %if.end.i.i ], [ %21, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #4
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %_rtl8723e_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @debug_dma_map_single(ptr noundef %dev12, ptr noundef %5, i32 noundef %19) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %5 to i32
  %sub.i = add i32 %25, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %24, i32 %shr.i
  %and.i = and i32 %25, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev12, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %19, i32 noundef 1, i32 noundef 0) #4
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i329 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev15, i32 noundef %retval.0.i329) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i329)
  %cmp.i = icmp eq i32 %retval.0.i329, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %28 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %opmode, align 8
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %29, label %if.end.if.end35_crit_edge [
    i32 2, label %if.then19
    i32 3, label %if.end.if.then27_crit_edge
    i32 1, label %if.end.if.then27_crit_edge477
  ]

if.end.if.then27_crit_edge477:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then27

if.end.if.then27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then27

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %bw_4020 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %31 = ptrtoint ptr %bw_4020 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bw_4020, align 1
  br label %if.end35

if.then27:                                        ; preds = %if.end.if.then27_crit_edge, %if.end.if.then27_crit_edge477
  %tobool28.not = icmp eq ptr %sta, null
  br i1 %tobool28.not, label %if.then27.if.end35_crit_edge, label %if.then29

if.then27.if.end35_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  %ht_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %33 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ht_cap, align 4
  %35 = trunc i16 %34 to i8
  %conv32 = and i8 %35, 2
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.then27.if.end35_crit_edge, %if.then19, %if.end.if.end35_crit_edge
  %bw_40.0 = phi i8 [ %32, %if.then19 ], [ %conv32, %if.then29 ], [ 0, %if.then27.if.end35_crit_edge ], [ 0, %if.end.if.end35_crit_edge ]
  %36 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %seq_ctrl, align 2
  %38 = and i16 %37, -3841
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %40 = lshr exact i16 %39, 4
  tail call void @rtl_get_tcb_desc(ptr noundef %hw, ptr noundef %info, ptr noundef %sta, ptr noundef %skb, ptr noundef %ptcb_desc) #4
  %41 = call ptr @memset(ptr %pdesc_tx, i32 0, i32 40)
  %42 = and i16 %3, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 18432, i16 %42)
  %cmp.i330 = icmp eq i16 %42, 18432
  br i1 %cmp.i330, label %if.end35.if.then48_crit_edge, label %lor.lhs.false42

if.end35.if.then48_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then48

lor.lhs.false42:                                  ; preds = %if.end35
  %43 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %43)
  %cmp.i331 = icmp eq i16 %43, 1024
  %44 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %extract.t = icmp eq i16 %44, 0
  %brmerge = select i1 %cmp.i331, i1 true, i1 %cmp
  %.mux = or i1 %cmp.i331, %extract.t
  br i1 %brmerge, label %lor.lhs.false42.if.then48_crit_edge, label %lor.lhs.false42.if.end167_crit_edge

lor.lhs.false42.if.end167_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end167

lor.lhs.false42.if.then48_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then48

if.then48:                                        ; preds = %lor.lhs.false42.if.then48_crit_edge, %if.end35.if.then48_crit_edge
  %lastseg.0.off0472 = phi i1 [ true, %if.end35.if.then48_crit_edge ], [ %.mux, %lor.lhs.false42.if.then48_crit_edge ]
  %45 = ptrtoint ptr %pdesc_tx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pdesc_tx, align 4
  %and.i.i = and i32 %46, -65281
  %or.i.i = or i32 %and.i.i, 8192
  store i32 %or.i.i, ptr %pdesc_tx, align 4
  %add.ptr.i332 = getelementptr i32, ptr %pdesc_tx, i32 5
  %47 = ptrtoint ptr %add.ptr.i332 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i332, align 4
  %hw_rate = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 5
  %49 = ptrtoint ptr %hw_rate to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %hw_rate, align 2
  %conv49 = zext i8 %50 to i32
  %and.i.i333 = and i32 %48, -1056964609
  %51 = shl nuw i32 %conv49, 24
  %52 = and i32 %51, 1056964608
  %or.i.i334 = or i32 %52, %and.i.i333
  store i32 %or.i.i334, ptr %add.ptr.i332, align 4
  %use_shortgi = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 2
  %53 = ptrtoint ptr %use_shortgi to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load = load i8, ptr %use_shortgi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %54 = icmp ult i8 %bf.load, 64
  br i1 %54, label %if.then48.if.end58_crit_edge, label %if.then57

if.then48.if.end58_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then57:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  %or.i.i336 = or i32 %or.i.i334, 1073741824
  %55 = ptrtoint ptr %add.ptr.i332 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or.i.i336, ptr %add.ptr.i332, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.then48.if.end58_crit_edge
  %56 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %info, align 8
  %and59 = and i32 %57, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end62_crit_edge, label %if.then61

if.end58.if.end62_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i337 = getelementptr i32, ptr %pdesc_tx, i32 1
  %58 = ptrtoint ptr %add.ptr.i337 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i337, align 4
  %or.i.i338 = or i32 %59, 536870912
  store i32 %or.i.i338, ptr %add.ptr.i337, align 4
  %add.ptr.i339 = getelementptr i32, ptr %pdesc_tx, i32 6
  %60 = ptrtoint ptr %add.ptr.i339 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i339, align 4
  %and.i.i340 = and i32 %61, -16252929
  %or.i.i341 = or i32 %and.i.i340, 10485760
  store i32 %or.i.i341, ptr %add.ptr.i339, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end58.if.end62_crit_edge
  %add.ptr.i342 = getelementptr i32, ptr %pdesc_tx, i32 3
  %62 = ptrtoint ptr %add.ptr.i342 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i342, align 4
  %and.i.i343 = and i32 %63, -65296
  %64 = tail call i16 @llvm.bswap.i16(i16 %40)
  %65 = zext i16 %64 to i32
  %or.i.i344 = or i32 %and.i.i343, %65
  %66 = ptrtoint ptr %add.ptr.i342 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or.i.i344, ptr %add.ptr.i342, align 4
  %67 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load64 = load i16, ptr %ptcb_desc, align 4
  %68 = and i16 %bf.load64, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %68)
  %69 = icmp eq i16 %68, 1024
  %add.ptr.i345 = getelementptr i32, ptr %pdesc_tx, i32 4
  %70 = ptrtoint ptr %add.ptr.i345 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr.i345, align 4
  %and.i.i346 = and i32 %71, -1048577
  %72 = select i1 %69, i32 1048576, i32 0
  %or.i.i347 = or i32 %72, %and.i.i346
  store i32 %or.i.i347, ptr %add.ptr.i345, align 4
  %73 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %73)
  %bf.load74 = load i16, ptr %ptcb_desc, align 4
  %74 = and i16 %bf.load74, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %.not = icmp eq i16 %74, 0
  %and.i.i349 = and i32 %or.i.i347, -2097153
  %75 = select i1 %.not, i32 0, i32 2097152
  %or.i.i350 = or i32 %75, %and.i.i349
  %76 = ptrtoint ptr %add.ptr.i345 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or.i.i350, ptr %add.ptr.i345, align 4
  %77 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load87 = load i16, ptr %ptcb_desc, align 4
  %78 = lshr i16 %bf.load87, 9
  %79 = zext i16 %78 to i32
  %and.i.i352 = and i32 %or.i.i350, -524289
  %80 = shl nuw nsw i32 %79, 19
  %81 = and i32 %80, 524288
  %or.i.i353 = or i32 %81, %and.i.i352
  store i32 %or.i.i353, ptr %add.ptr.i345, align 4
  %bf.load94 = load i16, ptr %ptcb_desc, align 4
  %and.i.i355 = and i32 %or.i.i353, -193
  %82 = lshr i16 %bf.load94, 5
  %83 = and i16 %82, 64
  %84 = zext i16 %83 to i32
  %or.i.i356 = or i32 %and.i.i355, %84
  store i32 %or.i.i356, ptr %add.ptr.i345, align 4
  %rts_rate = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 1
  %85 = ptrtoint ptr %rts_rate to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %rts_rate, align 2
  %conv101 = zext i8 %86 to i32
  %and.i.i360 = and i32 %or.i.i356, -520093833
  %87 = shl nuw i32 %conv101, 24
  %88 = and i32 %87, 520093696
  %or.i.i361 = or i32 %and.i.i360, %88
  store i32 %or.i.i361, ptr %add.ptr.i345, align 4
  %bf.load102 = load i16, ptr %ptcb_desc, align 4
  %and.i.i365 = and i32 %or.i.i361, -185
  %89 = lshr i16 %bf.load102, 2
  %90 = and i16 %89, 16
  %91 = zext i16 %90 to i32
  %or.i.i366 = or i32 %and.i.i365, %91
  store i32 %or.i.i366, ptr %add.ptr.i345, align 4
  %92 = load i8, ptr %rts_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %92)
  %cmp109 = icmp ult i8 %92, 12
  %93 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load111 = load i16, ptr %ptcb_desc, align 4
  %. = select i1 %cmp109, i16 8, i16 7
  %94 = lshr i16 %bf.load111, %.
  %and.i.i368 = and i32 %or.i.i366, -173
  %cond125.in = shl nuw nsw i16 %94, 2
  %95 = and i16 %cond125.in, 4
  %96 = zext i16 %95 to i32
  %or.i.i369 = or i32 %and.i.i368, %96
  %97 = ptrtoint ptr %add.ptr.i345 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %or.i.i369, ptr %add.ptr.i345, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40.0)
  %tobool126.not = icmp eq i8 %bw_40.0, 0
  br i1 %tobool126.not, label %if.else138, label %if.then127

if.then127:                                       ; preds = %if.end62
  %98 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %98)
  %bf.load128 = load i16, ptr %ptcb_desc, align 4
  %bf.lshr129.mask = and i16 %bf.load128, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr129.mask)
  %cmp132 = icmp eq i16 %bf.lshr129.mask, 16384
  br i1 %cmp132, label %if.then134, label %if.else135

if.then134:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #6
  %or.i.i375 = or i32 %or.i.i369, 12290
  br label %if.end139

if.else135:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #6
  %and.i.i377 = and i32 %or.i.i369, -171
  %99 = ptrtoint ptr %add.ptr.i345 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %and.i.i377, ptr %add.ptr.i345, align 4
  %cur_40_prime_sc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 46
  %100 = ptrtoint ptr %cur_40_prime_sc to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %cur_40_prime_sc, align 1
  %conv136 = zext i8 %101 to i32
  %and.i.i381 = and i32 %or.i.i369, -12459
  %102 = shl nuw nsw i32 %conv136, 12
  %103 = and i32 %102, 12288
  %or.i.i382 = or i32 %103, %and.i.i381
  br label %if.end139

if.else138:                                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  %and.i.i386 = and i32 %or.i.i369, -12459
  br label %if.end139

if.end139:                                        ; preds = %if.else138, %if.else135, %if.then134
  %or.i.i375.sink = phi i32 [ %or.i.i375, %if.then134 ], [ %or.i.i382, %if.else135 ], [ %and.i.i386, %if.else138 ]
  %104 = ptrtoint ptr %add.ptr.i345 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %or.i.i375.sink, ptr %add.ptr.i345, align 4
  %105 = ptrtoint ptr %pdesc_tx to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pdesc_tx, align 4
  %and.i.i387 = and i32 %106, -17
  store i32 %and.i.i387, ptr %pdesc_tx, align 4
  %107 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %len, align 4
  %conv142 = and i32 %108, 65535
  %and.i.i388 = and i32 %106, 65519
  %109 = tail call i32 @llvm.bswap.i32(i32 %conv142) #4
  %or.i.i389 = or i32 %109, %and.i.i388
  %110 = ptrtoint ptr %pdesc_tx to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %or.i.i389, ptr %pdesc_tx, align 4
  %tobool143.not = icmp eq ptr %sta, null
  br i1 %tobool143.not, label %if.end139.if.end148_crit_edge, label %set_tx_desc_ampdu_density.exit

if.end139.if.end148_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end148

set_tx_desc_ampdu_density.exit:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i390 = getelementptr i32, ptr %pdesc_tx, i32 2
  %111 = ptrtoint ptr %add.ptr.i390 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %add.ptr.i390, align 4
  %ampdu_density146 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 3
  %113 = ptrtoint ptr %ampdu_density146 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %ampdu_density146, align 4
  %conv147 = zext i8 %114 to i32
  %and.i.i393 = and i32 %112, -28673
  %115 = shl nuw nsw i32 %conv147, 12
  %116 = and i32 %115, 28672
  %or.i.i394 = or i32 %116, %and.i.i393
  store i32 %or.i.i394, ptr %add.ptr.i390, align 4
  br label %if.end148

if.end148:                                        ; preds = %set_tx_desc_ampdu_density.exit, %if.end139.if.end148_crit_edge
  %hw_key = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 12
  %117 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hw_key, align 4
  %tobool149.not = icmp eq ptr %118, null
  br i1 %tobool149.not, label %if.end148.if.end153_crit_edge, label %if.then150

if.end148.if.end153_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153

if.then150:                                       ; preds = %if.end148
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cipher, align 8
  %121 = zext i32 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %120, label %sw.default [
    i32 1027073, label %if.then150.sw.bb_crit_edge
    i32 1027077, label %if.then150.sw.bb_crit_edge478
    i32 1027074, label %if.then150.sw.bb_crit_edge479
    i32 1027076, label %sw.bb152
  ]

if.then150.sw.bb_crit_edge479:                    ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then150.sw.bb_crit_edge478:                    ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then150.sw.bb_crit_edge:                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

sw.bb:                                            ; preds = %if.then150.sw.bb_crit_edge, %if.then150.sw.bb_crit_edge478, %if.then150.sw.bb_crit_edge479
  %add.ptr.i395 = getelementptr i32, ptr %pdesc_tx, i32 1
  %122 = ptrtoint ptr %add.ptr.i395 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %add.ptr.i395, align 4
  %and.i.i396 = and i32 %123, -49153
  %or.i.i397 = or i32 %and.i.i396, 16384
  store i32 %or.i.i397, ptr %add.ptr.i395, align 4
  br label %if.end153

sw.bb152:                                         ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i398 = getelementptr i32, ptr %pdesc_tx, i32 1
  %124 = ptrtoint ptr %add.ptr.i398 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %add.ptr.i398, align 4
  %or.i.i400 = or i32 %125, 49152
  store i32 %or.i.i400, ptr %add.ptr.i398, align 4
  br label %if.end153

sw.default:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i401 = getelementptr i32, ptr %pdesc_tx, i32 1
  %126 = ptrtoint ptr %add.ptr.i401 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %add.ptr.i401, align 4
  %and.i.i402 = and i32 %127, -49153
  store i32 %and.i.i402, ptr %add.ptr.i401, align 4
  br label %if.end153

if.end153:                                        ; preds = %sw.default, %sw.bb152, %sw.bb, %if.end148.if.end153_crit_edge
  %128 = ptrtoint ptr %add.ptr.i342 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %add.ptr.i342, align 4
  %and.i.i404 = and i32 %129, -241
  store i32 %and.i.i404, ptr %add.ptr.i342, align 4
  %add.ptr.i405 = getelementptr i32, ptr %pdesc_tx, i32 1
  %130 = ptrtoint ptr %add.ptr.i405 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %add.ptr.i405, align 4
  %and.i.i408 = and i32 %131, -2031617
  %or.i.i409 = or i32 %and.i.i408, %retval.0.i
  store i32 %or.i.i409, ptr %add.ptr.i405, align 4
  %132 = ptrtoint ptr %add.ptr.i332 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %add.ptr.i332, align 4
  %or.i.i413 = or i32 %133, 16711936
  store i32 %or.i.i413, ptr %add.ptr.i332, align 4
  %134 = ptrtoint ptr %add.ptr.i345 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %add.ptr.i345, align 4
  %and.i.i415 = and i32 %135, -262145
  store i32 %and.i.i415, ptr %add.ptr.i345, align 4
  %136 = ptrtoint ptr %use_shortgi to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load155 = load i8, ptr %use_shortgi, align 1
  %137 = lshr i8 %bf.load155, 5
  %138 = zext i8 %137 to i32
  %and.i.i417 = and i32 %135, -327681
  %139 = shl nuw nsw i32 %138, 16
  %140 = and i32 %139, 65536
  %or.i.i418 = or i32 %140, %and.i.i417
  store i32 %or.i.i418, ptr %add.ptr.i345, align 4
  %141 = and i16 %3, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %141)
  %cmp.i419 = icmp eq i16 %141, -30720
  br i1 %cmp.i419, label %if.then162, label %if.end153.if.end167_crit_edge

if.end153.if.end167_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end167

if.then162:                                       ; preds = %if.end153
  %rdg_en = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 32
  %142 = ptrtoint ptr %rdg_en to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %rdg_en, align 8, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool163.not = icmp eq i8 %143, 0
  br i1 %tobool163.not, label %if.then162.if.end167_crit_edge, label %if.then164

if.then162.if.end167_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end167

if.then164:                                       ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.1) #4
  %144 = ptrtoint ptr %add.ptr.i405 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %add.ptr.i405, align 4
  %or.i.i421 = or i32 %145, -2147483648
  store i32 %or.i.i421, ptr %add.ptr.i405, align 4
  %146 = ptrtoint ptr %pdesc_tx to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %pdesc_tx, align 4
  %or.i.i422 = or i32 %147, 2
  store i32 %or.i.i422, ptr %pdesc_tx, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then164, %if.then162.if.end167_crit_edge, %if.end153.if.end167_crit_edge, %lor.lhs.false42.if.end167_crit_edge
  %lastseg.0.off0471 = phi i1 [ %lastseg.0.off0472, %if.end153.if.end167_crit_edge ], [ %lastseg.0.off0472, %if.then164 ], [ %lastseg.0.off0472, %if.then162.if.end167_crit_edge ], [ %extract.t, %lor.lhs.false42.if.end167_crit_edge ]
  %firstseg.0.off0469 = phi i32 [ 8, %if.end153.if.end167_crit_edge ], [ 8, %if.then164 ], [ 8, %if.then162.if.end167_crit_edge ], [ 0, %lor.lhs.false42.if.end167_crit_edge ]
  %148 = ptrtoint ptr %pdesc_tx to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %pdesc_tx, align 4
  %and.i.i423 = and i32 %149, -13
  %150 = select i1 %lastseg.0.off0471, i32 4, i32 0
  %or.i.i424 = or i32 %150, %firstseg.0.off0469
  %or.i.i426 = or i32 %or.i.i424, %and.i.i423
  store i32 %or.i.i426, ptr %pdesc_tx, align 4
  %151 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %len, align 4
  %conv176 = and i32 %152, 65535
  %add.ptr.i427 = getelementptr i32, ptr %pdesc_tx, i32 7
  %153 = ptrtoint ptr %add.ptr.i427 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %add.ptr.i427, align 4
  %and.i.i428 = and i32 %154, 65535
  %155 = tail call i32 @llvm.bswap.i32(i32 %conv176) #4
  %or.i.i429 = or i32 %and.i.i428, %155
  %156 = ptrtoint ptr %add.ptr.i427 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %or.i.i429, ptr %add.ptr.i427, align 4
  %157 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i329) #4
  %add.ptr.i430 = getelementptr i32, ptr %pdesc_tx, i32 8
  %158 = ptrtoint ptr %add.ptr.i430 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %add.ptr.i430, align 4
  %useramask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 14
  %159 = ptrtoint ptr %useramask to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %useramask, align 1, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool177.not = icmp eq i8 %160, 0
  %ratr_index182 = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 3
  %161 = ptrtoint ptr %ratr_index182 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %ratr_index182, align 4
  %conv183 = zext i8 %162 to i32
  %add.ptr.i441 = getelementptr i32, ptr %pdesc_tx, i32 1
  %163 = ptrtoint ptr %add.ptr.i441 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %add.ptr.i441, align 4
  %and.i.i444 = and i32 %164, -3841
  %add = shl nuw nsw i32 %conv183, 8
  br i1 %tobool177.not, label %set_tx_desc_rate_id.exit446, label %set_tx_desc_rate_id.exit

set_tx_desc_rate_id.exit:                         ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #6
  %165 = and i32 %add, 3840
  %or.i.i435 = or i32 %165, %and.i.i444
  %166 = ptrtoint ptr %add.ptr.i441 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %or.i.i435, ptr %add.ptr.i441, align 4
  %mac_id = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 4
  br label %if.end186

set_tx_desc_rate_id.exit446:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #6
  %167 = add nuw nsw i32 %add, 3072
  %168 = and i32 %167, 3840
  %or.i.i445 = or i32 %168, %and.i.i444
  %169 = ptrtoint ptr %add.ptr.i441 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %or.i.i445, ptr %add.ptr.i441, align 4
  br label %if.end186

if.end186:                                        ; preds = %set_tx_desc_rate_id.exit446, %set_tx_desc_rate_id.exit
  %or.i.i445.sink = phi i32 [ %or.i.i435, %set_tx_desc_rate_id.exit ], [ %or.i.i445, %set_tx_desc_rate_id.exit446 ]
  %conv185.sink.in.in = phi ptr [ %mac_id, %set_tx_desc_rate_id.exit ], [ %ratr_index182, %set_tx_desc_rate_id.exit446 ]
  %170 = ptrtoint ptr %conv185.sink.in.in to i32
  call void @__asan_load1_noabort(i32 %170)
  %conv185.sink.in = load i8, ptr %conv185.sink.in.in, align 1
  %conv185.sink = zext i8 %conv185.sink.in to i32
  %and.i.i450 = and i32 %or.i.i445.sink, -520093697
  %171 = shl nuw i32 %conv185.sink, 24
  %172 = and i32 %171, 520093696
  %or.i.i451 = or i32 %172, %and.i.i450
  %173 = ptrtoint ptr %add.ptr.i441 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %or.i.i451, ptr %add.ptr.i441, align 4
  %174 = and i16 %3, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %174)
  %cmp.i453 = icmp eq i16 %174, -30720
  br i1 %cmp.i453, label %if.end186.if.end194_crit_edge, label %land.lhs.true

if.end186.if.end194_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end194

land.lhs.true:                                    ; preds = %if.end186
  %fwctrl_lps = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 10
  %175 = ptrtoint ptr %fwctrl_lps to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %fwctrl_lps, align 2, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool188.not = icmp eq i8 %176, 0
  br i1 %tobool188.not, label %land.lhs.true.if.end194_crit_edge, label %if.then190

land.lhs.true.if.end194_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end194

if.then190:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i454 = getelementptr i32, ptr %pdesc_tx, i32 3
  %177 = ptrtoint ptr %add.ptr.i454 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %add.ptr.i454, align 4
  %or.i.i455 = or i32 %178, 128
  store i32 %or.i.i455, ptr %add.ptr.i454, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.then190, %land.lhs.true.if.end194_crit_edge, %if.end186.if.end194_crit_edge
  %add.ptr.i456 = getelementptr i32, ptr %pdesc_tx, i32 2
  %179 = ptrtoint ptr %add.ptr.i456 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %add.ptr.i456, align 4
  %and.i.i457 = and i32 %180, -513
  %181 = select i1 %lastseg.0.off0471, i32 0, i32 512
  %or.i.i458 = or i32 %and.i.i457, %181
  store i32 %or.i.i458, ptr %add.ptr.i456, align 4
  %182 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %hdr, align 2
  %184 = and i16 %183, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %184)
  %cmp.i.not.i = icmp eq i16 %184, 0
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 4
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %retval.0.i459 = select i1 %cmp.i.not.i, ptr %addr1.i, ptr %addr3.i
  %185 = ptrtoint ptr %retval.0.i459 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %retval.0.i459, align 4
  %187 = and i32 %186, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool.i.not = icmp eq i32 %187, 0
  br i1 %tobool.i.not, label %lor.lhs.false201, label %if.end194.if.then205_crit_edge

if.end194.if.then205_crit_edge:                   ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then205

lor.lhs.false201:                                 ; preds = %if.end194
  %188 = ptrtoint ptr %retval.0.i459 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %retval.0.i459, align 2
  %add.ptr1.i = getelementptr i8, ptr %retval.0.i459, i32 2
  %190 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %191, %189
  %add.ptr3.i = getelementptr i8, ptr %retval.0.i459, i32 4
  %192 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %193
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i464 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i464, label %lor.lhs.false201.if.then205_crit_edge, label %lor.lhs.false201.cleanup_crit_edge

lor.lhs.false201.cleanup_crit_edge:               ; preds = %lor.lhs.false201
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false201.if.then205_crit_edge:            ; preds = %lor.lhs.false201
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then205

if.then205:                                       ; preds = %lor.lhs.false201.if.then205_crit_edge, %if.end194.if.then205_crit_edge
  %194 = ptrtoint ptr %pdesc_tx to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %pdesc_tx, align 4
  %or.i.i465 = or i32 %195, 1
  store i32 %or.i.i465, ptr %pdesc_tx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then205, %lor.lhs.false201.cleanup_crit_edge, %dma_map_single_attrs.exit.cleanup_crit_edge
  %.str.2.sink = phi ptr [ @.str, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ @.str.2, %if.then205 ], [ @.str.2, %lor.lhs.false201.cleanup_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull %.str.2.sink) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_get_tcb_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_tx_fill_cmddesc(ptr nocapture noundef readonly %hw, ptr noundef %pdesc8, i1 noundef zeroext %firstseg, i1 noundef zeroext %lastseg, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
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
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !36

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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #4
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str) #4
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
  %and.i.i71 = and i32 %or.i.i61, -521080577
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
  tail call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef %pdesc8, i32 noundef 64) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_set_desc(ptr nocapture noundef readnone %hw, ptr nocapture noundef %pdesc8, i1 noundef zeroext %istx, i8 noundef zeroext %desc_name, ptr nocapture noundef readonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %desc_name to i32
  br i1 %istx, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.16)
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
  %.b112 = load i1, ptr @rtl8723e_set_desc.__already_done, align 1
  br i1 %.b112, label %land.end.if.end95_crit_edge, label %if.then8, !prof !36

land.end.if.end95_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl8723e_set_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 602, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %conv) #4
  br label %if.end95

if.else:                                          ; preds = %entry
  %7 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.17)
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
  %.b110111 = load i1, ptr @rtl8723e_set_desc.__already_done.6, align 1
  br i1 %.b110111, label %land.end51.if.end95_crit_edge, label %if.then58, !prof !36

land.end51.if.end95_crit_edge:                    ; preds = %land.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

if.then58:                                        ; preds = %land.end51
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl8723e_set_desc.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 621, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %conv) #4
  br label %if.end95

if.end95:                                         ; preds = %if.then58, %land.end51.if.end95_crit_edge, %sw.bb42, %set_rx_desc_pkt_len.exit, %sw.bb40, %sw.bb39, %if.then8, %land.end.if.end95_crit_edge, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @rtl8723e_get_desc(ptr nocapture readnone %hw, ptr nocapture noundef readonly %pdesc8, i1 noundef zeroext %istx, i8 noundef zeroext %desc_name) local_unnamed_addr #0 align 64 {
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
  %.b113 = load i1, ptr @rtl8723e_get_desc.__already_done, align 1
  br i1 %.b113, label %land.end.if.end98_crit_edge, label %if.then9, !prof !36

land.end.if.end98_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

if.then9:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl8723e_get_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 643, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %conv) #4
  br label %if.end98

if.else:                                          ; preds = %entry
  %6 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.19)
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
  %.b111112 = load i1, ptr @rtl8723e_get_desc.__already_done.8, align 1
  br i1 %.b111112, label %land.end54.if.end98_crit_edge, label %if.then61, !prof !36

land.end54.if.end98_crit_edge:                    ; preds = %land.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

if.then61:                                        ; preds = %land.end54
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl8723e_get_desc.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 659, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %conv) #4
  br label %if.end98

if.end98:                                         ; preds = %if.then61, %land.end54.if.end98_crit_edge, %sw.bb44, %sw.bb42, %sw.bb40, %if.then9, %land.end.if.end98_crit_edge, %sw.bb1, %sw.bb
  %ret.0 = phi i32 [ %5, %sw.bb1 ], [ %.mask.lobit.i, %sw.bb ], [ %15, %sw.bb44 ], [ %12, %sw.bb42 ], [ %.mask.lobit.i115, %sw.bb40 ], [ 0, %if.then9 ], [ 0, %land.end.if.end98_crit_edge ], [ 0, %if.then61 ], [ 0, %land.end54.if.end98_crit_edge ]
  %conv99 = zext i32 %ret.0 to i64
  ret i64 %conv99
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rtl8723e_is_tx_desc_closed(ptr nocapture noundef readonly %hw, i8 noundef zeroext %hw_queue, i16 noundef zeroext %index) local_unnamed_addr #3 align 64 {
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
define dso_local void @rtl8723e_tx_polling(ptr nocapture noundef readonly %hw, i8 noundef zeroext %hw_queue) local_unnamed_addr #0 align 64 {
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
  %7 = load i8, ptr %write_readback.i, align 1, !range !32
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
  %13 = load i8, ptr %write_readback.i8, align 1, !range !32
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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !15, !17, !19, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/trx.c", i32 370, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/trx.c", i32 479, i32 5}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/trx.c", i32 519, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/trx.c", i32 582, i32 2}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/trx.c", i32 601, i32 4}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/trx.c", i32 620, i32 4}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/trx.c", i32 642, i32 4}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/trx.c", i32 658, i32 4}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i8 0, i8 2}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.peeled.count", i32 1}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{!"branch_weights", i32 2000, i32 1}
