; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/trx.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/trx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.rx_fwinfo_92c = type { [4 x i8], i8, [4 x i8], [4 x i8], [2 x i8], [4 x i8], [2 x i8], [2 x i8], [2 x i8], i8, i8, i8 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enable RDG function\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"H2C Tx Cmd Content\00", [45 x i8] zeroinitializer }, align 32
@rtl92ce_set_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192ce/trx.c\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rtl8192ce: ERR txdesc :%d not processed\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl92ce_set_desc.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rtl8192ce: ERR rxdesc :%d not processed\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl92ce_get_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rtl92ce_get_desc.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 40960, i64 49152, i64 53248]
@__sancov_gen_cov_switch_values.14 = internal global [9 x i64] [i64 7, i64 8, i64 4, i64 7, i64 11, i64 15, i64 20, i64 21, i64 127]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 12, i64 0, i64 1024]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 5]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 370, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 479, i32 5 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 518, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 580, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 599, i32 4 }
@___asan_gen_.43 = private constant [56 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/trx.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 619, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 326, i32 6 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 695, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 723, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92ce_rx_query_desc(ptr noundef %hw, ptr noundef %stats, ptr nocapture noundef %rx_status, ptr nocapture noundef readonly %p_desc8, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_desc8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p_desc8, align 4
  %2 = and i32 %1, -12648448
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  %conv = trunc i32 %3 to i16
  %length = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 14
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %length, align 2
  %5 = ptrtoint ptr %p_desc8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %p_desc8, align 4
  %sh.diff = lshr i32 %6, 5
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %conv5 = and i8 %tr.sh.diff, 120
  %rx_drvinfo_size = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 23
  %7 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5, ptr %rx_drvinfo_size, align 1
  %8 = load i32, ptr %p_desc8, align 4
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 3
  %rx_bufshift = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 24
  %11 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %rx_bufshift, align 2
  %12 = load i32, ptr %p_desc8, align 4
  %icv = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 19
  %13 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %icv, align 2
  %sh.diff254 = lshr i32 %12, 18
  %tr.sh.diff255 = trunc i32 %sh.diff254 to i8
  %bf.value = and i8 %tr.sh.diff255, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.value, %bf.clear
  store i8 %bf.set, ptr %icv, align 2
  %14 = load i32, ptr %p_desc8, align 4
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
  %18 = load i32, ptr %p_desc8, align 4
  %19 = trunc i32 %18 to i8
  %20 = lshr i8 %19, 1
  %21 = and i8 %20, 4
  %bf.clear40 = and i8 %bf.set33, -5
  %22 = or i8 %bf.clear40, %21
  %bf.set41 = xor i8 %22, 4
  store i8 %bf.set41, ptr %icv, align 2
  %add.ptr.i = getelementptr i32, ptr %p_desc8, i32 3
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
  %sh.diff256 = lshr i32 %28, 12
  %tr.sh.diff257 = trunc i32 %sh.diff256 to i8
  %bf.value48 = and i8 %tr.sh.diff257, 16
  %bf.clear50 = and i8 %bf.set41, -17
  %bf.set51 = or i8 %bf.clear50, %bf.value48
  store i8 %bf.set51, ptr %icv, align 2
  %add.ptr.i237 = getelementptr i32, ptr %p_desc8, i32 1
  %29 = ptrtoint ptr %add.ptr.i237 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i237, align 4
  %isampdu = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 25
  %31 = lshr i32 %30, 22
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = ptrtoint ptr %isampdu to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %isampdu, align 1
  %35 = load i32, ptr %add.ptr.i237, align 4
  %36 = and i32 %35, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %36)
  %37 = icmp eq i32 %36, 12582912
  %isfirst_ampdu = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 26
  %frombool61 = zext i1 %37 to i8
  %38 = ptrtoint ptr %isfirst_ampdu to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool61, ptr %isfirst_ampdu, align 8
  %add.ptr.i244 = getelementptr i32, ptr %p_desc8, i32 5
  %39 = ptrtoint ptr %add.ptr.i244 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i244, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #6
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
  %54 = ptrtoint ptr %p_desc8 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 16)
  %bf.load69 = load i128, ptr %p_desc8, align 1
  %55 = trunc i128 %bf.load69 to i32
  %56 = lshr i32 %55, 26
  %.fr = freeze i32 %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %.fr)
  %cmp73 = icmp ult i32 %.fr, 67108864
  %.off = add nsw i32 %56, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  %or.cond = select i1 %cmp73, i1 true, i1 %switch
  %is_cck = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 41
  %frombool94 = zext i1 %or.cond to i8
  %57 = ptrtoint ptr %is_cck to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %frombool94, ptr %is_cck, align 1
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %58 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %center_freq, align 4
  %conv95 = trunc i32 %61 to i16
  %freq = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 5
  %62 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load96 = load i16, ptr %freq, align 4
  %bf.shl98 = shl i16 %conv95, 3
  %bf.clear99 = and i16 %bf.load96, 7
  %bf.set100 = or i16 %bf.clear99, %bf.shl98
  store i16 %bf.set100, ptr %freq, align 4
  %63 = load ptr, ptr %chandef, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %conv104 = trunc i32 %65 to i8
  %band105 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 11
  %66 = ptrtoint ptr %band105 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv104, ptr %band105, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data, align 4
  %69 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %rx_drvinfo_size, align 1
  %conv107 = zext i8 %70 to i32
  %add.ptr = getelementptr i8, ptr %68, i32 %conv107
  %71 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %rx_bufshift, align 2
  %conv109 = zext i8 %72 to i32
  %add.ptr110 = getelementptr i8, ptr %add.ptr, i32 %conv109
  %73 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load112 = load i8, ptr %icv, align 2
  %74 = and i8 %bf.load112, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool116.not = icmp eq i8 %74, 0
  br i1 %tobool116.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flag = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %75 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flag, align 8
  %or117 = or i32 %76, 32
  store i32 %or117, ptr %flag, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %77 = ptrtoint ptr %rx_is40mhzpacket to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %rx_is40mhzpacket, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool119.not = icmp eq i8 %78, 0
  br i1 %tobool119.not, label %if.end.if.end124_crit_edge, label %if.then120

if.end.if.end124_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

if.then120:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %bw = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %79 = ptrtoint ptr %bw to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %bf.load121 = load i16, ptr %bw, align 1
  %bf.clear122 = and i16 %bf.load121, -14337
  %bf.set123 = or i16 %bf.clear122, 6144
  store i16 %bf.set123, ptr %bw, align 1
  br label %if.end124

if.end124:                                        ; preds = %if.then120, %if.end.if.end124_crit_edge
  %80 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %is_ht, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool126.not = icmp eq i8 %81, 0
  br i1 %tobool126.not, label %if.end124.if.end131_crit_edge, label %if.then127

if.end124.if.end131_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

if.then127:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  %encoding = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %82 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %bf.load128 = load i16, ptr %encoding, align 1
  %bf.clear129 = and i16 %bf.load128, 16383
  %bf.set130 = or i16 %bf.clear129, 16384
  store i16 %bf.set130, ptr %encoding, align 1
  br label %if.end131

if.end131:                                        ; preds = %if.then127, %if.end124.if.end131_crit_edge
  %flag132 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %83 = ptrtoint ptr %flag132 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flag132, align 8
  %or133 = or i32 %84, 128
  store i32 %or133, ptr %flag132, align 8
  %85 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load135 = load i8, ptr %icv, align 2
  %86 = and i8 %bf.load135, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool139.not = icmp eq i8 %86, 0
  br i1 %tobool139.not, label %if.end131.if.end151_crit_edge, label %if.then140

if.end131.if.end151_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151

if.then140:                                       ; preds = %if.end131
  %87 = ptrtoint ptr %add.ptr110 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %add.ptr110, align 2
  %89 = and i16 %88, -1024
  %90 = zext i16 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values)
  switch i16 %89, label %if.then140.if.else_crit_edge [
    i16 -24576, label %if.then140.land.lhs.true_crit_edge
    i16 -16384, label %if.then140.land.lhs.true_crit_edge258
    i16 -12288, label %if.then5.i
  ]

if.then140.land.lhs.true_crit_edge258:            ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then140.land.lhs.true_crit_edge:               ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then140.if.else_crit_edge:                     ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then5.i:                                       ; preds = %if.then140
  %91 = and i16 %88, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %cmp.i46.not.i = icmp eq i16 %91, 0
  br i1 %cmp.i46.not.i, label %if.end9.i, label %if.then5.i.land.lhs.true_crit_edge

if.then5.i.land.lhs.true_crit_edge:               ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.end9.i:                                        ; preds = %if.then5.i
  %add.ptr.i251 = getelementptr i8, ptr %add.ptr110, i32 24
  %92 = ptrtoint ptr %add.ptr.i251 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %add.ptr.i251, align 1
  %94 = zext i8 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %93, label %if.end9.i.land.lhs.true_crit_edge [
    i8 4, label %if.end9.i.if.else_crit_edge
    i8 7, label %if.end9.i.if.else_crit_edge259
    i8 11, label %if.end9.i.if.else_crit_edge260
    i8 15, label %if.end9.i.if.else_crit_edge261
    i8 20, label %if.end9.i.if.else_crit_edge262
    i8 21, label %if.end9.i.if.else_crit_edge263
    i8 127, label %if.end9.i.if.else_crit_edge264
  ]

if.end9.i.if.else_crit_edge264:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end9.i.if.else_crit_edge263:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end9.i.if.else_crit_edge262:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end9.i.if.else_crit_edge261:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end9.i.if.else_crit_edge260:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end9.i.if.else_crit_edge259:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end9.i.if.else_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end9.i.land.lhs.true_crit_edge:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9.i.land.lhs.true_crit_edge, %if.then5.i.land.lhs.true_crit_edge, %if.then140.land.lhs.true_crit_edge, %if.then140.land.lhs.true_crit_edge258
  %95 = and i16 %88, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %cmp.i.not = icmp eq i16 %95, 0
  br i1 %cmp.i.not, label %land.lhs.true.if.else_crit_edge, label %if.then145

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then145:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %and147 = and i32 %or133, -3
  br label %if.end151.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end9.i.if.else_crit_edge, %if.end9.i.if.else_crit_edge259, %if.end9.i.if.else_crit_edge260, %if.end9.i.if.else_crit_edge261, %if.end9.i.if.else_crit_edge262, %if.end9.i.if.else_crit_edge263, %if.end9.i.if.else_crit_edge264, %if.then140.if.else_crit_edge
  %or149 = or i32 %84, 130
  br label %if.end151.sink.split

if.end151.sink.split:                             ; preds = %if.else, %if.then145
  %and147.sink = phi i32 [ %and147, %if.then145 ], [ %or149, %if.else ]
  %96 = ptrtoint ptr %flag132 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %and147.sink, ptr %flag132, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.end151.sink.split, %if.end131.if.end151_crit_edge
  %97 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %is_ht, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool153 = icmp ne i8 %98, 0
  %99 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %rate, align 1
  %call155 = tail call i32 @rtlwifi_rate_mapping(ptr noundef %hw, i1 noundef zeroext %tobool153, i1 noundef zeroext false, i8 noundef zeroext %100) #6
  %conv156 = trunc i32 %call155 to i8
  %rate_idx = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 8
  %101 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv156, ptr %rate_idx, align 1
  %102 = ptrtoint ptr %timestamp_low to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %timestamp_low, align 4
  %conv158 = zext i32 %103 to i64
  %104 = ptrtoint ptr %rx_status to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %conv158, ptr %rx_status, align 8
  %105 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool159.not = icmp eq i32 %105, 0
  br i1 %tobool159.not, label %if.end151.if.end165_crit_edge, label %if.then160

if.end151.if.end165_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

if.then160:                                       ; preds = %if.end151
  %106 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data, align 4
  %108 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %rx_bufshift, align 2
  %conv163 = zext i8 %109 to i32
  %add.ptr164 = getelementptr i8, ptr %107, i32 %conv163
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %110 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %priv.i, align 8
  %112 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %rx_drvinfo_size, align 1
  %conv.i = zext i8 %113 to i32
  %add.ptr.i252 = getelementptr i8, ptr %107, i32 %conv.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i252, i32 %conv163
  %114 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %add.ptr3.i, align 2
  %116 = tail call i16 @llvm.bswap.i16(i16 %115) #6
  %conv4.i = zext i16 %116 to i32
  %and.i = and i16 %116, 12
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %and.i)
  %cmp.not.i = icmp eq i16 %and.i, 4
  br i1 %cmp.not.i, label %if.then160.land.end41.i_crit_edge, label %land.lhs.true.i

if.then160.land.end41.i_crit_edge:                ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end41.i

land.lhs.true.i:                                  ; preds = %if.then160
  %bssid.i = getelementptr inbounds %struct.rtl_priv, ptr %111, i32 0, i32 9, i32 34
  %and10.i = and i32 %conv4.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %land.lhs.true.i.cond.end20.i_crit_edge

land.lhs.true.i.cond.end20.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end20.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  %and14.i = and i32 %conv4.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %cond.false18.i, label %cond.true16.i

cond.true16.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 3
  br label %cond.end20.i

cond.false18.i:                                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3.i, i32 0, i32 4
  br label %cond.end20.i

cond.end20.i:                                     ; preds = %cond.false18.i, %cond.true16.i, %land.lhs.true.i.cond.end20.i_crit_edge
  %cond21.i = phi ptr [ %addr2.i, %cond.true16.i ], [ %addr3.i, %cond.false18.i ], [ %addr1.i, %land.lhs.true.i.cond.end20.i_crit_edge ]
  %117 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bssid.i, align 4
  %119 = ptrtoint ptr %cond21.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cond21.i, align 4
  %xor.i.i = xor i32 %120, %118
  %add.ptr.i.i = getelementptr %struct.rtl_priv, ptr %111, i32 0, i32 9, i32 34, i32 4
  %121 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %cond21.i, i32 4
  %123 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %124, %122
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true23.i, label %cond.end20.i.land.end41.i_crit_edge

cond.end20.i.land.end41.i_crit_edge:              ; preds = %cond.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end41.i

land.lhs.true23.i:                                ; preds = %cond.end20.i
  %125 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %125)
  %bf.load.i = load i8, ptr %icv, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.load.i)
  %126 = icmp ult i8 %bf.load.i, 32
  br i1 %126, label %land.rhs37.i, label %land.lhs.true23.i.land.end41.i_crit_edge

land.lhs.true23.i.land.end41.i_crit_edge:         ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end41.i

land.rhs37.i:                                     ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev_addr.i = getelementptr inbounds %struct.rtl_priv, ptr %111, i32 0, i32 17, i32 19
  %127 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %addr1.i, align 4
  %129 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dev_addr.i, align 4
  %xor.i65.i = xor i32 %130, %128
  %add.ptr.i66.i = getelementptr i8, ptr %addr1.i, i32 4
  %131 = ptrtoint ptr %add.ptr.i66.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %add.ptr.i66.i, align 2
  %add.ptr1.i67.i = getelementptr %struct.rtl_priv, ptr %111, i32 0, i32 17, i32 19, i32 4
  %133 = ptrtoint ptr %add.ptr1.i67.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %add.ptr1.i67.i, align 2
  %xor37.i68.i = xor i16 %134, %132
  %xor3.i69.i = zext i16 %xor37.i68.i to i32
  %or.i70.i = or i32 %xor.i65.i, %xor3.i69.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i70.i)
  %cmp.i71.i = icmp eq i32 %or.i70.i, 0
  br label %land.end41.i

land.end41.i:                                     ; preds = %land.rhs37.i, %land.lhs.true23.i.land.end41.i_crit_edge, %cond.end20.i.land.end41.i_crit_edge, %if.then160.land.end41.i_crit_edge
  %135 = phi i1 [ true, %land.rhs37.i ], [ false, %land.lhs.true23.i.land.end41.i_crit_edge ], [ false, %cond.end20.i.land.end41.i_crit_edge ], [ false, %if.then160.land.end41.i_crit_edge ]
  %136 = phi i1 [ %cmp.i71.i, %land.rhs37.i ], [ false, %land.lhs.true23.i.land.end41.i_crit_edge ], [ false, %cond.end20.i.land.end41.i_crit_edge ], [ false, %if.then160.land.end41.i_crit_edge ]
  %137 = and i16 %115, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %137)
  %cmp.i72.i = icmp eq i16 %137, -32768
  %frombool.i.i = zext i1 %135 to i8
  %frombool1.i.i = zext i1 %136 to i8
  %frombool2.i.i = zext i1 %cmp.i72.i to i8
  %138 = ptrtoint ptr %p_desc8 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 16)
  %bf.load.i.i = load i128, ptr %p_desc8, align 1
  %139 = trunc i128 %bf.load.i.i to i32
  %140 = lshr i32 %139, 26
  %.fr.i.i = freeze i32 %139
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %.fr.i.i)
  %cmp.i73.i = icmp ult i32 %.fr.i.i, 67108864
  %.off.i.i = add nsw i32 %140, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 3
  %or.cond.i.i = select i1 %cmp.i73.i, i1 true, i1 %switch.i.i
  %frombool19.i.i = zext i1 %or.cond.i.i to i8
  %packet_matchbssid.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 40
  %141 = ptrtoint ptr %packet_matchbssid.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %frombool.i.i, ptr %packet_matchbssid.i.i, align 2
  %packet_toself22.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 43
  %142 = ptrtoint ptr %packet_toself22.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %frombool1.i.i, ptr %packet_toself22.i.i, align 1
  %143 = ptrtoint ptr %is_cck to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %frombool19.i.i, ptr %is_cck, align 1
  %packet_beacon27.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 44
  %144 = ptrtoint ptr %packet_beacon27.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %frombool2.i.i, ptr %packet_beacon27.i.i, align 2
  %rx_mimo_sig_qual.i.i = getelementptr %struct.rtl_stats, ptr %stats, i32 0, i32 35
  %145 = ptrtoint ptr %rx_mimo_sig_qual.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 -1, ptr %rx_mimo_sig_qual.i.i, align 4
  %arrayidx30.i.i = getelementptr %struct.rtl_stats, ptr %stats, i32 0, i32 35, i32 1
  %146 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 -1, ptr %arrayidx30.i.i, align 1
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else185.i.i

if.then.i.i:                                      ; preds = %land.end41.i
  %rfpwr_state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %111, i32 0, i32 21, i32 24
  %147 = ptrtoint ptr %rfpwr_state.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %rfpwr_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp32.i.i = icmp eq i32 %148, 0
  br i1 %cmp32.i.i, label %if.end.i.i, label %if.then.i.i.if.then35.i.i_crit_edge

if.then.i.i.if.then35.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %149 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %priv.i, align 8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %150, i32 0, i32 32
  %151 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cfg.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %152, i32 0, i32 4
  %153 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ops.i.i.i, align 4
  %get_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %154, i32 0, i32 45
  %155 = ptrtoint ptr %get_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %get_bbreg.i.i.i, align 4
  %call.i.i.i = tail call i32 %156(ptr noundef %hw, i32 noundef 2084, i32 noundef 512) #6
  %conv.i.i = trunc i32 %call.i.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i)
  %tobool34.not.i.i = icmp eq i8 %conv.i.i, 0
  br i1 %tobool34.not.i.i, label %if.end.i.i.if.then35.i.i_crit_edge, label %if.else61.i.i

if.end.i.i.if.then35.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35.i.i

if.then35.i.i:                                    ; preds = %if.end.i.i.if.then35.i.i_crit_edge, %if.then.i.i.if.then35.i.i_crit_edge
  %cck_agc_rpt36.i.i = getelementptr inbounds %struct.phy_sts_cck_8192s_t, ptr %add.ptr164, i32 0, i32 2
  %157 = ptrtoint ptr %cck_agc_rpt36.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %cck_agc_rpt36.i.i, align 1
  %159 = lshr i8 %158, 6
  %conv42.i.i = zext i8 %159 to i32
  %160 = zext i32 %conv42.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %160, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %conv42.i.i, label %if.then35.unreachabledefault.i.i [
    i32 3, label %if.then35.i.i.if.end96.i.i_crit_edge
    i32 2, label %sw.bb46.i.i
    i32 1, label %sw.bb51.i.i
    i32 0, label %sw.bb56.i.i
  ]

if.then35.i.i.if.end96.i.i_crit_edge:             ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i.i

sw.bb46.i.i:                                      ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i.i

sw.bb51.i.i:                                      ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i.i

sw.bb56.i.i:                                      ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i.i

if.then35.unreachabledefault.i.i:                 ; preds = %if.then35.i.i
  unreachable

if.else61.i.i:                                    ; preds = %if.end.i.i
  %cck_agc_rpt63.i.i = getelementptr inbounds %struct.phy_sts_cck_8192s_t, ptr %add.ptr164, i32 0, i32 2
  %161 = ptrtoint ptr %cck_agc_rpt63.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %cck_agc_rpt63.i.i, align 1
  %163 = lshr i8 %162, 5
  %164 = and i8 %163, 3
  %conv71.i.i = zext i8 %164 to i32
  %165 = zext i32 %conv71.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %165, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %conv71.i.i, label %if.else61.unreachabledefault.i.i [
    i32 3, label %sw.bb72.i.i
    i32 2, label %sw.bb77.i.i
    i32 1, label %sw.bb83.i.i
    i32 0, label %sw.bb89.i.i
  ]

sw.bb72.i.i:                                      ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %166 = shl i8 %162, 1
  br label %if.end96.i.i

sw.bb77.i.i:                                      ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %167 = shl i8 %162, 1
  br label %if.end96.i.i

sw.bb83.i.i:                                      ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %168 = shl i8 %162, 1
  br label %if.end96.i.i

sw.bb89.i.i:                                      ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %169 = shl i8 %162, 1
  br label %if.end96.i.i

if.else61.unreachabledefault.i.i:                 ; preds = %if.else61.i.i
  unreachable

if.end96.i.i:                                     ; preds = %sw.bb89.i.i, %sw.bb83.i.i, %sw.bb77.i.i, %sw.bb72.i.i, %sw.bb56.i.i, %sw.bb51.i.i, %sw.bb46.i.i, %if.then35.i.i.if.end96.i.i_crit_edge
  %.sink419.i.i = phi i8 [ %166, %sw.bb72.i.i ], [ %167, %sw.bb77.i.i ], [ %168, %sw.bb83.i.i ], [ %169, %sw.bb89.i.i ], [ %158, %sw.bb46.i.i ], [ %158, %sw.bb51.i.i ], [ %158, %sw.bb56.i.i ], [ %158, %if.then35.i.i.if.end96.i.i_crit_edge ]
  %.sink.i.i = phi i8 [ -46, %sw.bb72.i.i ], [ -26, %sw.bb77.i.i ], [ -12, %sw.bb83.i.i ], [ 16, %sw.bb89.i.i ], [ -26, %sw.bb46.i.i ], [ -12, %sw.bb51.i.i ], [ 16, %sw.bb56.i.i ], [ -46, %if.then35.i.i.if.end96.i.i_crit_edge ]
  %170 = and i8 %.sink419.i.i, 62
  %sub75.i.i = sub nsw i8 %.sink.i.i, %170
  %call97.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub75.i.i) #6
  %add.i.i = add i8 %call97.i.i, 6
  %171 = tail call i8 @llvm.umin.i8(i8 %add.i.i, i8 100) #6
  %172 = add nsw i8 %171, -35
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %172)
  %173 = icmp ult i8 %172, 8
  br i1 %173, label %if.then111.i.i, label %if.else115.i.i

if.then111.i.i:                                   ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub113.i.i = add nsw i8 %171, -2
  br label %if.end154.i.i

if.else115.i.i:                                   ; preds = %if.end96.i.i
  %174 = add nsw i8 %171, -27
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %174)
  %175 = icmp ult i8 %174, 8
  br i1 %175, label %if.then123.i.i, label %if.else127.i.i

if.then123.i.i:                                   ; preds = %if.else115.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub125.i.i = add nsw i8 %171, -6
  br label %if.end154.i.i

if.else127.i.i:                                   ; preds = %if.else115.i.i
  %176 = add nsw i8 %171, -15
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %176)
  %177 = icmp ult i8 %176, 12
  br i1 %177, label %if.then135.i.i, label %if.else139.i.i

if.then135.i.i:                                   ; preds = %if.else127.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub137.i.i = add nsw i8 %171, -8
  br label %if.end154.i.i

if.else139.i.i:                                   ; preds = %if.else127.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %178 = add nsw i8 %171, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %178)
  %179 = icmp ult i8 %178, 10
  %sub149.i.i = add nsw i8 %171, -4
  %spec.select401.i.i = select i1 %179, i8 %sub149.i.i, i8 %171
  br label %if.end154.i.i

if.end154.i.i:                                    ; preds = %if.else139.i.i, %if.then135.i.i, %if.then123.i.i, %if.then111.i.i
  %pwdb_all.0.i.i = phi i8 [ %sub113.i.i, %if.then111.i.i ], [ %sub125.i.i, %if.then123.i.i ], [ %sub137.i.i, %if.then135.i.i ], [ %spec.select401.i.i, %if.else139.i.i ]
  %conv155.i.i = zext i8 %pwdb_all.0.i.i to i32
  %rx_pwdb_all.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 29
  %180 = ptrtoint ptr %rx_pwdb_all.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %conv155.i.i, ptr %rx_pwdb_all.i.i, align 4
  %conv156.i.i = sext i8 %sub75.i.i to i32
  %recvsignalpower.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 16
  %181 = ptrtoint ptr %recvsignalpower.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %conv156.i.i, ptr %recvsignalpower.i.i, align 4
  br i1 %135, label %if.then158.i.i, label %if.end154.i.i._rtl92ce_translate_rx_signal_stuff.exit_crit_edge

if.end154.i.i._rtl92ce_translate_rx_signal_stuff.exit_crit_edge: ; preds = %if.end154.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl92ce_translate_rx_signal_stuff.exit

if.then158.i.i:                                   ; preds = %if.end154.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %pwdb_all.0.i.i)
  %cmp160.i.i = icmp ugt i8 %pwdb_all.0.i.i, 40
  br i1 %cmp160.i.i, label %if.then158.i.i.if.end179.i.i_crit_edge, label %if.else163.i.i

if.then158.i.i.if.end179.i.i_crit_edge:           ; preds = %if.then158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end179.i.i

if.else163.i.i:                                   ; preds = %if.then158.i.i
  %sq_rpt.i.i = getelementptr inbounds %struct.phy_sts_cck_8192s_t, ptr %add.ptr164, i32 0, i32 1
  %182 = ptrtoint ptr %sq_rpt.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %sq_rpt.i.i, align 1
  %conv164.i.i = zext i8 %183 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %183)
  %cmp165.i.i = icmp ugt i8 %183, 64
  br i1 %cmp165.i.i, label %if.else163.i.i.if.end179.i.i_crit_edge, label %if.else168.i.i

if.else163.i.i.if.end179.i.i_crit_edge:           ; preds = %if.else163.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end179.i.i

if.else168.i.i:                                   ; preds = %if.else163.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %183)
  %cmp170.i.i = icmp ult i8 %183, 20
  br i1 %cmp170.i.i, label %if.else168.i.i.if.end179.i.i_crit_edge, label %if.else173.i.i

if.else168.i.i.if.end179.i.i_crit_edge:           ; preds = %if.else168.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end179.i.i

if.else173.i.i:                                   ; preds = %if.else168.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub175.i.i = sub nsw i16 64, %conv164.i.i
  %mul.i.i = mul nsw i16 %sub175.i.i, 100
  %div409.i.i = sdiv i16 %mul.i.i, 44
  %conv176.i.i = trunc i16 %div409.i.i to i8
  br label %if.end179.i.i

if.end179.i.i:                                    ; preds = %if.else173.i.i, %if.else168.i.i.if.end179.i.i_crit_edge, %if.else163.i.i.if.end179.i.i_crit_edge, %if.then158.i.i.if.end179.i.i_crit_edge
  %sq.0.i.i = phi i8 [ %conv176.i.i, %if.else173.i.i ], [ 100, %if.then158.i.i.if.end179.i.i_crit_edge ], [ 0, %if.else163.i.i.if.end179.i.i_crit_edge ], [ 100, %if.else168.i.i.if.end179.i.i_crit_edge ]
  %signalquality.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 15
  %184 = ptrtoint ptr %signalquality.i.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %sq.0.i.i, ptr %signalquality.i.i, align 8
  %185 = ptrtoint ptr %rx_mimo_sig_qual.i.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %sq.0.i.i, ptr %rx_mimo_sig_qual.i.i, align 4
  %186 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 -1, ptr %arrayidx30.i.i, align 1
  br label %_rtl92ce_translate_rx_signal_stuff.exit

if.else185.i.i:                                   ; preds = %land.end41.i
  %rfpath_rxenable.i.i = getelementptr %struct.rtl_priv, ptr %111, i32 0, i32 15, i32 15
  %arrayidx186.i.i = getelementptr %struct.rtl_priv, ptr %111, i32 0, i32 15, i32 15, i32 1
  %187 = ptrtoint ptr %arrayidx186.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 1, ptr %arrayidx186.i.i, align 1
  %188 = ptrtoint ptr %rfpath_rxenable.i.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 1, ptr %rfpath_rxenable.i.i, align 2
  %189 = ptrtoint ptr %add.ptr164 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %add.ptr164, align 1
  %191 = shl i8 %190, 1
  %192 = and i8 %191, 126
  %sub204.i.i = add nsw i8 %192, -110
  %call210.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub204.i.i) #6
  %conv211.i.i = zext i8 %call210.i.i to i32
  %arrayidx214.i.i = getelementptr %struct.rx_fwinfo_92c, ptr %add.ptr164, i32 0, i32 5, i32 0
  %193 = ptrtoint ptr %arrayidx214.i.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx214.i.i, align 1
  %195 = sdiv i8 %194, 2
  %div216.i.i = sext i8 %195 to i32
  %arrayidx218.i.i = getelementptr %struct.rtl_priv, ptr %111, i32 0, i32 24, i32 10, i32 0
  %196 = ptrtoint ptr %arrayidx218.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %div216.i.i, ptr %arrayidx218.i.i, align 4
  br i1 %135, label %if.then220.i.i, label %if.else185.i.i.for.inc.i.i_crit_edge

if.else185.i.i.for.inc.i.i_crit_edge:             ; preds = %if.else185.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then220.i.i:                                   ; preds = %if.else185.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx223.i.i = getelementptr %struct.rtl_stats, ptr %stats, i32 0, i32 30, i32 0
  %197 = ptrtoint ptr %arrayidx223.i.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %call210.i.i, ptr %arrayidx223.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then220.i.i, %if.else185.i.i.for.inc.i.i_crit_edge
  %198 = ptrtoint ptr %arrayidx186.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx186.i.i, align 1, !range !40
  %spec.select.1.i.i = add nuw nsw i8 %199, 1
  %arrayidx200.1.i.i = getelementptr [4 x i8], ptr %add.ptr164, i32 0, i32 1
  %200 = ptrtoint ptr %arrayidx200.1.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx200.1.i.i, align 1
  %202 = shl i8 %201, 1
  %203 = and i8 %202, 126
  %sub204.1.i.i = add nsw i8 %203, -110
  %call210.1.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub204.1.i.i) #6
  %conv211.1.i.i = zext i8 %call210.1.i.i to i32
  %add212.1.i.i = add nuw nsw i32 %conv211.1.i.i, %conv211.i.i
  %arrayidx214.1.i.i = getelementptr %struct.rx_fwinfo_92c, ptr %add.ptr164, i32 0, i32 5, i32 1
  %204 = ptrtoint ptr %arrayidx214.1.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx214.1.i.i, align 1
  %206 = sdiv i8 %205, 2
  %div216.1.i.i = sext i8 %206 to i32
  %arrayidx218.1.i.i = getelementptr %struct.rtl_priv, ptr %111, i32 0, i32 24, i32 10, i32 1
  %207 = ptrtoint ptr %arrayidx218.1.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %div216.1.i.i, ptr %arrayidx218.1.i.i, align 4
  br i1 %135, label %if.then220.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i.i

if.then220.1.i.i:                                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx223.1.i.i = getelementptr %struct.rtl_stats, ptr %stats, i32 0, i32 30, i32 1
  %208 = ptrtoint ptr %arrayidx223.1.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %call210.1.i.i, ptr %arrayidx223.1.i.i, align 1
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then220.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %pwdb_all226.i.i = getelementptr inbounds %struct.rx_fwinfo_92c, ptr %add.ptr164, i32 0, i32 1
  %209 = ptrtoint ptr %pwdb_all226.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %pwdb_all226.i.i, align 1
  %211 = lshr i8 %210, 1
  %sub230.i.i = add nsw i8 %211, -110
  %call232.i.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub230.i.i) #6
  %conv233.i.i = zext i8 %call232.i.i to i32
  %rx_pwdb_all234.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 29
  %212 = ptrtoint ptr %rx_pwdb_all234.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %conv233.i.i, ptr %rx_pwdb_all234.i.i, align 4
  %rxpower.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 17
  %213 = ptrtoint ptr %rxpower.i.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %sub230.i.i, ptr %rxpower.i.i, align 8
  %conv235.i.i = sext i8 %sub230.i.i to i32
  %recvsignalpower236.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 16
  %214 = ptrtoint ptr %recvsignalpower236.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %conv235.i.i, ptr %recvsignalpower236.i.i, align 4
  %215 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %is_ht, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool237.not.i.i = icmp eq i8 %216, 0
  br i1 %tobool237.not.i.i, label %for.inc.1.i.i.if.else249.i.i_crit_edge, label %land.lhs.true239.i.i

for.inc.1.i.i.if.else249.i.i_crit_edge:           ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else249.i.i

land.lhs.true239.i.i:                             ; preds = %for.inc.1.i.i
  %217 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %rate, align 1
  %219 = add i8 %218, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %219)
  %220 = icmp ult i8 %219, 8
  br i1 %220, label %land.lhs.true239.i.i.if.end250.i.i_crit_edge, label %land.lhs.true239.i.i.if.else249.i.i_crit_edge

land.lhs.true239.i.i.if.else249.i.i_crit_edge:    ; preds = %land.lhs.true239.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else249.i.i

land.lhs.true239.i.i.if.end250.i.i_crit_edge:     ; preds = %land.lhs.true239.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end250.i.i

if.else249.i.i:                                   ; preds = %land.lhs.true239.i.i.if.else249.i.i_crit_edge, %for.inc.1.i.i.if.else249.i.i_crit_edge
  br label %if.end250.i.i

if.end250.i.i:                                    ; preds = %if.else249.i.i, %land.lhs.true239.i.i.if.end250.i.i_crit_edge
  %exitcond.peel.not.i.i = phi i1 [ false, %land.lhs.true239.i.i.if.end250.i.i_crit_edge ], [ true, %if.else249.i.i ]
  %max_spatial_stream.0.i.i = phi i32 [ 2, %land.lhs.true239.i.i.if.end250.i.i_crit_edge ], [ 1, %if.else249.i.i ]
  %arrayidx258.peel.i.i = getelementptr %struct.rx_fwinfo_92c, ptr %add.ptr164, i32 0, i32 4, i32 0
  %221 = ptrtoint ptr %arrayidx258.peel.i.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx258.peel.i.i, align 1
  %call259.peel.i.i = tail call zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext %222) #6
  br i1 %135, label %if.end270.peel.i.i, label %if.end250.i.i.for.inc278.peel.i.i_crit_edge

if.end250.i.i.for.inc278.peel.i.i_crit_edge:      ; preds = %if.end250.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc278.peel.i.i

if.end270.peel.i.i:                               ; preds = %if.end250.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %signalquality269.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 15
  %223 = ptrtoint ptr %signalquality269.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %call259.peel.i.i, ptr %signalquality269.i.i, align 8
  %224 = ptrtoint ptr %rx_mimo_sig_qual.i.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %call259.peel.i.i, ptr %rx_mimo_sig_qual.i.i, align 1
  br label %for.inc278.peel.i.i

for.inc278.peel.i.i:                              ; preds = %if.end270.peel.i.i, %if.end250.i.i.for.inc278.peel.i.i_crit_edge
  br i1 %exitcond.peel.not.i.i, label %for.inc278.peel.i.i.if.then291.i.i_crit_edge, label %for.inc278.peel.i.i.for.body256.i.i_crit_edge

for.inc278.peel.i.i.for.body256.i.i_crit_edge:    ; preds = %for.inc278.peel.i.i
  br label %for.body256.i.i

for.inc278.peel.i.i.if.then291.i.i_crit_edge:     ; preds = %for.inc278.peel.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then291.i.i

for.body256.i.i:                                  ; preds = %for.inc278.i.i.for.body256.i.i_crit_edge, %for.inc278.peel.i.i.for.body256.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.inc278.i.i.for.body256.i.i_crit_edge ], [ 1, %for.inc278.peel.i.i.for.body256.i.i_crit_edge ]
  %arrayidx258.i.i = getelementptr %struct.rx_fwinfo_92c, ptr %add.ptr164, i32 0, i32 4, i32 %indvars.iv.i.i
  %225 = ptrtoint ptr %arrayidx258.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx258.i.i, align 1
  %call259.i.i = tail call zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext %226) #6
  br i1 %135, label %if.end270.i.i, label %for.body256.i.i.for.inc278.i.i_crit_edge

for.body256.i.i.for.inc278.i.i_crit_edge:         ; preds = %for.body256.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc278.i.i

if.end270.i.i:                                    ; preds = %for.body256.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx276.i.i = getelementptr %struct.rtl_stats, ptr %stats, i32 0, i32 35, i32 %indvars.iv.i.i
  %227 = ptrtoint ptr %arrayidx276.i.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %call259.i.i, ptr %arrayidx276.i.i, align 1
  br label %for.inc278.i.i

for.inc278.i.i:                                   ; preds = %if.end270.i.i, %for.body256.i.i.for.inc278.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %max_spatial_stream.0.i.i
  br i1 %exitcond.not.i.i, label %for.inc278.i.i.if.then291.i.i_crit_edge, label %for.inc278.i.i.for.body256.i.i_crit_edge, !llvm.loop !41

for.inc278.i.i.for.body256.i.i_crit_edge:         ; preds = %for.inc278.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body256.i.i

for.inc278.i.i.if.then291.i.i_crit_edge:          ; preds = %for.inc278.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then291.i.i

if.then291.i.i:                                   ; preds = %for.inc278.i.i.if.then291.i.i_crit_edge, %for.inc278.peel.i.i.if.then291.i.i_crit_edge
  %conv288.i.i = zext i8 %spec.select.1.i.i to i32
  %div293.i.i = udiv i32 %add212.1.i.i, %conv288.i.i
  br label %_rtl92ce_translate_rx_signal_stuff.exit

_rtl92ce_translate_rx_signal_stuff.exit:          ; preds = %if.then291.i.i, %if.end179.i.i, %if.end154.i.i._rtl92ce_translate_rx_signal_stuff.exit_crit_edge
  %div293.sink.i.i = phi i32 [ %div293.i.i, %if.then291.i.i ], [ %conv155.i.i, %if.end179.i.i ], [ %conv155.i.i, %if.end154.i.i._rtl92ce_translate_rx_signal_stuff.exit_crit_edge ]
  %call294.i.i = tail call i32 @rtl_signal_scale_mapping(ptr noundef %hw, i32 noundef %div293.sink.i.i) #6
  %conv295.i.i = trunc i32 %call294.i.i to i8
  %signalstrength296.i.i = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 18
  %228 = ptrtoint ptr %signalstrength296.i.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %conv295.i.i, ptr %signalstrength296.i.i, align 1
  tail call void @rtl_process_phyinfo(ptr noundef %hw, ptr noundef %add.ptr3.i, ptr noundef %stats) #6
  br label %if.end165

if.end165:                                        ; preds = %_rtl92ce_translate_rx_signal_stuff.exit, %if.end151.if.end165_crit_edge
  %recvsignalpower = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 16
  %229 = ptrtoint ptr %recvsignalpower to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %recvsignalpower, align 4
  %231 = trunc i32 %230 to i8
  %conv166 = add i8 %231, 10
  %signal = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 13
  %232 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %conv166, ptr %signal, align 2
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtlwifi_rate_mapping(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_tx_fill_desc(ptr noundef %hw, ptr nocapture noundef readonly %hdr, ptr noundef %pdesc8, ptr nocapture noundef readnone %pbd_desc_tx, ptr noundef %info, ptr nocapture noundef readnone %sta, ptr noundef %skb, i8 noundef zeroext %hw_queue, ptr noundef %tcb_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %cmp.i.i, label %entry._rtl92ce_map_hwqueue_to_fwqueue.exit_crit_edge, label %if.end.i, !prof !43

entry._rtl92ce_map_hwqueue_to_fwqueue.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl92ce_map_hwqueue_to_fwqueue.exit

if.end.i:                                         ; preds = %entry
  %9 = trunc i16 %7 to i12
  %trunc.i = and i12 %9, -1024
  %10 = zext i12 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.17)
  switch i12 %trunc.i, label %if.end6.i [
    i12 0, label %if.end.i._rtl92ce_map_hwqueue_to_fwqueue.exit_crit_edge
    i12 1024, label %if.end.i._rtl92ce_map_hwqueue_to_fwqueue.exit_crit_edge498
  ]

if.end.i._rtl92ce_map_hwqueue_to_fwqueue.exit_crit_edge498: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl92ce_map_hwqueue_to_fwqueue.exit

if.end.i._rtl92ce_map_hwqueue_to_fwqueue.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl92ce_map_hwqueue_to_fwqueue.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %11 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %priority.i, align 4
  %phi.cast = shl i32 %12, 16
  %phi.bo497 = and i32 %phi.cast, 2031616
  br label %_rtl92ce_map_hwqueue_to_fwqueue.exit

_rtl92ce_map_hwqueue_to_fwqueue.exit:             ; preds = %if.end6.i, %if.end.i._rtl92ce_map_hwqueue_to_fwqueue.exit_crit_edge, %if.end.i._rtl92ce_map_hwqueue_to_fwqueue.exit_crit_edge498, %entry._rtl92ce_map_hwqueue_to_fwqueue.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo497, %if.end6.i ], [ 1048576, %entry._rtl92ce_map_hwqueue_to_fwqueue.exit_crit_edge ], [ 1179648, %if.end.i._rtl92ce_map_hwqueue_to_fwqueue.exit_crit_edge ], [ 1179648, %if.end.i._rtl92ce_map_hwqueue_to_fwqueue.exit_crit_edge498 ]
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
  %call.i336 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %5) #6
  br i1 %call.i336, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %_rtl92ce_map_hwqueue_to_fwqueue.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i337, !prof !44

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit

if.then.i337:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev12) #6
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44, i32 3
  %20 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i337.dev_name.exit.i_crit_edge

if.then.i337.dev_name.exit.i_crit_edge:           ; preds = %if.then.i337
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i337
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev12, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i337.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %23, %if.end.i.i ], [ %21, %if.then.i337.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %_rtl92ce_map_hwqueue_to_fwqueue.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %dev12, ptr noundef %5, i32 noundef %19) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %5 to i32
  %sub.i = add i32 %25, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %24, i32 %shr.i
  %and.i = and i32 %25, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev12, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %19, i32 noundef 1, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i338 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev15, i32 noundef %retval.0.i338) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i338)
  %cmp.i = icmp eq i32 %retval.0.i338, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %28 = tail call i32 @llvm.read_register.i32(metadata !30) #6
  %and.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %31, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !45
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %vif = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 7
  %32 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vif, align 4
  %bssid = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34
  %call.i339 = tail call ptr @ieee80211_find_sta(ptr noundef %33, ptr noundef %bssid) #6
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %34 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %opmode, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %35, label %rcu_read_lock.exit.if.end41_crit_edge [
    i32 2, label %if.then21
    i32 3, label %rcu_read_lock.exit.if.then33_crit_edge
    i32 1, label %rcu_read_lock.exit.if.then33_crit_edge499
    i32 7, label %rcu_read_lock.exit.if.then33_crit_edge500
  ]

rcu_read_lock.exit.if.then33_crit_edge500:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

rcu_read_lock.exit.if.then33_crit_edge499:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

rcu_read_lock.exit.if.then33_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

rcu_read_lock.exit.if.end41_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then21:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  %bw_4022 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %37 = ptrtoint ptr %bw_4022 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bw_4022, align 1
  br label %if.end41

if.then33:                                        ; preds = %rcu_read_lock.exit.if.then33_crit_edge, %rcu_read_lock.exit.if.then33_crit_edge499, %rcu_read_lock.exit.if.then33_crit_edge500
  %tobool34.not = icmp eq ptr %call.i339, null
  br i1 %tobool34.not, label %if.then33.if.end41_crit_edge, label %if.then35

if.then33.if.end41_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %bandwidth = getelementptr inbounds %struct.ieee80211_sta, ptr %call.i339, i32 0, i32 14
  %39 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bandwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp36 = icmp ne i32 %40, 0
  %conv38 = zext i1 %cmp36 to i8
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.then33.if.end41_crit_edge, %if.then21, %rcu_read_lock.exit.if.end41_crit_edge
  %bw_40.0 = phi i8 [ %38, %if.then21 ], [ %conv38, %if.then35 ], [ 0, %if.then33.if.end41_crit_edge ], [ 0, %rcu_read_lock.exit.if.end41_crit_edge ]
  %41 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %seq_ctrl, align 2
  %43 = and i16 %42, -3841
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %45 = lshr exact i16 %44, 4
  tail call void @rtl_get_tcb_desc(ptr noundef %hw, ptr noundef %info, ptr noundef %call.i339, ptr noundef %skb, ptr noundef %tcb_desc) #6
  %46 = call ptr @memset(ptr %pdesc8, i32 0, i32 40)
  %47 = and i16 %3, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 18432, i16 %47)
  %cmp.i340 = icmp eq i16 %47, 18432
  br i1 %cmp.i340, label %if.end41.if.then54_crit_edge, label %lor.lhs.false48

if.end41.if.then54_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54

lor.lhs.false48:                                  ; preds = %if.end41
  %48 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %48)
  %cmp.i341 = icmp eq i16 %48, 1024
  %49 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %extract.t = icmp eq i16 %49, 0
  %brmerge = select i1 %cmp.i341, i1 true, i1 %cmp
  %.mux = or i1 %cmp.i341, %extract.t
  br i1 %brmerge, label %lor.lhs.false48.if.then54_crit_edge, label %lor.lhs.false48.if.end170_crit_edge

lor.lhs.false48.if.end170_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

lor.lhs.false48.if.then54_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54

if.then54:                                        ; preds = %lor.lhs.false48.if.then54_crit_edge, %if.end41.if.then54_crit_edge
  %lastseg.0.off0494 = phi i1 [ true, %if.end41.if.then54_crit_edge ], [ %.mux, %lor.lhs.false48.if.then54_crit_edge ]
  %50 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pdesc8, align 4
  %and.i.i = and i32 %51, -65281
  %or.i.i = or i32 %and.i.i, 8192
  store i32 %or.i.i, ptr %pdesc8, align 4
  %add.ptr.i342 = getelementptr i32, ptr %pdesc8, i32 5
  %52 = ptrtoint ptr %add.ptr.i342 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i342, align 4
  %hw_rate = getelementptr inbounds %struct.rtl_tcb_desc, ptr %tcb_desc, i32 0, i32 5
  %54 = ptrtoint ptr %hw_rate to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %hw_rate, align 2
  %conv55 = zext i8 %55 to i32
  %and.i.i343 = and i32 %53, -1056964609
  %56 = shl nuw i32 %conv55, 24
  %57 = and i32 %56, 1056964608
  %or.i.i344 = or i32 %57, %and.i.i343
  store i32 %or.i.i344, ptr %add.ptr.i342, align 4
  %use_shortgi = getelementptr inbounds %struct.rtl_tcb_desc, ptr %tcb_desc, i32 0, i32 2
  %58 = ptrtoint ptr %use_shortgi to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load = load i8, ptr %use_shortgi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %59 = icmp ult i8 %bf.load, 64
  br i1 %59, label %if.then54.if.end64_crit_edge, label %if.then63

if.then54.if.end64_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then63:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.i346 = or i32 %or.i.i344, 1073741824
  %60 = ptrtoint ptr %add.ptr.i342 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or.i.i346, ptr %add.ptr.i342, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.then54.if.end64_crit_edge
  %61 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %info, align 8
  %and65 = and i32 %62, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end64.if.end68_crit_edge, label %if.then67

if.end64.if.end68_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i347 = getelementptr i32, ptr %pdesc8, i32 1
  %63 = ptrtoint ptr %add.ptr.i347 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i347, align 4
  %or.i.i348 = or i32 %64, 536870912
  store i32 %or.i.i348, ptr %add.ptr.i347, align 4
  %add.ptr.i349 = getelementptr i32, ptr %pdesc8, i32 6
  %65 = ptrtoint ptr %add.ptr.i349 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr.i349, align 4
  %and.i.i350 = and i32 %66, -16252929
  %or.i.i351 = or i32 %and.i.i350, 10485760
  store i32 %or.i.i351, ptr %add.ptr.i349, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end64.if.end68_crit_edge
  %add.ptr.i352 = getelementptr i32, ptr %pdesc8, i32 3
  %67 = ptrtoint ptr %add.ptr.i352 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i352, align 4
  %and.i.i353 = and i32 %68, -65296
  %69 = tail call i16 @llvm.bswap.i16(i16 %45)
  %70 = zext i16 %69 to i32
  %or.i.i354 = or i32 %and.i.i353, %70
  %71 = ptrtoint ptr %add.ptr.i352 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or.i.i354, ptr %add.ptr.i352, align 4
  %72 = ptrtoint ptr %tcb_desc to i32
  call void @__asan_load2_noabort(i32 %72)
  %bf.load70 = load i16, ptr %tcb_desc, align 4
  %73 = and i16 %bf.load70, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %73)
  %74 = icmp eq i16 %73, 1024
  %add.ptr.i355 = getelementptr i32, ptr %pdesc8, i32 4
  %75 = ptrtoint ptr %add.ptr.i355 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr.i355, align 4
  %and.i.i356 = and i32 %76, -1048577
  %77 = select i1 %74, i32 1048576, i32 0
  %or.i.i357 = or i32 %77, %and.i.i356
  store i32 %or.i.i357, ptr %add.ptr.i355, align 4
  %78 = ptrtoint ptr %tcb_desc to i32
  call void @__asan_load2_noabort(i32 %78)
  %bf.load80 = load i16, ptr %tcb_desc, align 4
  %79 = and i16 %bf.load80, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %.not = icmp eq i16 %79, 0
  %and.i.i359 = and i32 %or.i.i357, -2097153
  %80 = select i1 %.not, i32 0, i32 2097152
  %or.i.i360 = or i32 %80, %and.i.i359
  %81 = ptrtoint ptr %add.ptr.i355 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or.i.i360, ptr %add.ptr.i355, align 4
  %82 = ptrtoint ptr %tcb_desc to i32
  call void @__asan_load2_noabort(i32 %82)
  %bf.load93 = load i16, ptr %tcb_desc, align 4
  %83 = lshr i16 %bf.load93, 9
  %84 = zext i16 %83 to i32
  %and.i.i362 = and i32 %or.i.i360, -524289
  %85 = shl nuw nsw i32 %84, 19
  %86 = and i32 %85, 524288
  %or.i.i363 = or i32 %86, %and.i.i362
  store i32 %or.i.i363, ptr %add.ptr.i355, align 4
  %bf.load100 = load i16, ptr %tcb_desc, align 4
  %and.i.i365 = and i32 %or.i.i363, -193
  %87 = lshr i16 %bf.load100, 5
  %88 = and i16 %87, 64
  %89 = zext i16 %88 to i32
  %or.i.i366 = or i32 %and.i.i365, %89
  store i32 %or.i.i366, ptr %add.ptr.i355, align 4
  %rts_rate = getelementptr inbounds %struct.rtl_tcb_desc, ptr %tcb_desc, i32 0, i32 1
  %90 = ptrtoint ptr %rts_rate to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %rts_rate, align 2
  %conv107 = zext i8 %91 to i32
  %and.i.i370 = and i32 %or.i.i366, -520093833
  %92 = shl nuw i32 %conv107, 24
  %93 = and i32 %92, 520093696
  %or.i.i371 = or i32 %and.i.i370, %93
  store i32 %or.i.i371, ptr %add.ptr.i355, align 4
  %bf.load108 = load i16, ptr %tcb_desc, align 4
  %and.i.i375 = and i32 %or.i.i371, -185
  %94 = lshr i16 %bf.load108, 2
  %95 = and i16 %94, 16
  %96 = zext i16 %95 to i32
  %or.i.i376 = or i32 %and.i.i375, %96
  store i32 %or.i.i376, ptr %add.ptr.i355, align 4
  %97 = load i8, ptr %rts_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %97)
  %cmp115 = icmp ult i8 %97, 12
  %98 = ptrtoint ptr %tcb_desc to i32
  call void @__asan_load2_noabort(i32 %98)
  %bf.load117 = load i16, ptr %tcb_desc, align 4
  %. = select i1 %cmp115, i16 8, i16 7
  %99 = lshr i16 %bf.load117, %.
  %and.i.i378 = and i32 %or.i.i376, -173
  %cond131.in = shl nuw nsw i16 %99, 2
  %100 = and i16 %cond131.in, 4
  %101 = zext i16 %100 to i32
  %or.i.i379 = or i32 %and.i.i378, %101
  %102 = ptrtoint ptr %add.ptr.i355 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or.i.i379, ptr %add.ptr.i355, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bw_40.0)
  %tobool132.not = icmp eq i8 %bw_40.0, 0
  br i1 %tobool132.not, label %if.else142, label %if.then133

if.then133:                                       ; preds = %if.end68
  %103 = ptrtoint ptr %tcb_desc to i32
  call void @__asan_load2_noabort(i32 %103)
  %bf.load134 = load i16, ptr %tcb_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load134)
  %tobool137.not = icmp ult i16 %bf.load134, 16384
  br i1 %tobool137.not, label %if.else139, label %if.then138

if.then138:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.i385 = or i32 %or.i.i379, 12290
  br label %if.end143

if.else139:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i387 = and i32 %or.i.i379, -171
  %104 = ptrtoint ptr %add.ptr.i355 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %and.i.i387, ptr %add.ptr.i355, align 4
  %cur_40_prime_sc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 46
  %105 = ptrtoint ptr %cur_40_prime_sc to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %cur_40_prime_sc, align 1
  %conv140 = zext i8 %106 to i32
  %and.i.i391 = and i32 %or.i.i379, -12459
  %107 = shl nuw nsw i32 %conv140, 12
  %108 = and i32 %107, 12288
  %or.i.i392 = or i32 %108, %and.i.i391
  br label %if.end143

if.else142:                                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i396 = and i32 %or.i.i379, -12459
  br label %if.end143

if.end143:                                        ; preds = %if.else142, %if.else139, %if.then138
  %or.i.i385.sink = phi i32 [ %or.i.i385, %if.then138 ], [ %or.i.i392, %if.else139 ], [ %and.i.i396, %if.else142 ]
  %109 = ptrtoint ptr %add.ptr.i355 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or.i.i385.sink, ptr %add.ptr.i355, align 4
  %110 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pdesc8, align 4
  %and.i.i397 = and i32 %111, -17
  store i32 %and.i.i397, ptr %pdesc8, align 4
  %112 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %len, align 4
  %conv146 = and i32 %113, 65535
  %and.i.i398 = and i32 %111, 65519
  %114 = tail call i32 @llvm.bswap.i32(i32 %conv146) #6
  %or.i.i399 = or i32 %114, %and.i.i398
  %115 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %or.i.i399, ptr %pdesc8, align 4
  %tobool147.not = icmp eq ptr %call.i339, null
  br i1 %tobool147.not, label %if.end143.if.end151_crit_edge, label %set_tx_desc_ampdu_density.exit

if.end143.if.end151_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151

set_tx_desc_ampdu_density.exit:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i400 = getelementptr i32, ptr %pdesc8, i32 2
  %116 = ptrtoint ptr %add.ptr.i400 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr.i400, align 4
  %ampdu_density149 = getelementptr inbounds %struct.ieee80211_sta, ptr %call.i339, i32 0, i32 3, i32 3
  %118 = ptrtoint ptr %ampdu_density149 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %ampdu_density149, align 4
  %conv150 = zext i8 %119 to i32
  %and.i.i403 = and i32 %117, -28673
  %120 = shl nuw nsw i32 %conv150, 12
  %121 = and i32 %120, 28672
  %or.i.i404 = or i32 %121, %and.i.i403
  store i32 %or.i.i404, ptr %add.ptr.i400, align 4
  br label %if.end151

if.end151:                                        ; preds = %set_tx_desc_ampdu_density.exit, %if.end143.if.end151_crit_edge
  %hw_key = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 12
  %122 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hw_key, align 4
  %tobool152.not = icmp eq ptr %123, null
  br i1 %tobool152.not, label %if.end151.if.end156_crit_edge, label %if.then153

if.end151.if.end156_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

if.then153:                                       ; preds = %if.end151
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cipher, align 8
  %126 = zext i32 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %125, label %sw.default [
    i32 1027073, label %if.then153.sw.bb_crit_edge
    i32 1027077, label %if.then153.sw.bb_crit_edge501
    i32 1027074, label %if.then153.sw.bb_crit_edge502
    i32 1027076, label %sw.bb155
  ]

if.then153.sw.bb_crit_edge502:                    ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then153.sw.bb_crit_edge501:                    ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then153.sw.bb_crit_edge:                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.then153.sw.bb_crit_edge, %if.then153.sw.bb_crit_edge501, %if.then153.sw.bb_crit_edge502
  %add.ptr.i405 = getelementptr i32, ptr %pdesc8, i32 1
  %127 = ptrtoint ptr %add.ptr.i405 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %add.ptr.i405, align 4
  %and.i.i406 = and i32 %128, -49153
  %or.i.i407 = or i32 %and.i.i406, 16384
  store i32 %or.i.i407, ptr %add.ptr.i405, align 4
  br label %if.end156

sw.bb155:                                         ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i408 = getelementptr i32, ptr %pdesc8, i32 1
  %129 = ptrtoint ptr %add.ptr.i408 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %add.ptr.i408, align 4
  %or.i.i410 = or i32 %130, 49152
  store i32 %or.i.i410, ptr %add.ptr.i408, align 4
  br label %if.end156

sw.default:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i411 = getelementptr i32, ptr %pdesc8, i32 1
  %131 = ptrtoint ptr %add.ptr.i411 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %add.ptr.i411, align 4
  %and.i.i412 = and i32 %132, -49153
  store i32 %and.i.i412, ptr %add.ptr.i411, align 4
  br label %if.end156

if.end156:                                        ; preds = %sw.default, %sw.bb155, %sw.bb, %if.end151.if.end156_crit_edge
  %133 = ptrtoint ptr %add.ptr.i352 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %add.ptr.i352, align 4
  %and.i.i414 = and i32 %134, -241
  store i32 %and.i.i414, ptr %add.ptr.i352, align 4
  %add.ptr.i415 = getelementptr i32, ptr %pdesc8, i32 1
  %135 = ptrtoint ptr %add.ptr.i415 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %add.ptr.i415, align 4
  %and.i.i418 = and i32 %136, -2031617
  %or.i.i419 = or i32 %and.i.i418, %retval.0.i
  store i32 %or.i.i419, ptr %add.ptr.i415, align 4
  %137 = ptrtoint ptr %add.ptr.i342 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %add.ptr.i342, align 4
  %or.i.i423 = or i32 %138, 16711936
  store i32 %or.i.i423, ptr %add.ptr.i342, align 4
  %139 = ptrtoint ptr %add.ptr.i355 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %add.ptr.i355, align 4
  %and.i.i425 = and i32 %140, -262145
  store i32 %and.i.i425, ptr %add.ptr.i355, align 4
  %141 = ptrtoint ptr %use_shortgi to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load158 = load i8, ptr %use_shortgi, align 1
  %142 = lshr i8 %bf.load158, 5
  %143 = zext i8 %142 to i32
  %and.i.i427 = and i32 %140, -327681
  %144 = shl nuw nsw i32 %143, 16
  %145 = and i32 %144, 65536
  %or.i.i428 = or i32 %145, %and.i.i427
  store i32 %or.i.i428, ptr %add.ptr.i355, align 4
  %146 = and i16 %3, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %146)
  %cmp.i429 = icmp eq i16 %146, -30720
  br i1 %cmp.i429, label %if.then165, label %if.end156.if.end170_crit_edge

if.end156.if.end170_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

if.then165:                                       ; preds = %if.end156
  %rdg_en = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 32
  %147 = ptrtoint ptr %rdg_en to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %rdg_en, align 8, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool166.not = icmp eq i8 %148, 0
  br i1 %tobool166.not, label %if.then165.if.end170_crit_edge, label %if.then167

if.then165.if.end170_crit_edge:                   ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

if.then167:                                       ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.1) #6
  %149 = ptrtoint ptr %add.ptr.i415 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %add.ptr.i415, align 4
  %or.i.i431 = or i32 %150, -2147483648
  store i32 %or.i.i431, ptr %add.ptr.i415, align 4
  %151 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %pdesc8, align 4
  %or.i.i432 = or i32 %152, 2
  store i32 %or.i.i432, ptr %pdesc8, align 4
  br label %if.end170

if.end170:                                        ; preds = %if.then167, %if.then165.if.end170_crit_edge, %if.end156.if.end170_crit_edge, %lor.lhs.false48.if.end170_crit_edge
  %lastseg.0.off0493 = phi i1 [ %lastseg.0.off0494, %if.end156.if.end170_crit_edge ], [ %lastseg.0.off0494, %if.then167 ], [ %lastseg.0.off0494, %if.then165.if.end170_crit_edge ], [ %extract.t, %lor.lhs.false48.if.end170_crit_edge ]
  %firstseg.0.off0491 = phi i32 [ 8, %if.end156.if.end170_crit_edge ], [ 8, %if.then167 ], [ 8, %if.then165.if.end170_crit_edge ], [ 0, %lor.lhs.false48.if.end170_crit_edge ]
  %call.i433 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i433, label %if.end170.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i436

if.end170.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i436:                               ; preds = %if.end170
  %call1.i434 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i434)
  %tobool.not.i435 = icmp eq i32 %call1.i434, 0
  br i1 %tobool.not.i435, label %land.lhs.true.i436.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i438

land.lhs.true.i436.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i436
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i438:                              ; preds = %land.lhs.true.i436
  %.b4.i437 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i437, label %land.lhs.true2.i438.rcu_read_unlock.exit_crit_edge, label %if.then.i439

land.lhs.true2.i438.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i438
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i439:                                     ; preds = %land.lhs.true2.i438
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i439, %land.lhs.true2.i438.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i436.rcu_read_unlock.exit_crit_edge, %if.end170.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !46
  %153 = tail call i32 @llvm.read_register.i32(metadata !30) #6
  %and.i.i.i.i.i440 = and i32 %153, -16384
  %154 = inttoptr i32 %and.i.i.i.i.i440 to ptr
  %preempt_count.i.i.i.i441 = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %preempt_count.i.i.i.i441 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %preempt_count.i.i.i.i441, align 4
  %sub.i.i.i = add i32 %156, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i441, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %157 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %pdesc8, align 4
  %and.i.i442 = and i32 %158, -13
  %159 = select i1 %lastseg.0.off0493, i32 4, i32 0
  %or.i.i443 = or i32 %159, %firstseg.0.off0491
  %or.i.i445 = or i32 %or.i.i443, %and.i.i442
  store i32 %or.i.i445, ptr %pdesc8, align 4
  %160 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %len, align 4
  %conv179 = and i32 %161, 65535
  %add.ptr.i446 = getelementptr i32, ptr %pdesc8, i32 7
  %162 = ptrtoint ptr %add.ptr.i446 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %add.ptr.i446, align 4
  %and.i.i447 = and i32 %163, 65535
  %164 = tail call i32 @llvm.bswap.i32(i32 %conv179) #6
  %or.i.i448 = or i32 %and.i.i447, %164
  %165 = ptrtoint ptr %add.ptr.i446 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %or.i.i448, ptr %add.ptr.i446, align 4
  %166 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i338) #6
  %add.ptr.i449 = getelementptr i32, ptr %pdesc8, i32 8
  %167 = ptrtoint ptr %add.ptr.i449 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %add.ptr.i449, align 4
  %useramask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 14
  %168 = ptrtoint ptr %useramask to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %useramask, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool180.not = icmp eq i8 %169, 0
  %ratr_index185 = getelementptr inbounds %struct.rtl_tcb_desc, ptr %tcb_desc, i32 0, i32 3
  %170 = ptrtoint ptr %ratr_index185 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %ratr_index185, align 4
  %conv186 = zext i8 %171 to i32
  %add.ptr.i460 = getelementptr i32, ptr %pdesc8, i32 1
  %172 = ptrtoint ptr %add.ptr.i460 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %add.ptr.i460, align 4
  %and.i.i463 = and i32 %173, -3841
  %add = shl nuw nsw i32 %conv186, 8
  br i1 %tobool180.not, label %set_tx_desc_rate_id.exit465, label %set_tx_desc_rate_id.exit

set_tx_desc_rate_id.exit:                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  %174 = and i32 %add, 3840
  %or.i.i454 = or i32 %174, %and.i.i463
  %175 = ptrtoint ptr %add.ptr.i460 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %or.i.i454, ptr %add.ptr.i460, align 4
  %mac_id = getelementptr inbounds %struct.rtl_tcb_desc, ptr %tcb_desc, i32 0, i32 4
  br label %if.end189

set_tx_desc_rate_id.exit465:                      ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  %176 = add nuw nsw i32 %add, 3072
  %177 = and i32 %176, 3840
  %or.i.i464 = or i32 %177, %and.i.i463
  %178 = ptrtoint ptr %add.ptr.i460 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %or.i.i464, ptr %add.ptr.i460, align 4
  br label %if.end189

if.end189:                                        ; preds = %set_tx_desc_rate_id.exit465, %set_tx_desc_rate_id.exit
  %or.i.i464.sink = phi i32 [ %or.i.i454, %set_tx_desc_rate_id.exit ], [ %or.i.i464, %set_tx_desc_rate_id.exit465 ]
  %conv188.sink.in.in = phi ptr [ %mac_id, %set_tx_desc_rate_id.exit ], [ %ratr_index185, %set_tx_desc_rate_id.exit465 ]
  %179 = ptrtoint ptr %conv188.sink.in.in to i32
  call void @__asan_load1_noabort(i32 %179)
  %conv188.sink.in = load i8, ptr %conv188.sink.in.in, align 1
  %conv188.sink = zext i8 %conv188.sink.in to i32
  %and.i.i469 = and i32 %or.i.i464.sink, -520093697
  %180 = shl nuw i32 %conv188.sink, 24
  %181 = and i32 %180, 520093696
  %or.i.i470 = or i32 %181, %and.i.i469
  %182 = ptrtoint ptr %add.ptr.i460 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %or.i.i470, ptr %add.ptr.i460, align 4
  %183 = and i16 %3, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %183)
  %cmp.i472 = icmp eq i16 %183, -30720
  br i1 %cmp.i472, label %if.end189.if.end197_crit_edge, label %land.lhs.true

if.end189.if.end197_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end197

land.lhs.true:                                    ; preds = %if.end189
  %fwctrl_lps = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 10
  %184 = ptrtoint ptr %fwctrl_lps to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %fwctrl_lps, align 2, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool191.not = icmp eq i8 %185, 0
  br i1 %tobool191.not, label %land.lhs.true.if.end197_crit_edge, label %if.then193

land.lhs.true.if.end197_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end197

if.then193:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i473 = getelementptr i32, ptr %pdesc8, i32 4
  %186 = ptrtoint ptr %add.ptr.i473 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %add.ptr.i473, align 4
  %or.i.i474 = or i32 %187, -2147483648
  store i32 %or.i.i474, ptr %add.ptr.i473, align 4
  %add.ptr.i475 = getelementptr i32, ptr %pdesc8, i32 3
  %188 = ptrtoint ptr %add.ptr.i475 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %add.ptr.i475, align 4
  %and.i.i476 = and i32 %189, -241
  %or.i.i477 = or i32 %and.i.i476, 128
  store i32 %or.i.i477, ptr %add.ptr.i475, align 4
  br label %if.end197

if.end197:                                        ; preds = %if.then193, %land.lhs.true.if.end197_crit_edge, %if.end189.if.end197_crit_edge
  %add.ptr.i478 = getelementptr i32, ptr %pdesc8, i32 2
  %190 = ptrtoint ptr %add.ptr.i478 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %add.ptr.i478, align 4
  %and.i.i479 = and i32 %191, -513
  %192 = select i1 %lastseg.0.off0493, i32 0, i32 512
  %or.i.i480 = or i32 %and.i.i479, %192
  store i32 %or.i.i480, ptr %add.ptr.i478, align 4
  %193 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %hdr, align 2
  %195 = and i16 %194, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %195)
  %cmp.i.not.i = icmp eq i16 %195, 0
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 4
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %retval.0.i481 = select i1 %cmp.i.not.i, ptr %addr1.i, ptr %addr3.i
  %196 = ptrtoint ptr %retval.0.i481 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %retval.0.i481, align 4
  %198 = and i32 %197, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool.i.not = icmp eq i32 %198, 0
  br i1 %tobool.i.not, label %lor.lhs.false204, label %if.end197.if.then208_crit_edge

if.end197.if.then208_crit_edge:                   ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then208

lor.lhs.false204:                                 ; preds = %if.end197
  %199 = ptrtoint ptr %retval.0.i481 to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %retval.0.i481, align 2
  %add.ptr1.i = getelementptr i8, ptr %retval.0.i481, i32 2
  %201 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %202, %200
  %add.ptr3.i = getelementptr i8, ptr %retval.0.i481, i32 4
  %203 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %204
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i486 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i486, label %lor.lhs.false204.if.then208_crit_edge, label %lor.lhs.false204.cleanup_crit_edge

lor.lhs.false204.cleanup_crit_edge:               ; preds = %lor.lhs.false204
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false204.if.then208_crit_edge:            ; preds = %lor.lhs.false204
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then208

if.then208:                                       ; preds = %lor.lhs.false204.if.then208_crit_edge, %if.end197.if.then208_crit_edge
  %205 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %pdesc8, align 4
  %or.i.i487 = or i32 %206, 1
  store i32 %or.i.i487, ptr %pdesc8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then208, %lor.lhs.false204.cleanup_crit_edge, %dma_map_single_attrs.exit.cleanup_crit_edge
  %.str.2.sink = phi ptr [ @.str, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ @.str.2, %if.then208 ], [ @.str.2, %lor.lhs.false204.cleanup_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull %.str.2.sink) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_get_tcb_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_tx_fill_cmddesc(ptr nocapture noundef readonly %hw, ptr noundef %pdesc8, i1 noundef zeroext %firstseg, i1 noundef zeroext %lastseg, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %3) #6
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !44

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev4) #6
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %dev4, ptr noundef %3, i32 noundef %9) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %3 to i32
  %sub.i = add i32 %15, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %14, i32 %shr.i
  %and.i = and i32 %15, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev4, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %9, i32 noundef 1, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev7, i32 noundef %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %18 = call ptr @memset(ptr %pdesc8, i32 0, i32 40)
  br i1 %firstseg, label %if.then10, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pdesc8, align 4
  %and.i.i = and i32 %20, -65281
  %or.i.i = or i32 %and.i.i, 8192
  store i32 %or.i.i, ptr %pdesc8, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %add.ptr.i55 = getelementptr i32, ptr %pdesc8, i32 5
  %21 = ptrtoint ptr %add.ptr.i55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i55, align 4
  %and.i.i56 = and i32 %22, -1056964609
  store i32 %and.i.i56, ptr %add.ptr.i55, align 4
  %add.ptr.i57 = getelementptr i32, ptr %pdesc8, i32 3
  %23 = ptrtoint ptr %add.ptr.i57 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i57, align 4
  %and.i.i58 = and i32 %24, -65296
  store i32 %and.i.i58, ptr %add.ptr.i57, align 4
  %25 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pdesc8, align 4
  %add.ptr.i60 = getelementptr i32, ptr %pdesc8, i32 1
  %27 = ptrtoint ptr %add.ptr.i60 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i60, align 4
  %and.i.i61 = and i32 %28, -2031617
  %or.i.i62 = or i32 %and.i.i61, 1048576
  store i32 %or.i.i62, ptr %add.ptr.i60, align 4
  %and.i.i63 = and i32 %26, -29
  %or.i.i66 = or i32 %and.i.i63, 12
  store i32 %or.i.i66, ptr %pdesc8, align 4
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %conv14 = and i32 %30, 65535
  %add.ptr.i67 = getelementptr i32, ptr %pdesc8, i32 7
  %31 = ptrtoint ptr %add.ptr.i67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i67, align 4
  %and.i.i68 = and i32 %32, 65535
  %33 = tail call i32 @llvm.bswap.i32(i32 %conv14) #6
  %or.i.i69 = or i32 %and.i.i68, %33
  %34 = ptrtoint ptr %add.ptr.i67 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i.i69, ptr %add.ptr.i67, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #6
  %add.ptr.i70 = getelementptr i32, ptr %pdesc8, i32 8
  %36 = ptrtoint ptr %add.ptr.i70 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %add.ptr.i70, align 4
  %and.i.i72 = and i32 %or.i.i62, -521080577
  %or.i.i73 = or i32 %and.i.i72, 1792
  %37 = ptrtoint ptr %add.ptr.i60 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.i.i73, ptr %add.ptr.i60, align 4
  %or.i.i76 = or i32 %and.i.i63, 140
  %38 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i.i76, ptr %pdesc8, align 4
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  %conv17 = and i32 %40, 65535
  %and.i.i77 = and i32 %or.i.i76, 227
  %41 = tail call i32 @llvm.bswap.i32(i32 %conv17) #6
  %or.i.i78 = or i32 %and.i.i77, %41
  %or.i.i84 = or i32 %or.i.i78, 8204
  %42 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or.i.i84, ptr %pdesc8, align 4
  %add.ptr.i85 = getelementptr i32, ptr %pdesc8, i32 4
  %43 = ptrtoint ptr %add.ptr.i85 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i85, align 4
  %or.i.i87 = or i32 %44, 65536
  store i32 %or.i.i87, ptr %add.ptr.i85, align 4
  %45 = and i16 %5, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %45)
  %cmp.i88 = icmp eq i16 %45, -30720
  br i1 %cmp.i88, label %if.end11.if.end20_crit_edge, label %if.then19

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then19:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.i90 = or i32 %44, -2147418112
  %46 = ptrtoint ptr %add.ptr.i85 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or.i.i90, ptr %add.ptr.i85, align 4
  %and.i.i92 = and i32 %24, -65536
  %or.i.i93 = or i32 %and.i.i92, 128
  %47 = ptrtoint ptr %add.ptr.i57 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i.i93, ptr %add.ptr.i57, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end11.if.end20_crit_edge
  tail call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef %pdesc8, i32 noundef 64) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_set_desc(ptr nocapture noundef readnone %hw, ptr nocapture noundef %pdesc8, i1 noundef zeroext %istx, i8 noundef zeroext %desc_name, ptr nocapture noundef readonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %desc_name to i32
  br i1 %istx, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %desc_name, label %land.end [
    i8 0, label %do.body
    i8 2, label %sw.bb1
  ]

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %1 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pdesc8, align 4
  %or.i.i = or i32 %2, 128
  store i32 %or.i.i, ptr %pdesc8, align 4
  br label %if.end101

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %add.ptr.i = getelementptr i32, ptr %pdesc8, i32 10
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr.i, align 4
  br label %if.end101

land.end:                                         ; preds = %if.then
  %.b118 = load i1, ptr @rtl92ce_set_desc.__already_done, align 1
  br i1 %.b118, label %land.end.if.end101_crit_edge, label %if.then8, !prof !44

land.end.if.end101_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rtl92ce_set_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 600, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %conv) #6
  br label %if.end101

if.else:                                          ; preds = %entry
  %7 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %desc_name, label %land.end57 [
    i8 1, label %do.body43
    i8 4, label %sw.bb46
    i8 5, label %set_rx_desc_pkt_len.exit
    i8 6, label %sw.bb48
  ]

do.body43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pdesc8, align 4
  %or.i.i119 = or i32 %9, 128
  store i32 %or.i.i119, ptr %pdesc8, align 4
  br label %if.end101

sw.bb46:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  %add.ptr.i120 = getelementptr i32, ptr %pdesc8, i32 6
  %13 = ptrtoint ptr %add.ptr.i120 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr.i120, align 4
  br label %if.end101

set_rx_desc_pkt_len.exit:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pdesc8, align 4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %and.i.i = and i32 %15, 12648447
  %18 = and i32 %17, 16383
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  %or.i.i121 = or i32 %and.i.i, %19
  %20 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i.i121, ptr %pdesc8, align 4
  br label %if.end101

sw.bb48:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pdesc8, align 4
  %or.i.i122 = or i32 %22, 64
  store i32 %or.i.i122, ptr %pdesc8, align 4
  br label %if.end101

land.end57:                                       ; preds = %if.else
  %.b116117 = load i1, ptr @rtl92ce_set_desc.__already_done.6, align 1
  br i1 %.b116117, label %land.end57.if.end101_crit_edge, label %if.then64, !prof !44

land.end57.if.end101_crit_edge:                   ; preds = %land.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then64:                                        ; preds = %land.end57
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rtl92ce_set_desc.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 620, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %conv) #6
  br label %if.end101

if.end101:                                        ; preds = %if.then64, %land.end57.if.end101_crit_edge, %sw.bb48, %set_rx_desc_pkt_len.exit, %sw.bb46, %do.body43, %if.then8, %land.end.if.end101_crit_edge, %sw.bb1, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @rtl92ce_get_desc(ptr nocapture readnone %hw, ptr nocapture noundef readonly %p_desc8, i1 noundef zeroext %istx, i8 noundef zeroext %desc_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %desc_name to i32
  br i1 %istx, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %desc_name, label %land.end [
    i8 0, label %sw.bb
    i8 3, label %sw.bb1
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %p_desc8 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %p_desc8, align 4
  %.mask.i = lshr i32 %2, 7
  %.mask.lobit.i = and i32 %.mask.i, 1
  br label %if.end98

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i32, ptr %p_desc8, i32 8
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  br label %if.end98

land.end:                                         ; preds = %if.then
  %.b113 = load i1, ptr @rtl92ce_get_desc.__already_done, align 1
  br i1 %.b113, label %land.end.if.end98_crit_edge, label %if.then9, !prof !44

land.end.if.end98_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then9:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rtl92ce_get_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 642, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %conv) #6
  br label %if.end98

if.else:                                          ; preds = %entry
  %6 = zext i8 %desc_name to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %desc_name, label %land.end54 [
    i8 0, label %sw.bb40
    i8 5, label %sw.bb42
    i8 4, label %sw.bb44
  ]

sw.bb40:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %p_desc8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %p_desc8, align 4
  %.mask.i114 = lshr i32 %8, 7
  %.mask.lobit.i115 = and i32 %.mask.i114, 1
  br label %if.end98

sw.bb42:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %p_desc8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %p_desc8, align 4
  %11 = and i32 %10, -12648448
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  br label %if.end98

sw.bb44:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i116 = getelementptr i32, ptr %p_desc8, i32 6
  %13 = ptrtoint ptr %add.ptr.i116 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i116, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  br label %if.end98

land.end54:                                       ; preds = %if.else
  %.b111112 = load i1, ptr @rtl92ce_get_desc.__already_done.8, align 1
  br i1 %.b111112, label %land.end54.if.end98_crit_edge, label %if.then61, !prof !44

land.end54.if.end98_crit_edge:                    ; preds = %land.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then61:                                        ; preds = %land.end54
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rtl92ce_get_desc.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 658, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %conv) #6
  br label %if.end98

if.end98:                                         ; preds = %if.then61, %land.end54.if.end98_crit_edge, %sw.bb44, %sw.bb42, %sw.bb40, %if.then9, %land.end.if.end98_crit_edge, %sw.bb1, %sw.bb
  %ret.0 = phi i32 [ %5, %sw.bb1 ], [ %.mask.lobit.i, %sw.bb ], [ %15, %sw.bb44 ], [ %12, %sw.bb42 ], [ %.mask.lobit.i115, %sw.bb40 ], [ 0, %if.then9 ], [ 0, %land.end.if.end98_crit_edge ], [ 0, %if.then61 ], [ 0, %land.end54.if.end98_crit_edge ]
  %conv99 = zext i32 %ret.0 to i64
  ret i64 %conv99
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rtl92ce_is_tx_desc_closed(ptr nocapture noundef readonly %hw, i8 noundef zeroext %hw_queue, i16 noundef zeroext %index) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
define dso_local void @rtl92ce_tx_polling(ptr nocapture noundef readonly %hw, i8 noundef zeroext %hw_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %3(ptr noundef %1, i32 noundef 768, i16 noundef zeroext 16) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.if.end.sink.split_crit_edge

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.sink.split

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  %conv = zext i8 %hw_queue to i32
  %shl = shl nuw i32 1, %conv
  %conv3 = trunc i32 %shl to i16
  %write16_async.i6 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %8 = ptrtoint ptr %write16_async.i6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write16_async.i6, align 4
  tail call void %9(ptr noundef %1, i32 noundef 768, i16 noundef zeroext %conv3) #6
  %cfg.i7 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %10 = ptrtoint ptr %cfg.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg.i7, align 8
  %write_readback.i8 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_readback.i8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %write_readback.i8, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i9 = icmp eq i8 %13, 0
  br i1 %tobool.not.i9, label %if.else.if.end_crit_edge, label %if.else.if.end.sink.split_crit_edge

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.sink.split

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %if.then.if.end.sink.split_crit_edge
  %read16_sync.i10 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %14 = ptrtoint ptr %read16_sync.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read16_sync.i10, align 4
  %call.i11 = tail call zeroext i16 %15(ptr noundef %1, i32 noundef 768) #6
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !15, !17, !19, !21, !22, !23, !25, !26, !27, !29}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/trx.c", i32 370, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/trx.c", i32 479, i32 5}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/trx.c", i32 518, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/trx.c", i32 580, i32 2}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/trx.c", i32 599, i32 4}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/trx.c", i32 619, i32 4}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/trx.c", i32 641, i32 4}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/trx.c", i32 657, i32 4}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{!"sp"}
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
!45 = !{i64 2149337473}
!46 = !{i64 2149337739}
!47 = !{i64 2158096559}
!48 = !{i64 2158097928}
