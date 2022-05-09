; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192de/trx.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192de/trx.c"
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
%struct.phy_sts_cck_8192d = type { [4 x i8], i8, i8 }
%struct.rx_fwinfo_92d = type { [4 x i8], i8, [4 x i8], [4 x i8], [2 x i8], [4 x i8], [2 x i8], [2 x i8], [2 x i8], i8, i8, i8 }
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
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.129 }
%union.anon.129 = type { %struct.anon.136, [32 x i8] }
%struct.anon.136 = type { i64 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.rtl8192_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head, ptr, i32, i16, i16 }
%struct.rtl_tx_desc = type { [16 x i32] }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA mapping error\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Insert 8 byte.pTcb->EMPktNum:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enable RDG function\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"H2C Tx Cmd Content\00", [45 x i8] zeroinitializer }, align 32
@rtl92de_set_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192de/trx.c\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rtl8192de: ERR txdesc :%d not processed\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl92de_set_desc.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rtl8192de: ERR rxdesc :%d not processed\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl92de_get_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rtl92de_get_desc.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 5]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 514, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 529, i32 5 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 628, i32 5 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 655, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 712, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 733, i32 4 }
@___asan_gen_.42 = private constant [56 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/trx.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 753, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 326, i32 6 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92de_rx_query_desc(ptr noundef %hw, ptr noundef %stats, ptr nocapture noundef %rx_status, ptr noundef readonly %pdesc8, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pdesc8, align 4
  %2 = and i32 %1, -12648448
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  %conv = trunc i32 %3 to i16
  %length = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 14
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %length, align 2
  %5 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pdesc8, align 4
  %sh.diff = lshr i32 %6, 5
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %conv5 = and i8 %tr.sh.diff, 120
  %rx_drvinfo_size = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 23
  %7 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5, ptr %rx_drvinfo_size, align 1
  %8 = load i32, ptr %pdesc8, align 4
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 3
  %rx_bufshift = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 24
  %11 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %rx_bufshift, align 2
  %12 = load i32, ptr %pdesc8, align 4
  %icv = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 19
  %13 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %icv, align 2
  %sh.diff214 = lshr i32 %12, 18
  %tr.sh.diff215 = trunc i32 %sh.diff214 to i8
  %bf.value = and i8 %tr.sh.diff215, 32
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
  %rate = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 5
  %27 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv44, ptr %rate, align 1
  %28 = load i32, ptr %add.ptr.i, align 4
  %sh.diff216 = lshr i32 %28, 12
  %tr.sh.diff217 = trunc i32 %sh.diff216 to i8
  %bf.value48 = and i8 %tr.sh.diff217, 16
  %bf.clear50 = and i8 %bf.set41, -17
  %bf.set51 = or i8 %bf.clear50, %bf.value48
  store i8 %bf.set51, ptr %icv, align 2
  %add.ptr.i189 = getelementptr i32, ptr %pdesc8, i32 1
  %29 = ptrtoint ptr %add.ptr.i189 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i189, align 4
  %isampdu = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 25
  %31 = lshr i32 %30, 22
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = ptrtoint ptr %isampdu to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %isampdu, align 1
  %35 = load i32, ptr %add.ptr.i189, align 4
  %36 = and i32 %35, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %36)
  %37 = icmp eq i32 %36, 12582912
  %isfirst_ampdu = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 26
  %frombool61 = zext i1 %37 to i8
  %38 = ptrtoint ptr %isfirst_ampdu to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool61, ptr %isfirst_ampdu, align 8
  %add.ptr.i196 = getelementptr i32, ptr %pdesc8, i32 5
  %39 = ptrtoint ptr %add.ptr.i196 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i196, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #4
  %timestamp_low = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 20
  %42 = ptrtoint ptr %timestamp_low to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %timestamp_low, align 4
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i, align 4
  %rx_is40mhzpacket = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 27
  %45 = lshr i32 %44, 17
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = ptrtoint ptr %rx_is40mhzpacket to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %rx_is40mhzpacket, align 1
  %49 = load i32, ptr %add.ptr.i, align 4
  %is_ht = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 42
  %50 = lshr i32 %49, 30
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 1
  %53 = ptrtoint ptr %is_ht to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %is_ht, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %54 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %center_freq, align 4
  %conv69 = trunc i32 %57 to i16
  %freq = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 5
  %58 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load70 = load i16, ptr %freq, align 4
  %bf.shl72 = shl i16 %conv69, 3
  %bf.clear73 = and i16 %bf.load70, 7
  %bf.set74 = or i16 %bf.clear73, %bf.shl72
  store i16 %bf.set74, ptr %freq, align 4
  %59 = load ptr, ptr %chandef, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %conv78 = trunc i32 %61 to i8
  %band79 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 11
  %62 = ptrtoint ptr %band79 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv78, ptr %band79, align 4
  %63 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pdesc8, align 4
  %65 = and i32 %64, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool81.not = icmp eq i32 %65, 0
  br i1 %tobool81.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %flag = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %66 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flag, align 8
  %or82 = or i32 %67, 32
  store i32 %or82, ptr %flag, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %68 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pdesc8, align 4
  %70 = and i32 %69, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool84.not = icmp eq i32 %70, 0
  br i1 %tobool84.not, label %if.then85, label %if.end.if.end88_crit_edge

if.end.if.end88_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88

if.then85:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %flag86 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %71 = ptrtoint ptr %flag86 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flag86, align 8
  %or87 = or i32 %72, 2
  store i32 %or87, ptr %flag86, align 8
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.end.if.end88_crit_edge
  %73 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr.i, align 4
  %75 = and i32 %74, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool90.not = icmp eq i32 %75, 0
  br i1 %tobool90.not, label %if.end88.if.end95_crit_edge, label %if.then91

if.end88.if.end95_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #6
  %bw = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %76 = ptrtoint ptr %bw to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %bf.load92 = load i16, ptr %bw, align 1
  %bf.clear93 = and i16 %bf.load92, -14337
  %bf.set94 = or i16 %bf.clear93, 6144
  store i16 %bf.set94, ptr %bw, align 1
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.end88.if.end95_crit_edge
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr.i, align 4
  %79 = and i32 %78, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool97.not = icmp eq i32 %79, 0
  br i1 %tobool97.not, label %if.end95.if.end102_crit_edge, label %if.then98

if.end95.if.end102_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  %encoding = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %80 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %bf.load99 = load i16, ptr %encoding, align 1
  %bf.clear100 = and i16 %bf.load99, 16383
  %bf.set101 = or i16 %bf.clear100, 16384
  store i16 %bf.set101, ptr %encoding, align 1
  br label %if.end102

if.end102:                                        ; preds = %if.then98, %if.end95.if.end102_crit_edge
  %flag103 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %81 = ptrtoint ptr %flag103 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flag103, align 8
  %or104 = or i32 %82, 128
  store i32 %or104, ptr %flag103, align 8
  %83 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load106 = load i8, ptr %icv, align 2
  %84 = and i8 %bf.load106, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool110.not = icmp eq i8 %84, 0
  br i1 %tobool110.not, label %if.end102.if.end114_crit_edge, label %if.then111

if.end102.if.end114_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114

if.then111:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  %or113 = or i32 %82, 130
  %85 = ptrtoint ptr %flag103 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or113, ptr %flag103, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %if.end102.if.end114_crit_edge
  %86 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %is_ht, align 4, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool116 = icmp ne i8 %87, 0
  %88 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %rate, align 1
  %call118 = tail call i32 @rtlwifi_rate_mapping(ptr noundef %hw, i1 noundef zeroext %tobool116, i1 noundef zeroext false, i8 noundef zeroext %89) #4
  %conv119 = trunc i32 %call118 to i8
  %rate_idx = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 8
  %90 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv119, ptr %rate_idx, align 1
  %91 = ptrtoint ptr %add.ptr.i196 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i196, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #4
  %conv121 = zext i32 %93 to i64
  %94 = ptrtoint ptr %rx_status to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %conv121, ptr %rx_status, align 8
  %95 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool122.not = icmp eq i32 %95, 0
  br i1 %tobool122.not, label %if.end114.if.end126_crit_edge, label %if.then123

if.end114.if.end126_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end126

if.then123:                                       ; preds = %if.end114
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %96 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data, align 4
  %98 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %rx_bufshift, align 2
  %conv125 = zext i8 %99 to i32
  %add.ptr = getelementptr i8, ptr %97, i32 %conv125
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %100 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %priv.i, align 8
  %102 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %rx_drvinfo_size, align 1
  %conv.i = zext i8 %103 to i32
  %add.ptr.i213 = getelementptr i8, ptr %97, i32 %conv.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i213, i32 %conv125
  %104 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %add.ptr3.i, align 2
  %106 = tail call i16 @llvm.bswap.i16(i16 %105) #4
  %conv4.i = zext i16 %106 to i32
  %and.i = and i16 %106, 12
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %and.i)
  %cmp.not.i = icmp eq i16 %and.i, 4
  br i1 %cmp.not.i, label %if.then123.land.end41.i_crit_edge, label %land.lhs.true.i

if.then123.land.end41.i_crit_edge:                ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end41.i

land.lhs.true.i:                                  ; preds = %if.then123
  %bssid.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 9, i32 34
  %and10.i = and i32 %conv4.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %land.lhs.true.i.cond.end20.i_crit_edge

land.lhs.true.i.cond.end20.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end20.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  %and14.i = and i32 %conv4.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %cond.false18.i, label %cond.true16.i

cond.true16.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 3
  br label %cond.end20.i

cond.false18.i:                                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 4
  br label %cond.end20.i

cond.end20.i:                                     ; preds = %cond.false18.i, %cond.true16.i, %land.lhs.true.i.cond.end20.i_crit_edge
  %cond21.i = phi ptr [ %addr2.i, %cond.true16.i ], [ %addr3.i, %cond.false18.i ], [ %addr1.i, %land.lhs.true.i.cond.end20.i_crit_edge ]
  %107 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bssid.i, align 4
  %109 = ptrtoint ptr %cond21.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cond21.i, align 4
  %xor.i.i = xor i32 %110, %108
  %add.ptr.i.i = getelementptr %struct.rtl_priv, ptr %101, i32 0, i32 9, i32 34, i32 4
  %111 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %cond21.i, i32 4
  %113 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %114, %112
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true23.i, label %cond.end20.i.land.end41.i_crit_edge

cond.end20.i.land.end41.i_crit_edge:              ; preds = %cond.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end41.i

land.lhs.true23.i:                                ; preds = %cond.end20.i
  %115 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load.i = load i8, ptr %icv, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.load.i)
  %116 = icmp ult i8 %bf.load.i, 32
  br i1 %116, label %land.rhs37.i, label %land.lhs.true23.i.land.end41.i_crit_edge

land.lhs.true23.i.land.end41.i_crit_edge:         ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end41.i

land.rhs37.i:                                     ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev_addr.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 17, i32 19
  %117 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %addr1.i, align 4
  %119 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dev_addr.i, align 4
  %xor.i65.i = xor i32 %120, %118
  %add.ptr.i66.i = getelementptr i8, ptr %addr1.i, i32 4
  %121 = ptrtoint ptr %add.ptr.i66.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %add.ptr.i66.i, align 2
  %add.ptr1.i67.i = getelementptr %struct.rtl_priv, ptr %101, i32 0, i32 17, i32 19, i32 4
  %123 = ptrtoint ptr %add.ptr1.i67.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %add.ptr1.i67.i, align 2
  %xor37.i68.i = xor i16 %124, %122
  %xor3.i69.i = zext i16 %xor37.i68.i to i32
  %or.i70.i = or i32 %xor.i65.i, %xor3.i69.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i70.i)
  %cmp.i71.i = icmp eq i32 %or.i70.i, 0
  br label %land.end41.i

land.end41.i:                                     ; preds = %land.rhs37.i, %land.lhs.true23.i.land.end41.i_crit_edge, %cond.end20.i.land.end41.i_crit_edge, %if.then123.land.end41.i_crit_edge
  %125 = phi i1 [ true, %land.rhs37.i ], [ false, %land.lhs.true23.i.land.end41.i_crit_edge ], [ false, %cond.end20.i.land.end41.i_crit_edge ], [ false, %if.then123.land.end41.i_crit_edge ]
  %126 = phi i1 [ %cmp.i71.i, %land.rhs37.i ], [ false, %land.lhs.true23.i.land.end41.i_crit_edge ], [ false, %cond.end20.i.land.end41.i_crit_edge ], [ false, %if.then123.land.end41.i_crit_edge ]
  %127 = and i16 %105, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %127)
  %cmp.i72.i = icmp eq i16 %127, -32768
  %frombool.i.i = zext i1 %125 to i8
  %frombool1.i.i = zext i1 %126 to i8
  %frombool2.i.i = zext i1 %cmp.i72.i to i8
  %128 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_loadN_noabort(i32 %128, i32 16)
  %bf.load.i.i = load i128, ptr %pdesc8, align 1
  %129 = trunc i128 %bf.load.i.i to i32
  %130 = lshr i32 %129, 26
  %.fr.i.i = freeze i32 %129
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %.fr.i.i)
  %cmp.i73.i = icmp ult i32 %.fr.i.i, 67108864
  %.off.i.i = add nsw i32 %130, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 3
  %or.cond.i.i = select i1 %cmp.i73.i, i1 true, i1 %switch.i.i
  %frombool19.i.i = zext i1 %or.cond.i.i to i8
  %packet_matchbssid.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 40
  %131 = ptrtoint ptr %packet_matchbssid.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %frombool.i.i, ptr %packet_matchbssid.i.i, align 2
  %packet_toself22.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 43
  %132 = ptrtoint ptr %packet_toself22.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %frombool1.i.i, ptr %packet_toself22.i.i, align 1
  %packet_beacon25.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 44
  %133 = ptrtoint ptr %packet_beacon25.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %frombool2.i.i, ptr %packet_beacon25.i.i, align 2
  %is_cck.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 41
  %134 = ptrtoint ptr %is_cck.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %frombool19.i.i, ptr %is_cck.i.i, align 1
  %rx_mimo_sig_qual.i.i = getelementptr %struct.rtl_stats, ptr %stats, i32 0, i32 35
  %135 = ptrtoint ptr %rx_mimo_sig_qual.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 -1, ptr %rx_mimo_sig_qual.i.i, align 4
  %arrayidx30.i.i = getelementptr %struct.rtl_stats, ptr %stats, i32 0, i32 35, i32 1
  %136 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 -1, ptr %arrayidx30.i.i, align 1
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else185.i.i

if.then.i.i:                                      ; preds = %land.end41.i
  %rfpwr_state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 21, i32 24
  %137 = ptrtoint ptr %rfpwr_state.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %rfpwr_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp32.i.i = icmp eq i32 %138, 0
  br i1 %cmp32.i.i, label %if.end.i.i, label %if.then.i.i.if.then35.i.i_crit_edge

if.then.i.i.if.then35.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then35.i.i

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
  %tobool34.not.i.i = icmp eq i8 %conv.i.i, 0
  br i1 %tobool34.not.i.i, label %if.end.i.i.if.then35.i.i_crit_edge, label %if.else61.i.i

if.end.i.i.if.then35.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then35.i.i

if.then35.i.i:                                    ; preds = %if.end.i.i.if.then35.i.i_crit_edge, %if.then.i.i.if.then35.i.i_crit_edge
  %cck_agc_rpt36.i.i = getelementptr inbounds %struct.phy_sts_cck_8192d, ptr %add.ptr, i32 0, i32 2
  %147 = ptrtoint ptr %cck_agc_rpt36.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %cck_agc_rpt36.i.i, align 1
  %149 = lshr i8 %148, 6
  %conv42.i.i = zext i8 %149 to i32
  %150 = zext i32 %conv42.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv42.i.i, label %if.then35.unreachabledefault.i.i [
    i32 3, label %if.then35.i.i.if.end96.i.i_crit_edge
    i32 2, label %sw.bb46.i.i
    i32 1, label %sw.bb51.i.i
    i32 0, label %sw.bb56.i.i
  ]

if.then35.i.i.if.end96.i.i_crit_edge:             ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96.i.i

sw.bb46.i.i:                                      ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96.i.i

sw.bb51.i.i:                                      ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96.i.i

sw.bb56.i.i:                                      ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96.i.i

if.then35.unreachabledefault.i.i:                 ; preds = %if.then35.i.i
  unreachable

if.else61.i.i:                                    ; preds = %if.end.i.i
  %cck_agc_rpt63.i.i = getelementptr inbounds %struct.phy_sts_cck_8192d, ptr %add.ptr, i32 0, i32 2
  %151 = ptrtoint ptr %cck_agc_rpt63.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %cck_agc_rpt63.i.i, align 1
  %153 = lshr i8 %152, 5
  %154 = and i8 %153, 3
  %conv71.i.i = zext i8 %154 to i32
  %155 = zext i32 %conv71.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %conv71.i.i, label %if.else61.unreachabledefault.i.i [
    i32 3, label %sw.bb72.i.i
    i32 2, label %sw.bb77.i.i
    i32 1, label %sw.bb83.i.i
    i32 0, label %sw.bb89.i.i
  ]

sw.bb72.i.i:                                      ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %156 = shl i8 %152, 1
  br label %if.end96.i.i

sw.bb77.i.i:                                      ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %157 = shl i8 %152, 1
  br label %if.end96.i.i

sw.bb83.i.i:                                      ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %158 = shl i8 %152, 1
  br label %if.end96.i.i

sw.bb89.i.i:                                      ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %159 = shl i8 %152, 1
  br label %if.end96.i.i

if.else61.unreachabledefault.i.i:                 ; preds = %if.else61.i.i
  unreachable

if.end96.i.i:                                     ; preds = %sw.bb89.i.i, %sw.bb83.i.i, %sw.bb77.i.i, %sw.bb72.i.i, %sw.bb56.i.i, %sw.bb51.i.i, %sw.bb46.i.i, %if.then35.i.i.if.end96.i.i_crit_edge
  %.sink430.i.i = phi i8 [ %156, %sw.bb72.i.i ], [ %157, %sw.bb77.i.i ], [ %158, %sw.bb83.i.i ], [ %159, %sw.bb89.i.i ], [ %148, %sw.bb46.i.i ], [ %148, %sw.bb51.i.i ], [ %148, %sw.bb56.i.i ], [ %148, %if.then35.i.i.if.end96.i.i_crit_edge ]
  %.sink.i.i = phi i8 [ -46, %sw.bb72.i.i ], [ -26, %sw.bb77.i.i ], [ -12, %sw.bb83.i.i ], [ 16, %sw.bb89.i.i ], [ -26, %sw.bb46.i.i ], [ -12, %sw.bb51.i.i ], [ 16, %sw.bb56.i.i ], [ -46, %if.then35.i.i.if.end96.i.i_crit_edge ]
  %160 = and i8 %.sink430.i.i, 62
  %sub75.i.i = sub nsw i8 %.sink.i.i, %160
  %call97.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub75.i.i) #4
  %add.i.i = add i8 %call97.i.i, 6
  %161 = tail call i8 @llvm.umin.i8(i8 %add.i.i, i8 100) #4
  %162 = add nsw i8 %161, -35
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %162)
  %163 = icmp ult i8 %162, 8
  br i1 %163, label %if.then111.i.i, label %if.else115.i.i

if.then111.i.i:                                   ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub113.i.i = add nsw i8 %161, -2
  br label %if.end154.i.i

if.else115.i.i:                                   ; preds = %if.end96.i.i
  %164 = add nsw i8 %161, -27
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %164)
  %165 = icmp ult i8 %164, 8
  br i1 %165, label %if.then123.i.i, label %if.else127.i.i

if.then123.i.i:                                   ; preds = %if.else115.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub125.i.i = add nsw i8 %161, -6
  br label %if.end154.i.i

if.else127.i.i:                                   ; preds = %if.else115.i.i
  %166 = add nsw i8 %161, -15
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %166)
  %167 = icmp ult i8 %166, 12
  br i1 %167, label %if.then135.i.i, label %if.else139.i.i

if.then135.i.i:                                   ; preds = %if.else127.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub137.i.i = add nsw i8 %161, -8
  br label %if.end154.i.i

if.else139.i.i:                                   ; preds = %if.else127.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %168 = add nsw i8 %161, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %168)
  %169 = icmp ult i8 %168, 10
  %sub149.i.i = add nsw i8 %161, -4
  %spec.select409.i.i = select i1 %169, i8 %sub149.i.i, i8 %161
  br label %if.end154.i.i

if.end154.i.i:                                    ; preds = %if.else139.i.i, %if.then135.i.i, %if.then123.i.i, %if.then111.i.i
  %pwdb_all.0.i.i = phi i8 [ %sub113.i.i, %if.then111.i.i ], [ %sub125.i.i, %if.then123.i.i ], [ %sub137.i.i, %if.then135.i.i ], [ %spec.select409.i.i, %if.else139.i.i ]
  %conv155.i.i = zext i8 %pwdb_all.0.i.i to i32
  %rx_pwdb_all.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 29
  %170 = ptrtoint ptr %rx_pwdb_all.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %conv155.i.i, ptr %rx_pwdb_all.i.i, align 4
  %conv156.i.i = sext i8 %sub75.i.i to i32
  %recvsignalpower.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 16
  %171 = ptrtoint ptr %recvsignalpower.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %conv156.i.i, ptr %recvsignalpower.i.i, align 4
  br i1 %125, label %if.then158.i.i, label %if.end154.i.i._rtl92de_query_rxphystatus.exit.i_crit_edge

if.end154.i.i._rtl92de_query_rxphystatus.exit.i_crit_edge: ; preds = %if.end154.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl92de_query_rxphystatus.exit.i

if.then158.i.i:                                   ; preds = %if.end154.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %pwdb_all.0.i.i)
  %cmp160.i.i = icmp ugt i8 %pwdb_all.0.i.i, 40
  br i1 %cmp160.i.i, label %if.then158.i.i.if.end179.i.i_crit_edge, label %if.else163.i.i

if.then158.i.i.if.end179.i.i_crit_edge:           ; preds = %if.then158.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end179.i.i

if.else163.i.i:                                   ; preds = %if.then158.i.i
  %sq_rpt.i.i = getelementptr inbounds %struct.phy_sts_cck_8192d, ptr %add.ptr, i32 0, i32 1
  %172 = ptrtoint ptr %sq_rpt.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %sq_rpt.i.i, align 1
  %conv164.i.i = zext i8 %173 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %173)
  %cmp165.i.i = icmp ugt i8 %173, 64
  br i1 %cmp165.i.i, label %if.else163.i.i.if.end179.i.i_crit_edge, label %if.else168.i.i

if.else163.i.i.if.end179.i.i_crit_edge:           ; preds = %if.else163.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end179.i.i

if.else168.i.i:                                   ; preds = %if.else163.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %173)
  %cmp170.i.i = icmp ult i8 %173, 20
  br i1 %cmp170.i.i, label %if.else168.i.i.if.end179.i.i_crit_edge, label %if.else173.i.i

if.else168.i.i.if.end179.i.i_crit_edge:           ; preds = %if.else168.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end179.i.i

if.else173.i.i:                                   ; preds = %if.else168.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub175.i.i = sub nsw i16 64, %conv164.i.i
  %mul.i.i = mul nsw i16 %sub175.i.i, 100
  %div417.i.i = sdiv i16 %mul.i.i, 44
  %conv176.i.i = trunc i16 %div417.i.i to i8
  br label %if.end179.i.i

if.end179.i.i:                                    ; preds = %if.else173.i.i, %if.else168.i.i.if.end179.i.i_crit_edge, %if.else163.i.i.if.end179.i.i_crit_edge, %if.then158.i.i.if.end179.i.i_crit_edge
  %sq.0.i.i = phi i8 [ %conv176.i.i, %if.else173.i.i ], [ 100, %if.then158.i.i.if.end179.i.i_crit_edge ], [ 0, %if.else163.i.i.if.end179.i.i_crit_edge ], [ 100, %if.else168.i.i.if.end179.i.i_crit_edge ]
  %signalquality.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 15
  %174 = ptrtoint ptr %signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %sq.0.i.i, ptr %signalquality.i.i, align 8
  %175 = ptrtoint ptr %rx_mimo_sig_qual.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %sq.0.i.i, ptr %rx_mimo_sig_qual.i.i, align 4
  %176 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 -1, ptr %arrayidx30.i.i, align 1
  br label %_rtl92de_query_rxphystatus.exit.i

if.else185.i.i:                                   ; preds = %land.end41.i
  %rfpath_rxenable.i.i = getelementptr %struct.rtl_priv, ptr %101, i32 0, i32 15, i32 15
  %177 = ptrtoint ptr %rfpath_rxenable.i.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 1, ptr %rfpath_rxenable.i.i, align 2
  %arrayidx189.i.i = getelementptr %struct.rtl_priv, ptr %101, i32 0, i32 15, i32 15, i32 1
  %178 = ptrtoint ptr %arrayidx189.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 1, ptr %arrayidx189.i.i, align 1
  %179 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %add.ptr, align 1
  %181 = shl i8 %180, 1
  %182 = and i8 %181, 126
  %sub204.i.i = add nsw i8 %182, -110
  %call210.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub204.i.i) #4
  %conv211.i.i = zext i8 %call210.i.i to i32
  %arrayidx214.i.i = getelementptr %struct.rx_fwinfo_92d, ptr %add.ptr, i32 0, i32 5, i32 0
  %183 = ptrtoint ptr %arrayidx214.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx214.i.i, align 1
  %185 = sdiv i8 %184, 2
  %div216.i.i = sext i8 %185 to i32
  %arrayidx218.i.i = getelementptr %struct.rtl_priv, ptr %101, i32 0, i32 24, i32 10, i32 0
  %186 = ptrtoint ptr %arrayidx218.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %div216.i.i, ptr %arrayidx218.i.i, align 4
  br i1 %125, label %if.then220.i.i, label %if.else185.i.i.for.inc.i.i_crit_edge

if.else185.i.i.for.inc.i.i_crit_edge:             ; preds = %if.else185.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.then220.i.i:                                   ; preds = %if.else185.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx223.i.i = getelementptr %struct.rtl_stats, ptr %stats, i32 0, i32 30, i32 0
  %187 = ptrtoint ptr %arrayidx223.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %call210.i.i, ptr %arrayidx223.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then220.i.i, %if.else185.i.i.for.inc.i.i_crit_edge
  %188 = ptrtoint ptr %arrayidx189.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx189.i.i, align 1, !range !34
  %spec.select.1.i.i = add nuw nsw i8 %189, 1
  %arrayidx200.1.i.i = getelementptr [4 x i8], ptr %add.ptr, i32 0, i32 1
  %190 = ptrtoint ptr %arrayidx200.1.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx200.1.i.i, align 1
  %192 = shl i8 %191, 1
  %193 = and i8 %192, 126
  %sub204.1.i.i = add nsw i8 %193, -110
  %call210.1.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub204.1.i.i) #4
  %conv211.1.i.i = zext i8 %call210.1.i.i to i32
  %add212.1.i.i = add nuw nsw i32 %conv211.1.i.i, %conv211.i.i
  %arrayidx214.1.i.i = getelementptr %struct.rx_fwinfo_92d, ptr %add.ptr, i32 0, i32 5, i32 1
  %194 = ptrtoint ptr %arrayidx214.1.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx214.1.i.i, align 1
  %196 = sdiv i8 %195, 2
  %div216.1.i.i = sext i8 %196 to i32
  %arrayidx218.1.i.i = getelementptr %struct.rtl_priv, ptr %101, i32 0, i32 24, i32 10, i32 1
  %197 = ptrtoint ptr %arrayidx218.1.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %div216.1.i.i, ptr %arrayidx218.1.i.i, align 4
  br i1 %125, label %if.then220.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.i.i

if.then220.1.i.i:                                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx223.1.i.i = getelementptr %struct.rtl_stats, ptr %stats, i32 0, i32 30, i32 1
  %198 = ptrtoint ptr %arrayidx223.1.i.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %call210.1.i.i, ptr %arrayidx223.1.i.i, align 1
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then220.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %pwdb_all226.i.i = getelementptr inbounds %struct.rx_fwinfo_92d, ptr %add.ptr, i32 0, i32 1
  %199 = ptrtoint ptr %pwdb_all226.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %pwdb_all226.i.i, align 1
  %201 = lshr i8 %200, 1
  %sub230.i.i = add nsw i8 %201, -106
  %call232.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub230.i.i) #4
  %conv233.i.i = zext i8 %call232.i.i to i32
  %rx_pwdb_all234.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 29
  %202 = ptrtoint ptr %rx_pwdb_all234.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %conv233.i.i, ptr %rx_pwdb_all234.i.i, align 4
  %rxpower.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 17
  %203 = ptrtoint ptr %rxpower.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %sub230.i.i, ptr %rxpower.i.i, align 8
  %conv235.i.i = sext i8 %sub230.i.i to i32
  %recvsignalpower236.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 16
  %204 = ptrtoint ptr %recvsignalpower236.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %conv235.i.i, ptr %recvsignalpower236.i.i, align 4
  %205 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_loadN_noabort(i32 %205, i32 16)
  %bf.load237.i.i = load i128, ptr %pdesc8, align 1
  %206 = and i128 %bf.load237.i.i, 33554432
  %tobool241.not.i.i = icmp ne i128 %206, 0
  %207 = trunc i128 %bf.load237.i.i to i32
  %208 = add i32 %207, -1342177280
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %208)
  %209 = icmp ult i32 %208, 536870912
  %or.cond420.i.i = select i1 %tobool241.not.i.i, i1 %209, i1 false
  %max_spatial_stream.0.i.i = select i1 %or.cond420.i.i, i32 2, i32 1
  %arrayidx266.peel.i.i = getelementptr %struct.rx_fwinfo_92d, ptr %add.ptr, i32 0, i32 4, i32 0
  %210 = ptrtoint ptr %arrayidx266.peel.i.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx266.peel.i.i, align 1
  %call267.peel.i.i = tail call zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext %211) #4
  br i1 %125, label %if.end278.peel.i.i, label %for.inc.1.i.i.for.inc286.peel.i.i_crit_edge

for.inc.1.i.i.for.inc286.peel.i.i_crit_edge:      ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc286.peel.i.i

if.end278.peel.i.i:                               ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %signalquality277.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 15
  %212 = ptrtoint ptr %signalquality277.i.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %call267.peel.i.i, ptr %signalquality277.i.i, align 8
  %213 = ptrtoint ptr %rx_mimo_sig_qual.i.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %call267.peel.i.i, ptr %rx_mimo_sig_qual.i.i, align 1
  br label %for.inc286.peel.i.i

for.inc286.peel.i.i:                              ; preds = %if.end278.peel.i.i, %for.inc.1.i.i.for.inc286.peel.i.i_crit_edge
  br i1 %or.cond420.i.i, label %for.inc286.peel.i.i.for.body264.i.i_crit_edge, label %for.inc286.peel.i.i.if.then299.i.i_crit_edge

for.inc286.peel.i.i.if.then299.i.i_crit_edge:     ; preds = %for.inc286.peel.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then299.i.i

for.inc286.peel.i.i.for.body264.i.i_crit_edge:    ; preds = %for.inc286.peel.i.i
  br label %for.body264.i.i

for.body264.i.i:                                  ; preds = %for.inc286.i.i.for.body264.i.i_crit_edge, %for.inc286.peel.i.i.for.body264.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.inc286.i.i.for.body264.i.i_crit_edge ], [ 1, %for.inc286.peel.i.i.for.body264.i.i_crit_edge ]
  %arrayidx266.i.i = getelementptr %struct.rx_fwinfo_92d, ptr %add.ptr, i32 0, i32 4, i32 %indvars.iv.i.i
  %214 = ptrtoint ptr %arrayidx266.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx266.i.i, align 1
  %call267.i.i = tail call zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext %215) #4
  br i1 %125, label %if.end278.i.i, label %for.body264.i.i.for.inc286.i.i_crit_edge

for.body264.i.i.for.inc286.i.i_crit_edge:         ; preds = %for.body264.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc286.i.i

if.end278.i.i:                                    ; preds = %for.body264.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx284.i.i = getelementptr %struct.rtl_stats, ptr %stats, i32 0, i32 35, i32 %indvars.iv.i.i
  %216 = ptrtoint ptr %arrayidx284.i.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %call267.i.i, ptr %arrayidx284.i.i, align 1
  br label %for.inc286.i.i

for.inc286.i.i:                                   ; preds = %if.end278.i.i, %for.body264.i.i.for.inc286.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %max_spatial_stream.0.i.i
  br i1 %exitcond.not.i.i, label %for.inc286.i.i.if.then299.i.i_crit_edge, label %for.inc286.i.i.for.body264.i.i_crit_edge, !llvm.loop !35

for.inc286.i.i.for.body264.i.i_crit_edge:         ; preds = %for.inc286.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body264.i.i

for.inc286.i.i.if.then299.i.i_crit_edge:          ; preds = %for.inc286.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then299.i.i

if.then299.i.i:                                   ; preds = %for.inc286.i.i.if.then299.i.i_crit_edge, %for.inc286.peel.i.i.if.then299.i.i_crit_edge
  %conv296.i.i = zext i8 %spec.select.1.i.i to i32
  %div301.i.i = udiv i32 %add212.1.i.i, %conv296.i.i
  br label %_rtl92de_query_rxphystatus.exit.i

_rtl92de_query_rxphystatus.exit.i:                ; preds = %if.then299.i.i, %if.end179.i.i, %if.end154.i.i._rtl92de_query_rxphystatus.exit.i_crit_edge
  %div301.sink.i.i = phi i32 [ %div301.i.i, %if.then299.i.i ], [ %conv155.i.i, %if.end179.i.i ], [ %conv155.i.i, %if.end154.i.i._rtl92de_query_rxphystatus.exit.i_crit_edge ]
  %call302.i.i = tail call i32 @rtl_signal_scale_mapping(ptr noundef %hw, i32 noundef %div301.sink.i.i) #4
  %conv303.i.i = trunc i32 %call302.i.i to i8
  %signalstrength304.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 18
  %217 = ptrtoint ptr %signalstrength304.i.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %conv303.i.i, ptr %signalstrength304.i.i, align 1
  %218 = ptrtoint ptr %packet_matchbssid.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %packet_matchbssid.i.i, align 2, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool.not.i.i = icmp eq i8 %219, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %_rtl92de_query_rxphystatus.exit.i.if.end.i75.i_crit_edge

_rtl92de_query_rxphystatus.exit.i.if.end.i75.i_crit_edge: ; preds = %_rtl92de_query_rxphystatus.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i75.i

land.lhs.true.i.i:                                ; preds = %_rtl92de_query_rxphystatus.exit.i
  %220 = ptrtoint ptr %packet_beacon25.i.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %packet_beacon25.i.i, align 2, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool1.not.i.i = icmp eq i8 %221, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end126_crit_edge, label %land.lhs.true.i.i.if.end.i75.i_crit_edge

land.lhs.true.i.i.if.end.i75.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i75.i

land.lhs.true.i.i.if.end126_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end126

if.end.i75.i:                                     ; preds = %land.lhs.true.i.i.if.end.i75.i_crit_edge, %_rtl92de_query_rxphystatus.exit.i.if.end.i75.i_crit_edge
  %222 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %priv.i, align 8
  %224 = ptrtoint ptr %packet_toself22.i.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %packet_toself22.i.i, align 1, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool.not.i.i.i = icmp eq i8 %225, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end.i75.i.if.then.i.i.i_crit_edge

if.end.i75.i.if.then.i.i.i_crit_edge:             ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i75.i
  %226 = ptrtoint ptr %packet_beacon25.i.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %packet_beacon25.i.i, align 2, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool1.not.i.i.i = icmp eq i8 %227, 0
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.if.end48.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

lor.lhs.false.i.i.i.if.end48.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %if.end.i75.i.if.then.i.i.i_crit_edge
  %rssi_calculate_cnt.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %223, i32 0, i32 24, i32 14
  %228 = ptrtoint ptr %rssi_calculate_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %rssi_calculate_cnt.i.i.i, align 4
  %inc.i.i.i = add i32 %229, 1
  store i32 %inc.i.i.i, ptr %rssi_calculate_cnt.i.i.i, align 4
  %ui_rssi.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %223, i32 0, i32 24, i32 22
  %total_num.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %223, i32 0, i32 24, i32 22, i32 2
  %230 = ptrtoint ptr %total_num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %total_num.i.i.i, align 4
  %inc3.i.i.i = add i32 %231, 1
  store i32 %inc3.i.i.i, ptr %total_num.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %231)
  %cmp.i.i.i = icmp ugt i32 %231, 99
  br i1 %cmp.i.i.i, label %if.then4.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i.i

if.then4.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %232 = ptrtoint ptr %total_num.i.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 100, ptr %total_num.i.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %223, i32 0, i32 24, i32 22, i32 1
  %233 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %index.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [100 x i32], ptr %ui_rssi.i.i.i, i32 0, i32 %234
  %235 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx.i.i.i, align 4
  %total_val.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %223, i32 0, i32 24, i32 22, i32 3
  %237 = ptrtoint ptr %total_val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %total_val.i.i.i, align 4
  %sub.i.i.i = sub i32 %238, %236
  store i32 %sub.i.i.i, ptr %total_val.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then4.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %239 = ptrtoint ptr %signalstrength304.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %signalstrength304.i.i, align 1
  %conv.i.i.i = zext i8 %240 to i32
  %total_val16.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %223, i32 0, i32 24, i32 22, i32 3
  %241 = ptrtoint ptr %total_val16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %total_val16.i.i.i, align 4
  %add.i.i.i = add i32 %242, %conv.i.i.i
  store i32 %add.i.i.i, ptr %total_val16.i.i.i, align 4
  %243 = load i8, ptr %signalstrength304.i.i, align 1
  %conv18.i.i.i = zext i8 %243 to i32
  %index24.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %223, i32 0, i32 24, i32 22, i32 1
  %244 = ptrtoint ptr %index24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %index24.i.i.i, align 4
  %inc25.i.i.i = add i32 %245, 1
  store i32 %inc25.i.i.i, ptr %index24.i.i.i, align 4
  %arrayidx26.i.i.i = getelementptr [100 x i32], ptr %ui_rssi.i.i.i, i32 0, i32 %245
  %246 = ptrtoint ptr %arrayidx26.i.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %conv18.i.i.i, ptr %arrayidx26.i.i.i, align 4
  %247 = load i32, ptr %index24.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %247)
  %cmp30.i.i.i = icmp ugt i32 %247, 99
  br i1 %cmp30.i.i.i, label %if.then32.i.i.i, label %if.end.i.i.i.if.end36.i.i.i_crit_edge

if.end.i.i.i.if.end36.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36.i.i.i

if.then32.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %248 = ptrtoint ptr %index24.i.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 0, ptr %index24.i.i.i, align 4
  br label %if.end36.i.i.i

if.end36.i.i.i:                                   ; preds = %if.then32.i.i.i, %if.end.i.i.i.if.end36.i.i.i_crit_edge
  %249 = ptrtoint ptr %total_val16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %total_val16.i.i.i, align 4
  %251 = ptrtoint ptr %total_num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %total_num.i.i.i, align 4
  %div.i.i.i = udiv i32 %250, %252
  %conv.i.i.i.i = and i32 %div.i.i.i, 255
  %add.i.i.i.i = add nuw nsw i32 %conv.i.i.i.i, 1
  %253 = lshr i32 %add.i.i.i.i, 1
  %sub.i.i.i.i = add nsw i32 %253, -95
  %signal_strength.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %223, i32 0, i32 24, i32 16
  %254 = ptrtoint ptr %signal_strength.i.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %sub.i.i.i.i, ptr %signal_strength.i.i.i, align 4
  %conv47.i.i.i = trunc i32 %sub.i.i.i.i to i8
  %rssi.i.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 2
  %255 = ptrtoint ptr %rssi.i.i.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %conv47.i.i.i, ptr %rssi.i.i.i, align 8
  br label %if.end48.i.i.i

if.end48.i.i.i:                                   ; preds = %if.end36.i.i.i, %lor.lhs.false.i.i.i.if.end48.i.i.i_crit_edge
  %256 = ptrtoint ptr %is_cck.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %is_cck.i.i, align 1, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool49.not.i.i.i = icmp eq i8 %257, 0
  br i1 %tobool49.not.i.i.i, label %land.lhs.true.i.i.i, label %if.end48.i.i.i._rtl92de_process_ui_rssi.exit.i.i_crit_edge

if.end48.i.i.i._rtl92de_process_ui_rssi.exit.i.i_crit_edge: ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl92de_process_ui_rssi.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end48.i.i.i
  %258 = ptrtoint ptr %packet_toself22.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %packet_toself22.i.i, align 1, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %tobool51.not.i.i.i = icmp eq i8 %259, 0
  br i1 %tobool51.not.i.i.i, label %land.lhs.true.i.i.i._rtl92de_process_ui_rssi.exit.i.i_crit_edge, label %if.then53.i.i.i

land.lhs.true.i.i.i._rtl92de_process_ui_rssi.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl92de_process_ui_rssi.exit.i.i

if.then53.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %260 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %priv.i, align 8
  %num_total_rfpath.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %261, i32 0, i32 14, i32 58
  %262 = ptrtoint ptr %num_total_rfpath.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %num_total_rfpath.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %263)
  %cmp95.not.i.i.i.i = icmp eq i8 %263, 0
  br i1 %cmp95.not.i.i.i.i, label %if.then53.i.i.i._rtl92de_process_ui_rssi.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i

if.then53.i.i.i._rtl92de_process_ui_rssi.exit.i.i_crit_edge: ; preds = %if.then53.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl92de_process_ui_rssi.exit.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %if.then53.i.i.i
  %wide.trip.count.i.i.i.i = zext i8 %263 to i32
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.rtl_priv, ptr %261, i32 0, i32 24, i32 17, i32 %indvars.iv.i.i.i.i
  %264 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %cmp4.i.i.i.i = icmp eq i8 %265, 0
  br i1 %cmp4.i.i.i.i, label %if.then.i.i.i.i, label %for.body.i.i.i.i.if.end.i.i.i.i_crit_edge

for.body.i.i.i.i.if.end.i.i.i.i_crit_edge:        ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx7.i.i.i.i = getelementptr %struct.rtl_stats, ptr %stats, i32 0, i32 30, i32 %indvars.iv.i.i.i.i
  %266 = ptrtoint ptr %arrayidx7.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx7.i.i.i.i, align 1
  %268 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %267, ptr %arrayidx.i.i.i.i, align 1
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %for.body.i.i.i.i.if.end.i.i.i.i_crit_edge
  %arrayidx14.i.i.i.i = getelementptr %struct.rtl_stats, ptr %stats, i32 0, i32 30, i32 %indvars.iv.i.i.i.i
  %269 = ptrtoint ptr %arrayidx14.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %arrayidx14.i.i.i.i, align 1
  %conv15.i.i.i.i = zext i8 %270 to i16
  %271 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv20.i.i.i.i = zext i8 %272 to i16
  call void @__sanitizer_cov_trace_cmp1(i8 %270, i8 %272)
  %cmp21.i.i.i.i = icmp ugt i8 %270, %272
  %mul.i.i.i.i = mul nuw nsw i16 %conv20.i.i.i.i, 19
  %add.i78.i.i.i = add nuw nsw i16 %mul.i.i.i.i, %conv15.i.i.i.i
  %div93.i.i.i.i = udiv i16 %add.i78.i.i.i, 20
  %div.zext.i.i.i.i = trunc i16 %div93.i.i.i.i to i8
  %add43.i.i.i.i = zext i1 %cmp21.i.i.i.i to i8
  %storemerge.in.i.i.i.i = add i8 %div.zext.i.i.i.i, %add43.i.i.i.i
  %273 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %storemerge.in.i.i.i.i, ptr %arrayidx.i.i.i.i, align 1
  %indvars.iv.next.i.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %if.end.i.i.i.i._rtl92de_process_ui_rssi.exit.i.i_crit_edge, label %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge

if.end.i.i.i.i.for.body.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i.i

if.end.i.i.i.i._rtl92de_process_ui_rssi.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl92de_process_ui_rssi.exit.i.i

_rtl92de_process_ui_rssi.exit.i.i:                ; preds = %if.end.i.i.i.i._rtl92de_process_ui_rssi.exit.i.i_crit_edge, %if.then53.i.i.i._rtl92de_process_ui_rssi.exit.i.i_crit_edge, %land.lhs.true.i.i.i._rtl92de_process_ui_rssi.exit.i.i_crit_edge, %if.end48.i.i.i._rtl92de_process_ui_rssi.exit.i.i_crit_edge
  %274 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %priv.i, align 8
  %opmode.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %275, i32 0, i32 9, i32 8
  %276 = ptrtoint ptr %opmode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %opmode.i.i.i, align 8
  %278 = zext i32 %277 to i64
  call void @__sanitizer_cov_trace_switch(i64 %278, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %277, label %if.else.i.i.i [
    i32 1, label %_rtl92de_process_ui_rssi.exit.i.i._rtl92de_process_pwdb.exit.i.i_crit_edge
    i32 3, label %_rtl92de_process_ui_rssi.exit.i.i._rtl92de_process_pwdb.exit.i.i_crit_edge218
  ]

_rtl92de_process_ui_rssi.exit.i.i._rtl92de_process_pwdb.exit.i.i_crit_edge218: ; preds = %_rtl92de_process_ui_rssi.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl92de_process_pwdb.exit.i.i

_rtl92de_process_ui_rssi.exit.i.i._rtl92de_process_pwdb.exit.i.i_crit_edge: ; preds = %_rtl92de_process_ui_rssi.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl92de_process_pwdb.exit.i.i

if.else.i.i.i:                                    ; preds = %_rtl92de_process_ui_rssi.exit.i.i
  %undec_sm_pwdb4.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %275, i32 0, i32 15, i32 2
  %279 = ptrtoint ptr %undec_sm_pwdb4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %undec_sm_pwdb4.i.i.i, align 8
  %281 = ptrtoint ptr %packet_toself22.i.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %packet_toself22.i.i, align 1, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %282)
  %tobool.not.i3.i.i = icmp eq i8 %282, 0
  br i1 %tobool.not.i3.i.i, label %lor.lhs.false5.i.i.i, label %if.else.i.i.i.if.then7.i.i.i_crit_edge

if.else.i.i.i.if.then7.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7.i.i.i

lor.lhs.false5.i.i.i:                             ; preds = %if.else.i.i.i
  %283 = ptrtoint ptr %packet_beacon25.i.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %packet_beacon25.i.i, align 2, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %284)
  %tobool6.not.i.i.i = icmp eq i8 %284, 0
  br i1 %tobool6.not.i.i.i, label %lor.lhs.false5.i.i.i._rtl92de_process_pwdb.exit.i.i_crit_edge, label %lor.lhs.false5.i.i.i.if.then7.i.i.i_crit_edge

lor.lhs.false5.i.i.i.if.then7.i.i.i_crit_edge:    ; preds = %lor.lhs.false5.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7.i.i.i

lor.lhs.false5.i.i.i._rtl92de_process_pwdb.exit.i.i_crit_edge: ; preds = %lor.lhs.false5.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl92de_process_pwdb.exit.i.i

if.then7.i.i.i:                                   ; preds = %lor.lhs.false5.i.i.i.if.then7.i.i.i_crit_edge, %if.else.i.i.i.if.then7.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %cmp8.i.i.i = icmp slt i32 %280, 0
  br i1 %cmp8.i.i.i, label %if.then9.i.i.i, label %if.then7.i.i.i.if.end10.i.i.i_crit_edge

if.then7.i.i.i.if.end10.i.i.i_crit_edge:          ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i.i.i

if.then9.i.i.i:                                   ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %rx_pwdb_all.i.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 29
  %285 = ptrtoint ptr %rx_pwdb_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %rx_pwdb_all.i.i.i, align 4
  br label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %if.then9.i.i.i, %if.then7.i.i.i.if.end10.i.i.i_crit_edge
  %undec_sm_pwdb.0.i.i.i = phi i32 [ %286, %if.then9.i.i.i ], [ %280, %if.then7.i.i.i.if.end10.i.i.i_crit_edge ]
  %rx_pwdb_all11.i.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 29
  %287 = ptrtoint ptr %rx_pwdb_all11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %rx_pwdb_all11.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %288, i32 %undec_sm_pwdb.0.i.i.i)
  %cmp12.i.i.i = icmp ugt i32 %288, %undec_sm_pwdb.0.i.i.i
  %mul.i.i.i = mul i32 %undec_sm_pwdb.0.i.i.i, 19
  %add.i5.i.i = add i32 %mul.i.i.i, %288
  %div.i6.i.i = udiv i32 %add.i5.i.i, 20
  %add15.i.i.i = zext i1 %cmp12.i.i.i to i32
  %undec_sm_pwdb.1.i.i.i = add nuw nsw i32 %div.i6.i.i, %add15.i.i.i
  %289 = ptrtoint ptr %undec_sm_pwdb4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %undec_sm_pwdb.1.i.i.i, ptr %undec_sm_pwdb4.i.i.i, align 8
  %290 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %priv.i, align 8
  %recv_signal_power.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %291, i32 0, i32 24, i32 11
  %292 = ptrtoint ptr %recv_signal_power.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %recv_signal_power.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %293)
  %cmp.i.i.i.i = icmp eq i32 %293, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i7.i.i, label %if.end10.i.i.i._rtl92de_update_rxsignalstatistics.exit.i.i.i_crit_edge

if.end10.i.i.i._rtl92de_update_rxsignalstatistics.exit.i.i.i_crit_edge: ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl92de_update_rxsignalstatistics.exit.i.i.i

if.then.i.i7.i.i:                                 ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %recvsignalpower.i.i.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 16
  %294 = ptrtoint ptr %recvsignalpower.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %recvsignalpower.i.i.i.i, align 4
  %296 = ptrtoint ptr %recv_signal_power.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %295, ptr %recv_signal_power.i.i.i.i, align 8
  br label %_rtl92de_update_rxsignalstatistics.exit.i.i.i

_rtl92de_update_rxsignalstatistics.exit.i.i.i:    ; preds = %if.then.i.i7.i.i, %if.end10.i.i.i._rtl92de_update_rxsignalstatistics.exit.i.i.i_crit_edge
  %recvsignalpower3.i.i.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 16
  %297 = ptrtoint ptr %recvsignalpower3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %recvsignalpower3.i.i.i.i, align 4
  %299 = ptrtoint ptr %recv_signal_power.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %recv_signal_power.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %298, i32 %300)
  %cmp6.i.i.i.i = icmp sgt i32 %298, %300
  call void @__sanitizer_cov_trace_cmp4(i32 %298, i32 %300)
  %cmp11.i.i.i.i = icmp slt i32 %298, %300
  %spec.select.i.i.i.i = select i1 %cmp11.i.i.i.i, i32 -5, i32 0
  %weighting.0.i.i.i.i = select i1 %cmp6.i.i.i.i, i32 5, i32 %spec.select.i.i.i.i
  %mul.i.i8.i.i = mul i32 %300, 5
  %add.i.i9.i.i = add i32 %mul.i.i8.i.i, %298
  %add18.i.i.i.i = add i32 %add.i.i9.i.i, %weighting.0.i.i.i.i
  %div.i.i.i.i = sdiv i32 %add18.i.i.i.i, 6
  %301 = ptrtoint ptr %recv_signal_power.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %div.i.i.i.i, ptr %recv_signal_power.i.i.i.i, align 8
  br label %_rtl92de_process_pwdb.exit.i.i

_rtl92de_process_pwdb.exit.i.i:                   ; preds = %_rtl92de_update_rxsignalstatistics.exit.i.i.i, %lor.lhs.false5.i.i.i._rtl92de_process_pwdb.exit.i.i_crit_edge, %_rtl92de_process_ui_rssi.exit.i.i._rtl92de_process_pwdb.exit.i.i_crit_edge, %_rtl92de_process_ui_rssi.exit.i.i._rtl92de_process_pwdb.exit.i.i_crit_edge218
  %302 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %priv.i, align 8
  %signalquality.i.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 15
  %304 = ptrtoint ptr %signalquality.i.i.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %signalquality.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %305)
  %cmp.i11.i.i = icmp eq i8 %305, 0
  br i1 %cmp.i11.i.i, label %_rtl92de_process_pwdb.exit.i.i.if.end126_crit_edge, label %if.end.i14.i.i

_rtl92de_process_pwdb.exit.i.i.if.end126_crit_edge: ; preds = %_rtl92de_process_pwdb.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end126

if.end.i14.i.i:                                   ; preds = %_rtl92de_process_pwdb.exit.i.i
  %306 = ptrtoint ptr %packet_toself22.i.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %packet_toself22.i.i, align 1, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %307)
  %tobool.not.i13.i.i = icmp eq i8 %307, 0
  br i1 %tobool.not.i13.i.i, label %lor.lhs.false.i16.i.i, label %if.end.i14.i.i.if.then5.i.i.i_crit_edge

if.end.i14.i.i.if.then5.i.i.i_crit_edge:          ; preds = %if.end.i14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then5.i.i.i

lor.lhs.false.i16.i.i:                            ; preds = %if.end.i14.i.i
  %308 = ptrtoint ptr %packet_beacon25.i.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %packet_beacon25.i.i, align 2, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %309)
  %tobool3.not.i.i.i = icmp eq i8 %309, 0
  br i1 %tobool3.not.i.i.i, label %lor.lhs.false.i16.i.i.if.end126_crit_edge, label %lor.lhs.false.i16.i.i.if.then5.i.i.i_crit_edge

lor.lhs.false.i16.i.i.if.then5.i.i.i_crit_edge:   ; preds = %lor.lhs.false.i16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then5.i.i.i

lor.lhs.false.i16.i.i.if.end126_crit_edge:        ; preds = %lor.lhs.false.i16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end126

if.then5.i.i.i:                                   ; preds = %lor.lhs.false.i16.i.i.if.then5.i.i.i_crit_edge, %if.end.i14.i.i.if.then5.i.i.i_crit_edge
  %ui_link_quality.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %303, i32 0, i32 24, i32 23
  %total_num.i17.i.i = getelementptr inbounds %struct.rtl_priv, ptr %303, i32 0, i32 24, i32 23, i32 2
  %310 = ptrtoint ptr %total_num.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %total_num.i17.i.i, align 4
  %inc.i18.i.i = add i32 %311, 1
  store i32 %inc.i18.i.i, ptr %total_num.i17.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %311)
  %cmp6.i.i.i = icmp ugt i32 %311, 19
  br i1 %cmp6.i.i.i, label %if.then8.i.i.i, label %if.then5.i.i.i.if.end18.i.i.i_crit_edge

if.then5.i.i.i.if.end18.i.i.i_crit_edge:          ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i.i.i

if.then8.i.i.i:                                   ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %312 = ptrtoint ptr %total_num.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 20, ptr %total_num.i17.i.i, align 4
  %index.i19.i.i = getelementptr inbounds %struct.rtl_priv, ptr %303, i32 0, i32 24, i32 23, i32 1
  %313 = ptrtoint ptr %index.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %index.i19.i.i, align 8
  %arrayidx.i20.i.i = getelementptr [100 x i32], ptr %ui_link_quality.i.i.i, i32 0, i32 %314
  %315 = ptrtoint ptr %arrayidx.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %arrayidx.i20.i.i, align 4
  %total_val.i21.i.i = getelementptr inbounds %struct.rtl_priv, ptr %303, i32 0, i32 24, i32 23, i32 3
  %317 = ptrtoint ptr %total_val.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %total_val.i21.i.i, align 8
  %sub.i22.i.i = sub i32 %318, %316
  store i32 %sub.i22.i.i, ptr %total_val.i21.i.i, align 8
  br label %if.end18.i.i.i

if.end18.i.i.i:                                   ; preds = %if.then8.i.i.i, %if.then5.i.i.i.if.end18.i.i.i_crit_edge
  %319 = ptrtoint ptr %signalquality.i.i.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %signalquality.i.i.i, align 8
  %conv20.i.i.i = zext i8 %320 to i32
  %total_val23.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %303, i32 0, i32 24, i32 23, i32 3
  %321 = ptrtoint ptr %total_val23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %total_val23.i.i.i, align 8
  %add.i23.i.i = add i32 %322, %conv20.i.i.i
  store i32 %add.i23.i.i, ptr %total_val23.i.i.i, align 8
  %323 = load i8, ptr %signalquality.i.i.i, align 8
  %conv25.i.i.i = zext i8 %323 to i32
  %index31.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %303, i32 0, i32 24, i32 23, i32 1
  %324 = ptrtoint ptr %index31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %index31.i.i.i, align 8
  %inc32.i.i.i = add i32 %325, 1
  store i32 %inc32.i.i.i, ptr %index31.i.i.i, align 8
  %arrayidx33.i.i.i = getelementptr [100 x i32], ptr %ui_link_quality.i.i.i, i32 0, i32 %325
  %326 = ptrtoint ptr %arrayidx33.i.i.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %conv25.i.i.i, ptr %arrayidx33.i.i.i, align 4
  %327 = load i32, ptr %index31.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %327)
  %cmp37.i.i.i = icmp ugt i32 %327, 19
  br i1 %cmp37.i.i.i, label %if.then39.i.i.i, label %if.end18.i.i.i.if.end43.i.i.i_crit_edge

if.end18.i.i.i.if.end43.i.i.i_crit_edge:          ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43.i.i.i

if.then39.i.i.i:                                  ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %328 = ptrtoint ptr %index31.i.i.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 0, ptr %index31.i.i.i, align 8
  br label %if.end43.i.i.i

if.end43.i.i.i:                                   ; preds = %if.then39.i.i.i, %if.end18.i.i.i.if.end43.i.i.i_crit_edge
  %329 = ptrtoint ptr %total_val23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %total_val23.i.i.i, align 8
  %331 = ptrtoint ptr %total_num.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %total_num.i17.i.i, align 4
  %div.i24.i.i = udiv i32 %330, %332
  %signal_quality.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %303, i32 0, i32 24, i32 12
  %333 = ptrtoint ptr %signal_quality.i.i.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %div.i24.i.i, ptr %signal_quality.i.i.i, align 4
  %last_sigstrength_inpercent.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %303, i32 0, i32 24, i32 13
  %334 = ptrtoint ptr %last_sigstrength_inpercent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %div.i24.i.i, ptr %last_sigstrength_inpercent.i.i.i, align 8
  %335 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %priv.i, align 8
  %337 = ptrtoint ptr %rx_mimo_sig_qual.i.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %rx_mimo_sig_qual.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %338)
  %cmp1.not.i.i.i.i = icmp eq i8 %338, -1
  br i1 %cmp1.not.i.i.i.i, label %if.end43.i.i.i.for.inc.i.i.i.i_crit_edge, label %if.then.i.i26.i.i

if.end43.i.i.i.for.inc.i.i.i.i_crit_edge:         ; preds = %if.end43.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i.i.i

if.then.i.i26.i.i:                                ; preds = %if.end43.i.i.i
  %arrayidx3.i.i.i.i = getelementptr %struct.rtl_priv, ptr %336, i32 0, i32 24, i32 19, i32 0
  %339 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %arrayidx3.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %340)
  %cmp5.i.i.i.i = icmp eq i8 %340, 0
  br i1 %cmp5.i.i.i.i, label %if.then7.i.i.i.i, label %if.then.i.i26.i.i.if.end.i.i29.i.i_crit_edge

if.then.i.i26.i.i.if.end.i.i29.i.i_crit_edge:     ; preds = %if.then.i.i26.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i29.i.i

if.then7.i.i.i.i:                                 ; preds = %if.then.i.i26.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %341 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 %338, ptr %arrayidx3.i.i.i.i, align 1
  br label %if.end.i.i29.i.i

if.end.i.i29.i.i:                                 ; preds = %if.then7.i.i.i.i, %if.then.i.i26.i.i.if.end.i.i29.i.i_crit_edge
  %342 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %arrayidx3.i.i.i.i, align 1
  %conv16.i.i.i.i = zext i8 %343 to i16
  %mul.i.i27.i.i = mul nuw nsw i16 %conv16.i.i.i.i, 19
  %344 = ptrtoint ptr %rx_mimo_sig_qual.i.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %rx_mimo_sig_qual.i.i, align 1
  %conv19.i.i.i.i = sext i8 %345 to i16
  %add.i.i28.i.i = add nsw i16 %mul.i.i27.i.i, %conv19.i.i.i.i
  %div39.i.i.i.i = sdiv i16 %add.i.i28.i.i, 20
  %conv21.i.i.i.i = trunc i16 %div39.i.i.i.i to i8
  store i8 %conv21.i.i.i.i, ptr %arrayidx3.i.i.i.i, align 1
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %if.end.i.i29.i.i, %if.end43.i.i.i.for.inc.i.i.i.i_crit_edge
  %346 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %arrayidx30.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %347)
  %cmp1.not.1.i.i.i.i = icmp eq i8 %347, -1
  br i1 %cmp1.not.1.i.i.i.i, label %for.inc.i.i.i.i.if.end126_crit_edge, label %if.then.1.i.i.i.i

for.inc.i.i.i.i.if.end126_crit_edge:              ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end126

if.then.1.i.i.i.i:                                ; preds = %for.inc.i.i.i.i
  %arrayidx3.1.i.i.i.i = getelementptr %struct.rtl_priv, ptr %336, i32 0, i32 24, i32 19, i32 1
  %348 = ptrtoint ptr %arrayidx3.1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %arrayidx3.1.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %349)
  %cmp5.1.i.i.i.i = icmp eq i8 %349, 0
  br i1 %cmp5.1.i.i.i.i, label %if.then7.1.i.i.i.i, label %if.then.1.i.i.i.i.if.end.1.i.i.i.i_crit_edge

if.then.1.i.i.i.i.if.end.1.i.i.i.i_crit_edge:     ; preds = %if.then.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.1.i.i.i.i

if.then7.1.i.i.i.i:                               ; preds = %if.then.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %350 = ptrtoint ptr %arrayidx3.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 %347, ptr %arrayidx3.1.i.i.i.i, align 1
  br label %if.end.1.i.i.i.i

if.end.1.i.i.i.i:                                 ; preds = %if.then7.1.i.i.i.i, %if.then.1.i.i.i.i.if.end.1.i.i.i.i_crit_edge
  %351 = ptrtoint ptr %arrayidx3.1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %arrayidx3.1.i.i.i.i, align 1
  %conv16.1.i.i.i.i = zext i8 %352 to i16
  %mul.1.i.i.i.i = mul nuw nsw i16 %conv16.1.i.i.i.i, 19
  %353 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %arrayidx30.i.i, align 1
  %conv19.1.i.i.i.i = sext i8 %354 to i16
  %add.1.i.i.i.i = add nsw i16 %mul.1.i.i.i.i, %conv19.1.i.i.i.i
  %div39.1.i.i.i.i = sdiv i16 %add.1.i.i.i.i, 20
  %conv21.1.i.i.i.i = trunc i16 %div39.1.i.i.i.i to i8
  store i8 %conv21.1.i.i.i.i, ptr %arrayidx3.1.i.i.i.i, align 1
  br label %if.end126

if.end126:                                        ; preds = %if.end.1.i.i.i.i, %for.inc.i.i.i.i.if.end126_crit_edge, %lor.lhs.false.i16.i.i.if.end126_crit_edge, %_rtl92de_process_pwdb.exit.i.i.if.end126_crit_edge, %land.lhs.true.i.i.if.end126_crit_edge, %if.end114.if.end126_crit_edge
  %recvsignalpower = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 16
  %355 = ptrtoint ptr %recvsignalpower to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %recvsignalpower, align 4
  %357 = trunc i32 %356 to i8
  %conv127 = add i8 %357, 10
  %signal = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 13
  %358 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 %conv127, ptr %signal, align 2
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtlwifi_rate_mapping(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_tx_fill_desc(ptr noundef %hw, ptr nocapture noundef readonly %hdr, ptr noundef %pdesc8, ptr nocapture noundef readnone %pbd_desc_tx, ptr noundef %info, ptr noundef %sta, ptr noundef %skb, i8 noundef zeroext %hw_queue, ptr noundef %ptcb_desc) local_unnamed_addr #0 align 64 {
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
  br i1 %cmp.i.i, label %entry._rtl92de_map_hwqueue_to_fwqueue.exit_crit_edge, label %if.end.i, !prof !37

entry._rtl92de_map_hwqueue_to_fwqueue.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl92de_map_hwqueue_to_fwqueue.exit

if.end.i:                                         ; preds = %entry
  %11 = and i16 %9, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.i1.i = icmp eq i16 %11, 0
  br i1 %cmp.i1.i, label %if.end.i._rtl92de_map_hwqueue_to_fwqueue.exit_crit_edge, label %if.end5.i

if.end.i._rtl92de_map_hwqueue_to_fwqueue.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl92de_map_hwqueue_to_fwqueue.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %12 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %priority.i, align 4
  %phi.cast = shl i32 %13, 16
  %phi.bo562 = and i32 %phi.cast, 2031616
  br label %_rtl92de_map_hwqueue_to_fwqueue.exit

_rtl92de_map_hwqueue_to_fwqueue.exit:             ; preds = %if.end5.i, %if.end.i._rtl92de_map_hwqueue_to_fwqueue.exit_crit_edge, %entry._rtl92de_map_hwqueue_to_fwqueue.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo562, %if.end5.i ], [ 1048576, %entry._rtl92de_map_hwqueue_to_fwqueue.exit_crit_edge ], [ 1179648, %if.end.i._rtl92de_map_hwqueue_to_fwqueue.exit_crit_edge ]
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 5
  %14 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %seq_ctrl, align 2
  %16 = and i16 %15, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp = icmp eq i16 %16, 0
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %17 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %opmode, align 8
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %18, label %_rtl92de_map_hwqueue_to_fwqueue.exit.if.end28_crit_edge [
    i32 2, label %if.then
    i32 3, label %_rtl92de_map_hwqueue_to_fwqueue.exit.if.then22_crit_edge
    i32 1, label %_rtl92de_map_hwqueue_to_fwqueue.exit.if.then22_crit_edge563
  ]

_rtl92de_map_hwqueue_to_fwqueue.exit.if.then22_crit_edge563: ; preds = %_rtl92de_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

_rtl92de_map_hwqueue_to_fwqueue.exit.if.then22_crit_edge: ; preds = %_rtl92de_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

_rtl92de_map_hwqueue_to_fwqueue.exit.if.end28_crit_edge: ; preds = %_rtl92de_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then:                                          ; preds = %_rtl92de_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #6
  %bw_4015 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %20 = ptrtoint ptr %bw_4015 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bw_4015, align 1
  br label %if.end28

if.then22:                                        ; preds = %_rtl92de_map_hwqueue_to_fwqueue.exit.if.then22_crit_edge, %_rtl92de_map_hwqueue_to_fwqueue.exit.if.then22_crit_edge563
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %if.then22.if.end28_crit_edge, label %if.then23

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then23:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  %bandwidth = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %22 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bandwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp24 = icmp ne i32 %23, 0
  %conv26 = zext i1 %cmp24 to i8
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.then22.if.end28_crit_edge, %if.then, %_rtl92de_map_hwqueue_to_fwqueue.exit.if.end28_crit_edge
  %bw_40.0 = phi i8 [ %21, %if.then ], [ %conv26, %if.then23 ], [ 0, %if.then22.if.end28_crit_edge ], [ 0, %_rtl92de_map_hwqueue_to_fwqueue.exit.if.end28_crit_edge ]
  %24 = and i16 %15, -3841
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %26 = lshr exact i16 %25, 4
  tail call void @rtl_get_tcb_desc(ptr noundef %hw, ptr noundef %info, ptr noundef %sta, ptr noundef %skb, ptr noundef %ptcb_desc) #4
  %earlymode_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 58
  %27 = ptrtoint ptr %earlymode_enable to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %earlymode_enable, align 1, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool33.not = icmp eq i8 %28, 0
  br i1 %tobool33.not, label %if.end28.if.end36_crit_edge, label %if.then34

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %call35 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #4
  %29 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 0, ptr %30, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end28.if.end36_crit_edge
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %36 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i.i, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %37) #4
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end36
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !38

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev38) #4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44, i32 3
  %38 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev38, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %41, %if.end.i.i ], [ %39, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #4
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @debug_dma_map_single(ptr noundef %dev38, ptr noundef %37, i32 noundef %33) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %42 = load ptr, ptr @mem_map, align 4
  %43 = ptrtoint ptr %37 to i32
  %sub.i = add i32 %43, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %42, i32 %shr.i
  %and.i = and i32 %43, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev38, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %33, i32 noundef 1, i32 noundef 0) #4
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i403 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev43, i32 noundef %retval.0.i403) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i403)
  %cmp.i = icmp eq i32 %retval.0.i403, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end47

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end47:                                         ; preds = %dma_map_single_attrs.exit
  %46 = call ptr @memset(ptr %pdesc8, i32 0, i32 40)
  %47 = and i16 %3, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 18432, i16 %47)
  %cmp.i404 = icmp eq i16 %47, 18432
  br i1 %cmp.i404, label %if.end47.if.then56_crit_edge, label %lor.lhs.false50

if.end47.if.then56_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then56

lor.lhs.false50:                                  ; preds = %if.end47
  %48 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %48)
  %cmp.i405 = icmp eq i16 %48, 1024
  %49 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %extract.t = icmp eq i16 %49, 0
  %brmerge = select i1 %cmp.i405, i1 true, i1 %cmp
  %.mux = or i1 %cmp.i405, %extract.t
  br i1 %brmerge, label %lor.lhs.false50.if.then56_crit_edge, label %lor.lhs.false50.if.end226_crit_edge

lor.lhs.false50.if.end226_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end226

lor.lhs.false50.if.then56_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then56

if.then56:                                        ; preds = %lor.lhs.false50.if.then56_crit_edge, %if.end47.if.then56_crit_edge
  %lastseg.0.off0559 = phi i1 [ true, %if.end47.if.then56_crit_edge ], [ %.mux, %lor.lhs.false50.if.then56_crit_edge ]
  %50 = ptrtoint ptr %earlymode_enable to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %earlymode_enable, align 1, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool58.not = icmp eq i8 %51, 0
  br i1 %tobool58.not, label %if.else66, label %if.then59

if.then59:                                        ; preds = %if.then56
  %add.ptr.i406 = getelementptr i32, ptr %pdesc8, i32 1
  %52 = ptrtoint ptr %add.ptr.i406 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i406, align 4
  %and.i.i = and i32 %53, -125
  %or.i.i = or i32 %and.i.i, 4
  store i32 %or.i.i, ptr %add.ptr.i406, align 4
  %54 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pdesc8, align 4
  %and.i.i407 = and i32 %55, -65281
  %or.i.i408 = or i32 %and.i.i407, 10240
  store i32 %or.i.i408, ptr %pdesc8, align 4
  %empkt_num = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 8
  %56 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %empkt_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool60.not = icmp eq i8 %57, 0
  br i1 %tobool60.not, label %if.then59.if.end67_crit_edge, label %if.then61

if.then59.if.end67_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67

if.then61:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  %conv63 = zext i8 %57 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv63) #4
  %58 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 0, ptr %59, align 4
  %61 = ptrtoint ptr %empkt_num to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %empkt_num, align 1
  %conv.i409 = zext i8 %62 to i32
  %63 = shl nuw i32 %conv.i409, 24
  %64 = and i32 %63, 117440512
  store i32 %64, ptr %59, align 4
  %empkt_len.i = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9
  %65 = ptrtoint ptr %empkt_len.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %empkt_len.i, align 4
  %67 = shl i32 %66, 4
  %68 = and i32 %67, 65520
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #4
  %or.i.i27.i = or i32 %69, %64
  %70 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or.i.i27.i, ptr %59, align 4
  %arrayidx2.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 1
  %71 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx2.i, align 4
  %73 = shl i32 %72, 16
  %74 = and i32 %73, 268369920
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #4
  %or.i.i31.i = or i32 %75, %or.i.i27.i
  %76 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or.i.i31.i, ptr %59, align 4
  %arrayidx4.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 2
  %77 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx4.i, align 4
  %and.i410 = shl i32 %78, 4
  %79 = and i32 %and.i410, 240
  %or.i.i33.i = or i32 %79, %or.i.i31.i
  store i32 %or.i.i33.i, ptr %59, align 4
  %add.ptr.i.i = getelementptr i32, ptr %59, i32 1
  %80 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i.i, align 4
  %82 = load i32, ptr %arrayidx4.i, align 4
  %and.i.i36.i = and i32 %81, 16777215
  %83 = shl i32 %82, 20
  %84 = and i32 %83, -16777216
  %or.i.i37.i = or i32 %and.i.i36.i, %84
  store i32 %or.i.i37.i, ptr %add.ptr.i.i, align 4
  %arrayidx8.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 3
  %85 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx8.i, align 4
  %and.i.i41.i = and i32 %or.i.i37.i, -16715521
  %87 = shl i32 %86, 8
  %88 = and i32 %87, 1048320
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #4
  %or.i.i42.i = or i32 %89, %and.i.i41.i
  %90 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %or.i.i42.i, ptr %add.ptr.i.i, align 4
  %arrayidx10.i = getelementptr %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 9, i32 4
  %91 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx10.i, align 4
  %and.i.i46.i = and i32 %or.i.i42.i, -61696
  %93 = shl i32 %92, 20
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #4
  %or.i.i47.i = or i32 %94, %and.i.i46.i
  %95 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or.i.i47.i, ptr %add.ptr.i.i, align 4
  br label %if.end67

if.else66:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #6
  %96 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pdesc8, align 4
  %and.i.i412 = and i32 %97, -65281
  %or.i.i413 = or i32 %and.i.i412, 8192
  store i32 %or.i.i413, ptr %pdesc8, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else66, %if.then61, %if.then59.if.end67_crit_edge
  %current_bandtype = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %98 = ptrtoint ptr %current_bandtype to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %current_bandtype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp68 = icmp eq i32 %99, 1
  br i1 %cmp68, label %if.then70, label %if.end67.if.end77_crit_edge

if.end67.if.end77_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

if.then70:                                        ; preds = %if.end67
  %hw_rate = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 5
  %100 = ptrtoint ptr %hw_rate to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %hw_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %101)
  %cmp72 = icmp ult i8 %101, 4
  br i1 %cmp72, label %if.then74, label %if.then70.if.end77_crit_edge

if.then70.if.end77_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

if.then74:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  %102 = ptrtoint ptr %hw_rate to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 4, ptr %hw_rate, align 2
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.then70.if.end77_crit_edge, %if.end67.if.end77_crit_edge
  %hw_rate78 = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 5
  %add.ptr.i414 = getelementptr i32, ptr %pdesc8, i32 5
  %103 = ptrtoint ptr %add.ptr.i414 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr.i414, align 4
  %105 = ptrtoint ptr %hw_rate78 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %hw_rate78, align 2
  %conv79 = zext i8 %106 to i32
  %and.i.i415 = and i32 %104, -1056964609
  %107 = shl nuw i32 %conv79, 24
  %108 = and i32 %107, 1056964608
  %or.i.i416 = or i32 %108, %and.i.i415
  store i32 %or.i.i416, ptr %add.ptr.i414, align 4
  %use_shortgi = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 2
  %109 = ptrtoint ptr %use_shortgi to i32
  call void @__asan_load1_noabort(i32 %109)
  %bf.load = load i8, ptr %use_shortgi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %110 = icmp ult i8 %bf.load, 64
  br i1 %110, label %if.end77.if.end88_crit_edge, label %if.then87

if.end77.if.end88_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88

if.then87:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  %or.i.i418 = or i32 %or.i.i416, 1073741824
  %111 = ptrtoint ptr %add.ptr.i414 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or.i.i418, ptr %add.ptr.i414, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.end77.if.end88_crit_edge
  %macphymode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 52
  %112 = ptrtoint ptr %macphymode to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %macphymode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp89 = icmp eq i32 %113, 1
  br i1 %cmp89, label %land.lhs.true, label %if.end88.if.end96_crit_edge

if.end88.if.end96_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

land.lhs.true:                                    ; preds = %if.end88
  %114 = ptrtoint ptr %hw_rate78 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %hw_rate78, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %115)
  %cmp93 = icmp eq i8 %115, 19
  br i1 %cmp93, label %if.then95, label %land.lhs.true.if.end96_crit_edge

land.lhs.true.if.end96_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

if.then95:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %116 = ptrtoint ptr %add.ptr.i414 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr.i414, align 4
  %or.i.i420 = or i32 %117, 1073741824
  store i32 %or.i.i420, ptr %add.ptr.i414, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %land.lhs.true.if.end96_crit_edge, %if.end88.if.end96_crit_edge
  %118 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %info, align 8
  %and97 = and i32 %119, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end96.if.end100_crit_edge, label %if.then99

if.end96.if.end100_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i421 = getelementptr i32, ptr %pdesc8, i32 1
  %120 = ptrtoint ptr %add.ptr.i421 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %add.ptr.i421, align 4
  %or.i.i422 = or i32 %121, 536870912
  store i32 %or.i.i422, ptr %add.ptr.i421, align 4
  %add.ptr.i423 = getelementptr i32, ptr %pdesc8, i32 6
  %122 = ptrtoint ptr %add.ptr.i423 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %add.ptr.i423, align 4
  %and.i.i424 = and i32 %123, -16252929
  %or.i.i425 = or i32 %and.i.i424, 10485760
  store i32 %or.i.i425, ptr %add.ptr.i423, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %if.end96.if.end100_crit_edge
  %add.ptr.i426 = getelementptr i32, ptr %pdesc8, i32 3
  %124 = ptrtoint ptr %add.ptr.i426 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %add.ptr.i426, align 4
  %and.i.i427 = and i32 %125, -65296
  %126 = tail call i16 @llvm.bswap.i16(i16 %26)
  %127 = zext i16 %126 to i32
  %or.i.i428 = or i32 %and.i.i427, %127
  %128 = ptrtoint ptr %add.ptr.i426 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %or.i.i428, ptr %add.ptr.i426, align 4
  %129 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %129)
  %bf.load102 = load i16, ptr %ptcb_desc, align 4
  %130 = and i16 %bf.load102, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %130)
  %131 = icmp eq i16 %130, 1024
  %add.ptr.i429 = getelementptr i32, ptr %pdesc8, i32 4
  %132 = ptrtoint ptr %add.ptr.i429 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %add.ptr.i429, align 4
  %and.i.i430 = and i32 %133, -1048577
  %134 = select i1 %131, i32 1048576, i32 0
  %or.i.i431 = or i32 %134, %and.i.i430
  store i32 %or.i.i431, ptr %add.ptr.i429, align 4
  %135 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %135)
  %bf.load112 = load i16, ptr %ptcb_desc, align 4
  %136 = and i16 %bf.load112, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %136)
  %.not = icmp eq i16 %136, 0
  %and.i.i433 = and i32 %or.i.i431, -2097153
  %137 = select i1 %.not, i32 0, i32 2097152
  %or.i.i434 = or i32 %137, %and.i.i433
  %138 = ptrtoint ptr %add.ptr.i429 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %or.i.i434, ptr %add.ptr.i429, align 4
  %139 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %139)
  %bf.load125 = load i16, ptr %ptcb_desc, align 4
  %140 = lshr i16 %bf.load125, 9
  %141 = zext i16 %140 to i32
  %and.i.i436 = and i32 %or.i.i434, -524289
  %142 = shl nuw nsw i32 %141, 19
  %143 = and i32 %142, 524288
  %or.i.i437 = or i32 %143, %and.i.i436
  store i32 %or.i.i437, ptr %add.ptr.i429, align 4
  %bf.load132 = load i16, ptr %ptcb_desc, align 4
  %and.i.i439 = and i32 %or.i.i437, -193
  %144 = lshr i16 %bf.load132, 5
  %145 = and i16 %144, 64
  %146 = zext i16 %145 to i32
  %or.i.i440 = or i32 %and.i.i439, %146
  store i32 %or.i.i440, ptr %add.ptr.i429, align 4
  %147 = ptrtoint ptr %current_bandtype to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %current_bandtype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %148)
  %cmp140 = icmp eq i32 %148, 1
  br i1 %cmp140, label %if.then142, label %if.end100.set_tx_desc_rts_rate.exit_crit_edge

if.end100.set_tx_desc_rts_rate.exit_crit_edge:    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_tx_desc_rts_rate.exit

if.then142:                                       ; preds = %if.end100
  %rts_rate = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 1
  %149 = ptrtoint ptr %rts_rate to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %rts_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %150)
  %cmp144 = icmp ult i8 %150, 4
  br i1 %cmp144, label %if.then146, label %if.then142.set_tx_desc_rts_rate.exit_crit_edge

if.then142.set_tx_desc_rts_rate.exit_crit_edge:   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_tx_desc_rts_rate.exit

if.then146:                                       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #6
  %151 = ptrtoint ptr %rts_rate to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 4, ptr %rts_rate, align 2
  br label %set_tx_desc_rts_rate.exit

set_tx_desc_rts_rate.exit:                        ; preds = %if.then146, %if.then142.set_tx_desc_rts_rate.exit_crit_edge, %if.end100.set_tx_desc_rts_rate.exit_crit_edge
  %152 = ptrtoint ptr %add.ptr.i429 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %add.ptr.i429, align 4
  %rts_rate150 = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 1
  %154 = ptrtoint ptr %rts_rate150 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %rts_rate150, align 2
  %conv151 = zext i8 %155 to i32
  %and.i.i444 = and i32 %153, -520093705
  %156 = shl nuw i32 %conv151, 24
  %157 = and i32 %156, 520093696
  %or.i.i445 = or i32 %157, %and.i.i444
  store i32 %or.i.i445, ptr %add.ptr.i429, align 4
  %158 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %158)
  %bf.load152 = load i16, ptr %ptcb_desc, align 4
  %and.i.i449 = and i32 %or.i.i445, -57
  %159 = lshr i16 %bf.load152, 2
  %160 = and i16 %159, 16
  %161 = zext i16 %160 to i32
  %or.i.i450 = or i32 %and.i.i449, %161
  store i32 %or.i.i450, ptr %add.ptr.i429, align 4
  %162 = load i8, ptr %rts_rate150, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %162)
  %cmp159 = icmp ult i8 %162, 12
  %163 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %163)
  %bf.load161 = load i16, ptr %ptcb_desc, align 4
  %. = select i1 %cmp159, i16 8, i16 7
  %164 = lshr i16 %bf.load161, %.
  %and.i.i452 = and i32 %or.i.i450, -45
  %cond175.in = shl nuw nsw i16 %164, 2
  %165 = and i16 %cond175.in, 4
  %166 = zext i16 %165 to i32
  %or.i.i453 = or i32 %and.i.i452, %166
  %167 = ptrtoint ptr %add.ptr.i429 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %or.i.i453, ptr %add.ptr.i429, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40.0)
  %tobool176.not = icmp eq i8 %bw_40.0, 0
  br i1 %tobool176.not, label %if.else186, label %if.then177

if.then177:                                       ; preds = %set_tx_desc_rts_rate.exit
  %168 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %168)
  %bf.load178 = load i16, ptr %ptcb_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load178)
  %tobool181.not = icmp ult i16 %bf.load178, 16384
  br i1 %tobool181.not, label %if.else183, label %if.then182

if.then182:                                       ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #6
  %or.i.i459 = or i32 %or.i.i453, 12290
  br label %if.end187

if.else183:                                       ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #6
  %and.i.i461 = and i32 %or.i.i453, -43
  %169 = ptrtoint ptr %add.ptr.i429 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %and.i.i461, ptr %add.ptr.i429, align 4
  %cur_40_prime_sc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 46
  %170 = ptrtoint ptr %cur_40_prime_sc to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %cur_40_prime_sc, align 1
  %conv184 = zext i8 %171 to i32
  %and.i.i465 = and i32 %or.i.i453, -12331
  %172 = shl nuw nsw i32 %conv184, 12
  %173 = and i32 %172, 12288
  %or.i.i466 = or i32 %173, %and.i.i465
  br label %if.end187

if.else186:                                       ; preds = %set_tx_desc_rts_rate.exit
  call void @__sanitizer_cov_trace_pc() #6
  %and.i.i470 = and i32 %or.i.i453, -12331
  br label %if.end187

if.end187:                                        ; preds = %if.else186, %if.else183, %if.then182
  %or.i.i459.sink = phi i32 [ %or.i.i459, %if.then182 ], [ %or.i.i466, %if.else183 ], [ %and.i.i470, %if.else186 ]
  %174 = ptrtoint ptr %add.ptr.i429 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %or.i.i459.sink, ptr %add.ptr.i429, align 4
  %175 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %pdesc8, align 4
  %conv189 = and i32 %5, 65535
  %and.i.i472 = and i32 %176, 65519
  %177 = tail call i32 @llvm.bswap.i32(i32 %conv189) #4
  %or.i.i473 = or i32 %and.i.i472, %177
  %178 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %or.i.i473, ptr %pdesc8, align 4
  %tobool190.not = icmp eq ptr %sta, null
  br i1 %tobool190.not, label %if.end187.if.end194_crit_edge, label %set_tx_desc_ampdu_density.exit

if.end187.if.end194_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end194

set_tx_desc_ampdu_density.exit:                   ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i474 = getelementptr i32, ptr %pdesc8, i32 2
  %179 = ptrtoint ptr %add.ptr.i474 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %add.ptr.i474, align 4
  %ampdu_density192 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 3
  %181 = ptrtoint ptr %ampdu_density192 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %ampdu_density192, align 4
  %conv193 = zext i8 %182 to i32
  %and.i.i477 = and i32 %180, -28673
  %183 = shl nuw nsw i32 %conv193, 12
  %184 = and i32 %183, 28672
  %or.i.i478 = or i32 %184, %and.i.i477
  store i32 %or.i.i478, ptr %add.ptr.i474, align 4
  br label %if.end194

if.end194:                                        ; preds = %set_tx_desc_ampdu_density.exit, %if.end187.if.end194_crit_edge
  %hw_key = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 12
  %185 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hw_key, align 4
  %tobool195.not = icmp eq ptr %186, null
  br i1 %tobool195.not, label %if.end194.if.end199_crit_edge, label %if.then196

if.end194.if.end199_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end199

if.then196:                                       ; preds = %if.end194
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %cipher, align 8
  %189 = zext i32 %188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %188, label %sw.default [
    i32 1027073, label %if.then196.sw.bb_crit_edge
    i32 1027077, label %if.then196.sw.bb_crit_edge564
    i32 1027074, label %if.then196.sw.bb_crit_edge565
    i32 1027076, label %sw.bb198
  ]

if.then196.sw.bb_crit_edge565:                    ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then196.sw.bb_crit_edge564:                    ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then196.sw.bb_crit_edge:                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

sw.bb:                                            ; preds = %if.then196.sw.bb_crit_edge, %if.then196.sw.bb_crit_edge564, %if.then196.sw.bb_crit_edge565
  %add.ptr.i479 = getelementptr i32, ptr %pdesc8, i32 1
  %190 = ptrtoint ptr %add.ptr.i479 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %add.ptr.i479, align 4
  %and.i.i480 = and i32 %191, -49153
  %or.i.i481 = or i32 %and.i.i480, 16384
  store i32 %or.i.i481, ptr %add.ptr.i479, align 4
  br label %if.end199

sw.bb198:                                         ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i482 = getelementptr i32, ptr %pdesc8, i32 1
  %192 = ptrtoint ptr %add.ptr.i482 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %add.ptr.i482, align 4
  %or.i.i484 = or i32 %193, 49152
  store i32 %or.i.i484, ptr %add.ptr.i482, align 4
  br label %if.end199

sw.default:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i485 = getelementptr i32, ptr %pdesc8, i32 1
  %194 = ptrtoint ptr %add.ptr.i485 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %add.ptr.i485, align 4
  %and.i.i486 = and i32 %195, -49153
  store i32 %and.i.i486, ptr %add.ptr.i485, align 4
  br label %if.end199

if.end199:                                        ; preds = %sw.default, %sw.bb198, %sw.bb, %if.end194.if.end199_crit_edge
  %196 = ptrtoint ptr %add.ptr.i426 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %add.ptr.i426, align 4
  %and.i.i488 = and i32 %197, -241
  store i32 %and.i.i488, ptr %add.ptr.i426, align 4
  %add.ptr.i489 = getelementptr i32, ptr %pdesc8, i32 1
  %198 = ptrtoint ptr %add.ptr.i489 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %add.ptr.i489, align 4
  %and.i.i492 = and i32 %199, -2031617
  %or.i.i493 = or i32 %and.i.i492, %retval.0.i
  store i32 %or.i.i493, ptr %add.ptr.i489, align 4
  %200 = ptrtoint ptr %add.ptr.i414 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %add.ptr.i414, align 4
  %or.i.i497 = or i32 %201, 16711936
  store i32 %or.i.i497, ptr %add.ptr.i414, align 4
  %202 = ptrtoint ptr %use_shortgi to i32
  call void @__asan_load1_noabort(i32 %202)
  %bf.load201 = load i8, ptr %use_shortgi, align 1
  %203 = lshr i8 %bf.load201, 4
  %204 = zext i8 %203 to i32
  %205 = ptrtoint ptr %add.ptr.i429 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %add.ptr.i429, align 4
  %and.i.i499 = and i32 %206, -262145
  %207 = shl nuw nsw i32 %204, 18
  %208 = and i32 %207, 262144
  %or.i.i500 = or i32 %208, %and.i.i499
  store i32 %or.i.i500, ptr %add.ptr.i429, align 4
  %bf.load207 = load i8, ptr %use_shortgi, align 1
  %209 = lshr i8 %bf.load207, 5
  %210 = zext i8 %209 to i32
  %and.i.i502 = and i32 %or.i.i500, -65537
  %211 = shl nuw nsw i32 %210, 16
  %212 = and i32 %211, 65536
  %or.i.i503 = or i32 %212, %and.i.i502
  store i32 %or.i.i503, ptr %add.ptr.i429, align 4
  %bf.load214 = load i8, ptr %use_shortgi, align 1
  %213 = and i8 %bf.load214, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool217.not = icmp eq i8 %213, 0
  br i1 %tobool217.not, label %if.then218, label %if.end199.if.end219_crit_edge

if.end199.if.end219_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end219

if.then218:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #6
  %and.i.i505 = and i32 %or.i.i503, -520093697
  %or.i.i506 = or i32 %and.i.i505, 134217728
  %214 = ptrtoint ptr %add.ptr.i429 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %or.i.i506, ptr %add.ptr.i429, align 4
  br label %if.end219

if.end219:                                        ; preds = %if.then218, %if.end199.if.end219_crit_edge
  %215 = and i16 %3, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %215)
  %cmp.i507 = icmp eq i16 %215, -30720
  br i1 %cmp.i507, label %if.then221, label %if.end219.if.end226_crit_edge

if.end219.if.end226_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end226

if.then221:                                       ; preds = %if.end219
  %rdg_en = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 32
  %216 = ptrtoint ptr %rdg_en to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %rdg_en, align 8, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool222.not = icmp eq i8 %217, 0
  br i1 %tobool222.not, label %if.then221.if.end226_crit_edge, label %if.then223

if.then221.if.end226_crit_edge:                   ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end226

if.then223:                                       ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.2) #4
  %218 = ptrtoint ptr %add.ptr.i489 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %add.ptr.i489, align 4
  %or.i.i509 = or i32 %219, -2147483648
  store i32 %or.i.i509, ptr %add.ptr.i489, align 4
  %220 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %pdesc8, align 4
  %or.i.i510 = or i32 %221, 2
  store i32 %or.i.i510, ptr %pdesc8, align 4
  br label %if.end226

if.end226:                                        ; preds = %if.then223, %if.then221.if.end226_crit_edge, %if.end219.if.end226_crit_edge, %lor.lhs.false50.if.end226_crit_edge
  %lastseg.0.off0558 = phi i1 [ %lastseg.0.off0559, %if.end219.if.end226_crit_edge ], [ %lastseg.0.off0559, %if.then223 ], [ %lastseg.0.off0559, %if.then221.if.end226_crit_edge ], [ %extract.t, %lor.lhs.false50.if.end226_crit_edge ]
  %firstseg.0.off0556 = phi i32 [ 8, %if.end219.if.end226_crit_edge ], [ 8, %if.then223 ], [ 8, %if.then221.if.end226_crit_edge ], [ 0, %lor.lhs.false50.if.end226_crit_edge ]
  %222 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %pdesc8, align 4
  %and.i.i511 = and i32 %223, -13
  %224 = select i1 %lastseg.0.off0558, i32 4, i32 0
  %or.i.i512 = or i32 %224, %firstseg.0.off0556
  %or.i.i514 = or i32 %or.i.i512, %and.i.i511
  store i32 %or.i.i514, ptr %pdesc8, align 4
  %conv234 = and i32 %33, 65535
  %add.ptr.i515 = getelementptr i32, ptr %pdesc8, i32 7
  %225 = ptrtoint ptr %add.ptr.i515 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %add.ptr.i515, align 4
  %and.i.i516 = and i32 %226, 65535
  %227 = tail call i32 @llvm.bswap.i32(i32 %conv234) #4
  %or.i.i517 = or i32 %and.i.i516, %227
  %228 = ptrtoint ptr %add.ptr.i515 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %or.i.i517, ptr %add.ptr.i515, align 4
  %229 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i403) #4
  %add.ptr.i518 = getelementptr i32, ptr %pdesc8, i32 8
  %230 = ptrtoint ptr %add.ptr.i518 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %229, ptr %add.ptr.i518, align 4
  %useramask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 14
  %231 = ptrtoint ptr %useramask to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %useramask, align 1, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool235.not = icmp eq i8 %232, 0
  %ratr_index240 = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 3
  %233 = ptrtoint ptr %ratr_index240 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %ratr_index240, align 4
  %conv241 = zext i8 %234 to i32
  %add.ptr.i529 = getelementptr i32, ptr %pdesc8, i32 1
  %235 = ptrtoint ptr %add.ptr.i529 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %add.ptr.i529, align 4
  %and.i.i532 = and i32 %236, -3841
  %add = shl nuw nsw i32 %conv241, 8
  br i1 %tobool235.not, label %set_tx_desc_rate_id.exit534, label %set_tx_desc_rate_id.exit

set_tx_desc_rate_id.exit:                         ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #6
  %237 = and i32 %add, 3840
  %or.i.i523 = or i32 %237, %and.i.i532
  %238 = ptrtoint ptr %add.ptr.i529 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %or.i.i523, ptr %add.ptr.i529, align 4
  %mac_id = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 4
  br label %if.end244

set_tx_desc_rate_id.exit534:                      ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #6
  %239 = add nuw nsw i32 %add, 3072
  %240 = and i32 %239, 3840
  %or.i.i533 = or i32 %240, %and.i.i532
  %241 = ptrtoint ptr %add.ptr.i529 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %or.i.i533, ptr %add.ptr.i529, align 4
  br label %if.end244

if.end244:                                        ; preds = %set_tx_desc_rate_id.exit534, %set_tx_desc_rate_id.exit
  %or.i.i533.sink = phi i32 [ %or.i.i523, %set_tx_desc_rate_id.exit ], [ %or.i.i533, %set_tx_desc_rate_id.exit534 ]
  %conv243.sink.in.in = phi ptr [ %mac_id, %set_tx_desc_rate_id.exit ], [ %ratr_index240, %set_tx_desc_rate_id.exit534 ]
  %242 = ptrtoint ptr %conv243.sink.in.in to i32
  call void @__asan_load1_noabort(i32 %242)
  %conv243.sink.in = load i8, ptr %conv243.sink.in.in, align 1
  %conv243.sink = zext i8 %conv243.sink.in to i32
  %and.i.i538 = and i32 %or.i.i533.sink, -520093697
  %243 = shl nuw i32 %conv243.sink, 24
  %244 = and i32 %243, 520093696
  %or.i.i539 = or i32 %244, %and.i.i538
  %245 = ptrtoint ptr %add.ptr.i529 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %or.i.i539, ptr %add.ptr.i529, align 4
  %246 = and i16 %3, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %246)
  %cmp.i541 = icmp eq i16 %246, -30720
  br i1 %cmp.i541, label %if.end247.thread, label %land.lhs.true249

if.end247.thread:                                 ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i542 = getelementptr i32, ptr %pdesc8, i32 4
  %247 = ptrtoint ptr %add.ptr.i542 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %add.ptr.i542, align 4
  %or.i.i543 = or i32 %248, 1073741824
  store i32 %or.i.i543, ptr %add.ptr.i542, align 4
  br label %if.end253

land.lhs.true249:                                 ; preds = %if.end244
  %fwctrl_lps = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 10
  %249 = ptrtoint ptr %fwctrl_lps to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %fwctrl_lps, align 2, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %tobool250.not = icmp eq i8 %250, 0
  br i1 %tobool250.not, label %land.lhs.true249.if.end253_crit_edge, label %if.then252

land.lhs.true249.if.end253_crit_edge:             ; preds = %land.lhs.true249
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end253

if.then252:                                       ; preds = %land.lhs.true249
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i545 = getelementptr i32, ptr %pdesc8, i32 4
  %251 = ptrtoint ptr %add.ptr.i545 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %add.ptr.i545, align 4
  %or.i.i546 = or i32 %252, -2147483648
  store i32 %or.i.i546, ptr %add.ptr.i545, align 4
  %add.ptr.i547 = getelementptr i32, ptr %pdesc8, i32 3
  %253 = ptrtoint ptr %add.ptr.i547 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %add.ptr.i547, align 4
  %and.i.i548 = and i32 %254, -241
  %or.i.i549 = or i32 %and.i.i548, 128
  store i32 %or.i.i549, ptr %add.ptr.i547, align 4
  br label %if.end253

if.end253:                                        ; preds = %if.then252, %land.lhs.true249.if.end253_crit_edge, %if.end247.thread
  %add.ptr.i550 = getelementptr i32, ptr %pdesc8, i32 2
  %255 = ptrtoint ptr %add.ptr.i550 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %add.ptr.i550, align 4
  %and.i.i551 = and i32 %256, -513
  %257 = select i1 %lastseg.0.off0558, i32 0, i32 512
  %or.i.i552 = or i32 %and.i.i551, %257
  store i32 %or.i.i552, ptr %add.ptr.i550, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end253, %dma_map_single_attrs.exit.cleanup_crit_edge
  %.str.3.sink = phi ptr [ @.str.3, %if.end253 ], [ @.str, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull %.str.3.sink) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_get_tcb_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_tx_fill_cmddesc(ptr nocapture noundef readonly %hw, ptr noundef %pdesc8, i1 noundef zeroext %firstseg, i1 noundef zeroext %lastseg, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
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
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %3) #4
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !38

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev5) #4
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
  %12 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev5, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #4
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @debug_dma_map_single(ptr noundef %dev5, ptr noundef %3, i32 noundef %9) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %3 to i32
  %sub.i = add i32 %15, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %14, i32 %shr.i
  %and.i = and i32 %15, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev5, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %9, i32 noundef 1, i32 noundef 0) #4
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev8, i32 noundef %retval.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str) #4
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %18 = call ptr @memset(ptr %pdesc8, i32 0, i32 40)
  br i1 %firstseg, label %if.then11, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pdesc8, align 4
  %and.i.i = and i32 %20, -65281
  %or.i.i = or i32 %and.i.i, 8192
  store i32 %or.i.i, ptr %pdesc8, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge
  %current_bandtype = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %21 = ptrtoint ptr %current_bandtype to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %current_bandtype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp = icmp eq i32 %22, 1
  %add.ptr.i65 = getelementptr i32, ptr %pdesc8, i32 5
  %23 = ptrtoint ptr %add.ptr.i65 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i65, align 4
  %and.i.i66 = and i32 %24, -1056964609
  %or.i.i67 = or i32 %and.i.i66, 67108864
  %and.i.i66.sink = select i1 %cmp, i32 %or.i.i67, i32 %and.i.i66
  store i32 %and.i.i66.sink, ptr %add.ptr.i65, align 4
  %add.ptr.i70 = getelementptr i32, ptr %pdesc8, i32 3
  %25 = ptrtoint ptr %add.ptr.i70 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i70, align 4
  %and.i.i71 = and i32 %26, -65296
  store i32 %and.i.i71, ptr %add.ptr.i70, align 4
  %27 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pdesc8, align 4
  %add.ptr.i73 = getelementptr i32, ptr %pdesc8, i32 1
  %29 = ptrtoint ptr %add.ptr.i73 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i73, align 4
  %and.i.i74 = and i32 %30, -2031617
  %or.i.i75 = or i32 %and.i.i74, 1048576
  store i32 %or.i.i75, ptr %add.ptr.i73, align 4
  %and.i.i76 = and i32 %28, -29
  %or.i.i79 = or i32 %and.i.i76, 12
  store i32 %or.i.i79, ptr %pdesc8, align 4
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  %conv17 = and i32 %32, 65535
  %add.ptr.i80 = getelementptr i32, ptr %pdesc8, i32 7
  %33 = ptrtoint ptr %add.ptr.i80 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i80, align 4
  %and.i.i81 = and i32 %34, 65535
  %35 = tail call i32 @llvm.bswap.i32(i32 %conv17) #4
  %or.i.i82 = or i32 %and.i.i81, %35
  %36 = ptrtoint ptr %add.ptr.i80 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i.i82, ptr %add.ptr.i80, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #4
  %add.ptr.i83 = getelementptr i32, ptr %pdesc8, i32 8
  %38 = ptrtoint ptr %add.ptr.i83 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %add.ptr.i83, align 4
  %and.i.i85 = and i32 %or.i.i75, -521080577
  %or.i.i86 = or i32 %and.i.i85, 1792
  %39 = ptrtoint ptr %add.ptr.i73 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or.i.i86, ptr %add.ptr.i73, align 4
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  %conv20 = and i32 %41, 65535
  %and.i.i89 = and i32 %28, 227
  %42 = tail call i32 @llvm.bswap.i32(i32 %conv20) #4
  %or.i.i90 = or i32 %and.i.i89, %42
  %or.i.i96 = or i32 %or.i.i90, 8204
  %43 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or.i.i96, ptr %pdesc8, align 4
  %add.ptr.i97 = getelementptr i32, ptr %pdesc8, i32 4
  %44 = ptrtoint ptr %add.ptr.i97 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i97, align 4
  %or.i.i99 = or i32 %45, 65536
  store i32 %or.i.i99, ptr %add.ptr.i97, align 4
  %46 = and i16 %5, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %46)
  %cmp.i100 = icmp eq i16 %46, -30720
  br i1 %cmp.i100, label %if.end12.if.end25_crit_edge, label %land.lhs.true

if.end12.if.end25_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end12
  %fwctrl_lps = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 10
  %47 = ptrtoint ptr %fwctrl_lps to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %fwctrl_lps, align 2, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool22.not = icmp eq i8 %48, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end25_crit_edge, label %if.then24

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %or.i.i102 = or i32 %45, -2147418112
  %49 = ptrtoint ptr %add.ptr.i97 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or.i.i102, ptr %add.ptr.i97, align 4
  %and.i.i104 = and i32 %26, -65536
  %or.i.i105 = or i32 %and.i.i104, 128
  %50 = ptrtoint ptr %add.ptr.i70 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or.i.i105, ptr %add.ptr.i70, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %land.lhs.true.if.end25_crit_edge, %if.end12.if.end25_crit_edge
  tail call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.4, ptr noundef %pdesc8, i32 noundef 64) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %51 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pdesc8, align 4
  %or.i.i106 = or i32 %52, 128
  store i32 %or.i.i106, ptr %pdesc8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_set_desc(ptr nocapture noundef readnone %hw, ptr nocapture noundef %pdesc8, i1 noundef zeroext %istx, i8 noundef zeroext %desc_name, ptr nocapture noundef readonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %desc_name to i32
  br i1 %istx, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %desc_name, label %land.end [
    i8 0, label %do.body
    i8 2, label %sw.bb1
  ]

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %1 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pdesc8, align 4
  %or.i.i = or i32 %2, 128
  store i32 %or.i.i, ptr %pdesc8, align 4
  br label %if.end101

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
  br label %if.end101

land.end:                                         ; preds = %if.then
  %.b118 = load i1, ptr @rtl92de_set_desc.__already_done, align 1
  br i1 %.b118, label %land.end.if.end101_crit_edge, label %if.then8, !prof !38

land.end.if.end101_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end101

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl92de_set_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 734, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %conv) #4
  br label %if.end101

if.else:                                          ; preds = %entry
  %7 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %desc_name, label %land.end57 [
    i8 1, label %do.body43
    i8 4, label %sw.bb46
    i8 5, label %set_rx_desc_pkt_len.exit
    i8 6, label %sw.bb48
  ]

do.body43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pdesc8, align 4
  %or.i.i119 = or i32 %9, 128
  store i32 %or.i.i119, ptr %pdesc8, align 4
  br label %if.end101

sw.bb46:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  %add.ptr.i120 = getelementptr i32, ptr %pdesc8, i32 6
  %13 = ptrtoint ptr %add.ptr.i120 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr.i120, align 4
  br label %if.end101

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
  %or.i.i121 = or i32 %and.i.i, %19
  %20 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i.i121, ptr %pdesc8, align 4
  br label %if.end101

sw.bb48:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pdesc8, align 4
  %or.i.i122 = or i32 %22, 64
  store i32 %or.i.i122, ptr %pdesc8, align 4
  br label %if.end101

land.end57:                                       ; preds = %if.else
  %.b116117 = load i1, ptr @rtl92de_set_desc.__already_done.7, align 1
  br i1 %.b116117, label %land.end57.if.end101_crit_edge, label %if.then64, !prof !38

land.end57.if.end101_crit_edge:                   ; preds = %land.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end101

if.then64:                                        ; preds = %land.end57
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl92de_set_desc.__already_done.7, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 754, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %conv) #4
  br label %if.end101

if.end101:                                        ; preds = %if.then64, %land.end57.if.end101_crit_edge, %sw.bb48, %set_rx_desc_pkt_len.exit, %sw.bb46, %do.body43, %if.then8, %land.end.if.end101_crit_edge, %sw.bb1, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @rtl92de_get_desc(ptr nocapture readnone %hw, ptr nocapture noundef readonly %p_desc8, i1 noundef zeroext %istx, i8 noundef zeroext %desc_name) local_unnamed_addr #0 align 64 {
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
  %1 = ptrtoint ptr %p_desc8 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %p_desc8, align 4
  %.mask.i = lshr i32 %2, 7
  %.mask.lobit.i = and i32 %.mask.i, 1
  br label %if.end98

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i32, ptr %p_desc8, i32 8
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  br label %if.end98

land.end:                                         ; preds = %if.then
  %.b113 = load i1, ptr @rtl92de_get_desc.__already_done, align 1
  br i1 %.b113, label %land.end.if.end98_crit_edge, label %if.then9, !prof !38

land.end.if.end98_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

if.then9:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl92de_get_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 776, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %conv) #4
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
  %7 = ptrtoint ptr %p_desc8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %p_desc8, align 4
  %.mask.i114 = lshr i32 %8, 7
  %.mask.lobit.i115 = and i32 %.mask.i114, 1
  br label %if.end98

sw.bb42:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %p_desc8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %p_desc8, align 4
  %11 = and i32 %10, -12648448
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  br label %if.end98

sw.bb44:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i116 = getelementptr i32, ptr %p_desc8, i32 6
  %13 = ptrtoint ptr %add.ptr.i116 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i116, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #4
  br label %if.end98

land.end54:                                       ; preds = %if.else
  %.b111112 = load i1, ptr @rtl92de_get_desc.__already_done.9, align 1
  br i1 %.b111112, label %land.end54.if.end98_crit_edge, label %if.then61, !prof !38

land.end54.if.end98_crit_edge:                    ; preds = %land.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

if.then61:                                        ; preds = %land.end54
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl92de_get_desc.__already_done.9, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 792, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %conv) #4
  br label %if.end98

if.end98:                                         ; preds = %if.then61, %land.end54.if.end98_crit_edge, %sw.bb44, %sw.bb42, %sw.bb40, %if.then9, %land.end.if.end98_crit_edge, %sw.bb1, %sw.bb
  %ret.0 = phi i32 [ %5, %sw.bb1 ], [ %.mask.lobit.i, %sw.bb ], [ %15, %sw.bb44 ], [ %12, %sw.bb42 ], [ %.mask.lobit.i115, %sw.bb40 ], [ 0, %if.then9 ], [ 0, %land.end.if.end98_crit_edge ], [ 0, %if.then61 ], [ 0, %land.end54.if.end98_crit_edge ]
  %conv99 = zext i32 %ret.0 to i64
  ret i64 %conv99
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rtl92de_is_tx_desc_closed(ptr nocapture noundef readonly %hw, i8 noundef zeroext %hw_queue, i16 noundef zeroext %index) local_unnamed_addr #3 align 64 {
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
define dso_local void @rtl92de_tx_polling(ptr nocapture noundef readonly %hw, i8 noundef zeroext %hw_queue) local_unnamed_addr #0 align 64 {
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
  %7 = load i8, ptr %write_readback.i, align 1, !range !34
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
  %13 = load i8, ptr %write_readback.i8, align 1, !range !34
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

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !17, !19, !21, !23, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/trx.c", i32 514, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/trx.c", i32 529, i32 5}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/trx.c", i32 628, i32 5}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/trx.c", i32 655, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/trx.c", i32 712, i32 2}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/trx.c", i32 733, i32 4}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/trx.c", i32 753, i32 4}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/trx.c", i32 775, i32 4}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/trx.c", i32 791, i32 4}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i8 0, i8 2}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.peeled.count", i32 1}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2158093512}
!40 = !{i64 2158093660}
!41 = !{i64 2158095029}
