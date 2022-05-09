; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.wlan_pwr_cfg = type <{ i16, i8, i16, i8, i8, i8 }>
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.rtl_priv = type { ptr, %struct.completion, %struct.list_head, ptr, ptr, %struct.rtl_dualmac_easy_concurrent_ctl, %struct.rtl_dmsp_ctl, %struct.rtl_locks, %struct.rtl_works, %struct.rtl_mac, %struct.rtl_hal, %struct.rtl_regulatory, %struct.rtl_rfkill, %struct.rtl_io, %struct.rtl_phy, %struct.rtl_dm, %struct.rtl_security, %struct.rtl_efuse, %struct.rtl_led_ctl, %struct.rtl_tx_report, %struct.rtl_scan_list, %struct.rtl_ps_ctl, %struct.rate_adaptive, %struct.dynamic_primary_cca, %struct.wireless_stats, %struct.rt_link_detect, %struct.false_alarm_statistics, ptr, %struct.list_head, %struct.sk_buff_head, %struct.rtl_debug, i32, ptr, ptr, i32, %struct.dig_t, %struct.ps_t, i32, i32, i32, i32, i8, i8, ptr, i32, i8, i8, [5 x i8], %struct.proxim, %struct.bt_coexist_info, i8, %struct.wiphy_wowlan_support, [0 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtl_dualmac_easy_concurrent_ctl = type { i32, i8, i8, i8, i8 }
%struct.rtl_dmsp_ctl = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i32 }
%struct.rtl_locks = type { %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_tx_desc = type { [16 x i32] }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.140, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.140 = type { ptr }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
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
%struct.rtl_mod_params = type { i64, i8, i32, i8, i8, i8, i8, i8, i32, i8, i8, i32 }
%struct.rtl_intf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_int = type { i32, i32, i32, i32 }
%struct.txpower_info_2g = type { [4 x [6 x i8]], [4 x [6 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]] }
%struct.txpower_info_5g = type { [4 x [14 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]] }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.rtl_sta_info = type <{ %struct.list_head, [9 x %struct.rtl_tid_data], %struct.rssi_sta, i8, i16, i8, i8, [6 x i8] }>
%struct.rssi_sta = type { i32, i32 }

@rtl88ee_get_hw_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013rtl8188ee: switch case %#x not processed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl88ee_get_hw_reg\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c\00", [44 x i8] zeroinitializer }, align 32
@rtl88ee_get_hw_reg._entry_ptr = internal global ptr @rtl88ee_get_hw_reg._entry, section ".printk_index", align 4
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HW_VAR_SLOT_TIME %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set HW_VAR_AMPDU_MIN_SPACE: %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set HW_VAR_SHORTGI_DENSITY: %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Set HW_VAR_AMPDU_FACTOR: %#x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"HW_VAR_ACM_CTRL acm set failed: eACI is %d\0A\00", [52 x i8] zeroinitializer }, align 32
@rtl88ee_set_hw_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl88ee_set_hw_reg\00", [45 x i8] zeroinitializer }, align 32
@rtl88ee_set_hw_reg._entry_ptr = internal global ptr @rtl88ee_set_hw_reg._entry, section ".printk_index", align 4
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"SetHwReg8190pci(): [HW_VAR_ACM_CTRL] Write 0x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtl88ee_set_hw_reg._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl88ee_set_hw_reg._entry_ptr.11 = internal global ptr @rtl88ee_set_hw_reg._entry.10, section ".printk_index", align 4
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"PairwiseEncAlgorithm = %d GroupEncAlgorithm = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"not open hw encryption\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"The SECR-value %x\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl88ee_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016rtl8188ee: Init MAC failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtl88ee_hw_init\00", [16 x i8] zeroinitializer }, align 32
@rtl88ee_hw_init._entry_ptr = internal global ptr @rtl88ee_hw_init._entry, section ".printk_index", align 4
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to download FW. Init HW without FW now..\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx idle ant %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MAIN_ANT\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AUX_ANT\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PA BIAS path A\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"under 1.5V\0A\00", [20 x i8] zeroinitializer }, align 32
@rtl88ee_set_qos.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtl8188ee: invalid aci: %d !\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RTL8188ee card disable\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"beacon_interval:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"add_msr:%x, rm_msr:%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VersionID = 0x%4x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Boot from EEPROM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Boot from EFUSE\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Autoload OK\0A\00", [19 x i8] zeroinitializer }, align 32
@rtl88ee_read_eeprom_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 1959, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013rtl8188ee: Autoload ERR!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtl88ee_read_eeprom_info\00", [39 x i8] zeroinitializer }, align 32
@rtl88ee_read_eeprom_info._entry_ptr = internal global ptr @rtl88ee_read_eeprom_info._entry, section ".printk_index", align 4
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"GPIOChangeRF  - HW Radio ON, RF ON\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"GPIOChangeRF  - HW Radio OFF, RF OFF\0A\00", [58 x i8] zeroinitializer }, align 32
@rtl88ee_set_key.cam_const_addr = internal global { [4 x [6 x i8]], [40 x i8] } { [4 x [6 x i8]] [[6 x i8] zeroinitializer, [6 x i8] c"\00\00\00\00\00\01", [6 x i8] c"\00\00\00\00\00\02", [6 x i8] c"\00\00\00\00\00\03"], [40 x i8] zeroinitializer }, align 32
@rtl88ee_set_key.cam_const_broad = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clear_all\0A\00", [21 x i8] zeroinitializer }, align 32
@rtl88ee_set_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.36, ptr @.str.2, i32 2325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtl88ee_set_key\00", [16 x i8] zeroinitializer }, align 32
@rtl88ee_set_key._entry_ptr = internal global ptr @rtl88ee_set_key._entry, section ".printk_index", align 4
@rtl88ee_set_key._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 2343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rtl8188ee: Can not find free hw security cam entry\0A\00", [42 x i8] zeroinitializer }, align 32
@rtl88ee_set_key._entry_ptr.39 = internal global ptr @rtl88ee_set_key._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"delete one entry, entry_id is %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"add one entry\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set Pairwise key\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set group key\0A\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.44 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Receive CPWM INT!!! Set pHalData->FwPSState = %X\0A\00", [46 x i8] zeroinitializer }, align 32
@rtl8188ee_card_enable_flow = external dso_local global [21 x %struct.wlan_pwr_cfg], align 2
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"init MAC Fail as rtl_hal_pwrseqcmdparsing\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LLT table init fail\0A\00", [43 x i8] zeroinitializer }, align 32
@_rtl88ee_llt_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013rtl8188ee: Failed to polling write LLT done at address %d!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_rtl88ee_llt_write\00", [45 x i8] zeroinitializer }, align 32
@_rtl88ee_llt_write._entry_ptr = internal global ptr @_rtl88ee_llt_write._entry, section ".printk_index", align 4
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Set Network type to NO LINK!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Set Network type to Ad Hoc!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Set Network type to STA!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Set Network type to AP!\0A\00", [39 x i8] zeroinitializer }, align 32
@_rtl88ee_set_media_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 1227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013rtl8188ee: Network type %d not support!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_rtl88ee_set_media_status\00", [38 x i8] zeroinitializer }, align 32
@_rtl88ee_set_media_status._entry_ptr = internal global ptr @_rtl88ee_set_media_status._entry, section ".printk_index", align 4
@.str.55 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Set HW_VAR_MEDIA_STATUS: No such media status(%x).\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"POWER OFF adapter\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl8188ee_enter_lps_flow = external dso_local global [16 x %struct.wlan_pwr_cfg], align 2
@rtl8188ee_card_disable_flow = external dso_local global [21 x %struct.wlan_pwr_cfg], align 2
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Chip RF Type: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RF_1T1R\00", [24 x i8] zeroinitializer }, align 32
@__const._rtl88ee_read_adapter_info.params = private unnamed_addr constant [10 x i32] [i32 33065, i32 214, i32 216, i32 218, i32 220, i32 208, i32 184, i32 196, i32 197, i32 11], align 4
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EEPROM Customer ID: 0x%2x\0A\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.61 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"RF(%d)-Ch(%d) [CCK / HT40_1S ] = [0x%x / 0x%x ]\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"thermalmeter = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"eeprom_regulatory = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"hal_ReadPowerValueFromPROM88E():PROMContent[0x%x]=0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"auto load fail : Use Default value!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RT Customized ID: 0x%02X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ratr_bitmap :%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Rate_index:%x, ratr_val:%x, %x:%x:%x:%x:%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@switch.table.rtl88ee_read_eeprom_info = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\06\00\05\07\08", [27 x i8] zeroinitializer }, align 32
@switch.table.rtl88ee_set_key = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 1, i32 4, i32 5], [44 x i8] zeroinitializer }, align 32
@switch.table.rtl8188ee_read_bt_coexist_info_from_hwpg = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\06\00\05\07\08", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 40, i64 44, i64 65, i64 84, i64 86, i64 92]
@__sancov_gen_cov_switch_values.70 = internal global [30 x i64] [i64 28, i64 8, i64 0, i64 2, i64 3, i64 14, i64 18, i64 19, i64 27, i64 28, i64 29, i64 30, i64 32, i64 33, i64 44, i64 53, i64 56, i64 57, i64 60, i64 61, i64 62, i64 64, i64 65, i64 67, i64 68, i64 72, i64 82, i64 84, i64 87, i64 94]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 268435456]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.76 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 13]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 16, i64 4133, i64 4156, i64 4332, i64 6058]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 16, i64 2, i64 4, i64 16, i64 32]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 16, i64 2, i64 4, i64 16, i64 32]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 7]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 342, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 402, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 447, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 461, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 502, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 538, i32 5 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 555, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 561, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 719, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1004, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1010, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1026, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1071, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1078, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1132, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1150, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1159, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1325, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1428, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1487, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1500, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1944, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1948, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1951, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1955, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1959, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 2237, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 2245, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [15 x i8] c"cam_const_addr\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 2281, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant [16 x i8] c"cam_const_broad\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 2287, i32 12 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 2296, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 2324, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 2343, i32 7 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 2355, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 2363, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 2366, i32 5 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 2374, i32 5 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 142, i32 5 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 836, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 872, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 740, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1205, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1211, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1217, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1223, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1227, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1249, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1371, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1187, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1827, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1771, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1791, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1802, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1560, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1567, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1926, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 2170, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 2175, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.315 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 2050, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [38 x i8] c"switch.table.rtl88ee_read_eeprom_info\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [29 x i8] c"switch.table.rtl88ee_set_key\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [54 x i8] c"switch.table.rtl8188ee_read_bt_coexist_info_from_hwpg\00", align 1
@llvm.compiler.used = appending global [88 x ptr] [ptr @_rtl88ee_llt_write._entry, ptr @_rtl88ee_llt_write._entry_ptr, ptr @_rtl88ee_set_media_status._entry, ptr @_rtl88ee_set_media_status._entry_ptr, ptr @rtl88ee_get_hw_reg._entry, ptr @rtl88ee_get_hw_reg._entry_ptr, ptr @rtl88ee_hw_init._entry, ptr @rtl88ee_hw_init._entry_ptr, ptr @rtl88ee_read_eeprom_info._entry, ptr @rtl88ee_read_eeprom_info._entry_ptr, ptr @rtl88ee_set_hw_reg._entry, ptr @rtl88ee_set_hw_reg._entry.10, ptr @rtl88ee_set_hw_reg._entry_ptr, ptr @rtl88ee_set_hw_reg._entry_ptr.11, ptr @rtl88ee_set_key._entry, ptr @rtl88ee_set_key._entry.37, ptr @rtl88ee_set_key._entry_ptr, ptr @rtl88ee_set_key._entry_ptr.39, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @rtl88ee_set_key.cam_const_addr, ptr @rtl88ee_set_key.cam_const_broad, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @switch.table.rtl88ee_read_eeprom_info, ptr @switch.table.rtl88ee_set_key, ptr @switch.table.rtl8188ee_read_bt_coexist_info_from_hwpg], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88ee_get_hw_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88ee_set_hw_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88ee_set_hw_reg._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88ee_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88ee_read_eeprom_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88ee_set_key.cam_const_addr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88ee_set_key.cam_const_broad to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88ee_set_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88ee_set_key._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl88ee_llt_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl88ee_set_media_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl88ee_read_eeprom_info to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl88ee_set_key to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8188ee_read_bt_coexist_info_from_hwpg to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_fw_clk_off_timer_callback(ptr nocapture noundef readonly %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -960
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call fastcc void @_rtl88ee_set_fw_clock_off(ptr noundef %1, i8 noundef zeroext 1) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_get_hw_reg(ptr noundef %hw, i8 noundef zeroext %variable, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  %rfstate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i8 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %variable, label %do.end [
    i8 44, label %sw.bb
    i8 40, label %sw.bb4
    i8 86, label %sw.bb5
    i8 65, label %sw.bb10
    i8 84, label %sw.bb12
    i8 92, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %receive_config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %receive_config, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %val, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %6 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rfpwr_state, align 4
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rfstate) #7
  %9 = ptrtoint ptr %rfstate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %rfstate, align 4, !annotation !155
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %get_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %get_hw_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_hw_reg, align 4
  call void %15(ptr noundef %hw, i8 noundef zeroext 40, ptr noundef nonnull %rfstate) #7
  %16 = ptrtoint ptr %rfstate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rfstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp eq i32 %17, 2
  br i1 %cmp, label %sw.bb5.if.end9_crit_edge, label %if.else

sw.bb5.if.end9_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.else:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %18 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32_sync.i, align 4
  %call.i = call i32 %19(ptr noundef %1, i32 noundef 1544) #7
  %and = and i32 %call.i, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = zext i1 %tobool.not to i8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %sw.bb5.if.end9_crit_edge
  %.sink = phi i8 [ 1, %sw.bb5.if.end9_crit_edge ], [ %., %if.else ]
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %val, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rfstate) #7
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 13
  %21 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fw_current_inpsmode, align 1, !range !156
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %val, align 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i32 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %24 = ptrtoint ptr %read32_sync.i32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32_sync.i32, align 4
  %call.i33 = tail call i32 %25(ptr noundef %1, i32 noundef 1380) #7
  %26 = ptrtoint ptr %read32_sync.i32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32_sync.i32, align 4
  %call.i35 = tail call i32 %27(ptr noundef %1, i32 noundef 1376) #7
  %tsf.sroa.5.0.insert.ext = zext i32 %call.i33 to i64
  %tsf.sroa.0.0.insert.ext = zext i32 %call.i35 to i64
  %tsf.sroa.0.0.insert.shift = shl nuw i64 %tsf.sroa.0.0.insert.ext, 32
  %tsf.sroa.0.0.insert.insert = or i64 %tsf.sroa.0.0.insert.shift, %tsf.sroa.5.0.insert.ext
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %tsf.sroa.0.0.insert.insert, ptr %val, align 8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %variable to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb12, %sw.bb10, %if.end9, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_set_hw_reg(ptr noundef %hw, i8 noundef zeroext %variable, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %fw_current_inps.i = alloca i8, align 1
  %rpwm_val.i = alloca i8, align 1
  %e_aci = alloca i8, align 1
  %e_aci170 = alloca i8, align 1
  %array = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i8 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %variable, label %do.end352 [
    i8 0, label %for.cond.preheader
    i8 2, label %sw.bb9
    i8 3, label %for.cond29.preheader
    i8 14, label %sw.bb41
    i8 18, label %sw.bb46
    i8 19, label %sw.bb58
    i8 27, label %sw.bb71
    i8 28, label %sw.bb72
    i8 29, label %sw.bb93
    i8 30, label %sw.bb102
    i8 32, label %sw.bb169
    i8 33, label %sw.bb178
    i8 44, label %sw.bb224
    i8 53, label %sw.bb227
    i8 87, label %sw.bb234
    i8 57, label %sw.bb235
    i8 56, label %sw.bb236
    i8 72, label %sw.bb237
    i8 60, label %sw.bb239
    i8 61, label %sw.bb250
    i8 65, label %sw.bb251
    i8 67, label %sw.bb253
    i8 68, label %sw.bb254
    i8 62, label %sw.bb261
    i8 64, label %sw.bb322
    i8 82, label %sw.bb323
    i8 84, label %sw.bb332
    i8 94, label %sw.bb345
  ]

for.cond29.preheader:                             ; preds = %entry
  %write8_async.i576 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i577 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i580 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %5 = ptrtoint ptr %write8_async.i576 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write8_async.i576, align 4
  tail call void %6(ptr noundef %1, i32 noundef 1560, i8 noundef zeroext %4) #7
  %7 = ptrtoint ptr %cfg.i577 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i577, align 8
  %write_readback.i578 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i578 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i578, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i579 = icmp eq i8 %10, 0
  br i1 %tobool.not.i579, label %for.cond29.preheader.rtl_write_byte.exit583_crit_edge, label %if.then.i582

for.cond29.preheader.rtl_write_byte.exit583_crit_edge: ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit583

for.cond.preheader:                               ; preds = %entry
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val, align 1
  %13 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write8_async.i, align 4
  tail call void %14(ptr noundef %1, i32 noundef 1552, i8 noundef zeroext %12) #7
  %15 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %write_readback.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %for.cond.preheader.rtl_write_byte.exit_crit_edge, label %if.then.i

for.cond.preheader.rtl_write_byte.exit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %20(ptr noundef %1, i32 noundef 1552) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %for.cond.preheader.rtl_write_byte.exit_crit_edge
  %arrayidx.1 = getelementptr i8, ptr %val, i32 1
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.1, align 1
  %23 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write8_async.i, align 4
  tail call void %24(ptr noundef %1, i32 noundef 1553, i8 noundef zeroext %22) #7
  %25 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %write_readback.i.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %write_readback.i.1, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.1 = icmp eq i8 %28, 0
  br i1 %tobool.not.i.1, label %rtl_write_byte.exit.rtl_write_byte.exit.1_crit_edge, label %if.then.i.1

rtl_write_byte.exit.rtl_write_byte.exit.1_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.1

if.then.i.1:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read8_sync.i, align 4
  %call.i.1 = tail call zeroext i8 %30(ptr noundef %1, i32 noundef 1553) #7
  br label %rtl_write_byte.exit.1

rtl_write_byte.exit.1:                            ; preds = %if.then.i.1, %rtl_write_byte.exit.rtl_write_byte.exit.1_crit_edge
  %arrayidx.2 = getelementptr i8, ptr %val, i32 2
  %31 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.2, align 1
  %33 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write8_async.i, align 4
  tail call void %34(ptr noundef %1, i32 noundef 1554, i8 noundef zeroext %32) #7
  %35 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write_readback.i.2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %write_readback.i.2, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.2 = icmp eq i8 %38, 0
  br i1 %tobool.not.i.2, label %rtl_write_byte.exit.1.rtl_write_byte.exit.2_crit_edge, label %if.then.i.2

rtl_write_byte.exit.1.rtl_write_byte.exit.2_crit_edge: ; preds = %rtl_write_byte.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.2

if.then.i.2:                                      ; preds = %rtl_write_byte.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read8_sync.i, align 4
  %call.i.2 = tail call zeroext i8 %40(ptr noundef %1, i32 noundef 1554) #7
  br label %rtl_write_byte.exit.2

rtl_write_byte.exit.2:                            ; preds = %if.then.i.2, %rtl_write_byte.exit.1.rtl_write_byte.exit.2_crit_edge
  %arrayidx.3 = getelementptr i8, ptr %val, i32 3
  %41 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.3, align 1
  %43 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write8_async.i, align 4
  tail call void %44(ptr noundef %1, i32 noundef 1555, i8 noundef zeroext %42) #7
  %45 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %write_readback.i.3 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %write_readback.i.3, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.3 = icmp eq i8 %48, 0
  br i1 %tobool.not.i.3, label %rtl_write_byte.exit.2.rtl_write_byte.exit.3_crit_edge, label %if.then.i.3

rtl_write_byte.exit.2.rtl_write_byte.exit.3_crit_edge: ; preds = %rtl_write_byte.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.3

if.then.i.3:                                      ; preds = %rtl_write_byte.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read8_sync.i, align 4
  %call.i.3 = tail call zeroext i8 %50(ptr noundef %1, i32 noundef 1555) #7
  br label %rtl_write_byte.exit.3

rtl_write_byte.exit.3:                            ; preds = %if.then.i.3, %rtl_write_byte.exit.2.rtl_write_byte.exit.3_crit_edge
  %arrayidx.4 = getelementptr i8, ptr %val, i32 4
  %51 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.4, align 1
  %53 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write8_async.i, align 4
  tail call void %54(ptr noundef %1, i32 noundef 1556, i8 noundef zeroext %52) #7
  %55 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write_readback.i.4 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %write_readback.i.4, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.4 = icmp eq i8 %58, 0
  br i1 %tobool.not.i.4, label %rtl_write_byte.exit.3.rtl_write_byte.exit.4_crit_edge, label %if.then.i.4

rtl_write_byte.exit.3.rtl_write_byte.exit.4_crit_edge: ; preds = %rtl_write_byte.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.4

if.then.i.4:                                      ; preds = %rtl_write_byte.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read8_sync.i, align 4
  %call.i.4 = tail call zeroext i8 %60(ptr noundef %1, i32 noundef 1556) #7
  br label %rtl_write_byte.exit.4

rtl_write_byte.exit.4:                            ; preds = %if.then.i.4, %rtl_write_byte.exit.3.rtl_write_byte.exit.4_crit_edge
  %arrayidx.5 = getelementptr i8, ptr %val, i32 5
  %61 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.5, align 1
  %63 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write8_async.i, align 4
  tail call void %64(ptr noundef %1, i32 noundef 1557, i8 noundef zeroext %62) #7
  %65 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %write_readback.i.5 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %write_readback.i.5, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i.5 = icmp eq i8 %68, 0
  br i1 %tobool.not.i.5, label %rtl_write_byte.exit.4.sw.epilog356_crit_edge, label %if.then.i.5

rtl_write_byte.exit.4.sw.epilog356_crit_edge:     ; preds = %rtl_write_byte.exit.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog356

if.then.i.5:                                      ; preds = %rtl_write_byte.exit.4
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read8_sync.i, align 4
  %call.i.5 = tail call zeroext i8 %70(ptr noundef %1, i32 noundef 1557) #7
  br label %sw.epilog356

sw.bb9:                                           ; preds = %entry
  %71 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %val, align 2
  %73 = and i16 %72, 350
  %74 = or i16 %73, 1
  %conv17 = trunc i16 %74 to i8
  %write8_async.i552 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %75 = ptrtoint ptr %write8_async.i552 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write8_async.i552, align 4
  tail call void %76(ptr noundef %1, i32 noundef 1088, i8 noundef zeroext %conv17) #7
  %cfg.i553 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %77 = ptrtoint ptr %cfg.i553 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cfg.i553, align 8
  %write_readback.i554 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %write_readback.i554 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %write_readback.i554, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i555 = icmp eq i8 %80, 0
  br i1 %tobool.not.i555, label %sw.bb9.rtl_write_byte.exit559_crit_edge, label %if.then.i558

sw.bb9.rtl_write_byte.exit559_crit_edge:          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit559

if.then.i558:                                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i556 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %81 = ptrtoint ptr %read8_sync.i556 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read8_sync.i556, align 4
  %call.i557 = tail call zeroext i8 %82(ptr noundef %1, i32 noundef 1088) #7
  br label %rtl_write_byte.exit559

rtl_write_byte.exit559:                           ; preds = %if.then.i558, %sw.bb9.rtl_write_byte.exit559_crit_edge
  %83 = lshr i16 %73, 8
  %conv20 = trunc i16 %83 to i8
  %84 = ptrtoint ptr %write8_async.i552 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write8_async.i552, align 4
  tail call void %85(ptr noundef %1, i32 noundef 1089, i8 noundef zeroext %conv20) #7
  %86 = ptrtoint ptr %cfg.i553 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cfg.i553, align 8
  %write_readback.i562 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %write_readback.i562 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %write_readback.i562, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i563 = icmp eq i8 %89, 0
  br i1 %tobool.not.i563, label %rtl_write_byte.exit559.rtl_write_byte.exit567_crit_edge, label %if.then.i566

rtl_write_byte.exit559.rtl_write_byte.exit567_crit_edge: ; preds = %rtl_write_byte.exit559
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit567

if.then.i566:                                     ; preds = %rtl_write_byte.exit559
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i564 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %90 = ptrtoint ptr %read8_sync.i564 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read8_sync.i564, align 4
  %call.i565 = tail call zeroext i8 %91(ptr noundef %1, i32 noundef 1089) #7
  br label %rtl_write_byte.exit567

rtl_write_byte.exit567:                           ; preds = %if.then.i566, %rtl_write_byte.exit559.rtl_write_byte.exit567_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %cmp22968.not = icmp eq i16 %73, 0
  br i1 %cmp22968.not, label %rtl_write_byte.exit567.while.end_crit_edge, label %rtl_write_byte.exit567.while.body_crit_edge

rtl_write_byte.exit567.while.body_crit_edge:      ; preds = %rtl_write_byte.exit567
  br label %while.body

rtl_write_byte.exit567.while.end_crit_edge:       ; preds = %rtl_write_byte.exit567
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %rtl_write_byte.exit567.while.body_crit_edge
  %b_rate_cfg.0970 = phi i16 [ %92, %while.body.while.body_crit_edge ], [ %74, %rtl_write_byte.exit567.while.body_crit_edge ]
  %rate_index.0969 = phi i8 [ %inc27, %while.body.while.body_crit_edge ], [ 0, %rtl_write_byte.exit567.while.body_crit_edge ]
  %92 = lshr i16 %b_rate_cfg.0970, 1
  %inc27 = add nuw nsw i8 %rate_index.0969, 1
  %cmp22 = icmp ugt i16 %b_rate_cfg.0970, 3
  br i1 %cmp22, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %rtl_write_byte.exit567.while.end_crit_edge
  %rate_index.0.lcssa = phi i8 [ 0, %rtl_write_byte.exit567.while.end_crit_edge ], [ %inc27, %while.body.while.end_crit_edge ]
  %93 = ptrtoint ptr %write8_async.i552 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write8_async.i552, align 4
  tail call void %94(ptr noundef %1, i32 noundef 1152, i8 noundef zeroext %rate_index.0.lcssa) #7
  %95 = ptrtoint ptr %cfg.i553 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cfg.i553, align 8
  %write_readback.i570 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %write_readback.i570 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %write_readback.i570, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i571 = icmp eq i8 %98, 0
  br i1 %tobool.not.i571, label %while.end.sw.epilog356_crit_edge, label %if.then.i574

while.end.sw.epilog356_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog356

if.then.i574:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i572 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %99 = ptrtoint ptr %read8_sync.i572 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read8_sync.i572, align 4
  %call.i573 = tail call zeroext i8 %100(ptr noundef %1, i32 noundef 1152) #7
  br label %sw.epilog356

if.then.i582:                                     ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %read8_sync.i580 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %read8_sync.i580, align 4
  %call.i581 = tail call zeroext i8 %102(ptr noundef %1, i32 noundef 1560) #7
  br label %rtl_write_byte.exit583

rtl_write_byte.exit583:                           ; preds = %if.then.i582, %for.cond29.preheader.rtl_write_byte.exit583_crit_edge
  %arrayidx37.1 = getelementptr i8, ptr %val, i32 1
  %103 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx37.1, align 1
  %105 = ptrtoint ptr %write8_async.i576 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write8_async.i576, align 4
  tail call void %106(ptr noundef %1, i32 noundef 1561, i8 noundef zeroext %104) #7
  %107 = ptrtoint ptr %cfg.i577 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cfg.i577, align 8
  %write_readback.i578.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %write_readback.i578.1 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %write_readback.i578.1, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i579.1 = icmp eq i8 %110, 0
  br i1 %tobool.not.i579.1, label %rtl_write_byte.exit583.rtl_write_byte.exit583.1_crit_edge, label %if.then.i582.1

rtl_write_byte.exit583.rtl_write_byte.exit583.1_crit_edge: ; preds = %rtl_write_byte.exit583
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit583.1

if.then.i582.1:                                   ; preds = %rtl_write_byte.exit583
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %read8_sync.i580 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %read8_sync.i580, align 4
  %call.i581.1 = tail call zeroext i8 %112(ptr noundef %1, i32 noundef 1561) #7
  br label %rtl_write_byte.exit583.1

rtl_write_byte.exit583.1:                         ; preds = %if.then.i582.1, %rtl_write_byte.exit583.rtl_write_byte.exit583.1_crit_edge
  %arrayidx37.2 = getelementptr i8, ptr %val, i32 2
  %113 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx37.2, align 1
  %115 = ptrtoint ptr %write8_async.i576 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write8_async.i576, align 4
  tail call void %116(ptr noundef %1, i32 noundef 1562, i8 noundef zeroext %114) #7
  %117 = ptrtoint ptr %cfg.i577 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cfg.i577, align 8
  %write_readback.i578.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %write_readback.i578.2 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %write_readback.i578.2, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool.not.i579.2 = icmp eq i8 %120, 0
  br i1 %tobool.not.i579.2, label %rtl_write_byte.exit583.1.rtl_write_byte.exit583.2_crit_edge, label %if.then.i582.2

rtl_write_byte.exit583.1.rtl_write_byte.exit583.2_crit_edge: ; preds = %rtl_write_byte.exit583.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit583.2

if.then.i582.2:                                   ; preds = %rtl_write_byte.exit583.1
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %read8_sync.i580 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %read8_sync.i580, align 4
  %call.i581.2 = tail call zeroext i8 %122(ptr noundef %1, i32 noundef 1562) #7
  br label %rtl_write_byte.exit583.2

rtl_write_byte.exit583.2:                         ; preds = %if.then.i582.2, %rtl_write_byte.exit583.1.rtl_write_byte.exit583.2_crit_edge
  %arrayidx37.3 = getelementptr i8, ptr %val, i32 3
  %123 = ptrtoint ptr %arrayidx37.3 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx37.3, align 1
  %125 = ptrtoint ptr %write8_async.i576 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write8_async.i576, align 4
  tail call void %126(ptr noundef %1, i32 noundef 1563, i8 noundef zeroext %124) #7
  %127 = ptrtoint ptr %cfg.i577 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cfg.i577, align 8
  %write_readback.i578.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %write_readback.i578.3 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %write_readback.i578.3, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool.not.i579.3 = icmp eq i8 %130, 0
  br i1 %tobool.not.i579.3, label %rtl_write_byte.exit583.2.rtl_write_byte.exit583.3_crit_edge, label %if.then.i582.3

rtl_write_byte.exit583.2.rtl_write_byte.exit583.3_crit_edge: ; preds = %rtl_write_byte.exit583.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit583.3

if.then.i582.3:                                   ; preds = %rtl_write_byte.exit583.2
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %read8_sync.i580 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read8_sync.i580, align 4
  %call.i581.3 = tail call zeroext i8 %132(ptr noundef %1, i32 noundef 1563) #7
  br label %rtl_write_byte.exit583.3

rtl_write_byte.exit583.3:                         ; preds = %if.then.i582.3, %rtl_write_byte.exit583.2.rtl_write_byte.exit583.3_crit_edge
  %arrayidx37.4 = getelementptr i8, ptr %val, i32 4
  %133 = ptrtoint ptr %arrayidx37.4 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx37.4, align 1
  %135 = ptrtoint ptr %write8_async.i576 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write8_async.i576, align 4
  tail call void %136(ptr noundef %1, i32 noundef 1564, i8 noundef zeroext %134) #7
  %137 = ptrtoint ptr %cfg.i577 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cfg.i577, align 8
  %write_readback.i578.4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %write_readback.i578.4 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %write_readback.i578.4, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.i579.4 = icmp eq i8 %140, 0
  br i1 %tobool.not.i579.4, label %rtl_write_byte.exit583.3.rtl_write_byte.exit583.4_crit_edge, label %if.then.i582.4

rtl_write_byte.exit583.3.rtl_write_byte.exit583.4_crit_edge: ; preds = %rtl_write_byte.exit583.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit583.4

if.then.i582.4:                                   ; preds = %rtl_write_byte.exit583.3
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %read8_sync.i580 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %read8_sync.i580, align 4
  %call.i581.4 = tail call zeroext i8 %142(ptr noundef %1, i32 noundef 1564) #7
  br label %rtl_write_byte.exit583.4

rtl_write_byte.exit583.4:                         ; preds = %if.then.i582.4, %rtl_write_byte.exit583.3.rtl_write_byte.exit583.4_crit_edge
  %arrayidx37.5 = getelementptr i8, ptr %val, i32 5
  %143 = ptrtoint ptr %arrayidx37.5 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx37.5, align 1
  %145 = ptrtoint ptr %write8_async.i576 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %write8_async.i576, align 4
  tail call void %146(ptr noundef %1, i32 noundef 1565, i8 noundef zeroext %144) #7
  %147 = ptrtoint ptr %cfg.i577 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cfg.i577, align 8
  %write_readback.i578.5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %write_readback.i578.5 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %write_readback.i578.5, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i579.5 = icmp eq i8 %150, 0
  br i1 %tobool.not.i579.5, label %rtl_write_byte.exit583.4.sw.epilog356_crit_edge, label %if.then.i582.5

rtl_write_byte.exit583.4.sw.epilog356_crit_edge:  ; preds = %rtl_write_byte.exit583.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog356

if.then.i582.5:                                   ; preds = %rtl_write_byte.exit583.4
  call void @__sanitizer_cov_trace_pc() #9
  %151 = ptrtoint ptr %read8_sync.i580 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %read8_sync.i580, align 4
  %call.i581.5 = tail call zeroext i8 %152(ptr noundef %1, i32 noundef 1565) #7
  br label %sw.epilog356

sw.bb41:                                          ; preds = %entry
  %153 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %val, align 1
  %write8_async.i584 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %155 = ptrtoint ptr %write8_async.i584 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %write8_async.i584, align 4
  tail call void %156(ptr noundef %1, i32 noundef 1301, i8 noundef zeroext %154) #7
  %cfg.i585 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %157 = ptrtoint ptr %cfg.i585 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cfg.i585, align 8
  %write_readback.i586 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %write_readback.i586 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %write_readback.i586, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool.not.i587 = icmp eq i8 %160, 0
  br i1 %tobool.not.i587, label %sw.bb41.rtl_write_byte.exit591_crit_edge, label %if.then.i590

sw.bb41.rtl_write_byte.exit591_crit_edge:         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit591

if.then.i590:                                     ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i588 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %161 = ptrtoint ptr %read8_sync.i588 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %read8_sync.i588, align 4
  %call.i589 = tail call zeroext i8 %162(ptr noundef %1, i32 noundef 1301) #7
  br label %rtl_write_byte.exit591

rtl_write_byte.exit591:                           ; preds = %if.then.i590, %sw.bb41.rtl_write_byte.exit591_crit_edge
  %arrayidx43 = getelementptr i8, ptr %val, i32 1
  %163 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx43, align 1
  %165 = ptrtoint ptr %write8_async.i584 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %write8_async.i584, align 4
  tail call void %166(ptr noundef %1, i32 noundef 1303, i8 noundef zeroext %164) #7
  %167 = ptrtoint ptr %cfg.i585 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %cfg.i585, align 8
  %write_readback.i594 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %write_readback.i594 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %write_readback.i594, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool.not.i595 = icmp eq i8 %170, 0
  br i1 %tobool.not.i595, label %rtl_write_byte.exit591.rtl_write_byte.exit599_crit_edge, label %if.then.i598

rtl_write_byte.exit591.rtl_write_byte.exit599_crit_edge: ; preds = %rtl_write_byte.exit591
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit599

if.then.i598:                                     ; preds = %rtl_write_byte.exit591
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i596 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %171 = ptrtoint ptr %read8_sync.i596 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %read8_sync.i596, align 4
  %call.i597 = tail call zeroext i8 %172(ptr noundef %1, i32 noundef 1303) #7
  br label %rtl_write_byte.exit599

rtl_write_byte.exit599:                           ; preds = %if.then.i598, %rtl_write_byte.exit591.rtl_write_byte.exit599_crit_edge
  %173 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %val, align 1
  %175 = ptrtoint ptr %write8_async.i584 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %write8_async.i584, align 4
  tail call void %176(ptr noundef %1, i32 noundef 1065, i8 noundef zeroext %174) #7
  %177 = ptrtoint ptr %cfg.i585 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %cfg.i585, align 8
  %write_readback.i602 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %write_readback.i602 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %write_readback.i602, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool.not.i603 = icmp eq i8 %180, 0
  br i1 %tobool.not.i603, label %rtl_write_byte.exit599.rtl_write_byte.exit607_crit_edge, label %if.then.i606

rtl_write_byte.exit599.rtl_write_byte.exit607_crit_edge: ; preds = %rtl_write_byte.exit599
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit607

if.then.i606:                                     ; preds = %rtl_write_byte.exit599
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i604 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %181 = ptrtoint ptr %read8_sync.i604 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %read8_sync.i604, align 4
  %call.i605 = tail call zeroext i8 %182(ptr noundef %1, i32 noundef 1065) #7
  br label %rtl_write_byte.exit607

rtl_write_byte.exit607:                           ; preds = %if.then.i606, %rtl_write_byte.exit599.rtl_write_byte.exit607_crit_edge
  %183 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %val, align 1
  %185 = ptrtoint ptr %write8_async.i584 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %write8_async.i584, align 4
  tail call void %186(ptr noundef %1, i32 noundef 1595, i8 noundef zeroext %184) #7
  %187 = ptrtoint ptr %cfg.i585 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %cfg.i585, align 8
  %write_readback.i610 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %write_readback.i610 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %write_readback.i610, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool.not.i611 = icmp eq i8 %190, 0
  br i1 %tobool.not.i611, label %rtl_write_byte.exit607.rtl_write_byte.exit615_crit_edge, label %if.then.i614

rtl_write_byte.exit607.rtl_write_byte.exit615_crit_edge: ; preds = %rtl_write_byte.exit607
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit615

if.then.i614:                                     ; preds = %rtl_write_byte.exit607
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i612 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %191 = ptrtoint ptr %read8_sync.i612 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %read8_sync.i612, align 4
  %call.i613 = tail call zeroext i8 %192(ptr noundef %1, i32 noundef 1595) #7
  br label %rtl_write_byte.exit615

rtl_write_byte.exit615:                           ; preds = %if.then.i614, %rtl_write_byte.exit607.rtl_write_byte.exit615_crit_edge
  %ht_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 38
  %193 = ptrtoint ptr %ht_enable to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %ht_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool.not = icmp eq i8 %194, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %rtl_write_byte.exit615
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %195 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %write16_async.i, align 4
  tail call void %196(ptr noundef %1, i32 noundef 1598, i16 noundef zeroext 3598) #7
  %197 = ptrtoint ptr %cfg.i585 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %cfg.i585, align 8
  %write_readback.i617 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %write_readback.i617 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %write_readback.i617, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool.not.i618 = icmp eq i8 %200, 0
  br i1 %tobool.not.i618, label %if.then.sw.epilog356_crit_edge, label %if.then.i620

if.then.sw.epilog356_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog356

if.then.i620:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %201 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %read16_sync.i, align 4
  %call.i619 = tail call zeroext i16 %202(ptr noundef %1, i32 noundef 1598) #7
  br label %sw.epilog356

if.else:                                          ; preds = %rtl_write_byte.exit615
  %203 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %val, align 2
  %write16_async.i621 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %205 = ptrtoint ptr %write16_async.i621 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %write16_async.i621, align 4
  tail call void %206(ptr noundef %1, i32 noundef 1598, i16 noundef zeroext %204) #7
  %207 = ptrtoint ptr %cfg.i585 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %cfg.i585, align 8
  %write_readback.i623 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %write_readback.i623 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %write_readback.i623, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool.not.i624 = icmp eq i8 %210, 0
  br i1 %tobool.not.i624, label %if.else.sw.epilog356_crit_edge, label %if.then.i627

if.else.sw.epilog356_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog356

if.then.i627:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i625 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %211 = ptrtoint ptr %read16_sync.i625 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %read16_sync.i625, align 4
  %call.i626 = tail call zeroext i16 %212(ptr noundef %1, i32 noundef 1598) #7
  br label %sw.epilog356

sw.bb46:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e_aci) #7
  %213 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %val, align 1
  %conv48 = zext i8 %214 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %conv48) #7
  %215 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %val, align 1
  %write8_async.i629 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %217 = ptrtoint ptr %write8_async.i629 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %write8_async.i629, align 4
  tail call void %218(ptr noundef %1, i32 noundef 1307, i8 noundef zeroext %216) #7
  %cfg.i630 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %219 = ptrtoint ptr %cfg.i630 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %cfg.i630, align 8
  %write_readback.i631 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %220, i32 0, i32 1
  %221 = ptrtoint ptr %write_readback.i631 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %write_readback.i631, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool.not.i632 = icmp eq i8 %222, 0
  br i1 %tobool.not.i632, label %sw.bb46.rtl_write_byte.exit636_crit_edge, label %if.then.i635

sw.bb46.rtl_write_byte.exit636_crit_edge:         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit636

if.then.i635:                                     ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i633 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %223 = ptrtoint ptr %read8_sync.i633 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %read8_sync.i633, align 4
  %call.i634 = tail call zeroext i8 %224(ptr noundef %1, i32 noundef 1307) #7
  br label %rtl_write_byte.exit636

rtl_write_byte.exit636:                           ; preds = %if.then.i635, %sw.bb46.rtl_write_byte.exit636_crit_edge
  %225 = ptrtoint ptr %e_aci to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 0, ptr %e_aci, align 1
  br label %for.body54

for.body54:                                       ; preds = %for.body54.for.body54_crit_edge, %rtl_write_byte.exit636
  %226 = ptrtoint ptr %cfg.i630 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %cfg.i630, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %227, i32 0, i32 4
  %228 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %229, i32 0, i32 20
  %230 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %set_hw_reg, align 4
  call void %231(ptr noundef %hw, i8 noundef zeroext 32, ptr noundef nonnull %e_aci) #7
  %232 = ptrtoint ptr %e_aci to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %e_aci, align 1
  %inc56 = add i8 %233, 1
  store i8 %inc56, ptr %e_aci, align 1
  %cmp52 = icmp ult i8 %inc56, 4
  br i1 %cmp52, label %for.body54.for.body54_crit_edge, label %for.end57

for.body54.for.body54_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body54

for.end57:                                        ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %e_aci) #7
  br label %sw.epilog356

sw.bb58:                                          ; preds = %entry
  %234 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool59.not = icmp eq i8 %235, 0
  %read8_sync.i637 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %236 = ptrtoint ptr %read8_sync.i637 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %read8_sync.i637, align 4
  %call.i638 = tail call zeroext i8 %237(ptr noundef %1, i32 noundef 1642) #7
  br i1 %tobool59.not, label %if.else66, label %if.then62

if.then62:                                        ; preds = %sw.bb58
  %238 = or i8 %call.i638, 2
  %write8_async.i639 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %239 = ptrtoint ptr %write8_async.i639 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %write8_async.i639, align 4
  tail call void %240(ptr noundef %1, i32 noundef 1642, i8 noundef zeroext %238) #7
  %cfg.i640 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %241 = ptrtoint ptr %cfg.i640 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %cfg.i640, align 8
  %write_readback.i641 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %write_readback.i641 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %write_readback.i641, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool.not.i642 = icmp eq i8 %244, 0
  br i1 %tobool.not.i642, label %if.then62.sw.epilog356_crit_edge, label %if.then.i645

if.then62.sw.epilog356_crit_edge:                 ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog356

if.then.i645:                                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  %245 = ptrtoint ptr %read8_sync.i637 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %read8_sync.i637, align 4
  %call.i644 = tail call zeroext i8 %246(ptr noundef %1, i32 noundef 1642) #7
  br label %sw.epilog356

if.else66:                                        ; preds = %sw.bb58
  %247 = or i8 %call.i638, -3
  %write8_async.i647 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %248 = ptrtoint ptr %write8_async.i647 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %write8_async.i647, align 4
  tail call void %249(ptr noundef %1, i32 noundef 1642, i8 noundef zeroext %247) #7
  %cfg.i648 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %250 = ptrtoint ptr %cfg.i648 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %cfg.i648, align 8
  %write_readback.i649 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %251, i32 0, i32 1
  %252 = ptrtoint ptr %write_readback.i649 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %write_readback.i649, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool.not.i650 = icmp eq i8 %253, 0
  br i1 %tobool.not.i650, label %if.else66.sw.epilog356_crit_edge, label %if.then.i653

if.else66.sw.epilog356_crit_edge:                 ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog356

if.then.i653:                                     ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #9
  %254 = ptrtoint ptr %read8_sync.i637 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %read8_sync.i637, align 4
  %call.i652 = tail call zeroext i8 %255(ptr noundef %1, i32 noundef 1642) #7
  br label %sw.epilog356

sw.bb71:                                          ; preds = %entry
  %256 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %val, align 1
  %write8_async.i655 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %258 = ptrtoint ptr %write8_async.i655 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %write8_async.i655, align 4
  tail call void %259(ptr noundef %1, i32 noundef 1664, i8 noundef zeroext %257) #7
  %cfg.i656 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %260 = ptrtoint ptr %cfg.i656 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %cfg.i656, align 8
  %write_readback.i657 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %261, i32 0, i32 1
  %262 = ptrtoint ptr %write_readback.i657 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %write_readback.i657, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %263)
  %tobool.not.i658 = icmp eq i8 %263, 0
  br i1 %tobool.not.i658, label %sw.bb71.sw.epilog356_crit_edge, label %if.then.i661

sw.bb71.sw.epilog356_crit_edge:                   ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog356

if.then.i661:                                     ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i659 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %264 = ptrtoint ptr %read8_sync.i659 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %read8_sync.i659, align 4
  %call.i660 = tail call zeroext i8 %265(ptr noundef %1, i32 noundef 1664) #7
  br label %sw.epilog356

sw.bb72:                                          ; preds = %entry
  %266 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %267)
  %cmp74 = icmp ult i8 %267, 8
  br i1 %cmp74, label %if.end82, label %sw.bb72.sw.epilog356_crit_edge

sw.bb72.sw.epilog356_crit_edge:                   ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog356

if.end82:                                         ; preds = %sw.bb72
  %min_space_cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 55
  %268 = ptrtoint ptr %min_space_cfg to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %min_space_cfg, align 4
  %270 = and i8 %269, -8
  %or86546 = or i8 %270, %267
  store i8 %or86546, ptr %min_space_cfg, align 4
  %271 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %267, ptr %val, align 1
  %272 = load i8, ptr %min_space_cfg, align 4
  %conv90 = zext i8 %272 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %conv90) #7
  %273 = ptrtoint ptr %min_space_cfg to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %min_space_cfg, align 4
  %write8_async.i663 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %275 = ptrtoint ptr %write8_async.i663 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %write8_async.i663, align 4
  tail call void %276(ptr noundef %1, i32 noundef 1116, i8 noundef zeroext %274) #7
  %cfg.i664 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %277 = ptrtoint ptr %cfg.i664 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %cfg.i664, align 8
  %write_readback.i665 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %278, i32 0, i32 1
  %279 = ptrtoint ptr %write_readback.i665 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %write_readback.i665, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %280)
  %tobool.not.i666 = icmp eq i8 %280, 0
  br i1 %tobool.not.i666, label %if.end82.sw.epilog356_crit_edge, label %if.then.i669

if.end82.sw.epilog356_crit_edge:                  ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog356

if.then.i669:                                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i667 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %281 = ptrtoint ptr %read8_sync.i667 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %read8_sync.i667, align 4
  %call.i668 = tail call zeroext i8 %282(ptr noundef %1, i32 noundef 1116) #7
  br label %sw.epilog356

sw.bb93:                                          ; preds = %entry
  %283 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %val, align 1
  %shl = shl i8 %284, 3
  %min_space_cfg95 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 55
  %285 = ptrtoint ptr %min_space_cfg95 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %min_space_cfg95, align 4
  %or97 = or i8 %shl, %286
  store i8 %or97, ptr %min_space_cfg95, align 4
  %conv100 = zext i8 %or97 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %conv100) #7
  %287 = ptrtoint ptr %min_space_cfg95 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %min_space_cfg95, align 4
  %write8_async.i671 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %289 = ptrtoint ptr %write8_async.i671 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %write8_async.i671, align 4
  tail call void %290(ptr noundef %1, i32 noundef 1116, i8 noundef zeroext %288) #7
  %cfg.i672 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %291 = ptrtoint ptr %cfg.i672 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %cfg.i672, align 8
  %write_readback.i673 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %292, i32 0, i32 1
  %293 = ptrtoint ptr %write_readback.i673 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %write_readback.i673, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %294)
  %tobool.not.i674 = icmp eq i8 %294, 0
  br i1 %tobool.not.i674, label %sw.bb93.sw.epilog356_crit_edge, label %if.then.i677

sw.bb93.sw.epilog356_crit_edge:                   ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog356

if.then.i677:                                     ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i675 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %295 = ptrtoint ptr %read8_sync.i675 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %read8_sync.i675, align 4
  %call.i676 = tail call zeroext i8 %296(ptr noundef %1, i32 noundef 1116) #7
  br label %sw.epilog356

sw.bb102:                                         ; preds = %entry
  %297 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %298)
  %cmp105 = icmp ult i8 %298, 4
  br i1 %cmp105, label %if.then107, label %sw.bb102.sw.epilog356_crit_edge

sw.bb102.sw.epilog356_crit_edge:                  ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog356

if.then107:                                       ; preds = %sw.bb102
  %conv104 = zext i8 %298 to i32
  %shl110 = shl nuw nsw i32 4, %conv104
  %conv111 = trunc i32 %shl110 to i8
  %conv112 = and i32 %shl110, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv112)
  %cmp113.not = icmp eq i32 %conv112, 0
  %spec.store.select = select i1 %cmp113.not, i8 %conv111, i8 15
  %conv126 = zext i8 %spec.store.select to i32
  %shl127 = shl nuw nsw i32 %conv126, 4
  %write8_async.i679 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i680 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i683 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.store.select)
  %cmp147 = icmp eq i8 %spec.store.select, 0
  %regtoset_normal.sroa.0.1 = select i1 %cmp147, i8 64, i8 65
  %299 = ptrtoint ptr %write8_async.i679 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %write8_async.i679, align 4
  tail call void %300(ptr noundef %1, i32 noundef 1112, i8 noundef zeroext %regtoset_normal.sroa.0.1) #7
  %301 = ptrtoint ptr %cfg.i680 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %cfg.i680, align 8
  %write_readback.i681 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %302, i32 0, i32 1
  %303 = ptrtoint ptr %write_readback.i681 to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %write_readback.i681, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %304)
  %tobool.not.i682 = icmp eq i8 %304, 0
  br i1 %tobool.not.i682, label %if.then107.rtl_write_byte.exit686_crit_edge, label %if.then.i685

if.then107.rtl_write_byte.exit686_crit_edge:      ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit686

if.then.i685:                                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  %305 = ptrtoint ptr %read8_sync.i683 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %read8_sync.i683, align 4
  %call.i684 = tail call zeroext i8 %306(ptr noundef %1, i32 noundef 1112) #7
  br label %rtl_write_byte.exit686

rtl_write_byte.exit686:                           ; preds = %if.then.i685, %if.then107.rtl_write_byte.exit686_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %spec.store.select)
  %cmp128.1 = icmp ult i8 %spec.store.select, 10
  %307 = trunc i32 %shl127 to i8
  %conv138.1 = or i8 %307, 8
  %regtoset_normal.sroa.8.0 = select i1 %cmp128.1, i8 %conv138.1, i8 -88
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %spec.store.select)
  %cmp147.1 = icmp ult i8 %spec.store.select, 8
  %and153.1 = and i8 %regtoset_normal.sroa.8.0, -16
  %or155.1 = or i8 %and153.1, %spec.store.select
  %regtoset_normal.sroa.8.1 = select i1 %cmp147.1, i8 %or155.1, i8 %regtoset_normal.sroa.8.0
  %308 = ptrtoint ptr %write8_async.i679 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %write8_async.i679, align 4
  tail call void %309(ptr noundef %1, i32 noundef 1113, i8 noundef zeroext %regtoset_normal.sroa.8.1) #7
  %310 = ptrtoint ptr %cfg.i680 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %cfg.i680, align 8
  %write_readback.i681.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %311, i32 0, i32 1
  %312 = ptrtoint ptr %write_readback.i681.1 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %write_readback.i681.1, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %313)
  %tobool.not.i682.1 = icmp eq i8 %313, 0
  br i1 %tobool.not.i682.1, label %rtl_write_byte.exit686.rtl_write_byte.exit686.1_crit_edge, label %if.then.i685.1

rtl_write_byte.exit686.rtl_write_byte.exit686.1_crit_edge: ; preds = %rtl_write_byte.exit686
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit686.1

if.then.i685.1:                                   ; preds = %rtl_write_byte.exit686
  call void @__sanitizer_cov_trace_pc() #9
  %314 = ptrtoint ptr %read8_sync.i683 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %read8_sync.i683, align 4
  %call.i684.1 = tail call zeroext i8 %315(ptr noundef %1, i32 noundef 1113) #7
  br label %rtl_write_byte.exit686.1

rtl_write_byte.exit686.1:                         ; preds = %if.then.i685.1, %rtl_write_byte.exit686.rtl_write_byte.exit686.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %spec.store.select)
  %cmp128.2 = icmp ult i8 %spec.store.select, 7
  %316 = trunc i32 %shl127 to i8
  %conv138.2 = or i8 %316, 2
  %regtoset_normal.sroa.13.0 = select i1 %cmp128.2, i8 %conv138.2, i8 114
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %spec.store.select)
  %cmp147.2 = icmp ult i8 %spec.store.select, 2
  %and153.2 = and i8 %regtoset_normal.sroa.13.0, -16
  %or155.2 = or i8 %and153.2, %spec.store.select
  %regtoset_normal.sroa.13.1 = select i1 %cmp147.2, i8 %or155.2, i8 %regtoset_normal.sroa.13.0
  %317 = ptrtoint ptr %write8_async.i679 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %write8_async.i679, align 4
  tail call void %318(ptr noundef %1, i32 noundef 1114, i8 noundef zeroext %regtoset_normal.sroa.13.1) #7
  %319 = ptrtoint ptr %cfg.i680 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %cfg.i680, align 8
  %write_readback.i681.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %320, i32 0, i32 1
  %321 = ptrtoint ptr %write_readback.i681.2 to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %write_readback.i681.2, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %tobool.not.i682.2 = icmp eq i8 %322, 0
  br i1 %tobool.not.i682.2, label %rtl_write_byte.exit686.1.rtl_write_byte.exit686.2_crit_edge, label %if.then.i685.2

rtl_write_byte.exit686.1.rtl_write_byte.exit686.2_crit_edge: ; preds = %rtl_write_byte.exit686.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit686.2

if.then.i685.2:                                   ; preds = %rtl_write_byte.exit686.1
  call void @__sanitizer_cov_trace_pc() #9
  %323 = ptrtoint ptr %read8_sync.i683 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %read8_sync.i683, align 4
  %call.i684.2 = tail call zeroext i8 %324(ptr noundef %1, i32 noundef 1114) #7
  br label %rtl_write_byte.exit686.2

rtl_write_byte.exit686.2:                         ; preds = %if.then.i685.2, %rtl_write_byte.exit686.1.rtl_write_byte.exit686.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %spec.store.select)
  %cmp128.3 = icmp ult i8 %spec.store.select, 11
  %325 = trunc i32 %shl127 to i8
  %conv138.3 = or i8 %325, 9
  %regtoset_normal.sroa.18.0 = select i1 %cmp128.3, i8 %conv138.3, i8 -71
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %spec.store.select)
  %cmp147.3 = icmp ult i8 %spec.store.select, 9
  %and153.3 = and i8 %regtoset_normal.sroa.18.0, -16
  %or155.3 = or i8 %and153.3, %spec.store.select
  %regtoset_normal.sroa.18.1 = select i1 %cmp147.3, i8 %or155.3, i8 %regtoset_normal.sroa.18.0
  %326 = ptrtoint ptr %write8_async.i679 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %write8_async.i679, align 4
  tail call void %327(ptr noundef %1, i32 noundef 1115, i8 noundef zeroext %regtoset_normal.sroa.18.1) #7
  %328 = ptrtoint ptr %cfg.i680 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %cfg.i680, align 8
  %write_readback.i681.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %329, i32 0, i32 1
  %330 = ptrtoint ptr %write_readback.i681.3 to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %write_readback.i681.3, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %331)
  %tobool.not.i682.3 = icmp eq i8 %331, 0
  br i1 %tobool.not.i682.3, label %rtl_write_byte.exit686.2.rtl_write_byte.exit686.3_crit_edge, label %if.then.i685.3

rtl_write_byte.exit686.2.rtl_write_byte.exit686.3_crit_edge: ; preds = %rtl_write_byte.exit686.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit686.3

if.then.i685.3:                                   ; preds = %rtl_write_byte.exit686.2
  call void @__sanitizer_cov_trace_pc() #9
  %332 = ptrtoint ptr %read8_sync.i683 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %read8_sync.i683, align 4
  %call.i684.3 = tail call zeroext i8 %333(ptr noundef %1, i32 noundef 1115) #7
  br label %rtl_write_byte.exit686.3

rtl_write_byte.exit686.3:                         ; preds = %if.then.i685.3, %rtl_write_byte.exit686.2.rtl_write_byte.exit686.3_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %conv126) #7
  br label %sw.epilog356

sw.bb169:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e_aci170) #7
  %334 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %val, align 1
  %336 = ptrtoint ptr %e_aci170 to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %335, ptr %e_aci170, align 1
  tail call void @rtl88e_dm_init_edca_turbo(ptr noundef %hw) #7
  %acm_method = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 4
  %337 = ptrtoint ptr %acm_method to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %acm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %338)
  %cmp171.not = icmp eq i32 %338, 2
  br i1 %cmp171.not, label %sw.bb169.if.end177_crit_edge, label %if.then173

sw.bb169.if.end177_crit_edge:                     ; preds = %sw.bb169
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end177

if.then173:                                       ; preds = %sw.bb169
  call void @__sanitizer_cov_trace_pc() #9
  %cfg174 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %339 = ptrtoint ptr %cfg174 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %cfg174, align 8
  %ops175 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %340, i32 0, i32 4
  %341 = ptrtoint ptr %ops175 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %ops175, align 4
  %set_hw_reg176 = getelementptr inbounds %struct.rtl_hal_ops, ptr %342, i32 0, i32 20
  %343 = ptrtoint ptr %set_hw_reg176 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %set_hw_reg176, align 4
  call void %344(ptr noundef %hw, i8 noundef zeroext 33, ptr noundef nonnull %e_aci170) #7
  br label %if.end177

if.end177:                                        ; preds = %if.then173, %sw.bb169.if.end177_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %e_aci170) #7
  br label %sw.epilog356

sw.bb178:                                         ; preds = %entry
  %345 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %val, align 1
  %aifs = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 60, i32 0, i32 2
  %347 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %347)
  %bf.load = load i8, ptr %aifs, align 1
  %read8_sync.i687 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %348 = ptrtoint ptr %read8_sync.i687 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %read8_sync.i687, align 4
  %call.i688 = tail call zeroext i8 %349(ptr noundef %1, i32 noundef 1472) #7
  %acm_method183 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 4
  %350 = ptrtoint ptr %acm_method183 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %acm_method183, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %351)
  %cmp184 = icmp ne i32 %351, 2
  %cond = zext i1 %cmp184 to i8
  %or186 = or i8 %call.i688, %cond
  %352 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %352)
  %tobool188.not = icmp eq i8 %352, 0
  br i1 %tobool188.not, label %if.else204, label %if.then189

if.then189:                                       ; preds = %sw.bb178
  %353 = zext i8 %346 to i64
  call void @__sanitizer_cov_trace_switch(i64 %353, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %346, label %sw.default [
    i8 0, label %sw.bb191
    i8 2, label %sw.bb195
    i8 3, label %sw.bb199
  ]

sw.bb191:                                         ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  %354 = or i8 %or186, 2
  br label %if.end222

sw.bb195:                                         ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  %355 = or i8 %or186, 4
  br label %if.end222

sw.bb199:                                         ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  %356 = or i8 %or186, 8
  br label %if.end222

sw.default:                                       ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 1) #7
  br label %if.end222

if.else204:                                       ; preds = %sw.bb178
  %357 = zext i8 %346 to i64
  call void @__sanitizer_cov_trace_switch(i64 %357, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %346, label %do.end [
    i8 0, label %sw.bb206
    i8 2, label %sw.bb210
    i8 3, label %sw.bb214
  ]

sw.bb206:                                         ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #9
  %358 = and i8 %or186, -3
  br label %if.end222

sw.bb210:                                         ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #9
  %359 = and i8 %or186, -5
  br label %if.end222

sw.bb214:                                         ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #9
  %360 = and i8 %or186, -9
  br label %if.end222

do.end:                                           ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #9
  %conv205 = zext i8 %346 to i32
  %call220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv205) #10
  br label %if.end222

if.end222:                                        ; preds = %do.end, %sw.bb214, %sw.bb210, %sw.bb206, %sw.default, %sw.bb199, %sw.bb195, %sw.bb191
  %acm_ctrl.0 = phi i8 [ %or186, %sw.default ], [ %356, %sw.bb199 ], [ %355, %sw.bb195 ], [ %354, %sw.bb191 ], [ %or186, %do.end ], [ %360, %sw.bb214 ], [ %359, %sw.bb210 ], [ %358, %sw.bb206 ]
  %conv223 = zext i8 %acm_ctrl.0 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 33554432, i32 noundef 5, ptr noundef nonnull @.str.9, i32 noundef %conv223) #7
  %write8_async.i689 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %361 = ptrtoint ptr %write8_async.i689 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %write8_async.i689, align 4
  tail call void %362(ptr noundef %1, i32 noundef 1472, i8 noundef zeroext %acm_ctrl.0) #7
  %cfg.i690 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %363 = ptrtoint ptr %cfg.i690 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %cfg.i690, align 8
  %write_readback.i691 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %364, i32 0, i32 1
  %365 = ptrtoint ptr %write_readback.i691 to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %write_readback.i691, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %366)
  %tobool.not.i692 = icmp eq i8 %366, 0
  br i1 %tobool.not.i692, label %if.end222.sw.epilog356_crit_edge, label %if.then.i695

if.end222.sw.epilog356_crit_edge:                 ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog356

if.then.i695:                                     ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #9
  %367 = ptrtoint ptr %read8_sync.i687 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %read8_sync.i687, align 4
  %call.i694 = tail call zeroext i8 %368(ptr noundef %1, i32 noundef 1472) #7
  br label %sw.epilog356

sw.bb224:                                         ; preds = %entry
  %369 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %val, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %371 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %write32_async.i, align 4
  tail call void %372(ptr noundef %1, i32 noundef 1544, i32 noundef %370) #7
  %cfg.i697 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %373 = ptrtoint ptr %cfg.i697 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %cfg.i697, align 8
  %write_readback.i698 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %374, i32 0, i32 1
  %375 = ptrtoint ptr %write_readback.i698 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %write_readback.i698, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %376)
  %tobool.not.i699 = icmp eq i8 %376, 0
  br i1 %tobool.not.i699, label %sw.bb224.rtl_write_dword.exit_crit_edge, label %if.then.i701

sw.bb224.rtl_write_dword.exit_crit_edge:          ; preds = %sw.bb224
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit

if.then.i701:                                     ; preds = %sw.bb224
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %377 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %read32_sync.i, align 4
  %call.i700 = tail call i32 %378(ptr noundef %1, i32 noundef 1544) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i701, %sw.bb224.rtl_write_dword.exit_crit_edge
  %379 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %val, align 4
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %381 = ptrtoint ptr %receive_config to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %380, ptr %receive_config, align 4
  br label %sw.epilog356

sw.bb227:                                         ; preds = %entry
  %382 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %val, align 1
  %conv228 = zext i8 %383 to i32
  %shl229 = shl nuw nsw i32 %conv228, 8
  %or232 = or i32 %shl229, %conv228
  %conv233 = trunc i32 %or232 to i16
  %write16_async.i702 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %384 = ptrtoint ptr %write16_async.i702 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %write16_async.i702, align 4
  tail call void %385(ptr noundef %1, i32 noundef 1066, i16 noundef zeroext %conv233) #7
  %cfg.i703 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %386 = ptrtoint ptr %cfg.i703 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %cfg.i703, align 8
  %write_readback.i704 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %387, i32 0, i32 1
  %388 = ptrtoint ptr %write_readback.i704 to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %write_readback.i704, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %389)
  %tobool.not.i705 = icmp eq i8 %389, 0
  br i1 %tobool.not.i705, label %sw.bb227.sw.epilog356_crit_edge, label %if.then.i708

sw.bb227.sw.epilog356_crit_edge:                  ; preds = %sw.bb227
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog356

if.then.i708:                                     ; preds = %sw.bb227
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i706 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %390 = ptrtoint ptr %read16_sync.i706 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %read16_sync.i706, align 4
  %call.i707 = tail call zeroext i16 %391(ptr noundef %1, i32 noundef 1066) #7
  br label %sw.epilog356

sw.bb234:                                         ; preds = %entry
  %write8_async.i710 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %392 = ptrtoint ptr %write8_async.i710 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %write8_async.i710, align 4
  tail call void %393(ptr noundef %1, i32 noundef 1363, i8 noundef zeroext 3) #7
  %cfg.i711 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %394 = ptrtoint ptr %cfg.i711 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %cfg.i711, align 8
  %write_readback.i712 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %395, i32 0, i32 1
  %396 = ptrtoint ptr %write_readback.i712 to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %write_readback.i712, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %397)
  %tobool.not.i713 = icmp eq i8 %397, 0
  br i1 %tobool.not.i713, label %sw.bb234.sw.epilog356_crit_edge, label %if.then.i716

sw.bb234.sw.epilog356_crit_edge:                  ; preds = %sw.bb234
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog356

if.then.i716:                                     ; preds = %sw.bb234
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i714 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %398 = ptrtoint ptr %read8_sync.i714 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %read8_sync.i714, align 4
  %call.i715 = tail call zeroext i8 %399(ptr noundef %1, i32 noundef 1363) #7
  br label %sw.epilog356

sw.bb235:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %400 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %400)
  %401 = load i16, ptr %val, align 2
  %efuse_usedbytes = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 5
  %402 = ptrtoint ptr %efuse_usedbytes to i32
  call void @__asan_store2_noabort(i32 %402)
  store i16 %401, ptr %efuse_usedbytes, align 4
  br label %sw.epilog356

sw.bb236:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %403 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %val, align 1
  %efuse_usedpercentage = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 6
  %405 = ptrtoint ptr %efuse_usedpercentage to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 %404, ptr %efuse_usedpercentage, align 2
  br label %sw.epilog356

sw.bb237:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %406 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %val, align 4
  %call238 = tail call zeroext i1 @rtl88e_phy_set_io_cmd(ptr noundef %hw, i32 noundef %407) #7
  br label %sw.epilog356

sw.bb239:                                         ; preds = %entry
  %read8_sync.i718 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %408 = ptrtoint ptr %read8_sync.i718 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %read8_sync.i718, align 4
  %call.i719 = tail call zeroext i8 %409(ptr noundef %1, i32 noundef 865) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %410 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %410(i32 noundef 214748) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i719)
  %tobool243.not = icmp sgt i8 %call.i719, -1
  %411 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %val, align 1
  br i1 %tobool243.not, label %if.else245, label %if.then244

if.then244:                                       ; preds = %sw.bb239
  %write8_async.i720 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %413 = ptrtoint ptr %write8_async.i720 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %write8_async.i720, align 4
  tail call void %414(ptr noundef %1, i32 noundef 865, i8 noundef zeroext %412) #7
  %cfg.i721 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %415 = ptrtoint ptr %cfg.i721 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %cfg.i721, align 8
  %write_readback.i722 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %416, i32 0, i32 1
  %417 = ptrtoint ptr %write_readback.i722 to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %write_readback.i722, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %418)
  %tobool.not.i723 = icmp eq i8 %418, 0
  br i1 %tobool.not.i723, label %if.then244.sw.epilog356_crit_edge, label %if.then.i726

if.then244.sw.epilog356_crit_edge:                ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog356

if.then.i726:                                     ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #9
  %419 = ptrtoint ptr %read8_sync.i718 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %read8_sync.i718, align 4
  %call.i725 = tail call zeroext i8 %420(ptr noundef %1, i32 noundef 865) #7
  br label %sw.epilog356

if.else245:                                       ; preds = %sw.bb239
  %421 = or i8 %412, -128
  %write8_async.i728 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %422 = ptrtoint ptr %write8_async.i728 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %write8_async.i728, align 4
  tail call void %423(ptr noundef %1, i32 noundef 865, i8 noundef zeroext %421) #7
  %cfg.i729 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %424 = ptrtoint ptr %cfg.i729 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %cfg.i729, align 8
  %write_readback.i730 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %425, i32 0, i32 1
  %426 = ptrtoint ptr %write_readback.i730 to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %write_readback.i730, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %427)
  %tobool.not.i731 = icmp eq i8 %427, 0
  br i1 %tobool.not.i731, label %if.else245.sw.epilog356_crit_edge, label %if.then.i734

if.else245.sw.epilog356_crit_edge:                ; preds = %if.else245
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog356

if.then.i734:                                     ; preds = %if.else245
  call void @__sanitizer_cov_trace_pc() #9
  %428 = ptrtoint ptr %read8_sync.i718 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %read8_sync.i718, align 4
  %call.i733 = tail call zeroext i8 %429(ptr noundef %1, i32 noundef 865) #7
  br label %sw.epilog356

sw.bb250:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %430 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %val, align 1
  tail call void @rtl88e_set_fw_pwrmode_cmd(ptr noundef %hw, i8 noundef zeroext %431) #7
  br label %sw.epilog356

sw.bb251:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %432 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %val, align 1, !range !156
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 13
  %434 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 %433, ptr %fw_current_inpsmode, align 1
  br label %sw.epilog356

sw.bb253:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @_rtl88ee_set_fw_clock_on(ptr noundef %hw, i1 noundef zeroext true) #7
  br label %sw.epilog356

sw.bb254:                                         ; preds = %entry
  %435 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %435)
  %436 = load i8, ptr %val, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %436)
  %tobool255.not = icmp eq i8 %436, 0
  br i1 %tobool255.not, label %if.else259, label %if.then258

if.then258:                                       ; preds = %sw.bb254
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_current_inps.i) #7
  %437 = ptrtoint ptr %fw_current_inps.i to i32
  call void @__asan_store1_noabort(i32 %437)
  store i8 1, ptr %fw_current_inps.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rpwm_val.i) #7
  %low_power_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 16
  %438 = ptrtoint ptr %low_power_enable.i to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %low_power_enable.i, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %439)
  %tobool.not.i736 = icmp eq i8 %439, 0
  br i1 %tobool.not.i736, label %if.else.i, label %if.then.i738

if.then.i738:                                     ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #9
  %cfg.i737 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %440 = ptrtoint ptr %cfg.i737 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %cfg.i737, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %441, i32 0, i32 4
  %442 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %ops.i, align 4
  %set_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %443, i32 0, i32 20
  %444 = ptrtoint ptr %set_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %set_hw_reg.i, align 4
  call void %445(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_inps.i) #7
  %446 = ptrtoint ptr %cfg.i737 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %cfg.i737, align 8
  %ops5.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %447, i32 0, i32 4
  %448 = ptrtoint ptr %ops5.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %ops5.i, align 4
  %set_hw_reg6.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %449, i32 0, i32 20
  %450 = ptrtoint ptr %set_hw_reg6.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %set_hw_reg6.i, align 4
  %fwctrl_psmode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 11
  call void %451(ptr noundef %hw, i8 noundef zeroext 61, ptr noundef %fwctrl_psmode.i) #7
  %allow_sw_to_change_hwclc.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 48
  %452 = ptrtoint ptr %allow_sw_to_change_hwclc.i to i32
  call void @__asan_store1_noabort(i32 %452)
  store i8 1, ptr %allow_sw_to_change_hwclc.i, align 8
  call fastcc void @_rtl88ee_set_fw_clock_off(ptr noundef %hw, i8 noundef zeroext 1) #7
  br label %_rtl88ee_fwlps_enter.exit

if.else.i:                                        ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #9
  %453 = ptrtoint ptr %rpwm_val.i to i32
  call void @__asan_store1_noabort(i32 %453)
  store i8 0, ptr %rpwm_val.i, align 1
  %cfg7.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %454 = ptrtoint ptr %cfg7.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %cfg7.i, align 8
  %ops8.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %455, i32 0, i32 4
  %456 = ptrtoint ptr %ops8.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %ops8.i, align 4
  %set_hw_reg9.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %457, i32 0, i32 20
  %458 = ptrtoint ptr %set_hw_reg9.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %set_hw_reg9.i, align 4
  call void %459(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_inps.i) #7
  %460 = ptrtoint ptr %cfg7.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %cfg7.i, align 8
  %ops11.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %461, i32 0, i32 4
  %462 = ptrtoint ptr %ops11.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %ops11.i, align 4
  %set_hw_reg12.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %463, i32 0, i32 20
  %464 = ptrtoint ptr %set_hw_reg12.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %set_hw_reg12.i, align 4
  %fwctrl_psmode13.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 11
  call void %465(ptr noundef %hw, i8 noundef zeroext 61, ptr noundef %fwctrl_psmode13.i) #7
  %466 = ptrtoint ptr %cfg7.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %cfg7.i, align 8
  %ops15.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %467, i32 0, i32 4
  %468 = ptrtoint ptr %ops15.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %ops15.i, align 4
  %set_hw_reg16.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %469, i32 0, i32 20
  %470 = ptrtoint ptr %set_hw_reg16.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %set_hw_reg16.i, align 4
  call void %471(ptr noundef %hw, i8 noundef zeroext 60, ptr noundef nonnull %rpwm_val.i) #7
  br label %_rtl88ee_fwlps_enter.exit

_rtl88ee_fwlps_enter.exit:                        ; preds = %if.else.i, %if.then.i738
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rpwm_val.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_current_inps.i) #7
  br label %sw.epilog356

if.else259:                                       ; preds = %sw.bb254
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @_rtl88ee_fwlps_leave(ptr noundef %hw)
  br label %sw.epilog356

sw.bb261:                                         ; preds = %entry
  %472 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %472)
  %473 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %473)
  %cmp263 = icmp eq i8 %473, 1
  br i1 %cmp263, label %if.then265, label %sw.bb261.if.end321_crit_edge

sw.bb261.if.end321_crit_edge:                     ; preds = %sw.bb261
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end321

if.then265:                                       ; preds = %sw.bb261
  %cfg266 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %474 = ptrtoint ptr %cfg266 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %cfg266, align 8
  %ops267 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %475, i32 0, i32 4
  %476 = ptrtoint ptr %ops267 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %ops267, align 4
  %set_hw_reg268 = getelementptr inbounds %struct.rtl_hal_ops, ptr %477, i32 0, i32 20
  %478 = ptrtoint ptr %set_hw_reg268 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %set_hw_reg268, align 4
  tail call void %479(ptr noundef %hw, i8 noundef zeroext 82, ptr noundef null) #7
  %read8_sync.i739 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %480 = ptrtoint ptr %read8_sync.i739 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %read8_sync.i739, align 4
  %call.i740 = tail call zeroext i8 %481(ptr noundef %1, i32 noundef 257) #7
  %or271 = or i8 %call.i740, 1
  %write8_async.i741 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %482 = ptrtoint ptr %write8_async.i741 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %write8_async.i741, align 4
  tail call void %483(ptr noundef %1, i32 noundef 257, i8 noundef zeroext %or271) #7
  %484 = ptrtoint ptr %cfg266 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %cfg266, align 8
  %write_readback.i743 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %485, i32 0, i32 1
  %486 = ptrtoint ptr %write_readback.i743 to i32
  call void @__asan_load1_noabort(i32 %486)
  %487 = load i8, ptr %write_readback.i743, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %487)
  %tobool.not.i744 = icmp eq i8 %487, 0
  br i1 %tobool.not.i744, label %if.then265.rtl_write_byte.exit748_crit_edge, label %if.then.i747

if.then265.rtl_write_byte.exit748_crit_edge:      ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit748

if.then.i747:                                     ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #9
  %488 = ptrtoint ptr %read8_sync.i739 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %read8_sync.i739, align 4
  %call.i746 = tail call zeroext i8 %489(ptr noundef %1, i32 noundef 257) #7
  br label %rtl_write_byte.exit748

rtl_write_byte.exit748:                           ; preds = %if.then.i747, %if.then265.rtl_write_byte.exit748_crit_edge
  %490 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i = getelementptr inbounds %struct.rtl_priv, ptr %491, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %492 = ptrtoint ptr %reg_bcn_ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %reg_bcn_ctrl_val.i, align 4
  %and.i = and i32 %493, -9
  store i32 %and.i, ptr %reg_bcn_ctrl_val.i, align 4
  %conv6.i = trunc i32 %and.i to i8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %491, i32 0, i32 13, i32 5
  %494 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %495(ptr noundef %491, i32 noundef 1360, i8 noundef zeroext %conv6.i) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %491, i32 0, i32 32
  %496 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %497, i32 0, i32 1
  %498 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %write_readback.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %499)
  %tobool.not.i.i = icmp eq i8 %499, 0
  br i1 %tobool.not.i.i, label %rtl_write_byte.exit748._rtl88ee_set_bcn_ctrl_reg.exit_crit_edge, label %if.then.i.i

rtl_write_byte.exit748._rtl88ee_set_bcn_ctrl_reg.exit_crit_edge: ; preds = %rtl_write_byte.exit748
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_set_bcn_ctrl_reg.exit

if.then.i.i:                                      ; preds = %rtl_write_byte.exit748
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %491, i32 0, i32 13, i32 9
  %500 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %501(ptr noundef %491, i32 noundef 1360) #7
  br label %_rtl88ee_set_bcn_ctrl_reg.exit

_rtl88ee_set_bcn_ctrl_reg.exit:                   ; preds = %if.then.i.i, %rtl_write_byte.exit748._rtl88ee_set_bcn_ctrl_reg.exit_crit_edge
  %502 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i751 = getelementptr inbounds %struct.rtl_priv, ptr %503, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %504 = ptrtoint ptr %reg_bcn_ctrl_val.i751 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %reg_bcn_ctrl_val.i751, align 4
  %or.i = or i32 %505, 16
  store i32 %or.i, ptr %reg_bcn_ctrl_val.i751, align 4
  %conv6.i752 = trunc i32 %or.i to i8
  %write8_async.i.i753 = getelementptr inbounds %struct.rtl_priv, ptr %503, i32 0, i32 13, i32 5
  %506 = ptrtoint ptr %write8_async.i.i753 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %write8_async.i.i753, align 4
  tail call void %507(ptr noundef %503, i32 noundef 1360, i8 noundef zeroext %conv6.i752) #7
  %cfg.i.i754 = getelementptr inbounds %struct.rtl_priv, ptr %503, i32 0, i32 32
  %508 = ptrtoint ptr %cfg.i.i754 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %cfg.i.i754, align 8
  %write_readback.i.i755 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %509, i32 0, i32 1
  %510 = ptrtoint ptr %write_readback.i.i755 to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %write_readback.i.i755, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %511)
  %tobool.not.i.i756 = icmp eq i8 %511, 0
  br i1 %tobool.not.i.i756, label %_rtl88ee_set_bcn_ctrl_reg.exit._rtl88ee_set_bcn_ctrl_reg.exit760_crit_edge, label %if.then.i.i759

_rtl88ee_set_bcn_ctrl_reg.exit._rtl88ee_set_bcn_ctrl_reg.exit760_crit_edge: ; preds = %_rtl88ee_set_bcn_ctrl_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_set_bcn_ctrl_reg.exit760

if.then.i.i759:                                   ; preds = %_rtl88ee_set_bcn_ctrl_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i757 = getelementptr inbounds %struct.rtl_priv, ptr %503, i32 0, i32 13, i32 9
  %512 = ptrtoint ptr %read8_sync.i.i757 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %read8_sync.i.i757, align 4
  %call.i.i758 = tail call zeroext i8 %513(ptr noundef %503, i32 noundef 1360) #7
  br label %_rtl88ee_set_bcn_ctrl_reg.exit760

_rtl88ee_set_bcn_ctrl_reg.exit760:                ; preds = %if.then.i.i759, %_rtl88ee_set_bcn_ctrl_reg.exit._rtl88ee_set_bcn_ctrl_reg.exit760_crit_edge
  %514 = ptrtoint ptr %read8_sync.i739 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %read8_sync.i739, align 4
  %call.i762 = tail call zeroext i8 %515(ptr noundef %1, i32 noundef 1058) #7
  %and275 = and i8 %call.i762, -65
  %516 = ptrtoint ptr %write8_async.i741 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %write8_async.i741, align 4
  tail call void %517(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %and275) #7
  %518 = ptrtoint ptr %cfg266 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %cfg266, align 8
  %write_readback.i765 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %519, i32 0, i32 1
  %520 = ptrtoint ptr %write_readback.i765 to i32
  call void @__asan_load1_noabort(i32 %520)
  %521 = load i8, ptr %write_readback.i765, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %521)
  %tobool.not.i766 = icmp eq i8 %521, 0
  br i1 %tobool.not.i766, label %_rtl88ee_set_bcn_ctrl_reg.exit760.rtl_write_byte.exit770_crit_edge, label %if.then.i769

_rtl88ee_set_bcn_ctrl_reg.exit760.rtl_write_byte.exit770_crit_edge: ; preds = %_rtl88ee_set_bcn_ctrl_reg.exit760
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit770

if.then.i769:                                     ; preds = %_rtl88ee_set_bcn_ctrl_reg.exit760
  call void @__sanitizer_cov_trace_pc() #9
  %522 = ptrtoint ptr %read8_sync.i739 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %read8_sync.i739, align 4
  %call.i768 = tail call zeroext i8 %523(ptr noundef %1, i32 noundef 1058) #7
  br label %rtl_write_byte.exit770

rtl_write_byte.exit770:                           ; preds = %if.then.i769, %_rtl88ee_set_bcn_ctrl_reg.exit760.rtl_write_byte.exit770_crit_edge
  %524 = and i8 %call.i762, 64
  br label %do.body282

do.body282:                                       ; preds = %while.end298.do.body282_crit_edge, %rtl_write_byte.exit770
  %dlbcn_count.0 = phi i8 [ 0, %rtl_write_byte.exit770 ], [ %inc299, %while.end298.do.body282_crit_edge ]
  %525 = ptrtoint ptr %read8_sync.i739 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %read8_sync.i739, align 4
  %call.i772 = tail call zeroext i8 %526(ptr noundef %1, i32 noundef 522) #7
  %527 = or i8 %call.i772, 1
  %528 = ptrtoint ptr %write8_async.i741 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %write8_async.i741, align 4
  tail call void %529(ptr noundef %1, i32 noundef 522, i8 noundef zeroext %527) #7
  %530 = ptrtoint ptr %cfg266 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %cfg266, align 8
  %write_readback.i775 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %531, i32 0, i32 1
  %532 = ptrtoint ptr %write_readback.i775 to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %write_readback.i775, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %533)
  %tobool.not.i776 = icmp eq i8 %533, 0
  br i1 %tobool.not.i776, label %do.body282.rtl_write_byte.exit780_crit_edge, label %if.then.i779

do.body282.rtl_write_byte.exit780_crit_edge:      ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit780

if.then.i779:                                     ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #9
  %534 = ptrtoint ptr %read8_sync.i739 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %read8_sync.i739, align 4
  %call.i778 = tail call zeroext i8 %535(ptr noundef %1, i32 noundef 522) #7
  br label %rtl_write_byte.exit780

rtl_write_byte.exit780:                           ; preds = %if.then.i779, %do.body282.rtl_write_byte.exit780_crit_edge
  %536 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %priv, align 8
  %dev.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %arrayidx.i = getelementptr %struct.rtl_priv, ptr %537, i32 1, i32 7, i32 5, i32 0, i32 0, i32 2
  %irq_th_lock.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 7, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_th_lock.i) #7
  %qlen.i.i = getelementptr %struct.rtl_priv, ptr %537, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4, i32 3
  %538 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %539)
  %tobool.not31.i = icmp eq i32 %539, 0
  br i1 %tobool.not31.i, label %rtl_write_byte.exit780._rtl88ee_return_beacon_queue_skb.exit_crit_edge, label %while.body.lr.ph.i

rtl_write_byte.exit780._rtl88ee_return_beacon_queue_skb.exit_crit_edge: ; preds = %rtl_write_byte.exit780
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_return_beacon_queue_skb.exit

while.body.lr.ph.i:                               ; preds = %rtl_write_byte.exit780
  %queue.i = getelementptr %struct.rtl_priv, ptr %537, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4, i32 1, i32 1
  %idx.i = getelementptr %struct.rtl_priv, ptr %537, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4
  %cfg.i782 = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 32
  %entries.i = getelementptr %struct.rtl_priv, ptr %537, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %__skb_dequeue.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %540 = phi i32 [ %539, %while.body.lr.ph.i ], [ %569, %__skb_dequeue.exit.i.while.body.i_crit_edge ]
  %541 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %arrayidx.i, align 4
  %543 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %idx.i, align 4
  %arrayidx9.i = getelementptr %struct.rtl_tx_desc, ptr %542, i32 %544
  %545 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %queue.i, align 4
  %cmp.i.i.i = icmp eq ptr %546, %queue.i
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, ptr null, ptr %546
  %tobool.not.i.i783 = icmp eq ptr %spec.store.select.i.i.i, null
  br i1 %tobool.not.i.i783, label %while.body.i.__skb_dequeue.exit.i_crit_edge, label %if.then.i.i784

while.body.i.__skb_dequeue.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_dequeue.exit.i

if.then.i.i784:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = add i32 %540, -1
  %547 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %547)
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i, align 4
  %548 = ptrtoint ptr %spec.store.select.i.i.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %spec.store.select.i.i.i, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.41, ptr %spec.store.select.i.i.i, i32 0, i32 1
  %550 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i.i, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.41, ptr %549, i32 0, i32 1
  %552 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %552)
  store volatile ptr %551, ptr %prev17.i.i.i, align 4
  %553 = ptrtoint ptr %551 to i32
  call void @__asan_store4_noabort(i32 %553)
  store volatile ptr %549, ptr %551, align 8
  br label %__skb_dequeue.exit.i

__skb_dequeue.exit.i:                             ; preds = %if.then.i.i784, %while.body.i.__skb_dequeue.exit.i_crit_edge
  %554 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %dev.i, align 4
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %555, i32 0, i32 44
  %556 = ptrtoint ptr %cfg.i782 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %cfg.i782, align 8
  %ops.i785 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %557, i32 0, i32 4
  %558 = ptrtoint ptr %ops.i785 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %ops.i785, align 4
  %get_desc.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %559, i32 0, i32 38
  %560 = ptrtoint ptr %get_desc.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %get_desc.i, align 4
  %call13.i = tail call i64 %561(ptr noundef %hw, ptr noundef %arrayidx9.i, i1 noundef zeroext true, i8 noundef zeroext 3) #7
  %conv14.i = trunc i64 %call13.i to i32
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i.i, i32 0, i32 6
  %562 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev12.i, i32 noundef %conv14.i, i32 noundef %563, i32 noundef 1, i32 noundef 0) #7
  tail call void @kfree_skb_reason(ptr noundef %spec.store.select.i.i.i, i32 noundef 0) #7
  %564 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %idx.i, align 4
  %add.i = add i32 %565, 1
  %566 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %entries.i, align 4
  %rem.i = urem i32 %add.i, %567
  store i32 %rem.i, ptr %idx.i, align 4
  %568 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %qlen.i.i, align 4
  %tobool.not.i786 = icmp eq i32 %569, 0
  br i1 %tobool.not.i786, label %__skb_dequeue.exit.i._rtl88ee_return_beacon_queue_skb.exit_crit_edge, label %__skb_dequeue.exit.i.while.body.i_crit_edge

__skb_dequeue.exit.i.while.body.i_crit_edge:      ; preds = %__skb_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

__skb_dequeue.exit.i._rtl88ee_return_beacon_queue_skb.exit_crit_edge: ; preds = %__skb_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_return_beacon_queue_skb.exit

_rtl88ee_return_beacon_queue_skb.exit:            ; preds = %__skb_dequeue.exit.i._rtl88ee_return_beacon_queue_skb.exit_crit_edge, %rtl_write_byte.exit780._rtl88ee_return_beacon_queue_skb.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_th_lock.i, i32 noundef %call4.i) #7
  tail call void @rtl88e_set_fw_rsvdpagepkt(ptr noundef %hw, i1 noundef zeroext false) #7
  %570 = ptrtoint ptr %read8_sync.i739 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %read8_sync.i739, align 4
  %call.i788 = tail call zeroext i8 %571(ptr noundef %1, i32 noundef 522) #7
  %572 = and i8 %call.i788, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %572)
  %tobool291.not962 = icmp eq i8 %572, 0
  br i1 %tobool291.not962, label %_rtl88ee_return_beacon_queue_skb.exit.while.body295_crit_edge, label %do.end309.thread

_rtl88ee_return_beacon_queue_skb.exit.while.body295_crit_edge: ; preds = %_rtl88ee_return_beacon_queue_skb.exit
  br label %while.body295

do.end309.thread:                                 ; preds = %_rtl88ee_return_beacon_queue_skb.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %524)
  %tobool279.not989 = icmp eq i8 %524, 0
  br label %if.then313

while.body295:                                    ; preds = %while.body295.while.body295_crit_edge, %_rtl88ee_return_beacon_queue_skb.exit.while.body295_crit_edge
  %count.0964 = phi i8 [ %inc296, %while.body295.while.body295_crit_edge ], [ 0, %_rtl88ee_return_beacon_queue_skb.exit.while.body295_crit_edge ]
  %inc296 = add nuw nsw i8 %count.0964, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %573 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %573(i32 noundef 2147480) #7
  %574 = ptrtoint ptr %read8_sync.i739 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %read8_sync.i739, align 4
  %call.i790 = tail call zeroext i8 %575(ptr noundef %1, i32 noundef 522) #7
  %576 = and i8 %call.i790, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %576)
  %tobool291.not = icmp eq i8 %576, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.0964)
  %cmp293 = icmp ult i8 %count.0964, 19
  %or.cond = select i1 %tobool291.not, i1 %cmp293, i1 false
  br i1 %or.cond, label %while.body295.while.body295_crit_edge, label %while.end298

while.body295.while.body295_crit_edge:            ; preds = %while.body295
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body295

while.end298:                                     ; preds = %while.body295
  %inc299 = add nuw nsw i8 %dlbcn_count.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %dlbcn_count.0)
  %cmp306 = icmp ult i8 %dlbcn_count.0, 4
  %or.cond547 = select i1 %tobool291.not, i1 %cmp306, i1 false
  br i1 %or.cond547, label %while.end298.do.body282_crit_edge, label %do.end309

while.end298.do.body282_crit_edge:                ; preds = %while.end298
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body282

do.end309:                                        ; preds = %while.end298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %524)
  %tobool279.not = icmp eq i8 %524, 0
  br i1 %tobool291.not, label %do.end309.if.end314_crit_edge, label %do.end309.if.then313_crit_edge

do.end309.if.then313_crit_edge:                   ; preds = %do.end309
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then313

do.end309.if.end314_crit_edge:                    ; preds = %do.end309
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end314

if.then313:                                       ; preds = %do.end309.if.then313_crit_edge, %do.end309.thread
  %tobool279.not990 = phi i1 [ %tobool279.not989, %do.end309.thread ], [ %tobool279.not, %do.end309.if.then313_crit_edge ]
  %577 = ptrtoint ptr %write8_async.i741 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %write8_async.i741, align 4
  tail call void %578(ptr noundef %1, i32 noundef 522, i8 noundef zeroext 1) #7
  %579 = ptrtoint ptr %cfg266 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %cfg266, align 8
  %write_readback.i793 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %580, i32 0, i32 1
  %581 = ptrtoint ptr %write_readback.i793 to i32
  call void @__asan_load1_noabort(i32 %581)
  %582 = load i8, ptr %write_readback.i793, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %582)
  %tobool.not.i794 = icmp eq i8 %582, 0
  br i1 %tobool.not.i794, label %if.then313.if.end314_crit_edge, label %if.then.i797

if.then313.if.end314_crit_edge:                   ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end314

if.then.i797:                                     ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #9
  %583 = ptrtoint ptr %read8_sync.i739 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %read8_sync.i739, align 4
  %call.i796 = tail call zeroext i8 %584(ptr noundef %1, i32 noundef 522) #7
  br label %if.end314

if.end314:                                        ; preds = %if.then.i797, %if.then313.if.end314_crit_edge, %do.end309.if.end314_crit_edge
  %tobool279.not991 = phi i1 [ %tobool279.not990, %if.then.i797 ], [ %tobool279.not990, %if.then313.if.end314_crit_edge ], [ %tobool279.not, %do.end309.if.end314_crit_edge ]
  %585 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i800 = getelementptr inbounds %struct.rtl_priv, ptr %586, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %587 = ptrtoint ptr %reg_bcn_ctrl_val.i800 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %reg_bcn_ctrl_val.i800, align 4
  %or.i801 = or i32 %588, 8
  store i32 %or.i801, ptr %reg_bcn_ctrl_val.i800, align 4
  %conv6.i802 = trunc i32 %or.i801 to i8
  %write8_async.i.i803 = getelementptr inbounds %struct.rtl_priv, ptr %586, i32 0, i32 13, i32 5
  %589 = ptrtoint ptr %write8_async.i.i803 to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %write8_async.i.i803, align 4
  tail call void %590(ptr noundef %586, i32 noundef 1360, i8 noundef zeroext %conv6.i802) #7
  %cfg.i.i804 = getelementptr inbounds %struct.rtl_priv, ptr %586, i32 0, i32 32
  %591 = ptrtoint ptr %cfg.i.i804 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %cfg.i.i804, align 8
  %write_readback.i.i805 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %592, i32 0, i32 1
  %593 = ptrtoint ptr %write_readback.i.i805 to i32
  call void @__asan_load1_noabort(i32 %593)
  %594 = load i8, ptr %write_readback.i.i805, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %594)
  %tobool.not.i.i806 = icmp eq i8 %594, 0
  br i1 %tobool.not.i.i806, label %if.end314._rtl88ee_set_bcn_ctrl_reg.exit810_crit_edge, label %if.then.i.i809

if.end314._rtl88ee_set_bcn_ctrl_reg.exit810_crit_edge: ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_set_bcn_ctrl_reg.exit810

if.then.i.i809:                                   ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i807 = getelementptr inbounds %struct.rtl_priv, ptr %586, i32 0, i32 13, i32 9
  %595 = ptrtoint ptr %read8_sync.i.i807 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %read8_sync.i.i807, align 4
  %call.i.i808 = tail call zeroext i8 %596(ptr noundef %586, i32 noundef 1360) #7
  br label %_rtl88ee_set_bcn_ctrl_reg.exit810

_rtl88ee_set_bcn_ctrl_reg.exit810:                ; preds = %if.then.i.i809, %if.end314._rtl88ee_set_bcn_ctrl_reg.exit810_crit_edge
  %597 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i812 = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %599 = ptrtoint ptr %reg_bcn_ctrl_val.i812 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %reg_bcn_ctrl_val.i812, align 4
  %and.i813 = and i32 %600, -17
  store i32 %and.i813, ptr %reg_bcn_ctrl_val.i812, align 4
  %conv6.i814 = trunc i32 %and.i813 to i8
  %write8_async.i.i815 = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 5
  %601 = ptrtoint ptr %write8_async.i.i815 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %write8_async.i.i815, align 4
  tail call void %602(ptr noundef %598, i32 noundef 1360, i8 noundef zeroext %conv6.i814) #7
  %cfg.i.i816 = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 32
  %603 = ptrtoint ptr %cfg.i.i816 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %cfg.i.i816, align 8
  %write_readback.i.i817 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %604, i32 0, i32 1
  %605 = ptrtoint ptr %write_readback.i.i817 to i32
  call void @__asan_load1_noabort(i32 %605)
  %606 = load i8, ptr %write_readback.i.i817, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %606)
  %tobool.not.i.i818 = icmp eq i8 %606, 0
  br i1 %tobool.not.i.i818, label %_rtl88ee_set_bcn_ctrl_reg.exit810._rtl88ee_set_bcn_ctrl_reg.exit822_crit_edge, label %if.then.i.i821

_rtl88ee_set_bcn_ctrl_reg.exit810._rtl88ee_set_bcn_ctrl_reg.exit822_crit_edge: ; preds = %_rtl88ee_set_bcn_ctrl_reg.exit810
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_set_bcn_ctrl_reg.exit822

if.then.i.i821:                                   ; preds = %_rtl88ee_set_bcn_ctrl_reg.exit810
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i819 = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 9
  %607 = ptrtoint ptr %read8_sync.i.i819 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %read8_sync.i.i819, align 4
  %call.i.i820 = tail call zeroext i8 %608(ptr noundef %598, i32 noundef 1360) #7
  br label %_rtl88ee_set_bcn_ctrl_reg.exit822

_rtl88ee_set_bcn_ctrl_reg.exit822:                ; preds = %if.then.i.i821, %_rtl88ee_set_bcn_ctrl_reg.exit810._rtl88ee_set_bcn_ctrl_reg.exit822_crit_edge
  br i1 %tobool279.not991, label %_rtl88ee_set_bcn_ctrl_reg.exit822.if.end317_crit_edge, label %if.then316

_rtl88ee_set_bcn_ctrl_reg.exit822.if.end317_crit_edge: ; preds = %_rtl88ee_set_bcn_ctrl_reg.exit822
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end317

if.then316:                                       ; preds = %_rtl88ee_set_bcn_ctrl_reg.exit822
  %609 = ptrtoint ptr %write8_async.i741 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %write8_async.i741, align 4
  tail call void %610(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %call.i762) #7
  %611 = ptrtoint ptr %cfg266 to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %cfg266, align 8
  %write_readback.i825 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %612, i32 0, i32 1
  %613 = ptrtoint ptr %write_readback.i825 to i32
  call void @__asan_load1_noabort(i32 %613)
  %614 = load i8, ptr %write_readback.i825, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %614)
  %tobool.not.i826 = icmp eq i8 %614, 0
  br i1 %tobool.not.i826, label %if.then316.if.end317_crit_edge, label %if.then.i829

if.then316.if.end317_crit_edge:                   ; preds = %if.then316
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end317

if.then.i829:                                     ; preds = %if.then316
  call void @__sanitizer_cov_trace_pc() #9
  %615 = ptrtoint ptr %read8_sync.i739 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %read8_sync.i739, align 4
  %call.i828 = tail call zeroext i8 %616(ptr noundef %1, i32 noundef 1058) #7
  br label %if.end317

if.end317:                                        ; preds = %if.then.i829, %if.then316.if.end317_crit_edge, %_rtl88ee_set_bcn_ctrl_reg.exit822.if.end317_crit_edge
  %617 = and i8 %call.i740, -2
  %618 = ptrtoint ptr %write8_async.i741 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %write8_async.i741, align 4
  tail call void %619(ptr noundef %1, i32 noundef 257, i8 noundef zeroext %617) #7
  %620 = ptrtoint ptr %cfg266 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %cfg266, align 8
  %write_readback.i833 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %621, i32 0, i32 1
  %622 = ptrtoint ptr %write_readback.i833 to i32
  call void @__asan_load1_noabort(i32 %622)
  %623 = load i8, ptr %write_readback.i833, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %623)
  %tobool.not.i834 = icmp eq i8 %623, 0
  br i1 %tobool.not.i834, label %if.end317.if.end321_crit_edge, label %if.then.i837

if.end317.if.end321_crit_edge:                    ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end321

if.then.i837:                                     ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #9
  %624 = ptrtoint ptr %read8_sync.i739 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %read8_sync.i739, align 4
  %call.i836 = tail call zeroext i8 %625(ptr noundef %1, i32 noundef 257) #7
  br label %if.end321

if.end321:                                        ; preds = %if.then.i837, %if.end317.if.end321_crit_edge, %sw.bb261.if.end321_crit_edge
  %626 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %626)
  %627 = load i8, ptr %val, align 1
  tail call void @rtl88e_set_fw_joinbss_report_cmd(ptr noundef %hw, i8 noundef zeroext %627) #7
  br label %sw.epilog356

sw.bb322:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %628 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %628)
  %629 = load i8, ptr %val, align 1
  tail call void @rtl88e_set_p2p_ps_offload_cmd(ptr noundef %hw, i8 noundef zeroext %629) #7
  br label %sw.epilog356

sw.bb323:                                         ; preds = %entry
  %read16_sync.i839 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %630 = ptrtoint ptr %read16_sync.i839 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %read16_sync.i839, align 4
  %call.i840 = tail call zeroext i16 %631(ptr noundef %1, i32 noundef 1704) #7
  %632 = and i16 %call.i840, -16384
  %assoc_id = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 52
  %633 = ptrtoint ptr %assoc_id to i32
  call void @__asan_load2_noabort(i32 %633)
  %634 = load i16, ptr %assoc_id, align 2
  %or330545 = or i16 %632, %634
  %write16_async.i841 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %635 = ptrtoint ptr %write16_async.i841 to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %write16_async.i841, align 4
  tail call void %636(ptr noundef %1, i32 noundef 1704, i16 noundef zeroext %or330545) #7
  %cfg.i842 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %637 = ptrtoint ptr %cfg.i842 to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %cfg.i842, align 8
  %write_readback.i843 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %638, i32 0, i32 1
  %639 = ptrtoint ptr %write_readback.i843 to i32
  call void @__asan_load1_noabort(i32 %639)
  %640 = load i8, ptr %write_readback.i843, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %640)
  %tobool.not.i844 = icmp eq i8 %640, 0
  br i1 %tobool.not.i844, label %sw.bb323.sw.epilog356_crit_edge, label %if.then.i847

sw.bb323.sw.epilog356_crit_edge:                  ; preds = %sw.bb323
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog356

if.then.i847:                                     ; preds = %sw.bb323
  call void @__sanitizer_cov_trace_pc() #9
  %641 = ptrtoint ptr %read16_sync.i839 to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %read16_sync.i839, align 4
  %call.i846 = tail call zeroext i16 %642(ptr noundef %1, i32 noundef 1704) #7
  br label %sw.epilog356

sw.bb332:                                         ; preds = %entry
  %643 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %643)
  %644 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %644)
  %tobool333.not = icmp eq i8 %644, 0
  br i1 %tobool333.not, label %if.end344.critedge, label %if.then334

if.then334:                                       ; preds = %sw.bb332
  %read8_sync.i.i850 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %645 = ptrtoint ptr %read8_sync.i.i850 to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %read8_sync.i.i850, align 4
  %call.i.i851 = tail call zeroext i8 %646(ptr noundef %1, i32 noundef 1058) #7
  %647 = and i8 %call.i.i851, -65
  %write8_async.i.i852 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %648 = ptrtoint ptr %write8_async.i.i852 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %write8_async.i.i852, align 4
  tail call void %649(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %647) #7
  %cfg.i.i853 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %650 = ptrtoint ptr %cfg.i.i853 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %cfg.i.i853, align 8
  %write_readback.i.i854 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %651, i32 0, i32 1
  %652 = ptrtoint ptr %write_readback.i.i854 to i32
  call void @__asan_load1_noabort(i32 %652)
  %653 = load i8, ptr %write_readback.i.i854, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %653)
  %tobool.not.i.i855 = icmp eq i8 %653, 0
  br i1 %tobool.not.i.i855, label %if.then334.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i856

if.then334.rtl_write_byte.exit.i_crit_edge:       ; preds = %if.then334
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i

if.then.i.i856:                                   ; preds = %if.then334
  call void @__sanitizer_cov_trace_pc() #9
  %654 = ptrtoint ptr %read8_sync.i.i850 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %read8_sync.i.i850, align 4
  %call.i13.i = tail call zeroext i8 %655(ptr noundef %1, i32 noundef 1058) #7
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i856, %if.then334.rtl_write_byte.exit.i_crit_edge
  %656 = ptrtoint ptr %write8_async.i.i852 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %write8_async.i.i852, align 4
  tail call void %657(ptr noundef %1, i32 noundef 1345, i8 noundef zeroext 100) #7
  %658 = ptrtoint ptr %cfg.i.i853 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %cfg.i.i853, align 8
  %write_readback.i16.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %659, i32 0, i32 1
  %660 = ptrtoint ptr %write_readback.i16.i to i32
  call void @__asan_load1_noabort(i32 %660)
  %661 = load i8, ptr %write_readback.i16.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %661)
  %tobool.not.i17.i = icmp eq i8 %661, 0
  br i1 %tobool.not.i17.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge, label %if.then.i20.i

rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit21.i

if.then.i20.i:                                    ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %662 = ptrtoint ptr %read8_sync.i.i850 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %read8_sync.i.i850, align 4
  %call.i19.i = tail call zeroext i8 %663(ptr noundef %1, i32 noundef 1345) #7
  br label %rtl_write_byte.exit21.i

rtl_write_byte.exit21.i:                          ; preds = %if.then.i20.i, %rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge
  %664 = ptrtoint ptr %read8_sync.i.i850 to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %read8_sync.i.i850, align 4
  %call.i23.i = tail call zeroext i8 %665(ptr noundef %1, i32 noundef 1346) #7
  %666 = and i8 %call.i23.i, -2
  %667 = ptrtoint ptr %write8_async.i.i852 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %write8_async.i.i852, align 4
  tail call void %668(ptr noundef %1, i32 noundef 1346, i8 noundef zeroext %666) #7
  %669 = ptrtoint ptr %cfg.i.i853 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %cfg.i.i853, align 8
  %write_readback.i26.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %670, i32 0, i32 1
  %671 = ptrtoint ptr %write_readback.i26.i to i32
  call void @__asan_load1_noabort(i32 %671)
  %672 = load i8, ptr %write_readback.i26.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %672)
  %tobool.not.i27.i = icmp eq i8 %672, 0
  br i1 %tobool.not.i27.i, label %rtl_write_byte.exit21.i._rtl88ee_stop_tx_beacon.exit_crit_edge, label %if.then.i30.i

rtl_write_byte.exit21.i._rtl88ee_stop_tx_beacon.exit_crit_edge: ; preds = %rtl_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_stop_tx_beacon.exit

if.then.i30.i:                                    ; preds = %rtl_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #9
  %673 = ptrtoint ptr %read8_sync.i.i850 to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %read8_sync.i.i850, align 4
  %call.i29.i = tail call zeroext i8 %674(ptr noundef %1, i32 noundef 1346) #7
  br label %_rtl88ee_stop_tx_beacon.exit

_rtl88ee_stop_tx_beacon.exit:                     ; preds = %if.then.i30.i, %rtl_write_byte.exit21.i._rtl88ee_stop_tx_beacon.exit_crit_edge
  %675 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i858 = getelementptr inbounds %struct.rtl_priv, ptr %676, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %677 = ptrtoint ptr %reg_bcn_ctrl_val.i858 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load i32, ptr %reg_bcn_ctrl_val.i858, align 4
  %and.i859 = and i32 %678, -9
  store i32 %and.i859, ptr %reg_bcn_ctrl_val.i858, align 4
  %conv6.i860 = trunc i32 %and.i859 to i8
  %write8_async.i.i861 = getelementptr inbounds %struct.rtl_priv, ptr %676, i32 0, i32 13, i32 5
  %679 = ptrtoint ptr %write8_async.i.i861 to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %write8_async.i.i861, align 4
  tail call void %680(ptr noundef %676, i32 noundef 1360, i8 noundef zeroext %conv6.i860) #7
  %cfg.i.i862 = getelementptr inbounds %struct.rtl_priv, ptr %676, i32 0, i32 32
  %681 = ptrtoint ptr %cfg.i.i862 to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load ptr, ptr %cfg.i.i862, align 8
  %write_readback.i.i863 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %682, i32 0, i32 1
  %683 = ptrtoint ptr %write_readback.i.i863 to i32
  call void @__asan_load1_noabort(i32 %683)
  %684 = load i8, ptr %write_readback.i.i863, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %684)
  %tobool.not.i.i864 = icmp eq i8 %684, 0
  br i1 %tobool.not.i.i864, label %_rtl88ee_stop_tx_beacon.exit._rtl88ee_set_bcn_ctrl_reg.exit869_crit_edge, label %if.then.i.i867

_rtl88ee_stop_tx_beacon.exit._rtl88ee_set_bcn_ctrl_reg.exit869_crit_edge: ; preds = %_rtl88ee_stop_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_set_bcn_ctrl_reg.exit869

if.then.i.i867:                                   ; preds = %_rtl88ee_stop_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i865 = getelementptr inbounds %struct.rtl_priv, ptr %676, i32 0, i32 13, i32 9
  %685 = ptrtoint ptr %read8_sync.i.i865 to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %read8_sync.i.i865, align 4
  %call.i.i866 = tail call zeroext i8 %686(ptr noundef %676, i32 noundef 1360) #7
  br label %_rtl88ee_set_bcn_ctrl_reg.exit869

_rtl88ee_set_bcn_ctrl_reg.exit869:                ; preds = %if.then.i.i867, %_rtl88ee_stop_tx_beacon.exit._rtl88ee_set_bcn_ctrl_reg.exit869_crit_edge
  %tsf.c = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 49
  %687 = ptrtoint ptr %tsf.c to i32
  call void @__asan_load8_noabort(i32 %687)
  %688 = load i64, ptr %tsf.c, align 8
  %conv337.c = trunc i64 %688 to i32
  %write32_async.i870 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %689 = ptrtoint ptr %write32_async.i870 to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load ptr, ptr %write32_async.i870, align 4
  tail call void %690(ptr noundef %1, i32 noundef 1376, i32 noundef %conv337.c) #7
  %691 = ptrtoint ptr %cfg.i.i853 to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %cfg.i.i853, align 8
  %write_readback.i872 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %692, i32 0, i32 1
  %693 = ptrtoint ptr %write_readback.i872 to i32
  call void @__asan_load1_noabort(i32 %693)
  %694 = load i8, ptr %write_readback.i872, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %694)
  %tobool.not.i873 = icmp eq i8 %694, 0
  br i1 %tobool.not.i873, label %_rtl88ee_set_bcn_ctrl_reg.exit869.rtl_write_dword.exit877_crit_edge, label %if.then.i876

_rtl88ee_set_bcn_ctrl_reg.exit869.rtl_write_dword.exit877_crit_edge: ; preds = %_rtl88ee_set_bcn_ctrl_reg.exit869
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit877

if.then.i876:                                     ; preds = %_rtl88ee_set_bcn_ctrl_reg.exit869
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i874 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %695 = ptrtoint ptr %read32_sync.i874 to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %read32_sync.i874, align 4
  %call.i875 = tail call i32 %696(ptr noundef %1, i32 noundef 1376) #7
  br label %rtl_write_dword.exit877

rtl_write_dword.exit877:                          ; preds = %if.then.i876, %_rtl88ee_set_bcn_ctrl_reg.exit869.rtl_write_dword.exit877_crit_edge
  %697 = ptrtoint ptr %tsf.c to i32
  call void @__asan_load8_noabort(i32 %697)
  %698 = load i64, ptr %tsf.c, align 8
  %shr339.c = lshr i64 %698, 32
  %conv341.c = trunc i64 %shr339.c to i32
  %699 = ptrtoint ptr %write32_async.i870 to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %write32_async.i870, align 4
  tail call void %700(ptr noundef %1, i32 noundef 1380, i32 noundef %conv341.c) #7
  %701 = ptrtoint ptr %cfg.i.i853 to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %cfg.i.i853, align 8
  %write_readback.i880 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %702, i32 0, i32 1
  %703 = ptrtoint ptr %write_readback.i880 to i32
  call void @__asan_load1_noabort(i32 %703)
  %704 = load i8, ptr %write_readback.i880, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %704)
  %tobool.not.i881 = icmp eq i8 %704, 0
  br i1 %tobool.not.i881, label %rtl_write_dword.exit877.rtl_write_dword.exit885_crit_edge, label %if.then.i884

rtl_write_dword.exit877.rtl_write_dword.exit885_crit_edge: ; preds = %rtl_write_dword.exit877
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit885

if.then.i884:                                     ; preds = %rtl_write_dword.exit877
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i882 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %705 = ptrtoint ptr %read32_sync.i882 to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %read32_sync.i882, align 4
  %call.i883 = tail call i32 %706(ptr noundef %1, i32 noundef 1380) #7
  br label %rtl_write_dword.exit885

rtl_write_dword.exit885:                          ; preds = %if.then.i884, %rtl_write_dword.exit877.rtl_write_dword.exit885_crit_edge
  %707 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i887 = getelementptr inbounds %struct.rtl_priv, ptr %708, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %709 = ptrtoint ptr %reg_bcn_ctrl_val.i887 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load i32, ptr %reg_bcn_ctrl_val.i887, align 4
  %or.i888 = or i32 %710, 8
  store i32 %or.i888, ptr %reg_bcn_ctrl_val.i887, align 4
  %conv6.i889 = trunc i32 %or.i888 to i8
  %write8_async.i.i890 = getelementptr inbounds %struct.rtl_priv, ptr %708, i32 0, i32 13, i32 5
  %711 = ptrtoint ptr %write8_async.i.i890 to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load ptr, ptr %write8_async.i.i890, align 4
  tail call void %712(ptr noundef %708, i32 noundef 1360, i8 noundef zeroext %conv6.i889) #7
  %cfg.i.i891 = getelementptr inbounds %struct.rtl_priv, ptr %708, i32 0, i32 32
  %713 = ptrtoint ptr %cfg.i.i891 to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %cfg.i.i891, align 8
  %write_readback.i.i892 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %714, i32 0, i32 1
  %715 = ptrtoint ptr %write_readback.i.i892 to i32
  call void @__asan_load1_noabort(i32 %715)
  %716 = load i8, ptr %write_readback.i.i892, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %716)
  %tobool.not.i.i893 = icmp eq i8 %716, 0
  br i1 %tobool.not.i.i893, label %rtl_write_dword.exit885._rtl88ee_set_bcn_ctrl_reg.exit898_crit_edge, label %if.then.i.i896

rtl_write_dword.exit885._rtl88ee_set_bcn_ctrl_reg.exit898_crit_edge: ; preds = %rtl_write_dword.exit885
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_set_bcn_ctrl_reg.exit898

if.then.i.i896:                                   ; preds = %rtl_write_dword.exit885
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i894 = getelementptr inbounds %struct.rtl_priv, ptr %708, i32 0, i32 13, i32 9
  %717 = ptrtoint ptr %read8_sync.i.i894 to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load ptr, ptr %read8_sync.i.i894, align 4
  %call.i.i895 = tail call zeroext i8 %718(ptr noundef %708, i32 noundef 1360) #7
  br label %_rtl88ee_set_bcn_ctrl_reg.exit898

_rtl88ee_set_bcn_ctrl_reg.exit898:                ; preds = %if.then.i.i896, %rtl_write_dword.exit885._rtl88ee_set_bcn_ctrl_reg.exit898_crit_edge
  %719 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %priv, align 8
  %read8_sync.i.i900 = getelementptr inbounds %struct.rtl_priv, ptr %720, i32 0, i32 13, i32 9
  %721 = ptrtoint ptr %read8_sync.i.i900 to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %read8_sync.i.i900, align 4
  %call.i.i901 = tail call zeroext i8 %722(ptr noundef %720, i32 noundef 1058) #7
  %723 = or i8 %call.i.i901, 64
  %write8_async.i.i902 = getelementptr inbounds %struct.rtl_priv, ptr %720, i32 0, i32 13, i32 5
  %724 = ptrtoint ptr %write8_async.i.i902 to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %write8_async.i.i902, align 4
  tail call void %725(ptr noundef %720, i32 noundef 1058, i8 noundef zeroext %723) #7
  %cfg.i.i903 = getelementptr inbounds %struct.rtl_priv, ptr %720, i32 0, i32 32
  %726 = ptrtoint ptr %cfg.i.i903 to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %cfg.i.i903, align 8
  %write_readback.i.i904 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %727, i32 0, i32 1
  %728 = ptrtoint ptr %write_readback.i.i904 to i32
  call void @__asan_load1_noabort(i32 %728)
  %729 = load i8, ptr %write_readback.i.i904, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %729)
  %tobool.not.i.i905 = icmp eq i8 %729, 0
  br i1 %tobool.not.i.i905, label %_rtl88ee_set_bcn_ctrl_reg.exit898.rtl_write_byte.exit.i910_crit_edge, label %if.then.i.i907

_rtl88ee_set_bcn_ctrl_reg.exit898.rtl_write_byte.exit.i910_crit_edge: ; preds = %_rtl88ee_set_bcn_ctrl_reg.exit898
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i910

if.then.i.i907:                                   ; preds = %_rtl88ee_set_bcn_ctrl_reg.exit898
  call void @__sanitizer_cov_trace_pc() #9
  %730 = ptrtoint ptr %read8_sync.i.i900 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %read8_sync.i.i900, align 4
  %call.i13.i906 = tail call zeroext i8 %731(ptr noundef %720, i32 noundef 1058) #7
  br label %rtl_write_byte.exit.i910

rtl_write_byte.exit.i910:                         ; preds = %if.then.i.i907, %_rtl88ee_set_bcn_ctrl_reg.exit898.rtl_write_byte.exit.i910_crit_edge
  %732 = ptrtoint ptr %write8_async.i.i902 to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %write8_async.i.i902, align 4
  tail call void %733(ptr noundef %720, i32 noundef 1345, i8 noundef zeroext -1) #7
  %734 = ptrtoint ptr %cfg.i.i903 to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %cfg.i.i903, align 8
  %write_readback.i16.i908 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %735, i32 0, i32 1
  %736 = ptrtoint ptr %write_readback.i16.i908 to i32
  call void @__asan_load1_noabort(i32 %736)
  %737 = load i8, ptr %write_readback.i16.i908, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %737)
  %tobool.not.i17.i909 = icmp eq i8 %737, 0
  br i1 %tobool.not.i17.i909, label %rtl_write_byte.exit.i910.rtl_write_byte.exit21.i916_crit_edge, label %if.then.i20.i912

rtl_write_byte.exit.i910.rtl_write_byte.exit21.i916_crit_edge: ; preds = %rtl_write_byte.exit.i910
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit21.i916

if.then.i20.i912:                                 ; preds = %rtl_write_byte.exit.i910
  call void @__sanitizer_cov_trace_pc() #9
  %738 = ptrtoint ptr %read8_sync.i.i900 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %read8_sync.i.i900, align 4
  %call.i19.i911 = tail call zeroext i8 %739(ptr noundef %720, i32 noundef 1345) #7
  br label %rtl_write_byte.exit21.i916

rtl_write_byte.exit21.i916:                       ; preds = %if.then.i20.i912, %rtl_write_byte.exit.i910.rtl_write_byte.exit21.i916_crit_edge
  %740 = ptrtoint ptr %read8_sync.i.i900 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %read8_sync.i.i900, align 4
  %call.i23.i913 = tail call zeroext i8 %741(ptr noundef %720, i32 noundef 1346) #7
  %742 = or i8 %call.i23.i913, 1
  %743 = ptrtoint ptr %write8_async.i.i902 to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %write8_async.i.i902, align 4
  tail call void %744(ptr noundef %720, i32 noundef 1346, i8 noundef zeroext %742) #7
  %745 = ptrtoint ptr %cfg.i.i903 to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %cfg.i.i903, align 8
  %write_readback.i26.i914 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %746, i32 0, i32 1
  %747 = ptrtoint ptr %write_readback.i26.i914 to i32
  call void @__asan_load1_noabort(i32 %747)
  %748 = load i8, ptr %write_readback.i26.i914, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %748)
  %tobool.not.i27.i915 = icmp eq i8 %748, 0
  br i1 %tobool.not.i27.i915, label %rtl_write_byte.exit21.i916.sw.epilog356_crit_edge, label %if.then.i30.i918

rtl_write_byte.exit21.i916.sw.epilog356_crit_edge: ; preds = %rtl_write_byte.exit21.i916
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog356

if.then.i30.i918:                                 ; preds = %rtl_write_byte.exit21.i916
  call void @__sanitizer_cov_trace_pc() #9
  %749 = ptrtoint ptr %read8_sync.i.i900 to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %read8_sync.i.i900, align 4
  %call.i29.i917 = tail call zeroext i8 %750(ptr noundef %720, i32 noundef 1346) #7
  br label %sw.epilog356

if.end344.critedge:                               ; preds = %sw.bb332
  %reg_bcn_ctrl_val.i920 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %751 = ptrtoint ptr %reg_bcn_ctrl_val.i920 to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load i32, ptr %reg_bcn_ctrl_val.i920, align 4
  %and.i921 = and i32 %752, -9
  store i32 %and.i921, ptr %reg_bcn_ctrl_val.i920, align 4
  %conv6.i922 = trunc i32 %and.i921 to i8
  %write8_async.i.i923 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %753 = ptrtoint ptr %write8_async.i.i923 to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %write8_async.i.i923, align 4
  tail call void %754(ptr noundef %1, i32 noundef 1360, i8 noundef zeroext %conv6.i922) #7
  %cfg.i.i924 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %755 = ptrtoint ptr %cfg.i.i924 to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %cfg.i.i924, align 8
  %write_readback.i.i925 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %756, i32 0, i32 1
  %757 = ptrtoint ptr %write_readback.i.i925 to i32
  call void @__asan_load1_noabort(i32 %757)
  %758 = load i8, ptr %write_readback.i.i925, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %758)
  %tobool.not.i.i926 = icmp eq i8 %758, 0
  br i1 %tobool.not.i.i926, label %if.end344.critedge._rtl88ee_set_bcn_ctrl_reg.exit931_crit_edge, label %if.then.i.i929

if.end344.critedge._rtl88ee_set_bcn_ctrl_reg.exit931_crit_edge: ; preds = %if.end344.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_set_bcn_ctrl_reg.exit931

if.then.i.i929:                                   ; preds = %if.end344.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i927 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %759 = ptrtoint ptr %read8_sync.i.i927 to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load ptr, ptr %read8_sync.i.i927, align 4
  %call.i.i928 = tail call zeroext i8 %760(ptr noundef %1, i32 noundef 1360) #7
  br label %_rtl88ee_set_bcn_ctrl_reg.exit931

_rtl88ee_set_bcn_ctrl_reg.exit931:                ; preds = %if.then.i.i929, %if.end344.critedge._rtl88ee_set_bcn_ctrl_reg.exit931_crit_edge
  %tsf.c548 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 49
  %761 = ptrtoint ptr %tsf.c548 to i32
  call void @__asan_load8_noabort(i32 %761)
  %762 = load i64, ptr %tsf.c548, align 8
  %conv337.c549 = trunc i64 %762 to i32
  %write32_async.i932 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %763 = ptrtoint ptr %write32_async.i932 to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %write32_async.i932, align 4
  tail call void %764(ptr noundef %1, i32 noundef 1376, i32 noundef %conv337.c549) #7
  %765 = ptrtoint ptr %cfg.i.i924 to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load ptr, ptr %cfg.i.i924, align 8
  %write_readback.i934 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %766, i32 0, i32 1
  %767 = ptrtoint ptr %write_readback.i934 to i32
  call void @__asan_load1_noabort(i32 %767)
  %768 = load i8, ptr %write_readback.i934, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %768)
  %tobool.not.i935 = icmp eq i8 %768, 0
  br i1 %tobool.not.i935, label %_rtl88ee_set_bcn_ctrl_reg.exit931.rtl_write_dword.exit939_crit_edge, label %if.then.i938

_rtl88ee_set_bcn_ctrl_reg.exit931.rtl_write_dword.exit939_crit_edge: ; preds = %_rtl88ee_set_bcn_ctrl_reg.exit931
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit939

if.then.i938:                                     ; preds = %_rtl88ee_set_bcn_ctrl_reg.exit931
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i936 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %769 = ptrtoint ptr %read32_sync.i936 to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %read32_sync.i936, align 4
  %call.i937 = tail call i32 %770(ptr noundef %1, i32 noundef 1376) #7
  br label %rtl_write_dword.exit939

rtl_write_dword.exit939:                          ; preds = %if.then.i938, %_rtl88ee_set_bcn_ctrl_reg.exit931.rtl_write_dword.exit939_crit_edge
  %771 = ptrtoint ptr %tsf.c548 to i32
  call void @__asan_load8_noabort(i32 %771)
  %772 = load i64, ptr %tsf.c548, align 8
  %shr339.c550 = lshr i64 %772, 32
  %conv341.c551 = trunc i64 %shr339.c550 to i32
  %773 = ptrtoint ptr %write32_async.i932 to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load ptr, ptr %write32_async.i932, align 4
  tail call void %774(ptr noundef %1, i32 noundef 1380, i32 noundef %conv341.c551) #7
  %775 = ptrtoint ptr %cfg.i.i924 to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %cfg.i.i924, align 8
  %write_readback.i942 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %776, i32 0, i32 1
  %777 = ptrtoint ptr %write_readback.i942 to i32
  call void @__asan_load1_noabort(i32 %777)
  %778 = load i8, ptr %write_readback.i942, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %778)
  %tobool.not.i943 = icmp eq i8 %778, 0
  br i1 %tobool.not.i943, label %rtl_write_dword.exit939.rtl_write_dword.exit947_crit_edge, label %if.then.i946

rtl_write_dword.exit939.rtl_write_dword.exit947_crit_edge: ; preds = %rtl_write_dword.exit939
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit947

if.then.i946:                                     ; preds = %rtl_write_dword.exit939
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i944 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %779 = ptrtoint ptr %read32_sync.i944 to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %read32_sync.i944, align 4
  %call.i945 = tail call i32 %780(ptr noundef %1, i32 noundef 1380) #7
  br label %rtl_write_dword.exit947

rtl_write_dword.exit947:                          ; preds = %if.then.i946, %rtl_write_dword.exit939.rtl_write_dword.exit947_crit_edge
  %781 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i949 = getelementptr inbounds %struct.rtl_priv, ptr %782, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %783 = ptrtoint ptr %reg_bcn_ctrl_val.i949 to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load i32, ptr %reg_bcn_ctrl_val.i949, align 4
  %or.i950 = or i32 %784, 8
  store i32 %or.i950, ptr %reg_bcn_ctrl_val.i949, align 4
  %conv6.i951 = trunc i32 %or.i950 to i8
  %write8_async.i.i952 = getelementptr inbounds %struct.rtl_priv, ptr %782, i32 0, i32 13, i32 5
  %785 = ptrtoint ptr %write8_async.i.i952 to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %write8_async.i.i952, align 4
  tail call void %786(ptr noundef %782, i32 noundef 1360, i8 noundef zeroext %conv6.i951) #7
  %cfg.i.i953 = getelementptr inbounds %struct.rtl_priv, ptr %782, i32 0, i32 32
  %787 = ptrtoint ptr %cfg.i.i953 to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load ptr, ptr %cfg.i.i953, align 8
  %write_readback.i.i954 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %788, i32 0, i32 1
  %789 = ptrtoint ptr %write_readback.i.i954 to i32
  call void @__asan_load1_noabort(i32 %789)
  %790 = load i8, ptr %write_readback.i.i954, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %790)
  %tobool.not.i.i955 = icmp eq i8 %790, 0
  br i1 %tobool.not.i.i955, label %rtl_write_dword.exit947.sw.epilog356_crit_edge, label %if.then.i.i958

rtl_write_dword.exit947.sw.epilog356_crit_edge:   ; preds = %rtl_write_dword.exit947
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog356

if.then.i.i958:                                   ; preds = %rtl_write_dword.exit947
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i956 = getelementptr inbounds %struct.rtl_priv, ptr %782, i32 0, i32 13, i32 9
  %791 = ptrtoint ptr %read8_sync.i.i956 to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load ptr, ptr %read8_sync.i.i956, align 4
  %call.i.i957 = tail call zeroext i8 %792(ptr noundef %782, i32 noundef 1360) #7
  br label %sw.epilog356

sw.bb345:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %array) #7
  %793 = getelementptr inbounds [2 x i8], ptr %array, i32 0, i32 1
  %794 = ptrtoint ptr %array to i32
  call void @__asan_store1_noabort(i32 %794)
  store i8 -1, ptr %array, align 1
  %795 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %795)
  %796 = load i8, ptr %val, align 1
  %797 = ptrtoint ptr %793 to i32
  call void @__asan_store1_noabort(i32 %797)
  store i8 %796, ptr %793, align 1
  call void @rtl88e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 3, i32 noundef 2, ptr noundef nonnull %array) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %array) #7
  br label %sw.epilog356

do.end352:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %variable to i32
  %call355 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #10
  br label %sw.epilog356

sw.epilog356:                                     ; preds = %do.end352, %sw.bb345, %if.then.i.i958, %rtl_write_dword.exit947.sw.epilog356_crit_edge, %if.then.i30.i918, %rtl_write_byte.exit21.i916.sw.epilog356_crit_edge, %if.then.i847, %sw.bb323.sw.epilog356_crit_edge, %sw.bb322, %if.end321, %if.else259, %_rtl88ee_fwlps_enter.exit, %sw.bb253, %sw.bb251, %sw.bb250, %if.then.i734, %if.else245.sw.epilog356_crit_edge, %if.then.i726, %if.then244.sw.epilog356_crit_edge, %sw.bb237, %sw.bb236, %sw.bb235, %if.then.i716, %sw.bb234.sw.epilog356_crit_edge, %if.then.i708, %sw.bb227.sw.epilog356_crit_edge, %rtl_write_dword.exit, %if.then.i695, %if.end222.sw.epilog356_crit_edge, %if.end177, %rtl_write_byte.exit686.3, %sw.bb102.sw.epilog356_crit_edge, %if.then.i677, %sw.bb93.sw.epilog356_crit_edge, %if.then.i669, %if.end82.sw.epilog356_crit_edge, %sw.bb72.sw.epilog356_crit_edge, %if.then.i661, %sw.bb71.sw.epilog356_crit_edge, %if.then.i653, %if.else66.sw.epilog356_crit_edge, %if.then.i645, %if.then62.sw.epilog356_crit_edge, %for.end57, %if.then.i627, %if.else.sw.epilog356_crit_edge, %if.then.i620, %if.then.sw.epilog356_crit_edge, %if.then.i582.5, %rtl_write_byte.exit583.4.sw.epilog356_crit_edge, %if.then.i574, %while.end.sw.epilog356_crit_edge, %if.then.i.5, %rtl_write_byte.exit.4.sw.epilog356_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_dm_init_edca_turbo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl88e_phy_set_io_cmd(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_set_fw_pwrmode_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl88ee_fwlps_leave(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %fw_current_inps = alloca i8, align 1
  %rpwm_val = alloca i8, align 1
  %fw_pwrmode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_current_inps) #7
  %2 = ptrtoint ptr %fw_current_inps to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %fw_current_inps, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rpwm_val) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_pwrmode) #7
  %3 = ptrtoint ptr %fw_pwrmode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %fw_pwrmode, align 1
  %low_power_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 16
  %4 = ptrtoint ptr %low_power_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %low_power_enable, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @_rtl88ee_set_fw_clock_on(ptr noundef %hw, i1 noundef zeroext false)
  %allow_sw_to_change_hwclc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 48
  %6 = ptrtoint ptr %allow_sw_to_change_hwclc to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %allow_sw_to_change_hwclc, align 8
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %rpwm_val to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %rpwm_val, align 1
  %cfg7 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %8 = ptrtoint ptr %cfg7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg7, align 8
  %ops8 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ops8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops8, align 4
  %set_hw_reg9 = getelementptr inbounds %struct.rtl_hal_ops, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %set_hw_reg9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_hw_reg9, align 4
  call void %13(ptr noundef %hw, i8 noundef zeroext 60, ptr noundef nonnull %rpwm_val) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cfg7.sink28 = phi ptr [ %cfg7, %if.else ], [ %cfg, %if.then ]
  %14 = ptrtoint ptr %cfg7.sink28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg7.sink28, align 8
  %ops11 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ops11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops11, align 4
  %set_hw_reg12 = getelementptr inbounds %struct.rtl_hal_ops, ptr %17, i32 0, i32 20
  %18 = ptrtoint ptr %set_hw_reg12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_hw_reg12, align 4
  call void %19(ptr noundef %hw, i8 noundef zeroext 61, ptr noundef nonnull %fw_pwrmode) #7
  %20 = ptrtoint ptr %cfg7.sink28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg7.sink28, align 8
  %ops14 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %ops14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops14, align 4
  %set_hw_reg15 = getelementptr inbounds %struct.rtl_hal_ops, ptr %23, i32 0, i32 20
  %24 = ptrtoint ptr %set_hw_reg15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_hw_reg15, align 4
  call void %25(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_inps) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_pwrmode) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rpwm_val) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_current_inps) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_set_fw_rsvdpagepkt(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_set_fw_joinbss_report_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_set_p2p_ps_offload_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_fill_h2c_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_enable_hw_security_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %sec_reg_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sec_reg_value) #7
  %pairwise_enc_algorithm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 3
  %2 = ptrtoint ptr %pairwise_enc_algorithm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pairwise_enc_algorithm, align 4
  %group_enc_algorithm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 4
  %4 = ptrtoint ptr %group_enc_algorithm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %group_enc_algorithm, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.12, i32 noundef %3, i32 noundef %5) #7
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg, align 8
  %mod_params = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %mod_params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mod_params, align 4
  %sw_crypto = getelementptr inbounds %struct.rtl_mod_params, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %sw_crypto to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sw_crypto, align 8, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sec = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sec, align 8, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %use_defaultkey = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 2
  %14 = ptrtoint ptr %use_defaultkey to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_defaultkey, align 2, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  %16 = select i1 %tobool5.not, i8 -52, i8 -49
  %17 = ptrtoint ptr %sec_reg_value to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %sec_reg_value, align 1
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %18 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write8_async.i, align 4
  tail call void %19(ptr noundef %1, i32 noundef 257, i8 noundef zeroext 2) #7
  %20 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_readback.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end.rtl_write_byte.exit_crit_edge, label %if.then.i

if.end.rtl_write_byte.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %24 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %25(ptr noundef %1, i32 noundef 257) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.end.rtl_write_byte.exit_crit_edge
  %26 = ptrtoint ptr %sec_reg_value to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sec_reg_value, align 1
  %conv15 = zext i8 %27 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.14, i32 noundef %conv15) #7
  %28 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %31, i32 0, i32 20
  %32 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_hw_reg, align 4
  call void %33(ptr noundef %hw, i8 noundef zeroext 27, ptr noundef nonnull %sec_reg_value) #7
  br label %cleanup

cleanup:                                          ; preds = %rtl_write_byte.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sec_reg_value) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl88ee_hw_init(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mac80211 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9
  %being_init_adapter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 4
  %2 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %being_init_adapter, align 1
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !157
  tail call void @trace_hardirqs_on() #7
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !158
  %fw_ready = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 38
  %4 = ptrtoint ptr %fw_ready to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %fw_ready, align 2
  %intf_ops = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 33
  %5 = ptrtoint ptr %intf_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf_ops, align 4
  %disable_aspm = getelementptr inbounds %struct.rtl_intf_ops, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %disable_aspm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disable_aspm, align 4
  tail call void %8(ptr noundef %hw) #7
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %9 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %10(ptr noundef %1, i32 noundef 9) #7
  %11 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i, align 4
  %call.i215 = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 256) #7
  %13 = and i8 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i215)
  %cmp16.not = icmp eq i8 %call.i215, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp16.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %call.i215)
  %cmp20.not = icmp eq i8 %call.i215, -22
  %or.cond213 = select i1 %or.cond, i1 true, i1 %cmp20.not
  br i1 %or.cond213, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fw_ps_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 49
  %14 = ptrtoint ptr %fw_ps_state to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %fw_ps_state, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink = phi i8 [ 0, %if.else ], [ 1, %entry.if.end_crit_edge ]
  %15 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 6
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink, ptr %15, align 1
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 8
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 9
  %19 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %20(ptr noundef %18, i32 noundef 124) #7
  %21 = and i8 %call.i.i, -2
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 5
  %22 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %23(ptr noundef %18, i32 noundef 124, i8 noundef zeroext %21) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 32
  %24 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %write_readback.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i, label %if.end.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.end.rtl_write_byte.exit.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i181.i = tail call zeroext i8 %29(ptr noundef %18, i32 noundef 124) #7
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.end.rtl_write_byte.exit.i_crit_edge
  %30 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i183.i = tail call zeroext i8 %31(ptr noundef %18, i32 noundef 5) #7
  %32 = and i8 %call.i183.i, 127
  %33 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %34(ptr noundef %18, i32 noundef 5, i8 noundef zeroext %32) #7
  %35 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i186.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write_readback.i186.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %write_readback.i186.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i187.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i187.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit191.i_crit_edge, label %if.then.i190.i

rtl_write_byte.exit.i.rtl_write_byte.exit191.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit191.i

if.then.i190.i:                                   ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i189.i = tail call zeroext i8 %40(ptr noundef %18, i32 noundef 5) #7
  br label %rtl_write_byte.exit191.i

rtl_write_byte.exit191.i:                         ; preds = %if.then.i190.i, %rtl_write_byte.exit.i.rtl_write_byte.exit191.i_crit_edge
  %41 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %42(ptr noundef %18, i32 noundef 28, i8 noundef zeroext 0) #7
  %43 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i194.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %write_readback.i194.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %write_readback.i194.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i195.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i195.i, label %rtl_write_byte.exit191.i.rtl_write_byte.exit199.i_crit_edge, label %if.then.i198.i

rtl_write_byte.exit191.i.rtl_write_byte.exit199.i_crit_edge: ; preds = %rtl_write_byte.exit191.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit199.i

if.then.i198.i:                                   ; preds = %rtl_write_byte.exit191.i
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i197.i = tail call zeroext i8 %48(ptr noundef %18, i32 noundef 28) #7
  br label %rtl_write_byte.exit199.i

rtl_write_byte.exit199.i:                         ; preds = %if.then.i198.i, %rtl_write_byte.exit191.i.rtl_write_byte.exit199.i_crit_edge
  %call10.i = tail call zeroext i1 @rtl_hal_pwrseqcmdparsing(ptr noundef %18, i8 noundef zeroext -1, i8 noundef zeroext 15, i8 noundef zeroext 4, ptr noundef nonnull @rtl8188ee_card_enable_flow) #7
  br i1 %call10.i, label %if.end.i, label %rtl_write_byte.exit199.i.do.end28_crit_edge

rtl_write_byte.exit199.i.do.end28_crit_edge:      ; preds = %rtl_write_byte.exit199.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

if.end.i:                                         ; preds = %rtl_write_byte.exit199.i
  %49 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i201.i = tail call zeroext i8 %50(ptr noundef %18, i32 noundef 4) #7
  %51 = or i8 %call.i201.i, 16
  %52 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %53(ptr noundef %18, i32 noundef 4, i8 noundef zeroext %51) #7
  %54 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i204.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %write_readback.i204.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %write_readback.i204.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i205.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i205.i, label %if.end.i.rtl_write_byte.exit209.i_crit_edge, label %if.then.i208.i

if.end.i.rtl_write_byte.exit209.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit209.i

if.then.i208.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i207.i = tail call zeroext i8 %59(ptr noundef %18, i32 noundef 4) #7
  br label %rtl_write_byte.exit209.i

rtl_write_byte.exit209.i:                         ; preds = %if.then.i208.i, %if.end.i.rtl_write_byte.exit209.i_crit_edge
  %60 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i211.i = tail call zeroext i8 %61(ptr noundef %18, i32 noundef 770) #7
  %62 = or i8 %call.i211.i, 4
  %63 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %64(ptr noundef %18, i32 noundef 770, i8 noundef zeroext %62) #7
  %65 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i214.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %write_readback.i214.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %write_readback.i214.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i215.i = icmp eq i8 %68, 0
  br i1 %tobool.not.i215.i, label %rtl_write_byte.exit209.i.rtl_write_byte.exit219.i_crit_edge, label %if.then.i218.i

rtl_write_byte.exit209.i.rtl_write_byte.exit219.i_crit_edge: ; preds = %rtl_write_byte.exit209.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit219.i

if.then.i218.i:                                   ; preds = %rtl_write_byte.exit209.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i217.i = tail call zeroext i8 %70(ptr noundef %18, i32 noundef 770) #7
  br label %rtl_write_byte.exit219.i

rtl_write_byte.exit219.i:                         ; preds = %if.then.i218.i, %rtl_write_byte.exit209.i.rtl_write_byte.exit219.i_crit_edge
  %71 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i221.i = tail call zeroext i8 %72(ptr noundef %18, i32 noundef 873) #7
  %73 = or i8 %call.i221.i, -128
  %74 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %75(ptr noundef %18, i32 noundef 873, i8 noundef zeroext %73) #7
  %76 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i224.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %write_readback.i224.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %write_readback.i224.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i225.i = icmp eq i8 %79, 0
  br i1 %tobool.not.i225.i, label %rtl_write_byte.exit219.i.rtl_write_byte.exit229.i_crit_edge, label %if.then.i228.i

rtl_write_byte.exit219.i.rtl_write_byte.exit229.i_crit_edge: ; preds = %rtl_write_byte.exit219.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit229.i

if.then.i228.i:                                   ; preds = %rtl_write_byte.exit219.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i227.i = tail call zeroext i8 %81(ptr noundef %18, i32 noundef 873) #7
  br label %rtl_write_byte.exit229.i

rtl_write_byte.exit229.i:                         ; preds = %if.then.i228.i, %rtl_write_byte.exit219.i.rtl_write_byte.exit229.i_crit_edge
  %82 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i231.i = tail call zeroext i8 %83(ptr noundef %18, i32 noundef 121) #7
  %84 = or i8 %call.i231.i, 2
  %85 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %86(ptr noundef %18, i32 noundef 121, i8 noundef zeroext %84) #7
  %87 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i234.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %write_readback.i234.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %write_readback.i234.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i235.i = icmp eq i8 %90, 0
  br i1 %tobool.not.i235.i, label %rtl_write_byte.exit229.i.rtl_write_byte.exit239.i_crit_edge, label %if.then.i238.i

rtl_write_byte.exit229.i.rtl_write_byte.exit239.i_crit_edge: ; preds = %rtl_write_byte.exit229.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit239.i

if.then.i238.i:                                   ; preds = %rtl_write_byte.exit229.i
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i237.i = tail call zeroext i8 %92(ptr noundef %18, i32 noundef 121) #7
  br label %rtl_write_byte.exit239.i

rtl_write_byte.exit239.i:                         ; preds = %if.then.i238.i, %rtl_write_byte.exit229.i.rtl_write_byte.exit239.i_crit_edge
  %93 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i241.i = tail call zeroext i8 %94(ptr noundef %18, i32 noundef 1260) #7
  %95 = or i8 %call.i241.i, 3
  %96 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %97(ptr noundef %18, i32 noundef 1260, i8 noundef zeroext %95) #7
  %98 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i244.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %write_readback.i244.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %write_readback.i244.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i245.i = icmp eq i8 %101, 0
  br i1 %tobool.not.i245.i, label %rtl_write_byte.exit239.i.rtl_write_byte.exit249.i_crit_edge, label %if.then.i248.i

rtl_write_byte.exit239.i.rtl_write_byte.exit249.i_crit_edge: ; preds = %rtl_write_byte.exit239.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit249.i

if.then.i248.i:                                   ; preds = %rtl_write_byte.exit239.i
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i247.i = tail call zeroext i8 %103(ptr noundef %18, i32 noundef 1260) #7
  br label %rtl_write_byte.exit249.i

rtl_write_byte.exit249.i:                         ; preds = %if.then.i248.i, %rtl_write_byte.exit239.i.rtl_write_byte.exit249.i_crit_edge
  %104 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %105(ptr noundef %18, i32 noundef 1261, i8 noundef zeroext 2) #7
  %106 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i252.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %write_readback.i252.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %write_readback.i252.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i253.i = icmp eq i8 %109, 0
  br i1 %tobool.not.i253.i, label %rtl_write_byte.exit249.i.rtl_write_byte.exit257.i_crit_edge, label %if.then.i256.i

rtl_write_byte.exit249.i.rtl_write_byte.exit257.i_crit_edge: ; preds = %rtl_write_byte.exit249.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit257.i

if.then.i256.i:                                   ; preds = %rtl_write_byte.exit249.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i255.i = tail call zeroext i8 %111(ptr noundef %18, i32 noundef 1261) #7
  br label %rtl_write_byte.exit257.i

rtl_write_byte.exit257.i:                         ; preds = %if.then.i256.i, %rtl_write_byte.exit249.i.rtl_write_byte.exit257.i_crit_edge
  %write16_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 6
  %112 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %113(ptr noundef %18, i32 noundef 1264, i16 noundef zeroext -12816) #7
  %114 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i259.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %write_readback.i259.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %write_readback.i259.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i260.i = icmp eq i8 %117, 0
  br i1 %tobool.not.i260.i, label %rtl_write_byte.exit257.i.rtl_write_word.exit.i_crit_edge, label %if.then.i262.i

rtl_write_byte.exit257.i.rtl_write_word.exit.i_crit_edge: ; preds = %rtl_write_byte.exit257.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i

if.then.i262.i:                                   ; preds = %rtl_write_byte.exit257.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 10
  %118 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i261.i = tail call zeroext i16 %119(ptr noundef %18, i32 noundef 1264) #7
  br label %rtl_write_word.exit.i

rtl_write_word.exit.i:                            ; preds = %if.then.i262.i, %rtl_write_byte.exit257.i.rtl_write_word.exit.i_crit_edge
  %120 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i264.i = tail call zeroext i8 %121(ptr noundef %18, i32 noundef 8) #7
  %122 = or i8 %call.i264.i, 8
  %123 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %124(ptr noundef %18, i32 noundef 8, i8 noundef zeroext %122) #7
  %125 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i267.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %write_readback.i267.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %write_readback.i267.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool.not.i268.i = icmp eq i8 %128, 0
  br i1 %tobool.not.i268.i, label %rtl_write_word.exit.i.rtl_write_byte.exit272.i_crit_edge, label %if.then.i271.i

rtl_write_word.exit.i.rtl_write_byte.exit272.i_crit_edge: ; preds = %rtl_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit272.i

if.then.i271.i:                                   ; preds = %rtl_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %129 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i270.i = tail call zeroext i8 %130(ptr noundef %18, i32 noundef 8) #7
  br label %rtl_write_byte.exit272.i

rtl_write_byte.exit272.i:                         ; preds = %if.then.i271.i, %rtl_write_word.exit.i.rtl_write_byte.exit272.i_crit_edge
  %131 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i274.i = tail call zeroext i8 %132(ptr noundef %18, i32 noundef 65) #7
  %133 = and i8 %call.i274.i, -17
  %134 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %135(ptr noundef %18, i32 noundef 65, i8 noundef zeroext %133) #7
  %136 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i277.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %write_readback.i277.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %write_readback.i277.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i278.i = icmp eq i8 %139, 0
  br i1 %tobool.not.i278.i, label %rtl_write_byte.exit272.i.rtl_write_byte.exit282.i_crit_edge, label %if.then.i281.i

rtl_write_byte.exit272.i.rtl_write_byte.exit282.i_crit_edge: ; preds = %rtl_write_byte.exit272.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit282.i

if.then.i281.i:                                   ; preds = %rtl_write_byte.exit272.i
  call void @__sanitizer_cov_trace_pc() #9
  %140 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i280.i = tail call zeroext i8 %141(ptr noundef %18, i32 noundef 65) #7
  br label %rtl_write_byte.exit282.i

rtl_write_byte.exit282.i:                         ; preds = %if.then.i281.i, %rtl_write_byte.exit272.i.rtl_write_byte.exit282.i_crit_edge
  %142 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %143(ptr noundef %18, i32 noundef 871, i8 noundef zeroext -128) #7
  %144 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i285.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %write_readback.i285.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %write_readback.i285.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool.not.i286.i = icmp eq i8 %147, 0
  br i1 %tobool.not.i286.i, label %rtl_write_byte.exit282.i.rtl_write_byte.exit290.i_crit_edge, label %if.then.i289.i

rtl_write_byte.exit282.i.rtl_write_byte.exit290.i_crit_edge: ; preds = %rtl_write_byte.exit282.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit290.i

if.then.i289.i:                                   ; preds = %rtl_write_byte.exit282.i
  call void @__sanitizer_cov_trace_pc() #9
  %148 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i288.i = tail call zeroext i8 %149(ptr noundef %18, i32 noundef 871) #7
  br label %rtl_write_byte.exit290.i

rtl_write_byte.exit290.i:                         ; preds = %if.then.i289.i, %rtl_write_byte.exit282.i.rtl_write_byte.exit290.i_crit_edge
  %150 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %151(ptr noundef %18, i32 noundef 256, i16 noundef zeroext 767) #7
  %152 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i293.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %write_readback.i293.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %write_readback.i293.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i294.i = icmp eq i8 %155, 0
  br i1 %tobool.not.i294.i, label %rtl_write_byte.exit290.i.rtl_write_word.exit298.i_crit_edge, label %if.then.i297.i

rtl_write_byte.exit290.i.rtl_write_word.exit298.i_crit_edge: ; preds = %rtl_write_byte.exit290.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit298.i

if.then.i297.i:                                   ; preds = %rtl_write_byte.exit290.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i295.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 10
  %156 = ptrtoint ptr %read16_sync.i295.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %read16_sync.i295.i, align 4
  %call.i296.i = tail call zeroext i16 %157(ptr noundef %18, i32 noundef 256) #7
  br label %rtl_write_word.exit298.i

rtl_write_word.exit298.i:                         ; preds = %if.then.i297.i, %rtl_write_byte.exit290.i.rtl_write_word.exit298.i_crit_edge
  %158 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %159(ptr noundef %18, i32 noundef 257, i8 noundef zeroext 6) #7
  %160 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i301.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %write_readback.i301.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %write_readback.i301.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool.not.i302.i = icmp eq i8 %163, 0
  br i1 %tobool.not.i302.i, label %rtl_write_word.exit298.i.rtl_write_byte.exit306.i_crit_edge, label %if.then.i305.i

rtl_write_word.exit298.i.rtl_write_byte.exit306.i_crit_edge: ; preds = %rtl_write_word.exit298.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit306.i

if.then.i305.i:                                   ; preds = %rtl_write_word.exit298.i
  call void @__sanitizer_cov_trace_pc() #9
  %164 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i304.i = tail call zeroext i8 %165(ptr noundef %18, i32 noundef 257) #7
  br label %rtl_write_byte.exit306.i

rtl_write_byte.exit306.i:                         ; preds = %if.then.i305.i, %rtl_write_word.exit298.i.rtl_write_byte.exit306.i_crit_edge
  %166 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %167(ptr noundef %18, i32 noundef 258, i8 noundef zeroext 0) #7
  %168 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i309.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %write_readback.i309.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %write_readback.i309.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool.not.i310.i = icmp eq i8 %171, 0
  br i1 %tobool.not.i310.i, label %rtl_write_byte.exit306.i.rtl_write_byte.exit314.i_crit_edge, label %if.then.i313.i

rtl_write_byte.exit306.i.rtl_write_byte.exit314.i_crit_edge: ; preds = %rtl_write_byte.exit306.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit314.i

if.then.i313.i:                                   ; preds = %rtl_write_byte.exit306.i
  call void @__sanitizer_cov_trace_pc() #9
  %172 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i312.i = tail call zeroext i8 %173(ptr noundef %18, i32 noundef 258) #7
  br label %rtl_write_byte.exit314.i

rtl_write_byte.exit314.i:                         ; preds = %if.then.i313.i, %rtl_write_byte.exit306.i.rtl_write_byte.exit314.i_crit_edge
  %mac_func_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 10, i32 6
  %174 = ptrtoint ptr %mac_func_enable.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %mac_func_enable.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool.not.i = icmp eq i8 %175, 0
  br i1 %tobool.not.i, label %if.then39.i, label %rtl_write_byte.exit314.i.if.end43.i_crit_edge

rtl_write_byte.exit314.i.if.end43.i_crit_edge:    ; preds = %rtl_write_byte.exit314.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.then39.i:                                      ; preds = %rtl_write_byte.exit314.i
  %176 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %priv, align 8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %177, i32 0, i32 13, i32 5
  %178 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %179(ptr noundef %177, i32 noundef 532, i8 noundef zeroext 1) #7
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %177, i32 0, i32 32
  %180 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %write_readback.i.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool.not.i.i.i = icmp eq i8 %183, 0
  br i1 %tobool.not.i.i.i, label %if.then39.i.rtl_write_byte.exit.i.i_crit_edge, label %if.then.i.i.i

if.then39.i.rtl_write_byte.exit.i.i_crit_edge:    ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %177, i32 0, i32 13, i32 9
  %184 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %185(ptr noundef %177, i32 noundef 532) #7
  br label %rtl_write_byte.exit.i.i

rtl_write_byte.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then39.i.rtl_write_byte.exit.i.i_crit_edge
  %write32_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %177, i32 0, i32 13, i32 7
  %186 = ptrtoint ptr %write32_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %write32_async.i.i.i, align 4
  tail call void %187(ptr noundef %177, i32 noundef 512, i32 noundef -2139943639) #7
  %188 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i82.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %write_readback.i82.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %write_readback.i82.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool.not.i83.i.i = icmp eq i8 %191, 0
  br i1 %tobool.not.i83.i.i, label %rtl_write_byte.exit.i.i.rtl_write_dword.exit.i.i_crit_edge, label %if.then.i85.i.i

rtl_write_byte.exit.i.i.rtl_write_dword.exit.i.i_crit_edge: ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i.i

if.then.i85.i.i:                                  ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %177, i32 0, i32 13, i32 11
  %192 = ptrtoint ptr %read32_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %read32_sync.i.i.i, align 4
  %call.i84.i.i = tail call i32 %193(ptr noundef %177, i32 noundef 512) #7
  br label %rtl_write_dword.exit.i.i

rtl_write_dword.exit.i.i:                         ; preds = %if.then.i85.i.i, %rtl_write_byte.exit.i.i.rtl_write_dword.exit.i.i_crit_edge
  %194 = ptrtoint ptr %write32_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %write32_async.i.i.i, align 4
  tail call void %195(ptr noundef %177, i32 noundef 276, i32 noundef 637468843) #7
  %196 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i88.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %write_readback.i88.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %write_readback.i88.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool.not.i89.i.i = icmp eq i8 %199, 0
  br i1 %tobool.not.i89.i.i, label %rtl_write_dword.exit.i.i.rtl_write_dword.exit93.i.i_crit_edge, label %if.then.i92.i.i

rtl_write_dword.exit.i.i.rtl_write_dword.exit93.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit93.i.i

if.then.i92.i.i:                                  ; preds = %rtl_write_dword.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i90.i.i = getelementptr inbounds %struct.rtl_priv, ptr %177, i32 0, i32 13, i32 11
  %200 = ptrtoint ptr %read32_sync.i90.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %read32_sync.i90.i.i, align 4
  %call.i91.i.i = tail call i32 %201(ptr noundef %177, i32 noundef 276) #7
  br label %rtl_write_dword.exit93.i.i

rtl_write_dword.exit93.i.i:                       ; preds = %if.then.i92.i.i, %rtl_write_dword.exit.i.i.rtl_write_dword.exit93.i.i_crit_edge
  %202 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %203(ptr noundef %177, i32 noundef 521, i8 noundef zeroext -85) #7
  %204 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i96.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %write_readback.i96.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %write_readback.i96.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool.not.i97.i.i = icmp eq i8 %207, 0
  br i1 %tobool.not.i97.i.i, label %rtl_write_dword.exit93.i.i.rtl_write_byte.exit101.i.i_crit_edge, label %if.then.i100.i.i

rtl_write_dword.exit93.i.i.rtl_write_byte.exit101.i.i_crit_edge: ; preds = %rtl_write_dword.exit93.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit101.i.i

if.then.i100.i.i:                                 ; preds = %rtl_write_dword.exit93.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i98.i.i = getelementptr inbounds %struct.rtl_priv, ptr %177, i32 0, i32 13, i32 9
  %208 = ptrtoint ptr %read8_sync.i98.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %read8_sync.i98.i.i, align 4
  %call.i99.i.i = tail call zeroext i8 %209(ptr noundef %177, i32 noundef 521) #7
  br label %rtl_write_byte.exit101.i.i

rtl_write_byte.exit101.i.i:                       ; preds = %if.then.i100.i.i, %rtl_write_dword.exit93.i.i.rtl_write_byte.exit101.i.i_crit_edge
  %210 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %211(ptr noundef %177, i32 noundef 1060, i8 noundef zeroext -85) #7
  %212 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i104.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %213, i32 0, i32 1
  %214 = ptrtoint ptr %write_readback.i104.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %write_readback.i104.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %tobool.not.i105.i.i = icmp eq i8 %215, 0
  br i1 %tobool.not.i105.i.i, label %rtl_write_byte.exit101.i.i.rtl_write_byte.exit109.i.i_crit_edge, label %if.then.i108.i.i

rtl_write_byte.exit101.i.i.rtl_write_byte.exit109.i.i_crit_edge: ; preds = %rtl_write_byte.exit101.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit109.i.i

if.then.i108.i.i:                                 ; preds = %rtl_write_byte.exit101.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i106.i.i = getelementptr inbounds %struct.rtl_priv, ptr %177, i32 0, i32 13, i32 9
  %216 = ptrtoint ptr %read8_sync.i106.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %read8_sync.i106.i.i, align 4
  %call.i107.i.i = tail call zeroext i8 %217(ptr noundef %177, i32 noundef 1060) #7
  br label %rtl_write_byte.exit109.i.i

rtl_write_byte.exit109.i.i:                       ; preds = %if.then.i108.i.i, %rtl_write_byte.exit101.i.i.rtl_write_byte.exit109.i.i_crit_edge
  %218 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %219(ptr noundef %177, i32 noundef 1061, i8 noundef zeroext -85) #7
  %220 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i112.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %write_readback.i112.i.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %write_readback.i112.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool.not.i113.i.i = icmp eq i8 %223, 0
  br i1 %tobool.not.i113.i.i, label %rtl_write_byte.exit109.i.i.rtl_write_byte.exit117.i.i_crit_edge, label %if.then.i116.i.i

rtl_write_byte.exit109.i.i.rtl_write_byte.exit117.i.i_crit_edge: ; preds = %rtl_write_byte.exit109.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit117.i.i

if.then.i116.i.i:                                 ; preds = %rtl_write_byte.exit109.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i114.i.i = getelementptr inbounds %struct.rtl_priv, ptr %177, i32 0, i32 13, i32 9
  %224 = ptrtoint ptr %read8_sync.i114.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %read8_sync.i114.i.i, align 4
  %call.i115.i.i = tail call zeroext i8 %225(ptr noundef %177, i32 noundef 1061) #7
  br label %rtl_write_byte.exit117.i.i

rtl_write_byte.exit117.i.i:                       ; preds = %if.then.i116.i.i, %rtl_write_byte.exit109.i.i.rtl_write_byte.exit117.i.i_crit_edge
  %226 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %227(ptr noundef %177, i32 noundef 1117, i8 noundef zeroext -85) #7
  %228 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i120.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %write_readback.i120.i.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %write_readback.i120.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool.not.i121.i.i = icmp eq i8 %231, 0
  br i1 %tobool.not.i121.i.i, label %rtl_write_byte.exit117.i.i.rtl_write_byte.exit125.i.i_crit_edge, label %if.then.i124.i.i

rtl_write_byte.exit117.i.i.rtl_write_byte.exit125.i.i_crit_edge: ; preds = %rtl_write_byte.exit117.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit125.i.i

if.then.i124.i.i:                                 ; preds = %rtl_write_byte.exit117.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i122.i.i = getelementptr inbounds %struct.rtl_priv, ptr %177, i32 0, i32 13, i32 9
  %232 = ptrtoint ptr %read8_sync.i122.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %read8_sync.i122.i.i, align 4
  %call.i123.i.i = tail call zeroext i8 %233(ptr noundef %177, i32 noundef 1117) #7
  br label %rtl_write_byte.exit125.i.i

rtl_write_byte.exit125.i.i:                       ; preds = %if.then.i124.i.i, %rtl_write_byte.exit117.i.i.rtl_write_byte.exit125.i.i_crit_edge
  %234 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %235(ptr noundef %177, i32 noundef 260, i8 noundef zeroext 17) #7
  %236 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i128.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %237, i32 0, i32 1
  %238 = ptrtoint ptr %write_readback.i128.i.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %write_readback.i128.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool.not.i129.i.i = icmp eq i8 %239, 0
  br i1 %tobool.not.i129.i.i, label %rtl_write_byte.exit125.i.i.rtl_write_byte.exit133.i.i_crit_edge, label %if.then.i132.i.i

rtl_write_byte.exit125.i.i.rtl_write_byte.exit133.i.i_crit_edge: ; preds = %rtl_write_byte.exit125.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit133.i.i

if.then.i132.i.i:                                 ; preds = %rtl_write_byte.exit125.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i130.i.i = getelementptr inbounds %struct.rtl_priv, ptr %177, i32 0, i32 13, i32 9
  %240 = ptrtoint ptr %read8_sync.i130.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %read8_sync.i130.i.i, align 4
  %call.i131.i.i = tail call zeroext i8 %241(ptr noundef %177, i32 noundef 260) #7
  br label %rtl_write_byte.exit133.i.i

rtl_write_byte.exit133.i.i:                       ; preds = %if.then.i132.i.i, %rtl_write_byte.exit125.i.i.rtl_write_byte.exit133.i.i_crit_edge
  %242 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %243(ptr noundef %177, i32 noundef 1551, i8 noundef zeroext 4) #7
  %244 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i136.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %write_readback.i136.i.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %write_readback.i136.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %tobool.not.i137.i.i = icmp eq i8 %247, 0
  br i1 %tobool.not.i137.i.i, label %rtl_write_byte.exit133.i.i.for.body.i.i.preheader_crit_edge, label %if.then.i140.i.i

rtl_write_byte.exit133.i.i.for.body.i.i.preheader_crit_edge: ; preds = %rtl_write_byte.exit133.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.preheader

if.then.i140.i.i:                                 ; preds = %rtl_write_byte.exit133.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i138.i.i = getelementptr inbounds %struct.rtl_priv, ptr %177, i32 0, i32 13, i32 9
  %248 = ptrtoint ptr %read8_sync.i138.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %read8_sync.i138.i.i, align 4
  %call.i139.i.i = tail call zeroext i8 %249(ptr noundef %177, i32 noundef 1551) #7
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %if.then.i140.i.i, %rtl_write_byte.exit133.i.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %indvars.iv.i.i = phi i32 [ %add.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %add.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %250 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %priv, align 8
  %and.i.i.i = shl nuw nsw i32 %indvars.iv.i.i, 8
  %or.i.i.i = or i32 %add.i.i, %and.i.i.i
  %or2.i.i.i = or i32 %or.i.i.i, 1073741824
  %write32_async.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %251, i32 0, i32 13, i32 7
  %252 = ptrtoint ptr %write32_async.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %write32_async.i.i.i.i, align 4
  tail call void %253(ptr noundef %251, i32 noundef 480, i32 noundef %or2.i.i.i) #7
  %cfg.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %251, i32 0, i32 32
  %254 = ptrtoint ptr %cfg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %cfg.i.i.i.i, align 8
  %write_readback.i.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %255, i32 0, i32 1
  %256 = ptrtoint ptr %write_readback.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %write_readback.i.i.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool.not.i.i.i.i = icmp eq i8 %257, 0
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.rtl_write_dword.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

for.body.i.i.rtl_write_dword.exit.i.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %251, i32 0, i32 13, i32 11
  %258 = ptrtoint ptr %read32_sync.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %read32_sync.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %259(ptr noundef %251, i32 noundef 480) #7
  br label %rtl_write_dword.exit.i.i.i

rtl_write_dword.exit.i.i.i:                       ; preds = %if.then.i.i.i.i, %for.body.i.i.rtl_write_dword.exit.i.i.i_crit_edge
  %read32_sync.i16.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %251, i32 0, i32 13, i32 11
  %260 = ptrtoint ptr %read32_sync.i16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %read32_sync.i16.i.i.i, align 4
  %call.i1718.i.i.i = tail call i32 %261(ptr noundef %251, i32 noundef 480) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i.i.i)
  %cmp19.i.i.i = icmp ult i32 %call.i1718.i.i.i, 1073741824
  br i1 %cmp19.i.i.i, label %rtl_write_dword.exit.i.i.i.for.inc.i.i_crit_edge, label %rtl_write_dword.exit.i.i.i.if.end.i.i.i_crit_edge

rtl_write_dword.exit.i.i.i.if.end.i.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i.i.i
  br label %if.end.i.i.i

rtl_write_dword.exit.i.i.i.for.inc.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i.i
  %inc.i.i.i = add nuw nsw i32 %count.020.i.i.i, 1
  %262 = ptrtoint ptr %read32_sync.i16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %read32_sync.i16.i.i.i, align 4
  %call.i17.i.i.i = tail call i32 %263(ptr noundef %251, i32 noundef 480) #7
  %cmp.i.i.i = icmp ult i32 %call.i17.i.i.i, 1073741824
  br i1 %cmp.i.i.i, label %do.body.i.i.i.for.inc.i.i_crit_edge, label %do.body.i.i.i.if.end.i.i.i_crit_edge

do.body.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

do.body.i.i.i.for.inc.i.i_crit_edge:              ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i.i.i:                                     ; preds = %do.body.i.i.i.if.end.i.i.i_crit_edge, %rtl_write_dword.exit.i.i.i.if.end.i.i.i_crit_edge
  %count.020.i.i.i = phi i32 [ %inc.i.i.i, %do.body.i.i.i.if.end.i.i.i_crit_edge ], [ 0, %rtl_write_dword.exit.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i.i.i)
  %exitcond.i.i.i = icmp eq i32 %count.020.i.i.i, 21
  br i1 %exitcond.i.i.i, label %if.end.i.i.i.if.then41.i_crit_edge, label %do.body.i.i.i

if.end.i.i.i.if.then41.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41.i

for.inc.i.i:                                      ; preds = %do.body.i.i.i.for.inc.i.i_crit_edge, %rtl_write_dword.exit.i.i.i.for.inc.i.i_crit_edge
  %exitcond.not.i.i = icmp eq i32 %add.i.i, 170
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %264 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %priv, align 8
  %write32_async.i.i143.i.i = getelementptr inbounds %struct.rtl_priv, ptr %265, i32 0, i32 13, i32 7
  %266 = ptrtoint ptr %write32_async.i.i143.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %write32_async.i.i143.i.i, align 4
  tail call void %267(ptr noundef %265, i32 noundef 480, i32 noundef 1073785599) #7
  %cfg.i.i144.i.i = getelementptr inbounds %struct.rtl_priv, ptr %265, i32 0, i32 32
  %268 = ptrtoint ptr %cfg.i.i144.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %cfg.i.i144.i.i, align 8
  %write_readback.i.i145.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %269, i32 0, i32 1
  %270 = ptrtoint ptr %write_readback.i.i145.i.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %write_readback.i.i145.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool.not.i.i146.i.i = icmp eq i8 %271, 0
  br i1 %tobool.not.i.i146.i.i, label %for.end.i.i.rtl_write_dword.exit.i153.i.i_crit_edge, label %if.then.i.i149.i.i

for.end.i.i.rtl_write_dword.exit.i153.i.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i153.i.i

if.then.i.i149.i.i:                               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i147.i.i = getelementptr inbounds %struct.rtl_priv, ptr %265, i32 0, i32 13, i32 11
  %272 = ptrtoint ptr %read32_sync.i.i147.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %read32_sync.i.i147.i.i, align 4
  %call.i.i148.i.i = tail call i32 %273(ptr noundef %265, i32 noundef 480) #7
  br label %rtl_write_dword.exit.i153.i.i

rtl_write_dword.exit.i153.i.i:                    ; preds = %if.then.i.i149.i.i, %for.end.i.i.rtl_write_dword.exit.i153.i.i_crit_edge
  %read32_sync.i16.i150.i.i = getelementptr inbounds %struct.rtl_priv, ptr %265, i32 0, i32 13, i32 11
  %274 = ptrtoint ptr %read32_sync.i16.i150.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %read32_sync.i16.i150.i.i, align 4
  %call.i1718.i151.i.i = tail call i32 %275(ptr noundef %265, i32 noundef 480) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i151.i.i)
  %cmp19.i152.i.i = icmp ult i32 %call.i1718.i151.i.i, 1073741824
  br i1 %cmp19.i152.i.i, label %rtl_write_dword.exit.i153.i.i._rtl88ee_llt_write.exit164.i.i_crit_edge, label %rtl_write_dword.exit.i153.i.i.if.end.i160.i.i_crit_edge

rtl_write_dword.exit.i153.i.i.if.end.i160.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i153.i.i
  br label %if.end.i160.i.i

rtl_write_dword.exit.i153.i.i._rtl88ee_llt_write.exit164.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i153.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_llt_write.exit164.i.i

do.body.i157.i.i:                                 ; preds = %if.end.i160.i.i
  %inc.i154.i.i = add nuw nsw i32 %count.020.i158.i.i, 1
  %276 = ptrtoint ptr %read32_sync.i16.i150.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %read32_sync.i16.i150.i.i, align 4
  %call.i17.i155.i.i = tail call i32 %277(ptr noundef %265, i32 noundef 480) #7
  %cmp.i156.i.i = icmp ult i32 %call.i17.i155.i.i, 1073741824
  br i1 %cmp.i156.i.i, label %do.body.i157.i.i._rtl88ee_llt_write.exit164.i.i_crit_edge, label %do.body.i157.i.i.if.end.i160.i.i_crit_edge

do.body.i157.i.i.if.end.i160.i.i_crit_edge:       ; preds = %do.body.i157.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i160.i.i

do.body.i157.i.i._rtl88ee_llt_write.exit164.i.i_crit_edge: ; preds = %do.body.i157.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_llt_write.exit164.i.i

if.end.i160.i.i:                                  ; preds = %do.body.i157.i.i.if.end.i160.i.i_crit_edge, %rtl_write_dword.exit.i153.i.i.if.end.i160.i.i_crit_edge
  %count.020.i158.i.i = phi i32 [ %inc.i154.i.i, %do.body.i157.i.i.if.end.i160.i.i_crit_edge ], [ 0, %rtl_write_dword.exit.i153.i.i.if.end.i160.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i158.i.i)
  %exitcond.i159.i.i = icmp eq i32 %count.020.i158.i.i, 21
  br i1 %exitcond.i159.i.i, label %if.end.i160.i.i.if.then41.i_crit_edge, label %do.body.i157.i.i

if.end.i160.i.i.if.then41.i_crit_edge:            ; preds = %if.end.i160.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41.i

_rtl88ee_llt_write.exit164.i.i:                   ; preds = %do.body.i157.i.i._rtl88ee_llt_write.exit164.i.i_crit_edge, %rtl_write_dword.exit.i153.i.i._rtl88ee_llt_write.exit164.i.i_crit_edge
  %278 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %priv, align 8
  %write32_async.i.i171.i.i = getelementptr inbounds %struct.rtl_priv, ptr %279, i32 0, i32 13, i32 7
  %280 = ptrtoint ptr %write32_async.i.i171.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %write32_async.i.i171.i.i, align 4
  tail call void %281(ptr noundef %279, i32 noundef 480, i32 noundef 1073785772) #7
  %cfg.i.i172.i.i = getelementptr inbounds %struct.rtl_priv, ptr %279, i32 0, i32 32
  %282 = ptrtoint ptr %cfg.i.i172.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %cfg.i.i172.i.i, align 8
  %write_readback.i.i173.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %283, i32 0, i32 1
  %284 = ptrtoint ptr %write_readback.i.i173.i.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %write_readback.i.i173.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %285)
  %tobool.not.i.i174.i.i = icmp eq i8 %285, 0
  br i1 %tobool.not.i.i174.i.i, label %_rtl88ee_llt_write.exit164.i.i.rtl_write_dword.exit.i181.i.i_crit_edge, label %if.then.i.i177.i.i

_rtl88ee_llt_write.exit164.i.i.rtl_write_dword.exit.i181.i.i_crit_edge: ; preds = %_rtl88ee_llt_write.exit164.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i181.i.i

if.then.i.i177.i.i:                               ; preds = %_rtl88ee_llt_write.exit164.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i175.i.i = getelementptr inbounds %struct.rtl_priv, ptr %279, i32 0, i32 13, i32 11
  %286 = ptrtoint ptr %read32_sync.i.i175.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %read32_sync.i.i175.i.i, align 4
  %call.i.i176.i.i = tail call i32 %287(ptr noundef %279, i32 noundef 480) #7
  br label %rtl_write_dword.exit.i181.i.i

rtl_write_dword.exit.i181.i.i:                    ; preds = %if.then.i.i177.i.i, %_rtl88ee_llt_write.exit164.i.i.rtl_write_dword.exit.i181.i.i_crit_edge
  %read32_sync.i16.i178.i.i = getelementptr inbounds %struct.rtl_priv, ptr %279, i32 0, i32 13, i32 11
  %288 = ptrtoint ptr %read32_sync.i16.i178.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %read32_sync.i16.i178.i.i, align 4
  %call.i1718.i179.i.i = tail call i32 %289(ptr noundef %279, i32 noundef 480) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i179.i.i)
  %cmp19.i180.i.i = icmp ult i32 %call.i1718.i179.i.i, 1073741824
  br i1 %cmp19.i180.i.i, label %rtl_write_dword.exit.i181.i.i.for.inc31.i.i_crit_edge, label %rtl_write_dword.exit.i181.i.i.if.end.i188.i.i_crit_edge

rtl_write_dword.exit.i181.i.i.if.end.i188.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i181.i.i
  br label %if.end.i188.i.i

rtl_write_dword.exit.i181.i.i.for.inc31.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i181.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc31.i.i

do.body.i185.i.i:                                 ; preds = %if.end.i188.i.i
  %inc.i182.i.i = add nuw nsw i32 %count.020.i186.i.i, 1
  %290 = ptrtoint ptr %read32_sync.i16.i178.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %read32_sync.i16.i178.i.i, align 4
  %call.i17.i183.i.i = tail call i32 %291(ptr noundef %279, i32 noundef 480) #7
  %cmp.i184.i.i = icmp ult i32 %call.i17.i183.i.i, 1073741824
  br i1 %cmp.i184.i.i, label %do.body.i185.i.i.for.inc31.i.i_crit_edge, label %do.body.i185.i.i.if.end.i188.i.i_crit_edge

do.body.i185.i.i.if.end.i188.i.i_crit_edge:       ; preds = %do.body.i185.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i188.i.i

do.body.i185.i.i.for.inc31.i.i_crit_edge:         ; preds = %do.body.i185.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc31.i.i

if.end.i188.i.i:                                  ; preds = %do.body.i185.i.i.if.end.i188.i.i_crit_edge, %rtl_write_dword.exit.i181.i.i.if.end.i188.i.i_crit_edge
  %count.020.i186.i.i = phi i32 [ %inc.i182.i.i, %do.body.i185.i.i.if.end.i188.i.i_crit_edge ], [ 0, %rtl_write_dword.exit.i181.i.i.if.end.i188.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i186.i.i)
  %exitcond.i187.i.i = icmp eq i32 %count.020.i186.i.i, 21
  br i1 %exitcond.i187.i.i, label %if.end.i188.i.i.if.then41.i_crit_edge, label %do.body.i185.i.i

if.end.i188.i.i.if.then41.i_crit_edge:            ; preds = %if.end.i188.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41.i

for.inc31.i.i:                                    ; preds = %do.body.i185.i.i.for.inc31.i.i_crit_edge, %rtl_write_dword.exit.i181.i.i.for.inc31.i.i_crit_edge
  %292 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %priv, align 8
  %write32_async.i.i171.i.1.i = getelementptr inbounds %struct.rtl_priv, ptr %293, i32 0, i32 13, i32 7
  %294 = ptrtoint ptr %write32_async.i.i171.i.1.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %write32_async.i.i171.i.1.i, align 4
  tail call void %295(ptr noundef %293, i32 noundef 480, i32 noundef 1073786029) #7
  %cfg.i.i172.i.1.i = getelementptr inbounds %struct.rtl_priv, ptr %293, i32 0, i32 32
  %296 = ptrtoint ptr %cfg.i.i172.i.1.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %cfg.i.i172.i.1.i, align 8
  %write_readback.i.i173.i.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %297, i32 0, i32 1
  %298 = ptrtoint ptr %write_readback.i.i173.i.1.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %write_readback.i.i173.i.1.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %299)
  %tobool.not.i.i174.i.1.i = icmp eq i8 %299, 0
  br i1 %tobool.not.i.i174.i.1.i, label %for.inc31.i.i.rtl_write_dword.exit.i181.i.1.i_crit_edge, label %if.then.i.i177.i.1.i

for.inc31.i.i.rtl_write_dword.exit.i181.i.1.i_crit_edge: ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i181.i.1.i

if.then.i.i177.i.1.i:                             ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i175.i.1.i = getelementptr inbounds %struct.rtl_priv, ptr %293, i32 0, i32 13, i32 11
  %300 = ptrtoint ptr %read32_sync.i.i175.i.1.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %read32_sync.i.i175.i.1.i, align 4
  %call.i.i176.i.1.i = tail call i32 %301(ptr noundef %293, i32 noundef 480) #7
  br label %rtl_write_dword.exit.i181.i.1.i

rtl_write_dword.exit.i181.i.1.i:                  ; preds = %if.then.i.i177.i.1.i, %for.inc31.i.i.rtl_write_dword.exit.i181.i.1.i_crit_edge
  %read32_sync.i16.i178.i.1.i = getelementptr inbounds %struct.rtl_priv, ptr %293, i32 0, i32 13, i32 11
  %302 = ptrtoint ptr %read32_sync.i16.i178.i.1.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %read32_sync.i16.i178.i.1.i, align 4
  %call.i1718.i179.i.1.i = tail call i32 %303(ptr noundef %293, i32 noundef 480) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i179.i.1.i)
  %cmp19.i180.i.1.i = icmp ult i32 %call.i1718.i179.i.1.i, 1073741824
  br i1 %cmp19.i180.i.1.i, label %rtl_write_dword.exit.i181.i.1.i.for.inc31.i.1.i_crit_edge, label %rtl_write_dword.exit.i181.i.1.i.if.end.i188.i.1.i_crit_edge

rtl_write_dword.exit.i181.i.1.i.if.end.i188.i.1.i_crit_edge: ; preds = %rtl_write_dword.exit.i181.i.1.i
  br label %if.end.i188.i.1.i

rtl_write_dword.exit.i181.i.1.i.for.inc31.i.1.i_crit_edge: ; preds = %rtl_write_dword.exit.i181.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc31.i.1.i

if.end.i188.i.1.i:                                ; preds = %do.body.i185.i.1.i.if.end.i188.i.1.i_crit_edge, %rtl_write_dword.exit.i181.i.1.i.if.end.i188.i.1.i_crit_edge
  %count.020.i186.i.1.i = phi i32 [ %inc.i182.i.1.i, %do.body.i185.i.1.i.if.end.i188.i.1.i_crit_edge ], [ 0, %rtl_write_dword.exit.i181.i.1.i.if.end.i188.i.1.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i186.i.1.i)
  %exitcond.i187.i.1.i = icmp eq i32 %count.020.i186.i.1.i, 21
  br i1 %exitcond.i187.i.1.i, label %if.end.i188.i.1.i.if.then41.i_crit_edge, label %do.body.i185.i.1.i

if.end.i188.i.1.i.if.then41.i_crit_edge:          ; preds = %if.end.i188.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41.i

do.body.i185.i.1.i:                               ; preds = %if.end.i188.i.1.i
  %inc.i182.i.1.i = add nuw nsw i32 %count.020.i186.i.1.i, 1
  %304 = ptrtoint ptr %read32_sync.i16.i178.i.1.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %read32_sync.i16.i178.i.1.i, align 4
  %call.i17.i183.i.1.i = tail call i32 %305(ptr noundef %293, i32 noundef 480) #7
  %cmp.i184.i.1.i = icmp ult i32 %call.i17.i183.i.1.i, 1073741824
  br i1 %cmp.i184.i.1.i, label %do.body.i185.i.1.i.for.inc31.i.1.i_crit_edge, label %do.body.i185.i.1.i.if.end.i188.i.1.i_crit_edge

do.body.i185.i.1.i.if.end.i188.i.1.i_crit_edge:   ; preds = %do.body.i185.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i188.i.1.i

do.body.i185.i.1.i.for.inc31.i.1.i_crit_edge:     ; preds = %do.body.i185.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc31.i.1.i

for.inc31.i.1.i:                                  ; preds = %do.body.i185.i.1.i.for.inc31.i.1.i_crit_edge, %rtl_write_dword.exit.i181.i.1.i.for.inc31.i.1.i_crit_edge
  %306 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %priv, align 8
  %write32_async.i.i171.i.2.i = getelementptr inbounds %struct.rtl_priv, ptr %307, i32 0, i32 13, i32 7
  %308 = ptrtoint ptr %write32_async.i.i171.i.2.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %write32_async.i.i171.i.2.i, align 4
  tail call void %309(ptr noundef %307, i32 noundef 480, i32 noundef 1073786286) #7
  %cfg.i.i172.i.2.i = getelementptr inbounds %struct.rtl_priv, ptr %307, i32 0, i32 32
  %310 = ptrtoint ptr %cfg.i.i172.i.2.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %cfg.i.i172.i.2.i, align 8
  %write_readback.i.i173.i.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %311, i32 0, i32 1
  %312 = ptrtoint ptr %write_readback.i.i173.i.2.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %write_readback.i.i173.i.2.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %313)
  %tobool.not.i.i174.i.2.i = icmp eq i8 %313, 0
  br i1 %tobool.not.i.i174.i.2.i, label %for.inc31.i.1.i.rtl_write_dword.exit.i181.i.2.i_crit_edge, label %if.then.i.i177.i.2.i

for.inc31.i.1.i.rtl_write_dword.exit.i181.i.2.i_crit_edge: ; preds = %for.inc31.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i181.i.2.i

if.then.i.i177.i.2.i:                             ; preds = %for.inc31.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i175.i.2.i = getelementptr inbounds %struct.rtl_priv, ptr %307, i32 0, i32 13, i32 11
  %314 = ptrtoint ptr %read32_sync.i.i175.i.2.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %read32_sync.i.i175.i.2.i, align 4
  %call.i.i176.i.2.i = tail call i32 %315(ptr noundef %307, i32 noundef 480) #7
  br label %rtl_write_dword.exit.i181.i.2.i

rtl_write_dword.exit.i181.i.2.i:                  ; preds = %if.then.i.i177.i.2.i, %for.inc31.i.1.i.rtl_write_dword.exit.i181.i.2.i_crit_edge
  %read32_sync.i16.i178.i.2.i = getelementptr inbounds %struct.rtl_priv, ptr %307, i32 0, i32 13, i32 11
  %316 = ptrtoint ptr %read32_sync.i16.i178.i.2.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %read32_sync.i16.i178.i.2.i, align 4
  %call.i1718.i179.i.2.i = tail call i32 %317(ptr noundef %307, i32 noundef 480) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i179.i.2.i)
  %cmp19.i180.i.2.i = icmp ult i32 %call.i1718.i179.i.2.i, 1073741824
  br i1 %cmp19.i180.i.2.i, label %rtl_write_dword.exit.i181.i.2.i.for.inc31.i.2.i_crit_edge, label %rtl_write_dword.exit.i181.i.2.i.if.end.i188.i.2.i_crit_edge

rtl_write_dword.exit.i181.i.2.i.if.end.i188.i.2.i_crit_edge: ; preds = %rtl_write_dword.exit.i181.i.2.i
  br label %if.end.i188.i.2.i

rtl_write_dword.exit.i181.i.2.i.for.inc31.i.2.i_crit_edge: ; preds = %rtl_write_dword.exit.i181.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc31.i.2.i

if.end.i188.i.2.i:                                ; preds = %do.body.i185.i.2.i.if.end.i188.i.2.i_crit_edge, %rtl_write_dword.exit.i181.i.2.i.if.end.i188.i.2.i_crit_edge
  %count.020.i186.i.2.i = phi i32 [ %inc.i182.i.2.i, %do.body.i185.i.2.i.if.end.i188.i.2.i_crit_edge ], [ 0, %rtl_write_dword.exit.i181.i.2.i.if.end.i188.i.2.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i186.i.2.i)
  %exitcond.i187.i.2.i = icmp eq i32 %count.020.i186.i.2.i, 21
  br i1 %exitcond.i187.i.2.i, label %if.end.i188.i.2.i.if.then41.i_crit_edge, label %do.body.i185.i.2.i

if.end.i188.i.2.i.if.then41.i_crit_edge:          ; preds = %if.end.i188.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41.i

do.body.i185.i.2.i:                               ; preds = %if.end.i188.i.2.i
  %inc.i182.i.2.i = add nuw nsw i32 %count.020.i186.i.2.i, 1
  %318 = ptrtoint ptr %read32_sync.i16.i178.i.2.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %read32_sync.i16.i178.i.2.i, align 4
  %call.i17.i183.i.2.i = tail call i32 %319(ptr noundef %307, i32 noundef 480) #7
  %cmp.i184.i.2.i = icmp ult i32 %call.i17.i183.i.2.i, 1073741824
  br i1 %cmp.i184.i.2.i, label %do.body.i185.i.2.i.for.inc31.i.2.i_crit_edge, label %do.body.i185.i.2.i.if.end.i188.i.2.i_crit_edge

do.body.i185.i.2.i.if.end.i188.i.2.i_crit_edge:   ; preds = %do.body.i185.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i188.i.2.i

do.body.i185.i.2.i.for.inc31.i.2.i_crit_edge:     ; preds = %do.body.i185.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc31.i.2.i

for.inc31.i.2.i:                                  ; preds = %do.body.i185.i.2.i.for.inc31.i.2.i_crit_edge, %rtl_write_dword.exit.i181.i.2.i.for.inc31.i.2.i_crit_edge
  %320 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %priv, align 8
  %write32_async.i.i171.i.3.i = getelementptr inbounds %struct.rtl_priv, ptr %321, i32 0, i32 13, i32 7
  %322 = ptrtoint ptr %write32_async.i.i171.i.3.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %write32_async.i.i171.i.3.i, align 4
  tail call void %323(ptr noundef %321, i32 noundef 480, i32 noundef 1073786543) #7
  %cfg.i.i172.i.3.i = getelementptr inbounds %struct.rtl_priv, ptr %321, i32 0, i32 32
  %324 = ptrtoint ptr %cfg.i.i172.i.3.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %cfg.i.i172.i.3.i, align 8
  %write_readback.i.i173.i.3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %325, i32 0, i32 1
  %326 = ptrtoint ptr %write_readback.i.i173.i.3.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %write_readback.i.i173.i.3.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %327)
  %tobool.not.i.i174.i.3.i = icmp eq i8 %327, 0
  br i1 %tobool.not.i.i174.i.3.i, label %for.inc31.i.2.i.rtl_write_dword.exit.i181.i.3.i_crit_edge, label %if.then.i.i177.i.3.i

for.inc31.i.2.i.rtl_write_dword.exit.i181.i.3.i_crit_edge: ; preds = %for.inc31.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i181.i.3.i

if.then.i.i177.i.3.i:                             ; preds = %for.inc31.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i175.i.3.i = getelementptr inbounds %struct.rtl_priv, ptr %321, i32 0, i32 13, i32 11
  %328 = ptrtoint ptr %read32_sync.i.i175.i.3.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %read32_sync.i.i175.i.3.i, align 4
  %call.i.i176.i.3.i = tail call i32 %329(ptr noundef %321, i32 noundef 480) #7
  br label %rtl_write_dword.exit.i181.i.3.i

rtl_write_dword.exit.i181.i.3.i:                  ; preds = %if.then.i.i177.i.3.i, %for.inc31.i.2.i.rtl_write_dword.exit.i181.i.3.i_crit_edge
  %read32_sync.i16.i178.i.3.i = getelementptr inbounds %struct.rtl_priv, ptr %321, i32 0, i32 13, i32 11
  %330 = ptrtoint ptr %read32_sync.i16.i178.i.3.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %read32_sync.i16.i178.i.3.i, align 4
  %call.i1718.i179.i.3.i = tail call i32 %331(ptr noundef %321, i32 noundef 480) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i179.i.3.i)
  %cmp19.i180.i.3.i = icmp ult i32 %call.i1718.i179.i.3.i, 1073741824
  br i1 %cmp19.i180.i.3.i, label %rtl_write_dword.exit.i181.i.3.i.for.inc31.i.3.i_crit_edge, label %rtl_write_dword.exit.i181.i.3.i.if.end.i188.i.3.i_crit_edge

rtl_write_dword.exit.i181.i.3.i.if.end.i188.i.3.i_crit_edge: ; preds = %rtl_write_dword.exit.i181.i.3.i
  br label %if.end.i188.i.3.i

rtl_write_dword.exit.i181.i.3.i.for.inc31.i.3.i_crit_edge: ; preds = %rtl_write_dword.exit.i181.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc31.i.3.i

if.end.i188.i.3.i:                                ; preds = %do.body.i185.i.3.i.if.end.i188.i.3.i_crit_edge, %rtl_write_dword.exit.i181.i.3.i.if.end.i188.i.3.i_crit_edge
  %count.020.i186.i.3.i = phi i32 [ %inc.i182.i.3.i, %do.body.i185.i.3.i.if.end.i188.i.3.i_crit_edge ], [ 0, %rtl_write_dword.exit.i181.i.3.i.if.end.i188.i.3.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i186.i.3.i)
  %exitcond.i187.i.3.i = icmp eq i32 %count.020.i186.i.3.i, 21
  br i1 %exitcond.i187.i.3.i, label %if.end.i188.i.3.i.if.then41.i_crit_edge, label %do.body.i185.i.3.i

if.end.i188.i.3.i.if.then41.i_crit_edge:          ; preds = %if.end.i188.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41.i

do.body.i185.i.3.i:                               ; preds = %if.end.i188.i.3.i
  %inc.i182.i.3.i = add nuw nsw i32 %count.020.i186.i.3.i, 1
  %332 = ptrtoint ptr %read32_sync.i16.i178.i.3.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %read32_sync.i16.i178.i.3.i, align 4
  %call.i17.i183.i.3.i = tail call i32 %333(ptr noundef %321, i32 noundef 480) #7
  %cmp.i184.i.3.i = icmp ult i32 %call.i17.i183.i.3.i, 1073741824
  br i1 %cmp.i184.i.3.i, label %do.body.i185.i.3.i.for.inc31.i.3.i_crit_edge, label %do.body.i185.i.3.i.if.end.i188.i.3.i_crit_edge

do.body.i185.i.3.i.if.end.i188.i.3.i_crit_edge:   ; preds = %do.body.i185.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i188.i.3.i

do.body.i185.i.3.i.for.inc31.i.3.i_crit_edge:     ; preds = %do.body.i185.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc31.i.3.i

for.inc31.i.3.i:                                  ; preds = %do.body.i185.i.3.i.for.inc31.i.3.i_crit_edge, %rtl_write_dword.exit.i181.i.3.i.for.inc31.i.3.i_crit_edge
  %334 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %priv, align 8
  %write32_async.i.i194.i.i = getelementptr inbounds %struct.rtl_priv, ptr %335, i32 0, i32 13, i32 7
  %336 = ptrtoint ptr %write32_async.i.i194.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %write32_async.i.i194.i.i, align 4
  tail call void %337(ptr noundef %335, i32 noundef 480, i32 noundef 1073786795) #7
  %cfg.i.i195.i.i = getelementptr inbounds %struct.rtl_priv, ptr %335, i32 0, i32 32
  %338 = ptrtoint ptr %cfg.i.i195.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %cfg.i.i195.i.i, align 8
  %write_readback.i.i196.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %339, i32 0, i32 1
  %340 = ptrtoint ptr %write_readback.i.i196.i.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %write_readback.i.i196.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %341)
  %tobool.not.i.i197.i.i = icmp eq i8 %341, 0
  br i1 %tobool.not.i.i197.i.i, label %for.inc31.i.3.i.rtl_write_dword.exit.i204.i.i_crit_edge, label %if.then.i.i200.i.i

for.inc31.i.3.i.rtl_write_dword.exit.i204.i.i_crit_edge: ; preds = %for.inc31.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i204.i.i

if.then.i.i200.i.i:                               ; preds = %for.inc31.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i198.i.i = getelementptr inbounds %struct.rtl_priv, ptr %335, i32 0, i32 13, i32 11
  %342 = ptrtoint ptr %read32_sync.i.i198.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %read32_sync.i.i198.i.i, align 4
  %call.i.i199.i.i = tail call i32 %343(ptr noundef %335, i32 noundef 480) #7
  br label %rtl_write_dword.exit.i204.i.i

rtl_write_dword.exit.i204.i.i:                    ; preds = %if.then.i.i200.i.i, %for.inc31.i.3.i.rtl_write_dword.exit.i204.i.i_crit_edge
  %read32_sync.i16.i201.i.i = getelementptr inbounds %struct.rtl_priv, ptr %335, i32 0, i32 13, i32 11
  %344 = ptrtoint ptr %read32_sync.i16.i201.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %read32_sync.i16.i201.i.i, align 4
  %call.i1718.i202.i.i = tail call i32 %345(ptr noundef %335, i32 noundef 480) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i202.i.i)
  %cmp19.i203.i.i = icmp ult i32 %call.i1718.i202.i.i, 1073741824
  br i1 %cmp19.i203.i.i, label %rtl_write_dword.exit.i204.i.i.if.end43.i_crit_edge, label %rtl_write_dword.exit.i204.i.i.if.end.i211.i.i_crit_edge

rtl_write_dword.exit.i204.i.i.if.end.i211.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i204.i.i
  br label %if.end.i211.i.i

rtl_write_dword.exit.i204.i.i.if.end43.i_crit_edge: ; preds = %rtl_write_dword.exit.i204.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

do.body.i208.i.i:                                 ; preds = %if.end.i211.i.i
  %inc.i205.i.i = add nuw nsw i32 %count.020.i209.i.i, 1
  %346 = ptrtoint ptr %read32_sync.i16.i201.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %read32_sync.i16.i201.i.i, align 4
  %call.i17.i206.i.i = tail call i32 %347(ptr noundef %335, i32 noundef 480) #7
  %cmp.i207.i.i = icmp ult i32 %call.i17.i206.i.i, 1073741824
  br i1 %cmp.i207.i.i, label %do.body.i208.i.i.if.end43.i_crit_edge, label %do.body.i208.i.i.if.end.i211.i.i_crit_edge

do.body.i208.i.i.if.end.i211.i.i_crit_edge:       ; preds = %do.body.i208.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i211.i.i

do.body.i208.i.i.if.end43.i_crit_edge:            ; preds = %do.body.i208.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.end.i211.i.i:                                  ; preds = %do.body.i208.i.i.if.end.i211.i.i_crit_edge, %rtl_write_dword.exit.i204.i.i.if.end.i211.i.i_crit_edge
  %count.020.i209.i.i = phi i32 [ %inc.i205.i.i, %do.body.i208.i.i.if.end.i211.i.i_crit_edge ], [ 0, %rtl_write_dword.exit.i204.i.i.if.end.i211.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i209.i.i)
  %exitcond.i210.i.i = icmp eq i32 %count.020.i209.i.i, 21
  br i1 %exitcond.i210.i.i, label %if.end.i211.i.i.if.then41.i_crit_edge, label %do.body.i208.i.i

if.end.i211.i.i.if.then41.i_crit_edge:            ; preds = %if.end.i211.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41.i

if.then41.i:                                      ; preds = %if.end.i211.i.i.if.then41.i_crit_edge, %if.end.i188.i.3.i.if.then41.i_crit_edge, %if.end.i188.i.2.i.if.then41.i_crit_edge, %if.end.i188.i.1.i.if.then41.i_crit_edge, %if.end.i188.i.i.if.then41.i_crit_edge, %if.end.i160.i.i.if.then41.i_crit_edge, %if.end.i.i.i.if.then41.i_crit_edge
  %.sink.i.i = phi i32 [ 175, %if.end.i211.i.i.if.then41.i_crit_edge ], [ 174, %if.end.i188.i.3.i.if.then41.i_crit_edge ], [ 173, %if.end.i188.i.2.i.if.then41.i_crit_edge ], [ 172, %if.end.i188.i.1.i.if.then41.i_crit_edge ], [ 171, %if.end.i188.i.i.if.then41.i_crit_edge ], [ 170, %if.end.i160.i.i.if.then41.i_crit_edge ], [ %indvars.iv.i.i, %if.end.i.i.i.if.then41.i_crit_edge ]
  %call7.i212.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %.sink.i.i) #10
  br label %do.end28

if.end43.i:                                       ; preds = %do.body.i208.i.i.if.end43.i_crit_edge, %rtl_write_dword.exit.i204.i.i.if.end43.i_crit_edge, %rtl_write_byte.exit314.i.if.end43.i_crit_edge
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 7
  %348 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %349(ptr noundef %18, i32 noundef 180, i32 noundef -1) #7
  %350 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i316.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %351, i32 0, i32 1
  %352 = ptrtoint ptr %write_readback.i316.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %write_readback.i316.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %353)
  %tobool.not.i317.i = icmp eq i8 %353, 0
  br i1 %tobool.not.i317.i, label %if.end43.i.rtl_write_dword.exit.i_crit_edge, label %if.then.i319.i

if.end43.i.rtl_write_dword.exit.i_crit_edge:      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i

if.then.i319.i:                                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 11
  %354 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i318.i = tail call i32 %355(ptr noundef %18, i32 noundef 180) #7
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i319.i, %if.end43.i.rtl_write_dword.exit.i_crit_edge
  %356 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %357(ptr noundef %18, i32 noundef 188, i32 noundef -1) #7
  %358 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i322.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %359, i32 0, i32 1
  %360 = ptrtoint ptr %write_readback.i322.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %write_readback.i322.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %361)
  %tobool.not.i323.i = icmp eq i8 %361, 0
  br i1 %tobool.not.i323.i, label %rtl_write_dword.exit.i.rtl_write_dword.exit327.i_crit_edge, label %if.then.i326.i

rtl_write_dword.exit.i.rtl_write_dword.exit327.i_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit327.i

if.then.i326.i:                                   ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i324.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 11
  %362 = ptrtoint ptr %read32_sync.i324.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %read32_sync.i324.i, align 4
  %call.i325.i = tail call i32 %363(ptr noundef %18, i32 noundef 188) #7
  br label %rtl_write_dword.exit327.i

rtl_write_dword.exit327.i:                        ; preds = %if.then.i326.i, %rtl_write_dword.exit.i.rtl_write_dword.exit327.i_crit_edge
  %read16_sync.i328.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 10
  %364 = ptrtoint ptr %read16_sync.i328.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %read16_sync.i328.i, align 4
  %call.i329.i = tail call zeroext i16 %365(ptr noundef %18, i32 noundef 268) #7
  %366 = and i16 %call.i329.i, 14
  %367 = or i16 %366, -6287
  %368 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %369(ptr noundef %18, i32 noundef 268, i16 noundef zeroext %367) #7
  %370 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i332.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %371, i32 0, i32 1
  %372 = ptrtoint ptr %write_readback.i332.i to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %write_readback.i332.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %373)
  %tobool.not.i333.i = icmp eq i8 %373, 0
  br i1 %tobool.not.i333.i, label %rtl_write_dword.exit327.i.rtl_write_word.exit337.i_crit_edge, label %if.then.i336.i

rtl_write_dword.exit327.i.rtl_write_word.exit337.i_crit_edge: ; preds = %rtl_write_dword.exit327.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit337.i

if.then.i336.i:                                   ; preds = %rtl_write_dword.exit327.i
  call void @__sanitizer_cov_trace_pc() #9
  %374 = ptrtoint ptr %read16_sync.i328.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %read16_sync.i328.i, align 4
  %call.i335.i = tail call zeroext i16 %375(ptr noundef %18, i32 noundef 268) #7
  br label %rtl_write_word.exit337.i

rtl_write_word.exit337.i:                         ; preds = %if.then.i336.i, %rtl_write_dword.exit327.i.rtl_write_word.exit337.i_crit_edge
  %receive_config.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %376 = ptrtoint ptr %receive_config.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %receive_config.i, align 4
  %378 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %379(ptr noundef %18, i32 noundef 1544, i32 noundef %377) #7
  %380 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i340.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %381, i32 0, i32 1
  %382 = ptrtoint ptr %write_readback.i340.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %write_readback.i340.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %383)
  %tobool.not.i341.i = icmp eq i8 %383, 0
  br i1 %tobool.not.i341.i, label %rtl_write_word.exit337.i.rtl_write_dword.exit345.i_crit_edge, label %if.then.i344.i

rtl_write_word.exit337.i.rtl_write_dword.exit345.i_crit_edge: ; preds = %rtl_write_word.exit337.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit345.i

if.then.i344.i:                                   ; preds = %rtl_write_word.exit337.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i342.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 11
  %384 = ptrtoint ptr %read32_sync.i342.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %read32_sync.i342.i, align 4
  %call.i343.i = tail call i32 %385(ptr noundef %18, i32 noundef 1544) #7
  br label %rtl_write_dword.exit345.i

rtl_write_dword.exit345.i:                        ; preds = %if.then.i344.i, %rtl_write_word.exit337.i.rtl_write_dword.exit345.i_crit_edge
  %386 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %387(ptr noundef %18, i32 noundef 1700, i16 noundef zeroext -1) #7
  %388 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i348.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %389, i32 0, i32 1
  %390 = ptrtoint ptr %write_readback.i348.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %write_readback.i348.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %391)
  %tobool.not.i349.i = icmp eq i8 %391, 0
  br i1 %tobool.not.i349.i, label %rtl_write_dword.exit345.i.rtl_write_word.exit353.i_crit_edge, label %if.then.i352.i

rtl_write_dword.exit345.i.rtl_write_word.exit353.i_crit_edge: ; preds = %rtl_write_dword.exit345.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit353.i

if.then.i352.i:                                   ; preds = %rtl_write_dword.exit345.i
  call void @__sanitizer_cov_trace_pc() #9
  %392 = ptrtoint ptr %read16_sync.i328.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %read16_sync.i328.i, align 4
  %call.i351.i = tail call zeroext i16 %393(ptr noundef %18, i32 noundef 1700) #7
  br label %rtl_write_word.exit353.i

rtl_write_word.exit353.i:                         ; preds = %if.then.i352.i, %rtl_write_dword.exit345.i.rtl_write_word.exit353.i_crit_edge
  %transmit_config.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 1, i32 8, i32 2, i32 3
  %394 = ptrtoint ptr %transmit_config.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %transmit_config.i, align 4
  %396 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %397(ptr noundef %18, i32 noundef 1540, i32 noundef %395) #7
  %398 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i356.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %399, i32 0, i32 1
  %400 = ptrtoint ptr %write_readback.i356.i to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %write_readback.i356.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %401)
  %tobool.not.i357.i = icmp eq i8 %401, 0
  br i1 %tobool.not.i357.i, label %rtl_write_word.exit353.i.rtl_write_dword.exit361.i_crit_edge, label %if.then.i360.i

rtl_write_word.exit353.i.rtl_write_dword.exit361.i_crit_edge: ; preds = %rtl_write_word.exit353.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit361.i

if.then.i360.i:                                   ; preds = %rtl_write_word.exit353.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i358.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 11
  %402 = ptrtoint ptr %read32_sync.i358.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %read32_sync.i358.i, align 4
  %call.i359.i = tail call i32 %403(ptr noundef %18, i32 noundef 1540) #7
  br label %rtl_write_dword.exit361.i

rtl_write_dword.exit361.i:                        ; preds = %if.then.i360.i, %rtl_write_word.exit353.i.rtl_write_dword.exit361.i_crit_edge
  %dma.i = getelementptr %struct.rtl_priv, ptr %18, i32 1, i32 7, i32 5, i32 0, i32 0, i32 3
  %404 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %dma.i, align 4
  %406 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %407(ptr noundef %18, i32 noundef 776, i32 noundef %405) #7
  %408 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i364.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %409, i32 0, i32 1
  %410 = ptrtoint ptr %write_readback.i364.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %write_readback.i364.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %411)
  %tobool.not.i365.i = icmp eq i8 %411, 0
  br i1 %tobool.not.i365.i, label %rtl_write_dword.exit361.i.rtl_write_dword.exit369.i_crit_edge, label %if.then.i368.i

rtl_write_dword.exit361.i.rtl_write_dword.exit369.i_crit_edge: ; preds = %rtl_write_dword.exit361.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit369.i

if.then.i368.i:                                   ; preds = %rtl_write_dword.exit361.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i366.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 11
  %412 = ptrtoint ptr %read32_sync.i366.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %read32_sync.i366.i, align 4
  %call.i367.i = tail call i32 %413(ptr noundef %18, i32 noundef 776) #7
  br label %rtl_write_dword.exit369.i

rtl_write_dword.exit369.i:                        ; preds = %if.then.i368.i, %rtl_write_dword.exit361.i.rtl_write_dword.exit369.i_crit_edge
  %dma56.i = getelementptr %struct.rtl_priv, ptr %18, i32 1, i32 7, i32 9, i32 0, i32 0, i32 1
  %414 = ptrtoint ptr %dma56.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %dma56.i, align 4
  %416 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %417(ptr noundef %18, i32 noundef 792, i32 noundef %415) #7
  %418 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i372.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %419, i32 0, i32 1
  %420 = ptrtoint ptr %write_readback.i372.i to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %write_readback.i372.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %421)
  %tobool.not.i373.i = icmp eq i8 %421, 0
  br i1 %tobool.not.i373.i, label %rtl_write_dword.exit369.i.rtl_write_dword.exit377.i_crit_edge, label %if.then.i376.i

rtl_write_dword.exit369.i.rtl_write_dword.exit377.i_crit_edge: ; preds = %rtl_write_dword.exit369.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit377.i

if.then.i376.i:                                   ; preds = %rtl_write_dword.exit369.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i374.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 11
  %422 = ptrtoint ptr %read32_sync.i374.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %read32_sync.i374.i, align 4
  %call.i375.i = tail call i32 %423(ptr noundef %18, i32 noundef 792) #7
  br label %rtl_write_dword.exit377.i

rtl_write_dword.exit377.i:                        ; preds = %if.then.i376.i, %rtl_write_dword.exit369.i.rtl_write_dword.exit377.i_crit_edge
  %dma62.i = getelementptr %struct.rtl_priv, ptr %18, i32 1, i32 7, i32 3, i32 0, i32 0, i32 4
  %424 = ptrtoint ptr %dma62.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %dma62.i, align 4
  %426 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %427(ptr noundef %18, i32 noundef 800, i32 noundef %425) #7
  %428 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i380.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %429, i32 0, i32 1
  %430 = ptrtoint ptr %write_readback.i380.i to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %write_readback.i380.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %431)
  %tobool.not.i381.i = icmp eq i8 %431, 0
  br i1 %tobool.not.i381.i, label %rtl_write_dword.exit377.i.rtl_write_dword.exit385.i_crit_edge, label %if.then.i384.i

rtl_write_dword.exit377.i.rtl_write_dword.exit385.i_crit_edge: ; preds = %rtl_write_dword.exit377.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit385.i

if.then.i384.i:                                   ; preds = %rtl_write_dword.exit377.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i382.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 11
  %432 = ptrtoint ptr %read32_sync.i382.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %read32_sync.i382.i, align 4
  %call.i383.i = tail call i32 %433(ptr noundef %18, i32 noundef 800) #7
  br label %rtl_write_dword.exit385.i

rtl_write_dword.exit385.i:                        ; preds = %if.then.i384.i, %rtl_write_dword.exit377.i.rtl_write_dword.exit385.i_crit_edge
  %dma68.i = getelementptr %struct.rtl_priv, ptr %18, i32 1, i32 7, i32 2, i32 1, i32 4, i32 1
  %434 = ptrtoint ptr %dma68.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %dma68.i, align 4
  %436 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %437(ptr noundef %18, i32 noundef 808, i32 noundef %435) #7
  %438 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i388.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %439, i32 0, i32 1
  %440 = ptrtoint ptr %write_readback.i388.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %write_readback.i388.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %441)
  %tobool.not.i389.i = icmp eq i8 %441, 0
  br i1 %tobool.not.i389.i, label %rtl_write_dword.exit385.i.rtl_write_dword.exit393.i_crit_edge, label %if.then.i392.i

rtl_write_dword.exit385.i.rtl_write_dword.exit393.i_crit_edge: ; preds = %rtl_write_dword.exit385.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit393.i

if.then.i392.i:                                   ; preds = %rtl_write_dword.exit385.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i390.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 11
  %442 = ptrtoint ptr %read32_sync.i390.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %read32_sync.i390.i, align 4
  %call.i391.i = tail call i32 %443(ptr noundef %18, i32 noundef 808) #7
  br label %rtl_write_dword.exit393.i

rtl_write_dword.exit393.i:                        ; preds = %if.then.i392.i, %rtl_write_dword.exit385.i.rtl_write_dword.exit393.i_crit_edge
  %dma74.i = getelementptr %struct.rtl_priv, ptr %18, i32 1, i32 7, i32 1, i32 1, i32 4, i32 2
  %444 = ptrtoint ptr %dma74.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %dma74.i, align 4
  %446 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %447(ptr noundef %18, i32 noundef 816, i32 noundef %445) #7
  %448 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i396.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %449, i32 0, i32 1
  %450 = ptrtoint ptr %write_readback.i396.i to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %write_readback.i396.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %451)
  %tobool.not.i397.i = icmp eq i8 %451, 0
  br i1 %tobool.not.i397.i, label %rtl_write_dword.exit393.i.rtl_write_dword.exit401.i_crit_edge, label %if.then.i400.i

rtl_write_dword.exit393.i.rtl_write_dword.exit401.i_crit_edge: ; preds = %rtl_write_dword.exit393.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit401.i

if.then.i400.i:                                   ; preds = %rtl_write_dword.exit393.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i398.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 11
  %452 = ptrtoint ptr %read32_sync.i398.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %read32_sync.i398.i, align 4
  %call.i399.i = tail call i32 %453(ptr noundef %18, i32 noundef 816) #7
  br label %rtl_write_dword.exit401.i

rtl_write_dword.exit401.i:                        ; preds = %if.then.i400.i, %rtl_write_dword.exit393.i.rtl_write_dword.exit401.i_crit_edge
  %dma80.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 1, i32 7, i32 0, i32 1, i32 4, i32 6
  %454 = ptrtoint ptr %dma80.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %dma80.i, align 4
  %456 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %457(ptr noundef %18, i32 noundef 824, i32 noundef %455) #7
  %458 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i404.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %459, i32 0, i32 1
  %460 = ptrtoint ptr %write_readback.i404.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %write_readback.i404.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %461)
  %tobool.not.i405.i = icmp eq i8 %461, 0
  br i1 %tobool.not.i405.i, label %rtl_write_dword.exit401.i.rtl_write_dword.exit409.i_crit_edge, label %if.then.i408.i

rtl_write_dword.exit401.i.rtl_write_dword.exit409.i_crit_edge: ; preds = %rtl_write_dword.exit401.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit409.i

if.then.i408.i:                                   ; preds = %rtl_write_dword.exit401.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i406.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 11
  %462 = ptrtoint ptr %read32_sync.i406.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %read32_sync.i406.i, align 4
  %call.i407.i = tail call i32 %463(ptr noundef %18, i32 noundef 824) #7
  br label %rtl_write_dword.exit409.i

rtl_write_dword.exit409.i:                        ; preds = %if.then.i408.i, %rtl_write_dword.exit401.i.rtl_write_dword.exit409.i_crit_edge
  %dma86.i = getelementptr %struct.rtl_priv, ptr %18, i32 1, i32 7, i32 11
  %464 = ptrtoint ptr %dma86.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %dma86.i, align 4
  %466 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %467(ptr noundef %18, i32 noundef 784, i32 noundef %465) #7
  %468 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i412.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %469, i32 0, i32 1
  %470 = ptrtoint ptr %write_readback.i412.i to i32
  call void @__asan_load1_noabort(i32 %470)
  %471 = load i8, ptr %write_readback.i412.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %471)
  %tobool.not.i413.i = icmp eq i8 %471, 0
  br i1 %tobool.not.i413.i, label %rtl_write_dword.exit409.i.rtl_write_dword.exit417.i_crit_edge, label %if.then.i416.i

rtl_write_dword.exit409.i.rtl_write_dword.exit417.i_crit_edge: ; preds = %rtl_write_dword.exit409.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit417.i

if.then.i416.i:                                   ; preds = %rtl_write_dword.exit409.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i414.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 11
  %472 = ptrtoint ptr %read32_sync.i414.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %read32_sync.i414.i, align 4
  %call.i415.i = tail call i32 %473(ptr noundef %18, i32 noundef 784) #7
  br label %rtl_write_dword.exit417.i

rtl_write_dword.exit417.i:                        ; preds = %if.then.i416.i, %rtl_write_dword.exit409.i.rtl_write_dword.exit417.i_crit_edge
  %dma91.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 1, i32 8, i32 2, i32 4, i32 1
  %474 = ptrtoint ptr %dma91.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %dma91.i, align 4
  %476 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %477(ptr noundef %18, i32 noundef 832, i32 noundef %475) #7
  %478 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i420.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %479, i32 0, i32 1
  %480 = ptrtoint ptr %write_readback.i420.i to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %write_readback.i420.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %481)
  %tobool.not.i421.i = icmp eq i8 %481, 0
  br i1 %tobool.not.i421.i, label %rtl_write_dword.exit417.i.rtl_write_dword.exit425.i_crit_edge, label %if.then.i424.i

rtl_write_dword.exit417.i.rtl_write_dword.exit425.i_crit_edge: ; preds = %rtl_write_dword.exit417.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit425.i

if.then.i424.i:                                   ; preds = %rtl_write_dword.exit417.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i422.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 11
  %482 = ptrtoint ptr %read32_sync.i422.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %read32_sync.i422.i, align 4
  %call.i423.i = tail call i32 %483(ptr noundef %18, i32 noundef 832) #7
  br label %rtl_write_dword.exit425.i

rtl_write_dword.exit425.i:                        ; preds = %if.then.i424.i, %rtl_write_dword.exit417.i.rtl_write_dword.exit425.i_crit_edge
  %484 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %485(ptr noundef %18, i32 noundef 772, i32 noundef 0) #7
  %486 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i428.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %487, i32 0, i32 1
  %488 = ptrtoint ptr %write_readback.i428.i to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %write_readback.i428.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %489)
  %tobool.not.i429.i = icmp eq i8 %489, 0
  br i1 %tobool.not.i429.i, label %rtl_write_dword.exit425.i.rtl_write_dword.exit433.i_crit_edge, label %if.then.i432.i

rtl_write_dword.exit425.i.rtl_write_dword.exit433.i_crit_edge: ; preds = %rtl_write_dword.exit425.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit433.i

if.then.i432.i:                                   ; preds = %rtl_write_dword.exit425.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i430.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 11
  %490 = ptrtoint ptr %read32_sync.i430.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %read32_sync.i430.i, align 4
  %call.i431.i = tail call i32 %491(ptr noundef %18, i32 noundef 772) #7
  br label %rtl_write_dword.exit433.i

rtl_write_dword.exit433.i:                        ; preds = %if.then.i432.i, %rtl_write_dword.exit425.i.rtl_write_dword.exit433.i_crit_edge
  %492 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %493(ptr noundef %18, i32 noundef 448, i32 noundef 0) #7
  %494 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i436.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %495, i32 0, i32 1
  %496 = ptrtoint ptr %write_readback.i436.i to i32
  call void @__asan_load1_noabort(i32 %496)
  %497 = load i8, ptr %write_readback.i436.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %497)
  %tobool.not.i437.i = icmp eq i8 %497, 0
  br i1 %tobool.not.i437.i, label %rtl_write_dword.exit433.i.rtl_write_dword.exit441.i_crit_edge, label %if.then.i440.i

rtl_write_dword.exit433.i.rtl_write_dword.exit441.i_crit_edge: ; preds = %rtl_write_dword.exit433.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit441.i

if.then.i440.i:                                   ; preds = %rtl_write_dword.exit433.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i438.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 11
  %498 = ptrtoint ptr %read32_sync.i438.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %read32_sync.i438.i, align 4
  %call.i439.i = tail call i32 %499(ptr noundef %18, i32 noundef 448) #7
  br label %rtl_write_dword.exit441.i

rtl_write_dword.exit441.i:                        ; preds = %if.then.i440.i, %rtl_write_dword.exit433.i.rtl_write_dword.exit441.i_crit_edge
  %500 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %501(ptr noundef %18, i32 noundef 769, i8 noundef zeroext 0) #7
  %502 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i444.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %503, i32 0, i32 1
  %504 = ptrtoint ptr %write_readback.i444.i to i32
  call void @__asan_load1_noabort(i32 %504)
  %505 = load i8, ptr %write_readback.i444.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %505)
  %tobool.not.i445.i = icmp eq i8 %505, 0
  br i1 %tobool.not.i445.i, label %rtl_write_dword.exit441.i.rtl_write_byte.exit449.i_crit_edge, label %if.then.i448.i

rtl_write_dword.exit441.i.rtl_write_byte.exit449.i_crit_edge: ; preds = %rtl_write_dword.exit441.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit449.i

if.then.i448.i:                                   ; preds = %rtl_write_dword.exit441.i
  call void @__sanitizer_cov_trace_pc() #9
  %506 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i447.i = tail call zeroext i8 %507(ptr noundef %18, i32 noundef 769) #7
  br label %rtl_write_byte.exit449.i

rtl_write_byte.exit449.i:                         ; preds = %if.then.i448.i, %rtl_write_dword.exit441.i.rtl_write_byte.exit449.i_crit_edge
  %earlymode_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 10, i32 58
  %508 = ptrtoint ptr %earlymode_enable.i to i32
  call void @__asan_load1_noabort(i32 %508)
  %509 = load i8, ptr %earlymode_enable.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %509)
  %tobool95.not.i = icmp eq i8 %509, 0
  br i1 %tobool95.not.i, label %rtl_write_byte.exit449.i.if.end101.i_crit_edge, label %if.then96.i

rtl_write_byte.exit449.i.if.end101.i_crit_edge:   ; preds = %rtl_write_byte.exit449.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.i

if.then96.i:                                      ; preds = %rtl_write_byte.exit449.i
  %510 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i451.i = tail call zeroext i8 %511(ptr noundef %18, i32 noundef 1232) #7
  %512 = or i8 %call.i451.i, 31
  %513 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %514(ptr noundef %18, i32 noundef 1232, i8 noundef zeroext %512) #7
  %515 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i454.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %516, i32 0, i32 1
  %517 = ptrtoint ptr %write_readback.i454.i to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %write_readback.i454.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %518)
  %tobool.not.i455.i = icmp eq i8 %518, 0
  br i1 %tobool.not.i455.i, label %if.then96.i.rtl_write_byte.exit459.i_crit_edge, label %if.then.i458.i

if.then96.i.rtl_write_byte.exit459.i_crit_edge:   ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit459.i

if.then.i458.i:                                   ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #9
  %519 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i457.i = tail call zeroext i8 %520(ptr noundef %18, i32 noundef 1232) #7
  br label %rtl_write_byte.exit459.i

rtl_write_byte.exit459.i:                         ; preds = %if.then.i458.i, %if.then96.i.rtl_write_byte.exit459.i_crit_edge
  %521 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %522(ptr noundef %18, i32 noundef 1235, i8 noundef zeroext -127) #7
  %523 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i462.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %524, i32 0, i32 1
  %525 = ptrtoint ptr %write_readback.i462.i to i32
  call void @__asan_load1_noabort(i32 %525)
  %526 = load i8, ptr %write_readback.i462.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %526)
  %tobool.not.i463.i = icmp eq i8 %526, 0
  br i1 %tobool.not.i463.i, label %rtl_write_byte.exit459.i.if.end101.i_crit_edge, label %if.then.i466.i

rtl_write_byte.exit459.i.if.end101.i_crit_edge:   ; preds = %rtl_write_byte.exit459.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.i

if.then.i466.i:                                   ; preds = %rtl_write_byte.exit459.i
  call void @__sanitizer_cov_trace_pc() #9
  %527 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i465.i = tail call zeroext i8 %528(ptr noundef %18, i32 noundef 1235) #7
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then.i466.i, %rtl_write_byte.exit459.i.if.end101.i_crit_edge, %rtl_write_byte.exit449.i.if.end101.i_crit_edge
  %529 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %priv, align 8
  %sw_led0.i.i = getelementptr inbounds %struct.rtl_priv, ptr %530, i32 0, i32 18, i32 1
  %up_first_time.i.i = getelementptr inbounds %struct.rtl_priv, ptr %530, i32 0, i32 10, i32 2
  %531 = ptrtoint ptr %up_first_time.i.i to i32
  call void @__asan_load1_noabort(i32 %531)
  %532 = load i8, ptr %up_first_time.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %532)
  %tobool.not.i469.i = icmp eq i8 %532, 0
  br i1 %tobool.not.i469.i, label %if.end.i.i, label %if.end101.i.if.end31_crit_edge

if.end101.i.if.end31_crit_edge:                   ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end.i.i:                                       ; preds = %if.end101.i
  %rfoff_reason.i.i = getelementptr inbounds %struct.rtl_priv, ptr %530, i32 0, i32 21, i32 18
  %533 = ptrtoint ptr %rfoff_reason.i.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %rfoff_reason.i.i, align 4
  %535 = zext i32 %534 to i64
  call void @__sanitizer_cov_trace_switch(i64 %535, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %534, label %if.else6.i.i [
    i32 268435456, label %if.then2.i.i
    i32 0, label %if.then5.i.i
  ]

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl88ee_sw_led_on(ptr noundef %hw, ptr noundef %sw_led0.i.i) #7
  br label %if.end31

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl88ee_sw_led_on(ptr noundef %hw, ptr noundef %sw_led0.i.i) #7
  br label %if.end31

if.else6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl88ee_sw_led_off(ptr noundef %hw, ptr noundef %sw_led0.i.i) #7
  br label %if.end31

do.end28:                                         ; preds = %if.then41.i, %rtl_write_byte.exit199.i.do.end28_crit_edge
  %.str.46.sink = phi ptr [ @.str.46, %if.then41.i ], [ @.str.45, %rtl_write_byte.exit199.i.do.end28_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %18, i64 noundef 4, i32 noundef 4, ptr noundef nonnull %.str.46.sink) #7
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %do.body105

if.end31:                                         ; preds = %if.else6.i.i, %if.then5.i.i, %if.then2.i.i, %if.end101.i.if.end31_crit_edge
  %call32 = tail call i32 @rtl88e_download_fw(ptr noundef %hw, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.17) #7
  br label %do.body105

if.end35:                                         ; preds = %if.end31
  %536 = ptrtoint ptr %fw_ready to i32
  call void @__asan_store1_noabort(i32 %536)
  store i8 1, ptr %fw_ready, align 2
  %last_hmeboxnum = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 37
  %537 = ptrtoint ptr %last_hmeboxnum to i32
  call void @__asan_store1_noabort(i32 %537)
  store i8 0, ptr %last_hmeboxnum, align 1
  %fw_ps_state37 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 49
  %538 = ptrtoint ptr %fw_ps_state37 to i32
  call void @__asan_store1_noabort(i32 %538)
  store i8 0, ptr %fw_ps_state37, align 1
  %fw_clk_change_in_progress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 47
  %539 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_store1_noabort(i32 %539)
  store i8 0, ptr %fw_clk_change_in_progress, align 1
  %allow_sw_to_change_hwclc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 48
  %540 = ptrtoint ptr %allow_sw_to_change_hwclc to i32
  call void @__asan_store1_noabort(i32 %540)
  store i8 0, ptr %allow_sw_to_change_hwclc, align 8
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 13
  %541 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_store1_noabort(i32 %541)
  store i8 0, ptr %fw_current_inpsmode, align 1
  %call38 = tail call zeroext i1 @rtl88e_phy_mac_config(ptr noundef %hw) #7
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %542 = ptrtoint ptr %receive_config to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %receive_config, align 4
  %and39 = and i32 %543, -769
  store i32 %and39, ptr %receive_config, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %544 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %write32_async.i, align 4
  tail call void %545(ptr noundef %1, i32 noundef 1544, i32 noundef %and39) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %546 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %547, i32 0, i32 1
  %548 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %548)
  %549 = load i8, ptr %write_readback.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %549)
  %tobool.not.i216 = icmp eq i8 %549, 0
  br i1 %tobool.not.i216, label %if.end35.rtl_write_dword.exit_crit_edge, label %if.then.i218

if.end35.rtl_write_dword.exit_crit_edge:          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit

if.then.i218:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %550 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %read32_sync.i, align 4
  %call.i217 = tail call i32 %551(ptr noundef %1, i32 noundef 1544) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i218, %if.end35.rtl_write_dword.exit_crit_edge
  %call41 = tail call zeroext i1 @rtl88e_phy_bb_config(ptr noundef %hw) #7
  %552 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %priv, align 8
  %cfg.i221 = getelementptr inbounds %struct.rtl_priv, ptr %553, i32 0, i32 32
  %554 = ptrtoint ptr %cfg.i221 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %cfg.i221, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %555, i32 0, i32 4
  %556 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %557, i32 0, i32 46
  %558 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %559(ptr noundef %hw, i32 noundef 2048, i32 noundef 16777216, i32 noundef 1) #7
  %560 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %priv, align 8
  %cfg.i223 = getelementptr inbounds %struct.rtl_priv, ptr %561, i32 0, i32 32
  %562 = ptrtoint ptr %cfg.i223 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %cfg.i223, align 8
  %ops.i224 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %563, i32 0, i32 4
  %564 = ptrtoint ptr %ops.i224 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %ops.i224, align 4
  %set_bbreg.i225 = getelementptr inbounds %struct.rtl_hal_ops, ptr %565, i32 0, i32 46
  %566 = ptrtoint ptr %set_bbreg.i225 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %set_bbreg.i225, align 4
  tail call void %567(ptr noundef %hw, i32 noundef 2048, i32 noundef 33554432, i32 noundef 1) #7
  %rf_mode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 3
  %568 = ptrtoint ptr %rf_mode to i32
  call void @__asan_store1_noabort(i32 %568)
  store i8 0, ptr %rf_mode, align 4
  %call42 = tail call zeroext i1 @rtl88e_phy_rf_config(ptr noundef %hw) #7
  %569 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %priv, align 8
  %cfg.i227 = getelementptr inbounds %struct.rtl_priv, ptr %570, i32 0, i32 32
  %571 = ptrtoint ptr %cfg.i227 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %cfg.i227, align 8
  %ops.i228 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %572, i32 0, i32 4
  %573 = ptrtoint ptr %ops.i228 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %ops.i228, align 4
  %get_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %574, i32 0, i32 47
  %575 = ptrtoint ptr %get_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %get_rfreg.i, align 4
  %call.i229 = tail call i32 %576(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 1048575) #7
  %rfreg_chnlval = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52
  %and46 = and i32 %call.i229, -1044481
  %577 = ptrtoint ptr %rfreg_chnlval to i32
  call void @__asan_store4_noabort(i32 %577)
  store i32 %and46, ptr %rfreg_chnlval, align 4
  %578 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %priv, align 8
  %write32_async.i.i231 = getelementptr inbounds %struct.rtl_priv, ptr %579, i32 0, i32 13, i32 7
  %580 = ptrtoint ptr %write32_async.i.i231 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %write32_async.i.i231, align 4
  tail call void %581(ptr noundef %579, i32 noundef 1088, i32 noundef 4095) #7
  %cfg.i.i232 = getelementptr inbounds %struct.rtl_priv, ptr %579, i32 0, i32 32
  %582 = ptrtoint ptr %cfg.i.i232 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %cfg.i.i232, align 8
  %write_readback.i.i233 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %583, i32 0, i32 1
  %584 = ptrtoint ptr %write_readback.i.i233 to i32
  call void @__asan_load1_noabort(i32 %584)
  %585 = load i8, ptr %write_readback.i.i233, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %585)
  %tobool.not.i.i234 = icmp eq i8 %585, 0
  br i1 %tobool.not.i.i234, label %rtl_write_dword.exit.rtl_write_dword.exit.i239_crit_edge, label %if.then.i.i237

rtl_write_dword.exit.rtl_write_dword.exit.i239_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i239

if.then.i.i237:                                   ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i235 = getelementptr inbounds %struct.rtl_priv, ptr %579, i32 0, i32 13, i32 11
  %586 = ptrtoint ptr %read32_sync.i.i235 to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %read32_sync.i.i235, align 4
  %call.i.i236 = tail call i32 %587(ptr noundef %579, i32 noundef 1088) #7
  br label %rtl_write_dword.exit.i239

rtl_write_dword.exit.i239:                        ; preds = %if.then.i.i237, %rtl_write_dword.exit.rtl_write_dword.exit.i239_crit_edge
  %write8_async.i.i238 = getelementptr inbounds %struct.rtl_priv, ptr %579, i32 0, i32 13, i32 5
  %588 = ptrtoint ptr %write8_async.i.i238 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %write8_async.i.i238, align 4
  tail call void %589(ptr noundef %579, i32 noundef 1059, i8 noundef zeroext -1) #7
  %590 = ptrtoint ptr %cfg.i.i232 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %cfg.i.i232, align 8
  %write_readback.i3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %591, i32 0, i32 1
  %592 = ptrtoint ptr %write_readback.i3.i to i32
  call void @__asan_load1_noabort(i32 %592)
  %593 = load i8, ptr %write_readback.i3.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %593)
  %tobool.not.i4.i = icmp eq i8 %593, 0
  br i1 %tobool.not.i4.i, label %rtl_write_dword.exit.i239._rtl88ee_hw_configure.exit_crit_edge, label %if.then.i6.i

rtl_write_dword.exit.i239._rtl88ee_hw_configure.exit_crit_edge: ; preds = %rtl_write_dword.exit.i239
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_hw_configure.exit

if.then.i6.i:                                     ; preds = %rtl_write_dword.exit.i239
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i240 = getelementptr inbounds %struct.rtl_priv, ptr %579, i32 0, i32 13, i32 9
  %594 = ptrtoint ptr %read8_sync.i.i240 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %read8_sync.i.i240, align 4
  %call.i5.i = tail call zeroext i8 %595(ptr noundef %579, i32 noundef 1059) #7
  br label %_rtl88ee_hw_configure.exit

_rtl88ee_hw_configure.exit:                       ; preds = %if.then.i6.i, %rtl_write_dword.exit.i239._rtl88ee_hw_configure.exit_crit_edge
  tail call void @rtl_cam_reset_all_entry(ptr noundef %hw) #7
  tail call void @rtl88ee_enable_hw_security_config(ptr noundef %hw)
  %596 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %596)
  store i8 1, ptr %15, align 1
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %597 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_store4_noabort(i32 %597)
  store i32 0, ptr %rfpwr_state, align 4
  %598 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %cfg.i, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %599, i32 0, i32 4
  %600 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %601, i32 0, i32 20
  %602 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %set_hw_reg, align 4
  tail call void %603(ptr noundef %hw, i8 noundef zeroext 0, ptr noundef %mac80211) #7
  %604 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %priv, align 8
  %write16_async.i.i243 = getelementptr inbounds %struct.rtl_priv, ptr %605, i32 0, i32 13, i32 6
  %606 = ptrtoint ptr %write16_async.i.i243 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %write16_async.i.i243, align 4
  tail call void %607(ptr noundef %605, i32 noundef 852, i16 noundef zeroext -32508) #7
  %cfg.i.i244 = getelementptr inbounds %struct.rtl_priv, ptr %605, i32 0, i32 32
  %608 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i.i245 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %609, i32 0, i32 1
  %610 = ptrtoint ptr %write_readback.i.i245 to i32
  call void @__asan_load1_noabort(i32 %610)
  %611 = load i8, ptr %write_readback.i.i245, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %611)
  %tobool.not.i.i246 = icmp eq i8 %611, 0
  br i1 %tobool.not.i.i246, label %_rtl88ee_hw_configure.exit.rtl_write_word.exit.i250_crit_edge, label %if.then.i.i249

_rtl88ee_hw_configure.exit.rtl_write_word.exit.i250_crit_edge: ; preds = %_rtl88ee_hw_configure.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i250

if.then.i.i249:                                   ; preds = %_rtl88ee_hw_configure.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i247 = getelementptr inbounds %struct.rtl_priv, ptr %605, i32 0, i32 13, i32 10
  %612 = ptrtoint ptr %read16_sync.i.i247 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %read16_sync.i.i247, align 4
  %call.i.i248 = tail call zeroext i16 %613(ptr noundef %605, i32 noundef 852) #7
  br label %rtl_write_word.exit.i250

rtl_write_word.exit.i250:                         ; preds = %if.then.i.i249, %_rtl88ee_hw_configure.exit.rtl_write_word.exit.i250_crit_edge
  %614 = ptrtoint ptr %write16_async.i.i243 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %write16_async.i.i243, align 4
  tail call void %615(ptr noundef %605, i32 noundef 856, i16 noundef zeroext 36) #7
  %616 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i95.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %617, i32 0, i32 1
  %618 = ptrtoint ptr %write_readback.i95.i to i32
  call void @__asan_load1_noabort(i32 %618)
  %619 = load i8, ptr %write_readback.i95.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %619)
  %tobool.not.i96.i = icmp eq i8 %619, 0
  br i1 %tobool.not.i96.i, label %rtl_write_word.exit.i250.rtl_write_word.exit100.i_crit_edge, label %if.then.i99.i

rtl_write_word.exit.i250.rtl_write_word.exit100.i_crit_edge: ; preds = %rtl_write_word.exit.i250
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit100.i

if.then.i99.i:                                    ; preds = %rtl_write_word.exit.i250
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i97.i = getelementptr inbounds %struct.rtl_priv, ptr %605, i32 0, i32 13, i32 10
  %620 = ptrtoint ptr %read16_sync.i97.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %read16_sync.i97.i, align 4
  %call.i98.i = tail call zeroext i16 %621(ptr noundef %605, i32 noundef 856) #7
  br label %rtl_write_word.exit100.i

rtl_write_word.exit100.i:                         ; preds = %if.then.i99.i, %rtl_write_word.exit.i250.rtl_write_word.exit100.i_crit_edge
  %622 = ptrtoint ptr %write16_async.i.i243 to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %write16_async.i.i243, align 4
  tail call void %623(ptr noundef %605, i32 noundef 848, i16 noundef zeroext 1804) #7
  %624 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i103.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %625, i32 0, i32 1
  %626 = ptrtoint ptr %write_readback.i103.i to i32
  call void @__asan_load1_noabort(i32 %626)
  %627 = load i8, ptr %write_readback.i103.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %627)
  %tobool.not.i104.i = icmp eq i8 %627, 0
  br i1 %tobool.not.i104.i, label %rtl_write_word.exit100.i.rtl_write_word.exit108.i_crit_edge, label %if.then.i107.i

rtl_write_word.exit100.i.rtl_write_word.exit108.i_crit_edge: ; preds = %rtl_write_word.exit100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit108.i

if.then.i107.i:                                   ; preds = %rtl_write_word.exit100.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i105.i = getelementptr inbounds %struct.rtl_priv, ptr %605, i32 0, i32 13, i32 10
  %628 = ptrtoint ptr %read16_sync.i105.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %read16_sync.i105.i, align 4
  %call.i106.i = tail call zeroext i16 %629(ptr noundef %605, i32 noundef 848) #7
  br label %rtl_write_word.exit108.i

rtl_write_word.exit108.i:                         ; preds = %if.then.i107.i, %rtl_write_word.exit100.i.rtl_write_word.exit108.i_crit_edge
  %write8_async.i.i251 = getelementptr inbounds %struct.rtl_priv, ptr %605, i32 0, i32 13, i32 5
  %630 = ptrtoint ptr %write8_async.i.i251 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %write8_async.i.i251, align 4
  tail call void %631(ptr noundef %605, i32 noundef 850, i8 noundef zeroext 2) #7
  %632 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i110.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %633, i32 0, i32 1
  %634 = ptrtoint ptr %write_readback.i110.i to i32
  call void @__asan_load1_noabort(i32 %634)
  %635 = load i8, ptr %write_readback.i110.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %635)
  %tobool.not.i111.i = icmp eq i8 %635, 0
  br i1 %tobool.not.i111.i, label %rtl_write_word.exit108.i.rtl_write_byte.exit.i253_crit_edge, label %if.then.i113.i

rtl_write_word.exit108.i.rtl_write_byte.exit.i253_crit_edge: ; preds = %rtl_write_word.exit108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i253

if.then.i113.i:                                   ; preds = %rtl_write_word.exit108.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i252 = getelementptr inbounds %struct.rtl_priv, ptr %605, i32 0, i32 13, i32 9
  %636 = ptrtoint ptr %read8_sync.i.i252 to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %read8_sync.i.i252, align 4
  %call.i112.i = tail call zeroext i8 %637(ptr noundef %605, i32 noundef 850) #7
  br label %rtl_write_byte.exit.i253

rtl_write_byte.exit.i253:                         ; preds = %if.then.i113.i, %rtl_write_word.exit108.i.rtl_write_byte.exit.i253_crit_edge
  %read8_sync.i114.i = getelementptr inbounds %struct.rtl_priv, ptr %605, i32 0, i32 13, i32 9
  %638 = ptrtoint ptr %read8_sync.i114.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %read8_sync.i114.i, align 4
  %call.i115.i = tail call zeroext i8 %639(ptr noundef %605, i32 noundef 850) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i115.i)
  %tobool.not195.not.i = icmp eq i8 %call.i115.i, 0
  br i1 %tobool.not195.not.i, label %rtl_write_byte.exit.i253.if.then.i257_crit_edge, label %rtl_write_byte.exit.i253.while.body.i_crit_edge

rtl_write_byte.exit.i253.while.body.i_crit_edge:  ; preds = %rtl_write_byte.exit.i253
  br label %while.body.i

rtl_write_byte.exit.i253.if.then.i257_crit_edge:  ; preds = %rtl_write_byte.exit.i253
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i257

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %rtl_write_byte.exit.i253.while.body.i_crit_edge
  %count.0196.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %rtl_write_byte.exit.i253.while.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %640 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %640(i32 noundef 2147480) #7
  %641 = ptrtoint ptr %read8_sync.i114.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %read8_sync.i114.i, align 4
  %call.i117.i = tail call zeroext i8 %642(ptr noundef %605, i32 noundef 850) #7
  %inc.i = add nuw nsw i32 %count.0196.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i117.i)
  %tobool.not.i254 = icmp ne i8 %call.i117.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %count.0196.i)
  %cmp.i = icmp ult i32 %count.0196.i, 19
  %or.cond.i = select i1 %tobool.not.i254, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i117.i)
  %phi.cmp.i = icmp eq i8 %call.i117.i, 0
  br i1 %phi.cmp.i, label %while.end.i.if.then.i257_crit_edge, label %while.end.i.if.end.i259_crit_edge

while.end.i.if.end.i259_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i259

while.end.i.if.then.i257_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i257

if.then.i257:                                     ; preds = %while.end.i.if.then.i257_crit_edge, %rtl_write_byte.exit.i253.if.then.i257_crit_edge
  %read32_sync.i.i255 = getelementptr inbounds %struct.rtl_priv, ptr %605, i32 0, i32 13, i32 11
  %643 = ptrtoint ptr %read32_sync.i.i255 to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %read32_sync.i.i255, align 4
  %call.i118.i = tail call i32 %644(ptr noundef %605, i32 noundef 844) #7
  %or.i = or i32 %call.i118.i, -2147483648
  %write32_async.i.i256 = getelementptr inbounds %struct.rtl_priv, ptr %605, i32 0, i32 13, i32 7
  %645 = ptrtoint ptr %write32_async.i.i256 to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %write32_async.i.i256, align 4
  tail call void %646(ptr noundef %605, i32 noundef 840, i32 noundef %or.i) #7
  %647 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i120.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %648, i32 0, i32 1
  %649 = ptrtoint ptr %write_readback.i120.i to i32
  call void @__asan_load1_noabort(i32 %649)
  %650 = load i8, ptr %write_readback.i120.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %650)
  %tobool.not.i121.i = icmp eq i8 %650, 0
  br i1 %tobool.not.i121.i, label %if.then.i257.rtl_write_dword.exit.i258_crit_edge, label %if.then.i124.i

if.then.i257.rtl_write_dword.exit.i258_crit_edge: ; preds = %if.then.i257
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i258

if.then.i124.i:                                   ; preds = %if.then.i257
  call void @__sanitizer_cov_trace_pc() #9
  %651 = ptrtoint ptr %read32_sync.i.i255 to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %read32_sync.i.i255, align 4
  %call.i123.i = tail call i32 %652(ptr noundef %605, i32 noundef 840) #7
  br label %rtl_write_dword.exit.i258

rtl_write_dword.exit.i258:                        ; preds = %if.then.i124.i, %if.then.i257.rtl_write_dword.exit.i258_crit_edge
  %653 = ptrtoint ptr %write16_async.i.i243 to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %write16_async.i.i243, align 4
  tail call void %654(ptr noundef %605, i32 noundef 848, i16 noundef zeroext -2292) #7
  %655 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i127.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %656, i32 0, i32 1
  %657 = ptrtoint ptr %write_readback.i127.i to i32
  call void @__asan_load1_noabort(i32 %657)
  %658 = load i8, ptr %write_readback.i127.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %658)
  %tobool.not.i128.i = icmp eq i8 %658, 0
  br i1 %tobool.not.i128.i, label %rtl_write_dword.exit.i258.rtl_write_word.exit132.i_crit_edge, label %if.then.i131.i

rtl_write_dword.exit.i258.rtl_write_word.exit132.i_crit_edge: ; preds = %rtl_write_dword.exit.i258
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit132.i

if.then.i131.i:                                   ; preds = %rtl_write_dword.exit.i258
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i129.i = getelementptr inbounds %struct.rtl_priv, ptr %605, i32 0, i32 13, i32 10
  %659 = ptrtoint ptr %read16_sync.i129.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %read16_sync.i129.i, align 4
  %call.i130.i = tail call zeroext i16 %660(ptr noundef %605, i32 noundef 848) #7
  br label %rtl_write_word.exit132.i

rtl_write_word.exit132.i:                         ; preds = %if.then.i131.i, %rtl_write_dword.exit.i258.rtl_write_word.exit132.i_crit_edge
  %661 = ptrtoint ptr %write8_async.i.i251 to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %write8_async.i.i251, align 4
  tail call void %662(ptr noundef %605, i32 noundef 850, i8 noundef zeroext 1) #7
  %663 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i135.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %664, i32 0, i32 1
  %665 = ptrtoint ptr %write_readback.i135.i to i32
  call void @__asan_load1_noabort(i32 %665)
  %666 = load i8, ptr %write_readback.i135.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %666)
  %tobool.not.i136.i = icmp eq i8 %666, 0
  br i1 %tobool.not.i136.i, label %rtl_write_word.exit132.i.if.end.i259_crit_edge, label %if.then.i139.i

rtl_write_word.exit132.i.if.end.i259_crit_edge:   ; preds = %rtl_write_word.exit132.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i259

if.then.i139.i:                                   ; preds = %rtl_write_word.exit132.i
  call void @__sanitizer_cov_trace_pc() #9
  %667 = ptrtoint ptr %read8_sync.i114.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %read8_sync.i114.i, align 4
  %call.i138.i = tail call zeroext i8 %668(ptr noundef %605, i32 noundef 850) #7
  br label %if.end.i259

if.end.i259:                                      ; preds = %if.then.i139.i, %rtl_write_word.exit132.i.if.end.i259_crit_edge, %while.end.i.if.end.i259_crit_edge
  %669 = ptrtoint ptr %read8_sync.i114.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %read8_sync.i114.i, align 4
  %call.i142.i = tail call zeroext i8 %670(ptr noundef %605, i32 noundef 850) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i142.i)
  %tobool11.not197.not.i = icmp eq i8 %call.i142.i, 0
  br i1 %tobool11.not197.not.i, label %if.end.i259.while.end19.i_crit_edge, label %if.end.i259.while.body16.i_crit_edge

if.end.i259.while.body16.i_crit_edge:             ; preds = %if.end.i259
  br label %while.body16.i

if.end.i259.while.end19.i_crit_edge:              ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end19.i

while.body16.i:                                   ; preds = %while.body16.i.while.body16.i_crit_edge, %if.end.i259.while.body16.i_crit_edge
  %count.1198.i = phi i32 [ %inc18.i, %while.body16.i.while.body16.i_crit_edge ], [ 0, %if.end.i259.while.body16.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %671 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %671(i32 noundef 2147480) #7
  %672 = ptrtoint ptr %read8_sync.i114.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %read8_sync.i114.i, align 4
  %call.i144.i = tail call zeroext i8 %673(ptr noundef %605, i32 noundef 850) #7
  %inc18.i = add nuw nsw i32 %count.1198.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i144.i)
  %tobool11.not.i = icmp ne i8 %call.i144.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %count.1198.i)
  %cmp13.i = icmp ult i32 %count.1198.i, 19
  %or.cond89.i = select i1 %tobool11.not.i, i1 %cmp13.i, i1 false
  br i1 %or.cond89.i, label %while.body16.i.while.body16.i_crit_edge, label %while.body16.i.while.end19.i_crit_edge

while.body16.i.while.end19.i_crit_edge:           ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end19.i

while.body16.i.while.body16.i_crit_edge:          ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body16.i

while.end19.i:                                    ; preds = %while.body16.i.while.end19.i_crit_edge, %if.end.i259.while.end19.i_crit_edge
  %674 = ptrtoint ptr %write16_async.i.i243 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %write16_async.i.i243, align 4
  tail call void %675(ptr noundef %605, i32 noundef 848, i16 noundef zeroext 1816) #7
  %676 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i147.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %677, i32 0, i32 1
  %678 = ptrtoint ptr %write_readback.i147.i to i32
  call void @__asan_load1_noabort(i32 %678)
  %679 = load i8, ptr %write_readback.i147.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %679)
  %tobool.not.i148.i = icmp eq i8 %679, 0
  br i1 %tobool.not.i148.i, label %while.end19.i.rtl_write_word.exit152.i_crit_edge, label %if.then.i151.i

while.end19.i.rtl_write_word.exit152.i_crit_edge: ; preds = %while.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit152.i

if.then.i151.i:                                   ; preds = %while.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i149.i = getelementptr inbounds %struct.rtl_priv, ptr %605, i32 0, i32 13, i32 10
  %680 = ptrtoint ptr %read16_sync.i149.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %read16_sync.i149.i, align 4
  %call.i150.i = tail call zeroext i16 %681(ptr noundef %605, i32 noundef 848) #7
  br label %rtl_write_word.exit152.i

rtl_write_word.exit152.i:                         ; preds = %if.then.i151.i, %while.end19.i.rtl_write_word.exit152.i_crit_edge
  %682 = ptrtoint ptr %write8_async.i.i251 to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %write8_async.i.i251, align 4
  tail call void %683(ptr noundef %605, i32 noundef 850, i8 noundef zeroext 2) #7
  %684 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i155.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %685, i32 0, i32 1
  %686 = ptrtoint ptr %write_readback.i155.i to i32
  call void @__asan_load1_noabort(i32 %686)
  %687 = load i8, ptr %write_readback.i155.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %687)
  %tobool.not.i156.i = icmp eq i8 %687, 0
  br i1 %tobool.not.i156.i, label %rtl_write_word.exit152.i.rtl_write_byte.exit160.i_crit_edge, label %if.then.i159.i

rtl_write_word.exit152.i.rtl_write_byte.exit160.i_crit_edge: ; preds = %rtl_write_word.exit152.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit160.i

if.then.i159.i:                                   ; preds = %rtl_write_word.exit152.i
  call void @__sanitizer_cov_trace_pc() #9
  %688 = ptrtoint ptr %read8_sync.i114.i to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %read8_sync.i114.i, align 4
  %call.i158.i = tail call zeroext i8 %689(ptr noundef %605, i32 noundef 850) #7
  br label %rtl_write_byte.exit160.i

rtl_write_byte.exit160.i:                         ; preds = %if.then.i159.i, %rtl_write_word.exit152.i.rtl_write_byte.exit160.i_crit_edge
  %690 = ptrtoint ptr %read8_sync.i114.i to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %read8_sync.i114.i, align 4
  %call.i162.i = tail call zeroext i8 %691(ptr noundef %605, i32 noundef 850) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i162.i)
  %tobool23.not199.not.i = icmp eq i8 %call.i162.i, 0
  br i1 %tobool23.not199.not.i, label %rtl_write_byte.exit160.i.if.then37.i_crit_edge, label %rtl_write_byte.exit160.i.while.body28.i_crit_edge

rtl_write_byte.exit160.i.while.body28.i_crit_edge: ; preds = %rtl_write_byte.exit160.i
  br label %while.body28.i

rtl_write_byte.exit160.i.if.then37.i_crit_edge:   ; preds = %rtl_write_byte.exit160.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then37.i

while.body28.i:                                   ; preds = %while.body28.i.while.body28.i_crit_edge, %rtl_write_byte.exit160.i.while.body28.i_crit_edge
  %count.2200.i = phi i32 [ %inc30.i, %while.body28.i.while.body28.i_crit_edge ], [ 0, %rtl_write_byte.exit160.i.while.body28.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %692 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %692(i32 noundef 2147480) #7
  %693 = ptrtoint ptr %read8_sync.i114.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %read8_sync.i114.i, align 4
  %call.i164.i = tail call zeroext i8 %694(ptr noundef %605, i32 noundef 850) #7
  %inc30.i = add nuw nsw i32 %count.2200.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i164.i)
  %tobool23.not.i = icmp ne i8 %call.i164.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %count.2200.i)
  %cmp25.i = icmp ult i32 %count.2200.i, 19
  %or.cond90.i = select i1 %tobool23.not.i, i1 %cmp25.i, i1 false
  br i1 %or.cond90.i, label %while.body28.i.while.body28.i_crit_edge, label %while.end31.i

while.body28.i.while.body28.i_crit_edge:          ; preds = %while.body28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body28.i

while.end31.i:                                    ; preds = %while.body28.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i164.i)
  %phi.cmp204.i = icmp eq i8 %call.i164.i, 0
  %support_backdoor.i = getelementptr inbounds %struct.rtl_priv, ptr %605, i32 0, i32 21, i32 6
  %695 = ptrtoint ptr %support_backdoor.i to i32
  call void @__asan_load1_noabort(i32 %695)
  %696 = load i8, ptr %support_backdoor.i, align 2, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %696)
  %tobool32.not.i = icmp ne i8 %696, 0
  %or.cond91.i = select i1 %tobool32.not.i, i1 true, i1 %phi.cmp204.i
  br i1 %or.cond91.i, label %while.end31.i.if.then37.i_crit_edge, label %while.end31.i.if.end41.i_crit_edge

while.end31.i.if.end41.i_crit_edge:               ; preds = %while.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

while.end31.i.if.then37.i_crit_edge:              ; preds = %while.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then37.i

if.then37.i:                                      ; preds = %while.end31.i.if.then37.i_crit_edge, %rtl_write_byte.exit160.i.if.then37.i_crit_edge
  %read32_sync.i165.i = getelementptr inbounds %struct.rtl_priv, ptr %605, i32 0, i32 13, i32 11
  %697 = ptrtoint ptr %read32_sync.i165.i to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %read32_sync.i165.i, align 4
  %call.i166.i = tail call i32 %698(ptr noundef %605, i32 noundef 844) #7
  %or40.i = or i32 %call.i166.i, 6144
  %write32_async.i167.i = getelementptr inbounds %struct.rtl_priv, ptr %605, i32 0, i32 13, i32 7
  %699 = ptrtoint ptr %write32_async.i167.i to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %write32_async.i167.i, align 4
  tail call void %700(ptr noundef %605, i32 noundef 840, i32 noundef %or40.i) #7
  %701 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i169.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %702, i32 0, i32 1
  %703 = ptrtoint ptr %write_readback.i169.i to i32
  call void @__asan_load1_noabort(i32 %703)
  %704 = load i8, ptr %write_readback.i169.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %704)
  %tobool.not.i170.i = icmp eq i8 %704, 0
  br i1 %tobool.not.i170.i, label %if.then37.i.rtl_write_dword.exit174.i_crit_edge, label %if.then.i173.i

if.then37.i.rtl_write_dword.exit174.i_crit_edge:  ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit174.i

if.then.i173.i:                                   ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #9
  %705 = ptrtoint ptr %read32_sync.i165.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %read32_sync.i165.i, align 4
  %call.i172.i = tail call i32 %706(ptr noundef %605, i32 noundef 840) #7
  br label %rtl_write_dword.exit174.i

rtl_write_dword.exit174.i:                        ; preds = %if.then.i173.i, %if.then37.i.rtl_write_dword.exit174.i_crit_edge
  %707 = ptrtoint ptr %write16_async.i.i243 to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %write16_async.i.i243, align 4
  tail call void %708(ptr noundef %605, i32 noundef 848, i16 noundef zeroext -2280) #7
  %709 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i177.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %710, i32 0, i32 1
  %711 = ptrtoint ptr %write_readback.i177.i to i32
  call void @__asan_load1_noabort(i32 %711)
  %712 = load i8, ptr %write_readback.i177.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %712)
  %tobool.not.i178.i = icmp eq i8 %712, 0
  br i1 %tobool.not.i178.i, label %rtl_write_dword.exit174.i.rtl_write_word.exit182.i_crit_edge, label %if.then.i181.i

rtl_write_dword.exit174.i.rtl_write_word.exit182.i_crit_edge: ; preds = %rtl_write_dword.exit174.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit182.i

if.then.i181.i:                                   ; preds = %rtl_write_dword.exit174.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i179.i = getelementptr inbounds %struct.rtl_priv, ptr %605, i32 0, i32 13, i32 10
  %713 = ptrtoint ptr %read16_sync.i179.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %read16_sync.i179.i, align 4
  %call.i180.i = tail call zeroext i16 %714(ptr noundef %605, i32 noundef 848) #7
  br label %rtl_write_word.exit182.i

rtl_write_word.exit182.i:                         ; preds = %if.then.i181.i, %rtl_write_dword.exit174.i.rtl_write_word.exit182.i_crit_edge
  %715 = ptrtoint ptr %write8_async.i.i251 to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %write8_async.i.i251, align 4
  tail call void %716(ptr noundef %605, i32 noundef 850, i8 noundef zeroext 1) #7
  %717 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i185.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %718, i32 0, i32 1
  %719 = ptrtoint ptr %write_readback.i185.i to i32
  call void @__asan_load1_noabort(i32 %719)
  %720 = load i8, ptr %write_readback.i185.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %720)
  %tobool.not.i186.i = icmp eq i8 %720, 0
  br i1 %tobool.not.i186.i, label %rtl_write_word.exit182.i.if.end41.i_crit_edge, label %if.then.i189.i

rtl_write_word.exit182.i.if.end41.i_crit_edge:    ; preds = %rtl_write_word.exit182.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

if.then.i189.i:                                   ; preds = %rtl_write_word.exit182.i
  call void @__sanitizer_cov_trace_pc() #9
  %721 = ptrtoint ptr %read8_sync.i114.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %read8_sync.i114.i, align 4
  %call.i188.i = tail call zeroext i8 %722(ptr noundef %605, i32 noundef 850) #7
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then.i189.i, %rtl_write_word.exit182.i.if.end41.i_crit_edge, %while.end31.i.if.end41.i_crit_edge
  %723 = ptrtoint ptr %read8_sync.i114.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %read8_sync.i114.i, align 4
  %call.i192.i = tail call zeroext i8 %724(ptr noundef %605, i32 noundef 850) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i192.i)
  %tobool45.not202.not.i = icmp eq i8 %call.i192.i, 0
  br i1 %tobool45.not202.not.i, label %if.end41.i._rtl88ee_enable_aspm_back_door.exit_crit_edge, label %if.end41.i.while.body50.i_crit_edge

if.end41.i.while.body50.i_crit_edge:              ; preds = %if.end41.i
  br label %while.body50.i

if.end41.i._rtl88ee_enable_aspm_back_door.exit_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_enable_aspm_back_door.exit

while.body50.i:                                   ; preds = %while.body50.i.while.body50.i_crit_edge, %if.end41.i.while.body50.i_crit_edge
  %count.3203.i = phi i32 [ %inc52.i, %while.body50.i.while.body50.i_crit_edge ], [ 0, %if.end41.i.while.body50.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %725 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %725(i32 noundef 2147480) #7
  %726 = ptrtoint ptr %read8_sync.i114.i to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %read8_sync.i114.i, align 4
  %call.i194.i = tail call zeroext i8 %727(ptr noundef %605, i32 noundef 850) #7
  %inc52.i = add nuw nsw i32 %count.3203.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i194.i)
  %tobool45.not.i = icmp ne i8 %call.i194.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %count.3203.i)
  %cmp47.i = icmp ult i32 %count.3203.i, 19
  %or.cond92.i = select i1 %tobool45.not.i, i1 %cmp47.i, i1 false
  br i1 %or.cond92.i, label %while.body50.i.while.body50.i_crit_edge, label %while.body50.i._rtl88ee_enable_aspm_back_door.exit_crit_edge

while.body50.i._rtl88ee_enable_aspm_back_door.exit_crit_edge: ; preds = %while.body50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_enable_aspm_back_door.exit

while.body50.i.while.body50.i_crit_edge:          ; preds = %while.body50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body50.i

_rtl88ee_enable_aspm_back_door.exit:              ; preds = %while.body50.i._rtl88ee_enable_aspm_back_door.exit_crit_edge, %if.end41.i._rtl88ee_enable_aspm_back_door.exit_crit_edge
  %728 = ptrtoint ptr %intf_ops to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %intf_ops, align 4
  %enable_aspm = getelementptr inbounds %struct.rtl_intf_ops, ptr %729, i32 0, i32 9
  %730 = ptrtoint ptr %enable_aspm to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %enable_aspm, align 4
  tail call void %731(ptr noundef %hw) #7
  %732 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load i32, ptr %rfpwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %733)
  %cmp53 = icmp eq i32 %733, 0
  br i1 %cmp53, label %if.then55, label %_rtl88ee_enable_aspm_back_door.exit.if.end84_crit_edge

_rtl88ee_enable_aspm_back_door.exit.if.end84_crit_edge: ; preds = %_rtl88ee_enable_aspm_back_door.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then55:                                        ; preds = %_rtl88ee_enable_aspm_back_door.exit
  %antenna_div_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 22
  %734 = ptrtoint ptr %antenna_div_type to i32
  call void @__asan_load1_noabort(i32 %734)
  %735 = load i8, ptr %antenna_div_type, align 1
  %736 = zext i8 %735 to i64
  call void @__sanitizer_cov_trace_switch(i64 %736, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %735, label %if.then55.if.else68_crit_edge [
    i8 2, label %if.then55.if.end72_crit_edge
    i8 1, label %land.lhs.true63
  ]

if.then55.if.end72_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then55.if.else68_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else68

land.lhs.true63:                                  ; preds = %if.then55
  %oem_id = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 12
  %737 = ptrtoint ptr %oem_id to i32
  call void @__asan_load1_noabort(i32 %737)
  %738 = load i8, ptr %oem_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %738)
  %cmp65 = icmp eq i8 %738, 27
  br i1 %cmp65, label %land.lhs.true63.if.end72_crit_edge, label %land.lhs.true63.if.else68_crit_edge

land.lhs.true63.if.else68_crit_edge:              ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else68

land.lhs.true63.if.end72_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.else68:                                        ; preds = %land.lhs.true63.if.else68_crit_edge, %if.then55.if.else68_crit_edge
  br label %if.end72

if.end72:                                         ; preds = %if.else68, %land.lhs.true63.if.end72_crit_edge, %if.then55.if.end72_crit_edge
  %.sink313 = phi i1 [ false, %if.else68 ], [ true, %if.then55.if.end72_crit_edge ], [ true, %land.lhs.true63.if.end72_crit_edge ]
  %.sink312 = phi i8 [ 1, %if.else68 ], [ 0, %if.then55.if.end72_crit_edge ], [ 0, %land.lhs.true63.if.end72_crit_edge ]
  tail call void @rtl88e_phy_set_rfpath_switch(ptr noundef %hw, i1 noundef zeroext %.sink313) #7
  %rx_idle_ant71 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 16
  %739 = ptrtoint ptr %rx_idle_ant71 to i32
  call void @__asan_store1_noabort(i32 %739)
  store i8 %.sink312, ptr %rx_idle_ant71, align 4
  %cond = select i1 %.sink313, ptr @.str.19, ptr @.str.20
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond) #7
  %iqk_initialized = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 31
  %740 = ptrtoint ptr %iqk_initialized to i32
  call void @__asan_load1_noabort(i32 %740)
  %741 = load i8, ptr %iqk_initialized, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %741)
  %tobool79.not = icmp eq i8 %741, 0
  br i1 %tobool79.not, label %if.else81, label %if.then80

if.then80:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl88e_phy_iq_calibrate(ptr noundef %hw, i1 noundef zeroext true) #7
  br label %if.end83

if.else81:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl88e_phy_iq_calibrate(ptr noundef %hw, i1 noundef zeroext false) #7
  %742 = ptrtoint ptr %iqk_initialized to i32
  call void @__asan_store1_noabort(i32 %742)
  store i8 1, ptr %iqk_initialized, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.else81, %if.then80
  tail call void @rtl88e_dm_check_txpower_tracking(ptr noundef %hw) #7
  tail call void @rtl88e_phy_lc_calibrate(ptr noundef %hw) #7
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %_rtl88ee_enable_aspm_back_door.exit.if.end84_crit_edge
  %call85 = tail call zeroext i8 @efuse_read_1byte(ptr noundef %hw, i16 noundef zeroext 506) #7
  %conv86 = zext i8 %call85 to i32
  %and87 = and i32 %conv86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.then89, label %if.end84.if.end90_crit_edge

if.end84.if.end90_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then89:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %743 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %priv, align 8
  %cfg.i261 = getelementptr inbounds %struct.rtl_priv, ptr %744, i32 0, i32 32
  %745 = ptrtoint ptr %cfg.i261 to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %cfg.i261, align 8
  %ops.i262 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %746, i32 0, i32 4
  %747 = ptrtoint ptr %ops.i262 to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %ops.i262, align 4
  %set_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %748, i32 0, i32 48
  %749 = ptrtoint ptr %set_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %set_rfreg.i, align 4
  tail call void %750(ptr noundef %hw, i32 noundef 0, i32 noundef 21, i32 noundef 15, i32 noundef 5) #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.21) #7
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end84.if.end90_crit_edge
  %and92 = and i32 %conv86, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.then94, label %if.end90.if.end104_crit_edge

if.end90.if.end104_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then94:                                        ; preds = %if.end90
  %751 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %read8_sync.i, align 4
  %call.i264 = tail call zeroext i8 %752(ptr noundef %1, i32 noundef 22) #7
  %753 = and i8 %call.i264, 15
  %or = or i8 %753, -128
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %754 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %write8_async.i, align 4
  tail call void %755(ptr noundef %1, i32 noundef 22, i8 noundef zeroext %or) #7
  %756 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %cfg.i, align 8
  %write_readback.i266 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %757, i32 0, i32 1
  %758 = ptrtoint ptr %write_readback.i266 to i32
  call void @__asan_load1_noabort(i32 %758)
  %759 = load i8, ptr %write_readback.i266, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %759)
  %tobool.not.i267 = icmp eq i8 %759, 0
  br i1 %tobool.not.i267, label %if.then94.rtl_write_byte.exit_crit_edge, label %if.then.i270

if.then94.rtl_write_byte.exit_crit_edge:          ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i270:                                     ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  %760 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %read8_sync.i, align 4
  %call.i269 = tail call zeroext i8 %761(ptr noundef %1, i32 noundef 22) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i270, %if.then94.rtl_write_byte.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %762 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %762(i32 noundef 2147480) #7
  %763 = or i8 %753, -112
  %764 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %write8_async.i, align 4
  tail call void %765(ptr noundef %1, i32 noundef 22, i8 noundef zeroext %763) #7
  %766 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load ptr, ptr %cfg.i, align 8
  %write_readback.i274 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %767, i32 0, i32 1
  %768 = ptrtoint ptr %write_readback.i274 to i32
  call void @__asan_load1_noabort(i32 %768)
  %769 = load i8, ptr %write_readback.i274, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %769)
  %tobool.not.i275 = icmp eq i8 %769, 0
  br i1 %tobool.not.i275, label %rtl_write_byte.exit.rtl_write_byte.exit280_crit_edge, label %if.then.i278

rtl_write_byte.exit.rtl_write_byte.exit280_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit280

if.then.i278:                                     ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %770 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %read8_sync.i, align 4
  %call.i277 = tail call zeroext i8 %771(ptr noundef %1, i32 noundef 22) #7
  br label %rtl_write_byte.exit280

rtl_write_byte.exit280:                           ; preds = %if.then.i278, %rtl_write_byte.exit.rtl_write_byte.exit280_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.22) #7
  br label %if.end104

if.end104:                                        ; preds = %rtl_write_byte.exit280, %if.end90.if.end104_crit_edge
  %write8_async.i281 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %772 = ptrtoint ptr %write8_async.i281 to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %write8_async.i281, align 4
  tail call void %773(ptr noundef %1, i32 noundef 1618, i8 noundef zeroext -21) #7
  %774 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load ptr, ptr %cfg.i, align 8
  %write_readback.i283 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %775, i32 0, i32 1
  %776 = ptrtoint ptr %write_readback.i283 to i32
  call void @__asan_load1_noabort(i32 %776)
  %777 = load i8, ptr %write_readback.i283, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %777)
  %tobool.not.i284 = icmp eq i8 %777, 0
  br i1 %tobool.not.i284, label %if.end104.rtl_write_byte.exit289_crit_edge, label %if.then.i287

if.end104.rtl_write_byte.exit289_crit_edge:       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit289

if.then.i287:                                     ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  %778 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %read8_sync.i, align 4
  %call.i286 = tail call zeroext i8 %779(ptr noundef %1, i32 noundef 1618) #7
  br label %rtl_write_byte.exit289

rtl_write_byte.exit289:                           ; preds = %if.then.i287, %if.end104.rtl_write_byte.exit289_crit_edge
  tail call void @rtl88e_dm_init(ptr noundef %hw) #7
  br label %do.body105

do.body105:                                       ; preds = %rtl_write_byte.exit289, %if.then34, %do.end28
  %err.0 = phi i32 [ 1, %if.then34 ], [ 0, %rtl_write_byte.exit289 ], [ 1, %do.end28 ]
  %and.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool113.not = icmp eq i32 %and.i, 0
  br i1 %tobool113.not, label %if.then114, label %do.body105.do.body116_crit_edge

do.body105.do.body116_crit_edge:                  ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body116

if.then114:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body116

do.body116:                                       ; preds = %if.then114, %do.body105.do.body116_crit_edge
  %780 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !157
  %and.i.i = and i32 %780, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool124.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool124.not, label %if.then128, label %do.body116.do.end131_crit_edge, !prof !159

do.body116.do.end131_crit_edge:                   ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end131

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end131

do.end131:                                        ; preds = %if.then128, %do.body116.do.end131_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #7, !srcloc !160
  %781 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_store1_noabort(i32 %781)
  store i8 0, ptr %being_init_adapter, align 1
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl88e_download_fw(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl88e_phy_mac_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl88e_phy_bb_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl88e_phy_rf_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_cam_reset_all_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_phy_set_rfpath_switch(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_phy_iq_calibrate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_dm_check_txpower_tracking(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_phy_lc_calibrate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @efuse_read_1byte(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_dm_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_set_check_bssid(ptr noundef %hw, i1 noundef zeroext %check_bssid) local_unnamed_addr #0 align 64 {
entry:
  %reg_rcr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_rcr) #7
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %receive_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %receive_config, align 4
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %4 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rfpwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %check_bssid, label %if.then3, label %if.then5

if.then3:                                         ; preds = %if.end
  %or = or i32 %3, 192
  %6 = ptrtoint ptr %reg_rcr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %reg_rcr, align 4
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_hw_reg, align 4
  call void %12(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr) #7
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %reg_bcn_ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_bcn_ctrl_val.i, align 4
  %and.i = and i32 %16, -17
  store i32 %and.i, ptr %reg_bcn_ctrl_val.i, align 4
  %conv6.i = trunc i32 %and.i to i8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 5
  %17 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write8_async.i.i, align 4
  call void %18(ptr noundef %14, i32 noundef 1360, i8 noundef zeroext %conv6.i) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 32
  %19 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %write_readback.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i, label %if.then3.cleanup_crit_edge, label %if.then.i.i

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 9
  %23 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = call zeroext i8 %24(ptr noundef %14, i32 noundef 1360) #7
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %and = and i32 %3, -193
  %25 = ptrtoint ptr %reg_rcr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and, ptr %reg_rcr, align 4
  %reg_bcn_ctrl_val.i22 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %reg_bcn_ctrl_val.i22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg_bcn_ctrl_val.i22, align 4
  %or.i = or i32 %27, 16
  store i32 %or.i, ptr %reg_bcn_ctrl_val.i22, align 4
  %conv6.i23 = trunc i32 %or.i to i8
  %write8_async.i.i24 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %28 = ptrtoint ptr %write8_async.i.i24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write8_async.i.i24, align 4
  tail call void %29(ptr noundef %1, i32 noundef 1360, i8 noundef zeroext %conv6.i23) #7
  %cfg.i.i25 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %30 = ptrtoint ptr %cfg.i.i25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cfg.i.i25, align 8
  %write_readback.i.i26 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %write_readback.i.i26 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %write_readback.i.i26, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i27 = icmp eq i8 %33, 0
  br i1 %tobool.not.i.i27, label %if.then5._rtl88ee_set_bcn_ctrl_reg.exit31_crit_edge, label %if.then.i.i30

if.then5._rtl88ee_set_bcn_ctrl_reg.exit31_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_set_bcn_ctrl_reg.exit31

if.then.i.i30:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i28 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %34 = ptrtoint ptr %read8_sync.i.i28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read8_sync.i.i28, align 4
  %call.i.i29 = tail call zeroext i8 %35(ptr noundef %1, i32 noundef 1360) #7
  br label %_rtl88ee_set_bcn_ctrl_reg.exit31

_rtl88ee_set_bcn_ctrl_reg.exit31:                 ; preds = %if.then.i.i30, %if.then5._rtl88ee_set_bcn_ctrl_reg.exit31_crit_edge
  %36 = ptrtoint ptr %cfg.i.i25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cfg.i.i25, align 8
  %ops7 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops7, align 4
  %set_hw_reg8 = getelementptr inbounds %struct.rtl_hal_ops, ptr %39, i32 0, i32 20
  %40 = ptrtoint ptr %set_hw_reg8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_hw_reg8, align 4
  call void %41(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr) #7
  br label %cleanup

cleanup:                                          ; preds = %_rtl88ee_set_bcn_ctrl_reg.exit31, %if.then.i.i, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl88ee_set_network_type(ptr noundef %hw, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %reg_rcr.i12 = alloca i32, align 4
  %reg_rcr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc i32 @_rtl88ee_set_media_status(ptr noundef %hw, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %type, label %if.then4 [
    i32 3, label %if.then1.cleanup_crit_edge
    i32 7, label %if.then1.cleanup_crit_edge19
  ]

if.then1.cleanup_crit_edge19:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.then1
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_rcr.i) #7
  %rfpwr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 21, i32 24
  %7 = ptrtoint ptr %rfpwr_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rfpwr_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then4.rtl88ee_set_check_bssid.exit_crit_edge

if.then4.rtl88ee_set_check_bssid.exit_crit_edge:  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl88ee_set_check_bssid.exit

if.end.i:                                         ; preds = %if.then4
  %receive_config.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %receive_config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %receive_config.i, align 4
  %or.i = or i32 %10, 192
  %11 = ptrtoint ptr %reg_rcr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %reg_rcr.i, align 4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 32
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %set_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %15, i32 0, i32 20
  %16 = ptrtoint ptr %set_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_hw_reg.i, align 4
  call void %17(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i) #7
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %reg_bcn_ctrl_val.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_bcn_ctrl_val.i.i, align 4
  %and.i.i = and i32 %21, -17
  store i32 %and.i.i, ptr %reg_bcn_ctrl_val.i.i, align 4
  %conv6.i.i = trunc i32 %and.i.i to i8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 13, i32 5
  %22 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %23(ptr noundef %19, i32 noundef 1360, i8 noundef zeroext %conv6.i.i) #7
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 32
  %24 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %write_readback.i.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.rtl88ee_set_check_bssid.exit_crit_edge, label %if.then.i.i.i

if.end.i.rtl88ee_set_check_bssid.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl88ee_set_check_bssid.exit

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 13, i32 9
  %28 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = call zeroext i8 %29(ptr noundef %19, i32 noundef 1360) #7
  br label %rtl88ee_set_check_bssid.exit

rtl88ee_set_check_bssid.exit:                     ; preds = %if.then.i.i.i, %if.end.i.rtl88ee_set_check_bssid.exit_crit_edge, %if.then4.rtl88ee_set_check_bssid.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr.i) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_rcr.i12) #7
  %rfpwr_state.i15 = getelementptr inbounds %struct.rtl_priv, ptr %31, i32 0, i32 21, i32 24
  %32 = ptrtoint ptr %rfpwr_state.i15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rfpwr_state.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not.i16 = icmp eq i32 %33, 0
  br i1 %cmp.not.i16, label %if.end.i17, label %if.else.rtl88ee_set_check_bssid.exit18_crit_edge

if.else.rtl88ee_set_check_bssid.exit18_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl88ee_set_check_bssid.exit18

if.end.i17:                                       ; preds = %if.else
  %receive_config.i14 = getelementptr inbounds %struct.rtl_priv, ptr %31, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %34 = ptrtoint ptr %receive_config.i14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %receive_config.i14, align 4
  %and.i = and i32 %35, -193
  %36 = ptrtoint ptr %reg_rcr.i12 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and.i, ptr %reg_rcr.i12, align 4
  %reg_bcn_ctrl_val.i22.i = getelementptr inbounds %struct.rtl_priv, ptr %31, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %reg_bcn_ctrl_val.i22.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reg_bcn_ctrl_val.i22.i, align 4
  %or.i.i = or i32 %38, 16
  store i32 %or.i.i, ptr %reg_bcn_ctrl_val.i22.i, align 4
  %conv6.i23.i = trunc i32 %or.i.i to i8
  %write8_async.i.i24.i = getelementptr inbounds %struct.rtl_priv, ptr %31, i32 0, i32 13, i32 5
  %39 = ptrtoint ptr %write8_async.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write8_async.i.i24.i, align 4
  tail call void %40(ptr noundef %31, i32 noundef 1360, i8 noundef zeroext %conv6.i23.i) #7
  %cfg.i.i25.i = getelementptr inbounds %struct.rtl_priv, ptr %31, i32 0, i32 32
  %41 = ptrtoint ptr %cfg.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i.i25.i, align 8
  %write_readback.i.i26.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_readback.i.i26.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %write_readback.i.i26.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i.i27.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i.i27.i, label %if.end.i17._rtl88ee_set_bcn_ctrl_reg.exit31.i_crit_edge, label %if.then.i.i30.i

if.end.i17._rtl88ee_set_bcn_ctrl_reg.exit31.i_crit_edge: ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_set_bcn_ctrl_reg.exit31.i

if.then.i.i30.i:                                  ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i28.i = getelementptr inbounds %struct.rtl_priv, ptr %31, i32 0, i32 13, i32 9
  %45 = ptrtoint ptr %read8_sync.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read8_sync.i.i28.i, align 4
  %call.i.i29.i = tail call zeroext i8 %46(ptr noundef %31, i32 noundef 1360) #7
  br label %_rtl88ee_set_bcn_ctrl_reg.exit31.i

_rtl88ee_set_bcn_ctrl_reg.exit31.i:               ; preds = %if.then.i.i30.i, %if.end.i17._rtl88ee_set_bcn_ctrl_reg.exit31.i_crit_edge
  %47 = ptrtoint ptr %cfg.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i.i25.i, align 8
  %ops7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %ops7.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops7.i, align 4
  %set_hw_reg8.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %50, i32 0, i32 20
  %51 = ptrtoint ptr %set_hw_reg8.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_hw_reg8.i, align 4
  call void %52(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i12) #7
  br label %rtl88ee_set_check_bssid.exit18

rtl88ee_set_check_bssid.exit18:                   ; preds = %_rtl88ee_set_bcn_ctrl_reg.exit31.i, %if.else.rtl88ee_set_check_bssid.exit18_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr.i12) #7
  br label %cleanup

cleanup:                                          ; preds = %rtl88ee_set_check_bssid.exit18, %rtl88ee_set_check_bssid.exit, %if.then1.cleanup_crit_edge, %if.then1.cleanup_crit_edge19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then1.cleanup_crit_edge ], [ 0, %if.then1.cleanup_crit_edge19 ], [ 0, %rtl88ee_set_check_bssid.exit ], [ 0, %rtl88ee_set_check_bssid.exit18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_rtl88ee_set_media_status(ptr noundef %hw, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %2 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 258) #7
  %4 = and i8 %call.i, -4
  %5 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %type, label %do.end [
    i32 0, label %entry.land.lhs.true_crit_edge
    i32 1, label %entry.sw.bb2_crit_edge
    i32 7, label %entry.sw.bb2_crit_edge130
    i32 2, label %sw.bb3
    i32 3, label %if.end.thread125
  ]

entry.sw.bb2_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge130
  br label %land.lhs.true

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %type) #10
  br label %cleanup

if.end.thread125:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.52) #7
  br label %if.then24

land.lhs.true:                                    ; preds = %sw.bb3, %sw.bb2, %entry.land.lhs.true_crit_edge
  %.str.51.sink = phi ptr [ @.str.51, %sw.bb3 ], [ @.str.50, %sw.bb2 ], [ @.str.49, %entry.land.lhs.true_crit_edge ]
  %ledaction.0.ph = phi i32 [ 2, %sw.bb3 ], [ 3, %sw.bb2 ], [ 3, %entry.land.lhs.true_crit_edge ]
  %mode.0.ph = phi i8 [ 2, %sw.bb3 ], [ 1, %sw.bb2 ], [ 0, %entry.land.lhs.true_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull %.str.51.sink) #7
  %link_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %6 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp8 = icmp ult i32 %7, 2
  br i1 %cmp8, label %land.lhs.true.if.then16_crit_edge, label %if.end

land.lhs.true.if.then16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.end:                                           ; preds = %land.lhs.true
  %trunc = trunc i8 %mode.0.ph to i2
  %8 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.77)
  switch i2 %trunc, label %if.else25 [
    i2 0, label %if.end.if.then16_crit_edge
    i2 -2, label %if.end.if.then16_crit_edge131
    i2 1, label %if.end.if.then24_crit_edge
  ]

if.end.if.then24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

if.end.if.then16_crit_edge131:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.then16:                                        ; preds = %if.end.if.then16_crit_edge, %if.end.if.then16_crit_edge131, %land.lhs.true.if.then16_crit_edge
  %mode.1124 = phi i8 [ %mode.0.ph, %if.end.if.then16_crit_edge ], [ %mode.0.ph, %if.end.if.then16_crit_edge131 ], [ 0, %land.lhs.true.if.then16_crit_edge ]
  %ledaction.1122 = phi i32 [ %ledaction.0.ph, %if.end.if.then16_crit_edge ], [ %ledaction.0.ph, %if.end.if.then16_crit_edge131 ], [ 3, %land.lhs.true.if.then16_crit_edge ]
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 9
  %11 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %12(ptr noundef %10, i32 noundef 1058) #7
  %13 = and i8 %call.i.i, -65
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 5
  %14 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %15(ptr noundef %10, i32 noundef 1058, i8 noundef zeroext %13) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 32
  %16 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_readback.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i.i, label %if.then16.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.then16.rtl_write_byte.exit.i_crit_edge:        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i13.i = tail call zeroext i8 %21(ptr noundef %10, i32 noundef 1058) #7
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.then16.rtl_write_byte.exit.i_crit_edge
  %22 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %23(ptr noundef %10, i32 noundef 1345, i8 noundef zeroext 100) #7
  %24 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i16.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write_readback.i16.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %write_readback.i16.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i17.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i17.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge, label %if.then.i20.i

rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit21.i

if.then.i20.i:                                    ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i19.i = tail call zeroext i8 %29(ptr noundef %10, i32 noundef 1345) #7
  br label %rtl_write_byte.exit21.i

rtl_write_byte.exit21.i:                          ; preds = %if.then.i20.i, %rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge
  %30 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i23.i = tail call zeroext i8 %31(ptr noundef %10, i32 noundef 1346) #7
  %32 = and i8 %call.i23.i, -2
  %33 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %34(ptr noundef %10, i32 noundef 1346, i8 noundef zeroext %32) #7
  %35 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i26.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write_readback.i26.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %write_readback.i26.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i27.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i27.i, label %rtl_write_byte.exit21.i._rtl88ee_stop_tx_beacon.exit_crit_edge, label %if.then.i30.i

rtl_write_byte.exit21.i._rtl88ee_stop_tx_beacon.exit_crit_edge: ; preds = %rtl_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_stop_tx_beacon.exit

if.then.i30.i:                                    ; preds = %rtl_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i29.i = tail call zeroext i8 %40(ptr noundef %10, i32 noundef 1346) #7
  br label %_rtl88ee_stop_tx_beacon.exit

_rtl88ee_stop_tx_beacon.exit:                     ; preds = %if.then.i30.i, %rtl_write_byte.exit21.i._rtl88ee_stop_tx_beacon.exit_crit_edge
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i.i = getelementptr inbounds %struct.rtl_priv, ptr %42, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %43 = ptrtoint ptr %reg_bcn_ctrl_val.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg_bcn_ctrl_val.i.i, align 4
  %and.i.i = and i32 %44, -3
  store i32 %and.i.i, ptr %reg_bcn_ctrl_val.i.i, align 4
  %conv6.i.i = trunc i32 %and.i.i to i8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %42, i32 0, i32 13, i32 5
  %45 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %46(ptr noundef %42, i32 noundef 1360, i8 noundef zeroext %conv6.i.i) #7
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %42, i32 0, i32 32
  %47 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %write_readback.i.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i.i.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i.i.i, label %_rtl88ee_stop_tx_beacon.exit.if.end28_crit_edge, label %if.then.i.i.i

_rtl88ee_stop_tx_beacon.exit.if.end28_crit_edge:  ; preds = %_rtl88ee_stop_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then.i.i.i:                                    ; preds = %_rtl88ee_stop_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %42, i32 0, i32 13, i32 9
  %51 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %52(ptr noundef %42, i32 noundef 1360) #7
  br label %if.end28

if.then24:                                        ; preds = %if.end.if.then24_crit_edge, %if.end.thread125
  %mode.1129 = phi i8 [ 3, %if.end.thread125 ], [ 1, %if.end.if.then24_crit_edge ]
  %ledaction.1128 = phi i32 [ 2, %if.end.thread125 ], [ %ledaction.0.ph, %if.end.if.then24_crit_edge ]
  %53 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv, align 8
  %read8_sync.i.i67 = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 13, i32 9
  %55 = ptrtoint ptr %read8_sync.i.i67 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read8_sync.i.i67, align 4
  %call.i.i68 = tail call zeroext i8 %56(ptr noundef %54, i32 noundef 1058) #7
  %57 = or i8 %call.i.i68, 64
  %write8_async.i.i69 = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 13, i32 5
  %58 = ptrtoint ptr %write8_async.i.i69 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write8_async.i.i69, align 4
  tail call void %59(ptr noundef %54, i32 noundef 1058, i8 noundef zeroext %57) #7
  %cfg.i.i70 = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 32
  %60 = ptrtoint ptr %cfg.i.i70 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cfg.i.i70, align 8
  %write_readback.i.i71 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %write_readback.i.i71 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %write_readback.i.i71, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i.i72 = icmp eq i8 %63, 0
  br i1 %tobool.not.i.i72, label %if.then24.rtl_write_byte.exit.i77_crit_edge, label %if.then.i.i74

if.then24.rtl_write_byte.exit.i77_crit_edge:      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i77

if.then.i.i74:                                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %read8_sync.i.i67 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read8_sync.i.i67, align 4
  %call.i13.i73 = tail call zeroext i8 %65(ptr noundef %54, i32 noundef 1058) #7
  br label %rtl_write_byte.exit.i77

rtl_write_byte.exit.i77:                          ; preds = %if.then.i.i74, %if.then24.rtl_write_byte.exit.i77_crit_edge
  %66 = ptrtoint ptr %write8_async.i.i69 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write8_async.i.i69, align 4
  tail call void %67(ptr noundef %54, i32 noundef 1345, i8 noundef zeroext -1) #7
  %68 = ptrtoint ptr %cfg.i.i70 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cfg.i.i70, align 8
  %write_readback.i16.i75 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %write_readback.i16.i75 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %write_readback.i16.i75, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i17.i76 = icmp eq i8 %71, 0
  br i1 %tobool.not.i17.i76, label %rtl_write_byte.exit.i77.rtl_write_byte.exit21.i83_crit_edge, label %if.then.i20.i79

rtl_write_byte.exit.i77.rtl_write_byte.exit21.i83_crit_edge: ; preds = %rtl_write_byte.exit.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit21.i83

if.then.i20.i79:                                  ; preds = %rtl_write_byte.exit.i77
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %read8_sync.i.i67 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read8_sync.i.i67, align 4
  %call.i19.i78 = tail call zeroext i8 %73(ptr noundef %54, i32 noundef 1345) #7
  br label %rtl_write_byte.exit21.i83

rtl_write_byte.exit21.i83:                        ; preds = %if.then.i20.i79, %rtl_write_byte.exit.i77.rtl_write_byte.exit21.i83_crit_edge
  %74 = ptrtoint ptr %read8_sync.i.i67 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read8_sync.i.i67, align 4
  %call.i23.i80 = tail call zeroext i8 %75(ptr noundef %54, i32 noundef 1346) #7
  %76 = or i8 %call.i23.i80, 1
  %77 = ptrtoint ptr %write8_async.i.i69 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write8_async.i.i69, align 4
  tail call void %78(ptr noundef %54, i32 noundef 1346, i8 noundef zeroext %76) #7
  %79 = ptrtoint ptr %cfg.i.i70 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cfg.i.i70, align 8
  %write_readback.i26.i81 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %write_readback.i26.i81 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %write_readback.i26.i81, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i27.i82 = icmp eq i8 %82, 0
  br i1 %tobool.not.i27.i82, label %rtl_write_byte.exit21.i83._rtl88ee_resume_tx_beacon.exit_crit_edge, label %if.then.i30.i85

rtl_write_byte.exit21.i83._rtl88ee_resume_tx_beacon.exit_crit_edge: ; preds = %rtl_write_byte.exit21.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_resume_tx_beacon.exit

if.then.i30.i85:                                  ; preds = %rtl_write_byte.exit21.i83
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %read8_sync.i.i67 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read8_sync.i.i67, align 4
  %call.i29.i84 = tail call zeroext i8 %84(ptr noundef %54, i32 noundef 1346) #7
  br label %_rtl88ee_resume_tx_beacon.exit

_rtl88ee_resume_tx_beacon.exit:                   ; preds = %if.then.i30.i85, %rtl_write_byte.exit21.i83._rtl88ee_resume_tx_beacon.exit_crit_edge
  %85 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i.i87 = getelementptr inbounds %struct.rtl_priv, ptr %86, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %87 = ptrtoint ptr %reg_bcn_ctrl_val.i.i87 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %reg_bcn_ctrl_val.i.i87, align 4
  %or.i.i = or i32 %88, 2
  store i32 %or.i.i, ptr %reg_bcn_ctrl_val.i.i87, align 4
  %conv6.i.i88 = trunc i32 %or.i.i to i8
  %write8_async.i.i.i89 = getelementptr inbounds %struct.rtl_priv, ptr %86, i32 0, i32 13, i32 5
  %89 = ptrtoint ptr %write8_async.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write8_async.i.i.i89, align 4
  tail call void %90(ptr noundef %86, i32 noundef 1360, i8 noundef zeroext %conv6.i.i88) #7
  %cfg.i.i.i90 = getelementptr inbounds %struct.rtl_priv, ptr %86, i32 0, i32 32
  %91 = ptrtoint ptr %cfg.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cfg.i.i.i90, align 8
  %write_readback.i.i.i91 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %write_readback.i.i.i91 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %write_readback.i.i.i91, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i.i.i92 = icmp eq i8 %94, 0
  br i1 %tobool.not.i.i.i92, label %_rtl88ee_resume_tx_beacon.exit.if.end28_crit_edge, label %if.then.i.i.i95

_rtl88ee_resume_tx_beacon.exit.if.end28_crit_edge: ; preds = %_rtl88ee_resume_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then.i.i.i95:                                  ; preds = %_rtl88ee_resume_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i.i93 = getelementptr inbounds %struct.rtl_priv, ptr %86, i32 0, i32 13, i32 9
  %95 = ptrtoint ptr %read8_sync.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %read8_sync.i.i.i93, align 4
  %call.i.i.i94 = tail call zeroext i8 %96(ptr noundef %86, i32 noundef 1360) #7
  br label %if.end28

if.else25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.55, i32 noundef 2) #7
  br label %if.end28

if.end28:                                         ; preds = %if.else25, %if.then.i.i.i95, %_rtl88ee_resume_tx_beacon.exit.if.end28_crit_edge, %if.then.i.i.i, %_rtl88ee_stop_tx_beacon.exit.if.end28_crit_edge
  %mode.1123 = phi i8 [ 0, %if.else25 ], [ %mode.1124, %_rtl88ee_stop_tx_beacon.exit.if.end28_crit_edge ], [ %mode.1124, %if.then.i.i.i ], [ %mode.1129, %_rtl88ee_resume_tx_beacon.exit.if.end28_crit_edge ], [ %mode.1129, %if.then.i.i.i95 ]
  %ledaction.1121 = phi i32 [ %ledaction.0.ph, %if.else25 ], [ %ledaction.1122, %_rtl88ee_stop_tx_beacon.exit.if.end28_crit_edge ], [ %ledaction.1122, %if.then.i.i.i ], [ %ledaction.1128, %_rtl88ee_resume_tx_beacon.exit.if.end28_crit_edge ], [ %ledaction.1128, %if.then.i.i.i95 ]
  %or64 = or i8 %mode.1123, %4
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %97 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write8_async.i, align 4
  tail call void %98(ptr noundef %1, i32 noundef 258, i8 noundef zeroext %or64) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %99 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %write_readback.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i = icmp eq i8 %102, 0
  br i1 %tobool.not.i, label %if.end28.rtl_write_byte.exit_crit_edge, label %if.then.i

if.end28.rtl_write_byte.exit_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read8_sync.i, align 4
  %call.i97 = tail call zeroext i8 %104(ptr noundef %1, i32 noundef 258) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.end28.rtl_write_byte.exit_crit_edge
  %105 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cfg.i, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops, align 4
  %led_control = getelementptr inbounds %struct.rtl_hal_ops, ptr %108, i32 0, i32 36
  %109 = ptrtoint ptr %led_control to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %led_control, align 4
  tail call void %110(ptr noundef %hw, i32 noundef %ledaction.1121) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %mode.1123)
  %cmp33 = icmp eq i8 %mode.1123, 3
  %111 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %write8_async.i, align 4
  br i1 %cmp33, label %if.then35, label %if.else36

if.then35:                                        ; preds = %rtl_write_byte.exit
  tail call void %112(ptr noundef %1, i32 noundef 1297, i8 noundef zeroext 0) #7
  %113 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cfg.i, align 8
  %write_readback.i100 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %write_readback.i100 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %write_readback.i100, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i101 = icmp eq i8 %116, 0
  br i1 %tobool.not.i101, label %if.then35.cleanup_crit_edge, label %if.then.i104

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i104:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %read8_sync.i, align 4
  %call.i103 = tail call zeroext i8 %118(ptr noundef %1, i32 noundef 1297) #7
  br label %cleanup

if.else36:                                        ; preds = %rtl_write_byte.exit
  tail call void %112(ptr noundef %1, i32 noundef 1297, i8 noundef zeroext 102) #7
  %119 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cfg.i, align 8
  %write_readback.i108 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %write_readback.i108 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %write_readback.i108, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool.not.i109 = icmp eq i8 %122, 0
  br i1 %tobool.not.i109, label %if.else36.cleanup_crit_edge, label %if.then.i112

if.else36.cleanup_crit_edge:                      ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i112:                                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %read8_sync.i, align 4
  %call.i111 = tail call zeroext i8 %124(ptr noundef %1, i32 noundef 1297) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i112, %if.else36.cleanup_crit_edge, %if.then.i104, %if.then35.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %if.then35.cleanup_crit_edge ], [ 0, %if.then.i104 ], [ 0, %if.else36.cleanup_crit_edge ], [ 0, %if.then.i112 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_set_qos(ptr noundef %hw, i32 noundef %aci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @rtl88e_dm_init_edca_turbo(ptr noundef %hw) #7
  %2 = zext i32 %aci to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %aci, label %land.end [
    i32 1, label %sw.bb
    i32 0, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %3 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write32_async.i, align 4
  tail call void %4(ptr noundef %1, i32 noundef 1292, i32 noundef 42063) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %write_readback.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %9 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %10(ptr noundef %1, i32 noundef 1292) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %write32_async.i42 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %11 = ptrtoint ptr %write32_async.i42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write32_async.i42, align 4
  tail call void %12(ptr noundef %1, i32 noundef 1284, i32 noundef 6177570) #7
  %cfg.i43 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %13 = ptrtoint ptr %cfg.i43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg.i43, align 8
  %write_readback.i44 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %write_readback.i44 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %write_readback.i44, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i45 = icmp eq i8 %16, 0
  br i1 %tobool.not.i45, label %sw.bb1.sw.epilog_crit_edge, label %if.then.i48

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i48:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i46 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %17 = ptrtoint ptr %read32_sync.i46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32_sync.i46, align 4
  %call.i47 = tail call i32 %18(ptr noundef %1, i32 noundef 1284) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %write32_async.i50 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %19 = ptrtoint ptr %write32_async.i50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32_async.i50, align 4
  tail call void %20(ptr noundef %1, i32 noundef 1280, i32 noundef 3093026) #7
  %cfg.i51 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %21 = ptrtoint ptr %cfg.i51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg.i51, align 8
  %write_readback.i52 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %write_readback.i52 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %write_readback.i52, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i53 = icmp eq i8 %24, 0
  br i1 %tobool.not.i53, label %sw.bb2.sw.epilog_crit_edge, label %if.then.i56

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i56:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i54 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %25 = ptrtoint ptr %read32_sync.i54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32_sync.i54, align 4
  %call.i55 = tail call i32 %26(ptr noundef %1, i32 noundef 1280) #7
  br label %sw.epilog

land.end:                                         ; preds = %entry
  %.b41 = load i1, ptr @rtl88ee_set_qos.__already_done, align 1
  br i1 %.b41, label %land.end.sw.epilog_crit_edge, label %if.then, !prof !161

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rtl88ee_set_qos.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1325, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %aci) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %land.end.sw.epilog_crit_edge, %if.then.i56, %sw.bb2.sw.epilog_crit_edge, %if.then.i48, %sw.bb1.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_enable_interrupt(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %irq_mask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_mask, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %4 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32_async.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef 176, i32 noundef %3) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.rtl_write_dword.exit_crit_edge, label %if.then.i

entry.rtl_write_dword.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %10 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %11(ptr noundef %1, i32 noundef 176) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %arrayidx4 = getelementptr %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  %14 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32_async.i, align 4
  tail call void %15(ptr noundef %1, i32 noundef 184, i32 noundef %13) #7
  %16 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i, align 8
  %write_readback.i16 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_readback.i16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_readback.i16, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i17 = icmp eq i8 %19, 0
  br i1 %tobool.not.i17, label %rtl_write_dword.exit.rtl_write_dword.exit21_crit_edge, label %if.then.i20

rtl_write_dword.exit.rtl_write_dword.exit21_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit21

if.then.i20:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i18 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %20 = ptrtoint ptr %read32_sync.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32_sync.i18, align 4
  %call.i19 = tail call i32 %21(ptr noundef %1, i32 noundef 184) #7
  br label %rtl_write_dword.exit21

rtl_write_dword.exit21:                           ; preds = %if.then.i20, %rtl_write_dword.exit.rtl_write_dword.exit21_crit_edge
  %irq_enabled = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %22 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %irq_enabled, align 4
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %23 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write8_async.i, align 4
  tail call void %24(ptr noundef %1, i32 noundef 431, i8 noundef zeroext 0) #7
  %25 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.i, align 8
  %write_readback.i23 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %write_readback.i23 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %write_readback.i23, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i24 = icmp eq i8 %28, 0
  br i1 %tobool.not.i24, label %rtl_write_dword.exit21.rtl_write_byte.exit_crit_edge, label %if.then.i26

rtl_write_dword.exit21.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_dword.exit21
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i26:                                      ; preds = %rtl_write_dword.exit21
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %29 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read8_sync.i, align 4
  %call.i25 = tail call zeroext i8 %30(ptr noundef %1, i32 noundef 431) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i26, %rtl_write_dword.exit21.rtl_write_byte.exit_crit_edge
  %sys_irq_mask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1
  %31 = ptrtoint ptr %sys_irq_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sys_irq_mask, align 4
  %33 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write32_async.i, align 4
  tail call void %34(ptr noundef %1, i32 noundef 88, i32 noundef %32) #7
  %35 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i, align 8
  %write_readback.i29 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write_readback.i29 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %write_readback.i29, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i30 = icmp eq i8 %38, 0
  br i1 %tobool.not.i30, label %rtl_write_byte.exit.rtl_write_dword.exit34_crit_edge, label %if.then.i33

rtl_write_byte.exit.rtl_write_dword.exit34_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit34

if.then.i33:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i31 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %39 = ptrtoint ptr %read32_sync.i31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read32_sync.i31, align 4
  %call.i32 = tail call i32 %40(ptr noundef %1, i32 noundef 88) #7
  br label %rtl_write_dword.exit34

rtl_write_dword.exit34:                           ; preds = %if.then.i33, %rtl_write_byte.exit.rtl_write_dword.exit34_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_disable_interrupt(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %2 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write32_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 176, i32 noundef 0) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_dword.exit_crit_edge, label %if.then.i

entry.rtl_write_dword.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %8 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %9(ptr noundef %1, i32 noundef 176) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %10 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32_async.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef 184, i32 noundef 0) #7
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 8
  %write_readback.i7 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_readback.i7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %write_readback.i7, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i8 = icmp eq i8 %15, 0
  br i1 %tobool.not.i8, label %rtl_write_dword.exit.rtl_write_dword.exit12_crit_edge, label %if.then.i11

rtl_write_dword.exit.rtl_write_dword.exit12_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit12

if.then.i11:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i9 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %16 = ptrtoint ptr %read32_sync.i9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32_sync.i9, align 4
  %call.i10 = tail call i32 %17(ptr noundef %1, i32 noundef 184) #7
  br label %rtl_write_dword.exit12

rtl_write_dword.exit12:                           ; preds = %if.then.i11, %rtl_write_dword.exit.rtl_write_dword.exit12_crit_edge
  %irq_enabled = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %18 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %irq_enabled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_card_disable(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.24) #7
  %link_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %link_state, align 8
  %call = tail call fastcc i32 @_rtl88ee_set_media_status(ptr noundef %hw, i32 noundef 0)
  %driver_is_goingto_unload = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 1
  %3 = ptrtoint ptr %driver_is_goingto_unload to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %driver_is_goingto_unload, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %rfoff_reason = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 18
  %5 = ptrtoint ptr %rfoff_reason to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rfoff_reason, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %6)
  %cmp = icmp ugt i32 %6, 536870912
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %led_control = getelementptr inbounds %struct.rtl_hal_ops, ptr %10, i32 0, i32 36
  %11 = ptrtoint ptr %led_control to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %led_control, align 4
  tail call void %12(ptr noundef %hw, i32 noundef 7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %cur_ps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %13 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_ps_level, align 4
  %or = or i32 %14, 8
  store i32 %or, ptr %cur_ps_level, align 4
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %mac_func_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 10, i32 6
  %17 = ptrtoint ptr %mac_func_enable.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %mac_func_enable.i, align 1
  %intf_ops.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 33
  %18 = ptrtoint ptr %intf_ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf_ops.i, align 4
  %enable_aspm.i = getelementptr inbounds %struct.rtl_intf_ops, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %enable_aspm.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %enable_aspm.i, align 4
  tail call void %21(ptr noundef %hw) #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %16, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.56) #7
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 9
  %22 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %23(ptr noundef %16, i32 noundef 1260) #7
  %24 = and i8 %call.i.i, -3
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 5
  %25 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %26(ptr noundef %16, i32 noundef 1260, i8 noundef zeroext %24) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 32
  %27 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %write_readback.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i.i, label %if.end.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.end.rtl_write_byte.exit.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i86.i = tail call zeroext i8 %32(ptr noundef %16, i32 noundef 1260) #7
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.end.rtl_write_byte.exit.i_crit_edge
  %33 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i88.i = tail call zeroext i8 %34(ptr noundef %16, i32 noundef 646) #7
  %35 = and i8 %call.i88.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not208.i = icmp eq i8 %35, 0
  br i1 %tobool.not208.i, label %rtl_write_byte.exit.i.while.body.i_crit_edge, label %rtl_write_byte.exit.i.while.end.i_crit_edge

rtl_write_byte.exit.i.while.end.i_crit_edge:      ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

rtl_write_byte.exit.i.while.body.i_crit_edge:     ; preds = %rtl_write_byte.exit.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %rtl_write_byte.exit.i.while.body.i_crit_edge
  %count.0209.i = phi i32 [ %inc9.i, %while.body.i.while.body.i_crit_edge ], [ 0, %rtl_write_byte.exit.i.while.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 2147480) #7
  %37 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i90.i = tail call zeroext i8 %38(ptr noundef %16, i32 noundef 646) #7
  %inc9.i = add nuw nsw i32 %count.0209.i, 2
  %39 = and i8 %call.i90.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i = icmp eq i8 %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %count.0209.i)
  %cmp.i = icmp ult i32 %count.0209.i, 98
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %rtl_write_byte.exit.i.while.end.i_crit_edge
  %40 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %41(ptr noundef %16, i32 noundef 769, i8 noundef zeroext -1) #7
  %42 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i93.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %write_readback.i93.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %write_readback.i93.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i94.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i94.i, label %while.end.i.rtl_write_byte.exit98.i_crit_edge, label %if.then.i97.i

while.end.i.rtl_write_byte.exit98.i_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit98.i

if.then.i97.i:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i96.i = tail call zeroext i8 %47(ptr noundef %16, i32 noundef 769) #7
  br label %rtl_write_byte.exit98.i

rtl_write_byte.exit98.i:                          ; preds = %if.then.i97.i, %while.end.i.rtl_write_byte.exit98.i_crit_edge
  %call10.i = tail call zeroext i1 @rtl_hal_pwrseqcmdparsing(ptr noundef %16, i8 noundef zeroext -1, i8 noundef zeroext 15, i8 noundef zeroext 4, ptr noundef nonnull @rtl8188ee_enter_lps_flow) #7
  %48 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %49(ptr noundef %16, i32 noundef 31, i8 noundef zeroext 0) #7
  %50 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i101.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %write_readback.i101.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %write_readback.i101.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i102.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i102.i, label %rtl_write_byte.exit98.i.rtl_write_byte.exit106.i_crit_edge, label %if.then.i105.i

rtl_write_byte.exit98.i.rtl_write_byte.exit106.i_crit_edge: ; preds = %rtl_write_byte.exit98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit106.i

if.then.i105.i:                                   ; preds = %rtl_write_byte.exit98.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i104.i = tail call zeroext i8 %55(ptr noundef %16, i32 noundef 31) #7
  br label %rtl_write_byte.exit106.i

rtl_write_byte.exit106.i:                         ; preds = %if.then.i105.i, %rtl_write_byte.exit98.i.rtl_write_byte.exit106.i_crit_edge
  %56 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i108.i = tail call zeroext i8 %57(ptr noundef %16, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i108.i)
  %tobool14.not.i = icmp sgt i8 %call.i108.i, -1
  br i1 %tobool14.not.i, label %rtl_write_byte.exit106.i.if.end.i_crit_edge, label %land.lhs.true.i

rtl_write_byte.exit106.i.if.end.i_crit_edge:      ; preds = %rtl_write_byte.exit106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %rtl_write_byte.exit106.i
  %fw_ready.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 10, i32 38
  %58 = ptrtoint ptr %fw_ready.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %fw_ready.i, align 2, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool15.not.i = icmp eq i8 %59, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl88e_firmware_selfreset(ptr noundef %hw) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %rtl_write_byte.exit106.i.if.end.i_crit_edge
  %60 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i110.i = tail call zeroext i8 %61(ptr noundef %16, i32 noundef 3) #7
  %62 = and i8 %call.i110.i, -5
  %63 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %64(ptr noundef %16, i32 noundef 3, i8 noundef zeroext %62) #7
  %65 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i113.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %write_readback.i113.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %write_readback.i113.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i114.i = icmp eq i8 %68, 0
  br i1 %tobool.not.i114.i, label %if.end.i.rtl_write_byte.exit118.i_crit_edge, label %if.then.i117.i

if.end.i.rtl_write_byte.exit118.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit118.i

if.then.i117.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i116.i = tail call zeroext i8 %70(ptr noundef %16, i32 noundef 3) #7
  br label %rtl_write_byte.exit118.i

rtl_write_byte.exit118.i:                         ; preds = %if.then.i117.i, %if.end.i.rtl_write_byte.exit118.i_crit_edge
  %71 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %72(ptr noundef %16, i32 noundef 128, i8 noundef zeroext 0) #7
  %73 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i121.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %write_readback.i121.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %write_readback.i121.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i122.i = icmp eq i8 %76, 0
  br i1 %tobool.not.i122.i, label %rtl_write_byte.exit118.i.rtl_write_byte.exit126.i_crit_edge, label %if.then.i125.i

rtl_write_byte.exit118.i.rtl_write_byte.exit126.i_crit_edge: ; preds = %rtl_write_byte.exit118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit126.i

if.then.i125.i:                                   ; preds = %rtl_write_byte.exit118.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i124.i = tail call zeroext i8 %78(ptr noundef %16, i32 noundef 128) #7
  br label %rtl_write_byte.exit126.i

rtl_write_byte.exit126.i:                         ; preds = %if.then.i125.i, %rtl_write_byte.exit118.i.rtl_write_byte.exit126.i_crit_edge
  %79 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i128.i = tail call zeroext i8 %80(ptr noundef %16, i32 noundef 404) #7
  %81 = and i8 %call.i128.i, -2
  %82 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %83(ptr noundef %16, i32 noundef 404, i8 noundef zeroext %81) #7
  %84 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i131.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %write_readback.i131.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %write_readback.i131.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i132.i = icmp eq i8 %87, 0
  br i1 %tobool.not.i132.i, label %rtl_write_byte.exit126.i.rtl_write_byte.exit136.i_crit_edge, label %if.then.i135.i

rtl_write_byte.exit126.i.rtl_write_byte.exit136.i_crit_edge: ; preds = %rtl_write_byte.exit126.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit136.i

if.then.i135.i:                                   ; preds = %rtl_write_byte.exit126.i
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i134.i = tail call zeroext i8 %89(ptr noundef %16, i32 noundef 404) #7
  br label %rtl_write_byte.exit136.i

rtl_write_byte.exit136.i:                         ; preds = %if.then.i135.i, %rtl_write_byte.exit126.i.rtl_write_byte.exit136.i_crit_edge
  %call25.i = tail call zeroext i1 @rtl_hal_pwrseqcmdparsing(ptr noundef %16, i8 noundef zeroext -1, i8 noundef zeroext 15, i8 noundef zeroext 4, ptr noundef nonnull @rtl8188ee_card_disable_flow) #7
  %90 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i138.i = tail call zeroext i8 %91(ptr noundef %16, i32 noundef 29) #7
  %92 = and i8 %call.i138.i, -9
  %93 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %94(ptr noundef %16, i32 noundef 29, i8 noundef zeroext %92) #7
  %95 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i141.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %write_readback.i141.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %write_readback.i141.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i142.i = icmp eq i8 %98, 0
  br i1 %tobool.not.i142.i, label %rtl_write_byte.exit136.i.rtl_write_byte.exit146.i_crit_edge, label %if.then.i145.i

rtl_write_byte.exit136.i.rtl_write_byte.exit146.i_crit_edge: ; preds = %rtl_write_byte.exit136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit146.i

if.then.i145.i:                                   ; preds = %rtl_write_byte.exit136.i
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i144.i = tail call zeroext i8 %100(ptr noundef %16, i32 noundef 29) #7
  br label %rtl_write_byte.exit146.i

rtl_write_byte.exit146.i:                         ; preds = %if.then.i145.i, %rtl_write_byte.exit136.i.rtl_write_byte.exit146.i_crit_edge
  %101 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i148.i = tail call zeroext i8 %102(ptr noundef %16, i32 noundef 29) #7
  %103 = or i8 %call.i148.i, 8
  %104 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %105(ptr noundef %16, i32 noundef 29, i8 noundef zeroext %103) #7
  %106 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i151.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %write_readback.i151.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %write_readback.i151.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i152.i = icmp eq i8 %109, 0
  br i1 %tobool.not.i152.i, label %rtl_write_byte.exit146.i.rtl_write_byte.exit156.i_crit_edge, label %if.then.i155.i

rtl_write_byte.exit146.i.rtl_write_byte.exit156.i_crit_edge: ; preds = %rtl_write_byte.exit146.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit156.i

if.then.i155.i:                                   ; preds = %rtl_write_byte.exit146.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i154.i = tail call zeroext i8 %111(ptr noundef %16, i32 noundef 29) #7
  br label %rtl_write_byte.exit156.i

rtl_write_byte.exit156.i:                         ; preds = %if.then.i155.i, %rtl_write_byte.exit146.i.rtl_write_byte.exit156.i_crit_edge
  %112 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %113(ptr noundef %16, i32 noundef 28, i8 noundef zeroext 14) #7
  %114 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i159.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %write_readback.i159.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %write_readback.i159.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i160.i = icmp eq i8 %117, 0
  br i1 %tobool.not.i160.i, label %rtl_write_byte.exit156.i.rtl_write_byte.exit164.i_crit_edge, label %if.then.i163.i

rtl_write_byte.exit156.i.rtl_write_byte.exit164.i_crit_edge: ; preds = %rtl_write_byte.exit156.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit164.i

if.then.i163.i:                                   ; preds = %rtl_write_byte.exit156.i
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i162.i = tail call zeroext i8 %119(ptr noundef %16, i32 noundef 28) #7
  br label %rtl_write_byte.exit164.i

rtl_write_byte.exit164.i:                         ; preds = %if.then.i163.i, %rtl_write_byte.exit156.i.rtl_write_byte.exit164.i_crit_edge
  %120 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i166.i = tail call zeroext i8 %121(ptr noundef %16, i32 noundef 68) #7
  %122 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %123(ptr noundef %16, i32 noundef 69, i8 noundef zeroext %call.i166.i) #7
  %124 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i169.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %write_readback.i169.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %write_readback.i169.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool.not.i170.i = icmp eq i8 %127, 0
  br i1 %tobool.not.i170.i, label %rtl_write_byte.exit164.i.rtl_write_byte.exit174.i_crit_edge, label %if.then.i173.i

rtl_write_byte.exit164.i.rtl_write_byte.exit174.i_crit_edge: ; preds = %rtl_write_byte.exit164.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit174.i

if.then.i173.i:                                   ; preds = %rtl_write_byte.exit164.i
  call void @__sanitizer_cov_trace_pc() #9
  %128 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i172.i = tail call zeroext i8 %129(ptr noundef %16, i32 noundef 69) #7
  br label %rtl_write_byte.exit174.i

rtl_write_byte.exit174.i:                         ; preds = %if.then.i173.i, %rtl_write_byte.exit164.i.rtl_write_byte.exit174.i_crit_edge
  %130 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %131(ptr noundef %16, i32 noundef 70, i8 noundef zeroext 127) #7
  %132 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i177.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %write_readback.i177.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %write_readback.i177.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i178.i = icmp eq i8 %135, 0
  br i1 %tobool.not.i178.i, label %rtl_write_byte.exit174.i.rtl_write_byte.exit182.i_crit_edge, label %if.then.i181.i

rtl_write_byte.exit174.i.rtl_write_byte.exit182.i_crit_edge: ; preds = %rtl_write_byte.exit174.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit182.i

if.then.i181.i:                                   ; preds = %rtl_write_byte.exit174.i
  call void @__sanitizer_cov_trace_pc() #9
  %136 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i180.i = tail call zeroext i8 %137(ptr noundef %16, i32 noundef 70) #7
  br label %rtl_write_byte.exit182.i

rtl_write_byte.exit182.i:                         ; preds = %if.then.i181.i, %rtl_write_byte.exit174.i.rtl_write_byte.exit182.i_crit_edge
  %138 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i184.i = tail call zeroext i8 %139(ptr noundef %16, i32 noundef 66) #7
  %shl.i = shl i8 %call.i184.i, 4
  %or37.i = or i8 %shl.i, %call.i184.i
  %140 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %141(ptr noundef %16, i32 noundef 66, i8 noundef zeroext %or37.i) #7
  %142 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i187.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %write_readback.i187.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %write_readback.i187.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool.not.i188.i = icmp eq i8 %145, 0
  br i1 %tobool.not.i188.i, label %rtl_write_byte.exit182.i.rtl_write_byte.exit192.i_crit_edge, label %if.then.i191.i

rtl_write_byte.exit182.i.rtl_write_byte.exit192.i_crit_edge: ; preds = %rtl_write_byte.exit182.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit192.i

if.then.i191.i:                                   ; preds = %rtl_write_byte.exit182.i
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i190.i = tail call zeroext i8 %147(ptr noundef %16, i32 noundef 66) #7
  br label %rtl_write_byte.exit192.i

rtl_write_byte.exit192.i:                         ; preds = %if.then.i191.i, %rtl_write_byte.exit182.i.rtl_write_byte.exit192.i_crit_edge
  %148 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i194.i = tail call zeroext i8 %149(ptr noundef %16, i32 noundef 67) #7
  %150 = or i8 %call.i194.i, 15
  %151 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %152(ptr noundef %16, i32 noundef 67, i8 noundef zeroext %150) #7
  %153 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i197.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %write_readback.i197.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %write_readback.i197.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool.not.i198.i = icmp eq i8 %156, 0
  br i1 %tobool.not.i198.i, label %rtl_write_byte.exit192.i.rtl_write_byte.exit202.i_crit_edge, label %if.then.i201.i

rtl_write_byte.exit192.i.rtl_write_byte.exit202.i_crit_edge: ; preds = %rtl_write_byte.exit192.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit202.i

if.then.i201.i:                                   ; preds = %rtl_write_byte.exit192.i
  call void @__sanitizer_cov_trace_pc() #9
  %157 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i200.i = tail call zeroext i8 %158(ptr noundef %16, i32 noundef 67) #7
  br label %rtl_write_byte.exit202.i

rtl_write_byte.exit202.i:                         ; preds = %if.then.i201.i, %rtl_write_byte.exit192.i.rtl_write_byte.exit202.i_crit_edge
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 7
  %159 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %160(ptr noundef %16, i32 noundef 100, i32 noundef 526344) #7
  %161 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i204.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %write_readback.i204.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %write_readback.i204.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i205.i = icmp eq i8 %164, 0
  br i1 %tobool.not.i205.i, label %rtl_write_byte.exit202.i._rtl88ee_poweroff_adapter.exit_crit_edge, label %if.then.i207.i

rtl_write_byte.exit202.i._rtl88ee_poweroff_adapter.exit_crit_edge: ; preds = %rtl_write_byte.exit202.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_poweroff_adapter.exit

if.then.i207.i:                                   ; preds = %rtl_write_byte.exit202.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 11
  %165 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i206.i = tail call i32 %166(ptr noundef %16, i32 noundef 100) #7
  br label %_rtl88ee_poweroff_adapter.exit

_rtl88ee_poweroff_adapter.exit:                   ; preds = %if.then.i207.i, %rtl_write_byte.exit202.i._rtl88ee_poweroff_adapter.exit_crit_edge
  %iqk_initialized = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 31
  %167 = ptrtoint ptr %iqk_initialized to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %iqk_initialized, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_interrupt_recognized(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %intvec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef 180) #7
  %irq_mask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %4 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_mask, align 4
  %and = and i32 %5, %call.i
  %6 = ptrtoint ptr %intvec to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %intvec, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %7 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write32_async.i, align 4
  tail call void %8(ptr noundef %1, i32 noundef 180, i32 noundef %and) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %write_readback.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %entry.rtl_write_dword.exit_crit_edge, label %if.then.i

entry.rtl_write_dword.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32_sync.i, align 4
  %call.i18 = tail call i32 %14(ptr noundef %1, i32 noundef 180) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %15 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read32_sync.i, align 4
  %call.i20 = tail call i32 %16(ptr noundef %1, i32 noundef 188) #7
  %arrayidx6 = getelementptr %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx6, align 4
  %and7 = and i32 %18, %call.i20
  %intb = getelementptr inbounds %struct.rtl_int, ptr %intvec, i32 0, i32 1
  %19 = ptrtoint ptr %intb to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and7, ptr %intb, align 4
  %20 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write32_async.i, align 4
  tail call void %21(ptr noundef %1, i32 noundef 188, i32 noundef %and7) #7
  %22 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg.i, align 8
  %write_readback.i23 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write_readback.i23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %write_readback.i23, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i24 = icmp eq i8 %25, 0
  br i1 %tobool.not.i24, label %rtl_write_dword.exit.rtl_write_dword.exit28_crit_edge, label %if.then.i27

rtl_write_dword.exit.rtl_write_dword.exit28_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit28

if.then.i27:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32_sync.i, align 4
  %call.i26 = tail call i32 %27(ptr noundef %1, i32 noundef 188) #7
  br label %rtl_write_dword.exit28

rtl_write_dword.exit28:                           ; preds = %if.then.i27, %rtl_write_dword.exit.rtl_write_dword.exit28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_set_beacon_related_registers(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %beacon_interval = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 54
  %2 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %beacon_interval, align 8
  %conv = trunc i32 %3 to i16
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %4 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef 176, i32 noundef 0) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i, label %entry.rtl_write_dword.exit.i_crit_edge, label %if.then.i.i

entry.rtl_write_dword.exit.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %10 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %1, i32 noundef 176) #7
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i, %entry.rtl_write_dword.exit.i_crit_edge
  %12 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef 184, i32 noundef 0) #7
  %14 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_readback.i7.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_readback.i7.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i8.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i8.i, label %rtl_write_dword.exit.i.rtl88ee_disable_interrupt.exit_crit_edge, label %if.then.i11.i

rtl_write_dword.exit.i.rtl88ee_disable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl88ee_disable_interrupt.exit

if.then.i11.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %18 = ptrtoint ptr %read32_sync.i9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32_sync.i9.i, align 4
  %call.i10.i = tail call i32 %19(ptr noundef %1, i32 noundef 184) #7
  br label %rtl88ee_disable_interrupt.exit

rtl88ee_disable_interrupt.exit:                   ; preds = %if.then.i11.i, %rtl_write_dword.exit.i.rtl88ee_disable_interrupt.exit_crit_edge
  %irq_enabled.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %20 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %irq_enabled.i, align 4
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %21 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write16_async.i, align 4
  tail call void %22(ptr noundef %1, i32 noundef 1370, i16 noundef zeroext 2) #7
  %23 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %write_readback.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %rtl88ee_disable_interrupt.exit.rtl_write_word.exit_crit_edge, label %if.then.i

rtl88ee_disable_interrupt.exit.rtl_write_word.exit_crit_edge: ; preds = %rtl88ee_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %rtl88ee_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %27 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %28(ptr noundef %1, i32 noundef 1370) #7
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %rtl88ee_disable_interrupt.exit.rtl_write_word.exit_crit_edge
  %29 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write16_async.i, align 4
  tail call void %30(ptr noundef %1, i32 noundef 1364, i16 noundef zeroext %conv) #7
  %31 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i18 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_readback.i18 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %write_readback.i18, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i19 = icmp eq i8 %34, 0
  br i1 %tobool.not.i19, label %rtl_write_word.exit.rtl_write_word.exit23_crit_edge, label %if.then.i22

rtl_write_word.exit.rtl_write_word.exit23_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit23

if.then.i22:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i20 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %35 = ptrtoint ptr %read16_sync.i20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read16_sync.i20, align 4
  %call.i21 = tail call zeroext i16 %36(ptr noundef %1, i32 noundef 1364) #7
  br label %rtl_write_word.exit23

rtl_write_word.exit23:                            ; preds = %if.then.i22, %rtl_write_word.exit.rtl_write_word.exit23_crit_edge
  %37 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write16_async.i, align 4
  tail call void %38(ptr noundef %1, i32 noundef 1296, i16 noundef zeroext 26127) #7
  %39 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i26 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %write_readback.i26 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %write_readback.i26, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i27 = icmp eq i8 %42, 0
  br i1 %tobool.not.i27, label %rtl_write_word.exit23.rtl_write_word.exit31_crit_edge, label %if.then.i30

rtl_write_word.exit23.rtl_write_word.exit31_crit_edge: ; preds = %rtl_write_word.exit23
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit31

if.then.i30:                                      ; preds = %rtl_write_word.exit23
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i28 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %43 = ptrtoint ptr %read16_sync.i28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read16_sync.i28, align 4
  %call.i29 = tail call zeroext i16 %44(ptr noundef %1, i32 noundef 1296) #7
  br label %rtl_write_word.exit31

rtl_write_word.exit31:                            ; preds = %if.then.i30, %rtl_write_word.exit23.rtl_write_word.exit31_crit_edge
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %45 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write8_async.i, align 4
  tail call void %46(ptr noundef %1, i32 noundef 1374, i8 noundef zeroext 24) #7
  %47 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i33 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %write_readback.i33 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %write_readback.i33, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i34 = icmp eq i8 %50, 0
  br i1 %tobool.not.i34, label %rtl_write_word.exit31.rtl_write_byte.exit_crit_edge, label %if.then.i36

rtl_write_word.exit31.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_word.exit31
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i36:                                      ; preds = %rtl_write_word.exit31
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %51 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read8_sync.i, align 4
  %call.i35 = tail call zeroext i8 %52(ptr noundef %1, i32 noundef 1374) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i36, %rtl_write_word.exit31.rtl_write_byte.exit_crit_edge
  %53 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write8_async.i, align 4
  tail call void %54(ptr noundef %1, i32 noundef 1375, i8 noundef zeroext 24) #7
  %55 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i39 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write_readback.i39 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %write_readback.i39, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i40 = icmp eq i8 %58, 0
  br i1 %tobool.not.i40, label %rtl_write_byte.exit.rtl_write_byte.exit44_crit_edge, label %if.then.i43

rtl_write_byte.exit.rtl_write_byte.exit44_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit44

if.then.i43:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i41 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %59 = ptrtoint ptr %read8_sync.i41 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read8_sync.i41, align 4
  %call.i42 = tail call zeroext i8 %60(ptr noundef %1, i32 noundef 1375) #7
  br label %rtl_write_byte.exit44

rtl_write_byte.exit44:                            ; preds = %if.then.i43, %rtl_write_byte.exit.rtl_write_byte.exit44_crit_edge
  %61 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write8_async.i, align 4
  tail call void %62(ptr noundef %1, i32 noundef 1542, i8 noundef zeroext 48) #7
  %63 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i47 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %write_readback.i47 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %write_readback.i47, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i48 = icmp eq i8 %66, 0
  br i1 %tobool.not.i48, label %rtl_write_byte.exit44.rtl_write_byte.exit52_crit_edge, label %if.then.i51

rtl_write_byte.exit44.rtl_write_byte.exit52_crit_edge: ; preds = %rtl_write_byte.exit44
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit52

if.then.i51:                                      ; preds = %rtl_write_byte.exit44
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i49 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %67 = ptrtoint ptr %read8_sync.i49 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read8_sync.i49, align 4
  %call.i50 = tail call zeroext i8 %68(ptr noundef %1, i32 noundef 1542) #7
  br label %rtl_write_byte.exit52

rtl_write_byte.exit52:                            ; preds = %if.then.i51, %rtl_write_byte.exit44.rtl_write_byte.exit52_crit_edge
  %reg_bcn_ctrl_val = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %69 = ptrtoint ptr %reg_bcn_ctrl_val to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %reg_bcn_ctrl_val, align 4
  %or = or i32 %70, 8
  store i32 %or, ptr %reg_bcn_ctrl_val, align 4
  %conv5 = trunc i32 %or to i8
  %71 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write8_async.i, align 4
  tail call void %72(ptr noundef %1, i32 noundef 1360, i8 noundef zeroext %conv5) #7
  %73 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i55 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %write_readback.i55 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %write_readback.i55, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i56 = icmp eq i8 %76, 0
  br i1 %tobool.not.i56, label %rtl_write_byte.exit52.rtl_write_byte.exit60_crit_edge, label %if.then.i59

rtl_write_byte.exit52.rtl_write_byte.exit60_crit_edge: ; preds = %rtl_write_byte.exit52
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit60

if.then.i59:                                      ; preds = %rtl_write_byte.exit52
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i57 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %77 = ptrtoint ptr %read8_sync.i57 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read8_sync.i57, align 4
  %call.i58 = tail call zeroext i8 %78(ptr noundef %1, i32 noundef 1360) #7
  br label %rtl_write_byte.exit60

rtl_write_byte.exit60:                            ; preds = %if.then.i59, %rtl_write_byte.exit52.rtl_write_byte.exit60_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_set_beacon_interval(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %beacon_interval = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 54
  %2 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %beacon_interval, align 8
  %conv = trunc i32 %3 to i16
  %conv2 = and i32 %3, 65535
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1024, i32 noundef 3, ptr noundef nonnull @.str.25, i32 noundef %conv2) #7
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %4 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write16_async.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef 1364, i16 noundef zeroext %conv) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.rtl_write_word.exit_crit_edge, label %if.then.i

entry.rtl_write_word.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %10 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %11(ptr noundef %1, i32 noundef 1364) #7
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %entry.rtl_write_word.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_update_interrupt_mask(ptr nocapture noundef readonly %hw, i32 noundef %add_msr, i32 noundef %rm_msr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 4, ptr noundef nonnull @.str.26, i32 noundef %add_msr, i32 noundef %rm_msr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add_msr)
  %tobool.not = icmp eq i32 %add_msr, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %irq_mask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_mask, align 4
  %or = or i32 %3, %add_msr
  store i32 %or, ptr %irq_mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rm_msr)
  %tobool3.not = icmp eq i32 %rm_msr, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %rm_msr, -1
  %irq_mask5 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %4 = ptrtoint ptr %irq_mask5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_mask5, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %irq_mask5, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 7
  %8 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %9(ptr noundef %7, i32 noundef 176, i32 noundef 0) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 32
  %10 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %write_readback.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.end7.rtl_write_dword.exit.i_crit_edge, label %if.then.i.i

if.end7.rtl_write_dword.exit.i_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i

if.then.i.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 11
  %14 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %15(ptr noundef %7, i32 noundef 176) #7
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i, %if.end7.rtl_write_dword.exit.i_crit_edge
  %16 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %17(ptr noundef %7, i32 noundef 184, i32 noundef 0) #7
  %18 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_readback.i7.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %write_readback.i7.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i8.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i8.i, label %rtl_write_dword.exit.i.rtl88ee_disable_interrupt.exit_crit_edge, label %if.then.i11.i

rtl_write_dword.exit.i.rtl88ee_disable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl88ee_disable_interrupt.exit

if.then.i11.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 11
  %22 = ptrtoint ptr %read32_sync.i9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32_sync.i9.i, align 4
  %call.i10.i = tail call i32 %23(ptr noundef %7, i32 noundef 184) #7
  br label %rtl88ee_disable_interrupt.exit

rtl88ee_disable_interrupt.exit:                   ; preds = %if.then.i11.i, %rtl_write_dword.exit.i.rtl88ee_disable_interrupt.exit_crit_edge
  %irq_enabled.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %24 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %irq_enabled.i, align 4
  tail call void @rtl88ee_enable_interrupt(ptr noundef %hw)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_read_eeprom_info(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %pwrinfo24g.i.i = alloca %struct.txpower_info_2g, align 1
  %pwrinfo5g.i.i = alloca %struct.txpower_info_5g, align 1
  %params.i = alloca [10 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %3(ptr noundef %1, i32 noundef 240) #7
  %and.i = and i32 %call.i.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = lshr i32 %call.i.i, 22
  %4 = and i32 %and1.i, 32
  %and3.i = lshr i32 %call.i.i, 12
  %5 = and i32 %and3.i, 128
  %or.i = or i32 %4, %5
  %or6.i = or i32 %or.i, 8
  %version.0.i = select i1 %tobool.not.i, i32 %or6.i, i32 0
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %6 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %rf_type.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.59) #7
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %7 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %version.0.i, ptr %version, align 4
  %8 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx8 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 15, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %arrayidx8, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %11 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 15
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %11, align 2
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.27, i32 noundef %version.0.i) #7
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %13 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %14(ptr noundef %1, i32 noundef 10) #7
  %conv14 = zext i8 %call.i to i32
  %and = and i32 %conv14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %.str.29..str.28 = select i1 %tobool.not, ptr @.str.29, ptr @.str.28
  %15 = lshr exact i32 %and, 3
  %16 = trunc i32 %15 to i16
  %17 = xor i16 %16, 2
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull %.str.29..str.28) #7
  %18 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 9
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %17, ptr %18, align 2
  %and20 = and i32 %conv14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.end, label %if.then22

if.then22:                                        ; preds = %if.end
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.30) #7
  %autoload_failflag = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 7
  %20 = ptrtoint ptr %autoload_failflag to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %autoload_failflag, align 1
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %params.i) #7
  %23 = call ptr @memcpy(ptr %params.i, ptr @__const._rtl88ee_read_adapter_info.params, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 512) #11
  %tobool.not.i45 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i45, label %if.then22._rtl88ee_read_adapter_info.exit_crit_edge, label %if.end.i

if.then22._rtl88ee_read_adapter_info.exit_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88ee_read_adapter_info.exit

if.end.i:                                         ; preds = %if.then22
  %call4.i = call i32 @rtl_get_hwinfo(ptr noundef %hw, ptr noundef %22, i32 noundef 512, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %params.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.exit.i_crit_edge

if.end.i.exit.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

if.end7.i:                                        ; preds = %if.end.i
  %eeprom_oemid.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 14
  %25 = ptrtoint ptr %eeprom_oemid.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %eeprom_oemid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp.i = icmp eq i8 %26, -1
  br i1 %cmp.i, label %if.then9.i, label %if.end7.i.if.end11.i_crit_edge

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %eeprom_oemid.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %eeprom_oemid.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end11.i_crit_edge
  %28 = ptrtoint ptr %eeprom_oemid.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %eeprom_oemid.i, align 4
  %conv13.i = zext i8 %29 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %22, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.60, i32 noundef %conv13.i) #7
  %eeprom_channelplan.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 15
  %30 = ptrtoint ptr %eeprom_channelplan.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %eeprom_channelplan.i, align 2
  %conv14.i = trunc i16 %31 to i8
  %channel_plan.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 65
  %32 = ptrtoint ptr %channel_plan.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv14.i, ptr %channel_plan.i, align 1
  %autoload_failflag.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 7
  %33 = ptrtoint ptr %autoload_failflag.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %autoload_failflag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool15.i = icmp ne i8 %34, 0
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %pwrinfo24g.i.i) #7
  %37 = call ptr @memset(ptr %pwrinfo24g.i.i, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %pwrinfo5g.i.i) #7
  %38 = call ptr @memset(ptr %pwrinfo5g.i.i, i32 255, i32 136)
  %arrayidx.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 17
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %40 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.64, i32 noundef 17, i32 noundef %conv.i.i.i) #7
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %cmp.i.i.i = icmp eq i8 %42, -1
  %spec.select.i.i.i = or i1 %tobool15.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.then6.i.i.i, label %if.end11.i.for.cond14.preheader.i.i.i_crit_edge

if.end11.i.for.cond14.preheader.i.i.i_crit_edge:  ; preds = %if.end11.i
  br label %for.cond14.preheader.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.65) #7
  %43 = call ptr @memset(ptr %pwrinfo24g.i.i, i32 45, i32 6)
  %uglygep51.i.i.i.i = getelementptr inbounds i8, ptr %pwrinfo24g.i.i, i32 24
  %44 = call ptr @memset(ptr %uglygep51.i.i.i.i, i32 45, i32 6)
  %arrayidx10.i.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 0
  %arrayidx8.i.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 0
  %45 = ptrtoint ptr %arrayidx8.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 2, ptr %arrayidx8.i.i.i.i, align 1
  %46 = ptrtoint ptr %arrayidx10.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 4, ptr %arrayidx10.i.i.i.i, align 1
  %arrayidx14.1.i.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx14.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -2, ptr %arrayidx14.1.i.i.i.i, align 1
  %arrayidx16.1.i.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 5, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx16.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -2, ptr %arrayidx16.1.i.i.i.i, align 1
  %arrayidx18.1.i.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 2, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx18.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -2, ptr %arrayidx18.1.i.i.i.i, align 1
  %arrayidx21.1.i.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx21.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -2, ptr %arrayidx21.1.i.i.i.i, align 1
  %arrayidx14.2.i.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx14.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -2, ptr %arrayidx14.2.i.i.i.i, align 1
  %arrayidx16.2.i.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 5, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx16.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -2, ptr %arrayidx16.2.i.i.i.i, align 1
  %arrayidx18.2.i.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 2, i32 0, i32 2
  %53 = ptrtoint ptr %arrayidx18.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -2, ptr %arrayidx18.2.i.i.i.i, align 1
  %arrayidx21.2.i.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 0, i32 2
  %54 = ptrtoint ptr %arrayidx21.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -2, ptr %arrayidx21.2.i.i.i.i, align 1
  %arrayidx14.3.i.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 0, i32 3
  %55 = ptrtoint ptr %arrayidx14.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -2, ptr %arrayidx14.3.i.i.i.i, align 1
  %arrayidx16.3.i.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 5, i32 0, i32 3
  %56 = ptrtoint ptr %arrayidx16.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -2, ptr %arrayidx16.3.i.i.i.i, align 1
  %arrayidx18.3.i.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 2, i32 0, i32 3
  %57 = ptrtoint ptr %arrayidx18.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -2, ptr %arrayidx18.3.i.i.i.i, align 1
  %arrayidx21.3.i.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 0, i32 3
  %58 = ptrtoint ptr %arrayidx21.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -2, ptr %arrayidx21.3.i.i.i.i, align 1
  %uglygep.i.1.i.i.i = getelementptr inbounds i8, ptr %pwrinfo24g.i.i, i32 6
  %59 = call ptr @memset(ptr %uglygep.i.1.i.i.i, i32 45, i32 6)
  %uglygep51.i.1.i.i.i = getelementptr inbounds i8, ptr %pwrinfo24g.i.i, i32 30
  %60 = call ptr @memset(ptr %uglygep51.i.1.i.i.i, i32 45, i32 6)
  %arrayidx10.i.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 1
  %arrayidx8.i.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 1
  %61 = ptrtoint ptr %arrayidx8.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %arrayidx8.i.1.i.i.i, align 1
  %62 = ptrtoint ptr %arrayidx10.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 4, ptr %arrayidx10.i.1.i.i.i, align 1
  %arrayidx14.1.i.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 1, i32 1
  %63 = ptrtoint ptr %arrayidx14.1.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -2, ptr %arrayidx14.1.i.1.i.i.i, align 1
  %arrayidx16.1.i.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 5, i32 1, i32 1
  %64 = ptrtoint ptr %arrayidx16.1.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -2, ptr %arrayidx16.1.i.1.i.i.i, align 1
  %arrayidx18.1.i.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 2, i32 1, i32 1
  %65 = ptrtoint ptr %arrayidx18.1.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -2, ptr %arrayidx18.1.i.1.i.i.i, align 1
  %arrayidx21.1.i.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 1, i32 1
  %66 = ptrtoint ptr %arrayidx21.1.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -2, ptr %arrayidx21.1.i.1.i.i.i, align 1
  %arrayidx14.2.i.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 1, i32 2
  %67 = ptrtoint ptr %arrayidx14.2.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -2, ptr %arrayidx14.2.i.1.i.i.i, align 1
  %arrayidx16.2.i.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 5, i32 1, i32 2
  %68 = ptrtoint ptr %arrayidx16.2.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -2, ptr %arrayidx16.2.i.1.i.i.i, align 1
  %arrayidx18.2.i.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 2, i32 1, i32 2
  %69 = ptrtoint ptr %arrayidx18.2.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -2, ptr %arrayidx18.2.i.1.i.i.i, align 1
  %arrayidx21.2.i.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 1, i32 2
  %70 = ptrtoint ptr %arrayidx21.2.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -2, ptr %arrayidx21.2.i.1.i.i.i, align 1
  %arrayidx14.3.i.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 1, i32 3
  %71 = ptrtoint ptr %arrayidx14.3.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -2, ptr %arrayidx14.3.i.1.i.i.i, align 1
  %arrayidx16.3.i.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 5, i32 1, i32 3
  %72 = ptrtoint ptr %arrayidx16.3.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -2, ptr %arrayidx16.3.i.1.i.i.i, align 1
  %arrayidx18.3.i.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 2, i32 1, i32 3
  %73 = ptrtoint ptr %arrayidx18.3.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -2, ptr %arrayidx18.3.i.1.i.i.i, align 1
  %arrayidx21.3.i.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 1, i32 3
  %74 = ptrtoint ptr %arrayidx21.3.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -2, ptr %arrayidx21.3.i.1.i.i.i, align 1
  %uglygep.i.2.i.i.i = getelementptr inbounds i8, ptr %pwrinfo24g.i.i, i32 12
  %75 = call ptr @memset(ptr %uglygep.i.2.i.i.i, i32 45, i32 6)
  %uglygep51.i.2.i.i.i = getelementptr inbounds i8, ptr %pwrinfo24g.i.i, i32 36
  %76 = call ptr @memset(ptr %uglygep51.i.2.i.i.i, i32 45, i32 6)
  %arrayidx10.i.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 2
  %arrayidx8.i.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 2
  %77 = ptrtoint ptr %arrayidx8.i.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 2, ptr %arrayidx8.i.2.i.i.i, align 1
  %78 = ptrtoint ptr %arrayidx10.i.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 4, ptr %arrayidx10.i.2.i.i.i, align 1
  %arrayidx14.1.i.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 2, i32 1
  %79 = ptrtoint ptr %arrayidx14.1.i.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -2, ptr %arrayidx14.1.i.2.i.i.i, align 1
  %arrayidx16.1.i.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 5, i32 2, i32 1
  %80 = ptrtoint ptr %arrayidx16.1.i.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -2, ptr %arrayidx16.1.i.2.i.i.i, align 1
  %arrayidx18.1.i.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 2, i32 2, i32 1
  %81 = ptrtoint ptr %arrayidx18.1.i.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -2, ptr %arrayidx18.1.i.2.i.i.i, align 1
  %arrayidx21.1.i.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 2, i32 1
  %82 = ptrtoint ptr %arrayidx21.1.i.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -2, ptr %arrayidx21.1.i.2.i.i.i, align 1
  %arrayidx14.2.i.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 2, i32 2
  %83 = ptrtoint ptr %arrayidx14.2.i.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -2, ptr %arrayidx14.2.i.2.i.i.i, align 1
  %arrayidx16.2.i.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 5, i32 2, i32 2
  %84 = ptrtoint ptr %arrayidx16.2.i.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -2, ptr %arrayidx16.2.i.2.i.i.i, align 1
  %arrayidx18.2.i.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 2, i32 2, i32 2
  %85 = ptrtoint ptr %arrayidx18.2.i.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -2, ptr %arrayidx18.2.i.2.i.i.i, align 1
  %arrayidx21.2.i.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 2, i32 2
  %86 = ptrtoint ptr %arrayidx21.2.i.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -2, ptr %arrayidx21.2.i.2.i.i.i, align 1
  %arrayidx14.3.i.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 2, i32 3
  %87 = ptrtoint ptr %arrayidx14.3.i.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -2, ptr %arrayidx14.3.i.2.i.i.i, align 1
  %arrayidx16.3.i.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 5, i32 2, i32 3
  %88 = ptrtoint ptr %arrayidx16.3.i.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -2, ptr %arrayidx16.3.i.2.i.i.i, align 1
  %arrayidx18.3.i.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 2, i32 2, i32 3
  %89 = ptrtoint ptr %arrayidx18.3.i.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -2, ptr %arrayidx18.3.i.2.i.i.i, align 1
  %arrayidx21.3.i.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 2, i32 3
  %90 = ptrtoint ptr %arrayidx21.3.i.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -2, ptr %arrayidx21.3.i.2.i.i.i, align 1
  %uglygep.i.3.i.i.i = getelementptr inbounds i8, ptr %pwrinfo24g.i.i, i32 18
  %91 = call ptr @memset(ptr %uglygep.i.3.i.i.i, i32 45, i32 6)
  %uglygep51.i.3.i.i.i = getelementptr inbounds i8, ptr %pwrinfo24g.i.i, i32 42
  %92 = call ptr @memset(ptr %uglygep51.i.3.i.i.i, i32 45, i32 6)
  %arrayidx10.i.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 3
  %arrayidx8.i.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 3
  %93 = ptrtoint ptr %arrayidx8.i.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 2, ptr %arrayidx8.i.3.i.i.i, align 1
  %94 = ptrtoint ptr %arrayidx10.i.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 4, ptr %arrayidx10.i.3.i.i.i, align 1
  %arrayidx14.1.i.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 3, i32 1
  %95 = ptrtoint ptr %arrayidx14.1.i.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -2, ptr %arrayidx14.1.i.3.i.i.i, align 1
  %arrayidx16.1.i.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 5, i32 3, i32 1
  %96 = ptrtoint ptr %arrayidx16.1.i.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -2, ptr %arrayidx16.1.i.3.i.i.i, align 1
  %arrayidx18.1.i.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 2, i32 3, i32 1
  %97 = ptrtoint ptr %arrayidx18.1.i.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -2, ptr %arrayidx18.1.i.3.i.i.i, align 1
  %arrayidx21.1.i.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 3, i32 1
  %98 = ptrtoint ptr %arrayidx21.1.i.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -2, ptr %arrayidx21.1.i.3.i.i.i, align 1
  %arrayidx14.2.i.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 3, i32 2
  %99 = ptrtoint ptr %arrayidx14.2.i.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -2, ptr %arrayidx14.2.i.3.i.i.i, align 1
  %arrayidx16.2.i.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 5, i32 3, i32 2
  %100 = ptrtoint ptr %arrayidx16.2.i.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -2, ptr %arrayidx16.2.i.3.i.i.i, align 1
  %arrayidx18.2.i.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 2, i32 3, i32 2
  %101 = ptrtoint ptr %arrayidx18.2.i.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -2, ptr %arrayidx18.2.i.3.i.i.i, align 1
  %arrayidx21.2.i.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 3, i32 2
  %102 = ptrtoint ptr %arrayidx21.2.i.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -2, ptr %arrayidx21.2.i.3.i.i.i, align 1
  %arrayidx14.3.i.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 3, i32 3
  %103 = ptrtoint ptr %arrayidx14.3.i.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -2, ptr %arrayidx14.3.i.3.i.i.i, align 1
  %arrayidx16.3.i.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 5, i32 3, i32 3
  %104 = ptrtoint ptr %arrayidx16.3.i.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -2, ptr %arrayidx16.3.i.3.i.i.i, align 1
  %arrayidx18.3.i.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 2, i32 3, i32 3
  %105 = ptrtoint ptr %arrayidx18.3.i.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -2, ptr %arrayidx18.3.i.3.i.i.i, align 1
  %arrayidx21.3.i.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 3, i32 3
  %106 = ptrtoint ptr %arrayidx21.3.i.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -2, ptr %arrayidx21.3.i.3.i.i.i, align 1
  br label %_rtl88e_get_chnl_group.exit.i.i.8.preheader

for.cond14.preheader.i.i.i:                       ; preds = %for.inc493.2.i.i.i.for.cond14.preheader.i.i.i_crit_edge, %if.end11.i.for.cond14.preheader.i.i.i_crit_edge
  %eeaddr.0777.i.i.i = phi i32 [ %inc462.i.i.i, %for.inc493.2.i.i.i.for.cond14.preheader.i.i.i_crit_edge ], [ 16, %if.end11.i.for.cond14.preheader.i.i.i_crit_edge ]
  %rfpath.1770.i.i.i = phi i32 [ %inc497.i.i.i, %for.inc493.2.i.i.i.for.cond14.preheader.i.i.i_crit_edge ], [ 0, %if.end11.i.for.cond14.preheader.i.i.i_crit_edge ]
  %inc18.i.i.i = or i32 %eeaddr.0777.i.i.i, 1
  %arrayidx19.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %eeaddr.0777.i.i.i
  %107 = ptrtoint ptr %arrayidx19.i.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx19.i.i.i, align 2
  %arrayidx21.i.i.i = getelementptr [4 x [6 x i8]], ptr %pwrinfo24g.i.i, i32 0, i32 %rfpath.1770.i.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %108)
  %cmp26.i.i.i = icmp eq i8 %108, -1
  %spec.select746.i.i.i = select i1 %cmp26.i.i.i, i8 45, i8 %108
  %109 = ptrtoint ptr %arrayidx21.i.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %spec.select746.i.i.i, ptr %arrayidx21.i.i.i, align 1
  %inc18.1.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 2
  %arrayidx19.1.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc18.i.i.i
  %110 = ptrtoint ptr %arrayidx19.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx19.1.i.i.i, align 1
  %arrayidx21.1.i.i.i = getelementptr [4 x [6 x i8]], ptr %pwrinfo24g.i.i, i32 0, i32 %rfpath.1770.i.i.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %111)
  %cmp26.1.i.i.i = icmp eq i8 %111, -1
  %spec.select746.1.i.i.i = select i1 %cmp26.1.i.i.i, i8 45, i8 %111
  %112 = ptrtoint ptr %arrayidx21.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %spec.select746.1.i.i.i, ptr %arrayidx21.1.i.i.i, align 1
  %inc18.2.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 3
  %arrayidx19.2.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc18.1.i.i.i
  %113 = ptrtoint ptr %arrayidx19.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx19.2.i.i.i, align 2
  %arrayidx21.2.i.i.i = getelementptr [4 x [6 x i8]], ptr %pwrinfo24g.i.i, i32 0, i32 %rfpath.1770.i.i.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %114)
  %cmp26.2.i.i.i = icmp eq i8 %114, -1
  %spec.select746.2.i.i.i = select i1 %cmp26.2.i.i.i, i8 45, i8 %114
  %115 = ptrtoint ptr %arrayidx21.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %spec.select746.2.i.i.i, ptr %arrayidx21.2.i.i.i, align 1
  %inc18.3.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 4
  %arrayidx19.3.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc18.2.i.i.i
  %116 = ptrtoint ptr %arrayidx19.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx19.3.i.i.i, align 1
  %arrayidx21.3.i.i.i = getelementptr [4 x [6 x i8]], ptr %pwrinfo24g.i.i, i32 0, i32 %rfpath.1770.i.i.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %117)
  %cmp26.3.i.i.i = icmp eq i8 %117, -1
  %spec.select746.3.i.i.i = select i1 %cmp26.3.i.i.i, i8 45, i8 %117
  %118 = ptrtoint ptr %arrayidx21.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %spec.select746.3.i.i.i, ptr %arrayidx21.3.i.i.i, align 1
  %inc18.4.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 5
  %arrayidx19.4.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc18.3.i.i.i
  %119 = ptrtoint ptr %arrayidx19.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx19.4.i.i.i, align 2
  %arrayidx21.4.i.i.i = getelementptr [4 x [6 x i8]], ptr %pwrinfo24g.i.i, i32 0, i32 %rfpath.1770.i.i.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %120)
  %cmp26.4.i.i.i = icmp eq i8 %120, -1
  %spec.select746.4.i.i.i = select i1 %cmp26.4.i.i.i, i8 45, i8 %120
  %121 = ptrtoint ptr %arrayidx21.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %spec.select746.4.i.i.i, ptr %arrayidx21.4.i.i.i, align 1
  %inc18.5.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 6
  %arrayidx19.5.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc18.4.i.i.i
  %122 = ptrtoint ptr %arrayidx19.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx19.5.i.i.i, align 1
  %arrayidx21.5.i.i.i = getelementptr [4 x [6 x i8]], ptr %pwrinfo24g.i.i, i32 0, i32 %rfpath.1770.i.i.i, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %123)
  %cmp26.5.i.i.i = icmp eq i8 %123, -1
  %spec.select746.5.i.i.i = select i1 %cmp26.5.i.i.i, i8 45, i8 %123
  %124 = ptrtoint ptr %arrayidx21.5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %spec.select746.5.i.i.i, ptr %arrayidx21.5.i.i.i, align 1
  %inc40.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 7
  %arrayidx41.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc18.5.i.i.i
  %125 = ptrtoint ptr %arrayidx41.i.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx41.i.i.i, align 2
  %arrayidx43.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 1, i32 %rfpath.1770.i.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %126)
  %cmp48.i.i.i = icmp eq i8 %126, -1
  %spec.select747.i.i.i = select i1 %cmp48.i.i.i, i8 45, i8 %126
  %127 = ptrtoint ptr %arrayidx43.i.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %spec.select747.i.i.i, ptr %arrayidx43.i.i.i, align 1
  %inc40.1.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 8
  %arrayidx41.1.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc40.i.i.i
  %128 = ptrtoint ptr %arrayidx41.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx41.1.i.i.i, align 1
  %arrayidx43.1.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 1, i32 %rfpath.1770.i.i.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %129)
  %cmp48.1.i.i.i = icmp eq i8 %129, -1
  %spec.select747.1.i.i.i = select i1 %cmp48.1.i.i.i, i8 45, i8 %129
  %130 = ptrtoint ptr %arrayidx43.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %spec.select747.1.i.i.i, ptr %arrayidx43.1.i.i.i, align 1
  %inc40.2.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 9
  %arrayidx41.2.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc40.1.i.i.i
  %131 = ptrtoint ptr %arrayidx41.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx41.2.i.i.i, align 2
  %arrayidx43.2.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 1, i32 %rfpath.1770.i.i.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %132)
  %cmp48.2.i.i.i = icmp eq i8 %132, -1
  %spec.select747.2.i.i.i = select i1 %cmp48.2.i.i.i, i8 45, i8 %132
  %133 = ptrtoint ptr %arrayidx43.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %spec.select747.2.i.i.i, ptr %arrayidx43.2.i.i.i, align 1
  %inc40.3.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 10
  %arrayidx41.3.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc40.2.i.i.i
  %134 = ptrtoint ptr %arrayidx41.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx41.3.i.i.i, align 1
  %arrayidx43.3.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 1, i32 %rfpath.1770.i.i.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %135)
  %cmp48.3.i.i.i = icmp eq i8 %135, -1
  %spec.select747.3.i.i.i = select i1 %cmp48.3.i.i.i, i8 45, i8 %135
  %136 = ptrtoint ptr %arrayidx43.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %spec.select747.3.i.i.i, ptr %arrayidx43.3.i.i.i, align 1
  %inc40.4.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 11
  %arrayidx41.4.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc40.3.i.i.i
  %137 = ptrtoint ptr %arrayidx41.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx41.4.i.i.i, align 2
  %arrayidx43.4.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 1, i32 %rfpath.1770.i.i.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %138)
  %cmp48.4.i.i.i = icmp eq i8 %138, -1
  %spec.select747.4.i.i.i = select i1 %cmp48.4.i.i.i, i8 45, i8 %138
  %139 = ptrtoint ptr %arrayidx43.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %spec.select747.4.i.i.i, ptr %arrayidx43.4.i.i.i, align 1
  %arrayidx58.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 5, i32 %rfpath.1770.i.i.i
  %140 = ptrtoint ptr %arrayidx58.i.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %arrayidx58.i.i.i, align 1
  %arrayidx60.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc40.4.i.i.i
  %141 = ptrtoint ptr %arrayidx60.i.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx60.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %142)
  %cmp62.i.i.i = icmp eq i8 %142, -1
  br i1 %cmp62.i.i.i, label %if.then91.i.i.i, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %for.cond14.preheader.i.i.i
  %143 = lshr i8 %142, 4
  %arrayidx71.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 %rfpath.1770.i.i.i
  %or.i.i.i = or i8 %143, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool78.not.i177.i.i = icmp slt i8 %142, 0
  %spec.select.i.i = select i1 %tobool78.not.i177.i.i, i8 %or.i.i.i, i8 %143
  %144 = ptrtoint ptr %arrayidx71.i.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %spec.select.i.i, ptr %arrayidx71.i.i.i, align 1
  %145 = and i8 %142, 15
  %arrayidx100.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 %rfpath.1770.i.i.i
  %146 = ptrtoint ptr %arrayidx100.i.i.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %arrayidx100.i.i.i, align 1
  %147 = and i8 %142, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool107.not.i.i.i = icmp eq i8 %147, 0
  br i1 %tobool107.not.i.i.i, label %if.else.i.i.i.if.end116.i.i.i_crit_edge, label %if.then108.i.i.i

if.else.i.i.i.if.end116.i.i.i_crit_edge:          ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116.i.i.i

if.then91.i.i.i:                                  ; preds = %for.cond14.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx65.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 %rfpath.1770.i.i.i
  %148 = ptrtoint ptr %arrayidx65.i.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 2, ptr %arrayidx65.i.i.i, align 1
  %arrayidx92.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 %rfpath.1770.i.i.i
  %149 = ptrtoint ptr %arrayidx92.i.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 4, ptr %arrayidx92.i.i.i, align 1
  br label %if.end116.i.i.i

if.then108.i.i.i:                                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or113.i.i.i = or i8 %142, -16
  %150 = ptrtoint ptr %arrayidx100.i.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %or113.i.i.i, ptr %arrayidx100.i.i.i, align 1
  br label %if.end116.i.i.i

if.end116.i.i.i:                                  ; preds = %if.then108.i.i.i, %if.then91.i.i.i, %if.else.i.i.i.if.end116.i.i.i_crit_edge
  %arrayidx117.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 2, i32 %rfpath.1770.i.i.i
  %151 = ptrtoint ptr %arrayidx117.i.i.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %arrayidx117.i.i.i, align 1
  %eeaddr.3754.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 12
  %arrayidx124.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %eeaddr.3754.i.i.i
  %152 = ptrtoint ptr %arrayidx124.i.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx124.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %153)
  %cmp126.i.i.i = icmp eq i8 %153, -1
  br i1 %cmp126.i.i.i, label %if.then160.i.i.i, label %if.else132.i.i.i

if.else132.i.i.i:                                 ; preds = %if.end116.i.i.i
  %154 = lshr i8 %153, 4
  %arrayidx140.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 5, i32 %rfpath.1770.i.i.i, i32 1
  %or152.i.i.i = or i8 %154, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool146.not.i178.i.i = icmp slt i8 %153, 0
  %spec.select167.i.i = select i1 %tobool146.not.i178.i.i, i8 %or152.i.i.i, i8 %154
  %155 = ptrtoint ptr %arrayidx140.i.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %spec.select167.i.i, ptr %arrayidx140.i.i.i, align 1
  %156 = and i8 %153, 15
  %arrayidx171.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 %rfpath.1770.i.i.i, i32 1
  %157 = ptrtoint ptr %arrayidx171.i.i.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %arrayidx171.i.i.i, align 1
  %158 = and i8 %153, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool177.not.i.i.i = icmp eq i8 %158, 0
  br i1 %tobool177.not.i.i.i, label %if.else132.i.i.i.if.end186.i.i.i_crit_edge, label %if.then178.i.i.i

if.else132.i.i.i.if.end186.i.i.i_crit_edge:       ; preds = %if.else132.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186.i.i.i

if.then160.i.i.i:                                 ; preds = %if.end116.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx131.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 5, i32 %rfpath.1770.i.i.i, i32 1
  %159 = ptrtoint ptr %arrayidx131.i.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 -2, ptr %arrayidx131.i.i.i, align 1
  %arrayidx163.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 %rfpath.1770.i.i.i, i32 1
  %160 = ptrtoint ptr %arrayidx163.i.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 -2, ptr %arrayidx163.i.i.i, align 1
  br label %if.end186.i.i.i

if.then178.i.i.i:                                 ; preds = %if.else132.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or183.i.i.i = or i8 %153, -16
  %161 = ptrtoint ptr %arrayidx171.i.i.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %or183.i.i.i, ptr %arrayidx171.i.i.i, align 1
  br label %if.end186.i.i.i

if.end186.i.i.i:                                  ; preds = %if.then178.i.i.i, %if.then160.i.i.i, %if.else132.i.i.i.if.end186.i.i.i_crit_edge
  %inc187.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 13
  %arrayidx188.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc187.i.i.i
  %162 = ptrtoint ptr %arrayidx188.i.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx188.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %163)
  %cmp190.i.i.i = icmp eq i8 %163, -1
  br i1 %cmp190.i.i.i, label %if.then224.i.i.i, label %if.else196.i.i.i

if.else196.i.i.i:                                 ; preds = %if.end186.i.i.i
  %164 = lshr i8 %163, 4
  %arrayidx204.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 %rfpath.1770.i.i.i, i32 1
  %or216.i.i.i = or i8 %164, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool210.not.i179.i.i = icmp slt i8 %163, 0
  %spec.select168.i.i = select i1 %tobool210.not.i179.i.i, i8 %or216.i.i.i, i8 %164
  %165 = ptrtoint ptr %arrayidx204.i.i.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %spec.select168.i.i, ptr %arrayidx204.i.i.i, align 1
  %166 = and i8 %163, 15
  %arrayidx235.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 2, i32 %rfpath.1770.i.i.i, i32 1
  %167 = ptrtoint ptr %arrayidx235.i.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %arrayidx235.i.i.i, align 1
  %168 = and i8 %163, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool241.not.i.i.i = icmp eq i8 %168, 0
  br i1 %tobool241.not.i.i.i, label %if.else196.i.i.i.if.end250.i.i.i_crit_edge, label %if.then242.i.i.i

if.else196.i.i.i.if.end250.i.i.i_crit_edge:       ; preds = %if.else196.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end250.i.i.i

if.then224.i.i.i:                                 ; preds = %if.end186.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx195.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 %rfpath.1770.i.i.i, i32 1
  %169 = ptrtoint ptr %arrayidx195.i.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 -2, ptr %arrayidx195.i.i.i, align 1
  %arrayidx227.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 2, i32 %rfpath.1770.i.i.i, i32 1
  %170 = ptrtoint ptr %arrayidx227.i.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 -2, ptr %arrayidx227.i.i.i, align 1
  br label %if.end250.i.i.i

if.then242.i.i.i:                                 ; preds = %if.else196.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or247.i.i.i = or i8 %163, -16
  %171 = ptrtoint ptr %arrayidx235.i.i.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %or247.i.i.i, ptr %arrayidx235.i.i.i, align 1
  br label %if.end250.i.i.i

if.end250.i.i.i:                                  ; preds = %if.then242.i.i.i, %if.then224.i.i.i, %if.else196.i.i.i.if.end250.i.i.i_crit_edge
  %eeaddr.3.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 14
  %arrayidx124.i.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %eeaddr.3.i.i.i
  %172 = ptrtoint ptr %arrayidx124.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx124.i.1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %173)
  %cmp126.i.1.i.i = icmp eq i8 %173, -1
  br i1 %cmp126.i.1.i.i, label %if.then160.i.1.i.i, label %if.else132.i.1.i.i

if.else132.i.1.i.i:                               ; preds = %if.end250.i.i.i
  %174 = lshr i8 %173, 4
  %arrayidx140.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 5, i32 %rfpath.1770.i.i.i, i32 2
  %or152.i.1.i.i = or i8 %174, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool146.not.i178.1.i.i = icmp slt i8 %173, 0
  %spec.select167.1.i.i = select i1 %tobool146.not.i178.1.i.i, i8 %or152.i.1.i.i, i8 %174
  %175 = ptrtoint ptr %arrayidx140.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %spec.select167.1.i.i, ptr %arrayidx140.i.1.i.i, align 1
  %176 = and i8 %173, 15
  %arrayidx171.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 %rfpath.1770.i.i.i, i32 2
  %177 = ptrtoint ptr %arrayidx171.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %arrayidx171.i.1.i.i, align 1
  %178 = and i8 %173, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool177.not.i.1.i.i = icmp eq i8 %178, 0
  br i1 %tobool177.not.i.1.i.i, label %if.else132.i.1.i.i.if.end186.i.1.i.i_crit_edge, label %if.then178.i.1.i.i

if.else132.i.1.i.i.if.end186.i.1.i.i_crit_edge:   ; preds = %if.else132.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186.i.1.i.i

if.then178.i.1.i.i:                               ; preds = %if.else132.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or183.i.1.i.i = or i8 %173, -16
  %179 = ptrtoint ptr %arrayidx171.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %or183.i.1.i.i, ptr %arrayidx171.i.1.i.i, align 1
  br label %if.end186.i.1.i.i

if.then160.i.1.i.i:                               ; preds = %if.end250.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx131.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 5, i32 %rfpath.1770.i.i.i, i32 2
  %180 = ptrtoint ptr %arrayidx131.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 -2, ptr %arrayidx131.i.1.i.i, align 1
  %arrayidx163.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 %rfpath.1770.i.i.i, i32 2
  %181 = ptrtoint ptr %arrayidx163.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 -2, ptr %arrayidx163.i.1.i.i, align 1
  br label %if.end186.i.1.i.i

if.end186.i.1.i.i:                                ; preds = %if.then160.i.1.i.i, %if.then178.i.1.i.i, %if.else132.i.1.i.i.if.end186.i.1.i.i_crit_edge
  %inc187.i.1.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 15
  %arrayidx188.i.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc187.i.1.i.i
  %182 = ptrtoint ptr %arrayidx188.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx188.i.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %183)
  %cmp190.i.1.i.i = icmp eq i8 %183, -1
  br i1 %cmp190.i.1.i.i, label %if.then224.i.1.i.i, label %if.else196.i.1.i.i

if.else196.i.1.i.i:                               ; preds = %if.end186.i.1.i.i
  %184 = lshr i8 %183, 4
  %arrayidx204.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 %rfpath.1770.i.i.i, i32 2
  %or216.i.1.i.i = or i8 %184, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool210.not.i179.1.i.i = icmp slt i8 %183, 0
  %spec.select168.1.i.i = select i1 %tobool210.not.i179.1.i.i, i8 %or216.i.1.i.i, i8 %184
  %185 = ptrtoint ptr %arrayidx204.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %spec.select168.1.i.i, ptr %arrayidx204.i.1.i.i, align 1
  %186 = and i8 %183, 15
  %arrayidx235.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 2, i32 %rfpath.1770.i.i.i, i32 2
  %187 = ptrtoint ptr %arrayidx235.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %186, ptr %arrayidx235.i.1.i.i, align 1
  %188 = and i8 %183, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool241.not.i.1.i.i = icmp eq i8 %188, 0
  br i1 %tobool241.not.i.1.i.i, label %if.else196.i.1.i.i.if.end250.i.1.i.i_crit_edge, label %if.then242.i.1.i.i

if.else196.i.1.i.i.if.end250.i.1.i.i_crit_edge:   ; preds = %if.else196.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end250.i.1.i.i

if.then242.i.1.i.i:                               ; preds = %if.else196.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or247.i.1.i.i = or i8 %183, -16
  %189 = ptrtoint ptr %arrayidx235.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %or247.i.1.i.i, ptr %arrayidx235.i.1.i.i, align 1
  br label %if.end250.i.1.i.i

if.then224.i.1.i.i:                               ; preds = %if.end186.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx195.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 %rfpath.1770.i.i.i, i32 2
  %190 = ptrtoint ptr %arrayidx195.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 -2, ptr %arrayidx195.i.1.i.i, align 1
  %arrayidx227.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 2, i32 %rfpath.1770.i.i.i, i32 2
  %191 = ptrtoint ptr %arrayidx227.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 -2, ptr %arrayidx227.i.1.i.i, align 1
  br label %if.end250.i.1.i.i

if.end250.i.1.i.i:                                ; preds = %if.then224.i.1.i.i, %if.then242.i.1.i.i, %if.else196.i.1.i.i.if.end250.i.1.i.i_crit_edge
  %eeaddr.3.i.1.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 16
  %arrayidx124.i.2.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %eeaddr.3.i.1.i.i
  %192 = ptrtoint ptr %arrayidx124.i.2.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx124.i.2.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %193)
  %cmp126.i.2.i.i = icmp eq i8 %193, -1
  br i1 %cmp126.i.2.i.i, label %if.then160.i.2.i.i, label %if.else132.i.2.i.i

if.else132.i.2.i.i:                               ; preds = %if.end250.i.1.i.i
  %194 = lshr i8 %193, 4
  %arrayidx140.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 5, i32 %rfpath.1770.i.i.i, i32 3
  %or152.i.2.i.i = or i8 %194, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool146.not.i178.2.i.i = icmp slt i8 %193, 0
  %spec.select167.2.i.i = select i1 %tobool146.not.i178.2.i.i, i8 %or152.i.2.i.i, i8 %194
  %195 = ptrtoint ptr %arrayidx140.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %spec.select167.2.i.i, ptr %arrayidx140.i.2.i.i, align 1
  %196 = and i8 %193, 15
  %arrayidx171.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 %rfpath.1770.i.i.i, i32 3
  %197 = ptrtoint ptr %arrayidx171.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %196, ptr %arrayidx171.i.2.i.i, align 1
  %198 = and i8 %193, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool177.not.i.2.i.i = icmp eq i8 %198, 0
  br i1 %tobool177.not.i.2.i.i, label %if.else132.i.2.i.i.if.end186.i.2.i.i_crit_edge, label %if.then178.i.2.i.i

if.else132.i.2.i.i.if.end186.i.2.i.i_crit_edge:   ; preds = %if.else132.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186.i.2.i.i

if.then178.i.2.i.i:                               ; preds = %if.else132.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or183.i.2.i.i = or i8 %193, -16
  %199 = ptrtoint ptr %arrayidx171.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %or183.i.2.i.i, ptr %arrayidx171.i.2.i.i, align 1
  br label %if.end186.i.2.i.i

if.then160.i.2.i.i:                               ; preds = %if.end250.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx131.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 5, i32 %rfpath.1770.i.i.i, i32 3
  %200 = ptrtoint ptr %arrayidx131.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 -2, ptr %arrayidx131.i.2.i.i, align 1
  %arrayidx163.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 %rfpath.1770.i.i.i, i32 3
  %201 = ptrtoint ptr %arrayidx163.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 -2, ptr %arrayidx163.i.2.i.i, align 1
  br label %if.end186.i.2.i.i

if.end186.i.2.i.i:                                ; preds = %if.then160.i.2.i.i, %if.then178.i.2.i.i, %if.else132.i.2.i.i.if.end186.i.2.i.i_crit_edge
  %inc187.i.2.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 17
  %arrayidx188.i.2.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc187.i.2.i.i
  %202 = ptrtoint ptr %arrayidx188.i.2.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx188.i.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %203)
  %cmp190.i.2.i.i = icmp eq i8 %203, -1
  br i1 %cmp190.i.2.i.i, label %if.then224.i.2.i.i, label %if.else196.i.2.i.i

if.else196.i.2.i.i:                               ; preds = %if.end186.i.2.i.i
  %204 = lshr i8 %203, 4
  %arrayidx204.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 %rfpath.1770.i.i.i, i32 3
  %or216.i.2.i.i = or i8 %204, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool210.not.i179.2.i.i = icmp slt i8 %203, 0
  %spec.select168.2.i.i = select i1 %tobool210.not.i179.2.i.i, i8 %or216.i.2.i.i, i8 %204
  %205 = ptrtoint ptr %arrayidx204.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %spec.select168.2.i.i, ptr %arrayidx204.i.2.i.i, align 1
  %206 = and i8 %203, 15
  %arrayidx235.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 2, i32 %rfpath.1770.i.i.i, i32 3
  %207 = ptrtoint ptr %arrayidx235.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %206, ptr %arrayidx235.i.2.i.i, align 1
  %208 = and i8 %203, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool241.not.i.2.i.i = icmp eq i8 %208, 0
  br i1 %tobool241.not.i.2.i.i, label %if.else196.i.2.i.i.if.end250.i.2.i.i_crit_edge, label %if.then242.i.2.i.i

if.else196.i.2.i.i.if.end250.i.2.i.i_crit_edge:   ; preds = %if.else196.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end250.i.2.i.i

if.then242.i.2.i.i:                               ; preds = %if.else196.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or247.i.2.i.i = or i8 %203, -16
  %209 = ptrtoint ptr %arrayidx235.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %or247.i.2.i.i, ptr %arrayidx235.i.2.i.i, align 1
  br label %if.end250.i.2.i.i

if.then224.i.2.i.i:                               ; preds = %if.end186.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx195.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 %rfpath.1770.i.i.i, i32 3
  %210 = ptrtoint ptr %arrayidx195.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 -2, ptr %arrayidx195.i.2.i.i, align 1
  %arrayidx227.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 2, i32 %rfpath.1770.i.i.i, i32 3
  %211 = ptrtoint ptr %arrayidx227.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 -2, ptr %arrayidx227.i.2.i.i, align 1
  br label %if.end250.i.2.i.i

if.end250.i.2.i.i:                                ; preds = %if.then224.i.2.i.i, %if.then242.i.2.i.i, %if.else196.i.2.i.i.if.end250.i.2.i.i_crit_edge
  %eeaddr.3.i.2.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 18
  %inc259.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 19
  %arrayidx260.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %eeaddr.3.i.2.i.i
  %212 = ptrtoint ptr %arrayidx260.i.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx260.i.i.i, align 2
  %arrayidx263.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwrinfo5g.i.i, i32 0, i32 %rfpath.1770.i.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %213)
  %cmp268.i.i.i = icmp eq i8 %213, -1
  %spec.select748.i.i.i = select i1 %cmp268.i.i.i, i8 -2, i8 %213
  %214 = ptrtoint ptr %arrayidx263.i.i.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %spec.select748.i.i.i, ptr %arrayidx263.i.i.i, align 1
  %inc259.1.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 20
  %arrayidx260.1.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc259.i.i.i
  %215 = ptrtoint ptr %arrayidx260.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx260.1.i.i.i, align 1
  %arrayidx263.1.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwrinfo5g.i.i, i32 0, i32 %rfpath.1770.i.i.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %216)
  %cmp268.1.i.i.i = icmp eq i8 %216, -1
  %spec.select748.1.i.i.i = select i1 %cmp268.1.i.i.i, i8 -2, i8 %216
  %217 = ptrtoint ptr %arrayidx263.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %spec.select748.1.i.i.i, ptr %arrayidx263.1.i.i.i, align 1
  %inc259.2.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 21
  %arrayidx260.2.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc259.1.i.i.i
  %218 = ptrtoint ptr %arrayidx260.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx260.2.i.i.i, align 2
  %arrayidx263.2.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwrinfo5g.i.i, i32 0, i32 %rfpath.1770.i.i.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %219)
  %cmp268.2.i.i.i = icmp eq i8 %219, -1
  %spec.select748.2.i.i.i = select i1 %cmp268.2.i.i.i, i8 -2, i8 %219
  %220 = ptrtoint ptr %arrayidx263.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %spec.select748.2.i.i.i, ptr %arrayidx263.2.i.i.i, align 1
  %inc259.3.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 22
  %arrayidx260.3.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc259.2.i.i.i
  %221 = ptrtoint ptr %arrayidx260.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx260.3.i.i.i, align 1
  %arrayidx263.3.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwrinfo5g.i.i, i32 0, i32 %rfpath.1770.i.i.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %222)
  %cmp268.3.i.i.i = icmp eq i8 %222, -1
  %spec.select748.3.i.i.i = select i1 %cmp268.3.i.i.i, i8 -2, i8 %222
  %223 = ptrtoint ptr %arrayidx263.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %spec.select748.3.i.i.i, ptr %arrayidx263.3.i.i.i, align 1
  %inc259.4.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 23
  %arrayidx260.4.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc259.3.i.i.i
  %224 = ptrtoint ptr %arrayidx260.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx260.4.i.i.i, align 2
  %arrayidx263.4.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwrinfo5g.i.i, i32 0, i32 %rfpath.1770.i.i.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %225)
  %cmp268.4.i.i.i = icmp eq i8 %225, -1
  %spec.select748.4.i.i.i = select i1 %cmp268.4.i.i.i, i8 -2, i8 %225
  %226 = ptrtoint ptr %arrayidx263.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %spec.select748.4.i.i.i, ptr %arrayidx263.4.i.i.i, align 1
  %inc259.5.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 24
  %arrayidx260.5.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc259.4.i.i.i
  %227 = ptrtoint ptr %arrayidx260.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx260.5.i.i.i, align 1
  %arrayidx263.5.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwrinfo5g.i.i, i32 0, i32 %rfpath.1770.i.i.i, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %228)
  %cmp268.5.i.i.i = icmp eq i8 %228, -1
  %spec.select748.5.i.i.i = select i1 %cmp268.5.i.i.i, i8 -2, i8 %228
  %229 = ptrtoint ptr %arrayidx263.5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %spec.select748.5.i.i.i, ptr %arrayidx263.5.i.i.i, align 1
  %inc259.6.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 25
  %arrayidx260.6.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc259.5.i.i.i
  %230 = ptrtoint ptr %arrayidx260.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx260.6.i.i.i, align 2
  %arrayidx263.6.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwrinfo5g.i.i, i32 0, i32 %rfpath.1770.i.i.i, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %231)
  %cmp268.6.i.i.i = icmp eq i8 %231, -1
  %spec.select748.6.i.i.i = select i1 %cmp268.6.i.i.i, i8 -2, i8 %231
  %232 = ptrtoint ptr %arrayidx263.6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %spec.select748.6.i.i.i, ptr %arrayidx263.6.i.i.i, align 1
  %inc259.7.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 26
  %arrayidx260.7.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc259.6.i.i.i
  %233 = ptrtoint ptr %arrayidx260.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx260.7.i.i.i, align 1
  %arrayidx263.7.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwrinfo5g.i.i, i32 0, i32 %rfpath.1770.i.i.i, i32 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %234)
  %cmp268.7.i.i.i = icmp eq i8 %234, -1
  %spec.select748.7.i.i.i = select i1 %cmp268.7.i.i.i, i8 -2, i8 %234
  %235 = ptrtoint ptr %arrayidx263.7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %spec.select748.7.i.i.i, ptr %arrayidx263.7.i.i.i, align 1
  %inc259.8.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 27
  %arrayidx260.8.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc259.7.i.i.i
  %236 = ptrtoint ptr %arrayidx260.8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %arrayidx260.8.i.i.i, align 2
  %arrayidx263.8.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwrinfo5g.i.i, i32 0, i32 %rfpath.1770.i.i.i, i32 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %237)
  %cmp268.8.i.i.i = icmp eq i8 %237, -1
  %spec.select748.8.i.i.i = select i1 %cmp268.8.i.i.i, i8 -2, i8 %237
  %238 = ptrtoint ptr %arrayidx263.8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %spec.select748.8.i.i.i, ptr %arrayidx263.8.i.i.i, align 1
  %inc259.9.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 28
  %arrayidx260.9.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc259.8.i.i.i
  %239 = ptrtoint ptr %arrayidx260.9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx260.9.i.i.i, align 1
  %arrayidx263.9.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwrinfo5g.i.i, i32 0, i32 %rfpath.1770.i.i.i, i32 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %240)
  %cmp268.9.i.i.i = icmp eq i8 %240, -1
  %spec.select748.9.i.i.i = select i1 %cmp268.9.i.i.i, i8 -2, i8 %240
  %241 = ptrtoint ptr %arrayidx263.9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %spec.select748.9.i.i.i, ptr %arrayidx263.9.i.i.i, align 1
  %inc259.10.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 29
  %arrayidx260.10.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc259.9.i.i.i
  %242 = ptrtoint ptr %arrayidx260.10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx260.10.i.i.i, align 2
  %arrayidx263.10.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwrinfo5g.i.i, i32 0, i32 %rfpath.1770.i.i.i, i32 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %243)
  %cmp268.10.i.i.i = icmp eq i8 %243, -1
  %spec.select748.10.i.i.i = select i1 %cmp268.10.i.i.i, i8 -2, i8 %243
  %244 = ptrtoint ptr %arrayidx263.10.i.i.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %spec.select748.10.i.i.i, ptr %arrayidx263.10.i.i.i, align 1
  %inc259.11.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 30
  %arrayidx260.11.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc259.10.i.i.i
  %245 = ptrtoint ptr %arrayidx260.11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx260.11.i.i.i, align 1
  %arrayidx263.11.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwrinfo5g.i.i, i32 0, i32 %rfpath.1770.i.i.i, i32 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %246)
  %cmp268.11.i.i.i = icmp eq i8 %246, -1
  %spec.select748.11.i.i.i = select i1 %cmp268.11.i.i.i, i8 -2, i8 %246
  %247 = ptrtoint ptr %arrayidx263.11.i.i.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %spec.select748.11.i.i.i, ptr %arrayidx263.11.i.i.i, align 1
  %inc259.12.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 31
  %arrayidx260.12.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc259.11.i.i.i
  %248 = ptrtoint ptr %arrayidx260.12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx260.12.i.i.i, align 2
  %arrayidx263.12.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwrinfo5g.i.i, i32 0, i32 %rfpath.1770.i.i.i, i32 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %249)
  %cmp268.12.i.i.i = icmp eq i8 %249, -1
  %spec.select748.12.i.i.i = select i1 %cmp268.12.i.i.i, i8 -2, i8 %249
  %250 = ptrtoint ptr %arrayidx263.12.i.i.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %spec.select748.12.i.i.i, ptr %arrayidx263.12.i.i.i, align 1
  %inc259.13.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 32
  %arrayidx260.13.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc259.12.i.i.i
  %251 = ptrtoint ptr %arrayidx260.13.i.i.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %arrayidx260.13.i.i.i, align 1
  %arrayidx263.13.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwrinfo5g.i.i, i32 0, i32 %rfpath.1770.i.i.i, i32 13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %252)
  %cmp268.13.i.i.i = icmp eq i8 %252, -1
  %spec.select748.13.i.i.i = select i1 %cmp268.13.i.i.i, i8 -2, i8 %252
  %253 = ptrtoint ptr %arrayidx263.13.i.i.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %spec.select748.13.i.i.i, ptr %arrayidx263.13.i.i.i, align 1
  %arrayidx279.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwrinfo5g.i.i, i32 0, i32 3, i32 %rfpath.1770.i.i.i
  %254 = ptrtoint ptr %arrayidx279.i.i.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 0, ptr %arrayidx279.i.i.i, align 1
  %arrayidx281.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc259.13.i.i.i
  %255 = ptrtoint ptr %arrayidx281.i.i.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %arrayidx281.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %256)
  %cmp283.i.i.i = icmp eq i8 %256, -1
  br i1 %cmp283.i.i.i, label %if.then317.i.i.i, label %if.else289.i.i.i

if.else289.i.i.i:                                 ; preds = %if.end250.i.2.i.i
  %257 = lshr i8 %256, 4
  %arrayidx296.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwrinfo5g.i.i, i32 0, i32 2, i32 %rfpath.1770.i.i.i
  %or309.i.i.i = or i8 %257, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %tobool303.not.i180.i.i = icmp slt i8 %256, 0
  %spec.select169.i.i = select i1 %tobool303.not.i180.i.i, i8 %or309.i.i.i, i8 %257
  %258 = ptrtoint ptr %arrayidx296.i.i.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %spec.select169.i.i, ptr %arrayidx296.i.i.i, align 1
  %259 = and i8 %256, 15
  %arrayidx327.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwrinfo5g.i.i, i32 0, i32 1, i32 %rfpath.1770.i.i.i
  %260 = ptrtoint ptr %arrayidx327.i.i.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %259, ptr %arrayidx327.i.i.i, align 1
  %261 = and i8 %256, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %tobool334.not.i.i.i = icmp eq i8 %261, 0
  br i1 %tobool334.not.i.i.i, label %if.else289.i.i.i.if.end343.i.i.i_crit_edge, label %if.then335.i.i.i

if.else289.i.i.i.if.end343.i.i.i_crit_edge:       ; preds = %if.else289.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end343.i.i.i

if.then317.i.i.i:                                 ; preds = %if.end250.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx287.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwrinfo5g.i.i, i32 0, i32 2, i32 %rfpath.1770.i.i.i
  %262 = ptrtoint ptr %arrayidx287.i.i.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 0, ptr %arrayidx287.i.i.i, align 1
  %arrayidx319.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwrinfo5g.i.i, i32 0, i32 1, i32 %rfpath.1770.i.i.i
  %263 = ptrtoint ptr %arrayidx319.i.i.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 4, ptr %arrayidx319.i.i.i, align 1
  br label %if.end343.i.i.i

if.then335.i.i.i:                                 ; preds = %if.else289.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or340.i.i.i = or i8 %256, -16
  %264 = ptrtoint ptr %arrayidx327.i.i.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %or340.i.i.i, ptr %arrayidx327.i.i.i, align 1
  br label %if.end343.i.i.i

if.end343.i.i.i:                                  ; preds = %if.then335.i.i.i, %if.then317.i.i.i, %if.else289.i.i.i.if.end343.i.i.i_crit_edge
  %eeaddr.5764.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 33
  %arrayidx349.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %eeaddr.5764.i.i.i
  %265 = ptrtoint ptr %arrayidx349.i.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx349.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %266)
  %cmp351.i.i.i = icmp eq i8 %266, -1
  br i1 %cmp351.i.i.i, label %if.then385.i.i.i, label %if.else357.i.i.i

if.else357.i.i.i:                                 ; preds = %if.end343.i.i.i
  %267 = lshr i8 %266, 4
  %arrayidx365.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwrinfo5g.i.i, i32 0, i32 3, i32 %rfpath.1770.i.i.i, i32 1
  %or377.i.i.i = or i8 %267, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %266)
  %tobool371.not.i181.i.i = icmp slt i8 %266, 0
  %spec.select170.i.i = select i1 %tobool371.not.i181.i.i, i8 %or377.i.i.i, i8 %267
  %268 = ptrtoint ptr %arrayidx365.i.i.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %spec.select170.i.i, ptr %arrayidx365.i.i.i, align 1
  %269 = and i8 %266, 15
  %arrayidx396.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwrinfo5g.i.i, i32 0, i32 2, i32 %rfpath.1770.i.i.i, i32 1
  %270 = ptrtoint ptr %arrayidx396.i.i.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %269, ptr %arrayidx396.i.i.i, align 1
  %271 = and i8 %266, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool402.not.i.i.i = icmp eq i8 %271, 0
  br i1 %tobool402.not.i.i.i, label %if.else357.i.i.i.if.end411.i.i.i_crit_edge, label %if.then403.i.i.i

if.else357.i.i.i.if.end411.i.i.i_crit_edge:       ; preds = %if.else357.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end411.i.i.i

if.then385.i.i.i:                                 ; preds = %if.end343.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx356.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwrinfo5g.i.i, i32 0, i32 3, i32 %rfpath.1770.i.i.i, i32 1
  %272 = ptrtoint ptr %arrayidx356.i.i.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 -2, ptr %arrayidx356.i.i.i, align 1
  %arrayidx388.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwrinfo5g.i.i, i32 0, i32 2, i32 %rfpath.1770.i.i.i, i32 1
  %273 = ptrtoint ptr %arrayidx388.i.i.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 -2, ptr %arrayidx388.i.i.i, align 1
  br label %if.end411.i.i.i

if.then403.i.i.i:                                 ; preds = %if.else357.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or408.i.i.i = or i8 %266, -16
  %274 = ptrtoint ptr %arrayidx396.i.i.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %or408.i.i.i, ptr %arrayidx396.i.i.i, align 1
  br label %if.end411.i.i.i

if.end411.i.i.i:                                  ; preds = %if.then403.i.i.i, %if.then385.i.i.i, %if.else357.i.i.i.if.end411.i.i.i_crit_edge
  %eeaddr.5.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 34
  %arrayidx349.1.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %eeaddr.5.i.i.i
  %275 = ptrtoint ptr %arrayidx349.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %arrayidx349.1.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %276)
  %cmp351.1.i.i.i = icmp eq i8 %276, -1
  br i1 %cmp351.1.i.i.i, label %if.then385.1.i.i.i, label %if.else357.1.i.i.i

if.else357.1.i.i.i:                               ; preds = %if.end411.i.i.i
  %277 = lshr i8 %276, 4
  %arrayidx365.1.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwrinfo5g.i.i, i32 0, i32 3, i32 %rfpath.1770.i.i.i, i32 2
  %or377.1.i.i.i = or i8 %277, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %tobool371.not.1.i182.i.i = icmp slt i8 %276, 0
  %spec.select171.i.i = select i1 %tobool371.not.1.i182.i.i, i8 %or377.1.i.i.i, i8 %277
  %278 = ptrtoint ptr %arrayidx365.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %spec.select171.i.i, ptr %arrayidx365.1.i.i.i, align 1
  %279 = and i8 %276, 15
  %arrayidx396.1.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwrinfo5g.i.i, i32 0, i32 2, i32 %rfpath.1770.i.i.i, i32 2
  %280 = ptrtoint ptr %arrayidx396.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %279, ptr %arrayidx396.1.i.i.i, align 1
  %281 = and i8 %276, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %tobool402.not.1.i.i.i = icmp eq i8 %281, 0
  br i1 %tobool402.not.1.i.i.i, label %if.else357.1.i.i.i.if.end411.1.i.i.i_crit_edge, label %if.then403.1.i.i.i

if.else357.1.i.i.i.if.end411.1.i.i.i_crit_edge:   ; preds = %if.else357.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end411.1.i.i.i

if.then403.1.i.i.i:                               ; preds = %if.else357.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or408.1.i.i.i = or i8 %276, -16
  %282 = ptrtoint ptr %arrayidx396.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 %or408.1.i.i.i, ptr %arrayidx396.1.i.i.i, align 1
  br label %if.end411.1.i.i.i

if.then385.1.i.i.i:                               ; preds = %if.end411.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx356.1.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwrinfo5g.i.i, i32 0, i32 3, i32 %rfpath.1770.i.i.i, i32 2
  %283 = ptrtoint ptr %arrayidx356.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 -2, ptr %arrayidx356.1.i.i.i, align 1
  %arrayidx388.1.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwrinfo5g.i.i, i32 0, i32 2, i32 %rfpath.1770.i.i.i, i32 2
  %284 = ptrtoint ptr %arrayidx388.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 -2, ptr %arrayidx388.1.i.i.i, align 1
  br label %if.end411.1.i.i.i

if.end411.1.i.i.i:                                ; preds = %if.then385.1.i.i.i, %if.then403.1.i.i.i, %if.else357.1.i.i.i.if.end411.1.i.i.i_crit_edge
  %eeaddr.5.1.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 35
  %arrayidx349.2.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %eeaddr.5.1.i.i.i
  %285 = ptrtoint ptr %arrayidx349.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %arrayidx349.2.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %286)
  %cmp351.2.i.i.i = icmp eq i8 %286, -1
  br i1 %cmp351.2.i.i.i, label %if.then385.2.i.i.i, label %if.else357.2.i.i.i

if.else357.2.i.i.i:                               ; preds = %if.end411.1.i.i.i
  %287 = lshr i8 %286, 4
  %arrayidx365.2.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwrinfo5g.i.i, i32 0, i32 3, i32 %rfpath.1770.i.i.i, i32 3
  %or377.2.i.i.i = or i8 %287, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %286)
  %tobool371.not.2.i183.i.i = icmp slt i8 %286, 0
  %spec.select172.i.i = select i1 %tobool371.not.2.i183.i.i, i8 %or377.2.i.i.i, i8 %287
  %288 = ptrtoint ptr %arrayidx365.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %spec.select172.i.i, ptr %arrayidx365.2.i.i.i, align 1
  %289 = and i8 %286, 15
  %arrayidx396.2.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwrinfo5g.i.i, i32 0, i32 2, i32 %rfpath.1770.i.i.i, i32 3
  %290 = ptrtoint ptr %arrayidx396.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %289, ptr %arrayidx396.2.i.i.i, align 1
  %291 = and i8 %286, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %291)
  %tobool402.not.2.i.i.i = icmp eq i8 %291, 0
  br i1 %tobool402.not.2.i.i.i, label %if.else357.2.i.i.i.if.end411.2.i.i.i_crit_edge, label %if.then403.2.i.i.i

if.else357.2.i.i.i.if.end411.2.i.i.i_crit_edge:   ; preds = %if.else357.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end411.2.i.i.i

if.then403.2.i.i.i:                               ; preds = %if.else357.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or408.2.i.i.i = or i8 %286, -16
  %292 = ptrtoint ptr %arrayidx396.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %or408.2.i.i.i, ptr %arrayidx396.2.i.i.i, align 1
  br label %if.end411.2.i.i.i

if.then385.2.i.i.i:                               ; preds = %if.end411.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx356.2.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwrinfo5g.i.i, i32 0, i32 3, i32 %rfpath.1770.i.i.i, i32 3
  %293 = ptrtoint ptr %arrayidx356.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 -2, ptr %arrayidx356.2.i.i.i, align 1
  %arrayidx388.2.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwrinfo5g.i.i, i32 0, i32 2, i32 %rfpath.1770.i.i.i, i32 3
  %294 = ptrtoint ptr %arrayidx388.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 -2, ptr %arrayidx388.2.i.i.i, align 1
  br label %if.end411.2.i.i.i

if.end411.2.i.i.i:                                ; preds = %if.then385.2.i.i.i, %if.then403.2.i.i.i, %if.else357.2.i.i.i.if.end411.2.i.i.i_crit_edge
  %eeaddr.5.2.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 36
  %arrayidx416.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %eeaddr.5.2.i.i.i
  %295 = ptrtoint ptr %arrayidx416.i.i.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %arrayidx416.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %296)
  %cmp418.i.i.i = icmp eq i8 %296, -1
  %297 = lshr i8 %296, 4
  %298 = and i8 %296, 15
  %.sink.i.i = select i1 %cmp418.i.i.i, i8 -2, i8 %297
  %.sink.i.i.i = select i1 %cmp418.i.i.i, i8 -2, i8 %298
  %299 = getelementptr %struct.txpower_info_5g, ptr %pwrinfo5g.i.i, i32 0, i32 1, i32 %rfpath.1770.i.i.i, i32 1
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 %.sink.i.i, ptr %299, align 1
  %301 = getelementptr %struct.txpower_info_5g, ptr %pwrinfo5g.i.i, i32 0, i32 1, i32 %rfpath.1770.i.i.i, i32 2
  %302 = ptrtoint ptr %301 to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %.sink.i.i.i, ptr %301, align 1
  %inc444.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 37
  %arrayidx445.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc444.i.i.i
  %303 = ptrtoint ptr %arrayidx445.i.i.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %arrayidx445.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %304)
  %cmp447.i.i.i = icmp eq i8 %304, -1
  %305 = and i8 %304, 15
  %spec.select786.i.i.i = select i1 %cmp447.i.i.i, i8 -2, i8 %305
  %306 = getelementptr %struct.txpower_info_5g, ptr %pwrinfo5g.i.i, i32 0, i32 1, i32 %rfpath.1770.i.i.i, i32 3
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 %spec.select786.i.i.i, ptr %306, align 1
  %308 = and i8 %.sink.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %308)
  %tobool483.not.i.i.i = icmp eq i8 %308, 0
  br i1 %tobool483.not.i.i.i, label %if.end411.2.i.i.i.for.inc493.i.i.i_crit_edge, label %for.inc493.sink.split.i.i.i

if.end411.2.i.i.i.for.inc493.i.i.i_crit_edge:     ; preds = %if.end411.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc493.i.i.i

for.inc493.sink.split.i.i.i:                      ; preds = %if.end411.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or489.i.i.i = or i8 %.sink.i.i, -16
  %309 = ptrtoint ptr %299 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %or489.i.i.i, ptr %299, align 1
  br label %for.inc493.i.i.i

for.inc493.i.i.i:                                 ; preds = %for.inc493.sink.split.i.i.i, %if.end411.2.i.i.i.for.inc493.i.i.i_crit_edge
  %310 = ptrtoint ptr %301 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %301, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %311)
  %cmp471.1.i.i.i = icmp eq i8 %311, -1
  br i1 %cmp471.1.i.i.i, label %for.inc493.i.i.i.for.inc493.1.sink.split.i.i.i_crit_edge, label %if.else477.1.i.i.i

for.inc493.i.i.i.for.inc493.1.sink.split.i.i.i_crit_edge: ; preds = %for.inc493.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc493.1.sink.split.i.i.i

if.else477.1.i.i.i:                               ; preds = %for.inc493.i.i.i
  %312 = and i8 %311, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %312)
  %tobool483.not.1.i.i.i = icmp eq i8 %312, 0
  br i1 %tobool483.not.1.i.i.i, label %if.else477.1.i.i.i.for.inc493.1.i.i.i_crit_edge, label %if.then484.1.i.i.i

if.else477.1.i.i.i.for.inc493.1.i.i.i_crit_edge:  ; preds = %if.else477.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc493.1.i.i.i

if.then484.1.i.i.i:                               ; preds = %if.else477.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or489.1.i.i.i = or i8 %311, -16
  br label %for.inc493.1.sink.split.i.i.i

for.inc493.1.sink.split.i.i.i:                    ; preds = %if.then484.1.i.i.i, %for.inc493.i.i.i.for.inc493.1.sink.split.i.i.i_crit_edge
  %.sink788.i.i.i = phi i8 [ %or489.1.i.i.i, %if.then484.1.i.i.i ], [ -2, %for.inc493.i.i.i.for.inc493.1.sink.split.i.i.i_crit_edge ]
  %313 = ptrtoint ptr %301 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 %.sink788.i.i.i, ptr %301, align 1
  br label %for.inc493.1.i.i.i

for.inc493.1.i.i.i:                               ; preds = %for.inc493.1.sink.split.i.i.i, %if.else477.1.i.i.i.for.inc493.1.i.i.i_crit_edge
  %314 = ptrtoint ptr %306 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %306, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %315)
  %cmp471.2.i.i.i = icmp eq i8 %315, -1
  br i1 %cmp471.2.i.i.i, label %for.inc493.1.i.i.i.for.inc493.2.sink.split.i.i.i_crit_edge, label %if.else477.2.i.i.i

for.inc493.1.i.i.i.for.inc493.2.sink.split.i.i.i_crit_edge: ; preds = %for.inc493.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc493.2.sink.split.i.i.i

if.else477.2.i.i.i:                               ; preds = %for.inc493.1.i.i.i
  %316 = and i8 %315, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %316)
  %tobool483.not.2.i.i.i = icmp eq i8 %316, 0
  br i1 %tobool483.not.2.i.i.i, label %if.else477.2.i.i.i.for.inc493.2.i.i.i_crit_edge, label %if.then484.2.i.i.i

if.else477.2.i.i.i.for.inc493.2.i.i.i_crit_edge:  ; preds = %if.else477.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc493.2.i.i.i

if.then484.2.i.i.i:                               ; preds = %if.else477.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or489.2.i.i.i = or i8 %315, -16
  br label %for.inc493.2.sink.split.i.i.i

for.inc493.2.sink.split.i.i.i:                    ; preds = %if.then484.2.i.i.i, %for.inc493.1.i.i.i.for.inc493.2.sink.split.i.i.i_crit_edge
  %.sink789.i.i.i = phi i8 [ %or489.2.i.i.i, %if.then484.2.i.i.i ], [ -2, %for.inc493.1.i.i.i.for.inc493.2.sink.split.i.i.i_crit_edge ]
  %317 = ptrtoint ptr %306 to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 %.sink789.i.i.i, ptr %306, align 1
  br label %for.inc493.2.i.i.i

for.inc493.2.i.i.i:                               ; preds = %for.inc493.2.sink.split.i.i.i, %if.else477.2.i.i.i.for.inc493.2.i.i.i_crit_edge
  %inc462.i.i.i = add nuw nsw i32 %eeaddr.0777.i.i.i, 38
  %inc497.i.i.i = add nuw nsw i32 %rfpath.1770.i.i.i, 1
  %exitcond783.not.i.i.i = icmp eq i32 %inc497.i.i.i, 4
  br i1 %exitcond783.not.i.i.i, label %for.inc493.2.i.i.i._rtl88e_get_chnl_group.exit.i.i.8.preheader_crit_edge, label %for.inc493.2.i.i.i.for.cond14.preheader.i.i.i_crit_edge

for.inc493.2.i.i.i.for.cond14.preheader.i.i.i_crit_edge: ; preds = %for.inc493.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond14.preheader.i.i.i

for.inc493.2.i.i.i._rtl88e_get_chnl_group.exit.i.i.8.preheader_crit_edge: ; preds = %for.inc493.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88e_get_chnl_group.exit.i.i.8.preheader

_rtl88e_get_chnl_group.exit.i.i.8.preheader:      ; preds = %for.inc493.2.i.i.i._rtl88e_get_chnl_group.exit.i.i.8.preheader_crit_edge, %if.then6.i.i.i
  br label %_rtl88e_get_chnl_group.exit.i.i.8

_rtl88e_get_chnl_group.exit.i.i.8:                ; preds = %_rtl88e_get_chnl_group.exit.i.i.8._rtl88e_get_chnl_group.exit.i.i.8_crit_edge, %_rtl88e_get_chnl_group.exit.i.i.8.preheader
  %indvars.iv210.i.i = phi i32 [ %indvars.iv.next211.i.i, %_rtl88e_get_chnl_group.exit.i.i.8._rtl88e_get_chnl_group.exit.i.i.8_crit_edge ], [ 0, %_rtl88e_get_chnl_group.exit.i.i.8.preheader ]
  %arrayidx25.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 4, i32 %indvars.iv210.i.i
  %arrayidx32.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 3, i32 %indvars.iv210.i.i
  %arrayidx11.peel.i.i = getelementptr [4 x [6 x i8]], ptr %pwrinfo24g.i.i, i32 0, i32 %indvars.iv210.i.i, i32 0
  %318 = ptrtoint ptr %arrayidx11.peel.i.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %arrayidx11.peel.i.i, align 1
  %arrayidx15.peel.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv210.i.i, i32 0
  %320 = ptrtoint ptr %arrayidx15.peel.i.i to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 %319, ptr %arrayidx15.peel.i.i, align 1
  %arrayidx19.peel.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 1, i32 %indvars.iv210.i.i, i32 0
  %321 = ptrtoint ptr %arrayidx19.peel.i.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %arrayidx19.peel.i.i, align 1
  %arrayidx23.peel.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv210.i.i, i32 0
  %323 = ptrtoint ptr %arrayidx23.peel.i.i to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 %322, ptr %arrayidx23.peel.i.i, align 1
  %324 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %arrayidx25.i.i, align 1
  %arrayidx30.peel.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv210.i.i, i32 0
  %326 = ptrtoint ptr %arrayidx30.peel.i.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %325, ptr %arrayidx30.peel.i.i, align 1
  %327 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %arrayidx32.i.i, align 1
  %arrayidx37.peel.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv210.i.i, i32 0
  %329 = ptrtoint ptr %arrayidx37.peel.i.i to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 %328, ptr %arrayidx37.peel.i.i, align 1
  %330 = load i8, ptr %arrayidx11.peel.i.i, align 1
  %arrayidx15.peel200.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv210.i.i, i32 1
  %331 = ptrtoint ptr %arrayidx15.peel200.i.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 %330, ptr %arrayidx15.peel200.i.i, align 1
  %332 = load i8, ptr %arrayidx19.peel.i.i, align 1
  %arrayidx23.peel202.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv210.i.i, i32 1
  %333 = ptrtoint ptr %arrayidx23.peel202.i.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 %332, ptr %arrayidx23.peel202.i.i, align 1
  %334 = load i8, ptr %arrayidx25.i.i, align 1
  %arrayidx30.peel203.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv210.i.i, i32 1
  %335 = ptrtoint ptr %arrayidx30.peel203.i.i to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 %334, ptr %arrayidx30.peel203.i.i, align 1
  %336 = load i8, ptr %arrayidx32.i.i, align 1
  %arrayidx37.peel204.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv210.i.i, i32 1
  %337 = ptrtoint ptr %arrayidx37.peel204.i.i to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 %336, ptr %arrayidx37.peel204.i.i, align 1
  %arrayidx11.i.peel.i = getelementptr [4 x [6 x i8]], ptr %pwrinfo24g.i.i, i32 0, i32 %indvars.iv210.i.i, i32 1
  %338 = ptrtoint ptr %arrayidx11.i.peel.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %arrayidx11.i.peel.i, align 1
  %arrayidx15.i.peel.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv210.i.i, i32 2
  %340 = ptrtoint ptr %arrayidx15.i.peel.i to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 %339, ptr %arrayidx15.i.peel.i, align 1
  %arrayidx19.i.peel.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 1, i32 %indvars.iv210.i.i, i32 1
  %341 = ptrtoint ptr %arrayidx19.i.peel.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %arrayidx19.i.peel.i, align 1
  %arrayidx23.i.peel.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv210.i.i, i32 2
  %343 = ptrtoint ptr %arrayidx23.i.peel.i to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 %342, ptr %arrayidx23.i.peel.i, align 1
  %344 = load i8, ptr %arrayidx25.i.i, align 1
  %arrayidx30.i.peel.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv210.i.i, i32 2
  %345 = ptrtoint ptr %arrayidx30.i.peel.i to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 %344, ptr %arrayidx30.i.peel.i, align 1
  %346 = load i8, ptr %arrayidx32.i.i, align 1
  %arrayidx37.i.peel.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv210.i.i, i32 2
  %347 = ptrtoint ptr %arrayidx37.i.peel.i to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 %346, ptr %arrayidx37.i.peel.i, align 1
  %348 = load i8, ptr %arrayidx11.i.peel.i, align 1
  %arrayidx15.i.peel220.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv210.i.i, i32 3
  %349 = ptrtoint ptr %arrayidx15.i.peel220.i to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 %348, ptr %arrayidx15.i.peel220.i, align 1
  %350 = load i8, ptr %arrayidx19.i.peel.i, align 1
  %arrayidx23.i.peel222.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv210.i.i, i32 3
  %351 = ptrtoint ptr %arrayidx23.i.peel222.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 %350, ptr %arrayidx23.i.peel222.i, align 1
  %352 = load i8, ptr %arrayidx25.i.i, align 1
  %arrayidx30.i.peel223.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv210.i.i, i32 3
  %353 = ptrtoint ptr %arrayidx30.i.peel223.i to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 %352, ptr %arrayidx30.i.peel223.i, align 1
  %354 = load i8, ptr %arrayidx32.i.i, align 1
  %arrayidx37.i.peel224.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv210.i.i, i32 3
  %355 = ptrtoint ptr %arrayidx37.i.peel224.i to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 %354, ptr %arrayidx37.i.peel224.i, align 1
  %356 = load i8, ptr %arrayidx11.i.peel.i, align 1
  %arrayidx15.i.peel240.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv210.i.i, i32 4
  %357 = ptrtoint ptr %arrayidx15.i.peel240.i to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 %356, ptr %arrayidx15.i.peel240.i, align 1
  %358 = load i8, ptr %arrayidx19.i.peel.i, align 1
  %arrayidx23.i.peel242.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv210.i.i, i32 4
  %359 = ptrtoint ptr %arrayidx23.i.peel242.i to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 %358, ptr %arrayidx23.i.peel242.i, align 1
  %360 = load i8, ptr %arrayidx25.i.i, align 1
  %arrayidx30.i.peel243.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv210.i.i, i32 4
  %361 = ptrtoint ptr %arrayidx30.i.peel243.i to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 %360, ptr %arrayidx30.i.peel243.i, align 1
  %362 = load i8, ptr %arrayidx32.i.i, align 1
  %arrayidx37.i.peel244.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv210.i.i, i32 4
  %363 = ptrtoint ptr %arrayidx37.i.peel244.i to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 %362, ptr %arrayidx37.i.peel244.i, align 1
  %arrayidx11.i.i = getelementptr [4 x [6 x i8]], ptr %pwrinfo24g.i.i, i32 0, i32 %indvars.iv210.i.i, i32 2
  %364 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %arrayidx11.i.i, align 1
  %arrayidx15.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv210.i.i, i32 5
  %366 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 %365, ptr %arrayidx15.i.i, align 1
  %arrayidx19.i.i = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 1, i32 %indvars.iv210.i.i, i32 2
  %367 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %arrayidx19.i.i, align 1
  %arrayidx23.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv210.i.i, i32 5
  %369 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 %368, ptr %arrayidx23.i.i, align 1
  %370 = load i8, ptr %arrayidx25.i.i, align 1
  %arrayidx30.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv210.i.i, i32 5
  %371 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 %370, ptr %arrayidx30.i.i, align 1
  %372 = load i8, ptr %arrayidx32.i.i, align 1
  %arrayidx37.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv210.i.i, i32 5
  %373 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 %372, ptr %arrayidx37.i.i, align 1
  %374 = load i8, ptr %arrayidx11.i.i, align 1
  %arrayidx15.i.i.1 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv210.i.i, i32 6
  %375 = ptrtoint ptr %arrayidx15.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 %374, ptr %arrayidx15.i.i.1, align 1
  %376 = load i8, ptr %arrayidx19.i.i, align 1
  %arrayidx23.i.i.1 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv210.i.i, i32 6
  %377 = ptrtoint ptr %arrayidx23.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 %376, ptr %arrayidx23.i.i.1, align 1
  %378 = load i8, ptr %arrayidx25.i.i, align 1
  %arrayidx30.i.i.1 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv210.i.i, i32 6
  %379 = ptrtoint ptr %arrayidx30.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 %378, ptr %arrayidx30.i.i.1, align 1
  %380 = load i8, ptr %arrayidx32.i.i, align 1
  %arrayidx37.i.i.1 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv210.i.i, i32 6
  %381 = ptrtoint ptr %arrayidx37.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 %380, ptr %arrayidx37.i.i.1, align 1
  %382 = load i8, ptr %arrayidx11.i.i, align 1
  %arrayidx15.i.i.2 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv210.i.i, i32 7
  %383 = ptrtoint ptr %arrayidx15.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 %382, ptr %arrayidx15.i.i.2, align 1
  %384 = load i8, ptr %arrayidx19.i.i, align 1
  %arrayidx23.i.i.2 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv210.i.i, i32 7
  %385 = ptrtoint ptr %arrayidx23.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 %384, ptr %arrayidx23.i.i.2, align 1
  %386 = load i8, ptr %arrayidx25.i.i, align 1
  %arrayidx30.i.i.2 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv210.i.i, i32 7
  %387 = ptrtoint ptr %arrayidx30.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 %386, ptr %arrayidx30.i.i.2, align 1
  %388 = load i8, ptr %arrayidx32.i.i, align 1
  %arrayidx37.i.i.2 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv210.i.i, i32 7
  %389 = ptrtoint ptr %arrayidx37.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 %388, ptr %arrayidx37.i.i.2, align 1
  %arrayidx11.i.i.3 = getelementptr [4 x [6 x i8]], ptr %pwrinfo24g.i.i, i32 0, i32 %indvars.iv210.i.i, i32 3
  %390 = ptrtoint ptr %arrayidx11.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %arrayidx11.i.i.3, align 1
  %arrayidx15.i.i.3 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv210.i.i, i32 8
  %392 = ptrtoint ptr %arrayidx15.i.i.3 to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 %391, ptr %arrayidx15.i.i.3, align 1
  %arrayidx19.i.i.3 = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 1, i32 %indvars.iv210.i.i, i32 3
  %393 = ptrtoint ptr %arrayidx19.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %arrayidx19.i.i.3, align 1
  %arrayidx23.i.i.3 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv210.i.i, i32 8
  %395 = ptrtoint ptr %arrayidx23.i.i.3 to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 %394, ptr %arrayidx23.i.i.3, align 1
  %396 = load i8, ptr %arrayidx25.i.i, align 1
  %arrayidx30.i.i.3 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv210.i.i, i32 8
  %397 = ptrtoint ptr %arrayidx30.i.i.3 to i32
  call void @__asan_store1_noabort(i32 %397)
  store i8 %396, ptr %arrayidx30.i.i.3, align 1
  %398 = load i8, ptr %arrayidx32.i.i, align 1
  %arrayidx37.i.i.3 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv210.i.i, i32 8
  %399 = ptrtoint ptr %arrayidx37.i.i.3 to i32
  call void @__asan_store1_noabort(i32 %399)
  store i8 %398, ptr %arrayidx37.i.i.3, align 1
  %400 = load i8, ptr %arrayidx11.i.i.3, align 1
  %arrayidx15.i.i.4 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv210.i.i, i32 9
  %401 = ptrtoint ptr %arrayidx15.i.i.4 to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 %400, ptr %arrayidx15.i.i.4, align 1
  %402 = load i8, ptr %arrayidx19.i.i.3, align 1
  %arrayidx23.i.i.4 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv210.i.i, i32 9
  %403 = ptrtoint ptr %arrayidx23.i.i.4 to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 %402, ptr %arrayidx23.i.i.4, align 1
  %404 = load i8, ptr %arrayidx25.i.i, align 1
  %arrayidx30.i.i.4 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv210.i.i, i32 9
  %405 = ptrtoint ptr %arrayidx30.i.i.4 to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 %404, ptr %arrayidx30.i.i.4, align 1
  %406 = load i8, ptr %arrayidx32.i.i, align 1
  %arrayidx37.i.i.4 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv210.i.i, i32 9
  %407 = ptrtoint ptr %arrayidx37.i.i.4 to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 %406, ptr %arrayidx37.i.i.4, align 1
  %408 = load i8, ptr %arrayidx11.i.i.3, align 1
  %arrayidx15.i.i.5 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv210.i.i, i32 10
  %409 = ptrtoint ptr %arrayidx15.i.i.5 to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 %408, ptr %arrayidx15.i.i.5, align 1
  %410 = load i8, ptr %arrayidx19.i.i.3, align 1
  %arrayidx23.i.i.5 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv210.i.i, i32 10
  %411 = ptrtoint ptr %arrayidx23.i.i.5 to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 %410, ptr %arrayidx23.i.i.5, align 1
  %412 = load i8, ptr %arrayidx25.i.i, align 1
  %arrayidx30.i.i.5 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv210.i.i, i32 10
  %413 = ptrtoint ptr %arrayidx30.i.i.5 to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 %412, ptr %arrayidx30.i.i.5, align 1
  %414 = load i8, ptr %arrayidx32.i.i, align 1
  %arrayidx37.i.i.5 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv210.i.i, i32 10
  %415 = ptrtoint ptr %arrayidx37.i.i.5 to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 %414, ptr %arrayidx37.i.i.5, align 1
  %arrayidx11.i.i.6 = getelementptr [4 x [6 x i8]], ptr %pwrinfo24g.i.i, i32 0, i32 %indvars.iv210.i.i, i32 4
  %416 = ptrtoint ptr %arrayidx11.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %arrayidx11.i.i.6, align 1
  %arrayidx15.i.i.6 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv210.i.i, i32 11
  %418 = ptrtoint ptr %arrayidx15.i.i.6 to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 %417, ptr %arrayidx15.i.i.6, align 1
  %arrayidx19.i.i.6 = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 1, i32 %indvars.iv210.i.i, i32 4
  %419 = ptrtoint ptr %arrayidx19.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %arrayidx19.i.i.6, align 1
  %arrayidx23.i.i.6 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv210.i.i, i32 11
  %421 = ptrtoint ptr %arrayidx23.i.i.6 to i32
  call void @__asan_store1_noabort(i32 %421)
  store i8 %420, ptr %arrayidx23.i.i.6, align 1
  %422 = load i8, ptr %arrayidx25.i.i, align 1
  %arrayidx30.i.i.6 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv210.i.i, i32 11
  %423 = ptrtoint ptr %arrayidx30.i.i.6 to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 %422, ptr %arrayidx30.i.i.6, align 1
  %424 = load i8, ptr %arrayidx32.i.i, align 1
  %arrayidx37.i.i.6 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv210.i.i, i32 11
  %425 = ptrtoint ptr %arrayidx37.i.i.6 to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 %424, ptr %arrayidx37.i.i.6, align 1
  %426 = load i8, ptr %arrayidx11.i.i.6, align 1
  %arrayidx15.i.i.7 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv210.i.i, i32 12
  %427 = ptrtoint ptr %arrayidx15.i.i.7 to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 %426, ptr %arrayidx15.i.i.7, align 1
  %428 = load i8, ptr %arrayidx19.i.i.6, align 1
  %arrayidx23.i.i.7 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv210.i.i, i32 12
  %429 = ptrtoint ptr %arrayidx23.i.i.7 to i32
  call void @__asan_store1_noabort(i32 %429)
  store i8 %428, ptr %arrayidx23.i.i.7, align 1
  %430 = load i8, ptr %arrayidx25.i.i, align 1
  %arrayidx30.i.i.7 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv210.i.i, i32 12
  %431 = ptrtoint ptr %arrayidx30.i.i.7 to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 %430, ptr %arrayidx30.i.i.7, align 1
  %432 = load i8, ptr %arrayidx32.i.i, align 1
  %arrayidx37.i.i.7 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv210.i.i, i32 12
  %433 = ptrtoint ptr %arrayidx37.i.i.7 to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 %432, ptr %arrayidx37.i.i.7, align 1
  %arrayidx11.i.i.8 = getelementptr [4 x [6 x i8]], ptr %pwrinfo24g.i.i, i32 0, i32 %indvars.iv210.i.i, i32 5
  %434 = ptrtoint ptr %arrayidx11.i.i.8 to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %arrayidx11.i.i.8, align 1
  %arrayidx15.i.i.8 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv210.i.i, i32 13
  %436 = ptrtoint ptr %arrayidx15.i.i.8 to i32
  call void @__asan_store1_noabort(i32 %436)
  store i8 %435, ptr %arrayidx15.i.i.8, align 1
  %arrayidx19.i.i.8 = getelementptr %struct.txpower_info_2g, ptr %pwrinfo24g.i.i, i32 0, i32 1, i32 %indvars.iv210.i.i, i32 5
  %437 = ptrtoint ptr %arrayidx19.i.i.8 to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %arrayidx19.i.i.8, align 1
  %arrayidx23.i.i.8 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv210.i.i, i32 13
  %439 = ptrtoint ptr %arrayidx23.i.i.8 to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 %438, ptr %arrayidx23.i.i.8, align 1
  %440 = load i8, ptr %arrayidx25.i.i, align 1
  %arrayidx30.i.i.8 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv210.i.i, i32 13
  %441 = ptrtoint ptr %arrayidx30.i.i.8 to i32
  call void @__asan_store1_noabort(i32 %441)
  store i8 %440, ptr %arrayidx30.i.i.8, align 1
  %442 = load i8, ptr %arrayidx32.i.i, align 1
  %arrayidx37.i.i.8 = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv210.i.i, i32 13
  %443 = ptrtoint ptr %arrayidx37.i.i.8 to i32
  call void @__asan_store1_noabort(i32 %443)
  store i8 %442, ptr %arrayidx37.i.i.8, align 1
  %444 = load i8, ptr %arrayidx15.peel.i.i, align 1
  %conv50.i.i = zext i8 %444 to i32
  %445 = load i8, ptr %arrayidx23.peel.i.i, align 1
  %conv56.i.i = zext i8 %445 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef %indvars.iv210.i.i, i32 noundef 0, i32 noundef %conv50.i.i, i32 noundef %conv56.i.i) #7
  %446 = ptrtoint ptr %arrayidx15.peel200.i.i to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %arrayidx15.peel200.i.i, align 1
  %conv50.1.i.i = zext i8 %447 to i32
  %448 = ptrtoint ptr %arrayidx23.peel202.i.i to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %arrayidx23.peel202.i.i, align 1
  %conv56.1.i.i = zext i8 %449 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef %indvars.iv210.i.i, i32 noundef 1, i32 noundef %conv50.1.i.i, i32 noundef %conv56.1.i.i) #7
  %450 = ptrtoint ptr %arrayidx15.i.peel.i to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %arrayidx15.i.peel.i, align 1
  %conv50.2.i.i = zext i8 %451 to i32
  %452 = ptrtoint ptr %arrayidx23.i.peel.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %arrayidx23.i.peel.i, align 1
  %conv56.2.i.i = zext i8 %453 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef %indvars.iv210.i.i, i32 noundef 2, i32 noundef %conv50.2.i.i, i32 noundef %conv56.2.i.i) #7
  %454 = ptrtoint ptr %arrayidx15.i.peel220.i to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %arrayidx15.i.peel220.i, align 1
  %conv50.3.i.i = zext i8 %455 to i32
  %456 = ptrtoint ptr %arrayidx23.i.peel222.i to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %arrayidx23.i.peel222.i, align 1
  %conv56.3.i.i = zext i8 %457 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef %indvars.iv210.i.i, i32 noundef 3, i32 noundef %conv50.3.i.i, i32 noundef %conv56.3.i.i) #7
  %458 = ptrtoint ptr %arrayidx15.i.peel240.i to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %arrayidx15.i.peel240.i, align 1
  %conv50.4.i.i = zext i8 %459 to i32
  %460 = ptrtoint ptr %arrayidx23.i.peel242.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %arrayidx23.i.peel242.i, align 1
  %conv56.4.i.i = zext i8 %461 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef %indvars.iv210.i.i, i32 noundef 4, i32 noundef %conv50.4.i.i, i32 noundef %conv56.4.i.i) #7
  %462 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %arrayidx15.i.i, align 1
  %conv50.5.i.i = zext i8 %463 to i32
  %464 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %arrayidx23.i.i, align 1
  %conv56.5.i.i = zext i8 %465 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef %indvars.iv210.i.i, i32 noundef 5, i32 noundef %conv50.5.i.i, i32 noundef %conv56.5.i.i) #7
  %466 = ptrtoint ptr %arrayidx15.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %466)
  %467 = load i8, ptr %arrayidx15.i.i.1, align 1
  %conv50.6.i.i = zext i8 %467 to i32
  %468 = ptrtoint ptr %arrayidx23.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %arrayidx23.i.i.1, align 1
  %conv56.6.i.i = zext i8 %469 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef %indvars.iv210.i.i, i32 noundef 6, i32 noundef %conv50.6.i.i, i32 noundef %conv56.6.i.i) #7
  %470 = ptrtoint ptr %arrayidx15.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %470)
  %471 = load i8, ptr %arrayidx15.i.i.2, align 1
  %conv50.7.i.i = zext i8 %471 to i32
  %472 = ptrtoint ptr %arrayidx23.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %472)
  %473 = load i8, ptr %arrayidx23.i.i.2, align 1
  %conv56.7.i.i = zext i8 %473 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef %indvars.iv210.i.i, i32 noundef 7, i32 noundef %conv50.7.i.i, i32 noundef %conv56.7.i.i) #7
  %474 = ptrtoint ptr %arrayidx15.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %arrayidx15.i.i.3, align 1
  %conv50.8.i.i = zext i8 %475 to i32
  %476 = ptrtoint ptr %arrayidx23.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %arrayidx23.i.i.3, align 1
  %conv56.8.i.i = zext i8 %477 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef %indvars.iv210.i.i, i32 noundef 8, i32 noundef %conv50.8.i.i, i32 noundef %conv56.8.i.i) #7
  %478 = ptrtoint ptr %arrayidx15.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %478)
  %479 = load i8, ptr %arrayidx15.i.i.4, align 1
  %conv50.9.i.i = zext i8 %479 to i32
  %480 = ptrtoint ptr %arrayidx23.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %arrayidx23.i.i.4, align 1
  %conv56.9.i.i = zext i8 %481 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef %indvars.iv210.i.i, i32 noundef 9, i32 noundef %conv50.9.i.i, i32 noundef %conv56.9.i.i) #7
  %482 = ptrtoint ptr %arrayidx15.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %arrayidx15.i.i.5, align 1
  %conv50.10.i.i = zext i8 %483 to i32
  %484 = ptrtoint ptr %arrayidx23.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %484)
  %485 = load i8, ptr %arrayidx23.i.i.5, align 1
  %conv56.10.i.i = zext i8 %485 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef %indvars.iv210.i.i, i32 noundef 10, i32 noundef %conv50.10.i.i, i32 noundef %conv56.10.i.i) #7
  %486 = ptrtoint ptr %arrayidx15.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %486)
  %487 = load i8, ptr %arrayidx15.i.i.6, align 1
  %conv50.11.i.i = zext i8 %487 to i32
  %488 = ptrtoint ptr %arrayidx23.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %arrayidx23.i.i.6, align 1
  %conv56.11.i.i = zext i8 %489 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef %indvars.iv210.i.i, i32 noundef 11, i32 noundef %conv50.11.i.i, i32 noundef %conv56.11.i.i) #7
  %490 = ptrtoint ptr %arrayidx15.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %490)
  %491 = load i8, ptr %arrayidx15.i.i.7, align 1
  %conv50.12.i.i = zext i8 %491 to i32
  %492 = ptrtoint ptr %arrayidx23.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %arrayidx23.i.i.7, align 1
  %conv56.12.i.i = zext i8 %493 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef %indvars.iv210.i.i, i32 noundef 12, i32 noundef %conv50.12.i.i, i32 noundef %conv56.12.i.i) #7
  %494 = ptrtoint ptr %arrayidx15.i.i.8 to i32
  call void @__asan_load1_noabort(i32 %494)
  %495 = load i8, ptr %arrayidx15.i.i.8, align 1
  %conv50.13.i.i = zext i8 %495 to i32
  %496 = ptrtoint ptr %arrayidx23.i.i.8 to i32
  call void @__asan_load1_noabort(i32 %496)
  %497 = load i8, ptr %arrayidx23.i.i.8, align 1
  %conv56.13.i.i = zext i8 %497 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef %indvars.iv210.i.i, i32 noundef 13, i32 noundef %conv50.13.i.i, i32 noundef %conv56.13.i.i) #7
  %indvars.iv.next211.i.i = add nuw nsw i32 %indvars.iv210.i.i, 1
  %exitcond212.not.i.i = icmp eq i32 %indvars.iv.next211.i.i, 2
  br i1 %exitcond212.not.i.i, label %for.end62.i.i, label %_rtl88e_get_chnl_group.exit.i.i.8._rtl88e_get_chnl_group.exit.i.i.8_crit_edge

_rtl88e_get_chnl_group.exit.i.i.8._rtl88e_get_chnl_group.exit.i.i.8_crit_edge: ; preds = %_rtl88e_get_chnl_group.exit.i.i.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88e_get_chnl_group.exit.i.i.8

for.end62.i.i:                                    ; preds = %_rtl88e_get_chnl_group.exit.i.i.8
  br i1 %tobool15.i, label %if.end.thread.i.i, label %if.end.i.i

if.end.thread.i.i:                                ; preds = %for.end62.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %eeprom_thermalmeter65.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 55
  %apk_thermalmeterignore.c.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 62
  %498 = ptrtoint ptr %apk_thermalmeterignore.c.i.i to i32
  call void @__asan_store1_noabort(i32 %498)
  store i8 1, ptr %apk_thermalmeterignore.c.i.i, align 2
  %499 = ptrtoint ptr %eeprom_thermalmeter65.i.i to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 24, ptr %eeprom_thermalmeter65.i.i, align 4
  %thermalmeter.c155.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 56
  %500 = ptrtoint ptr %thermalmeter.c155.i.i to i32
  call void @__asan_store1_noabort(i32 %500)
  store i8 24, ptr %thermalmeter.c155.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef 24) #7
  %eeprom_regulatory92.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 54
  %501 = ptrtoint ptr %eeprom_regulatory92.i.i to i32
  call void @__asan_store1_noabort(i32 %501)
  store i8 0, ptr %eeprom_regulatory92.i.i, align 1
  br label %_rtl88ee_read_txpower_info_from_hwpg.exit.i

if.end.i.i:                                       ; preds = %for.end62.i.i
  %arrayidx64.i.i = getelementptr i8, ptr %call7.i.i.i, i32 186
  %502 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %arrayidx64.i.i, align 2
  %eeprom_thermalmeter.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 55
  %504 = ptrtoint ptr %eeprom_thermalmeter.i.i to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 %503, ptr %eeprom_thermalmeter.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %503)
  %cmp68.i.i = icmp eq i8 %503, -1
  br i1 %cmp68.i.i, label %if.then80.critedge157.i.i, label %if.then80.critedge.i.i

if.then80.critedge.i.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv78.c.i.i = zext i8 %503 to i32
  br label %if.then80.i.i

if.then80.critedge157.i.i:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %apk_thermalmeterignore.c158.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 62
  %505 = ptrtoint ptr %apk_thermalmeterignore.c158.i.i to i32
  call void @__asan_store1_noabort(i32 %505)
  store i8 1, ptr %apk_thermalmeterignore.c158.i.i, align 2
  %506 = ptrtoint ptr %eeprom_thermalmeter.i.i to i32
  call void @__asan_store1_noabort(i32 %506)
  store i8 24, ptr %eeprom_thermalmeter.i.i, align 4
  br label %if.then80.i.i

if.then80.i.i:                                    ; preds = %if.then80.critedge157.i.i, %if.then80.critedge.i.i
  %.sink.i = phi i8 [ 24, %if.then80.critedge157.i.i ], [ %503, %if.then80.critedge.i.i ]
  %.sink213.i.i = phi i32 [ 24, %if.then80.critedge157.i.i ], [ %conv78.c.i.i, %if.then80.critedge.i.i ]
  %507 = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 56
  %508 = ptrtoint ptr %507 to i32
  call void @__asan_store1_noabort(i32 %508)
  store i8 %.sink.i, ptr %507, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef %.sink213.i.i) #7
  %arrayidx81.i.i = getelementptr i8, ptr %call7.i.i.i, i32 193
  %509 = ptrtoint ptr %arrayidx81.i.i to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %arrayidx81.i.i, align 1
  %511 = and i8 %510, 7
  %eeprom_regulatory.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 54
  %512 = ptrtoint ptr %eeprom_regulatory.i.i to i32
  call void @__asan_store1_noabort(i32 %512)
  store i8 %511, ptr %eeprom_regulatory.i.i, align 1
  %513 = load i8, ptr %arrayidx81.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %513)
  %cmp86.i.i = icmp eq i8 %513, -1
  %spec.store.select.i.i = select i1 %cmp86.i.i, i8 0, i8 %511
  %514 = ptrtoint ptr %eeprom_regulatory.i.i to i32
  call void @__asan_store1_noabort(i32 %514)
  store i8 %spec.store.select.i.i, ptr %eeprom_regulatory.i.i, align 1
  br label %_rtl88ee_read_txpower_info_from_hwpg.exit.i

_rtl88ee_read_txpower_info_from_hwpg.exit.i:      ; preds = %if.then80.i.i, %if.end.thread.i.i
  %eeprom_regulatory94.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 54
  %515 = ptrtoint ptr %eeprom_regulatory94.i.i to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %eeprom_regulatory94.i.i, align 1
  %conv95.i.i = zext i8 %516 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.63, i32 noundef %conv95.i.i) #7
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pwrinfo5g.i.i) #7
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %pwrinfo24g.i.i) #7
  %txpwr_fromeprom.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 23
  %517 = ptrtoint ptr %txpwr_fromeprom.i to i32
  call void @__asan_store1_noabort(i32 %517)
  store i8 1, ptr %txpwr_fromeprom.i, align 4
  %518 = ptrtoint ptr %autoload_failflag.i to i32
  call void @__asan_load1_noabort(i32 %518)
  %519 = load i8, ptr %autoload_failflag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %519)
  %tobool17.not.i = icmp eq i8 %519, 0
  %520 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %priv, align 8
  br i1 %tobool17.not.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %_rtl88ee_read_txpower_info_from_hwpg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr i8, ptr %call7.i.i.i, i32 194
  %522 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %522)
  %523 = load i8, ptr %arrayidx.i.i, align 2
  %524 = lshr i8 %523, 5
  %eeprom_bt_coexist.i.i = getelementptr inbounds %struct.rtl_priv, ptr %521, i32 0, i32 49, i32 4
  %525 = ptrtoint ptr %eeprom_bt_coexist.i.i to i32
  call void @__asan_store1_noabort(i32 %525)
  store i8 %524, ptr %eeprom_bt_coexist.i.i, align 8
  %526 = load i8, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %526)
  %cmp.i.i = icmp eq i8 %526, -1
  %spec.store.select.i200.i = select i1 %cmp.i.i, i8 0, i8 %524
  %527 = ptrtoint ptr %eeprom_bt_coexist.i.i to i32
  call void @__asan_store1_noabort(i32 %527)
  store i8 %spec.store.select.i200.i, ptr %eeprom_bt_coexist.i.i, align 8
  %arrayidx8.i.i = getelementptr i8, ptr %call7.i.i.i, i32 195
  %528 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %528)
  %529 = load i8, ptr %arrayidx8.i.i, align 1
  %and10.i.i = lshr i8 %529, 1
  %530 = and i8 %and10.i.i, 7
  %and15.i.i = and i8 %529, 1
  %and19.i.i = lshr i8 %529, 4
  %531 = and i8 %and19.i.i, 1
  %532 = lshr i8 %529, 5
  %533 = and i8 %532, 1
  br label %if.end38.i.i

if.else.i.i:                                      ; preds = %_rtl88ee_read_txpower_info_from_hwpg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %eeprom_bt_coexist29.i.i = getelementptr inbounds %struct.rtl_priv, ptr %521, i32 0, i32 49, i32 4
  %534 = ptrtoint ptr %eeprom_bt_coexist29.i.i to i32
  call void @__asan_store1_noabort(i32 %534)
  store i8 0, ptr %eeprom_bt_coexist29.i.i, align 8
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.else.i.i, %if.then.i.i
  %.sink56.i.i = phi i8 [ 0, %if.else.i.i ], [ %530, %if.then.i.i ]
  %and15.sink.i.i = phi i8 [ 0, %if.else.i.i ], [ %and15.i.i, %if.then.i.i ]
  %.sink55.i.i = phi i8 [ 0, %if.else.i.i ], [ %531, %if.then.i.i ]
  %.sink.i201.i = phi i8 [ 0, %if.else.i.i ], [ %533, %if.then.i.i ]
  %535 = getelementptr inbounds %struct.rtl_priv, ptr %521, i32 0, i32 49, i32 5
  %536 = ptrtoint ptr %535 to i32
  call void @__asan_store1_noabort(i32 %536)
  store i8 %.sink56.i.i, ptr %535, align 1
  %537 = getelementptr inbounds %struct.rtl_priv, ptr %521, i32 0, i32 49, i32 6
  %538 = ptrtoint ptr %537 to i32
  call void @__asan_store1_noabort(i32 %538)
  store i8 %and15.sink.i.i, ptr %537, align 2
  %539 = getelementptr inbounds %struct.rtl_priv, ptr %521, i32 0, i32 49, i32 7
  %540 = ptrtoint ptr %539 to i32
  call void @__asan_store1_noabort(i32 %540)
  store i8 %.sink55.i.i, ptr %539, align 1
  %541 = getelementptr inbounds %struct.rtl_priv, ptr %521, i32 0, i32 49, i32 8
  %542 = ptrtoint ptr %541 to i32
  call void @__asan_store1_noabort(i32 %542)
  store i8 %.sink.i201.i, ptr %541, align 4
  %543 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %priv, align 8
  %eeprom_bt_coexist.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %544, i32 0, i32 49, i32 4
  %545 = ptrtoint ptr %eeprom_bt_coexist.i.i.i to i32
  call void @__asan_load1_noabort(i32 %545)
  %546 = load i8, ptr %eeprom_bt_coexist.i.i.i, align 8
  %bt_coexistence.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %544, i32 0, i32 49, i32 9
  %547 = ptrtoint ptr %bt_coexistence.i.i.i to i32
  call void @__asan_store1_noabort(i32 %547)
  store i8 %546, ptr %bt_coexistence.i.i.i, align 1
  %eeprom_bt_ant_num.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %544, i32 0, i32 49, i32 6
  %548 = ptrtoint ptr %eeprom_bt_ant_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %548)
  %549 = load i8, ptr %eeprom_bt_ant_num.i.i.i, align 2
  %bt_ant_num.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %544, i32 0, i32 49, i32 10
  %550 = ptrtoint ptr %bt_ant_num.i.i.i to i32
  call void @__asan_store1_noabort(i32 %550)
  store i8 %549, ptr %bt_ant_num.i.i.i, align 2
  %eeprom_bt_type.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %544, i32 0, i32 49, i32 5
  %551 = ptrtoint ptr %eeprom_bt_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %551)
  %552 = load i8, ptr %eeprom_bt_type.i.i.i, align 1
  %bt_coexist_type.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %544, i32 0, i32 49, i32 11
  %553 = ptrtoint ptr %bt_coexist_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %553)
  store i8 %552, ptr %bt_coexist_type.i.i.i, align 1
  %reg_bt_iso.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %544, i32 0, i32 49, i32 38
  %554 = ptrtoint ptr %reg_bt_iso.i.i.i to i32
  call void @__asan_load1_noabort(i32 %554)
  %555 = load i8, ptr %reg_bt_iso.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %555)
  %cmp.i.i202.i = icmp eq i8 %555, 2
  br i1 %cmp.i.i202.i, label %if.then.i.i.i, label %if.end38.i.i.if.end.i.i.i_crit_edge

if.end38.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %eeprom_bt_ant_isol.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %544, i32 0, i32 49, i32 7
  %556 = ptrtoint ptr %eeprom_bt_ant_isol.i.i.i to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %eeprom_bt_ant_isol.i.i.i, align 1
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end38.i.i.if.end.i.i.i_crit_edge
  %.sink.i.i203.i = phi i8 [ %557, %if.then.i.i.i ], [ %555, %if.end38.i.i.if.end.i.i.i_crit_edge ]
  %558 = getelementptr inbounds %struct.rtl_priv, ptr %544, i32 0, i32 49, i32 14
  %559 = ptrtoint ptr %558 to i32
  call void @__asan_store1_noabort(i32 %559)
  store i8 %.sink.i.i203.i, ptr %558, align 2
  %eeprom_bt_radio_shared.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %544, i32 0, i32 49, i32 8
  %560 = ptrtoint ptr %eeprom_bt_radio_shared.i.i.i to i32
  call void @__asan_load1_noabort(i32 %560)
  %561 = load i8, ptr %eeprom_bt_radio_shared.i.i.i, align 4
  %bt_radio_shared_type.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %544, i32 0, i32 49, i32 17
  %562 = ptrtoint ptr %bt_radio_shared_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %562)
  store i8 %561, ptr %bt_radio_shared_type.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %546)
  %tobool.not.i.i.i = icmp eq i8 %546, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.rtl8188ee_read_bt_coexist_info_from_hwpg.exit.i_crit_edge, label %if.then18.i.i.i

if.end.i.i.i.rtl8188ee_read_bt_coexist_info_from_hwpg.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8188ee_read_bt_coexist_info_from_hwpg.exit.i

if.then18.i.i.i:                                  ; preds = %if.end.i.i.i
  %reg_bt_sco.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %544, i32 0, i32 49, i32 39
  %563 = ptrtoint ptr %reg_bt_sco.i.i.i to i32
  call void @__asan_load1_noabort(i32 %563)
  %564 = load i8, ptr %reg_bt_sco.i.i.i, align 1
  %switch.tableidx = add i8 %564, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %565 = icmp ult i8 %switch.tableidx, 5
  br i1 %565, label %switch.lookup, label %if.then18.i.i.i.if.end58.i.i.i_crit_edge

if.then18.i.i.i.if.end58.i.i.i_crit_edge:         ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i.i.i

switch.lookup:                                    ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %566 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.rtl88ee_read_eeprom_info, i32 0, i32 %566
  %567 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %567)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.end58.i.i.i

if.end58.i.i.i:                                   ; preds = %switch.lookup, %if.then18.i.i.i.if.end58.i.i.i_crit_edge
  %.sink88.i.i.i = phi i8 [ %switch.load, %switch.lookup ], [ 5, %if.then18.i.i.i.if.end58.i.i.i_crit_edge ]
  %bt_service33.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %544, i32 0, i32 49, i32 16
  %568 = ptrtoint ptr %bt_service33.i.i.i to i32
  call void @__asan_store1_noabort(i32 %568)
  store i8 %.sink88.i.i.i, ptr %bt_service33.i.i.i, align 4
  %bt_edca_ul.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %544, i32 0, i32 49, i32 23
  %569 = ptrtoint ptr %bt_edca_ul.i.i.i to i32
  call void @__asan_store4_noabort(i32 %569)
  store i32 0, ptr %bt_edca_ul.i.i.i, align 4
  %bt_edca_dl.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %544, i32 0, i32 49, i32 24
  %570 = ptrtoint ptr %bt_edca_dl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %570)
  store i32 0, ptr %bt_edca_dl.i.i.i, align 8
  %bt_rssi_state.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %544, i32 0, i32 49, i32 20
  %571 = ptrtoint ptr %bt_rssi_state.i.i.i to i32
  call void @__asan_store1_noabort(i32 %571)
  store i8 -1, ptr %bt_rssi_state.i.i.i, align 8
  br label %rtl8188ee_read_bt_coexist_info_from_hwpg.exit.i

rtl8188ee_read_bt_coexist_info_from_hwpg.exit.i:  ; preds = %if.end58.i.i.i, %if.end.i.i.i.rtl8188ee_read_bt_coexist_info_from_hwpg.exit.i_crit_edge
  %arrayidx.i = getelementptr i8, ptr %call7.i.i.i, i32 193
  %572 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %572)
  %573 = load i8, ptr %arrayidx.i, align 1
  %574 = lshr i8 %573, 5
  %board_type.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 17
  %575 = ptrtoint ptr %board_type.i to i32
  call void @__asan_store1_noabort(i32 %575)
  store i8 %574, ptr %board_type.i, align 1
  %board_type21.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 10, i32 15
  %576 = ptrtoint ptr %board_type21.i to i32
  call void @__asan_store1_noabort(i32 %576)
  store i8 %574, ptr %board_type21.i, align 1
  %arrayidx22.i = getelementptr i8, ptr %call7.i.i.i, i32 194
  %577 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %577)
  %578 = load i8, ptr %arrayidx22.i, align 2
  %579 = lshr i8 %578, 6
  %580 = and i8 %579, 1
  %wowlan_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 20
  %581 = ptrtoint ptr %wowlan_enable.i to i32
  call void @__asan_store1_noabort(i32 %581)
  store i8 %580, ptr %wowlan_enable.i, align 1
  %arrayidx27.i = getelementptr i8, ptr %call7.i.i.i, i32 185
  %582 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %582)
  %583 = load i8, ptr %arrayidx27.i, align 1
  %crystalcap.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 58
  %584 = ptrtoint ptr %crystalcap.i to i32
  call void @__asan_store1_noabort(i32 %584)
  store i8 %583, ptr %crystalcap.i, align 2
  %585 = load i8, ptr %arrayidx27.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %585)
  %tobool29.not.i = icmp eq i8 %585, 0
  %spec.store.select.i = select i1 %tobool29.not.i, i8 %583, i8 32
  %586 = ptrtoint ptr %crystalcap.i to i32
  call void @__asan_store1_noabort(i32 %586)
  store i8 %spec.store.select.i, ptr %crystalcap.i, align 2
  %587 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %arrayidx.i, align 1
  %589 = lshr i8 %588, 3
  %590 = and i8 %589, 3
  %antenna_div_cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 21
  %591 = ptrtoint ptr %antenna_div_cfg.i to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 %590, ptr %antenna_div_cfg.i, align 2
  %592 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %592)
  %cmp40.i = icmp eq i8 %592, -1
  %spec.store.select198.i = select i1 %cmp40.i, i8 0, i8 %590
  %593 = ptrtoint ptr %antenna_div_cfg.i to i32
  call void @__asan_store1_noabort(i32 %593)
  store i8 %spec.store.select198.i, ptr %antenna_div_cfg.i, align 2
  %eeprom_bt_coexist.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 4
  %594 = ptrtoint ptr %eeprom_bt_coexist.i to i32
  call void @__asan_load1_noabort(i32 %594)
  %595 = load i8, ptr %eeprom_bt_coexist.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %595)
  %cmp46.not.i = icmp eq i8 %595, 0
  br i1 %cmp46.not.i, label %rtl8188ee_read_bt_coexist_info_from_hwpg.exit.i.if.end54.i_crit_edge, label %land.lhs.true.i

rtl8188ee_read_bt_coexist_info_from_hwpg.exit.i.if.end54.i_crit_edge: ; preds = %rtl8188ee_read_bt_coexist_info_from_hwpg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

land.lhs.true.i:                                  ; preds = %rtl8188ee_read_bt_coexist_info_from_hwpg.exit.i
  %eeprom_bt_ant_num.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 6
  %596 = ptrtoint ptr %eeprom_bt_ant_num.i to i32
  call void @__asan_load1_noabort(i32 %596)
  %597 = load i8, ptr %eeprom_bt_ant_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %597)
  %cmp50.i = icmp eq i8 %597, 1
  br i1 %cmp50.i, label %if.then52.i, label %land.lhs.true.i.if.end54.i_crit_edge

land.lhs.true.i.if.end54.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

if.then52.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %598 = ptrtoint ptr %antenna_div_cfg.i to i32
  call void @__asan_store1_noabort(i32 %598)
  store i8 0, ptr %antenna_div_cfg.i, align 2
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then52.i, %land.lhs.true.i.if.end54.i_crit_edge, %rtl8188ee_read_bt_coexist_info_from_hwpg.exit.i.if.end54.i_crit_edge
  %arrayidx55.i = getelementptr i8, ptr %call7.i.i.i, i32 201
  %599 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load1_noabort(i32 %599)
  %600 = load i8, ptr %arrayidx55.i, align 1
  %antenna_div_type.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 22
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %600)
  %cmp58.i = icmp eq i8 %600, -1
  %spec.select.i = select i1 %cmp58.i, i8 1, i8 %600
  %601 = ptrtoint ptr %antenna_div_type.i to i32
  call void @__asan_store1_noabort(i32 %601)
  store i8 %spec.select.i, ptr %antenna_div_type.i, align 1
  %spec.select.off.i = add i8 %spec.select.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %spec.select.off.i)
  %switch.i = icmp ult i8 %spec.select.off.i, 2
  br i1 %switch.i, label %if.then71.i, label %if.end54.i.if.end73.i_crit_edge

if.end54.i.if.end73.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73.i

if.then71.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  %602 = ptrtoint ptr %antenna_div_cfg.i to i32
  call void @__asan_store1_noabort(i32 %602)
  store i8 1, ptr %antenna_div_cfg.i, align 2
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then71.i, %if.end54.i.if.end73.i_crit_edge
  %oem_id.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 10, i32 12
  %603 = ptrtoint ptr %oem_id.i to i32
  call void @__asan_load1_noabort(i32 %603)
  %604 = load i8, ptr %oem_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %604)
  %cmp75.i = icmp eq i8 %604, 0
  br i1 %cmp75.i, label %if.then77.i, label %if.end73.i.exit.i_crit_edge

if.end73.i.exit.i_crit_edge:                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

if.then77.i:                                      ; preds = %if.end73.i
  %605 = ptrtoint ptr %eeprom_oemid.i to i32
  call void @__asan_load1_noabort(i32 %605)
  %606 = load i8, ptr %eeprom_oemid.i, align 4
  %607 = zext i8 %606 to i64
  call void @__sanitizer_cov_trace_switch(i64 %607, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %606, label %sw.default.i [
    i8 0, label %sw.bb.i
    i8 4, label %if.then77.i.exit.sink.split.i_crit_edge
    i8 13, label %sw.bb131.i
  ]

if.then77.i.exit.sink.split.i_crit_edge:          ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

sw.bb.i:                                          ; preds = %if.then77.i
  %eeprom_did.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 11
  %608 = ptrtoint ptr %eeprom_did.i to i32
  call void @__asan_load2_noabort(i32 %608)
  %609 = load i16, ptr %eeprom_did.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32391, i16 %609)
  %cmp81.i = icmp eq i16 %609, -32391
  br i1 %cmp81.i, label %if.then83.i, label %sw.bb.i.exit.sink.split.i_crit_edge

sw.bb.i.exit.sink.split.i_crit_edge:              ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

if.then83.i:                                      ; preds = %sw.bb.i
  %eeprom_svid.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 12
  %610 = ptrtoint ptr %eeprom_svid.i to i32
  call void @__asan_load2_noabort(i32 %610)
  %611 = load i16, ptr %eeprom_svid.i, align 4
  %612 = zext i16 %611 to i64
  call void @__sanitizer_cov_trace_switch(i64 %612, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %611, label %if.then83.i.if.else121.i_crit_edge [
    i16 4133, label %if.then83.i.exit.sink.split.i_crit_edge
    i16 4332, label %land.lhs.true93.i
    i16 6058, label %land.lhs.true102.i
    i16 4156, label %land.lhs.true114.i
  ]

if.then83.i.exit.sink.split.i_crit_edge:          ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

if.then83.i.if.else121.i_crit_edge:               ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else121.i

land.lhs.true93.i:                                ; preds = %if.then83.i
  %eeprom_smid.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 13
  %613 = ptrtoint ptr %eeprom_smid.i to i32
  call void @__asan_load2_noabort(i32 %613)
  %614 = load i16, ptr %eeprom_smid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 377, i16 %614)
  %cmp95.i = icmp eq i16 %614, 377
  br i1 %cmp95.i, label %land.lhs.true93.i.exit.sink.split.i_crit_edge, label %land.lhs.true93.i.if.else121.i_crit_edge

land.lhs.true93.i.if.else121.i_crit_edge:         ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else121.i

land.lhs.true93.i.exit.sink.split.i_crit_edge:    ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

land.lhs.true102.i:                               ; preds = %if.then83.i
  %eeprom_smid103.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 13
  %615 = ptrtoint ptr %eeprom_smid103.i to i32
  call void @__asan_load2_noabort(i32 %615)
  %616 = load i16, ptr %eeprom_smid103.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 377, i16 %616)
  %cmp105.i = icmp eq i16 %616, 377
  br i1 %cmp105.i, label %land.lhs.true102.i.exit.sink.split.i_crit_edge, label %land.lhs.true102.i.if.else121.i_crit_edge

land.lhs.true102.i.if.else121.i_crit_edge:        ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else121.i

land.lhs.true102.i.exit.sink.split.i_crit_edge:   ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

land.lhs.true114.i:                               ; preds = %if.then83.i
  %eeprom_smid115.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 13
  %617 = ptrtoint ptr %eeprom_smid115.i to i32
  call void @__asan_load2_noabort(i32 %617)
  %618 = load i16, ptr %eeprom_smid115.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6525, i16 %618)
  %cmp117.i = icmp eq i16 %618, 6525
  br i1 %cmp117.i, label %land.lhs.true114.i.exit.sink.split.i_crit_edge, label %land.lhs.true114.i.if.else121.i_crit_edge

land.lhs.true114.i.if.else121.i_crit_edge:        ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else121.i

land.lhs.true114.i.exit.sink.split.i_crit_edge:   ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

if.else121.i:                                     ; preds = %land.lhs.true114.i.if.else121.i_crit_edge, %land.lhs.true102.i.if.else121.i_crit_edge, %land.lhs.true93.i.if.else121.i_crit_edge, %if.then83.i.if.else121.i_crit_edge
  br label %exit.sink.split.i

sw.bb131.i:                                       ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

sw.default.i:                                     ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

exit.sink.split.i:                                ; preds = %sw.default.i, %sw.bb131.i, %if.else121.i, %land.lhs.true114.i.exit.sink.split.i_crit_edge, %land.lhs.true102.i.exit.sink.split.i_crit_edge, %land.lhs.true93.i.exit.sink.split.i_crit_edge, %if.then83.i.exit.sink.split.i_crit_edge, %sw.bb.i.exit.sink.split.i_crit_edge, %if.then77.i.exit.sink.split.i_crit_edge
  %.sink247.i = phi i8 [ 0, %if.else121.i ], [ 0, %sw.default.i ], [ 19, %sw.bb131.i ], [ 24, %if.then83.i.exit.sink.split.i_crit_edge ], [ 18, %land.lhs.true102.i.exit.sink.split.i_crit_edge ], [ 18, %land.lhs.true93.i.exit.sink.split.i_crit_edge ], [ 27, %land.lhs.true114.i.exit.sink.split.i_crit_edge ], [ 0, %sw.bb.i.exit.sink.split.i_crit_edge ], [ 9, %if.then77.i.exit.sink.split.i_crit_edge ]
  %619 = ptrtoint ptr %oem_id.i to i32
  call void @__asan_store1_noabort(i32 %619)
  store i8 %.sink247.i, ptr %oem_id.i, align 1
  br label %exit.i

exit.i:                                           ; preds = %exit.sink.split.i, %if.end73.i.exit.i_crit_edge, %if.end.i.exit.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %_rtl88ee_read_adapter_info.exit

_rtl88ee_read_adapter_info.exit:                  ; preds = %exit.i, %if.then22._rtl88ee_read_adapter_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params.i) #7
  br label %if.end25

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #10
  br label %if.end25

if.end25:                                         ; preds = %do.end, %_rtl88ee_read_adapter_info.exit
  %620 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %priv, align 8
  %ledctl.i = getelementptr inbounds %struct.rtl_priv, ptr %621, i32 0, i32 18
  %oem_id.i47 = getelementptr inbounds %struct.rtl_priv, ptr %621, i32 0, i32 10, i32 12
  %622 = ptrtoint ptr %oem_id.i47 to i32
  call void @__asan_load1_noabort(i32 %622)
  %623 = load i8, ptr %oem_id.i47, align 1
  %624 = ptrtoint ptr %ledctl.i to i32
  call void @__asan_store1_noabort(i32 %624)
  store i8 1, ptr %ledctl.i, align 8
  %conv7.i = zext i8 %623 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %621, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.66, i32 noundef %conv7.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_update_hal_rate_tbl(ptr noundef %hw, ptr nocapture noundef %sta, i8 noundef zeroext %rssi_level, i1 noundef zeroext %update_bw) local_unnamed_addr #0 align 64 {
entry:
  %rate_mask.i = alloca [5 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %useramask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 14
  %2 = ptrtoint ptr %useramask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %useramask, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %ht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %4 = ptrtoint ptr %ht_cap.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ht_cap.i, align 4
  %6 = trunc i16 %5 to i8
  %7 = lshr i8 %6, 1
  %8 = and i8 %7, 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %rate_mask.i) #7
  %9 = getelementptr inbounds [5 x i8], ptr %rate_mask.i, i32 0, i32 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %wireless_mode.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.i, i32 0, i32 4
  %10 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %wireless_mode.i, align 1
  %opmode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %12 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %opmode.i, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %13, label %if.then.if.end34.i_crit_edge [
    i32 2, label %if.then.if.then.i_crit_edge
    i32 7, label %if.then.if.then.i_crit_edge22
    i32 3, label %if.then.if.then31.i_crit_edge
    i32 1, label %if.then.if.then31.i_crit_edge23
  ]

if.then.if.then31.i_crit_edge23:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31.i

if.then.if.then31.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31.i

if.then.if.then.i_crit_edge22:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.if.end34.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then.i:                                        ; preds = %if.then.if.then.i_crit_edge, %if.then.if.then.i_crit_edge22
  %bw_40.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %15 = ptrtoint ptr %bw_40.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bw_40.i, align 1
  br label %if.end34.i

if.then31.i:                                      ; preds = %if.then.if.then31.i_crit_edge, %if.then.if.then31.i_crit_edge23
  %aid.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 2
  %17 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %aid.i, align 2
  %19 = add i16 %18, 1
  %20 = and i16 %19, 255
  %phi.cast.i = zext i16 %20 to i32
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then31.i, %if.then.i, %if.then.if.end34.i_crit_edge
  %curtxbw_40mhz.0.i = phi i8 [ %16, %if.then.i ], [ %8, %if.then31.i ], [ %8, %if.then.if.end34.i_crit_edge ]
  %macid.0.i = phi i32 [ 0, %if.then.i ], [ %phi.cast.i, %if.then31.i ], [ 0, %if.then.if.end34.i_crit_edge ]
  %current_bandtype.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %21 = ptrtoint ptr %current_bandtype.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %current_bandtype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp35.i = icmp eq i32 %22, 1
  br i1 %cmp35.i, label %if.then37.i, label %if.else38.i

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl i32 %24, 4
  br label %if.end41.i

if.else38.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sta, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else38.i, %if.then37.i
  %ratr_bitmap.0.i = phi i32 [ %shl.i, %if.then37.i ], [ %26, %if.else38.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp43.i = icmp eq i32 %13, 1
  %spec.select.i = select i1 %cmp43.i, i32 4095, i32 %ratr_bitmap.0.i
  %mcs.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %arrayidx48.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %28 to i32
  %shl50.i = shl nuw nsw i32 %conv49.i, 20
  %29 = ptrtoint ptr %mcs.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mcs.i, align 1
  %conv55.i = zext i8 %30 to i32
  %shl56.i = shl nuw nsw i32 %conv55.i, 12
  %or.i = or i32 %shl50.i, %spec.select.i
  %or57.i = or i32 %or.i, %shl56.i
  %31 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.82)
  switch i16 %11, label %sw.default.i [
    i16 2, label %sw.bb.i
    i16 4, label %sw.bb65.i
    i16 16, label %if.end41.i.sw.bb81.i_crit_edge
    i16 32, label %if.end41.i.sw.bb81.i_crit_edge24
  ]

if.end41.i.sw.bb81.i_crit_edge24:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb81.i

if.end41.i.sw.bb81.i_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb81.i

sw.bb.i:                                          ; preds = %if.end41.i
  %and58.i = and i32 %spec.select.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.else62.i, label %if.then60.i

if.then60.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %and61.i = and i32 %spec.select.i, 13
  br label %sw.epilog.i

if.else62.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %and63.i = and i32 %spec.select.i, 15
  br label %sw.epilog.i

sw.bb65.i:                                        ; preds = %if.end41.i
  %32 = zext i8 %rssi_level to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %rssi_level, label %if.else77.i [
    i8 1, label %if.then69.i
    i8 2, label %if.then75.i
  ]

if.then69.i:                                      ; preds = %sw.bb65.i
  call void @__sanitizer_cov_trace_pc() #9
  %and70.i = and i32 %spec.select.i, 3840
  br label %sw.epilog.i

if.then75.i:                                      ; preds = %sw.bb65.i
  call void @__sanitizer_cov_trace_pc() #9
  %and76.i = and i32 %spec.select.i, 4080
  br label %sw.epilog.i

if.else77.i:                                      ; preds = %sw.bb65.i
  call void @__sanitizer_cov_trace_pc() #9
  %and78.i = and i32 %spec.select.i, 4085
  br label %sw.epilog.i

sw.bb81.i:                                        ; preds = %if.end41.i.sw.bb81.i_crit_edge, %if.end41.i.sw.bb81.i_crit_edge24
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %33 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %switch.i = icmp ult i8 %34, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %curtxbw_40mhz.0.i)
  %tobool91.not.i = icmp eq i8 %curtxbw_40mhz.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %rssi_level)
  %switch.selectcmp15.i = icmp eq i8 %rssi_level, 2
  br i1 %switch.i, label %if.then90.i, label %if.else125.i

if.then90.i:                                      ; preds = %sw.bb81.i
  br i1 %tobool91.not.i, label %if.else108.i, label %if.then92.i

if.then92.i:                                      ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.select.i = select i1 %switch.selectcmp15.i, i32 1044480, i32 1044501
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp13.i = icmp eq i8 %rssi_level, 1
  %switch.select14.i = select i1 %switch.selectcmp13.i, i32 983040, i32 %switch.select.i
  br label %if.end160.i

if.else108.i:                                     ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.select16.i = select i1 %switch.selectcmp15.i, i32 1044480, i32 1044485
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp17.i = icmp eq i8 %rssi_level, 1
  %switch.select18.i = select i1 %switch.selectcmp17.i, i32 983040, i32 %switch.select16.i
  br label %lor.lhs.false165.i

if.else125.i:                                     ; preds = %sw.bb81.i
  br i1 %tobool91.not.i, label %if.else143.i, label %if.then127.i

if.then127.i:                                     ; preds = %if.else125.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.select20.i = select i1 %switch.selectcmp15.i, i32 261091328, i32 261091349
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp21.i = icmp eq i8 %rssi_level, 1
  %switch.select22.i = select i1 %switch.selectcmp21.i, i32 261029888, i32 %switch.select20.i
  br label %if.end160.i

if.else143.i:                                     ; preds = %if.else125.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.select24.i = select i1 %switch.selectcmp15.i, i32 261091328, i32 261091333
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp25.i = icmp eq i8 %rssi_level, 1
  %switch.select26.i = select i1 %switch.selectcmp25.i, i32 261029888, i32 %switch.select24.i
  br label %lor.lhs.false165.i

if.end160.i:                                      ; preds = %if.then127.i, %if.then92.i
  %.sink.i = phi i32 [ %switch.select14.i, %if.then92.i ], [ %switch.select22.i, %if.then127.i ]
  %and138.i = and i32 %.sink.i, %or57.i
  %35 = and i16 %5, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool164.not.i = icmp eq i16 %35, 0
  br i1 %tobool164.not.i, label %if.end160.i.sw.epilog.i_crit_edge, label %if.end160.i.if.then170.i_crit_edge

if.end160.i.if.then170.i_crit_edge:               ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then170.i

if.end160.i.sw.epilog.i_crit_edge:                ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

lor.lhs.false165.i:                               ; preds = %if.else143.i, %if.else108.i
  %.sink12.i = phi i32 [ %switch.select18.i, %if.else108.i ], [ %switch.select26.i, %if.else143.i ]
  %and154.i = and i32 %.sink12.i, %or57.i
  %36 = and i16 %5, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool169.not.i = icmp eq i16 %36, 0
  br i1 %tobool169.not.i, label %lor.lhs.false165.i.sw.epilog.i_crit_edge, label %lor.lhs.false165.i.if.then170.i_crit_edge

lor.lhs.false165.i.if.then170.i_crit_edge:        ; preds = %lor.lhs.false165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then170.i

lor.lhs.false165.i.sw.epilog.i_crit_edge:         ; preds = %lor.lhs.false165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then170.i:                                     ; preds = %lor.lhs.false165.i.if.then170.i_crit_edge, %if.end160.i.if.then170.i_crit_edge
  %ratr_bitmap.26.i = phi i32 [ %and154.i, %lor.lhs.false165.i.if.then170.i_crit_edge ], [ %and138.i, %if.end160.i.if.then170.i_crit_edge ]
  %trunc.i = trunc i32 %macid.0.i to i16
  %37 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %trunc.i, label %sw.epilog.fold.split.i [
    i16 0, label %if.then170.i.sw.epilog.i_crit_edge
    i16 1, label %if.then179.i
  ]

if.then170.i.sw.epilog.i_crit_edge:               ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then179.i:                                     ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end41.i
  %rf_type183.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %38 = ptrtoint ptr %rf_type183.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rf_type183.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp185.i = icmp eq i8 %39, 1
  br i1 %cmp185.i, label %if.then187.i, label %if.else189.i

if.then187.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %and188.i = and i32 %or57.i, 1044735
  br label %sw.epilog.i

if.else189.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %and190.i = and i32 %or57.i, 252702975
  br label %sw.epilog.i

sw.epilog.fold.split.i:                           ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.fold.split.i, %if.else189.i, %if.then187.i, %if.then179.i, %if.then170.i.sw.epilog.i_crit_edge, %lor.lhs.false165.i.sw.epilog.i_crit_edge, %if.end160.i.sw.epilog.i_crit_edge, %if.else77.i, %if.then75.i, %if.then69.i, %if.else62.i, %if.then60.i
  %ratr_bitmap.3.i = phi i32 [ %and188.i, %if.then187.i ], [ %and190.i, %if.else189.i ], [ %ratr_bitmap.26.i, %if.then179.i ], [ %and154.i, %lor.lhs.false165.i.sw.epilog.i_crit_edge ], [ %and70.i, %if.then69.i ], [ %and76.i, %if.then75.i ], [ %and78.i, %if.else77.i ], [ %and61.i, %if.then60.i ], [ %and63.i, %if.else62.i ], [ %ratr_bitmap.26.i, %if.then170.i.sw.epilog.i_crit_edge ], [ %ratr_bitmap.26.i, %sw.epilog.fold.split.i ], [ %and138.i, %if.end160.i.sw.epilog.i_crit_edge ]
  %ratr_index.0.i = phi i8 [ 0, %if.then187.i ], [ 0, %if.else189.i ], [ 0, %if.then179.i ], [ 0, %lor.lhs.false165.i.sw.epilog.i_crit_edge ], [ 4, %if.then69.i ], [ 4, %if.then75.i ], [ 4, %if.else77.i ], [ 6, %if.then60.i ], [ 6, %if.else62.i ], [ 0, %if.then170.i.sw.epilog.i_crit_edge ], [ 0, %sw.epilog.fold.split.i ], [ 0, %if.end160.i.sw.epilog.i_crit_edge ]
  %b_shortgi.0.off0.i = phi i32 [ 0, %if.then187.i ], [ 0, %if.else189.i ], [ 0, %if.then179.i ], [ 0, %lor.lhs.false165.i.sw.epilog.i_crit_edge ], [ 0, %if.then69.i ], [ 0, %if.then75.i ], [ 0, %if.else77.i ], [ 0, %if.then60.i ], [ 0, %if.else62.i ], [ 32, %if.then170.i.sw.epilog.i_crit_edge ], [ 0, %sw.epilog.fold.split.i ], [ 0, %if.end160.i.sw.epilog.i_crit_edge ]
  %ratr_index192.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.i, i32 0, i32 5
  %40 = ptrtoint ptr %ratr_index192.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %ratr_index.0.i, ptr %ratr_index192.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.67, i32 noundef %ratr_bitmap.3.i) #7
  %conv194.i = zext i8 %ratr_index.0.i to i32
  %shl195.i = shl nuw nsw i32 %conv194.i, 28
  %or196.i = or i32 %shl195.i, %ratr_bitmap.3.i
  %41 = ptrtoint ptr %rate_mask.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or196.i, ptr %rate_mask.i, align 4
  %or201.i = or i32 %b_shortgi.0.off0.i, %macid.0.i
  %42 = trunc i32 %or201.i to i8
  %conv203.i = or i8 %42, -128
  %43 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv203.i, ptr %9, align 4
  %44 = lshr i32 %or196.i, 24
  %45 = lshr i32 %ratr_bitmap.3.i, 16
  %conv209.i = and i32 %45, 255
  %46 = lshr i32 %ratr_bitmap.3.i, 8
  %conv211.i = and i32 %46, 255
  %conv213.i = and i32 %ratr_bitmap.3.i, 255
  %conv215.i = zext i8 %conv203.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.68, i32 noundef %conv194.i, i32 noundef %ratr_bitmap.3.i, i32 noundef %44, i32 noundef %conv209.i, i32 noundef %conv211.i, i32 noundef %conv213.i, i32 noundef %conv215.i) #7
  call void @rtl88e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext -124, i32 noundef 5, ptr noundef nonnull %rate_mask.i) #7
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i.i = getelementptr inbounds %struct.rtl_priv, ptr %48, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %49 = ptrtoint ptr %reg_bcn_ctrl_val.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reg_bcn_ctrl_val.i.i, align 4
  %or.i.i = or i32 %50, 8
  store i32 %or.i.i, ptr %reg_bcn_ctrl_val.i.i, align 4
  %conv6.i.i = trunc i32 %or.i.i to i8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %48, i32 0, i32 13, i32 5
  %51 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %52(ptr noundef %48, i32 noundef 1360, i8 noundef zeroext %conv6.i.i) #7
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %48, i32 0, i32 32
  %53 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %write_readback.i.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i.i.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i.i.i, label %sw.epilog.i.rtl88ee_update_hal_rate_mask.exit_crit_edge, label %if.then.i.i.i

sw.epilog.i.rtl88ee_update_hal_rate_mask.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl88ee_update_hal_rate_mask.exit

if.then.i.i.i:                                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %48, i32 0, i32 13, i32 9
  %57 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = call zeroext i8 %58(ptr noundef %48, i32 noundef 1360) #7
  br label %rtl88ee_update_hal_rate_mask.exit

rtl88ee_update_hal_rate_mask.exit:                ; preds = %if.then.i.i.i, %sw.epilog.i.rtl88ee_update_hal_rate_mask.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rate_mask.i) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %ht_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 38
  %59 = ptrtoint ptr %ht_enable.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ht_enable.i, align 8
  %bw_40.i6 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %61 = ptrtoint ptr %bw_40.i6 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bw_40.i6, align 1
  %ht_cap.i7 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %63 = ptrtoint ptr %ht_cap.i7 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %ht_cap.i7, align 4
  %mode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 42
  %65 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %mode.i, align 4
  %current_bandtype.i8 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %67 = ptrtoint ptr %current_bandtype.i8 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %current_bandtype.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp.i = icmp eq i32 %68, 1
  br i1 %cmp.i, label %if.then.i11, label %if.else.i

if.then.i11:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i9 = getelementptr [6 x i32], ptr %sta, i32 0, i32 1
  %69 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i9, align 4
  %shl.i10 = shl i32 %70, 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sta, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i11
  %ratr_value.0.i = phi i32 [ %shl.i10, %if.then.i11 ], [ %72, %if.else.i ]
  %opmode.i12 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %73 = ptrtoint ptr %opmode.i12 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %opmode.i12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp16.i = icmp eq i32 %74, 1
  %spec.select.i13 = select i1 %cmp16.i, i32 4095, i32 %ratr_value.0.i
  %mcs.i14 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %arrayidx21.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %75 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %76 to i32
  %shl23.i = shl nuw nsw i32 %conv22.i, 20
  %77 = ptrtoint ptr %mcs.i14 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %mcs.i14, align 1
  %conv28.i = zext i8 %78 to i32
  %shl29.i = shl nuw nsw i32 %conv28.i, 12
  %or.i15 = or i32 %shl23.i, %spec.select.i13
  %or30.i = or i32 %or.i15, %shl29.i
  %79 = zext i16 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.85)
  switch i16 %66, label %sw.default.i18 [
    i16 2, label %sw.bb.i16
    i16 4, label %sw.bb38.i
    i16 16, label %if.end.i.sw.bb40.i_crit_edge
    i16 32, label %if.end.i.sw.bb40.i_crit_edge25
  ]

if.end.i.sw.bb40.i_crit_edge25:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb40.i

if.end.i.sw.bb40.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb40.i

sw.bb.i16:                                        ; preds = %if.end.i
  %and31.i = and i32 %spec.select.i13, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.else35.i, label %if.then33.i

if.then33.i:                                      ; preds = %sw.bb.i16
  call void @__sanitizer_cov_trace_pc() #9
  %and34.i = and i32 %spec.select.i13, 13
  br label %sw.epilog.i20

if.else35.i:                                      ; preds = %sw.bb.i16
  call void @__sanitizer_cov_trace_pc() #9
  %and36.i = and i32 %spec.select.i13, 15
  br label %sw.epilog.i20

sw.bb38.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %and39.i = and i32 %spec.select.i13, 4085
  br label %sw.epilog.i20

sw.bb40.i:                                        ; preds = %if.end.i.sw.bb40.i_crit_edge, %if.end.i.sw.bb40.i_crit_edge25
  %rf_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %80 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %rf_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %81)
  %82 = icmp ult i8 %81, 2
  %ratr_mask.0.i = select i1 %82, i32 1044485, i32 252702725
  %and51.i = and i32 %ratr_mask.0.i, %or30.i
  br label %sw.epilog.i20

sw.default.i18:                                   ; preds = %if.end.i
  %rf_type.i17 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %83 = ptrtoint ptr %rf_type.i17 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %rf_type.i17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %84)
  %cmp53.i = icmp eq i8 %84, 1
  br i1 %cmp53.i, label %if.then55.i, label %if.else57.i

if.then55.i:                                      ; preds = %sw.default.i18
  call void @__sanitizer_cov_trace_pc() #9
  %and56.i = and i32 %or30.i, 1044735
  br label %sw.epilog.i20

if.else57.i:                                      ; preds = %sw.default.i18
  call void @__sanitizer_cov_trace_pc() #9
  %and58.i19 = and i32 %or30.i, 252702975
  br label %sw.epilog.i20

sw.epilog.i20:                                    ; preds = %if.else57.i, %if.then55.i, %sw.bb40.i, %sw.bb38.i, %if.else35.i, %if.then33.i
  %ratr_value.2.i = phi i32 [ %and56.i, %if.then55.i ], [ %and58.i19, %if.else57.i ], [ %and51.i, %sw.bb40.i ], [ %and39.i, %sw.bb38.i ], [ %and34.i, %if.then33.i ], [ %and36.i, %if.else35.i ]
  %b_nmode.0.i = phi i8 [ %60, %if.then55.i ], [ %60, %if.else57.i ], [ 1, %sw.bb40.i ], [ %60, %sw.bb38.i ], [ %60, %if.then33.i ], [ %60, %if.else35.i ]
  %bt_coexistence.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 9
  %85 = ptrtoint ptr %bt_coexistence.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bt_coexistence.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool61.not.i = icmp eq i8 %86, 0
  br i1 %tobool61.not.i, label %sw.epilog.i20.if.end89.i_crit_edge, label %land.lhs.true.i

sw.epilog.i20.if.end89.i_crit_edge:               ; preds = %sw.epilog.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i20
  %bt_coexist_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 11
  %87 = ptrtoint ptr %bt_coexist_type.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %bt_coexist_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %88)
  %cmp64.i = icmp eq i8 %88, 3
  br i1 %cmp64.i, label %land.lhs.true66.i, label %land.lhs.true.i.if.end89.i_crit_edge

land.lhs.true.i.if.end89.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89.i

land.lhs.true66.i:                                ; preds = %land.lhs.true.i
  %bt_cur_state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 13
  %89 = ptrtoint ptr %bt_cur_state.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %bt_cur_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool69.not.i = icmp eq i8 %90, 0
  br i1 %tobool69.not.i, label %land.lhs.true66.i.if.end89.i_crit_edge, label %land.lhs.true70.i

land.lhs.true66.i.if.end89.i_crit_edge:           ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89.i

land.lhs.true70.i:                                ; preds = %land.lhs.true66.i
  %bt_ant_isolation.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 14
  %91 = ptrtoint ptr %bt_ant_isolation.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bt_ant_isolation.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool73.not.i = icmp eq i8 %92, 0
  br i1 %tobool73.not.i, label %land.lhs.true70.i.if.end89.i_crit_edge, label %land.lhs.true74.i

land.lhs.true70.i.if.end89.i_crit_edge:           ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89.i

land.lhs.true74.i:                                ; preds = %land.lhs.true70.i
  %bt_service.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 16
  %93 = ptrtoint ptr %bt_service.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %bt_service.i, align 4
  %95 = zext i8 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %94, label %land.lhs.true74.i.if.end89.i_crit_edge [
    i8 0, label %land.lhs.true74.i.if.then85.i_crit_edge
    i8 7, label %land.lhs.true74.i.if.then85.i_crit_edge26
  ]

land.lhs.true74.i.if.then85.i_crit_edge26:        ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then85.i

land.lhs.true74.i.if.then85.i_crit_edge:          ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then85.i

land.lhs.true74.i.if.end89.i_crit_edge:           ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89.i

if.then85.i:                                      ; preds = %land.lhs.true74.i.if.then85.i_crit_edge, %land.lhs.true74.i.if.then85.i_crit_edge26
  %and86.i = and i32 %ratr_value.2.i, 268423104
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then85.i, %land.lhs.true74.i.if.end89.i_crit_edge, %land.lhs.true70.i.if.end89.i_crit_edge, %land.lhs.true66.i.if.end89.i_crit_edge, %land.lhs.true.i.if.end89.i_crit_edge, %sw.epilog.i20.if.end89.i_crit_edge
  %ratr_value.3.i = phi i32 [ %and86.i, %if.then85.i ], [ %ratr_value.2.i, %land.lhs.true74.i.if.end89.i_crit_edge ], [ %ratr_value.2.i, %land.lhs.true70.i.if.end89.i_crit_edge ], [ %ratr_value.2.i, %land.lhs.true66.i.if.end89.i_crit_edge ], [ %ratr_value.2.i, %land.lhs.true.i.if.end89.i_crit_edge ], [ %ratr_value.2.i, %sw.epilog.i20.if.end89.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %b_nmode.0.i)
  %tobool91.not.i21 = icmp eq i8 %b_nmode.0.i, 0
  br i1 %tobool91.not.i21, label %if.end89.i.if.end125.i_crit_edge, label %land.lhs.true92.i

if.end89.i.if.end125.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125.i

land.lhs.true92.i:                                ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool94.not.i = icmp eq i8 %62, 0
  %96 = and i16 %64, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool97.not.i = icmp eq i16 %96, 0
  %or.cond.i = select i1 %tobool94.not.i, i1 true, i1 %tobool97.not.i
  br i1 %or.cond.i, label %lor.lhs.false98.i, label %land.lhs.true92.i.if.then103.i_crit_edge

land.lhs.true92.i.if.then103.i_crit_edge:         ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then103.i

lor.lhs.false98.i:                                ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool99.not.i = icmp ne i8 %62, 0
  %97 = and i16 %64, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool102.not.i = icmp eq i16 %97, 0
  %or.cond168.i = select i1 %tobool99.not.i, i1 true, i1 %tobool102.not.i
  br i1 %or.cond168.i, label %lor.lhs.false98.i.if.end125.i_crit_edge, label %lor.lhs.false98.i.if.then103.i_crit_edge

lor.lhs.false98.i.if.then103.i_crit_edge:         ; preds = %lor.lhs.false98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then103.i

lor.lhs.false98.i.if.end125.i_crit_edge:          ; preds = %lor.lhs.false98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125.i

if.then103.i:                                     ; preds = %lor.lhs.false98.i.if.then103.i_crit_edge, %land.lhs.true92.i.if.then103.i_crit_edge
  %or104.i = or i32 %ratr_value.3.i, 268435456
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.then103.i, %lor.lhs.false98.i.if.end125.i_crit_edge, %if.end89.i.if.end125.i_crit_edge
  %ratr_value.4.i = phi i32 [ %ratr_value.3.i, %lor.lhs.false98.i.if.end125.i_crit_edge ], [ %ratr_value.3.i, %if.end89.i.if.end125.i_crit_edge ], [ %or104.i, %if.then103.i ]
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %98 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %99(ptr noundef %1, i32 noundef 1092, i32 noundef %ratr_value.4.i) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %100 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %write_readback.i.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i.i = icmp eq i8 %103, 0
  br i1 %tobool.not.i.i, label %if.end125.i.rtl88ee_update_hal_rate_table.exit_crit_edge, label %if.then.i.i

if.end125.i.rtl88ee_update_hal_rate_table.exit_crit_edge: ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl88ee_update_hal_rate_table.exit

if.then.i.i:                                      ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %104 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %105(ptr noundef %1, i32 noundef 1092) #7
  br label %rtl88ee_update_hal_rate_table.exit

rtl88ee_update_hal_rate_table.exit:               ; preds = %if.then.i.i, %if.end125.i.rtl88ee_update_hal_rate_table.exit_crit_edge
  %read32_sync.i171.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %106 = ptrtoint ptr %read32_sync.i171.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %read32_sync.i171.i, align 4
  %call.i172.i = tail call i32 %107(ptr noundef %1, i32 noundef 1092) #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.69, i32 noundef %call.i172.i) #7
  br label %if.end

if.end:                                           ; preds = %rtl88ee_update_hal_rate_table.exit, %rtl88ee_update_hal_rate_mask.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_update_channel_access_setting(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %sifs_timer = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sifs_timer) #7
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_hw_reg, align 4
  %slot_time = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 43
  tail call void %7(ptr noundef %hw, i8 noundef zeroext 18, ptr noundef %slot_time) #7
  %ht_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 38
  %8 = ptrtoint ptr %ht_enable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ht_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %. = select i1 %tobool.not, i16 2570, i16 3598
  %10 = ptrtoint ptr %sifs_timer to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %., ptr %sifs_timer, align 2
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg, align 8
  %ops3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ops3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops3, align 4
  %set_hw_reg4 = getelementptr inbounds %struct.rtl_hal_ops, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %set_hw_reg4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_hw_reg4, align 4
  call void %16(ptr noundef %hw, i8 noundef zeroext 14, ptr noundef nonnull %sifs_timer) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sifs_timer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl88ee_gpio_radio_on_off_checking(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %valid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %being_init_adapter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 4
  %2 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %being_init_adapter, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %swrf_processing = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 3
  %4 = ptrtoint ptr %swrf_processing to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %swrf_processing, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rf_ps_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 5
  tail call void @_raw_spin_lock(ptr noundef %rf_ps_lock) #7
  %rfchange_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 2
  %6 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rfchange_inprogress, align 2, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %rf_ps_lock) #7
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %rfchange_inprogress, align 2
  tail call void @_raw_spin_unlock(ptr noundef %rf_ps_lock) #7
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %9 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %10(ptr noundef %1, i32 noundef 108) #7
  %hwradiooff = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 4
  %11 = ptrtoint ptr %hwradiooff to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hwradiooff, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool14.not = icmp eq i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool13.not = icmp sgt i32 %call.i, -1
  %or.cond = select i1 %tobool14.not, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %if.else17, label %if.else.if.then27_crit_edge

if.else.if.then27_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

if.else17:                                        ; preds = %if.else
  %or.cond73 = select i1 %tobool14.not, i1 %tobool13.not, i1 false
  br i1 %or.cond73, label %if.else17.if.then27_crit_edge, label %if.else33

if.else17.if.then27_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

if.then27:                                        ; preds = %if.else17.if.then27_crit_edge, %if.else.if.then27_crit_edge
  %.str.34.sink = phi ptr [ @.str.33, %if.else.if.then27_crit_edge ], [ @.str.34, %if.else17.if.then27_crit_edge ]
  %storemerge = phi i8 [ 0, %if.else.if.then27_crit_edge ], [ 1, %if.else17.if.then27_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull %.str.34.sink) #7
  %13 = ptrtoint ptr %hwradiooff to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %storemerge, ptr %hwradiooff, align 4
  br label %if.end43

if.else33:                                        ; preds = %if.else17
  %reg_rfps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 20
  %14 = ptrtoint ptr %reg_rfps_level to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_rfps_level, align 4
  %and34 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else33.if.end43_crit_edge, label %if.then36

if.else33.if.end43_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then36:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  %cur_ps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %16 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cur_ps_level, align 4
  %or = or i32 %17, 8
  store i32 %or, ptr %cur_ps_level, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %if.else33.if.end43_crit_edge, %if.then27
  tail call void @_raw_spin_lock(ptr noundef %rf_ps_lock) #7
  %18 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %rfchange_inprogress, align 2
  tail call void @_raw_spin_unlock(ptr noundef %rf_ps_lock) #7
  %19 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %valid, align 1
  %20 = ptrtoint ptr %hwradiooff to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hwradiooff, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool45.not = icmp eq i8 %21, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then6 ], [ %tobool45.not, %if.end43 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88ee_set_key(ptr noundef %hw, i32 noundef %key_index, ptr noundef %p_macaddr, i1 noundef zeroext %is_group, i8 noundef zeroext %enc_algo, i1 noundef zeroext %is_wepkey, i1 noundef zeroext %clear_all) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  br i1 %clear_all, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.35) #7
  tail call void @rtl_cam_mark_invalid(ptr noundef %hw, i8 noundef zeroext 0) #7
  tail call void @rtl_cam_empty_entry(ptr noundef %hw, i8 noundef zeroext 0) #7
  %arrayidx = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 0
  %2 = call ptr @memset(ptr %arrayidx, i32 0, i32 61)
  %arrayidx20 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 0
  %3 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx20, align 1
  tail call void @rtl_cam_mark_invalid(ptr noundef %hw, i8 noundef zeroext 1) #7
  tail call void @rtl_cam_empty_entry(ptr noundef %hw, i8 noundef zeroext 1) #7
  %arrayidx.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 1
  %4 = call ptr @memset(ptr %arrayidx.1, i32 0, i32 61)
  %arrayidx20.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 1
  %5 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx20.1, align 1
  tail call void @rtl_cam_mark_invalid(ptr noundef %hw, i8 noundef zeroext 2) #7
  tail call void @rtl_cam_empty_entry(ptr noundef %hw, i8 noundef zeroext 2) #7
  %arrayidx.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 2
  %6 = call ptr @memset(ptr %arrayidx.2, i32 0, i32 61)
  %arrayidx20.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 2
  %7 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx20.2, align 1
  tail call void @rtl_cam_mark_invalid(ptr noundef %hw, i8 noundef zeroext 3) #7
  tail call void @rtl_cam_empty_entry(ptr noundef %hw, i8 noundef zeroext 3) #7
  %arrayidx.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 3
  %8 = call ptr @memset(ptr %arrayidx.3, i32 0, i32 61)
  %arrayidx20.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 3
  %9 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx20.3, align 1
  tail call void @rtl_cam_mark_invalid(ptr noundef %hw, i8 noundef zeroext 4) #7
  tail call void @rtl_cam_empty_entry(ptr noundef %hw, i8 noundef zeroext 4) #7
  %arrayidx.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 4
  %10 = call ptr @memset(ptr %arrayidx.4, i32 0, i32 61)
  %arrayidx20.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 4
  %11 = ptrtoint ptr %arrayidx20.4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx20.4, align 1
  br label %cleanup

if.else:                                          ; preds = %entry
  %switch.tableidx = add i8 %enc_algo, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %12 = icmp ult i8 %switch.tableidx, 5
  br i1 %12, label %switch.hole_check, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %if.else.do.end_crit_edge
  %conv21 = zext i8 %enc_algo to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv21) #10
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.else
  %switch.shifted = lshr i8 27, %switch.tableidx
  %13 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.lobit.not = icmp eq i8 %13, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %14 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rtl88ee_set_key, i32 0, i32 %14
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end
  %enc_algo.addr.0 = phi i32 [ 2, %do.end ], [ %switch.load, %switch.lookup ]
  br i1 %is_wepkey, label %sw.epilog.if.then31_crit_edge, label %lor.lhs.false

sw.epilog.if.then31_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

lor.lhs.false:                                    ; preds = %sw.epilog
  %use_defaultkey = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 2
  %16 = ptrtoint ptr %use_defaultkey to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %use_defaultkey, align 2, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool29.not = icmp eq i8 %17, 0
  br i1 %tobool29.not, label %if.else34, label %lor.lhs.false.if.then31_crit_edge

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.then31:                                        ; preds = %lor.lhs.false.if.then31_crit_edge, %sw.epilog.if.then31_crit_edge
  %arrayidx32 = getelementptr [4 x [6 x i8]], ptr @rtl88ee_set_key.cam_const_addr, i32 0, i32 %key_index
  br label %if.end59

if.else34:                                        ; preds = %lor.lhs.false
  br i1 %is_group, label %if.else34.if.end59_crit_edge, label %if.else37

if.else34.if.end59_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.else37:                                        ; preds = %if.else34
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %18 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %opmode, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %19, label %if.else37.if.end59_crit_edge [
    i32 3, label %if.else37.if.then44_crit_edge
    i32 7, label %if.else37.if.then44_crit_edge167
  ]

if.else37.if.then44_crit_edge167:                 ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

if.else37.if.then44_crit_edge:                    ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

if.else37.if.end59_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then44:                                        ; preds = %if.else37.if.then44_crit_edge, %if.else37.if.then44_crit_edge167
  %call45 = tail call zeroext i8 @rtl_cam_get_free_entry(ptr noundef %hw, ptr noundef %p_macaddr) #7
  %conv46 = zext i8 %call45 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %call45)
  %cmp47 = icmp ugt i8 %call45, 31
  br i1 %cmp47, label %do.end52, label %if.then44.if.end59_crit_edge

if.then44.if.end59_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

do.end52:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #10
  br label %cleanup

if.end59:                                         ; preds = %if.then44.if.end59_crit_edge, %if.else37.if.end59_crit_edge, %if.else34.if.end59_crit_edge, %if.then31
  %macaddr.0 = phi ptr [ %arrayidx32, %if.then31 ], [ @rtl88ee_set_key.cam_const_broad, %if.else34.if.end59_crit_edge ], [ %p_macaddr, %if.else37.if.end59_crit_edge ], [ %p_macaddr, %if.then44.if.end59_crit_edge ]
  %entry_id.1 = phi i32 [ %key_index, %if.then31 ], [ %key_index, %if.else34.if.end59_crit_edge ], [ 4, %if.else37.if.end59_crit_edge ], [ %conv46, %if.then44.if.end59_crit_edge ]
  %is_pairwise.0.off0 = phi i1 [ false, %if.then31 ], [ false, %if.else34.if.end59_crit_edge ], [ true, %if.else37.if.end59_crit_edge ], [ true, %if.then44.if.end59_crit_edge ]
  %key_index.addr.0 = phi i32 [ %key_index, %if.then31 ], [ %key_index, %if.else34.if.end59_crit_edge ], [ 0, %if.else37.if.end59_crit_edge ], [ 0, %if.then44.if.end59_crit_edge ]
  %arrayidx62 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 %key_index.addr.0
  %21 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp64 = icmp eq i8 %22, 0
  br i1 %cmp64, label %if.then66, label %if.else77

if.then66:                                        ; preds = %if.end59
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.40, i32 noundef %entry_id.1) #7
  %opmode67 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %23 = ptrtoint ptr %opmode67 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %opmode67, align 8
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %24, label %if.then66.if.end75_crit_edge [
    i32 3, label %if.then66.if.then74_crit_edge
    i32 7, label %if.then66.if.then74_crit_edge168
  ]

if.then66.if.then74_crit_edge168:                 ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then74

if.then66.if.then74_crit_edge:                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then74

if.then66.if.end75_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then74:                                        ; preds = %if.then66.if.then74_crit_edge, %if.then66.if.then74_crit_edge168
  tail call void @rtl_cam_del_entry(ptr noundef %hw, ptr noundef %p_macaddr) #7
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.then66.if.end75_crit_edge
  %call76 = tail call i32 @rtl_cam_delete_one_entry(ptr noundef %hw, ptr noundef %p_macaddr, i32 noundef %entry_id.1) #7
  br label %cleanup

if.else77:                                        ; preds = %if.end59
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.41) #7
  br i1 %is_pairwise.0.off0, label %if.then79, label %if.else86

if.then79:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.42) #7
  %arrayidx83 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %key_index.addr.0
  %call85 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %macaddr.0, i32 noundef %key_index.addr.0, i32 noundef %entry_id.1, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx83) #7
  br label %cleanup

if.else86:                                        ; preds = %if.else77
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.43) #7
  %opmode87 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %26 = ptrtoint ptr %opmode87 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %opmode87, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp88 = icmp eq i32 %27, 1
  br i1 %cmp88, label %if.then90, label %if.else86.if.end98_crit_edge

if.else86.if.end98_crit_edge:                     ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.then90:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #9
  %dev_addr = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 19
  %arrayidx95 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %entry_id.1
  %call97 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %dev_addr, i32 noundef 0, i32 noundef 4, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx95) #7
  br label %if.end98

if.end98:                                         ; preds = %if.then90, %if.else86.if.end98_crit_edge
  %arrayidx102 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %entry_id.1
  %call104 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %macaddr.0, i32 noundef %key_index.addr.0, i32 noundef %entry_id.1, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx102) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.then79, %if.end75, %do.end52, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_cam_mark_invalid(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_cam_empty_entry(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl_cam_get_free_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_cam_del_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_cam_delete_one_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl_cam_add_one_entry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8188ee_read_bt_coexist_info_from_hwpg(ptr nocapture noundef readonly %hw, i1 noundef zeroext %auto_load_fail, ptr nocapture noundef readonly %hwinfo) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  br i1 %auto_load_fail, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i8, ptr %hwinfo, i32 194
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 5
  %eeprom_bt_coexist = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 4
  %5 = ptrtoint ptr %eeprom_bt_coexist to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %eeprom_bt_coexist, align 8
  %6 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp = icmp eq i8 %6, -1
  %spec.store.select = select i1 %cmp, i8 0, i8 %4
  %7 = ptrtoint ptr %eeprom_bt_coexist to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %spec.store.select, ptr %eeprom_bt_coexist, align 8
  %arrayidx8 = getelementptr i8, ptr %hwinfo, i32 195
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %and10 = lshr i8 %9, 1
  %10 = and i8 %and10, 7
  %and15 = and i8 %9, 1
  %and19 = lshr i8 %9, 4
  %11 = and i8 %and19, 1
  %12 = lshr i8 %9, 5
  %13 = and i8 %12, 1
  br label %if.end38

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %eeprom_bt_coexist29 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 4
  %14 = ptrtoint ptr %eeprom_bt_coexist29 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %eeprom_bt_coexist29, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then
  %.sink56 = phi i8 [ 0, %if.else ], [ %10, %if.then ]
  %and15.sink = phi i8 [ 0, %if.else ], [ %and15, %if.then ]
  %.sink55 = phi i8 [ 0, %if.else ], [ %11, %if.then ]
  %.sink = phi i8 [ 0, %if.else ], [ %13, %if.then ]
  %15 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 5
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink56, ptr %15, align 1
  %17 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 6
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %and15.sink, ptr %17, align 2
  %19 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 7
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink55, ptr %19, align 1
  %21 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink, ptr %21, align 4
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  %eeprom_bt_coexist.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 49, i32 4
  %25 = ptrtoint ptr %eeprom_bt_coexist.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %eeprom_bt_coexist.i, align 8
  %bt_coexistence.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 49, i32 9
  %27 = ptrtoint ptr %bt_coexistence.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %bt_coexistence.i, align 1
  %eeprom_bt_ant_num.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 49, i32 6
  %28 = ptrtoint ptr %eeprom_bt_ant_num.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %eeprom_bt_ant_num.i, align 2
  %bt_ant_num.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 49, i32 10
  %30 = ptrtoint ptr %bt_ant_num.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %bt_ant_num.i, align 2
  %eeprom_bt_type.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 49, i32 5
  %31 = ptrtoint ptr %eeprom_bt_type.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %eeprom_bt_type.i, align 1
  %bt_coexist_type.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 49, i32 11
  %33 = ptrtoint ptr %bt_coexist_type.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %bt_coexist_type.i, align 1
  %reg_bt_iso.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 49, i32 38
  %34 = ptrtoint ptr %reg_bt_iso.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %reg_bt_iso.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp.i = icmp eq i8 %35, 2
  br i1 %cmp.i, label %if.then.i, label %if.end38.if.end.i_crit_edge

if.end38.if.end.i_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %eeprom_bt_ant_isol.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 49, i32 7
  %36 = ptrtoint ptr %eeprom_bt_ant_isol.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %eeprom_bt_ant_isol.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end38.if.end.i_crit_edge
  %.sink.i = phi i8 [ %37, %if.then.i ], [ %35, %if.end38.if.end.i_crit_edge ]
  %38 = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 49, i32 14
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.sink.i, ptr %38, align 2
  %eeprom_bt_radio_shared.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 49, i32 8
  %40 = ptrtoint ptr %eeprom_bt_radio_shared.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %eeprom_bt_radio_shared.i, align 4
  %bt_radio_shared_type.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 49, i32 17
  %42 = ptrtoint ptr %bt_radio_shared_type.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %bt_radio_shared_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.end.i.rtl8188ee_bt_var_init.exit_crit_edge, label %if.then18.i

if.end.i.rtl8188ee_bt_var_init.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8188ee_bt_var_init.exit

if.then18.i:                                      ; preds = %if.end.i
  %reg_bt_sco.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 49, i32 39
  %43 = ptrtoint ptr %reg_bt_sco.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %reg_bt_sco.i, align 1
  %switch.tableidx = add i8 %44, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %45 = icmp ult i8 %switch.tableidx, 5
  br i1 %45, label %switch.lookup, label %if.then18.i.if.end58.i_crit_edge

if.then18.i.if.end58.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i

switch.lookup:                                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.rtl8188ee_read_bt_coexist_info_from_hwpg, i32 0, i32 %46
  %47 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %47)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.end58.i

if.end58.i:                                       ; preds = %switch.lookup, %if.then18.i.if.end58.i_crit_edge
  %.sink88.i = phi i8 [ %switch.load, %switch.lookup ], [ 5, %if.then18.i.if.end58.i_crit_edge ]
  %bt_service33.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 49, i32 16
  %48 = ptrtoint ptr %bt_service33.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %.sink88.i, ptr %bt_service33.i, align 4
  %bt_edca_ul.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 49, i32 23
  %49 = ptrtoint ptr %bt_edca_ul.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %bt_edca_ul.i, align 4
  %bt_edca_dl.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 49, i32 24
  %50 = ptrtoint ptr %bt_edca_dl.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %bt_edca_dl.i, align 8
  %bt_rssi_state.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 49, i32 20
  %51 = ptrtoint ptr %bt_rssi_state.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %bt_rssi_state.i, align 8
  br label %rtl8188ee_bt_var_init.exit

rtl8188ee_bt_var_init.exit:                       ; preds = %if.end58.i, %if.end.i.rtl8188ee_bt_var_init.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8188ee_bt_reg_init(ptr nocapture noundef readonly %hw) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %reg_bt_iso = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 38
  %2 = ptrtoint ptr %reg_bt_iso to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %reg_bt_iso, align 2
  %reg_bt_sco = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 39
  %3 = ptrtoint ptr %reg_bt_sco to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %reg_bt_sco, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188ee_bt_hw_init(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %bt_coexistence = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 9
  %2 = ptrtoint ptr %bt_coexistence to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bt_coexistence, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end40_crit_edge, label %land.lhs.true

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

land.lhs.true:                                    ; preds = %entry
  %bt_coexist_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 11
  %4 = ptrtoint ptr %bt_coexist_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bt_coexist_type, align 1
  %.off = add i8 %5, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then:                                          ; preds = %land.lhs.true
  %bt_ant_isolation = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 14
  %6 = ptrtoint ptr %bt_ant_isolation to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bt_ant_isolation, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %if.then.if.end_crit_edge, label %if.then11

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then11:                                        ; preds = %if.then
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %8 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write8_async.i, align 4
  tail call void %9(ptr noundef %1, i32 noundef 64, i8 noundef zeroext -96) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %10 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %write_readback.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then11.if.end_crit_edge, label %if.then.i

if.then11.if.end_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %14 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %15(ptr noundef %1, i32 noundef 64) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then11.if.end_crit_edge, %if.then.if.end_crit_edge
  %read8_sync.i62 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %16 = ptrtoint ptr %read8_sync.i62 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read8_sync.i62, align 4
  %call.i63 = tail call zeroext i8 %17(ptr noundef %1, i32 noundef 1277) #7
  %18 = and i8 %call.i63, 1
  %19 = ptrtoint ptr %bt_ant_isolation to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bt_ant_isolation, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp18 = icmp eq i8 %20, 1
  br i1 %cmp18, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %bt_service = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 16
  %21 = ptrtoint ptr %bt_service to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bt_service, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp22 = icmp eq i8 %22, 0
  %or = select i1 %cmp22, i8 2, i8 6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond24 = phi i8 [ %or, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  %or25 = or i8 %cond24, %18
  %write8_async.i64 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %23 = ptrtoint ptr %write8_async.i64 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write8_async.i64, align 4
  tail call void %24(ptr noundef %1, i32 noundef 1277, i8 noundef zeroext %or25) #7
  %cfg.i65 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %25 = ptrtoint ptr %cfg.i65 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.i65, align 8
  %write_readback.i66 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %write_readback.i66 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %write_readback.i66, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i67 = icmp eq i8 %28, 0
  br i1 %tobool.not.i67, label %cond.end.rtl_write_byte.exit71_crit_edge, label %if.then.i70

cond.end.rtl_write_byte.exit71_crit_edge:         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit71

if.then.i70:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %read8_sync.i62 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read8_sync.i62, align 4
  %call.i69 = tail call zeroext i8 %30(ptr noundef %1, i32 noundef 1277) #7
  br label %rtl_write_byte.exit71

rtl_write_byte.exit71:                            ; preds = %if.then.i70, %cond.end.rtl_write_byte.exit71_crit_edge
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %31 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write32_async.i, align 4
  tail call void %32(ptr noundef %1, i32 noundef 1732, i32 noundef -1431659862) #7
  %33 = ptrtoint ptr %cfg.i65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cfg.i65, align 8
  %write_readback.i73 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %write_readback.i73 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %write_readback.i73, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i74 = icmp eq i8 %36, 0
  br i1 %tobool.not.i74, label %rtl_write_byte.exit71.rtl_write_dword.exit_crit_edge, label %if.then.i76

rtl_write_byte.exit71.rtl_write_dword.exit_crit_edge: ; preds = %rtl_write_byte.exit71
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit

if.then.i76:                                      ; preds = %rtl_write_byte.exit71
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %37 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read32_sync.i, align 4
  %call.i75 = tail call i32 %38(ptr noundef %1, i32 noundef 1732) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i76, %rtl_write_byte.exit71.rtl_write_dword.exit_crit_edge
  %39 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write32_async.i, align 4
  tail call void %40(ptr noundef %1, i32 noundef 1736, i32 noundef -4390848) #7
  %41 = ptrtoint ptr %cfg.i65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i65, align 8
  %write_readback.i79 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_readback.i79 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %write_readback.i79, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i80 = icmp eq i8 %44, 0
  br i1 %tobool.not.i80, label %rtl_write_dword.exit.rtl_write_dword.exit84_crit_edge, label %if.then.i83

rtl_write_dword.exit.rtl_write_dword.exit84_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit84

if.then.i83:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i81 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %45 = ptrtoint ptr %read32_sync.i81 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read32_sync.i81, align 4
  %call.i82 = tail call i32 %46(ptr noundef %1, i32 noundef 1736) #7
  br label %rtl_write_dword.exit84

rtl_write_dword.exit84:                           ; preds = %if.then.i83, %rtl_write_dword.exit.rtl_write_dword.exit84_crit_edge
  %47 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write32_async.i, align 4
  tail call void %48(ptr noundef %1, i32 noundef 1740, i32 noundef 1073741840) #7
  %49 = ptrtoint ptr %cfg.i65 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg.i65, align 8
  %write_readback.i87 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %write_readback.i87 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %write_readback.i87, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i88 = icmp eq i8 %52, 0
  br i1 %tobool.not.i88, label %rtl_write_dword.exit84.rtl_write_dword.exit92_crit_edge, label %if.then.i91

rtl_write_dword.exit84.rtl_write_dword.exit92_crit_edge: ; preds = %rtl_write_dword.exit84
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit92

if.then.i91:                                      ; preds = %rtl_write_dword.exit84
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i89 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %53 = ptrtoint ptr %read32_sync.i89 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read32_sync.i89, align 4
  %call.i90 = tail call i32 %54(ptr noundef %1, i32 noundef 1740) #7
  br label %rtl_write_dword.exit92

rtl_write_dword.exit92:                           ; preds = %if.then.i91, %rtl_write_dword.exit84.rtl_write_dword.exit92_crit_edge
  %rf_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %55 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %rf_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp28 = icmp eq i8 %56, 0
  br i1 %cmp28, label %if.then30, label %rtl_write_dword.exit92.if.end40_crit_edge

rtl_write_dword.exit92.if.end40_crit_edge:        ; preds = %rtl_write_dword.exit92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then30:                                        ; preds = %rtl_write_dword.exit92
  %57 = ptrtoint ptr %read8_sync.i62 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read8_sync.i62, align 4
  %call.i94 = tail call zeroext i8 %58(ptr noundef %1, i32 noundef 3076) #7
  %59 = and i8 %call.i94, -3
  %60 = ptrtoint ptr %write8_async.i64 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write8_async.i64, align 4
  tail call void %61(ptr noundef %1, i32 noundef 3076, i8 noundef zeroext %59) #7
  %62 = ptrtoint ptr %cfg.i65 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cfg.i65, align 8
  %write_readback.i97 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %write_readback.i97 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %write_readback.i97, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i98 = icmp eq i8 %65, 0
  br i1 %tobool.not.i98, label %if.then30.rtl_write_byte.exit102_crit_edge, label %if.then.i101

if.then30.rtl_write_byte.exit102_crit_edge:       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit102

if.then.i101:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %read8_sync.i62 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read8_sync.i62, align 4
  %call.i100 = tail call zeroext i8 %67(ptr noundef %1, i32 noundef 3076) #7
  br label %rtl_write_byte.exit102

rtl_write_byte.exit102:                           ; preds = %if.then.i101, %if.then30.rtl_write_byte.exit102_crit_edge
  %68 = ptrtoint ptr %read8_sync.i62 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read8_sync.i62, align 4
  %call.i104 = tail call zeroext i8 %69(ptr noundef %1, i32 noundef 3332) #7
  %70 = and i8 %call.i104, -3
  %71 = ptrtoint ptr %write8_async.i64 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write8_async.i64, align 4
  tail call void %72(ptr noundef %1, i32 noundef 3332, i8 noundef zeroext %70) #7
  %73 = ptrtoint ptr %cfg.i65 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cfg.i65, align 8
  %write_readback.i107 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %write_readback.i107 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %write_readback.i107, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i108 = icmp eq i8 %76, 0
  br i1 %tobool.not.i108, label %rtl_write_byte.exit102.if.end40_crit_edge, label %if.then.i111

rtl_write_byte.exit102.if.end40_crit_edge:        ; preds = %rtl_write_byte.exit102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then.i111:                                     ; preds = %rtl_write_byte.exit102
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %read8_sync.i62 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read8_sync.i62, align 4
  %call.i110 = tail call zeroext i8 %78(ptr noundef %1, i32 noundef 3332) #7
  br label %if.end40

if.end40:                                         ; preds = %if.then.i111, %rtl_write_byte.exit102.if.end40_crit_edge, %rtl_write_dword.exit92.if.end40_crit_edge, %land.lhs.true.if.end40_crit_edge, %entry.if.end40_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl88ee_suspend(ptr nocapture noundef %hw) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl88ee_resume(ptr nocapture noundef %hw) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl88ee_set_fw_clock_off(ptr noundef %hw, i8 noundef zeroext %rpwm_val) unnamed_addr #0 align 64 {
entry:
  %rpwm_val.addr = alloca i8, align 1
  %rtstate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rpwm_val.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %rpwm_val, ptr %rpwm_val.addr, align 1
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rtstate) #7
  %3 = ptrtoint ptr %rtstate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %rtstate, align 4, !annotation !155
  %fw_ready = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 10, i32 38
  %4 = ptrtoint ptr %fw_ready to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_ready, align 2, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 21, i32 13
  %6 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_current_inpsmode, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %allow_sw_to_change_hwclc = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 10, i32 48
  %8 = ptrtoint ptr %allow_sw_to_change_hwclc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %allow_sw_to_change_hwclc, align 8, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 32
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %get_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %get_hw_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_hw_reg, align 4
  call void %15(ptr noundef %hw, i8 noundef zeroext 40, ptr noundef nonnull %rtstate) #7
  %16 = ptrtoint ptr %rtstate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rtstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp eq i32 %17, 2
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %lor.lhs.false

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end10
  %inactive_pwrstate = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 21, i32 23
  %18 = ptrtoint ptr %inactive_pwrstate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %inactive_pwrstate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp12 = icmp eq i32 %19, 2
  br i1 %cmp12, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %qlen.i = getelementptr %struct.rtl_priv, ptr %2, i32 1, i32 7, i32 0, i32 4
  %20 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool18.not = icmp eq i32 %21, 0
  br i1 %tobool18.not, label %for.cond, label %for.cond.preheader.if.then22.critedge_crit_edge

for.cond.preheader.if.then22.critedge_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22.critedge

for.cond:                                         ; preds = %for.cond.preheader
  %qlen.i.1 = getelementptr %struct.rtl_priv, ptr %2, i32 1, i32 7, i32 1, i32 3
  %22 = ptrtoint ptr %qlen.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool18.not.1 = icmp eq i32 %23, 0
  br i1 %tobool18.not.1, label %for.cond.1, label %for.cond.if.then22.critedge_crit_edge

for.cond.if.then22.critedge_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22.critedge

for.cond.1:                                       ; preds = %for.cond
  %qlen.i.2 = getelementptr %struct.rtl_priv, ptr %2, i32 1, i32 7, i32 2, i32 1, i32 4, i32 7
  %24 = ptrtoint ptr %qlen.i.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qlen.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool18.not.2 = icmp eq i32 %25, 0
  br i1 %tobool18.not.2, label %for.cond.2, label %for.cond.1.if.then22.critedge_crit_edge

for.cond.1.if.then22.critedge_crit_edge:          ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22.critedge

for.cond.2:                                       ; preds = %for.cond.1
  %qlen.i.3 = getelementptr %struct.rtl_priv, ptr %2, i32 1, i32 7, i32 3, i32 0, i32 0, i32 4, i32 6
  %26 = ptrtoint ptr %qlen.i.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qlen.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool18.not.3 = icmp eq i32 %27, 0
  br i1 %tobool18.not.3, label %for.cond.3, label %for.cond.2.if.then22.critedge_crit_edge

for.cond.2.if.then22.critedge_crit_edge:          ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22.critedge

for.cond.3:                                       ; preds = %for.cond.2
  %qlen.i.4 = getelementptr %struct.rtl_priv, ptr %2, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %qlen.i.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qlen.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool18.not.4 = icmp eq i32 %29, 0
  br i1 %tobool18.not.4, label %for.cond.4, label %for.cond.3.if.then22.critedge_crit_edge

for.cond.3.if.then22.critedge_crit_edge:          ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22.critedge

for.cond.4:                                       ; preds = %for.cond.3
  %qlen.i.5 = getelementptr %struct.rtl_priv, ptr %2, i32 1, i32 7, i32 7, i32 0, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %qlen.i.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qlen.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool18.not.5 = icmp eq i32 %31, 0
  br i1 %tobool18.not.5, label %for.cond.5, label %for.cond.4.if.then22.critedge_crit_edge

for.cond.4.if.then22.critedge_crit_edge:          ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22.critedge

for.cond.5:                                       ; preds = %for.cond.4
  %qlen.i.6 = getelementptr %struct.rtl_priv, ptr %2, i32 1, i32 7, i32 9, i32 0, i32 0, i32 4, i32 1, i32 1
  %32 = ptrtoint ptr %qlen.i.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qlen.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool18.not.6 = icmp eq i32 %33, 0
  br i1 %tobool18.not.6, label %for.cond.6, label %for.cond.5.if.then22.critedge_crit_edge

for.cond.5.if.then22.critedge_crit_edge:          ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22.critedge

for.cond.6:                                       ; preds = %for.cond.5
  %qlen.i.7 = getelementptr %struct.rtl_priv, ptr %2, i32 1, i32 7, i32 11, i32 0, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %qlen.i.7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qlen.i.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool18.not.7 = icmp eq i32 %35, 0
  br i1 %tobool18.not.7, label %for.cond.7, label %for.cond.6.if.then22.critedge_crit_edge

for.cond.6.if.then22.critedge_crit_edge:          ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22.critedge

for.cond.7:                                       ; preds = %for.cond.6
  %qlen.i.8 = getelementptr %struct.rtl_priv, ptr %2, i32 1, i32 7, i32 13, i32 0, i32 0, i32 4
  %36 = ptrtoint ptr %qlen.i.8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qlen.i.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool18.not.8 = icmp eq i32 %37, 0
  br i1 %tobool18.not.8, label %for.cond.8, label %for.cond.7.if.then22.critedge_crit_edge

for.cond.7.if.then22.critedge_crit_edge:          ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22.critedge

for.cond.8:                                       ; preds = %for.cond.7
  %fw_ps_state = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 10, i32 49
  %38 = ptrtoint ptr %fw_ps_state to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %fw_ps_state, align 1
  %40 = and i8 %39, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp27.not = icmp eq i8 %40, 1
  br i1 %cmp27.not, label %for.cond.8.cleanup_crit_edge, label %if.then29

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22.critedge:                               ; preds = %for.cond.7.if.then22.critedge_crit_edge, %for.cond.6.if.then22.critedge_crit_edge, %for.cond.5.if.then22.critedge_crit_edge, %for.cond.4.if.then22.critedge_crit_edge, %for.cond.3.if.then22.critedge_crit_edge, %for.cond.2.if.then22.critedge_crit_edge, %for.cond.1.if.then22.critedge_crit_edge, %for.cond.if.then22.critedge_crit_edge, %for.cond.preheader.if.then22.critedge_crit_edge
  %fw_clockoff_timer = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 8, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %41, 1
  %call24 = call i32 @mod_timer(ptr noundef %fw_clockoff_timer, i32 noundef %add) #7
  br label %cleanup

if.then29:                                        ; preds = %for.cond.8
  %fw_ps_lock = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 7, i32 11
  call void @_raw_spin_lock_bh(ptr noundef %fw_ps_lock) #7
  %fw_clk_change_in_progress = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 10, i32 47
  %42 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %fw_clk_change_in_progress, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool30.not = icmp eq i8 %43, 0
  br i1 %tobool30.not, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.then29
  %44 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %fw_clk_change_in_progress, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %fw_ps_lock) #7
  %45 = ptrtoint ptr %rpwm_val.addr to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %rpwm_val.addr, align 1
  %47 = and i8 %46, 15
  %48 = ptrtoint ptr %fw_ps_state to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %fw_ps_state, align 1
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 13, i32 6
  %49 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write16_async.i, align 4
  call void %50(ptr noundef %2, i32 noundef 180, i16 noundef zeroext 256) #7
  %51 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfg, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %write_readback.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i, label %if.then31.rtl_write_word.exit_crit_edge, label %if.then.i

if.then31.rtl_write_word.exit_crit_edge:          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 13, i32 10
  %55 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read16_sync.i, align 4
  %call.i = call zeroext i16 %56(ptr noundef %2, i32 noundef 180) #7
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %if.then31.rtl_write_word.exit_crit_edge
  %57 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg, align 8
  %ops40 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %ops40 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops40, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %60, i32 0, i32 20
  %61 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_hw_reg, align 4
  call void %62(ptr noundef %hw, i8 noundef zeroext 60, ptr noundef nonnull %rpwm_val.addr) #7
  call void @_raw_spin_lock_bh(ptr noundef %fw_ps_lock) #7
  %63 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %fw_clk_change_in_progress, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %fw_ps_lock) #7
  br label %cleanup

if.else:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_bh(ptr noundef %fw_ps_lock) #7
  %fw_clockoff_timer49 = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 8, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %add51 = add i32 %64, 1
  %call52 = call i32 @mod_timer(ptr noundef %fw_clockoff_timer49, i32 noundef %add51) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %rtl_write_word.exit, %if.then22.critedge, %for.cond.8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rtstate) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl88ee_set_fw_clock_on(ptr noundef %hw, i1 noundef zeroext %b_need_turn_off_ckk) unnamed_addr #0 align 64 {
entry:
  %rpwm_val.addr = alloca i8, align 1
  %b_support_remote_wake_up = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rpwm_val.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 64, ptr %rpwm_val.addr, align 1
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b_support_remote_wake_up) #7
  %3 = ptrtoint ptr %b_support_remote_wake_up to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %b_support_remote_wake_up, align 1, !annotation !155
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 32
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %get_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %get_hw_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_hw_reg, align 4
  call void %9(ptr noundef %hw, i8 noundef zeroext 92, ptr noundef nonnull %b_support_remote_wake_up) #7
  %fw_ready = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 10, i32 38
  %10 = ptrtoint ptr %fw_ready to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fw_ready, align 2, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 21, i32 13
  %12 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fw_current_inpsmode, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not = icmp eq i8 %13, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %fw_ps_lock = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 7, i32 11
  call void @_raw_spin_lock_bh(ptr noundef %fw_ps_lock) #7
  %fw_clk_change_in_progress = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 10, i32 47
  %14 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fw_clk_change_in_progress, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not9 = icmp eq i8 %15, 0
  br i1 %tobool8.not9, label %while.cond.preheader.if.else_crit_edge, label %while.cond.preheader.while.body13_crit_edge

while.cond.preheader.while.body13_crit_edge:      ; preds = %while.cond.preheader
  br label %while.body13

while.cond.preheader.if.else_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

while.body13:                                     ; preds = %while.body13.backedge, %while.cond.preheader.while.body13_crit_edge
  %count.18 = phi i32 [ %inc, %while.body13.backedge ], [ 0, %while.cond.preheader.while.body13_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %fw_ps_lock) #7
  %inc = add i32 %count.18, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 21474800) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc)
  %cmp = icmp ugt i32 %inc, 1000
  br i1 %cmp, label %while.body13.cleanup_crit_edge, label %if.end17

while.body13.cleanup_crit_edge:                   ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %while.body13
  call void @_raw_spin_lock_bh(ptr noundef %fw_ps_lock) #7
  %17 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_load1_noabort(i32 %17)
  %.pr = load i8, ptr %fw_clk_change_in_progress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool12.not = icmp eq i8 %.pr, 0
  br i1 %tobool12.not, label %while.end, label %if.end17.while.body13.backedge_crit_edge

if.end17.while.body13.backedge_crit_edge:         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body13.backedge

while.body13.backedge:                            ; preds = %while.end.while.body13.backedge_crit_edge, %if.end17.while.body13.backedge_crit_edge
  br label %while.body13

while.end:                                        ; preds = %if.end17
  call void @_raw_spin_unlock_bh(ptr noundef %fw_ps_lock) #7
  call void @_raw_spin_lock_bh(ptr noundef %fw_ps_lock) #7
  %18 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fw_clk_change_in_progress, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not = icmp eq i8 %19, 0
  br i1 %tobool8.not, label %while.end.if.else_crit_edge, label %while.end.while.body13.backedge_crit_edge

while.end.while.body13.backedge_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body13.backedge

while.end.if.else_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.else:                                          ; preds = %while.end.if.else_crit_edge, %while.cond.preheader.if.else_crit_edge
  %count.0.lcssa = phi i32 [ 0, %while.cond.preheader.if.else_crit_edge ], [ %inc, %while.end.if.else_crit_edge ]
  %20 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %fw_clk_change_in_progress, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %fw_ps_lock) #7
  %fw_ps_state = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 10, i32 49
  %21 = ptrtoint ptr %fw_ps_state to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fw_ps_state, align 1
  %23 = and i8 %22, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp27 = icmp eq i8 %23, 1
  br i1 %cmp27, label %if.then29, label %if.else64

if.then29:                                        ; preds = %if.else
  %24 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg, align 8
  %ops31 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %ops31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops31, align 4
  %get_hw_reg32 = getelementptr inbounds %struct.rtl_hal_ops, ptr %27, i32 0, i32 19
  %28 = ptrtoint ptr %get_hw_reg32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_hw_reg32, align 4
  call void %29(ptr noundef %hw, i8 noundef zeroext 60, ptr noundef nonnull %rpwm_val.addr) #7
  %30 = ptrtoint ptr %rpwm_val.addr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rpwm_val.addr, align 1
  %32 = and i8 %31, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool35.not = icmp eq i8 %32, 0
  br i1 %tobool35.not, label %if.then29.if.end53_crit_edge, label %if.then36

if.then29.if.end53_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then36:                                        ; preds = %if.then29
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 13, i32 11
  %33 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read32_sync.i, align 4
  %call.i = call i32 %34(ptr noundef %2, i32 noundef 180) #7
  %and3813 = and i32 %call.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3813)
  %tobool39.not14 = icmp eq i32 %and3813, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %count.0.lcssa)
  %cmp4015 = icmp ult i32 %count.0.lcssa, 500
  %or.cond16 = select i1 %tobool39.not14, i1 %cmp4015, i1 false
  br i1 %or.cond16, label %if.then36.while.body42_crit_edge, label %if.then36.while.end45_crit_edge

if.then36.while.end45_crit_edge:                  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end45

if.then36.while.body42_crit_edge:                 ; preds = %if.then36
  br label %while.body42

while.body42:                                     ; preds = %while.body42.while.body42_crit_edge, %if.then36.while.body42_crit_edge
  %count.217 = phi i32 [ %inc43, %while.body42.while.body42_crit_edge ], [ %count.0.lcssa, %if.then36.while.body42_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 10737400) #7
  %inc43 = add nuw nsw i32 %count.217, 1
  %36 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read32_sync.i, align 4
  %call.i2 = call i32 %37(ptr noundef %2, i32 noundef 180) #7
  %and38 = and i32 %call.i2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 499, i32 %count.217)
  %cmp40 = icmp ult i32 %count.217, 499
  %or.cond = select i1 %tobool39.not, i1 %cmp40, i1 false
  br i1 %or.cond, label %while.body42.while.body42_crit_edge, label %while.body42.while.end45_crit_edge

while.body42.while.end45_crit_edge:               ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end45

while.body42.while.body42_crit_edge:              ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body42

while.end45:                                      ; preds = %while.body42.while.end45_crit_edge, %if.then36.while.end45_crit_edge
  %tobool39.not.lcssa = phi i1 [ %tobool39.not14, %if.then36.while.end45_crit_edge ], [ %tobool39.not, %while.body42.while.end45_crit_edge ]
  br i1 %tobool39.not.lcssa, label %while.end45.if.end53_crit_edge, label %if.then48

while.end45.if.end53_crit_edge:                   ; preds = %while.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then48:                                        ; preds = %while.end45
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 13, i32 6
  %38 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write16_async.i, align 4
  call void %39(ptr noundef %2, i32 noundef 180, i16 noundef zeroext 256) #7
  %40 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %write_readback.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i, label %if.then48.rtl_write_word.exit_crit_edge, label %if.then.i

if.then48.rtl_write_word.exit_crit_edge:          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 13, i32 10
  %44 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read16_sync.i, align 4
  %call.i3 = call zeroext i16 %45(ptr noundef %2, i32 noundef 180) #7
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %if.then48.rtl_write_word.exit_crit_edge
  %46 = ptrtoint ptr %fw_ps_state to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %fw_ps_state, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.44, i32 noundef 0) #7
  br label %if.end53

if.end53:                                         ; preds = %rtl_write_word.exit, %while.end45.if.end53_crit_edge, %if.then29.if.end53_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %fw_ps_lock) #7
  %47 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %fw_clk_change_in_progress, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %fw_ps_lock) #7
  br i1 %b_need_turn_off_ckk, label %if.then60, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then60:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %fw_clockoff_timer = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 8, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %48, 1
  %call62 = call i32 @mod_timer(ptr noundef %fw_clockoff_timer, i32 noundef %add) #7
  br label %cleanup

if.else64:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_lock_bh(ptr noundef %fw_ps_lock) #7
  %49 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %fw_clk_change_in_progress, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %fw_ps_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else64, %if.then60, %if.end53.cleanup_crit_edge, %while.body13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b_support_remote_wake_up) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_hal_pwrseqcmdparsing(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_sw_led_on(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_sw_led_off(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_firmware_selfreset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_get_hwinfo(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !22, !24, !25, !27, !29, !31, !33, !34, !35, !36, !38, !40, !41, !42, !44, !46, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !72, !74, !76, !78, !80, !81, !82, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !105, !107, !109, !111, !113, !115, !116, !117, !118, !120, !122, !124, !125, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 342, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtl88ee_get_hw_reg._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtl88ee_get_hw_reg._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 402, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 447, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 461, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 502, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 538, i32 5}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 555, i32 5}
!18 = !{ptr @rtl88ee_set_hw_reg._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @rtl88ee_set_hw_reg._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 561, i32 3}
!22 = !{ptr @rtl88ee_set_hw_reg._entry.10, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 719, i32 3}
!24 = !{ptr @rtl88ee_set_hw_reg._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1004, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1010, i32 3}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1026, i32 2}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1071, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @rtl88ee_hw_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @rtl88ee_hw_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1078, i32 3}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1132, i32 3}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1150, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1159, i32 3}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1325, i32 3}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1428, i32 2}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1487, i32 2}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1500, i32 2}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1944, i32 2}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1948, i32 3}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1951, i32 3}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1955, i32 3}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1959, i32 3}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @rtl88ee_read_eeprom_info._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @rtl88ee_read_eeprom_info._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 2237, i32 3}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 2245, i32 3}
!72 = !{ptr @rtl88ee_set_key.cam_const_addr, !73, !"cam_const_addr", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 2281, i32 12}
!74 = !{ptr @rtl88ee_set_key.cam_const_broad, !75, !"cam_const_broad", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 2287, i32 12}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 2296, i32 3}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 2324, i32 4}
!80 = !{ptr @rtl88ee_set_key._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @rtl88ee_set_key._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 2343, i32 7}
!84 = !{ptr @rtl88ee_set_key._entry.37, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @rtl88ee_set_key._entry_ptr.39, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 2355, i32 4}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 2363, i32 4}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 2366, i32 5}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 2374, i32 5}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 142, i32 5}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 836, i32 3}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 872, i32 4}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 740, i32 4}
!102 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @_rtl88ee_llt_write._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @_rtl88ee_llt_write._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1205, i32 3}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1211, i32 3}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1217, i32 3}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1223, i32 3}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1227, i32 3}
!115 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @_rtl88ee_set_media_status._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @_rtl88ee_set_media_status._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1249, i32 3}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1371, i32 2}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1187, i32 2}
!124 = distinct !{null, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1827, i32 2}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1771, i32 4}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1791, i32 2}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1802, i32 2}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1560, i32 2}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1567, i32 3}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 1926, i32 2}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 2170, i32 2}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 2175, i32 2}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/hw.c", i32 2050, i32 2}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{!"auto-init"}
!156 = !{i8 0, i8 2}
!157 = !{i64 959423}
!158 = !{i64 956936}
!159 = !{!"branch_weights", i32 1, i32 2000}
!160 = !{i64 959708}
!161 = !{!"branch_weights", i32 2000, i32 1}
