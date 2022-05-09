; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192se/trx.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192se/trx.c"
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
%struct.phy_sts_cck_8192s_t = type { [4 x i8], i8, i8 }
%struct.rx_fwinfo = type { [4 x i8], i8, [4 x i8], [4 x i8], [2 x i8], [4 x i8], [2 x i8], [2 x i8], [2 x i8], i8, i8, i8 }
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

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA mapping error\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@rtl92se_set_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192se/trx.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rtl8192se: ERR txdesc :%d not processed\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl92se_set_desc.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rtl8192se: ERR rxdesc :%d not processed\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl92se_get_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rtl92se_get_desc.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 40960, i64 49152, i64 53248]
@__sancov_gen_cov_switch_values.9 = internal global [9 x i64] [i64 7, i64 8, i64 4, i64 7, i64 11, i64 15, i64 20, i64 21, i64 127]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 12, i64 0, i64 1024]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 5]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 336, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 491, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 568, i32 4 }
@___asan_gen_.32 = private constant [56 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/trx.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 588, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 326, i32 6 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92se_rx_query_desc(ptr noundef %hw, ptr noundef %stats, ptr nocapture noundef %rx_status, ptr nocapture noundef readonly %pdesc8, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pdesc8, align 4
  %2 = and i32 %1, -12648448
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #3
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
  %sh.diff260 = lshr i32 %12, 18
  %tr.sh.diff261 = trunc i32 %sh.diff260 to i8
  %bf.value = and i8 %tr.sh.diff261, 32
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
  %sh.diff262 = lshr i32 %28, 12
  %tr.sh.diff263 = trunc i32 %sh.diff262 to i8
  %bf.value48 = and i8 %tr.sh.diff263, 16
  %bf.clear50 = and i8 %bf.set41, -17
  %bf.set51 = or i8 %bf.clear50, %bf.value48
  store i8 %bf.set51, ptr %icv, align 2
  %add.ptr.i235 = getelementptr i32, ptr %pdesc8, i32 1
  %29 = ptrtoint ptr %add.ptr.i235 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i235, align 4
  %isampdu = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 25
  %31 = lshr i32 %30, 22
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = ptrtoint ptr %isampdu to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %isampdu, align 1
  %35 = load i32, ptr %add.ptr.i235, align 4
  %36 = and i32 %35, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %36)
  %37 = icmp eq i32 %36, 12582912
  %isfirst_ampdu = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 26
  %frombool61 = zext i1 %37 to i8
  %38 = ptrtoint ptr %isfirst_ampdu to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool61, ptr %isfirst_ampdu, align 8
  %add.ptr.i242 = getelementptr i32, ptr %pdesc8, i32 5
  %39 = ptrtoint ptr %add.ptr.i242 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i242, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #3
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
  %54 = load i32, ptr %add.ptr.i, align 4
  %55 = and i32 %54, 1006632960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %switch = icmp eq i32 %55, 0
  %is_cck = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 41
  %frombool82 = zext i1 %switch to i8
  %56 = ptrtoint ptr %is_cck to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %frombool82, ptr %is_cck, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.set51)
  %tobool87.not = icmp sgt i8 %bf.set51, -1
  br i1 %tobool87.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %57 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %center_freq, align 4
  %conv88 = trunc i32 %60 to i16
  %freq = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 5
  %61 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load89 = load i16, ptr %freq, align 4
  %bf.shl91 = shl i16 %conv88, 3
  %bf.clear92 = and i16 %bf.load89, 7
  %bf.set93 = or i16 %bf.clear92, %bf.shl91
  store i16 %bf.set93, ptr %freq, align 4
  %62 = load ptr, ptr %chandef, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %conv97 = trunc i32 %64 to i8
  %band98 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 11
  %65 = ptrtoint ptr %band98 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv97, ptr %band98, align 4
  %66 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load100 = load i8, ptr %icv, align 2
  %67 = and i8 %bf.load100, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool104.not = icmp eq i8 %67, 0
  br i1 %tobool104.not, label %if.end.if.end107_crit_edge, label %if.then105

if.end.if.end107_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end107

if.then105:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %flag = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %68 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flag, align 8
  %or106 = or i32 %69, 32
  store i32 %or106, ptr %flag, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.end.if.end107_crit_edge
  %70 = ptrtoint ptr %rx_is40mhzpacket to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %rx_is40mhzpacket, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool109.not = icmp eq i8 %71, 0
  br i1 %tobool109.not, label %if.end107.if.end114_crit_edge, label %if.then110

if.end107.if.end114_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end114

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #5
  %bw = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %72 = ptrtoint ptr %bw to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %bf.load111 = load i16, ptr %bw, align 1
  %bf.clear112 = and i16 %bf.load111, -14337
  %bf.set113 = or i16 %bf.clear112, 6144
  store i16 %bf.set113, ptr %bw, align 1
  br label %if.end114

if.end114:                                        ; preds = %if.then110, %if.end107.if.end114_crit_edge
  %73 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %is_ht, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool116.not = icmp eq i8 %74, 0
  br i1 %tobool116.not, label %if.end114.if.end121_crit_edge, label %if.then117

if.end114.if.end121_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end121

if.then117:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #5
  %encoding = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %75 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %bf.load118 = load i16, ptr %encoding, align 1
  %bf.clear119 = and i16 %bf.load118, 16383
  %bf.set120 = or i16 %bf.clear119, 16384
  store i16 %bf.set120, ptr %encoding, align 1
  br label %if.end121

if.end121:                                        ; preds = %if.then117, %if.end114.if.end121_crit_edge
  %flag122 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %76 = ptrtoint ptr %flag122 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flag122, align 8
  %or123 = or i32 %77, 128
  store i32 %or123, ptr %flag122, align 8
  %78 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load125 = load i8, ptr %icv, align 2
  %79 = and i8 %bf.load125, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool129.not = icmp eq i8 %79, 0
  br i1 %tobool129.not, label %if.end121.if.end146_crit_edge, label %if.then130

if.end121.if.end146_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end146

if.then130:                                       ; preds = %if.end121
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %80 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data, align 4
  %82 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %rx_drvinfo_size, align 1
  %conv132 = zext i8 %83 to i32
  %add.ptr = getelementptr i8, ptr %81, i32 %conv132
  %84 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %rx_bufshift, align 2
  %conv134 = zext i8 %85 to i32
  %add.ptr135 = getelementptr i8, ptr %add.ptr, i32 %conv134
  %86 = ptrtoint ptr %add.ptr135 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %add.ptr135, align 2
  %88 = and i16 %87, -1024
  %89 = zext i16 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values)
  switch i16 %88, label %if.then130.if.else_crit_edge [
    i16 -24576, label %if.then130.land.lhs.true_crit_edge
    i16 -16384, label %if.then130.land.lhs.true_crit_edge264
    i16 -12288, label %if.then5.i
  ]

if.then130.land.lhs.true_crit_edge264:            ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

if.then130.land.lhs.true_crit_edge:               ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

if.then130.if.else_crit_edge:                     ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then5.i:                                       ; preds = %if.then130
  %90 = and i16 %87, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %cmp.i46.not.i = icmp eq i16 %90, 0
  br i1 %cmp.i46.not.i, label %if.end9.i, label %if.then5.i.land.lhs.true_crit_edge

if.then5.i.land.lhs.true_crit_edge:               ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

if.end9.i:                                        ; preds = %if.then5.i
  %add.ptr.i257 = getelementptr i8, ptr %add.ptr135, i32 24
  %91 = ptrtoint ptr %add.ptr.i257 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %add.ptr.i257, align 1
  %93 = zext i8 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %92, label %if.end9.i.land.lhs.true_crit_edge [
    i8 4, label %if.end9.i.if.else_crit_edge
    i8 7, label %if.end9.i.if.else_crit_edge265
    i8 11, label %if.end9.i.if.else_crit_edge266
    i8 15, label %if.end9.i.if.else_crit_edge267
    i8 20, label %if.end9.i.if.else_crit_edge268
    i8 21, label %if.end9.i.if.else_crit_edge269
    i8 127, label %if.end9.i.if.else_crit_edge270
  ]

if.end9.i.if.else_crit_edge270:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.end9.i.if.else_crit_edge269:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.end9.i.if.else_crit_edge268:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.end9.i.if.else_crit_edge267:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.end9.i.if.else_crit_edge266:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.end9.i.if.else_crit_edge265:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.end9.i.if.else_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.end9.i.land.lhs.true_crit_edge:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9.i.land.lhs.true_crit_edge, %if.then5.i.land.lhs.true_crit_edge, %if.then130.land.lhs.true_crit_edge, %if.then130.land.lhs.true_crit_edge264
  %94 = and i16 %87, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %cmp.i.not = icmp eq i16 %94, 0
  br i1 %cmp.i.not, label %land.lhs.true.if.else_crit_edge, label %if.then140

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then140:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %and142 = and i32 %or123, -3
  br label %if.end146.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end9.i.if.else_crit_edge, %if.end9.i.if.else_crit_edge265, %if.end9.i.if.else_crit_edge266, %if.end9.i.if.else_crit_edge267, %if.end9.i.if.else_crit_edge268, %if.end9.i.if.else_crit_edge269, %if.end9.i.if.else_crit_edge270, %if.then130.if.else_crit_edge
  %or144 = or i32 %77, 130
  br label %if.end146.sink.split

if.end146.sink.split:                             ; preds = %if.else, %if.then140
  %and142.sink = phi i32 [ %and142, %if.then140 ], [ %or144, %if.else ]
  %95 = ptrtoint ptr %flag122 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %and142.sink, ptr %flag122, align 8
  br label %if.end146

if.end146:                                        ; preds = %if.end146.sink.split, %if.end121.if.end146_crit_edge
  %96 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %is_ht, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool148 = icmp ne i8 %97, 0
  %98 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %rate, align 1
  %call150 = tail call i32 @rtlwifi_rate_mapping(ptr noundef %hw, i1 noundef zeroext %tobool148, i1 noundef zeroext false, i8 noundef zeroext %99) #3
  %conv151 = trunc i32 %call150 to i8
  %rate_idx = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 8
  %100 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv151, ptr %rate_idx, align 1
  %101 = ptrtoint ptr %timestamp_low to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %timestamp_low, align 4
  %conv153 = zext i32 %102 to i64
  %103 = ptrtoint ptr %rx_status to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %conv153, ptr %rx_status, align 8
  %104 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool154.not = icmp eq i32 %104, 0
  br i1 %tobool154.not, label %if.end146.if.end160_crit_edge, label %if.then155

if.end146.if.end160_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end160

if.then155:                                       ; preds = %if.end146
  %data156 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %105 = ptrtoint ptr %data156 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data156, align 4
  %107 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %rx_bufshift, align 2
  %conv158 = zext i8 %108 to i32
  %add.ptr159 = getelementptr i8, ptr %106, i32 %conv158
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %109 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %priv.i, align 8
  %111 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %rx_drvinfo_size, align 1
  %conv.i = zext i8 %112 to i32
  %add.ptr.i258 = getelementptr i8, ptr %106, i32 %conv.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i258, i32 %conv158
  %113 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %add.ptr3.i, align 2
  %115 = tail call i16 @llvm.bswap.i16(i16 %114) #3
  %conv4.i = zext i16 %115 to i32
  %and.i = and i16 %115, 12
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %and.i)
  %cmp.not.i = icmp eq i16 %and.i, 4
  br i1 %cmp.not.i, label %if.then155.land.end41.i_crit_edge, label %land.lhs.true.i

if.then155.land.end41.i_crit_edge:                ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end41.i

land.lhs.true.i:                                  ; preds = %if.then155
  %bssid.i = getelementptr inbounds %struct.rtl_priv, ptr %110, i32 0, i32 9, i32 34
  %and10.i = and i32 %conv4.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %land.lhs.true.i.cond.end20.i_crit_edge

land.lhs.true.i.cond.end20.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end20.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  %and14.i = and i32 %conv4.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %cond.false18.i, label %cond.true16.i

cond.true16.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #5
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 3
  br label %cond.end20.i

cond.false18.i:                                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #5
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 4
  br label %cond.end20.i

cond.end20.i:                                     ; preds = %cond.false18.i, %cond.true16.i, %land.lhs.true.i.cond.end20.i_crit_edge
  %cond21.i = phi ptr [ %addr2.i, %cond.true16.i ], [ %addr3.i, %cond.false18.i ], [ %addr1.i, %land.lhs.true.i.cond.end20.i_crit_edge ]
  %116 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %bssid.i, align 4
  %118 = ptrtoint ptr %cond21.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cond21.i, align 4
  %xor.i.i = xor i32 %119, %117
  %add.ptr.i.i = getelementptr %struct.rtl_priv, ptr %110, i32 0, i32 9, i32 34, i32 4
  %120 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %cond21.i, i32 4
  %122 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %123, %121
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true23.i, label %cond.end20.i.land.end41.i_crit_edge

cond.end20.i.land.end41.i_crit_edge:              ; preds = %cond.end20.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end41.i

land.lhs.true23.i:                                ; preds = %cond.end20.i
  %124 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %124)
  %bf.load.i = load i8, ptr %icv, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.load.i)
  %125 = icmp ult i8 %bf.load.i, 32
  br i1 %125, label %land.rhs37.i, label %land.lhs.true23.i.land.end41.i_crit_edge

land.lhs.true23.i.land.end41.i_crit_edge:         ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end41.i

land.rhs37.i:                                     ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #5
  %dev_addr.i = getelementptr inbounds %struct.rtl_priv, ptr %110, i32 0, i32 17, i32 19
  %126 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %addr1.i, align 4
  %128 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %dev_addr.i, align 4
  %xor.i1.i = xor i32 %129, %127
  %add.ptr.i2.i = getelementptr i8, ptr %addr1.i, i32 4
  %130 = ptrtoint ptr %add.ptr.i2.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %add.ptr.i2.i, align 2
  %add.ptr1.i3.i = getelementptr %struct.rtl_priv, ptr %110, i32 0, i32 17, i32 19, i32 4
  %132 = ptrtoint ptr %add.ptr1.i3.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %add.ptr1.i3.i, align 2
  %xor37.i4.i = xor i16 %133, %131
  %xor3.i5.i = zext i16 %xor37.i4.i to i32
  %or.i6.i = or i32 %xor.i1.i, %xor3.i5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i6.i)
  %cmp.i7.i = icmp eq i32 %or.i6.i, 0
  br label %land.end41.i

land.end41.i:                                     ; preds = %land.rhs37.i, %land.lhs.true23.i.land.end41.i_crit_edge, %cond.end20.i.land.end41.i_crit_edge, %if.then155.land.end41.i_crit_edge
  %134 = phi i1 [ true, %land.rhs37.i ], [ false, %land.lhs.true23.i.land.end41.i_crit_edge ], [ false, %cond.end20.i.land.end41.i_crit_edge ], [ false, %if.then155.land.end41.i_crit_edge ]
  %135 = phi i1 [ %cmp.i7.i, %land.rhs37.i ], [ false, %land.lhs.true23.i.land.end41.i_crit_edge ], [ false, %cond.end20.i.land.end41.i_crit_edge ], [ false, %if.then155.land.end41.i_crit_edge ]
  %136 = and i16 %114, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %136)
  %cmp.i8.i = icmp eq i16 %136, -32768
  %frombool.i.i = zext i1 %134 to i8
  %frombool1.i.i = zext i1 %135 to i8
  %frombool2.i.i = zext i1 %cmp.i8.i to i8
  %137 = ptrtoint ptr %is_cck to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %is_cck, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool.not.i.i = icmp eq i8 %138, 0
  %packet_matchbssid.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 40
  %139 = ptrtoint ptr %packet_matchbssid.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %frombool.i.i, ptr %packet_matchbssid.i.i, align 2
  %packet_toself8.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 43
  %140 = ptrtoint ptr %packet_toself8.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %frombool1.i.i, ptr %packet_toself8.i.i, align 1
  %packet_beacon11.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 44
  %141 = ptrtoint ptr %packet_beacon11.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %frombool2.i.i, ptr %packet_beacon11.i.i, align 2
  %rx_mimo_sig_qual.i.i = getelementptr %struct.rtl_stats, ptr %stats, i32 0, i32 35
  %142 = ptrtoint ptr %rx_mimo_sig_qual.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 -1, ptr %rx_mimo_sig_qual.i.i, align 4
  %arrayidx14.i.i = getelementptr %struct.rtl_stats, ptr %stats, i32 0, i32 35, i32 1
  %143 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 -1, ptr %arrayidx14.i.i, align 1
  br i1 %tobool.not.i.i, label %if.else168.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.end41.i
  %rfpwr_state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %110, i32 0, i32 21, i32 24
  %144 = ptrtoint ptr %rfpwr_state.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rfpwr_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp.i9.i = icmp eq i32 %145, 0
  br i1 %cmp.i9.i, label %if.end.i.i, label %if.then.i.i.if.then18.i.i_crit_edge

if.then.i.i.if.then18.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then18.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %146 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %priv.i, align 8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %147, i32 0, i32 32
  %148 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cfg.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %149, i32 0, i32 4
  %150 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ops.i.i.i, align 4
  %get_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %151, i32 0, i32 45
  %152 = ptrtoint ptr %get_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %get_bbreg.i.i.i, align 4
  %call.i.i.i = tail call i32 %153(ptr noundef %hw, i32 noundef 2084, i32 noundef 512) #3
  %conv.i.i = trunc i32 %call.i.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i)
  %tobool17.not.i.i = icmp eq i8 %conv.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end.i.i.if.then18.i.i_crit_edge, label %if.else44.i.i

if.end.i.i.if.then18.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then18.i.i

if.then18.i.i:                                    ; preds = %if.end.i.i.if.then18.i.i_crit_edge, %if.then.i.i.if.then18.i.i_crit_edge
  %cck_agc_rpt19.i.i = getelementptr inbounds %struct.phy_sts_cck_8192s_t, ptr %add.ptr159, i32 0, i32 2
  %154 = ptrtoint ptr %cck_agc_rpt19.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %cck_agc_rpt19.i.i, align 1
  %156 = lshr i8 %155, 6
  %conv25.i.i = zext i8 %156 to i32
  %157 = zext i32 %conv25.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %conv25.i.i, label %if.then18.unreachabledefault.i.i [
    i32 3, label %if.then18.i.i.if.end79.i.i_crit_edge
    i32 2, label %sw.bb29.i.i
    i32 1, label %sw.bb34.i.i
    i32 0, label %sw.bb39.i.i
  ]

if.then18.i.i.if.end79.i.i_crit_edge:             ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end79.i.i

sw.bb29.i.i:                                      ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end79.i.i

sw.bb34.i.i:                                      ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end79.i.i

sw.bb39.i.i:                                      ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end79.i.i

if.then18.unreachabledefault.i.i:                 ; preds = %if.then18.i.i
  unreachable

if.else44.i.i:                                    ; preds = %if.end.i.i
  %cck_agc_rpt46.i.i = getelementptr inbounds %struct.phy_sts_cck_8192s_t, ptr %add.ptr159, i32 0, i32 2
  %158 = ptrtoint ptr %cck_agc_rpt46.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %cck_agc_rpt46.i.i, align 1
  %160 = lshr i8 %159, 5
  %161 = and i8 %160, 3
  %conv54.i.i = zext i8 %161 to i32
  %162 = zext i32 %conv54.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %conv54.i.i, label %if.else44.unreachabledefault.i.i [
    i32 3, label %sw.bb55.i.i
    i32 2, label %sw.bb60.i.i
    i32 1, label %sw.bb66.i.i
    i32 0, label %sw.bb72.i.i
  ]

sw.bb55.i.i:                                      ; preds = %if.else44.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %163 = shl i8 %159, 1
  br label %if.end79.i.i

sw.bb60.i.i:                                      ; preds = %if.else44.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %164 = shl i8 %159, 1
  br label %if.end79.i.i

sw.bb66.i.i:                                      ; preds = %if.else44.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %165 = shl i8 %159, 1
  br label %if.end79.i.i

sw.bb72.i.i:                                      ; preds = %if.else44.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %166 = shl i8 %159, 1
  br label %if.end79.i.i

if.else44.unreachabledefault.i.i:                 ; preds = %if.else44.i.i
  unreachable

if.end79.i.i:                                     ; preds = %sw.bb72.i.i, %sw.bb66.i.i, %sw.bb60.i.i, %sw.bb55.i.i, %sw.bb39.i.i, %sw.bb34.i.i, %sw.bb29.i.i, %if.then18.i.i.if.end79.i.i_crit_edge
  %.sink22.i.i = phi i8 [ %163, %sw.bb55.i.i ], [ %164, %sw.bb60.i.i ], [ %165, %sw.bb66.i.i ], [ %166, %sw.bb72.i.i ], [ %155, %sw.bb29.i.i ], [ %155, %sw.bb34.i.i ], [ %155, %sw.bb39.i.i ], [ %155, %if.then18.i.i.if.end79.i.i_crit_edge ]
  %.sink.i.i = phi i8 [ -40, %sw.bb55.i.i ], [ -20, %sw.bb60.i.i ], [ -2, %sw.bb66.i.i ], [ 14, %sw.bb72.i.i ], [ -20, %sw.bb29.i.i ], [ -2, %sw.bb34.i.i ], [ 14, %sw.bb39.i.i ], [ -40, %if.then18.i.i.if.end79.i.i_crit_edge ]
  %167 = and i8 %.sink22.i.i, 62
  %sub58.i.i = sub nsw i8 %.sink.i.i, %167
  %call80.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub58.i.i) #3
  %add.i.i = add i8 %call80.i.i, 6
  %168 = tail call i8 @llvm.umin.i8(i8 %add.i.i, i8 100) #3
  %169 = add nsw i8 %168, -35
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %169)
  %170 = icmp ult i8 %169, 8
  br i1 %170, label %if.then94.i.i, label %if.else98.i.i

if.then94.i.i:                                    ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub96.i.i = add nsw i8 %168, -2
  br label %if.end137.i.i

if.else98.i.i:                                    ; preds = %if.end79.i.i
  %171 = add nsw i8 %168, -27
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %171)
  %172 = icmp ult i8 %171, 8
  br i1 %172, label %if.then106.i.i, label %if.else110.i.i

if.then106.i.i:                                   ; preds = %if.else98.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub108.i.i = add nsw i8 %168, -6
  br label %if.end137.i.i

if.else110.i.i:                                   ; preds = %if.else98.i.i
  %173 = add nsw i8 %168, -15
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %173)
  %174 = icmp ult i8 %173, 12
  br i1 %174, label %if.then118.i.i, label %if.else122.i.i

if.then118.i.i:                                   ; preds = %if.else110.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub120.i.i = add nsw i8 %168, -8
  br label %if.end137.i.i

if.else122.i.i:                                   ; preds = %if.else110.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %175 = add nsw i8 %168, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %175)
  %176 = icmp ult i8 %175, 10
  %sub132.i.i = add nsw i8 %168, -4
  %spec.select5.i.i = select i1 %176, i8 %sub132.i.i, i8 %168
  br label %if.end137.i.i

if.end137.i.i:                                    ; preds = %if.else122.i.i, %if.then118.i.i, %if.then106.i.i, %if.then94.i.i
  %pwdb_all.0.i.i = phi i8 [ %sub96.i.i, %if.then94.i.i ], [ %sub108.i.i, %if.then106.i.i ], [ %sub120.i.i, %if.then118.i.i ], [ %spec.select5.i.i, %if.else122.i.i ]
  %conv138.i.i = zext i8 %pwdb_all.0.i.i to i32
  %rx_pwdb_all.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 29
  %177 = ptrtoint ptr %rx_pwdb_all.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %conv138.i.i, ptr %rx_pwdb_all.i.i, align 4
  %conv139.i.i = sext i8 %sub58.i.i to i32
  %recvsignalpower.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 16
  %178 = ptrtoint ptr %recvsignalpower.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %conv139.i.i, ptr %recvsignalpower.i.i, align 4
  br i1 %134, label %if.then141.i.i, label %if.end137.i.i._rtl92se_translate_rx_signal_stuff.exit_crit_edge

if.end137.i.i._rtl92se_translate_rx_signal_stuff.exit_crit_edge: ; preds = %if.end137.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_rtl92se_translate_rx_signal_stuff.exit

if.then141.i.i:                                   ; preds = %if.end137.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %pwdb_all.0.i.i)
  %cmp143.i.i = icmp ugt i8 %pwdb_all.0.i.i, 40
  br i1 %cmp143.i.i, label %if.then141.i.i.if.end162.i.i_crit_edge, label %if.else146.i.i

if.then141.i.i.if.end162.i.i_crit_edge:           ; preds = %if.then141.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end162.i.i

if.else146.i.i:                                   ; preds = %if.then141.i.i
  %sq_rpt.i.i = getelementptr inbounds %struct.phy_sts_cck_8192s_t, ptr %add.ptr159, i32 0, i32 1
  %179 = ptrtoint ptr %sq_rpt.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %sq_rpt.i.i, align 1
  %conv147.i.i = zext i8 %180 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %180)
  %cmp148.i.i = icmp ugt i8 %180, 64
  br i1 %cmp148.i.i, label %if.else146.i.i.if.end162.i.i_crit_edge, label %if.else151.i.i

if.else146.i.i.if.end162.i.i_crit_edge:           ; preds = %if.else146.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end162.i.i

if.else151.i.i:                                   ; preds = %if.else146.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %180)
  %cmp153.i.i = icmp ult i8 %180, 20
  br i1 %cmp153.i.i, label %if.else151.i.i.if.end162.i.i_crit_edge, label %if.else156.i.i

if.else151.i.i.if.end162.i.i_crit_edge:           ; preds = %if.else151.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end162.i.i

if.else156.i.i:                                   ; preds = %if.else151.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub158.i.i = sub nsw i16 64, %conv147.i.i
  %mul.i.i = mul nsw i16 %sub158.i.i, 100
  %div12.i.i = sdiv i16 %mul.i.i, 44
  %conv159.i.i = trunc i16 %div12.i.i to i8
  br label %if.end162.i.i

if.end162.i.i:                                    ; preds = %if.else156.i.i, %if.else151.i.i.if.end162.i.i_crit_edge, %if.else146.i.i.if.end162.i.i_crit_edge, %if.then141.i.i.if.end162.i.i_crit_edge
  %sq.0.i.i = phi i8 [ %conv159.i.i, %if.else156.i.i ], [ 100, %if.then141.i.i.if.end162.i.i_crit_edge ], [ 0, %if.else146.i.i.if.end162.i.i_crit_edge ], [ 100, %if.else151.i.i.if.end162.i.i_crit_edge ]
  %signalquality.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 15
  %181 = ptrtoint ptr %signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %sq.0.i.i, ptr %signalquality.i.i, align 8
  %182 = ptrtoint ptr %rx_mimo_sig_qual.i.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %sq.0.i.i, ptr %rx_mimo_sig_qual.i.i, align 4
  %183 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 -1, ptr %arrayidx14.i.i, align 1
  br label %_rtl92se_translate_rx_signal_stuff.exit

if.else168.i.i:                                   ; preds = %land.end41.i
  %rfpath_rxenable.i.i = getelementptr %struct.rtl_priv, ptr %110, i32 0, i32 15, i32 15
  %arrayidx169.i.i = getelementptr %struct.rtl_priv, ptr %110, i32 0, i32 15, i32 15, i32 1
  %184 = ptrtoint ptr %arrayidx169.i.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %arrayidx169.i.i, align 1
  %185 = ptrtoint ptr %rfpath_rxenable.i.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 1, ptr %rfpath_rxenable.i.i, align 2
  %186 = ptrtoint ptr %add.ptr159 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %add.ptr159, align 1
  %188 = shl i8 %187, 1
  %189 = and i8 %188, 126
  %sub187.i.i = add nsw i8 %189, -110
  %call193.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub187.i.i) #3
  %conv194.i.i = zext i8 %call193.i.i to i32
  %arrayidx197.i.i = getelementptr %struct.rx_fwinfo, ptr %add.ptr159, i32 0, i32 5, i32 0
  %190 = ptrtoint ptr %arrayidx197.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx197.i.i, align 1
  %192 = sdiv i8 %191, 2
  %div199.i.i = sext i8 %192 to i32
  %arrayidx201.i.i = getelementptr %struct.rtl_priv, ptr %110, i32 0, i32 24, i32 10, i32 0
  %193 = ptrtoint ptr %arrayidx201.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %div199.i.i, ptr %arrayidx201.i.i, align 4
  br i1 %134, label %if.then203.i.i, label %if.else168.i.i.for.inc.i.i_crit_edge

if.else168.i.i.for.inc.i.i_crit_edge:             ; preds = %if.else168.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i

if.then203.i.i:                                   ; preds = %if.else168.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx206.i.i = getelementptr %struct.rtl_stats, ptr %stats, i32 0, i32 30, i32 0
  %194 = ptrtoint ptr %arrayidx206.i.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %call193.i.i, ptr %arrayidx206.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then203.i.i, %if.else168.i.i.for.inc.i.i_crit_edge
  %195 = ptrtoint ptr %arrayidx169.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx169.i.i, align 1, !range !28
  %spec.select.1.i.i = add nuw nsw i8 %196, 1
  %arrayidx183.1.i.i = getelementptr [4 x i8], ptr %add.ptr159, i32 0, i32 1
  %197 = ptrtoint ptr %arrayidx183.1.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx183.1.i.i, align 1
  %199 = shl i8 %198, 1
  %200 = and i8 %199, 126
  %sub187.1.i.i = add nsw i8 %200, -110
  %call193.1.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub187.1.i.i) #3
  %conv194.1.i.i = zext i8 %call193.1.i.i to i32
  %add195.1.i.i = add nuw nsw i32 %conv194.1.i.i, %conv194.i.i
  %arrayidx197.1.i.i = getelementptr %struct.rx_fwinfo, ptr %add.ptr159, i32 0, i32 5, i32 1
  %201 = ptrtoint ptr %arrayidx197.1.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx197.1.i.i, align 1
  %203 = sdiv i8 %202, 2
  %div199.1.i.i = sext i8 %203 to i32
  %arrayidx201.1.i.i = getelementptr %struct.rtl_priv, ptr %110, i32 0, i32 24, i32 10, i32 1
  %204 = ptrtoint ptr %arrayidx201.1.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %div199.1.i.i, ptr %arrayidx201.1.i.i, align 4
  br i1 %134, label %if.then203.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.1.i.i

if.then203.1.i.i:                                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx206.1.i.i = getelementptr %struct.rtl_stats, ptr %stats, i32 0, i32 30, i32 1
  %205 = ptrtoint ptr %arrayidx206.1.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %call193.1.i.i, ptr %arrayidx206.1.i.i, align 1
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then203.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %pwdb_all209.i.i = getelementptr inbounds %struct.rx_fwinfo, ptr %add.ptr159, i32 0, i32 1
  %206 = ptrtoint ptr %pwdb_all209.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %pwdb_all209.i.i, align 1
  %208 = lshr i8 %207, 1
  %sub213.i.i = add nsw i8 %208, -110
  %call215.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub213.i.i) #3
  %conv216.i.i = zext i8 %call215.i.i to i32
  %rx_pwdb_all217.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 29
  %209 = ptrtoint ptr %rx_pwdb_all217.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %conv216.i.i, ptr %rx_pwdb_all217.i.i, align 4
  %rxpower.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 17
  %210 = ptrtoint ptr %rxpower.i.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %sub213.i.i, ptr %rxpower.i.i, align 8
  %conv218.i.i = sext i8 %sub213.i.i to i32
  %recvsignalpower219.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 16
  %211 = ptrtoint ptr %recvsignalpower219.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %conv218.i.i, ptr %recvsignalpower219.i.i, align 4
  %212 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %is_ht, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool220.not.i.i = icmp eq i8 %213, 0
  br i1 %tobool220.not.i.i, label %for.inc.1.i.i.if.else232.i.i_crit_edge, label %land.lhs.true222.i.i

for.inc.1.i.i.if.else232.i.i_crit_edge:           ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else232.i.i

land.lhs.true222.i.i:                             ; preds = %for.inc.1.i.i
  %214 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %rate, align 1
  %216 = add i8 %215, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %216)
  %217 = icmp ult i8 %216, 8
  br i1 %217, label %land.lhs.true222.i.i.if.end233.i.i_crit_edge, label %land.lhs.true222.i.i.if.else232.i.i_crit_edge

land.lhs.true222.i.i.if.else232.i.i_crit_edge:    ; preds = %land.lhs.true222.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else232.i.i

land.lhs.true222.i.i.if.end233.i.i_crit_edge:     ; preds = %land.lhs.true222.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end233.i.i

if.else232.i.i:                                   ; preds = %land.lhs.true222.i.i.if.else232.i.i_crit_edge, %for.inc.1.i.i.if.else232.i.i_crit_edge
  br label %if.end233.i.i

if.end233.i.i:                                    ; preds = %if.else232.i.i, %land.lhs.true222.i.i.if.end233.i.i_crit_edge
  %exitcond.peel.not.i.i = phi i1 [ false, %land.lhs.true222.i.i.if.end233.i.i_crit_edge ], [ true, %if.else232.i.i ]
  %max_spatial_stream.0.i.i = phi i32 [ 2, %land.lhs.true222.i.i.if.end233.i.i_crit_edge ], [ 1, %if.else232.i.i ]
  %arrayidx241.peel.i.i = getelementptr %struct.rx_fwinfo, ptr %add.ptr159, i32 0, i32 4, i32 0
  %218 = ptrtoint ptr %arrayidx241.peel.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx241.peel.i.i, align 1
  %call242.peel.i.i = tail call zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext %219) #3
  br i1 %134, label %if.end253.peel.i.i, label %if.end233.i.i.for.inc261.peel.i.i_crit_edge

if.end233.i.i.for.inc261.peel.i.i_crit_edge:      ; preds = %if.end233.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc261.peel.i.i

if.end253.peel.i.i:                               ; preds = %if.end233.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %signalquality252.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 15
  %220 = ptrtoint ptr %signalquality252.i.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %call242.peel.i.i, ptr %signalquality252.i.i, align 8
  %221 = ptrtoint ptr %rx_mimo_sig_qual.i.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %call242.peel.i.i, ptr %rx_mimo_sig_qual.i.i, align 1
  br label %for.inc261.peel.i.i

for.inc261.peel.i.i:                              ; preds = %if.end253.peel.i.i, %if.end233.i.i.for.inc261.peel.i.i_crit_edge
  br i1 %exitcond.peel.not.i.i, label %for.inc261.peel.i.i.if.then274.i.i_crit_edge, label %for.inc261.peel.i.i.for.body239.i.i_crit_edge

for.inc261.peel.i.i.for.body239.i.i_crit_edge:    ; preds = %for.inc261.peel.i.i
  br label %for.body239.i.i

for.inc261.peel.i.i.if.then274.i.i_crit_edge:     ; preds = %for.inc261.peel.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then274.i.i

for.body239.i.i:                                  ; preds = %for.inc261.i.i.for.body239.i.i_crit_edge, %for.inc261.peel.i.i.for.body239.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.inc261.i.i.for.body239.i.i_crit_edge ], [ 1, %for.inc261.peel.i.i.for.body239.i.i_crit_edge ]
  %arrayidx241.i.i = getelementptr %struct.rx_fwinfo, ptr %add.ptr159, i32 0, i32 4, i32 %indvars.iv.i.i
  %222 = ptrtoint ptr %arrayidx241.i.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx241.i.i, align 1
  %call242.i.i = tail call zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext %223) #3
  br i1 %134, label %if.end253.i.i, label %for.body239.i.i.for.inc261.i.i_crit_edge

for.body239.i.i.for.inc261.i.i_crit_edge:         ; preds = %for.body239.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc261.i.i

if.end253.i.i:                                    ; preds = %for.body239.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx259.i.i = getelementptr %struct.rtl_stats, ptr %stats, i32 0, i32 35, i32 %indvars.iv.i.i
  %224 = ptrtoint ptr %arrayidx259.i.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %call242.i.i, ptr %arrayidx259.i.i, align 1
  br label %for.inc261.i.i

for.inc261.i.i:                                   ; preds = %if.end253.i.i, %for.body239.i.i.for.inc261.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %max_spatial_stream.0.i.i
  br i1 %exitcond.not.i.i, label %for.inc261.i.i.if.then274.i.i_crit_edge, label %for.inc261.i.i.for.body239.i.i_crit_edge, !llvm.loop !29

for.inc261.i.i.for.body239.i.i_crit_edge:         ; preds = %for.inc261.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body239.i.i

for.inc261.i.i.if.then274.i.i_crit_edge:          ; preds = %for.inc261.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then274.i.i

if.then274.i.i:                                   ; preds = %for.inc261.i.i.if.then274.i.i_crit_edge, %for.inc261.peel.i.i.if.then274.i.i_crit_edge
  %conv271.i.i = zext i8 %spec.select.1.i.i to i32
  %div276.i.i = udiv i32 %add195.1.i.i, %conv271.i.i
  br label %_rtl92se_translate_rx_signal_stuff.exit

_rtl92se_translate_rx_signal_stuff.exit:          ; preds = %if.then274.i.i, %if.end162.i.i, %if.end137.i.i._rtl92se_translate_rx_signal_stuff.exit_crit_edge
  %div276.sink.i.i = phi i32 [ %div276.i.i, %if.then274.i.i ], [ %conv138.i.i, %if.end162.i.i ], [ %conv138.i.i, %if.end137.i.i._rtl92se_translate_rx_signal_stuff.exit_crit_edge ]
  %call277.i.i = tail call i32 @rtl_signal_scale_mapping(ptr noundef %hw, i32 noundef %div276.sink.i.i) #3
  %conv278.i.i = trunc i32 %call277.i.i to i8
  %signalstrength279.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 18
  %225 = ptrtoint ptr %signalstrength279.i.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %conv278.i.i, ptr %signalstrength279.i.i, align 1
  tail call void @rtl_process_phyinfo(ptr noundef %hw, ptr noundef %add.ptr3.i, ptr noundef %stats) #3
  br label %if.end160

if.end160:                                        ; preds = %_rtl92se_translate_rx_signal_stuff.exit, %if.end146.if.end160_crit_edge
  %recvsignalpower = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 16
  %226 = ptrtoint ptr %recvsignalpower to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %recvsignalpower, align 4
  %228 = trunc i32 %227 to i8
  %conv161 = add i8 %228, 10
  %signal = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 13
  %229 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %conv161, ptr %signal, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end160, %entry.cleanup_crit_edge
  ret i1 %tobool87.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtlwifi_rate_mapping(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_tx_fill_desc(ptr noundef %hw, ptr nocapture noundef readonly %hdr, ptr noundef %pdesc8, ptr nocapture noundef readnone %pbd_desc_tx, ptr noundef %info, ptr noundef %sta, ptr noundef %skb, i8 noundef zeroext %hw_queue, ptr noundef %ptcb_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  br i1 %cmp.i.i, label %entry._rtl92se_map_hwqueue_to_fwqueue.exit_crit_edge, label %if.end.i, !prof !31

entry._rtl92se_map_hwqueue_to_fwqueue.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %_rtl92se_map_hwqueue_to_fwqueue.exit

if.end.i:                                         ; preds = %entry
  %9 = trunc i16 %7 to i12
  %trunc.i = and i12 %9, -1024
  %10 = zext i12 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.12)
  switch i12 %trunc.i, label %if.end6.i [
    i12 0, label %if.end.i._rtl92se_map_hwqueue_to_fwqueue.exit_crit_edge
    i12 1024, label %if.end.i._rtl92se_map_hwqueue_to_fwqueue.exit_crit_edge430
  ]

if.end.i._rtl92se_map_hwqueue_to_fwqueue.exit_crit_edge430: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_rtl92se_map_hwqueue_to_fwqueue.exit

if.end.i._rtl92se_map_hwqueue_to_fwqueue.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_rtl92se_map_hwqueue_to_fwqueue.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 18432, i16 %8)
  %cmp.i3.i = icmp eq i16 %8, 18432
  br i1 %cmp.i3.i, label %if.end6.i._rtl92se_map_hwqueue_to_fwqueue.exit_crit_edge, label %if.end9.i

if.end6.i._rtl92se_map_hwqueue_to_fwqueue.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_rtl92se_map_hwqueue_to_fwqueue.exit

if.end9.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %11 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %priority.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %cmp.i = icmp eq i32 %12, 7
  %13 = shl i32 %12, 16
  %.op = and i32 %13, 2031616
  %phi.bo429 = select i1 %cmp.i, i32 393216, i32 %.op
  br label %_rtl92se_map_hwqueue_to_fwqueue.exit

_rtl92se_map_hwqueue_to_fwqueue.exit:             ; preds = %if.end9.i, %if.end6.i._rtl92se_map_hwqueue_to_fwqueue.exit_crit_edge, %if.end.i._rtl92se_map_hwqueue_to_fwqueue.exit_crit_edge, %if.end.i._rtl92se_map_hwqueue_to_fwqueue.exit_crit_edge430, %entry._rtl92se_map_hwqueue_to_fwqueue.exit_crit_edge
  %retval.0.i = phi i32 [ 1048576, %entry._rtl92se_map_hwqueue_to_fwqueue.exit_crit_edge ], [ 1179648, %if.end.i._rtl92se_map_hwqueue_to_fwqueue.exit_crit_edge ], [ 1114112, %if.end6.i._rtl92se_map_hwqueue_to_fwqueue.exit_crit_edge ], [ %phi.bo429, %if.end9.i ], [ 1179648, %if.end.i._rtl92se_map_hwqueue_to_fwqueue.exit_crit_edge430 ]
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 5
  %14 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %seq_ctrl, align 2
  %16 = and i16 %15, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not = icmp eq i16 %16, 0
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %5) #3
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %_rtl92se_map_hwqueue_to_fwqueue.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !32

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev12) #3
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44, i32 3
  %21 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev12, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %24, %if.end.i.i ], [ %22, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #3
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %_rtl92se_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @debug_dma_map_single(ptr noundef %dev12, ptr noundef %5, i32 noundef %20) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %25 = load ptr, ptr @mem_map, align 4
  %26 = ptrtoint ptr %5 to i32
  %sub.i = add i32 %26, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %25, i32 %shr.i
  %and.i = and i32 %26, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev12, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %20, i32 noundef 1, i32 noundef 0) #3
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i311 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev15, i32 noundef %retval.0.i311) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i311)
  %cmp.i312 = icmp eq i32 %retval.0.i311, -1
  br i1 %cmp.i312, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %29 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %opmode, align 8
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %30, label %if.end.if.end35_crit_edge [
    i32 2, label %if.then19
    i32 3, label %if.end.if.then27_crit_edge
    i32 1, label %if.end.if.then27_crit_edge431
  ]

if.end.if.then27_crit_edge431:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then27

if.end.if.then27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then27

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %bw_4020 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %32 = ptrtoint ptr %bw_4020 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bw_4020, align 1
  br label %if.end35

if.then27:                                        ; preds = %if.end.if.then27_crit_edge, %if.end.if.then27_crit_edge431
  %tobool28.not = icmp eq ptr %sta, null
  br i1 %tobool28.not, label %if.then27.if.end35_crit_edge, label %if.then29

if.then27.if.end35_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #5
  %bandwidth = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %34 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bandwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp30 = icmp ne i32 %35, 0
  %conv32 = zext i1 %cmp30 to i8
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.then27.if.end35_crit_edge, %if.then19, %if.end.if.end35_crit_edge
  %bw_40.0 = phi i8 [ %33, %if.then19 ], [ %conv32, %if.then29 ], [ 0, %if.then27.if.end35_crit_edge ], [ 0, %if.end.if.end35_crit_edge ]
  %36 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %seq_ctrl, align 2
  %38 = and i16 %37, -3841
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %40 = lshr exact i16 %39, 4
  tail call void @rtl_get_tcb_desc(ptr noundef %hw, ptr noundef %info, ptr noundef %sta, ptr noundef %skb, ptr noundef %ptcb_desc) #3
  %41 = call ptr @memset(ptr %pdesc8, i32 0, i32 36)
  %42 = and i16 %3, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 18432, i16 %42)
  %cmp.i313 = icmp eq i16 %42, 18432
  br i1 %cmp.i313, label %if.end35.if.then48_crit_edge, label %lor.lhs.false42

if.end35.if.then48_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then48

lor.lhs.false42:                                  ; preds = %if.end35
  %43 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %43)
  %cmp.i314 = icmp eq i16 %43, 1024
  %44 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %extract.t = icmp eq i16 %44, 0
  %brmerge = select i1 %cmp.i314, i1 true, i1 %tobool.not
  %.mux = or i1 %cmp.i314, %extract.t
  br i1 %brmerge, label %lor.lhs.false42.if.then48_crit_edge, label %lor.lhs.false42.if.end192_crit_edge

lor.lhs.false42.if.end192_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end192

lor.lhs.false42.if.then48_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then48

if.then48:                                        ; preds = %lor.lhs.false42.if.then48_crit_edge, %if.end35.if.then48_crit_edge
  %lastseg.0.off0426 = phi i1 [ true, %if.end35.if.then48_crit_edge ], [ %.mux, %lor.lhs.false42.if.then48_crit_edge ]
  %useramask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 14
  %45 = ptrtoint ptr %useramask to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %useramask, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool49.not = icmp eq i8 %46, 0
  br i1 %tobool49.not, label %if.then48.if.end62_crit_edge, label %if.then50

if.then48.if.end62_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end62

if.then50:                                        ; preds = %if.then48
  %mac_id = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 4
  %47 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %mac_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %48)
  %cmp52 = icmp ult i8 %48, 32
  br i1 %cmp52, label %if.then54, label %if.then50.if.end62_crit_edge

if.then50.if.end62_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end62

if.then54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #5
  %conv51 = zext i8 %48 to i32
  %add.ptr.i315 = getelementptr i32, ptr %pdesc8, i32 1
  %49 = ptrtoint ptr %add.ptr.i315 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i315, align 4
  %and.i.i = and i32 %50, -520093697
  %51 = shl nuw nsw i32 %conv51, 24
  %52 = and i32 %51, 520093696
  %or.i.i = or i32 %and.i.i, %52
  store i32 %or.i.i, ptr %add.ptr.i315, align 4
  %53 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %mac_id, align 1
  %55 = and i8 %54, 31
  %phi.bo = zext i8 %55 to i32
  br label %if.end62

if.end62:                                         ; preds = %if.then54, %if.then50.if.end62_crit_edge, %if.then48.if.end62_crit_edge
  %reserved_macid.0 = phi i32 [ %phi.bo, %if.then54 ], [ 0, %if.then50.if.end62_crit_edge ], [ 0, %if.then48.if.end62_crit_edge ]
  %add.ptr.i316 = getelementptr i32, ptr %pdesc8, i32 2
  %56 = ptrtoint ptr %add.ptr.i316 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i316, align 4
  %and.i.i319 = and i32 %57, -32
  %or.i.i320 = or i32 %and.i.i319, %reserved_macid.0
  store i32 %or.i.i320, ptr %add.ptr.i316, align 4
  %hw_rate = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 5
  %58 = ptrtoint ptr %hw_rate to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %hw_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %59)
  %cmp65 = icmp ugt i8 %59, 11
  %add.ptr.i321 = getelementptr i32, ptr %pdesc8, i32 4
  %60 = ptrtoint ptr %add.ptr.i321 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i321, align 4
  %and.i.i322 = and i32 %61, -257
  %62 = select i1 %cmp65, i32 256, i32 0
  %or.i.i323 = or i32 %and.i.i322, %62
  store i32 %or.i.i323, ptr %add.ptr.i321, align 4
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %63 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp67 = icmp eq i32 %64, 0
  br i1 %cmp67, label %if.then69, label %if.end62.if.end92_crit_edge

if.end62.if.end92_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end92

if.then69:                                        ; preds = %if.end62
  %65 = ptrtoint ptr %hw_rate to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %hw_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %66)
  %switch = icmp ult i8 %66, 4
  br i1 %switch, label %if.then89, label %if.then69.if.end92_crit_edge

if.then69.if.end92_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end92

if.then89:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #5
  %67 = ptrtoint ptr %hw_rate to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 6, ptr %hw_rate, align 2
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.then69.if.end92_crit_edge, %if.end62.if.end92_crit_edge
  %add.ptr.i324 = getelementptr i32, ptr %pdesc8, i32 5
  %68 = ptrtoint ptr %add.ptr.i324 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i324, align 4
  %70 = ptrtoint ptr %hw_rate to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %hw_rate, align 2
  %conv94 = zext i8 %71 to i32
  %and.i.i327 = and i32 %69, -8257537
  %72 = shl nuw nsw i32 %conv94, 17
  %73 = and i32 %72, 8257536
  %or.i.i328 = or i32 %73, %and.i.i327
  store i32 %or.i.i328, ptr %add.ptr.i324, align 4
  %use_shortgi = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 2
  %74 = ptrtoint ptr %use_shortgi to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load = load i8, ptr %use_shortgi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %75 = icmp ult i8 %bf.load, 64
  br i1 %75, label %if.end92.if.end103_crit_edge, label %if.then102

if.end92.if.end103_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end103

if.then102:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #5
  %76 = ptrtoint ptr %add.ptr.i321 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i321, align 4
  %and.i.i330 = and i32 %77, -513
  store i32 %and.i.i330, ptr %add.ptr.i321, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end92.if.end103_crit_edge
  %78 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %info, align 8
  %and104 = and i32 %79, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end103.if.end107_crit_edge, label %if.then106

if.end103.if.end107_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end107

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #5
  %80 = ptrtoint ptr %add.ptr.i316 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i316, align 4
  %or.i.i332 = or i32 %81, 32
  store i32 %or.i.i332, ptr %add.ptr.i316, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %if.end103.if.end107_crit_edge
  %add.ptr.i333 = getelementptr i32, ptr %pdesc8, i32 3
  %82 = ptrtoint ptr %add.ptr.i333 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.i333, align 4
  %and.i.i334 = and i32 %83, -65296
  %84 = tail call i16 @llvm.bswap.i16(i16 %40)
  %85 = zext i16 %84 to i32
  %or.i.i335 = or i32 %and.i.i334, %85
  %86 = ptrtoint ptr %add.ptr.i333 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %or.i.i335, ptr %add.ptr.i333, align 4
  %87 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load109 = load i16, ptr %ptcb_desc, align 4
  %88 = and i16 %bf.load109, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool113.not = icmp eq i16 %88, 0
  %89 = lshr i16 %bf.load109, 9
  %.lobit310 = and i16 %89, 1
  %90 = xor i16 %.lobit310, 1
  %narrow = select i1 %tobool113.not, i16 0, i16 %90
  %91 = zext i16 %narrow to i32
  %92 = ptrtoint ptr %add.ptr.i321 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr.i321, align 4
  %and.i.i339 = and i32 %93, -1048577
  %94 = shl nuw nsw i32 %91, 20
  %or.i.i340 = or i32 %94, %and.i.i339
  store i32 %or.i.i340, ptr %add.ptr.i321, align 4
  %95 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load121 = load i16, ptr %ptcb_desc, align 4
  %96 = lshr i16 %bf.load121, 9
  %97 = zext i16 %96 to i32
  %and.i.i342 = and i32 %or.i.i340, -524289
  %98 = shl nuw nsw i32 %97, 19
  %99 = and i32 %98, 524288
  %or.i.i343 = or i32 %and.i.i342, %99
  store i32 %or.i.i343, ptr %add.ptr.i321, align 4
  %bf.load128 = load i16, ptr %ptcb_desc, align 4
  %and.i.i345 = and i32 %or.i.i343, -97
  %100 = lshr i16 %bf.load128, 6
  %101 = and i16 %100, 32
  %102 = zext i16 %101 to i32
  %or.i.i346 = or i32 %and.i.i345, %102
  store i32 %or.i.i346, ptr %add.ptr.i321, align 4
  %rts_rate = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 1
  %103 = ptrtoint ptr %rts_rate to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %rts_rate, align 2
  %conv135 = zext i8 %104 to i32
  %and.i.i350 = and i32 %or.i.i346, -1056964677
  %105 = shl nuw i32 %conv135, 24
  %106 = and i32 %105, 1056964608
  %or.i.i351 = or i32 %and.i.i350, %106
  store i32 %or.i.i351, ptr %add.ptr.i321, align 4
  %bf.load136 = load i16, ptr %ptcb_desc, align 4
  %and.i.i355 = and i32 %or.i.i351, -93
  %107 = lshr i16 %bf.load136, 3
  %108 = and i16 %107, 8
  %109 = zext i16 %108 to i32
  %or.i.i356 = or i32 %and.i.i355, %109
  store i32 %or.i.i356, ptr %add.ptr.i321, align 4
  %110 = load i8, ptr %rts_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %110)
  %cmp143 = icmp ult i8 %110, 12
  %111 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %111)
  %bf.load145 = load i16, ptr %ptcb_desc, align 4
  %. = select i1 %cmp143, i16 8, i16 7
  %112 = lshr i16 %bf.load145, %.
  %and.i.i358 = and i32 %or.i.i356, -87
  %cond159.in = shl nuw nsw i16 %112, 1
  %113 = and i16 %cond159.in, 2
  %114 = zext i16 %113 to i32
  %or.i.i359 = or i32 %and.i.i358, %114
  %115 = ptrtoint ptr %add.ptr.i321 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %or.i.i359, ptr %add.ptr.i321, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40.0)
  %tobool160.not = icmp eq i8 %bw_40.0, 0
  br i1 %tobool160.not, label %if.else170, label %if.then161

if.then161:                                       ; preds = %if.end107
  %116 = ptrtoint ptr %ptcb_desc to i32
  call void @__asan_load2_noabort(i32 %116)
  %bf.load162 = load i16, ptr %ptcb_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load162)
  %tobool165.not = icmp ult i16 %bf.load162, 16384
  br i1 %tobool165.not, label %if.else167, label %if.then166

if.then166:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #5
  %or.i.i362 = and i32 %or.i.i359, -7253
  %and.i.i364 = or i32 %or.i.i362, 1024
  br label %if.end171

if.else167:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #5
  %and.i.i366 = and i32 %or.i.i359, -1109
  %117 = ptrtoint ptr %add.ptr.i321 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %and.i.i366, ptr %add.ptr.i321, align 4
  %cur_40_prime_sc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 46
  %118 = ptrtoint ptr %cur_40_prime_sc to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %cur_40_prime_sc, align 1
  %conv168 = zext i8 %119 to i32
  %and.i.i370 = and i32 %or.i.i359, -7253
  %120 = shl nuw nsw i32 %conv168, 11
  %121 = and i32 %120, 6144
  %or.i.i371 = or i32 %121, %and.i.i370
  br label %if.end171

if.else170:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #5
  %and.i.i375 = and i32 %or.i.i359, -7253
  br label %if.end171

if.end171:                                        ; preds = %if.else170, %if.else167, %if.then166
  %and.i.i364.sink = phi i32 [ %and.i.i364, %if.then166 ], [ %or.i.i371, %if.else167 ], [ %and.i.i375, %if.else170 ]
  %122 = ptrtoint ptr %add.ptr.i321 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %and.i.i364.sink, ptr %add.ptr.i321, align 4
  %123 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pdesc8, align 4
  %and.i.i377 = and i32 %124, -65297
  %or.i.i378 = or i32 %and.i.i377, 8192
  store i32 %or.i.i378, ptr %pdesc8, align 4
  %125 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %len, align 4
  %conv174 = and i32 %126, 65535
  %and.i.i379 = and i32 %or.i.i378, 8431
  %127 = tail call i32 @llvm.bswap.i32(i32 %conv174) #3
  %or.i.i380 = or i32 %127, %and.i.i379
  %128 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %or.i.i380, ptr %pdesc8, align 4
  %129 = ptrtoint ptr %add.ptr.i321 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %add.ptr.i321, align 4
  %ratr_index = getelementptr inbounds %struct.rtl_tcb_desc, ptr %ptcb_desc, i32 0, i32 3
  %131 = ptrtoint ptr %ratr_index to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %ratr_index, align 4
  %conv175 = zext i8 %132 to i32
  %and.i.i384 = and i32 %130, -14680065
  %133 = shl nuw nsw i32 %conv175, 21
  %134 = and i32 %133, 14680064
  %or.i.i385 = or i32 %134, %and.i.i384
  store i32 %or.i.i385, ptr %add.ptr.i321, align 4
  %hw_key = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 12
  %135 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hw_key, align 4
  %tobool176.not = icmp eq ptr %136, null
  br i1 %tobool176.not, label %if.end171.if.end181_crit_edge, label %if.then177

if.end171.if.end181_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end181

if.then177:                                       ; preds = %if.end171
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %cipher, align 8
  %139 = zext i32 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %138, label %sw.default [
    i32 1027073, label %if.then177.sw.bb_crit_edge
    i32 1027077, label %if.then177.sw.bb_crit_edge432
    i32 1027074, label %sw.bb179
    i32 1027076, label %sw.bb180
  ]

if.then177.sw.bb_crit_edge432:                    ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.then177.sw.bb_crit_edge:                       ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

sw.bb:                                            ; preds = %if.then177.sw.bb_crit_edge, %if.then177.sw.bb_crit_edge432
  %add.ptr.i386 = getelementptr i32, ptr %pdesc8, i32 1
  %140 = ptrtoint ptr %add.ptr.i386 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %add.ptr.i386, align 4
  %and.i.i387 = and i32 %141, -49153
  %or.i.i388 = or i32 %and.i.i387, 16384
  store i32 %or.i.i388, ptr %add.ptr.i386, align 4
  br label %if.end181

sw.bb179:                                         ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i389 = getelementptr i32, ptr %pdesc8, i32 1
  %142 = ptrtoint ptr %add.ptr.i389 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %add.ptr.i389, align 4
  %and.i.i390 = and i32 %143, -49153
  %or.i.i391 = or i32 %and.i.i390, 32768
  store i32 %or.i.i391, ptr %add.ptr.i389, align 4
  br label %if.end181

sw.bb180:                                         ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i392 = getelementptr i32, ptr %pdesc8, i32 1
  %144 = ptrtoint ptr %add.ptr.i392 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %add.ptr.i392, align 4
  %or.i.i394 = or i32 %145, 49152
  store i32 %or.i.i394, ptr %add.ptr.i392, align 4
  br label %if.end181

sw.default:                                       ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i395 = getelementptr i32, ptr %pdesc8, i32 1
  %146 = ptrtoint ptr %add.ptr.i395 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %add.ptr.i395, align 4
  %and.i.i396 = and i32 %147, -49153
  store i32 %and.i.i396, ptr %add.ptr.i395, align 4
  br label %if.end181

if.end181:                                        ; preds = %sw.default, %sw.bb180, %sw.bb179, %sw.bb, %if.end171.if.end181_crit_edge
  %148 = ptrtoint ptr %add.ptr.i324 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %add.ptr.i324, align 4
  %and.i.i398 = and i32 %149, 16711679
  store i32 %and.i.i398, ptr %add.ptr.i324, align 4
  %add.ptr.i399 = getelementptr i32, ptr %pdesc8, i32 1
  %150 = ptrtoint ptr %add.ptr.i399 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %add.ptr.i399, align 4
  %and.i.i402 = and i32 %151, -2031617
  %or.i.i403 = or i32 %and.i.i402, %retval.0.i
  store i32 %or.i.i403, ptr %add.ptr.i399, align 4
  %or.i.i405 = or i32 %and.i.i398, 7936
  store i32 %or.i.i405, ptr %add.ptr.i324, align 4
  %152 = ptrtoint ptr %use_shortgi to i32
  call void @__asan_load1_noabort(i32 %152)
  %bf.load183 = load i8, ptr %use_shortgi, align 1
  %153 = ptrtoint ptr %add.ptr.i321 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %add.ptr.i321, align 4
  %and.i.i407 = and i32 %154, -129
  %155 = shl i8 %bf.load183, 2
  %156 = and i8 %155, -128
  %157 = zext i8 %156 to i32
  %or.i.i408 = or i32 %and.i.i407, %157
  store i32 %or.i.i408, ptr %add.ptr.i321, align 4
  %158 = and i16 %3, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %158)
  %cmp.i409 = icmp eq i16 %158, -30720
  br i1 %cmp.i409, label %if.end181.if.end192_crit_edge, label %if.then190

if.end181.if.end192_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end192

if.then190:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #5
  %or.i.i411 = or i32 %or.i.i403, 256
  %159 = ptrtoint ptr %add.ptr.i399 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %or.i.i411, ptr %add.ptr.i399, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.then190, %if.end181.if.end192_crit_edge, %lor.lhs.false42.if.end192_crit_edge
  %lastseg.0.off0425 = phi i1 [ %lastseg.0.off0426, %if.end181.if.end192_crit_edge ], [ %lastseg.0.off0426, %if.then190 ], [ %extract.t, %lor.lhs.false42.if.end192_crit_edge ]
  %firstseg.0.off0423 = phi i32 [ 8, %if.end181.if.end192_crit_edge ], [ 8, %if.then190 ], [ 0, %lor.lhs.false42.if.end192_crit_edge ]
  %160 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %pdesc8, align 4
  %and.i.i412 = and i32 %161, -13
  %162 = select i1 %lastseg.0.off0425, i32 4, i32 0
  %or.i.i413 = or i32 %162, %firstseg.0.off0423
  %or.i.i415 = or i32 %or.i.i413, %and.i.i412
  store i32 %or.i.i415, ptr %pdesc8, align 4
  %163 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %len, align 4
  %conv201 = and i32 %164, 65535
  %add.ptr.i416 = getelementptr i32, ptr %pdesc8, i32 7
  %165 = ptrtoint ptr %add.ptr.i416 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %add.ptr.i416, align 4
  %and.i.i417 = and i32 %166, 65535
  %167 = tail call i32 @llvm.bswap.i32(i32 %conv201) #3
  %or.i.i418 = or i32 %and.i.i417, %167
  %168 = ptrtoint ptr %add.ptr.i416 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %or.i.i418, ptr %add.ptr.i416, align 4
  %169 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i311) #3
  %add.ptr.i419 = getelementptr i32, ptr %pdesc8, i32 8
  %170 = ptrtoint ptr %add.ptr.i419 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %add.ptr.i419, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end192, %dma_map_single_attrs.exit.cleanup_crit_edge
  %.str.1.sink = phi ptr [ @.str.1, %if.end192 ], [ @.str, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull %.str.1.sink) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_get_tcb_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_tx_fill_cmddesc(ptr nocapture noundef readonly %hw, ptr noundef %pdesc8, i1 noundef zeroext %firstseg, i1 noundef zeroext %lastseg, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %5) #3
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !32

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev7) #3
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i67 = icmp eq ptr %9, null
  br i1 %tobool.not.i.i67, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #3
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @debug_dma_map_single(ptr noundef %dev7, ptr noundef %5, i32 noundef %7) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  %13 = ptrtoint ptr %5 to i32
  %sub.i = add i32 %13, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %12, i32 %shr.i
  %and.i68 = and i32 %13, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev7, ptr noundef %add.ptr.i, i32 noundef %and.i68, i32 noundef %7, i32 noundef 1, i32 noundef 0) #3
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev9, i32 noundef %retval.0.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str) #3
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %16 = call ptr @memset(ptr %pdesc8, i32 0, i32 36)
  %cmd_or_init = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 7
  %17 = ptrtoint ptr %cmd_or_init to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %cmd_or_init, align 1
  %18 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp = icmp eq i8 %18, 0
  %19 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pdesc8, align 4
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %and.i.i69 = and i32 %20, -29
  %21 = lshr i8 %bf.load, 3
  %22 = and i8 %21, 16
  %23 = or i8 %22, 12
  %or.i.i = zext i8 %23 to i32
  %or.i.i73 = or i32 %and.i.i69, %or.i.i
  %24 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i.i73, ptr %pdesc8, align 4
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %conv18 = and i32 %26, 65535
  %and.i.i74 = and i32 %or.i.i73, 65535
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv18) #3
  %or.i.i75 = or i32 %27, %and.i.i74
  %28 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or.i.i75, ptr %pdesc8, align 4
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %conv21 = and i32 %30, 65535
  %add.ptr.i76 = getelementptr i32, ptr %pdesc8, i32 7
  %31 = ptrtoint ptr %add.ptr.i76 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i76, align 4
  %and.i.i77 = and i32 %32, 65535
  %33 = tail call i32 @llvm.bswap.i32(i32 %conv21) #3
  %or.i.i78 = or i32 %and.i.i77, %33
  %34 = ptrtoint ptr %add.ptr.i76 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i.i78, ptr %add.ptr.i76, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #3
  %add.ptr.i79 = getelementptr i32, ptr %pdesc8, i32 8
  %36 = ptrtoint ptr %add.ptr.i79 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %add.ptr.i79, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  tail call void @arm_heavy_mb() #3
  %37 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pdesc8, align 4
  %or.i.i80 = or i32 %38, 128
  store i32 %or.i.i80, ptr %pdesc8, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %or.i.i84 = and i32 %20, -65293
  %or.i.i86 = or i32 %or.i.i84, 8204
  %39 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or.i.i86, ptr %pdesc8, align 4
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  %conv24 = and i32 %41, 65535
  %and.i.i87 = and i32 %or.i.i86, 8447
  %42 = tail call i32 @llvm.bswap.i32(i32 %conv24) #3
  %or.i.i88 = or i32 %42, %and.i.i87
  %43 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or.i.i88, ptr %pdesc8, align 4
  %add.ptr.i89 = getelementptr i32, ptr %pdesc8, i32 1
  %44 = ptrtoint ptr %add.ptr.i89 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i89, align 4
  %and.i.i90 = and i32 %45, -2031617
  %or.i.i91 = or i32 %and.i.i90, 1245184
  store i32 %or.i.i91, ptr %add.ptr.i89, align 4
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %h2c_txcmd_seq = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 40
  %50 = ptrtoint ptr %h2c_txcmd_seq to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %h2c_txcmd_seq, align 4
  %and.i = and i32 %49, -128
  %52 = and i8 %51, 127
  %and528.i.i = zext i8 %52 to i32
  %or.i = or i32 %and.i, %and528.i.i
  store i32 %or.i, ptr %47, align 4
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  %conv29 = and i32 %54, 65535
  %add.ptr.i92 = getelementptr i32, ptr %pdesc8, i32 7
  %55 = ptrtoint ptr %add.ptr.i92 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i92, align 4
  %and.i.i93 = and i32 %56, 65535
  %57 = tail call i32 @llvm.bswap.i32(i32 %conv29) #3
  %or.i.i94 = or i32 %and.i.i93, %57
  %58 = ptrtoint ptr %add.ptr.i92 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or.i.i94, ptr %add.ptr.i92, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #3
  %add.ptr.i95 = getelementptr i32, ptr %pdesc8, i32 8
  %60 = ptrtoint ptr %add.ptr.i95 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %add.ptr.i95, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  %61 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pdesc8, align 4
  %or.i.i96 = or i32 %62, 128
  store i32 %or.i.i96, ptr %pdesc8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then12, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_set_desc(ptr nocapture noundef readnone %hw, ptr nocapture noundef %pdesc8, i1 noundef zeroext %istx, i8 noundef zeroext %desc_name, ptr nocapture noundef readonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %desc_name to i32
  br i1 %istx, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %desc_name, label %land.end [
    i8 0, label %do.body
    i8 2, label %sw.bb1
  ]

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %1 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pdesc8, align 4
  %or.i.i = or i32 %2, 128
  store i32 %or.i.i, ptr %pdesc8, align 4
  br label %if.end101

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #3
  %add.ptr.i = getelementptr i32, ptr %pdesc8, i32 9
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr.i, align 4
  br label %if.end101

land.end:                                         ; preds = %if.then
  %.b118 = load i1, ptr @rtl92se_set_desc.__already_done, align 1
  br i1 %.b118, label %land.end.if.end101_crit_edge, label %if.then8, !prof !32

land.end.if.end101_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end101

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @rtl92se_set_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 569, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %conv) #3
  br label %if.end101

if.else:                                          ; preds = %entry
  %7 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %desc_name, label %land.end57 [
    i8 1, label %do.body43
    i8 4, label %sw.bb46
    i8 5, label %set_rx_status_desc_pkt_len.exit
    i8 6, label %sw.bb48
  ]

do.body43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  %8 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pdesc8, align 4
  %or.i.i119 = or i32 %9, 128
  store i32 %or.i.i119, ptr %pdesc8, align 4
  br label %if.end101

sw.bb46:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #3
  %add.ptr.i120 = getelementptr i32, ptr %pdesc8, i32 6
  %13 = ptrtoint ptr %add.ptr.i120 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr.i120, align 4
  br label %if.end101

set_rx_status_desc_pkt_len.exit:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pdesc8, align 4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %and.i.i = and i32 %15, 12648447
  %18 = and i32 %17, 16383
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #3
  %or.i.i121 = or i32 %and.i.i, %19
  %20 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i.i121, ptr %pdesc8, align 4
  br label %if.end101

sw.bb48:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pdesc8, align 4
  %or.i.i122 = or i32 %22, 64
  store i32 %or.i.i122, ptr %pdesc8, align 4
  br label %if.end101

land.end57:                                       ; preds = %if.else
  %.b116117 = load i1, ptr @rtl92se_set_desc.__already_done.4, align 1
  br i1 %.b116117, label %land.end57.if.end101_crit_edge, label %if.then64, !prof !32

land.end57.if.end101_crit_edge:                   ; preds = %land.end57
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end101

if.then64:                                        ; preds = %land.end57
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @rtl92se_set_desc.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 589, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %conv) #3
  br label %if.end101

if.end101:                                        ; preds = %if.then64, %land.end57.if.end101_crit_edge, %sw.bb48, %set_rx_status_desc_pkt_len.exit, %sw.bb46, %do.body43, %if.then8, %land.end.if.end101_crit_edge, %sw.bb1, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @rtl92se_get_desc(ptr nocapture noundef readnone %hw, ptr nocapture noundef readonly %desc8, i1 noundef zeroext %istx, i8 noundef zeroext %desc_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %desc_name to i32
  br i1 %istx, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %desc_name, label %land.end [
    i8 0, label %sw.bb
    i8 3, label %sw.bb1
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %desc8 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %desc8, align 4
  %.mask.i = lshr i32 %2, 7
  %.mask.lobit.i = and i32 %.mask.i, 1
  br label %if.end98

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i = getelementptr i32, ptr %desc8, i32 8
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #3
  br label %if.end98

land.end:                                         ; preds = %if.then
  %.b113 = load i1, ptr @rtl92se_get_desc.__already_done, align 1
  br i1 %.b113, label %land.end.if.end98_crit_edge, label %if.then9, !prof !32

land.end.if.end98_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end98

if.then9:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @rtl92se_get_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 611, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %conv) #3
  br label %if.end98

if.else:                                          ; preds = %entry
  %6 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %desc_name, label %land.end54 [
    i8 0, label %sw.bb40
    i8 5, label %sw.bb42
    i8 4, label %sw.bb44
  ]

sw.bb40:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %desc8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %desc8, align 4
  %.mask.i114 = lshr i32 %8, 7
  %.mask.lobit.i115 = and i32 %.mask.i114, 1
  br label %if.end98

sw.bb42:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %desc8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %desc8, align 4
  %11 = and i32 %10, -12648448
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #3
  br label %if.end98

sw.bb44:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i116 = getelementptr i32, ptr %desc8, i32 6
  %13 = ptrtoint ptr %add.ptr.i116 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i116, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #3
  br label %if.end98

land.end54:                                       ; preds = %if.else
  %.b111112 = load i1, ptr @rtl92se_get_desc.__already_done.6, align 1
  br i1 %.b111112, label %land.end54.if.end98_crit_edge, label %if.then61, !prof !32

land.end54.if.end98_crit_edge:                    ; preds = %land.end54
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end98

if.then61:                                        ; preds = %land.end54
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @rtl92se_get_desc.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 627, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %conv) #3
  br label %if.end98

if.end98:                                         ; preds = %if.then61, %land.end54.if.end98_crit_edge, %sw.bb44, %sw.bb42, %sw.bb40, %if.then9, %land.end.if.end98_crit_edge, %sw.bb1, %sw.bb
  %ret.0 = phi i32 [ %5, %sw.bb1 ], [ %.mask.lobit.i, %sw.bb ], [ %15, %sw.bb44 ], [ %12, %sw.bb42 ], [ %.mask.lobit.i115, %sw.bb40 ], [ 0, %if.then9 ], [ 0, %land.end.if.end98_crit_edge ], [ 0, %if.then61 ], [ 0, %land.end54.if.end98_crit_edge ]
  %conv99 = zext i32 %ret.0 to i64
  ret i64 %conv99
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_tx_polling(ptr nocapture noundef readonly %hw, i8 noundef zeroext %hw_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = zext i8 %hw_queue to i32
  %shl = shl nuw i32 1, %conv
  %conv1 = trunc i32 %shl to i16
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %2 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write16_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 1280, i16 noundef zeroext %conv1) #3
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_word.exit_crit_edge, label %if.then.i

entry.rtl_write_word.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %8 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %9(ptr noundef %1, i32 noundef 1280) #3
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %entry.rtl_write_word.exit_crit_edge
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
declare void @llvm.arm.gnu.eabi.mcount() #3

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
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !11, !13, !15, !17, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/trx.c", i32 336, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/trx.c", i32 491, i32 2}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/trx.c", i32 568, i32 4}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/trx.c", i32 588, i32 4}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/trx.c", i32 610, i32 4}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/trx.c", i32 626, i32 4}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i8 0, i8 2}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.peeled.count", i32 1}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2158070547}
!34 = !{i64 2158071371}
!35 = !{i64 2158071519}
!36 = !{i64 2158072888}
